# Source: g_lcompex.c
# Category: g
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_lcompex.c
# Total Functions: 463

.text

# Function: __glce_NewList
# Declared: Line 34 (Source lines: 35-43)
# Address: 0x0da54550 - 0x0da5459c (Size: 76 bytes, Frame: 32)
.globl __glce_NewList
.ent __glce_NewList
__glce_NewList:
    # Line 35
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 39
    lw	$s8,4176($zero)
    # Line 35
    lui	$v0,0x4
    # Line 40
    lw	$at,4112($zero)
    # Line 35
    addiu	$v0,$v0,-13688
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 41
    # lw $t9, -18432($gp) # &glNewList
    # Line 35
    sd	$ra,0($sp)
    # Line 40
    lw	$at,9920($at)
    # Line 41
    jal	glNewList
    # Line 40
    sw	$at,4176($zero)
    ld	$ra,0($sp)
    # Line 43
    ld	$gp,16($sp)
    # Line 42
    sw	$s8,4176($zero)
    # Line 43
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_NewList

# Function: __glce_DeleteLists
# Declared: Line 51 (Source lines: 52-60)
# Address: 0x0da545a0 - 0x0da545ec (Size: 76 bytes, Frame: 32)
.globl __glce_DeleteLists
.ent __glce_DeleteLists
__glce_DeleteLists:
    # Line 52
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 56
    lw	$s8,4192($zero)
    # Line 52
    lui	$v0,0x4
    # Line 57
    lw	$at,4112($zero)
    # Line 52
    addiu	$v0,$v0,-13768
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 58
    # lw $t9, -18416($gp) # &glDeleteLists
    # Line 52
    sd	$ra,0($sp)
    # Line 57
    lw	$at,9936($at)
    # Line 58
    jal	glDeleteLists
    # Line 57
    sw	$at,4192($zero)
    ld	$ra,0($sp)
    # Line 60
    ld	$gp,16($sp)
    # Line 59
    sw	$s8,4192($zero)
    # Line 60
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_DeleteLists

# Function: __glce_GenLists
# Declared: Line 65 (Source lines: 66-75)
# Address: 0x0da545f0 - 0x0da5463c (Size: 76 bytes, Frame: 32)
.globl __glce_GenLists
.ent __glce_GenLists
__glce_GenLists:
    # Line 66
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 71
    lw	$s8,4196($zero)
    # Line 66
    lui	$v0,0x4
    # Line 72
    lw	$at,4112($zero)
    # Line 66
    addiu	$v0,$v0,-13848
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 73
    # lw $t9, -18412($gp) # &glGenLists
    # Line 66
    sd	$ra,0($sp)
    # Line 72
    lw	$at,9940($at)
    # Line 73
    jal	glGenLists
    # Line 72
    sw	$at,4196($zero)
    ld	$ra,0($sp)
    # Line 75
    ld	$gp,16($sp)
    # Line 74
    sw	$s8,4196($zero)
    # Line 75
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GenLists

# Function: __glce_ListBase
# Declared: Line 81 (Source lines: 82-92)
# Address: 0x0da54640 - 0x0da546b4 (Size: 116 bytes, Frame: 48)
.globl __glce_ListBase
.ent __glce_ListBase
__glce_ListBase:
    # Line 86
    lw	$v0,4200($zero)
    # Line 82
    addiu	$sp,$sp,-48
    # Line 86
    sd	$v0,24($sp)
    # Line 82
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 84
    lw	$at,4112($zero)
    # Line 82
    addiu	$v1,$v1,-13928
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 88
    # lw $t9, -18408($gp) # &glListBase
    # Line 84
    sd	$at,32($sp)
    # Line 87
    lw	$at,6160($at)
    # Line 82
    move	$s8,$a0
    # Line 88
    jal	glListBase
    # Line 87
    sw	$at,4200($zero)
    # Line 90
    # lw $t9, -18408($gp) # &glListBase
    # Line 89
    ld	$a1,32($sp)
    lw	$a1,9944($a1)
    # Line 90
    move	$a0,$s8
    jal	glListBase
    # Line 89
    sw	$a1,4200($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 92
    ld	$gp,16($sp)
    # Line 91
    ld	$a2,24($sp)
    # Line 92
    addiu	$sp,$sp,48
    jr	$ra
    # Line 91
    sw	$a2,4200($zero)
.end __glce_ListBase

# Function: __glce_Begin
# Declared: Line 97 (Source lines: 98-108)
# Address: 0x0da546c0 - 0x0da54734 (Size: 116 bytes, Frame: 48)
.globl __glce_Begin
.ent __glce_Begin
__glce_Begin:
    # Line 102
    lw	$v0,4204($zero)
    # Line 98
    addiu	$sp,$sp,-48
    # Line 102
    sd	$v0,24($sp)
    # Line 98
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 100
    lw	$at,4112($zero)
    # Line 98
    addiu	$v1,$v1,-14056
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 104
    # lw $t9, -18404($gp) # &glBegin
    # Line 100
    sd	$at,32($sp)
    # Line 103
    lw	$at,6164($at)
    # Line 98
    move	$s8,$a0
    # Line 104
    jal	glBegin
    # Line 103
    sw	$at,4204($zero)
    # Line 106
    # lw $t9, -18404($gp) # &glBegin
    # Line 105
    ld	$a1,32($sp)
    lw	$a1,9948($a1)
    # Line 106
    move	$a0,$s8
    jal	glBegin
    # Line 105
    sw	$a1,4204($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 108
    ld	$gp,16($sp)
    # Line 107
    ld	$a2,24($sp)
    # Line 108
    addiu	$sp,$sp,48
    jr	$ra
    # Line 107
    sw	$a2,4204($zero)
.end __glce_Begin

# Function: __glce_Bitmap
# Declared: Line 113 (Source lines: 114-124)
# Address: 0x0da54740 - 0x0da547ec (Size: 172 bytes, Frame: 224)
.globl __glce_Bitmap
.ent __glce_Bitmap
__glce_Bitmap:
    # Line 118
    lw	$v0,4208($zero)
    # Line 114
    addiu	$sp,$sp,-96
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sd	$a6,72($sp)
    sdc1	$f15,24($sp)
    sd	$a1,80($sp)
    # Line 118
    sd	$v0,56($sp)
    # Line 114
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x4
    # Line 116
    lw	$at,4112($zero)
    # Line 114
    addiu	$v1,$v1,-14184
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 120
    # lw $t9, -18400($gp) # &glBitmap
    # Line 116
    sd	$at,64($sp)
    # Line 119
    lw	$at,6168($at)
    # Line 114
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 120
    jal	glBitmap
    # Line 119
    sw	$at,4208($zero)
    # Line 122
    ldc1	$f17,8($sp)
    ldc1	$f16,16($sp)
    ld	$a6,72($sp)
    ldc1	$f15,24($sp)
    # lw $t9, -18400($gp) # &glBitmap
    # Line 121
    ld	$a2,64($sp)
    # Line 122
    ld	$a1,80($sp)
    # Line 121
    lw	$a2,9952($a2)
    # Line 122
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glBitmap
    # Line 121
    sw	$a2,4208($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 124
    ld	$gp,48($sp)
    # Line 123
    ld	$a3,56($sp)
    # Line 124
    addiu	$sp,$sp,96
    jr	$ra
    # Line 123
    sw	$a3,4208($zero)
.end __glce_Bitmap

# Function: __glce_Color3b
# Declared: Line 129 (Source lines: 130-140)
# Address: 0x0da547f0 - 0x0da54874 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3b
.ent __glce_Color3b
__glce_Color3b:
    # Line 134
    lw	$v0,5592($zero)
    # Line 130
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 134
    sd	$v0,24($sp)
    # Line 130
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 132
    lw	$at,4112($zero)
    # Line 130
    addiu	$v1,$v1,-14360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 136
    # lw $t9, -18396($gp) # &glColor3b
    # Line 132
    sd	$at,32($sp)
    # Line 135
    lw	$at,7552($at)
    # Line 130
    move	$s8,$a0
    # Line 136
    jal	glColor3b
    # Line 135
    sw	$at,5592($zero)
    # Line 138
    ld	$a2,40($sp)
    # lw $t9, -18396($gp) # &glColor3b
    # Line 137
    ld	$a3,32($sp)
    # Line 138
    ld	$a1,48($sp)
    # Line 137
    lw	$a3,11336($a3)
    # Line 138
    move	$a0,$s8
    jal	glColor3b
    # Line 137
    sw	$a3,5592($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 140
    ld	$gp,16($sp)
    # Line 139
    ld	$a4,24($sp)
    # Line 140
    addiu	$sp,$sp,64
    jr	$ra
    # Line 139
    sw	$a4,5592($zero)
.end __glce_Color3b

# Function: __glce_Color3bv
# Declared: Line 145 (Source lines: 146-156)
# Address: 0x0da54880 - 0x0da548f4 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3bv
.ent __glce_Color3bv
__glce_Color3bv:
    # Line 150
    lw	$v0,5596($zero)
    # Line 146
    addiu	$sp,$sp,-48
    # Line 150
    sd	$v0,24($sp)
    # Line 146
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 148
    lw	$at,4112($zero)
    # Line 146
    addiu	$v1,$v1,-14504
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 152
    # lw $t9, -18392($gp) # &glColor3bv
    # Line 148
    sd	$at,32($sp)
    # Line 151
    lw	$at,7556($at)
    # Line 146
    move	$s8,$a0
    # Line 152
    jal	glColor3bv
    # Line 151
    sw	$at,5596($zero)
    # Line 154
    # lw $t9, -18392($gp) # &glColor3bv
    # Line 153
    ld	$a1,32($sp)
    lw	$a1,11340($a1)
    # Line 154
    move	$a0,$s8
    jal	glColor3bv
    # Line 153
    sw	$a1,5596($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 156
    ld	$gp,16($sp)
    # Line 155
    ld	$a2,24($sp)
    # Line 156
    addiu	$sp,$sp,48
    jr	$ra
    # Line 155
    sw	$a2,5596($zero)
.end __glce_Color3bv

# Function: __glce_Color3d
# Declared: Line 161 (Source lines: 162-172)
# Address: 0x0da54900 - 0x0da54984 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3d
.ent __glce_Color3d
__glce_Color3d:
    # Line 166
    lw	$v0,5600($zero)
    # Line 162
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 166
    sd	$v0,48($sp)
    # Line 162
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 164
    lw	$s8,4112($zero)
    # Line 162
    addiu	$v1,$v1,-14632
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 168
    # lw $t9, -18388($gp) # &glColor3d
    # Line 162
    sdc1	$f30,0($sp)
    # Line 167
    lw	$at,7560($s8)
    # Line 162
    mov.d	$f30,$f12
    # Line 168
    jal	glColor3d
    # Line 167
    sw	$at,5600($zero)
    # Line 170
    ldc1	$f14,8($sp)
    # lw $t9, -18388($gp) # &glColor3d
    ldc1	$f13,16($sp)
    # Line 169
    lw	$a0,11344($s8)
    # Line 170
    mov.d	$f12,$f30
    jal	glColor3d
    # Line 169
    sw	$a0,5600($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 172
    ld	$gp,40($sp)
    # Line 171
    ld	$a1,48($sp)
    # Line 172
    addiu	$sp,$sp,64
    jr	$ra
    # Line 171
    sw	$a1,5600($zero)
.end __glce_Color3d

# Function: __glce_Color3dv
# Declared: Line 177 (Source lines: 178-188)
# Address: 0x0da54990 - 0x0da54a04 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3dv
.ent __glce_Color3dv
__glce_Color3dv:
    # Line 182
    lw	$v0,5604($zero)
    # Line 178
    addiu	$sp,$sp,-48
    # Line 182
    sd	$v0,24($sp)
    # Line 178
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 180
    lw	$at,4112($zero)
    # Line 178
    addiu	$v1,$v1,-14776
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 184
    # lw $t9, -18384($gp) # &glColor3dv
    # Line 180
    sd	$at,32($sp)
    # Line 183
    lw	$at,7564($at)
    # Line 178
    move	$s8,$a0
    # Line 184
    jal	glColor3dv
    # Line 183
    sw	$at,5604($zero)
    # Line 186
    # lw $t9, -18384($gp) # &glColor3dv
    # Line 185
    ld	$a1,32($sp)
    lw	$a1,11348($a1)
    # Line 186
    move	$a0,$s8
    jal	glColor3dv
    # Line 185
    sw	$a1,5604($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 188
    ld	$gp,16($sp)
    # Line 187
    ld	$a2,24($sp)
    # Line 188
    addiu	$sp,$sp,48
    jr	$ra
    # Line 187
    sw	$a2,5604($zero)
.end __glce_Color3dv

# Function: __glce_Color3f
# Declared: Line 193 (Source lines: 194-204)
# Address: 0x0da54a10 - 0x0da54a94 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3f
.ent __glce_Color3f
__glce_Color3f:
    # Line 198
    lw	$v0,5608($zero)
    # Line 194
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 198
    sd	$v0,48($sp)
    # Line 194
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 196
    lw	$s8,4112($zero)
    # Line 194
    addiu	$v1,$v1,-14904
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 200
    # lw $t9, -18380($gp) # &glColor3f
    # Line 194
    sdc1	$f30,0($sp)
    # Line 199
    lw	$at,7568($s8)
    # Line 194
    mov.s	$f30,$f12
    # Line 200
    jal	glColor3f
    # Line 199
    sw	$at,5608($zero)
    # Line 202
    ldc1	$f14,8($sp)
    # lw $t9, -18380($gp) # &glColor3f
    ldc1	$f13,16($sp)
    # Line 201
    lw	$a0,11352($s8)
    # Line 202
    mov.s	$f12,$f30
    jal	glColor3f
    # Line 201
    sw	$a0,5608($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 204
    ld	$gp,40($sp)
    # Line 203
    ld	$a1,48($sp)
    # Line 204
    addiu	$sp,$sp,64
    jr	$ra
    # Line 203
    sw	$a1,5608($zero)
.end __glce_Color3f

# Function: __glce_Color3fv
# Declared: Line 209 (Source lines: 210-220)
# Address: 0x0da54aa0 - 0x0da54b14 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3fv
.ent __glce_Color3fv
__glce_Color3fv:
    # Line 214
    lw	$v0,5612($zero)
    # Line 210
    addiu	$sp,$sp,-48
    # Line 214
    sd	$v0,24($sp)
    # Line 210
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 212
    lw	$at,4112($zero)
    # Line 210
    addiu	$v1,$v1,-15048
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 216
    # lw $t9, -18376($gp) # &glColor3fv
    # Line 212
    sd	$at,32($sp)
    # Line 215
    lw	$at,7572($at)
    # Line 210
    move	$s8,$a0
    # Line 216
    jal	glColor3fv
    # Line 215
    sw	$at,5612($zero)
    # Line 218
    # lw $t9, -18376($gp) # &glColor3fv
    # Line 217
    ld	$a1,32($sp)
    lw	$a1,11356($a1)
    # Line 218
    move	$a0,$s8
    jal	glColor3fv
    # Line 217
    sw	$a1,5612($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 220
    ld	$gp,16($sp)
    # Line 219
    ld	$a2,24($sp)
    # Line 220
    addiu	$sp,$sp,48
    jr	$ra
    # Line 219
    sw	$a2,5612($zero)
.end __glce_Color3fv

# Function: __glce_Color3i
# Declared: Line 225 (Source lines: 226-236)
# Address: 0x0da54b20 - 0x0da54ba4 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3i
.ent __glce_Color3i
__glce_Color3i:
    # Line 230
    lw	$v0,5616($zero)
    # Line 226
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 230
    sd	$v0,24($sp)
    # Line 226
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 228
    lw	$at,4112($zero)
    # Line 226
    addiu	$v1,$v1,-15176
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 232
    # lw $t9, -18372($gp) # &glColor3i
    # Line 228
    sd	$at,32($sp)
    # Line 231
    lw	$at,7576($at)
    # Line 226
    move	$s8,$a0
    # Line 232
    jal	glColor3i
    # Line 231
    sw	$at,5616($zero)
    # Line 234
    ld	$a2,40($sp)
    # lw $t9, -18372($gp) # &glColor3i
    # Line 233
    ld	$a3,32($sp)
    # Line 234
    ld	$a1,48($sp)
    # Line 233
    lw	$a3,11360($a3)
    # Line 234
    move	$a0,$s8
    jal	glColor3i
    # Line 233
    sw	$a3,5616($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 236
    ld	$gp,16($sp)
    # Line 235
    ld	$a4,24($sp)
    # Line 236
    addiu	$sp,$sp,64
    jr	$ra
    # Line 235
    sw	$a4,5616($zero)
.end __glce_Color3i

# Function: __glce_Color3iv
# Declared: Line 241 (Source lines: 242-252)
# Address: 0x0da54bb0 - 0x0da54c24 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3iv
.ent __glce_Color3iv
__glce_Color3iv:
    # Line 246
    lw	$v0,5620($zero)
    # Line 242
    addiu	$sp,$sp,-48
    # Line 246
    sd	$v0,24($sp)
    # Line 242
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 244
    lw	$at,4112($zero)
    # Line 242
    addiu	$v1,$v1,-15320
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 248
    # lw $t9, -18368($gp) # &glColor3iv
    # Line 244
    sd	$at,32($sp)
    # Line 247
    lw	$at,7580($at)
    # Line 242
    move	$s8,$a0
    # Line 248
    jal	glColor3iv
    # Line 247
    sw	$at,5620($zero)
    # Line 250
    # lw $t9, -18368($gp) # &glColor3iv
    # Line 249
    ld	$a1,32($sp)
    lw	$a1,11364($a1)
    # Line 250
    move	$a0,$s8
    jal	glColor3iv
    # Line 249
    sw	$a1,5620($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 252
    ld	$gp,16($sp)
    # Line 251
    ld	$a2,24($sp)
    # Line 252
    addiu	$sp,$sp,48
    jr	$ra
    # Line 251
    sw	$a2,5620($zero)
.end __glce_Color3iv

# Function: __glce_Color3s
# Declared: Line 257 (Source lines: 258-268)
# Address: 0x0da54c30 - 0x0da54cb4 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3s
.ent __glce_Color3s
__glce_Color3s:
    # Line 262
    lw	$v0,5624($zero)
    # Line 258
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 262
    sd	$v0,24($sp)
    # Line 258
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 260
    lw	$at,4112($zero)
    # Line 258
    addiu	$v1,$v1,-15448
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 264
    # lw $t9, -18364($gp) # &glColor3s
    # Line 260
    sd	$at,32($sp)
    # Line 263
    lw	$at,7584($at)
    # Line 258
    move	$s8,$a0
    # Line 264
    jal	glColor3s
    # Line 263
    sw	$at,5624($zero)
    # Line 266
    ld	$a2,40($sp)
    # lw $t9, -18364($gp) # &glColor3s
    # Line 265
    ld	$a3,32($sp)
    # Line 266
    ld	$a1,48($sp)
    # Line 265
    lw	$a3,11368($a3)
    # Line 266
    move	$a0,$s8
    jal	glColor3s
    # Line 265
    sw	$a3,5624($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 268
    ld	$gp,16($sp)
    # Line 267
    ld	$a4,24($sp)
    # Line 268
    addiu	$sp,$sp,64
    jr	$ra
    # Line 267
    sw	$a4,5624($zero)
.end __glce_Color3s

# Function: __glce_Color3sv
# Declared: Line 273 (Source lines: 274-284)
# Address: 0x0da54cc0 - 0x0da54d34 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3sv
.ent __glce_Color3sv
__glce_Color3sv:
    # Line 278
    lw	$v0,5628($zero)
    # Line 274
    addiu	$sp,$sp,-48
    # Line 278
    sd	$v0,24($sp)
    # Line 274
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 276
    lw	$at,4112($zero)
    # Line 274
    addiu	$v1,$v1,-15592
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 280
    # lw $t9, -18360($gp) # &glColor3sv
    # Line 276
    sd	$at,32($sp)
    # Line 279
    lw	$at,7588($at)
    # Line 274
    move	$s8,$a0
    # Line 280
    jal	glColor3sv
    # Line 279
    sw	$at,5628($zero)
    # Line 282
    # lw $t9, -18360($gp) # &glColor3sv
    # Line 281
    ld	$a1,32($sp)
    lw	$a1,11372($a1)
    # Line 282
    move	$a0,$s8
    jal	glColor3sv
    # Line 281
    sw	$a1,5628($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 284
    ld	$gp,16($sp)
    # Line 283
    ld	$a2,24($sp)
    # Line 284
    addiu	$sp,$sp,48
    jr	$ra
    # Line 283
    sw	$a2,5628($zero)
.end __glce_Color3sv

# Function: __glce_Color3ub
# Declared: Line 289 (Source lines: 290-300)
# Address: 0x0da54d40 - 0x0da54dc4 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3ub
.ent __glce_Color3ub
__glce_Color3ub:
    # Line 294
    lw	$v0,5632($zero)
    # Line 290
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 294
    sd	$v0,24($sp)
    # Line 290
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 292
    lw	$at,4112($zero)
    # Line 290
    addiu	$v1,$v1,-15720
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 296
    # lw $t9, -18356($gp) # &glColor3ub
    # Line 292
    sd	$at,32($sp)
    # Line 295
    lw	$at,7592($at)
    # Line 290
    move	$s8,$a0
    # Line 296
    jal	glColor3ub
    # Line 295
    sw	$at,5632($zero)
    # Line 298
    ld	$a2,40($sp)
    # lw $t9, -18356($gp) # &glColor3ub
    # Line 297
    ld	$a3,32($sp)
    # Line 298
    ld	$a1,48($sp)
    # Line 297
    lw	$a3,11376($a3)
    # Line 298
    move	$a0,$s8
    jal	glColor3ub
    # Line 297
    sw	$a3,5632($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 300
    ld	$gp,16($sp)
    # Line 299
    ld	$a4,24($sp)
    # Line 300
    addiu	$sp,$sp,64
    jr	$ra
    # Line 299
    sw	$a4,5632($zero)
.end __glce_Color3ub

# Function: __glce_Color3ubv
# Declared: Line 305 (Source lines: 306-316)
# Address: 0x0da54dd0 - 0x0da54e44 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3ubv
.ent __glce_Color3ubv
__glce_Color3ubv:
    # Line 310
    lw	$v0,5636($zero)
    # Line 306
    addiu	$sp,$sp,-48
    # Line 310
    sd	$v0,24($sp)
    # Line 306
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 308
    lw	$at,4112($zero)
    # Line 306
    addiu	$v1,$v1,-15864
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 312
    # lw $t9, -18352($gp) # &glColor3ubv
    # Line 308
    sd	$at,32($sp)
    # Line 311
    lw	$at,7596($at)
    # Line 306
    move	$s8,$a0
    # Line 312
    jal	glColor3ubv
    # Line 311
    sw	$at,5636($zero)
    # Line 314
    # lw $t9, -18352($gp) # &glColor3ubv
    # Line 313
    ld	$a1,32($sp)
    lw	$a1,11380($a1)
    # Line 314
    move	$a0,$s8
    jal	glColor3ubv
    # Line 313
    sw	$a1,5636($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 316
    ld	$gp,16($sp)
    # Line 315
    ld	$a2,24($sp)
    # Line 316
    addiu	$sp,$sp,48
    jr	$ra
    # Line 315
    sw	$a2,5636($zero)
.end __glce_Color3ubv

# Function: __glce_Color3ui
# Declared: Line 321 (Source lines: 322-332)
# Address: 0x0da54e50 - 0x0da54ed4 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3ui
.ent __glce_Color3ui
__glce_Color3ui:
    # Line 326
    lw	$v0,5640($zero)
    # Line 322
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 326
    sd	$v0,24($sp)
    # Line 322
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 324
    lw	$at,4112($zero)
    # Line 322
    addiu	$v1,$v1,-15992
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 328
    # lw $t9, -18348($gp) # &glColor3ui
    # Line 324
    sd	$at,32($sp)
    # Line 327
    lw	$at,7600($at)
    # Line 322
    move	$s8,$a0
    # Line 328
    jal	glColor3ui
    # Line 327
    sw	$at,5640($zero)
    # Line 330
    ld	$a2,40($sp)
    # lw $t9, -18348($gp) # &glColor3ui
    # Line 329
    ld	$a3,32($sp)
    # Line 330
    ld	$a1,48($sp)
    # Line 329
    lw	$a3,11384($a3)
    # Line 330
    move	$a0,$s8
    jal	glColor3ui
    # Line 329
    sw	$a3,5640($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 332
    ld	$gp,16($sp)
    # Line 331
    ld	$a4,24($sp)
    # Line 332
    addiu	$sp,$sp,64
    jr	$ra
    # Line 331
    sw	$a4,5640($zero)
.end __glce_Color3ui

# Function: __glce_Color3uiv
# Declared: Line 337 (Source lines: 338-348)
# Address: 0x0da54ee0 - 0x0da54f54 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3uiv
.ent __glce_Color3uiv
__glce_Color3uiv:
    # Line 342
    lw	$v0,5644($zero)
    # Line 338
    addiu	$sp,$sp,-48
    # Line 342
    sd	$v0,24($sp)
    # Line 338
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 340
    lw	$at,4112($zero)
    # Line 338
    addiu	$v1,$v1,-16136
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 344
    # lw $t9, -18344($gp) # &glColor3uiv
    # Line 340
    sd	$at,32($sp)
    # Line 343
    lw	$at,7604($at)
    # Line 338
    move	$s8,$a0
    # Line 344
    jal	glColor3uiv
    # Line 343
    sw	$at,5644($zero)
    # Line 346
    # lw $t9, -18344($gp) # &glColor3uiv
    # Line 345
    ld	$a1,32($sp)
    lw	$a1,11388($a1)
    # Line 346
    move	$a0,$s8
    jal	glColor3uiv
    # Line 345
    sw	$a1,5644($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 348
    ld	$gp,16($sp)
    # Line 347
    ld	$a2,24($sp)
    # Line 348
    addiu	$sp,$sp,48
    jr	$ra
    # Line 347
    sw	$a2,5644($zero)
.end __glce_Color3uiv

# Function: __glce_Color3us
# Declared: Line 353 (Source lines: 354-364)
# Address: 0x0da54f60 - 0x0da54fe4 (Size: 132 bytes, Frame: 192)
.globl __glce_Color3us
.ent __glce_Color3us
__glce_Color3us:
    # Line 358
    lw	$v0,5648($zero)
    # Line 354
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 358
    sd	$v0,24($sp)
    # Line 354
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 356
    lw	$at,4112($zero)
    # Line 354
    addiu	$v1,$v1,-16264
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 360
    # lw $t9, -18340($gp) # &glColor3us
    # Line 356
    sd	$at,32($sp)
    # Line 359
    lw	$at,7608($at)
    # Line 354
    move	$s8,$a0
    # Line 360
    jal	glColor3us
    # Line 359
    sw	$at,5648($zero)
    # Line 362
    ld	$a2,40($sp)
    # lw $t9, -18340($gp) # &glColor3us
    # Line 361
    ld	$a3,32($sp)
    # Line 362
    ld	$a1,48($sp)
    # Line 361
    lw	$a3,11392($a3)
    # Line 362
    move	$a0,$s8
    jal	glColor3us
    # Line 361
    sw	$a3,5648($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 364
    ld	$gp,16($sp)
    # Line 363
    ld	$a4,24($sp)
    # Line 364
    addiu	$sp,$sp,64
    jr	$ra
    # Line 363
    sw	$a4,5648($zero)
.end __glce_Color3us

# Function: __glce_Color3usv
# Declared: Line 369 (Source lines: 370-380)
# Address: 0x0da54ff0 - 0x0da55064 (Size: 116 bytes, Frame: 48)
.globl __glce_Color3usv
.ent __glce_Color3usv
__glce_Color3usv:
    # Line 374
    lw	$v0,5652($zero)
    # Line 370
    addiu	$sp,$sp,-48
    # Line 374
    sd	$v0,24($sp)
    # Line 370
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 372
    lw	$at,4112($zero)
    # Line 370
    addiu	$v1,$v1,-16408
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 376
    # lw $t9, -18336($gp) # &glColor3usv
    # Line 372
    sd	$at,32($sp)
    # Line 375
    lw	$at,7612($at)
    # Line 370
    move	$s8,$a0
    # Line 376
    jal	glColor3usv
    # Line 375
    sw	$at,5652($zero)
    # Line 378
    # lw $t9, -18336($gp) # &glColor3usv
    # Line 377
    ld	$a1,32($sp)
    lw	$a1,11396($a1)
    # Line 378
    move	$a0,$s8
    jal	glColor3usv
    # Line 377
    sw	$a1,5652($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 380
    ld	$gp,16($sp)
    # Line 379
    ld	$a2,24($sp)
    # Line 380
    addiu	$sp,$sp,48
    jr	$ra
    # Line 379
    sw	$a2,5652($zero)
.end __glce_Color3usv

# Function: __glce_Color4b
# Declared: Line 385 (Source lines: 386-396)
# Address: 0x0da55070 - 0x0da550fc (Size: 140 bytes, Frame: 192)
.globl __glce_Color4b
.ent __glce_Color4b
__glce_Color4b:
    # Line 390
    lw	$v0,5656($zero)
    # Line 386
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 390
    sd	$v0,24($sp)
    # Line 386
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 388
    lw	$at,4112($zero)
    # Line 386
    addiu	$v1,$v1,-16536
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 392
    # lw $t9, -18332($gp) # &glColor4b
    # Line 388
    sd	$at,32($sp)
    # Line 391
    lw	$at,7616($at)
    # Line 386
    move	$s8,$a0
    # Line 392
    jal	glColor4b
    # Line 391
    sw	$at,5656($zero)
    # Line 394
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18332($gp) # &glColor4b
    # Line 393
    ld	$a4,32($sp)
    # Line 394
    ld	$a1,56($sp)
    # Line 393
    lw	$a4,11400($a4)
    # Line 394
    move	$a0,$s8
    jal	glColor4b
    # Line 393
    sw	$a4,5656($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 396
    ld	$gp,16($sp)
    # Line 395
    ld	$a5,24($sp)
    # Line 396
    addiu	$sp,$sp,64
    jr	$ra
    # Line 395
    sw	$a5,5656($zero)
.end __glce_Color4b

# Function: __glce_Color4bv
# Declared: Line 401 (Source lines: 402-412)
# Address: 0x0da55100 - 0x0da55174 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4bv
.ent __glce_Color4bv
__glce_Color4bv:
    # Line 406
    lw	$v0,5660($zero)
    # Line 402
    addiu	$sp,$sp,-48
    # Line 406
    sd	$v0,24($sp)
    # Line 402
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 404
    lw	$at,4112($zero)
    # Line 402
    addiu	$v1,$v1,-16680
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 408
    # lw $t9, -18328($gp) # &glColor4bv
    # Line 404
    sd	$at,32($sp)
    # Line 407
    lw	$at,7620($at)
    # Line 402
    move	$s8,$a0
    # Line 408
    jal	glColor4bv
    # Line 407
    sw	$at,5660($zero)
    # Line 410
    # lw $t9, -18328($gp) # &glColor4bv
    # Line 409
    ld	$a1,32($sp)
    lw	$a1,11404($a1)
    # Line 410
    move	$a0,$s8
    jal	glColor4bv
    # Line 409
    sw	$a1,5660($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 412
    ld	$gp,16($sp)
    # Line 411
    ld	$a2,24($sp)
    # Line 412
    addiu	$sp,$sp,48
    jr	$ra
    # Line 411
    sw	$a2,5660($zero)
.end __glce_Color4bv

# Function: __glce_Color4d
# Declared: Line 417 (Source lines: 418-428)
# Address: 0x0da55180 - 0x0da5520c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4d
.ent __glce_Color4d
__glce_Color4d:
    # Line 422
    lw	$v0,5664($zero)
    # Line 418
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 422
    sd	$v0,56($sp)
    # Line 418
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 420
    lw	$s8,4112($zero)
    # Line 418
    addiu	$v1,$v1,-16808
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 424
    # lw $t9, -18324($gp) # &glColor4d
    # Line 418
    sdc1	$f30,0($sp)
    # Line 423
    lw	$at,7624($s8)
    # Line 418
    mov.d	$f30,$f12
    # Line 424
    jal	glColor4d
    # Line 423
    sw	$at,5664($zero)
    # Line 426
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -18324($gp) # &glColor4d
    ldc1	$f13,24($sp)
    # Line 425
    lw	$a0,11408($s8)
    # Line 426
    mov.d	$f12,$f30
    jal	glColor4d
    # Line 425
    sw	$a0,5664($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 428
    ld	$gp,48($sp)
    # Line 427
    ld	$a1,56($sp)
    # Line 428
    addiu	$sp,$sp,64
    jr	$ra
    # Line 427
    sw	$a1,5664($zero)
.end __glce_Color4d

# Function: __glce_Color4dv
# Declared: Line 433 (Source lines: 434-444)
# Address: 0x0da55210 - 0x0da55284 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4dv
.ent __glce_Color4dv
__glce_Color4dv:
    # Line 438
    lw	$v0,5668($zero)
    # Line 434
    addiu	$sp,$sp,-48
    # Line 438
    sd	$v0,24($sp)
    # Line 434
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 436
    lw	$at,4112($zero)
    # Line 434
    addiu	$v1,$v1,-16952
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 440
    # lw $t9, -18320($gp) # &glColor4dv
    # Line 436
    sd	$at,32($sp)
    # Line 439
    lw	$at,7628($at)
    # Line 434
    move	$s8,$a0
    # Line 440
    jal	glColor4dv
    # Line 439
    sw	$at,5668($zero)
    # Line 442
    # lw $t9, -18320($gp) # &glColor4dv
    # Line 441
    ld	$a1,32($sp)
    lw	$a1,11412($a1)
    # Line 442
    move	$a0,$s8
    jal	glColor4dv
    # Line 441
    sw	$a1,5668($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 444
    ld	$gp,16($sp)
    # Line 443
    ld	$a2,24($sp)
    # Line 444
    addiu	$sp,$sp,48
    jr	$ra
    # Line 443
    sw	$a2,5668($zero)
.end __glce_Color4dv

# Function: __glce_Color4f
# Declared: Line 449 (Source lines: 450-460)
# Address: 0x0da55290 - 0x0da5531c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4f
.ent __glce_Color4f
__glce_Color4f:
    # Line 454
    lw	$v0,5672($zero)
    # Line 450
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 454
    sd	$v0,56($sp)
    # Line 450
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 452
    lw	$s8,4112($zero)
    # Line 450
    addiu	$v1,$v1,-17080
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 456
    # lw $t9, -18316($gp) # &glColor4f
    # Line 450
    sdc1	$f30,0($sp)
    # Line 455
    lw	$at,7632($s8)
    # Line 450
    mov.s	$f30,$f12
    # Line 456
    jal	glColor4f
    # Line 455
    sw	$at,5672($zero)
    # Line 458
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -18316($gp) # &glColor4f
    ldc1	$f13,24($sp)
    # Line 457
    lw	$a0,11416($s8)
    # Line 458
    mov.s	$f12,$f30
    jal	glColor4f
    # Line 457
    sw	$a0,5672($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 460
    ld	$gp,48($sp)
    # Line 459
    ld	$a1,56($sp)
    # Line 460
    addiu	$sp,$sp,64
    jr	$ra
    # Line 459
    sw	$a1,5672($zero)
.end __glce_Color4f

# Function: __glce_Color4fv
# Declared: Line 465 (Source lines: 466-476)
# Address: 0x0da55320 - 0x0da55394 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4fv
.ent __glce_Color4fv
__glce_Color4fv:
    # Line 470
    lw	$v0,5676($zero)
    # Line 466
    addiu	$sp,$sp,-48
    # Line 470
    sd	$v0,24($sp)
    # Line 466
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 468
    lw	$at,4112($zero)
    # Line 466
    addiu	$v1,$v1,-17224
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 472
    # lw $t9, -18312($gp) # &glColor4fv
    # Line 468
    sd	$at,32($sp)
    # Line 471
    lw	$at,7636($at)
    # Line 466
    move	$s8,$a0
    # Line 472
    jal	glColor4fv
    # Line 471
    sw	$at,5676($zero)
    # Line 474
    # lw $t9, -18312($gp) # &glColor4fv
    # Line 473
    ld	$a1,32($sp)
    lw	$a1,11420($a1)
    # Line 474
    move	$a0,$s8
    jal	glColor4fv
    # Line 473
    sw	$a1,5676($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 476
    ld	$gp,16($sp)
    # Line 475
    ld	$a2,24($sp)
    # Line 476
    addiu	$sp,$sp,48
    jr	$ra
    # Line 475
    sw	$a2,5676($zero)
.end __glce_Color4fv

# Function: __glce_Color4i
# Declared: Line 481 (Source lines: 482-492)
# Address: 0x0da553a0 - 0x0da5542c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4i
.ent __glce_Color4i
__glce_Color4i:
    # Line 486
    lw	$v0,5680($zero)
    # Line 482
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 486
    sd	$v0,24($sp)
    # Line 482
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 484
    lw	$at,4112($zero)
    # Line 482
    addiu	$v1,$v1,-17352
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 488
    # lw $t9, -18308($gp) # &glColor4i
    # Line 484
    sd	$at,32($sp)
    # Line 487
    lw	$at,7640($at)
    # Line 482
    move	$s8,$a0
    # Line 488
    jal	glColor4i
    # Line 487
    sw	$at,5680($zero)
    # Line 490
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18308($gp) # &glColor4i
    # Line 489
    ld	$a4,32($sp)
    # Line 490
    ld	$a1,56($sp)
    # Line 489
    lw	$a4,11424($a4)
    # Line 490
    move	$a0,$s8
    jal	glColor4i
    # Line 489
    sw	$a4,5680($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 492
    ld	$gp,16($sp)
    # Line 491
    ld	$a5,24($sp)
    # Line 492
    addiu	$sp,$sp,64
    jr	$ra
    # Line 491
    sw	$a5,5680($zero)
.end __glce_Color4i

# Function: __glce_Color4iv
# Declared: Line 497 (Source lines: 498-508)
# Address: 0x0da55430 - 0x0da554a4 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4iv
.ent __glce_Color4iv
__glce_Color4iv:
    # Line 502
    lw	$v0,5684($zero)
    # Line 498
    addiu	$sp,$sp,-48
    # Line 502
    sd	$v0,24($sp)
    # Line 498
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 500
    lw	$at,4112($zero)
    # Line 498
    addiu	$v1,$v1,-17496
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 504
    # lw $t9, -18304($gp) # &glColor4iv
    # Line 500
    sd	$at,32($sp)
    # Line 503
    lw	$at,7644($at)
    # Line 498
    move	$s8,$a0
    # Line 504
    jal	glColor4iv
    # Line 503
    sw	$at,5684($zero)
    # Line 506
    # lw $t9, -18304($gp) # &glColor4iv
    # Line 505
    ld	$a1,32($sp)
    lw	$a1,11428($a1)
    # Line 506
    move	$a0,$s8
    jal	glColor4iv
    # Line 505
    sw	$a1,5684($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 508
    ld	$gp,16($sp)
    # Line 507
    ld	$a2,24($sp)
    # Line 508
    addiu	$sp,$sp,48
    jr	$ra
    # Line 507
    sw	$a2,5684($zero)
.end __glce_Color4iv

# Function: __glce_Color4s
# Declared: Line 513 (Source lines: 514-524)
# Address: 0x0da554b0 - 0x0da5553c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4s
.ent __glce_Color4s
__glce_Color4s:
    # Line 518
    lw	$v0,5688($zero)
    # Line 514
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 518
    sd	$v0,24($sp)
    # Line 514
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 516
    lw	$at,4112($zero)
    # Line 514
    addiu	$v1,$v1,-17624
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 520
    # lw $t9, -18300($gp) # &glColor4s
    # Line 516
    sd	$at,32($sp)
    # Line 519
    lw	$at,7648($at)
    # Line 514
    move	$s8,$a0
    # Line 520
    jal	glColor4s
    # Line 519
    sw	$at,5688($zero)
    # Line 522
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18300($gp) # &glColor4s
    # Line 521
    ld	$a4,32($sp)
    # Line 522
    ld	$a1,56($sp)
    # Line 521
    lw	$a4,11432($a4)
    # Line 522
    move	$a0,$s8
    jal	glColor4s
    # Line 521
    sw	$a4,5688($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 524
    ld	$gp,16($sp)
    # Line 523
    ld	$a5,24($sp)
    # Line 524
    addiu	$sp,$sp,64
    jr	$ra
    # Line 523
    sw	$a5,5688($zero)
.end __glce_Color4s

# Function: __glce_Color4sv
# Declared: Line 529 (Source lines: 530-540)
# Address: 0x0da55540 - 0x0da555b4 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4sv
.ent __glce_Color4sv
__glce_Color4sv:
    # Line 534
    lw	$v0,5692($zero)
    # Line 530
    addiu	$sp,$sp,-48
    # Line 534
    sd	$v0,24($sp)
    # Line 530
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 532
    lw	$at,4112($zero)
    # Line 530
    addiu	$v1,$v1,-17768
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 536
    # lw $t9, -18296($gp) # &glColor4sv
    # Line 532
    sd	$at,32($sp)
    # Line 535
    lw	$at,7652($at)
    # Line 530
    move	$s8,$a0
    # Line 536
    jal	glColor4sv
    # Line 535
    sw	$at,5692($zero)
    # Line 538
    # lw $t9, -18296($gp) # &glColor4sv
    # Line 537
    ld	$a1,32($sp)
    lw	$a1,11436($a1)
    # Line 538
    move	$a0,$s8
    jal	glColor4sv
    # Line 537
    sw	$a1,5692($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 540
    ld	$gp,16($sp)
    # Line 539
    ld	$a2,24($sp)
    # Line 540
    addiu	$sp,$sp,48
    jr	$ra
    # Line 539
    sw	$a2,5692($zero)
.end __glce_Color4sv

# Function: __glce_Color4ub
# Declared: Line 545 (Source lines: 546-556)
# Address: 0x0da555c0 - 0x0da5564c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4ub
.ent __glce_Color4ub
__glce_Color4ub:
    # Line 550
    lw	$v0,5696($zero)
    # Line 546
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 550
    sd	$v0,24($sp)
    # Line 546
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 548
    lw	$at,4112($zero)
    # Line 546
    addiu	$v1,$v1,-17896
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 552
    # lw $t9, -18292($gp) # &glColor4ub
    # Line 548
    sd	$at,32($sp)
    # Line 551
    lw	$at,7656($at)
    # Line 546
    move	$s8,$a0
    # Line 552
    jal	glColor4ub
    # Line 551
    sw	$at,5696($zero)
    # Line 554
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18292($gp) # &glColor4ub
    # Line 553
    ld	$a4,32($sp)
    # Line 554
    ld	$a1,56($sp)
    # Line 553
    lw	$a4,11440($a4)
    # Line 554
    move	$a0,$s8
    jal	glColor4ub
    # Line 553
    sw	$a4,5696($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 556
    ld	$gp,16($sp)
    # Line 555
    ld	$a5,24($sp)
    # Line 556
    addiu	$sp,$sp,64
    jr	$ra
    # Line 555
    sw	$a5,5696($zero)
.end __glce_Color4ub

# Function: __glce_Color4ubv
# Declared: Line 561 (Source lines: 562-572)
# Address: 0x0da55650 - 0x0da556c4 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4ubv
.ent __glce_Color4ubv
__glce_Color4ubv:
    # Line 566
    lw	$v0,5700($zero)
    # Line 562
    addiu	$sp,$sp,-48
    # Line 566
    sd	$v0,24($sp)
    # Line 562
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 564
    lw	$at,4112($zero)
    # Line 562
    addiu	$v1,$v1,-18040
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 568
    # lw $t9, -18288($gp) # &glColor4ubv
    # Line 564
    sd	$at,32($sp)
    # Line 567
    lw	$at,7660($at)
    # Line 562
    move	$s8,$a0
    # Line 568
    jal	glColor4ubv
    # Line 567
    sw	$at,5700($zero)
    # Line 570
    # lw $t9, -18288($gp) # &glColor4ubv
    # Line 569
    ld	$a1,32($sp)
    lw	$a1,11444($a1)
    # Line 570
    move	$a0,$s8
    jal	glColor4ubv
    # Line 569
    sw	$a1,5700($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 572
    ld	$gp,16($sp)
    # Line 571
    ld	$a2,24($sp)
    # Line 572
    addiu	$sp,$sp,48
    jr	$ra
    # Line 571
    sw	$a2,5700($zero)
.end __glce_Color4ubv

# Function: __glce_Color4ui
# Declared: Line 577 (Source lines: 578-588)
# Address: 0x0da556d0 - 0x0da5575c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4ui
.ent __glce_Color4ui
__glce_Color4ui:
    # Line 582
    lw	$v0,5704($zero)
    # Line 578
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 582
    sd	$v0,24($sp)
    # Line 578
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 580
    lw	$at,4112($zero)
    # Line 578
    addiu	$v1,$v1,-18168
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 584
    # lw $t9, -18284($gp) # &glColor4ui
    # Line 580
    sd	$at,32($sp)
    # Line 583
    lw	$at,7664($at)
    # Line 578
    move	$s8,$a0
    # Line 584
    jal	glColor4ui
    # Line 583
    sw	$at,5704($zero)
    # Line 586
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18284($gp) # &glColor4ui
    # Line 585
    ld	$a4,32($sp)
    # Line 586
    ld	$a1,56($sp)
    # Line 585
    lw	$a4,11448($a4)
    # Line 586
    move	$a0,$s8
    jal	glColor4ui
    # Line 585
    sw	$a4,5704($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 588
    ld	$gp,16($sp)
    # Line 587
    ld	$a5,24($sp)
    # Line 588
    addiu	$sp,$sp,64
    jr	$ra
    # Line 587
    sw	$a5,5704($zero)
.end __glce_Color4ui

# Function: __glce_Color4uiv
# Declared: Line 593 (Source lines: 594-604)
# Address: 0x0da55760 - 0x0da557d4 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4uiv
.ent __glce_Color4uiv
__glce_Color4uiv:
    # Line 598
    lw	$v0,5708($zero)
    # Line 594
    addiu	$sp,$sp,-48
    # Line 598
    sd	$v0,24($sp)
    # Line 594
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 596
    lw	$at,4112($zero)
    # Line 594
    addiu	$v1,$v1,-18312
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 600
    # lw $t9, -18280($gp) # &glColor4uiv
    # Line 596
    sd	$at,32($sp)
    # Line 599
    lw	$at,7668($at)
    # Line 594
    move	$s8,$a0
    # Line 600
    jal	glColor4uiv
    # Line 599
    sw	$at,5708($zero)
    # Line 602
    # lw $t9, -18280($gp) # &glColor4uiv
    # Line 601
    ld	$a1,32($sp)
    lw	$a1,11452($a1)
    # Line 602
    move	$a0,$s8
    jal	glColor4uiv
    # Line 601
    sw	$a1,5708($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 604
    ld	$gp,16($sp)
    # Line 603
    ld	$a2,24($sp)
    # Line 604
    addiu	$sp,$sp,48
    jr	$ra
    # Line 603
    sw	$a2,5708($zero)
.end __glce_Color4uiv

# Function: __glce_Color4us
# Declared: Line 609 (Source lines: 610-620)
# Address: 0x0da557e0 - 0x0da5586c (Size: 140 bytes, Frame: 192)
.globl __glce_Color4us
.ent __glce_Color4us
__glce_Color4us:
    # Line 614
    lw	$v0,5712($zero)
    # Line 610
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 614
    sd	$v0,24($sp)
    # Line 610
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 612
    lw	$at,4112($zero)
    # Line 610
    addiu	$v1,$v1,-18440
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 616
    # lw $t9, -18276($gp) # &glColor4us
    # Line 612
    sd	$at,32($sp)
    # Line 615
    lw	$at,7672($at)
    # Line 610
    move	$s8,$a0
    # Line 616
    jal	glColor4us
    # Line 615
    sw	$at,5712($zero)
    # Line 618
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18276($gp) # &glColor4us
    # Line 617
    ld	$a4,32($sp)
    # Line 618
    ld	$a1,56($sp)
    # Line 617
    lw	$a4,11456($a4)
    # Line 618
    move	$a0,$s8
    jal	glColor4us
    # Line 617
    sw	$a4,5712($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 620
    ld	$gp,16($sp)
    # Line 619
    ld	$a5,24($sp)
    # Line 620
    addiu	$sp,$sp,64
    jr	$ra
    # Line 619
    sw	$a5,5712($zero)
.end __glce_Color4us

# Function: __glce_Color4usv
# Declared: Line 625 (Source lines: 626-636)
# Address: 0x0da55870 - 0x0da558e4 (Size: 116 bytes, Frame: 48)
.globl __glce_Color4usv
.ent __glce_Color4usv
__glce_Color4usv:
    # Line 630
    lw	$v0,5716($zero)
    # Line 626
    addiu	$sp,$sp,-48
    # Line 630
    sd	$v0,24($sp)
    # Line 626
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 628
    lw	$at,4112($zero)
    # Line 626
    addiu	$v1,$v1,-18584
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 632
    # lw $t9, -18272($gp) # &glColor4usv
    # Line 628
    sd	$at,32($sp)
    # Line 631
    lw	$at,7676($at)
    # Line 626
    move	$s8,$a0
    # Line 632
    jal	glColor4usv
    # Line 631
    sw	$at,5716($zero)
    # Line 634
    # lw $t9, -18272($gp) # &glColor4usv
    # Line 633
    ld	$a1,32($sp)
    lw	$a1,11460($a1)
    # Line 634
    move	$a0,$s8
    jal	glColor4usv
    # Line 633
    sw	$a1,5716($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 636
    ld	$gp,16($sp)
    # Line 635
    ld	$a2,24($sp)
    # Line 636
    addiu	$sp,$sp,48
    jr	$ra
    # Line 635
    sw	$a2,5716($zero)
.end __glce_Color4usv

# Function: __glce_EdgeFlag
# Declared: Line 641 (Source lines: 642-652)
# Address: 0x0da558f0 - 0x0da55964 (Size: 116 bytes, Frame: 48)
.globl __glce_EdgeFlag
.ent __glce_EdgeFlag
__glce_EdgeFlag:
    # Line 646
    lw	$v0,4212($zero)
    # Line 642
    addiu	$sp,$sp,-48
    # Line 646
    sd	$v0,24($sp)
    # Line 642
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 644
    lw	$at,4112($zero)
    # Line 642
    addiu	$v1,$v1,-18712
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 648
    # lw $t9, -18268($gp) # &glEdgeFlag
    # Line 644
    sd	$at,32($sp)
    # Line 647
    lw	$at,6172($at)
    # Line 642
    move	$s8,$a0
    # Line 648
    jal	glEdgeFlag
    # Line 647
    sw	$at,4212($zero)
    # Line 650
    # lw $t9, -18268($gp) # &glEdgeFlag
    # Line 649
    ld	$a1,32($sp)
    lw	$a1,9956($a1)
    # Line 650
    move	$a0,$s8
    jal	glEdgeFlag
    # Line 649
    sw	$a1,4212($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 652
    ld	$gp,16($sp)
    # Line 651
    ld	$a2,24($sp)
    # Line 652
    addiu	$sp,$sp,48
    jr	$ra
    # Line 651
    sw	$a2,4212($zero)
.end __glce_EdgeFlag

# Function: __glce_EdgeFlagv
# Declared: Line 657 (Source lines: 658-668)
# Address: 0x0da55970 - 0x0da559e4 (Size: 116 bytes, Frame: 48)
.globl __glce_EdgeFlagv
.ent __glce_EdgeFlagv
__glce_EdgeFlagv:
    # Line 662
    lw	$v0,4216($zero)
    # Line 658
    addiu	$sp,$sp,-48
    # Line 662
    sd	$v0,24($sp)
    # Line 658
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 660
    lw	$at,4112($zero)
    # Line 658
    addiu	$v1,$v1,-18840
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 664
    # lw $t9, -18264($gp) # &glEdgeFlagv
    # Line 660
    sd	$at,32($sp)
    # Line 663
    lw	$at,6176($at)
    # Line 658
    move	$s8,$a0
    # Line 664
    jal	glEdgeFlagv
    # Line 663
    sw	$at,4216($zero)
    # Line 666
    # lw $t9, -18264($gp) # &glEdgeFlagv
    # Line 665
    ld	$a1,32($sp)
    lw	$a1,9960($a1)
    # Line 666
    move	$a0,$s8
    jal	glEdgeFlagv
    # Line 665
    sw	$a1,4216($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 668
    ld	$gp,16($sp)
    # Line 667
    ld	$a2,24($sp)
    # Line 668
    addiu	$sp,$sp,48
    jr	$ra
    # Line 667
    sw	$a2,4216($zero)
.end __glce_EdgeFlagv

# Function: __glce_End
# Declared: Line 673 (Source lines: 674-684)
# Address: 0x0da559f0 - 0x0da55a54 (Size: 100 bytes, Frame: 32)
.globl __glce_End
.ent __glce_End
__glce_End:
    # Line 678
    lw	$v0,4220($zero)
    # Line 674
    addiu	$sp,$sp,-32
    # Line 678
    sd	$v0,24($sp)
    # Line 674
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 676
    lw	$s8,4112($zero)
    # Line 674
    addiu	$v1,$v1,-18968
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 680
    # lw $t9, -18260($gp) # &glEnd
    # Line 674
    sd	$ra,0($sp)
    # Line 679
    lw	$at,6180($s8)
    # Line 680
    jal	glEnd
    # Line 679
    sw	$at,4220($zero)
    # Line 682
    # lw $t9, -18260($gp) # &glEnd
    # Line 681
    lw	$a0,9964($s8)
    # Line 682
    jal	glEnd
    # Line 681
    sw	$a0,4220($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 684
    ld	$gp,16($sp)
    # Line 683
    ld	$a1,24($sp)
    # Line 684
    addiu	$sp,$sp,32
    jr	$ra
    # Line 683
    sw	$a1,4220($zero)
.end __glce_End

# Function: __glce_Indexd
# Declared: Line 689 (Source lines: 690-700)
# Address: 0x0da55a60 - 0x0da55ad4 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexd
.ent __glce_Indexd
__glce_Indexd:
    # Line 694
    lw	$v0,5720($zero)
    # Line 690
    addiu	$sp,$sp,-48
    # Line 694
    sd	$v0,32($sp)
    # Line 690
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x4
    # Line 692
    lw	$s8,4112($zero)
    # Line 690
    addiu	$v1,$v1,-19080
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 696
    # lw $t9, -18256($gp) # &glIndexd
    # Line 690
    sdc1	$f30,0($sp)
    # Line 695
    lw	$at,7680($s8)
    # Line 690
    mov.d	$f30,$f12
    # Line 696
    jal	glIndexd
    # Line 695
    sw	$at,5720($zero)
    # Line 698
    # lw $t9, -18256($gp) # &glIndexd
    # Line 697
    lw	$a0,11464($s8)
    # Line 698
    mov.d	$f12,$f30
    jal	glIndexd
    # Line 697
    sw	$a0,5720($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 700
    ld	$gp,24($sp)
    # Line 699
    ld	$a1,32($sp)
    # Line 700
    addiu	$sp,$sp,48
    jr	$ra
    # Line 699
    sw	$a1,5720($zero)
.end __glce_Indexd

# Function: __glce_Indexdv
# Declared: Line 705 (Source lines: 706-716)
# Address: 0x0da55ae0 - 0x0da55b54 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexdv
.ent __glce_Indexdv
__glce_Indexdv:
    # Line 710
    lw	$v0,5724($zero)
    # Line 706
    addiu	$sp,$sp,-48
    # Line 710
    sd	$v0,24($sp)
    # Line 706
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 708
    lw	$at,4112($zero)
    # Line 706
    addiu	$v1,$v1,-19208
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 712
    # lw $t9, -18252($gp) # &glIndexdv
    # Line 708
    sd	$at,32($sp)
    # Line 711
    lw	$at,7684($at)
    # Line 706
    move	$s8,$a0
    # Line 712
    jal	glIndexdv
    # Line 711
    sw	$at,5724($zero)
    # Line 714
    # lw $t9, -18252($gp) # &glIndexdv
    # Line 713
    ld	$a1,32($sp)
    lw	$a1,11468($a1)
    # Line 714
    move	$a0,$s8
    jal	glIndexdv
    # Line 713
    sw	$a1,5724($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 716
    ld	$gp,16($sp)
    # Line 715
    ld	$a2,24($sp)
    # Line 716
    addiu	$sp,$sp,48
    jr	$ra
    # Line 715
    sw	$a2,5724($zero)
.end __glce_Indexdv

# Function: __glce_Indexf
# Declared: Line 721 (Source lines: 722-732)
# Address: 0x0da55b60 - 0x0da55bd4 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexf
.ent __glce_Indexf
__glce_Indexf:
    # Line 726
    lw	$v0,5728($zero)
    # Line 722
    addiu	$sp,$sp,-48
    # Line 726
    sd	$v0,32($sp)
    # Line 722
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x4
    # Line 724
    lw	$s8,4112($zero)
    # Line 722
    addiu	$v1,$v1,-19336
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 728
    # lw $t9, -18248($gp) # &glIndexf
    # Line 722
    sdc1	$f30,0($sp)
    # Line 727
    lw	$at,7688($s8)
    # Line 722
    mov.s	$f30,$f12
    # Line 728
    jal	glIndexf
    # Line 727
    sw	$at,5728($zero)
    # Line 730
    # lw $t9, -18248($gp) # &glIndexf
    # Line 729
    lw	$a0,11472($s8)
    # Line 730
    mov.s	$f12,$f30
    jal	glIndexf
    # Line 729
    sw	$a0,5728($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 732
    ld	$gp,24($sp)
    # Line 731
    ld	$a1,32($sp)
    # Line 732
    addiu	$sp,$sp,48
    jr	$ra
    # Line 731
    sw	$a1,5728($zero)
.end __glce_Indexf

# Function: __glce_Indexfv
# Declared: Line 737 (Source lines: 738-748)
# Address: 0x0da55be0 - 0x0da55c54 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexfv
.ent __glce_Indexfv
__glce_Indexfv:
    # Line 742
    lw	$v0,5732($zero)
    # Line 738
    addiu	$sp,$sp,-48
    # Line 742
    sd	$v0,24($sp)
    # Line 738
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 740
    lw	$at,4112($zero)
    # Line 738
    addiu	$v1,$v1,-19464
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 744
    # lw $t9, -18244($gp) # &glIndexfv
    # Line 740
    sd	$at,32($sp)
    # Line 743
    lw	$at,7692($at)
    # Line 738
    move	$s8,$a0
    # Line 744
    jal	glIndexfv
    # Line 743
    sw	$at,5732($zero)
    # Line 746
    # lw $t9, -18244($gp) # &glIndexfv
    # Line 745
    ld	$a1,32($sp)
    lw	$a1,11476($a1)
    # Line 746
    move	$a0,$s8
    jal	glIndexfv
    # Line 745
    sw	$a1,5732($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 748
    ld	$gp,16($sp)
    # Line 747
    ld	$a2,24($sp)
    # Line 748
    addiu	$sp,$sp,48
    jr	$ra
    # Line 747
    sw	$a2,5732($zero)
.end __glce_Indexfv

# Function: __glce_Indexi
# Declared: Line 753 (Source lines: 754-764)
# Address: 0x0da55c60 - 0x0da55cd4 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexi
.ent __glce_Indexi
__glce_Indexi:
    # Line 758
    lw	$v0,5736($zero)
    # Line 754
    addiu	$sp,$sp,-48
    # Line 758
    sd	$v0,24($sp)
    # Line 754
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 756
    lw	$at,4112($zero)
    # Line 754
    addiu	$v1,$v1,-19592
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 760
    # lw $t9, -18240($gp) # &glIndexi
    # Line 756
    sd	$at,32($sp)
    # Line 759
    lw	$at,7696($at)
    # Line 754
    move	$s8,$a0
    # Line 760
    jal	glIndexi
    # Line 759
    sw	$at,5736($zero)
    # Line 762
    # lw $t9, -18240($gp) # &glIndexi
    # Line 761
    ld	$a1,32($sp)
    lw	$a1,11480($a1)
    # Line 762
    move	$a0,$s8
    jal	glIndexi
    # Line 761
    sw	$a1,5736($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 764
    ld	$gp,16($sp)
    # Line 763
    ld	$a2,24($sp)
    # Line 764
    addiu	$sp,$sp,48
    jr	$ra
    # Line 763
    sw	$a2,5736($zero)
.end __glce_Indexi

# Function: __glce_Indexiv
# Declared: Line 769 (Source lines: 770-780)
# Address: 0x0da55ce0 - 0x0da55d54 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexiv
.ent __glce_Indexiv
__glce_Indexiv:
    # Line 774
    lw	$v0,5740($zero)
    # Line 770
    addiu	$sp,$sp,-48
    # Line 774
    sd	$v0,24($sp)
    # Line 770
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 772
    lw	$at,4112($zero)
    # Line 770
    addiu	$v1,$v1,-19720
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 776
    # lw $t9, -18236($gp) # &glIndexiv
    # Line 772
    sd	$at,32($sp)
    # Line 775
    lw	$at,7700($at)
    # Line 770
    move	$s8,$a0
    # Line 776
    jal	glIndexiv
    # Line 775
    sw	$at,5740($zero)
    # Line 778
    # lw $t9, -18236($gp) # &glIndexiv
    # Line 777
    ld	$a1,32($sp)
    lw	$a1,11484($a1)
    # Line 778
    move	$a0,$s8
    jal	glIndexiv
    # Line 777
    sw	$a1,5740($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 780
    ld	$gp,16($sp)
    # Line 779
    ld	$a2,24($sp)
    # Line 780
    addiu	$sp,$sp,48
    jr	$ra
    # Line 779
    sw	$a2,5740($zero)
.end __glce_Indexiv

# Function: __glce_Indexs
# Declared: Line 785 (Source lines: 786-796)
# Address: 0x0da55d60 - 0x0da55dd4 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexs
.ent __glce_Indexs
__glce_Indexs:
    # Line 790
    lw	$v0,5744($zero)
    # Line 786
    addiu	$sp,$sp,-48
    # Line 790
    sd	$v0,24($sp)
    # Line 786
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 788
    lw	$at,4112($zero)
    # Line 786
    addiu	$v1,$v1,-19848
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 792
    # lw $t9, -18232($gp) # &glIndexs
    # Line 788
    sd	$at,32($sp)
    # Line 791
    lw	$at,7704($at)
    # Line 786
    move	$s8,$a0
    # Line 792
    jal	glIndexs
    # Line 791
    sw	$at,5744($zero)
    # Line 794
    # lw $t9, -18232($gp) # &glIndexs
    # Line 793
    ld	$a1,32($sp)
    lw	$a1,11488($a1)
    # Line 794
    move	$a0,$s8
    jal	glIndexs
    # Line 793
    sw	$a1,5744($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 796
    ld	$gp,16($sp)
    # Line 795
    ld	$a2,24($sp)
    # Line 796
    addiu	$sp,$sp,48
    jr	$ra
    # Line 795
    sw	$a2,5744($zero)
.end __glce_Indexs

# Function: __glce_Indexsv
# Declared: Line 801 (Source lines: 802-812)
# Address: 0x0da55de0 - 0x0da55e54 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexsv
.ent __glce_Indexsv
__glce_Indexsv:
    # Line 806
    lw	$v0,5748($zero)
    # Line 802
    addiu	$sp,$sp,-48
    # Line 806
    sd	$v0,24($sp)
    # Line 802
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 804
    lw	$at,4112($zero)
    # Line 802
    addiu	$v1,$v1,-19976
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 808
    # lw $t9, -18228($gp) # &glIndexsv
    # Line 804
    sd	$at,32($sp)
    # Line 807
    lw	$at,7708($at)
    # Line 802
    move	$s8,$a0
    # Line 808
    jal	glIndexsv
    # Line 807
    sw	$at,5748($zero)
    # Line 810
    # lw $t9, -18228($gp) # &glIndexsv
    # Line 809
    ld	$a1,32($sp)
    lw	$a1,11492($a1)
    # Line 810
    move	$a0,$s8
    jal	glIndexsv
    # Line 809
    sw	$a1,5748($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 812
    ld	$gp,16($sp)
    # Line 811
    ld	$a2,24($sp)
    # Line 812
    addiu	$sp,$sp,48
    jr	$ra
    # Line 811
    sw	$a2,5748($zero)
.end __glce_Indexsv

# Function: __glce_Normal3b
# Declared: Line 817 (Source lines: 818-828)
# Address: 0x0da55e60 - 0x0da55ee4 (Size: 132 bytes, Frame: 192)
.globl __glce_Normal3b
.ent __glce_Normal3b
__glce_Normal3b:
    # Line 822
    lw	$v0,5760($zero)
    # Line 818
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 822
    sd	$v0,24($sp)
    # Line 818
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 820
    lw	$at,4112($zero)
    # Line 818
    addiu	$v1,$v1,-20104
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 824
    # lw $t9, -18224($gp) # &glNormal3b
    # Line 820
    sd	$at,32($sp)
    # Line 823
    lw	$at,7720($at)
    # Line 818
    move	$s8,$a0
    # Line 824
    jal	glNormal3b
    # Line 823
    sw	$at,5760($zero)
    # Line 826
    ld	$a2,40($sp)
    # lw $t9, -18224($gp) # &glNormal3b
    # Line 825
    ld	$a3,32($sp)
    # Line 826
    ld	$a1,48($sp)
    # Line 825
    lw	$a3,11504($a3)
    # Line 826
    move	$a0,$s8
    jal	glNormal3b
    # Line 825
    sw	$a3,5760($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 828
    ld	$gp,16($sp)
    # Line 827
    ld	$a4,24($sp)
    # Line 828
    addiu	$sp,$sp,64
    jr	$ra
    # Line 827
    sw	$a4,5760($zero)
.end __glce_Normal3b

# Function: __glce_Normal3bv
# Declared: Line 833 (Source lines: 834-844)
# Address: 0x0da55ef0 - 0x0da55f64 (Size: 116 bytes, Frame: 48)
.globl __glce_Normal3bv
.ent __glce_Normal3bv
__glce_Normal3bv:
    # Line 838
    lw	$v0,5764($zero)
    # Line 834
    addiu	$sp,$sp,-48
    # Line 838
    sd	$v0,24($sp)
    # Line 834
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 836
    lw	$at,4112($zero)
    # Line 834
    addiu	$v1,$v1,-20248
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 840
    # lw $t9, -18220($gp) # &glNormal3bv
    # Line 836
    sd	$at,32($sp)
    # Line 839
    lw	$at,7724($at)
    # Line 834
    move	$s8,$a0
    # Line 840
    jal	glNormal3bv
    # Line 839
    sw	$at,5764($zero)
    # Line 842
    # lw $t9, -18220($gp) # &glNormal3bv
    # Line 841
    ld	$a1,32($sp)
    lw	$a1,11508($a1)
    # Line 842
    move	$a0,$s8
    jal	glNormal3bv
    # Line 841
    sw	$a1,5764($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 844
    ld	$gp,16($sp)
    # Line 843
    ld	$a2,24($sp)
    # Line 844
    addiu	$sp,$sp,48
    jr	$ra
    # Line 843
    sw	$a2,5764($zero)
.end __glce_Normal3bv

# Function: __glce_Normal3d
# Declared: Line 849 (Source lines: 850-860)
# Address: 0x0da55f70 - 0x0da55ff4 (Size: 132 bytes, Frame: 192)
.globl __glce_Normal3d
.ent __glce_Normal3d
__glce_Normal3d:
    # Line 854
    lw	$v0,5768($zero)
    # Line 850
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 854
    sd	$v0,48($sp)
    # Line 850
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 852
    lw	$s8,4112($zero)
    # Line 850
    addiu	$v1,$v1,-20376
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 856
    # lw $t9, -18216($gp) # &glNormal3d
    # Line 850
    sdc1	$f30,0($sp)
    # Line 855
    lw	$at,7728($s8)
    # Line 850
    mov.d	$f30,$f12
    # Line 856
    jal	glNormal3d
    # Line 855
    sw	$at,5768($zero)
    # Line 858
    ldc1	$f14,8($sp)
    # lw $t9, -18216($gp) # &glNormal3d
    ldc1	$f13,16($sp)
    # Line 857
    lw	$a0,11512($s8)
    # Line 858
    mov.d	$f12,$f30
    jal	glNormal3d
    # Line 857
    sw	$a0,5768($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 860
    ld	$gp,40($sp)
    # Line 859
    ld	$a1,48($sp)
    # Line 860
    addiu	$sp,$sp,64
    jr	$ra
    # Line 859
    sw	$a1,5768($zero)
.end __glce_Normal3d

# Function: __glce_Normal3dv
# Declared: Line 865 (Source lines: 866-876)
# Address: 0x0da56000 - 0x0da56074 (Size: 116 bytes, Frame: 48)
.globl __glce_Normal3dv
.ent __glce_Normal3dv
__glce_Normal3dv:
    # Line 870
    lw	$v0,5772($zero)
    # Line 866
    addiu	$sp,$sp,-48
    # Line 870
    sd	$v0,24($sp)
    # Line 866
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 868
    lw	$at,4112($zero)
    # Line 866
    addiu	$v1,$v1,-20520
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 872
    # lw $t9, -18212($gp) # &glNormal3dv
    # Line 868
    sd	$at,32($sp)
    # Line 871
    lw	$at,7732($at)
    # Line 866
    move	$s8,$a0
    # Line 872
    jal	glNormal3dv
    # Line 871
    sw	$at,5772($zero)
    # Line 874
    # lw $t9, -18212($gp) # &glNormal3dv
    # Line 873
    ld	$a1,32($sp)
    lw	$a1,11516($a1)
    # Line 874
    move	$a0,$s8
    jal	glNormal3dv
    # Line 873
    sw	$a1,5772($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 876
    ld	$gp,16($sp)
    # Line 875
    ld	$a2,24($sp)
    # Line 876
    addiu	$sp,$sp,48
    jr	$ra
    # Line 875
    sw	$a2,5772($zero)
.end __glce_Normal3dv

# Function: __glce_Normal3f
# Declared: Line 881 (Source lines: 882-892)
# Address: 0x0da56080 - 0x0da56104 (Size: 132 bytes, Frame: 192)
.globl __glce_Normal3f
.ent __glce_Normal3f
__glce_Normal3f:
    # Line 886
    lw	$v0,5776($zero)
    # Line 882
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 886
    sd	$v0,48($sp)
    # Line 882
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 884
    lw	$s8,4112($zero)
    # Line 882
    addiu	$v1,$v1,-20648
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 888
    # lw $t9, -18208($gp) # &glNormal3f
    # Line 882
    sdc1	$f30,0($sp)
    # Line 887
    lw	$at,7736($s8)
    # Line 882
    mov.s	$f30,$f12
    # Line 888
    jal	glNormal3f
    # Line 887
    sw	$at,5776($zero)
    # Line 890
    ldc1	$f14,8($sp)
    # lw $t9, -18208($gp) # &glNormal3f
    ldc1	$f13,16($sp)
    # Line 889
    lw	$a0,11520($s8)
    # Line 890
    mov.s	$f12,$f30
    jal	glNormal3f
    # Line 889
    sw	$a0,5776($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 892
    ld	$gp,40($sp)
    # Line 891
    ld	$a1,48($sp)
    # Line 892
    addiu	$sp,$sp,64
    jr	$ra
    # Line 891
    sw	$a1,5776($zero)
.end __glce_Normal3f

# Function: __glce_Normal3fv
# Declared: Line 897 (Source lines: 898-908)
# Address: 0x0da56110 - 0x0da56184 (Size: 116 bytes, Frame: 48)
.globl __glce_Normal3fv
.ent __glce_Normal3fv
__glce_Normal3fv:
    # Line 902
    lw	$v0,5780($zero)
    # Line 898
    addiu	$sp,$sp,-48
    # Line 902
    sd	$v0,24($sp)
    # Line 898
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 900
    lw	$at,4112($zero)
    # Line 898
    addiu	$v1,$v1,-20792
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 904
    # lw $t9, -18204($gp) # &glNormal3fv
    # Line 900
    sd	$at,32($sp)
    # Line 903
    lw	$at,7740($at)
    # Line 898
    move	$s8,$a0
    # Line 904
    jal	glNormal3fv
    # Line 903
    sw	$at,5780($zero)
    # Line 906
    # lw $t9, -18204($gp) # &glNormal3fv
    # Line 905
    ld	$a1,32($sp)
    lw	$a1,11524($a1)
    # Line 906
    move	$a0,$s8
    jal	glNormal3fv
    # Line 905
    sw	$a1,5780($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 908
    ld	$gp,16($sp)
    # Line 907
    ld	$a2,24($sp)
    # Line 908
    addiu	$sp,$sp,48
    jr	$ra
    # Line 907
    sw	$a2,5780($zero)
.end __glce_Normal3fv

# Function: __glce_Normal3i
# Declared: Line 913 (Source lines: 914-924)
# Address: 0x0da56190 - 0x0da56214 (Size: 132 bytes, Frame: 192)
.globl __glce_Normal3i
.ent __glce_Normal3i
__glce_Normal3i:
    # Line 918
    lw	$v0,5784($zero)
    # Line 914
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 918
    sd	$v0,24($sp)
    # Line 914
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 916
    lw	$at,4112($zero)
    # Line 914
    addiu	$v1,$v1,-20920
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 920
    # lw $t9, -18200($gp) # &glNormal3i
    # Line 916
    sd	$at,32($sp)
    # Line 919
    lw	$at,7744($at)
    # Line 914
    move	$s8,$a0
    # Line 920
    jal	glNormal3i
    # Line 919
    sw	$at,5784($zero)
    # Line 922
    ld	$a2,40($sp)
    # lw $t9, -18200($gp) # &glNormal3i
    # Line 921
    ld	$a3,32($sp)
    # Line 922
    ld	$a1,48($sp)
    # Line 921
    lw	$a3,11528($a3)
    # Line 922
    move	$a0,$s8
    jal	glNormal3i
    # Line 921
    sw	$a3,5784($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 924
    ld	$gp,16($sp)
    # Line 923
    ld	$a4,24($sp)
    # Line 924
    addiu	$sp,$sp,64
    jr	$ra
    # Line 923
    sw	$a4,5784($zero)
.end __glce_Normal3i

# Function: __glce_Normal3iv
# Declared: Line 929 (Source lines: 930-940)
# Address: 0x0da56220 - 0x0da56294 (Size: 116 bytes, Frame: 48)
.globl __glce_Normal3iv
.ent __glce_Normal3iv
__glce_Normal3iv:
    # Line 934
    lw	$v0,5788($zero)
    # Line 930
    addiu	$sp,$sp,-48
    # Line 934
    sd	$v0,24($sp)
    # Line 930
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 932
    lw	$at,4112($zero)
    # Line 930
    addiu	$v1,$v1,-21064
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 936
    # lw $t9, -18196($gp) # &glNormal3iv
    # Line 932
    sd	$at,32($sp)
    # Line 935
    lw	$at,7748($at)
    # Line 930
    move	$s8,$a0
    # Line 936
    jal	glNormal3iv
    # Line 935
    sw	$at,5788($zero)
    # Line 938
    # lw $t9, -18196($gp) # &glNormal3iv
    # Line 937
    ld	$a1,32($sp)
    lw	$a1,11532($a1)
    # Line 938
    move	$a0,$s8
    jal	glNormal3iv
    # Line 937
    sw	$a1,5788($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 940
    ld	$gp,16($sp)
    # Line 939
    ld	$a2,24($sp)
    # Line 940
    addiu	$sp,$sp,48
    jr	$ra
    # Line 939
    sw	$a2,5788($zero)
.end __glce_Normal3iv

# Function: __glce_Normal3s
# Declared: Line 945 (Source lines: 946-956)
# Address: 0x0da562a0 - 0x0da56324 (Size: 132 bytes, Frame: 192)
.globl __glce_Normal3s
.ent __glce_Normal3s
__glce_Normal3s:
    # Line 950
    lw	$v0,5792($zero)
    # Line 946
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 950
    sd	$v0,24($sp)
    # Line 946
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 948
    lw	$at,4112($zero)
    # Line 946
    addiu	$v1,$v1,-21192
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 952
    # lw $t9, -18192($gp) # &glNormal3s
    # Line 948
    sd	$at,32($sp)
    # Line 951
    lw	$at,7752($at)
    # Line 946
    move	$s8,$a0
    # Line 952
    jal	glNormal3s
    # Line 951
    sw	$at,5792($zero)
    # Line 954
    ld	$a2,40($sp)
    # lw $t9, -18192($gp) # &glNormal3s
    # Line 953
    ld	$a3,32($sp)
    # Line 954
    ld	$a1,48($sp)
    # Line 953
    lw	$a3,11536($a3)
    # Line 954
    move	$a0,$s8
    jal	glNormal3s
    # Line 953
    sw	$a3,5792($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 956
    ld	$gp,16($sp)
    # Line 955
    ld	$a4,24($sp)
    # Line 956
    addiu	$sp,$sp,64
    jr	$ra
    # Line 955
    sw	$a4,5792($zero)
.end __glce_Normal3s

# Function: __glce_Normal3sv
# Declared: Line 961 (Source lines: 962-972)
# Address: 0x0da56330 - 0x0da563a4 (Size: 116 bytes, Frame: 48)
.globl __glce_Normal3sv
.ent __glce_Normal3sv
__glce_Normal3sv:
    # Line 966
    lw	$v0,5796($zero)
    # Line 962
    addiu	$sp,$sp,-48
    # Line 966
    sd	$v0,24($sp)
    # Line 962
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 964
    lw	$at,4112($zero)
    # Line 962
    addiu	$v1,$v1,-21336
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 968
    # lw $t9, -18188($gp) # &glNormal3sv
    # Line 964
    sd	$at,32($sp)
    # Line 967
    lw	$at,7756($at)
    # Line 962
    move	$s8,$a0
    # Line 968
    jal	glNormal3sv
    # Line 967
    sw	$at,5796($zero)
    # Line 970
    # lw $t9, -18188($gp) # &glNormal3sv
    # Line 969
    ld	$a1,32($sp)
    lw	$a1,11540($a1)
    # Line 970
    move	$a0,$s8
    jal	glNormal3sv
    # Line 969
    sw	$a1,5796($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 972
    ld	$gp,16($sp)
    # Line 971
    ld	$a2,24($sp)
    # Line 972
    addiu	$sp,$sp,48
    jr	$ra
    # Line 971
    sw	$a2,5796($zero)
.end __glce_Normal3sv

# Function: __glce_RasterPos2d
# Declared: Line 977 (Source lines: 978-988)
# Address: 0x0da563b0 - 0x0da5642c (Size: 124 bytes, Frame: 48)
.globl __glce_RasterPos2d
.ent __glce_RasterPos2d
__glce_RasterPos2d:
    # Line 982
    lw	$v0,5928($zero)
    # Line 978
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 982
    sd	$v0,40($sp)
    # Line 978
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x4
    # Line 980
    lw	$s8,4112($zero)
    # Line 978
    addiu	$v1,$v1,-21464
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 984
    # lw $t9, -18184($gp) # &glRasterPos2d
    # Line 978
    sdc1	$f30,0($sp)
    # Line 983
    lw	$at,7888($s8)
    # Line 978
    mov.d	$f30,$f12
    # Line 984
    jal	glRasterPos2d
    # Line 983
    sw	$at,5928($zero)
    # Line 986
    # lw $t9, -18184($gp) # &glRasterPos2d
    ldc1	$f13,8($sp)
    # Line 985
    lw	$a0,11672($s8)
    # Line 986
    mov.d	$f12,$f30
    jal	glRasterPos2d
    # Line 985
    sw	$a0,5928($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 988
    ld	$gp,32($sp)
    # Line 987
    ld	$a1,40($sp)
    # Line 988
    addiu	$sp,$sp,48
    jr	$ra
    # Line 987
    sw	$a1,5928($zero)
.end __glce_RasterPos2d

# Function: __glce_RasterPos2dv
# Declared: Line 993 (Source lines: 994-1004)
# Address: 0x0da56430 - 0x0da564a4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos2dv
.ent __glce_RasterPos2dv
__glce_RasterPos2dv:
    # Line 998
    lw	$v0,5932($zero)
    # Line 994
    addiu	$sp,$sp,-48
    # Line 998
    sd	$v0,24($sp)
    # Line 994
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 996
    lw	$at,4112($zero)
    # Line 994
    addiu	$v1,$v1,-21592
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1000
    # lw $t9, -18180($gp) # &glRasterPos2dv
    # Line 996
    sd	$at,32($sp)
    # Line 999
    lw	$at,7892($at)
    # Line 994
    move	$s8,$a0
    # Line 1000
    jal	glRasterPos2dv
    # Line 999
    sw	$at,5932($zero)
    # Line 1002
    # lw $t9, -18180($gp) # &glRasterPos2dv
    # Line 1001
    ld	$a1,32($sp)
    lw	$a1,11676($a1)
    # Line 1002
    move	$a0,$s8
    jal	glRasterPos2dv
    # Line 1001
    sw	$a1,5932($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1004
    ld	$gp,16($sp)
    # Line 1003
    ld	$a2,24($sp)
    # Line 1004
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1003
    sw	$a2,5932($zero)
.end __glce_RasterPos2dv

# Function: __glce_RasterPos2f
# Declared: Line 1009 (Source lines: 1010-1020)
# Address: 0x0da564b0 - 0x0da5652c (Size: 124 bytes, Frame: 48)
.globl __glce_RasterPos2f
.ent __glce_RasterPos2f
__glce_RasterPos2f:
    # Line 1014
    lw	$v0,5936($zero)
    # Line 1010
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 1014
    sd	$v0,40($sp)
    # Line 1010
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x4
    # Line 1012
    lw	$s8,4112($zero)
    # Line 1010
    addiu	$v1,$v1,-21720
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 1016
    # lw $t9, -18176($gp) # &glRasterPos2f
    # Line 1010
    sdc1	$f30,0($sp)
    # Line 1015
    lw	$at,7896($s8)
    # Line 1010
    mov.s	$f30,$f12
    # Line 1016
    jal	glRasterPos2f
    # Line 1015
    sw	$at,5936($zero)
    # Line 1018
    # lw $t9, -18176($gp) # &glRasterPos2f
    ldc1	$f13,8($sp)
    # Line 1017
    lw	$a0,11680($s8)
    # Line 1018
    mov.s	$f12,$f30
    jal	glRasterPos2f
    # Line 1017
    sw	$a0,5936($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 1020
    ld	$gp,32($sp)
    # Line 1019
    ld	$a1,40($sp)
    # Line 1020
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1019
    sw	$a1,5936($zero)
.end __glce_RasterPos2f

# Function: __glce_RasterPos2fv
# Declared: Line 1025 (Source lines: 1026-1036)
# Address: 0x0da56530 - 0x0da565a4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos2fv
.ent __glce_RasterPos2fv
__glce_RasterPos2fv:
    # Line 1030
    lw	$v0,5940($zero)
    # Line 1026
    addiu	$sp,$sp,-48
    # Line 1030
    sd	$v0,24($sp)
    # Line 1026
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1028
    lw	$at,4112($zero)
    # Line 1026
    addiu	$v1,$v1,-21848
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1032
    # lw $t9, -18172($gp) # &glRasterPos2fv
    # Line 1028
    sd	$at,32($sp)
    # Line 1031
    lw	$at,7900($at)
    # Line 1026
    move	$s8,$a0
    # Line 1032
    jal	glRasterPos2fv
    # Line 1031
    sw	$at,5940($zero)
    # Line 1034
    # lw $t9, -18172($gp) # &glRasterPos2fv
    # Line 1033
    ld	$a1,32($sp)
    lw	$a1,11684($a1)
    # Line 1034
    move	$a0,$s8
    jal	glRasterPos2fv
    # Line 1033
    sw	$a1,5940($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1036
    ld	$gp,16($sp)
    # Line 1035
    ld	$a2,24($sp)
    # Line 1036
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1035
    sw	$a2,5940($zero)
.end __glce_RasterPos2fv

# Function: __glce_RasterPos2i
# Declared: Line 1041 (Source lines: 1042-1052)
# Address: 0x0da565b0 - 0x0da5662c (Size: 124 bytes, Frame: 48)
.globl __glce_RasterPos2i
.ent __glce_RasterPos2i
__glce_RasterPos2i:
    # Line 1046
    lw	$v0,5944($zero)
    # Line 1042
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1046
    sd	$v0,24($sp)
    # Line 1042
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1044
    lw	$at,4112($zero)
    # Line 1042
    addiu	$v1,$v1,-21976
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1048
    # lw $t9, -18168($gp) # &glRasterPos2i
    # Line 1044
    sd	$at,32($sp)
    # Line 1047
    lw	$at,7904($at)
    # Line 1042
    move	$s8,$a0
    # Line 1048
    jal	glRasterPos2i
    # Line 1047
    sw	$at,5944($zero)
    # Line 1050
    # lw $t9, -18168($gp) # &glRasterPos2i
    # Line 1049
    ld	$a2,32($sp)
    # Line 1050
    ld	$a1,40($sp)
    # Line 1049
    lw	$a2,11688($a2)
    # Line 1050
    move	$a0,$s8
    jal	glRasterPos2i
    # Line 1049
    sw	$a2,5944($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1052
    ld	$gp,16($sp)
    # Line 1051
    ld	$a3,24($sp)
    # Line 1052
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1051
    sw	$a3,5944($zero)
.end __glce_RasterPos2i

# Function: __glce_RasterPos2iv
# Declared: Line 1057 (Source lines: 1058-1068)
# Address: 0x0da56630 - 0x0da566a4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos2iv
.ent __glce_RasterPos2iv
__glce_RasterPos2iv:
    # Line 1062
    lw	$v0,5948($zero)
    # Line 1058
    addiu	$sp,$sp,-48
    # Line 1062
    sd	$v0,24($sp)
    # Line 1058
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1060
    lw	$at,4112($zero)
    # Line 1058
    addiu	$v1,$v1,-22104
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1064
    # lw $t9, -18164($gp) # &glRasterPos2iv
    # Line 1060
    sd	$at,32($sp)
    # Line 1063
    lw	$at,7908($at)
    # Line 1058
    move	$s8,$a0
    # Line 1064
    jal	glRasterPos2iv
    # Line 1063
    sw	$at,5948($zero)
    # Line 1066
    # lw $t9, -18164($gp) # &glRasterPos2iv
    # Line 1065
    ld	$a1,32($sp)
    lw	$a1,11692($a1)
    # Line 1066
    move	$a0,$s8
    jal	glRasterPos2iv
    # Line 1065
    sw	$a1,5948($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1068
    ld	$gp,16($sp)
    # Line 1067
    ld	$a2,24($sp)
    # Line 1068
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1067
    sw	$a2,5948($zero)
.end __glce_RasterPos2iv

# Function: __glce_RasterPos2s
# Declared: Line 1073 (Source lines: 1074-1084)
# Address: 0x0da566b0 - 0x0da5672c (Size: 124 bytes, Frame: 48)
.globl __glce_RasterPos2s
.ent __glce_RasterPos2s
__glce_RasterPos2s:
    # Line 1078
    lw	$v0,5952($zero)
    # Line 1074
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1078
    sd	$v0,24($sp)
    # Line 1074
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1076
    lw	$at,4112($zero)
    # Line 1074
    addiu	$v1,$v1,-22232
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1080
    # lw $t9, -18160($gp) # &glRasterPos2s
    # Line 1076
    sd	$at,32($sp)
    # Line 1079
    lw	$at,7912($at)
    # Line 1074
    move	$s8,$a0
    # Line 1080
    jal	glRasterPos2s
    # Line 1079
    sw	$at,5952($zero)
    # Line 1082
    # lw $t9, -18160($gp) # &glRasterPos2s
    # Line 1081
    ld	$a2,32($sp)
    # Line 1082
    ld	$a1,40($sp)
    # Line 1081
    lw	$a2,11696($a2)
    # Line 1082
    move	$a0,$s8
    jal	glRasterPos2s
    # Line 1081
    sw	$a2,5952($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1084
    ld	$gp,16($sp)
    # Line 1083
    ld	$a3,24($sp)
    # Line 1084
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1083
    sw	$a3,5952($zero)
.end __glce_RasterPos2s

# Function: __glce_RasterPos2sv
# Declared: Line 1089 (Source lines: 1090-1100)
# Address: 0x0da56730 - 0x0da567a4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos2sv
.ent __glce_RasterPos2sv
__glce_RasterPos2sv:
    # Line 1094
    lw	$v0,5956($zero)
    # Line 1090
    addiu	$sp,$sp,-48
    # Line 1094
    sd	$v0,24($sp)
    # Line 1090
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1092
    lw	$at,4112($zero)
    # Line 1090
    addiu	$v1,$v1,-22360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1096
    # lw $t9, -18156($gp) # &glRasterPos2sv
    # Line 1092
    sd	$at,32($sp)
    # Line 1095
    lw	$at,7916($at)
    # Line 1090
    move	$s8,$a0
    # Line 1096
    jal	glRasterPos2sv
    # Line 1095
    sw	$at,5956($zero)
    # Line 1098
    # lw $t9, -18156($gp) # &glRasterPos2sv
    # Line 1097
    ld	$a1,32($sp)
    lw	$a1,11700($a1)
    # Line 1098
    move	$a0,$s8
    jal	glRasterPos2sv
    # Line 1097
    sw	$a1,5956($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1100
    ld	$gp,16($sp)
    # Line 1099
    ld	$a2,24($sp)
    # Line 1100
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1099
    sw	$a2,5956($zero)
.end __glce_RasterPos2sv

# Function: __glce_RasterPos3d
# Declared: Line 1105 (Source lines: 1106-1116)
# Address: 0x0da567b0 - 0x0da56834 (Size: 132 bytes, Frame: 192)
.globl __glce_RasterPos3d
.ent __glce_RasterPos3d
__glce_RasterPos3d:
    # Line 1110
    lw	$v0,5960($zero)
    # Line 1106
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 1110
    sd	$v0,48($sp)
    # Line 1106
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 1108
    lw	$s8,4112($zero)
    # Line 1106
    addiu	$v1,$v1,-22488
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 1112
    # lw $t9, -18152($gp) # &glRasterPos3d
    # Line 1106
    sdc1	$f30,0($sp)
    # Line 1111
    lw	$at,7920($s8)
    # Line 1106
    mov.d	$f30,$f12
    # Line 1112
    jal	glRasterPos3d
    # Line 1111
    sw	$at,5960($zero)
    # Line 1114
    ldc1	$f14,8($sp)
    # lw $t9, -18152($gp) # &glRasterPos3d
    ldc1	$f13,16($sp)
    # Line 1113
    lw	$a0,11704($s8)
    # Line 1114
    mov.d	$f12,$f30
    jal	glRasterPos3d
    # Line 1113
    sw	$a0,5960($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 1116
    ld	$gp,40($sp)
    # Line 1115
    ld	$a1,48($sp)
    # Line 1116
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1115
    sw	$a1,5960($zero)
.end __glce_RasterPos3d

# Function: __glce_RasterPos3dv
# Declared: Line 1121 (Source lines: 1122-1132)
# Address: 0x0da56840 - 0x0da568b4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos3dv
.ent __glce_RasterPos3dv
__glce_RasterPos3dv:
    # Line 1126
    lw	$v0,5964($zero)
    # Line 1122
    addiu	$sp,$sp,-48
    # Line 1126
    sd	$v0,24($sp)
    # Line 1122
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1124
    lw	$at,4112($zero)
    # Line 1122
    addiu	$v1,$v1,-22632
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1128
    # lw $t9, -18148($gp) # &glRasterPos3dv
    # Line 1124
    sd	$at,32($sp)
    # Line 1127
    lw	$at,7924($at)
    # Line 1122
    move	$s8,$a0
    # Line 1128
    jal	glRasterPos3dv
    # Line 1127
    sw	$at,5964($zero)
    # Line 1130
    # lw $t9, -18148($gp) # &glRasterPos3dv
    # Line 1129
    ld	$a1,32($sp)
    lw	$a1,11708($a1)
    # Line 1130
    move	$a0,$s8
    jal	glRasterPos3dv
    # Line 1129
    sw	$a1,5964($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1132
    ld	$gp,16($sp)
    # Line 1131
    ld	$a2,24($sp)
    # Line 1132
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1131
    sw	$a2,5964($zero)
.end __glce_RasterPos3dv

# Function: __glce_RasterPos3f
# Declared: Line 1137 (Source lines: 1138-1148)
# Address: 0x0da568c0 - 0x0da56944 (Size: 132 bytes, Frame: 192)
.globl __glce_RasterPos3f
.ent __glce_RasterPos3f
__glce_RasterPos3f:
    # Line 1142
    lw	$v0,5968($zero)
    # Line 1138
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 1142
    sd	$v0,48($sp)
    # Line 1138
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 1140
    lw	$s8,4112($zero)
    # Line 1138
    addiu	$v1,$v1,-22760
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 1144
    # lw $t9, -18144($gp) # &glRasterPos3f
    # Line 1138
    sdc1	$f30,0($sp)
    # Line 1143
    lw	$at,7928($s8)
    # Line 1138
    mov.s	$f30,$f12
    # Line 1144
    jal	glRasterPos3f
    # Line 1143
    sw	$at,5968($zero)
    # Line 1146
    ldc1	$f14,8($sp)
    # lw $t9, -18144($gp) # &glRasterPos3f
    ldc1	$f13,16($sp)
    # Line 1145
    lw	$a0,11712($s8)
    # Line 1146
    mov.s	$f12,$f30
    jal	glRasterPos3f
    # Line 1145
    sw	$a0,5968($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 1148
    ld	$gp,40($sp)
    # Line 1147
    ld	$a1,48($sp)
    # Line 1148
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1147
    sw	$a1,5968($zero)
.end __glce_RasterPos3f

# Function: __glce_RasterPos3fv
# Declared: Line 1153 (Source lines: 1154-1164)
# Address: 0x0da56950 - 0x0da569c4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos3fv
.ent __glce_RasterPos3fv
__glce_RasterPos3fv:
    # Line 1158
    lw	$v0,5972($zero)
    # Line 1154
    addiu	$sp,$sp,-48
    # Line 1158
    sd	$v0,24($sp)
    # Line 1154
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1156
    lw	$at,4112($zero)
    # Line 1154
    addiu	$v1,$v1,-22904
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1160
    # lw $t9, -18140($gp) # &glRasterPos3fv
    # Line 1156
    sd	$at,32($sp)
    # Line 1159
    lw	$at,7932($at)
    # Line 1154
    move	$s8,$a0
    # Line 1160
    jal	glRasterPos3fv
    # Line 1159
    sw	$at,5972($zero)
    # Line 1162
    # lw $t9, -18140($gp) # &glRasterPos3fv
    # Line 1161
    ld	$a1,32($sp)
    lw	$a1,11716($a1)
    # Line 1162
    move	$a0,$s8
    jal	glRasterPos3fv
    # Line 1161
    sw	$a1,5972($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1164
    ld	$gp,16($sp)
    # Line 1163
    ld	$a2,24($sp)
    # Line 1164
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1163
    sw	$a2,5972($zero)
.end __glce_RasterPos3fv

# Function: __glce_RasterPos3i
# Declared: Line 1169 (Source lines: 1170-1180)
# Address: 0x0da569d0 - 0x0da56a54 (Size: 132 bytes, Frame: 192)
.globl __glce_RasterPos3i
.ent __glce_RasterPos3i
__glce_RasterPos3i:
    # Line 1174
    lw	$v0,5976($zero)
    # Line 1170
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 1174
    sd	$v0,24($sp)
    # Line 1170
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1172
    lw	$at,4112($zero)
    # Line 1170
    addiu	$v1,$v1,-23032
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1176
    # lw $t9, -18136($gp) # &glRasterPos3i
    # Line 1172
    sd	$at,32($sp)
    # Line 1175
    lw	$at,7936($at)
    # Line 1170
    move	$s8,$a0
    # Line 1176
    jal	glRasterPos3i
    # Line 1175
    sw	$at,5976($zero)
    # Line 1178
    ld	$a2,40($sp)
    # lw $t9, -18136($gp) # &glRasterPos3i
    # Line 1177
    ld	$a3,32($sp)
    # Line 1178
    ld	$a1,48($sp)
    # Line 1177
    lw	$a3,11720($a3)
    # Line 1178
    move	$a0,$s8
    jal	glRasterPos3i
    # Line 1177
    sw	$a3,5976($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1180
    ld	$gp,16($sp)
    # Line 1179
    ld	$a4,24($sp)
    # Line 1180
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1179
    sw	$a4,5976($zero)
.end __glce_RasterPos3i

# Function: __glce_RasterPos3iv
# Declared: Line 1185 (Source lines: 1186-1196)
# Address: 0x0da56a60 - 0x0da56ad4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos3iv
.ent __glce_RasterPos3iv
__glce_RasterPos3iv:
    # Line 1190
    lw	$v0,5980($zero)
    # Line 1186
    addiu	$sp,$sp,-48
    # Line 1190
    sd	$v0,24($sp)
    # Line 1186
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1188
    lw	$at,4112($zero)
    # Line 1186
    addiu	$v1,$v1,-23176
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1192
    # lw $t9, -18132($gp) # &glRasterPos3iv
    # Line 1188
    sd	$at,32($sp)
    # Line 1191
    lw	$at,7940($at)
    # Line 1186
    move	$s8,$a0
    # Line 1192
    jal	glRasterPos3iv
    # Line 1191
    sw	$at,5980($zero)
    # Line 1194
    # lw $t9, -18132($gp) # &glRasterPos3iv
    # Line 1193
    ld	$a1,32($sp)
    lw	$a1,11724($a1)
    # Line 1194
    move	$a0,$s8
    jal	glRasterPos3iv
    # Line 1193
    sw	$a1,5980($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1196
    ld	$gp,16($sp)
    # Line 1195
    ld	$a2,24($sp)
    # Line 1196
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1195
    sw	$a2,5980($zero)
.end __glce_RasterPos3iv

# Function: __glce_RasterPos3s
# Declared: Line 1201 (Source lines: 1202-1212)
# Address: 0x0da56ae0 - 0x0da56b64 (Size: 132 bytes, Frame: 192)
.globl __glce_RasterPos3s
.ent __glce_RasterPos3s
__glce_RasterPos3s:
    # Line 1206
    lw	$v0,5984($zero)
    # Line 1202
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 1206
    sd	$v0,24($sp)
    # Line 1202
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1204
    lw	$at,4112($zero)
    # Line 1202
    addiu	$v1,$v1,-23304
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1208
    # lw $t9, -18128($gp) # &glRasterPos3s
    # Line 1204
    sd	$at,32($sp)
    # Line 1207
    lw	$at,7944($at)
    # Line 1202
    move	$s8,$a0
    # Line 1208
    jal	glRasterPos3s
    # Line 1207
    sw	$at,5984($zero)
    # Line 1210
    ld	$a2,40($sp)
    # lw $t9, -18128($gp) # &glRasterPos3s
    # Line 1209
    ld	$a3,32($sp)
    # Line 1210
    ld	$a1,48($sp)
    # Line 1209
    lw	$a3,11728($a3)
    # Line 1210
    move	$a0,$s8
    jal	glRasterPos3s
    # Line 1209
    sw	$a3,5984($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1212
    ld	$gp,16($sp)
    # Line 1211
    ld	$a4,24($sp)
    # Line 1212
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1211
    sw	$a4,5984($zero)
.end __glce_RasterPos3s

# Function: __glce_RasterPos3sv
# Declared: Line 1217 (Source lines: 1218-1228)
# Address: 0x0da56b70 - 0x0da56be4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos3sv
.ent __glce_RasterPos3sv
__glce_RasterPos3sv:
    # Line 1222
    lw	$v0,5988($zero)
    # Line 1218
    addiu	$sp,$sp,-48
    # Line 1222
    sd	$v0,24($sp)
    # Line 1218
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1220
    lw	$at,4112($zero)
    # Line 1218
    addiu	$v1,$v1,-23448
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1224
    # lw $t9, -18124($gp) # &glRasterPos3sv
    # Line 1220
    sd	$at,32($sp)
    # Line 1223
    lw	$at,7948($at)
    # Line 1218
    move	$s8,$a0
    # Line 1224
    jal	glRasterPos3sv
    # Line 1223
    sw	$at,5988($zero)
    # Line 1226
    # lw $t9, -18124($gp) # &glRasterPos3sv
    # Line 1225
    ld	$a1,32($sp)
    lw	$a1,11732($a1)
    # Line 1226
    move	$a0,$s8
    jal	glRasterPos3sv
    # Line 1225
    sw	$a1,5988($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1228
    ld	$gp,16($sp)
    # Line 1227
    ld	$a2,24($sp)
    # Line 1228
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1227
    sw	$a2,5988($zero)
.end __glce_RasterPos3sv

# Function: __glce_RasterPos4d
# Declared: Line 1233 (Source lines: 1234-1244)
# Address: 0x0da56bf0 - 0x0da56c7c (Size: 140 bytes, Frame: 192)
.globl __glce_RasterPos4d
.ent __glce_RasterPos4d
__glce_RasterPos4d:
    # Line 1238
    lw	$v0,5992($zero)
    # Line 1234
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 1238
    sd	$v0,56($sp)
    # Line 1234
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 1236
    lw	$s8,4112($zero)
    # Line 1234
    addiu	$v1,$v1,-23576
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 1240
    # lw $t9, -18120($gp) # &glRasterPos4d
    # Line 1234
    sdc1	$f30,0($sp)
    # Line 1239
    lw	$at,7952($s8)
    # Line 1234
    mov.d	$f30,$f12
    # Line 1240
    jal	glRasterPos4d
    # Line 1239
    sw	$at,5992($zero)
    # Line 1242
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -18120($gp) # &glRasterPos4d
    ldc1	$f13,24($sp)
    # Line 1241
    lw	$a0,11736($s8)
    # Line 1242
    mov.d	$f12,$f30
    jal	glRasterPos4d
    # Line 1241
    sw	$a0,5992($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 1244
    ld	$gp,48($sp)
    # Line 1243
    ld	$a1,56($sp)
    # Line 1244
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1243
    sw	$a1,5992($zero)
.end __glce_RasterPos4d

# Function: __glce_RasterPos4dv
# Declared: Line 1249 (Source lines: 1250-1260)
# Address: 0x0da56c80 - 0x0da56cf4 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos4dv
.ent __glce_RasterPos4dv
__glce_RasterPos4dv:
    # Line 1254
    lw	$v0,5996($zero)
    # Line 1250
    addiu	$sp,$sp,-48
    # Line 1254
    sd	$v0,24($sp)
    # Line 1250
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1252
    lw	$at,4112($zero)
    # Line 1250
    addiu	$v1,$v1,-23720
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1256
    # lw $t9, -18116($gp) # &glRasterPos4dv
    # Line 1252
    sd	$at,32($sp)
    # Line 1255
    lw	$at,7956($at)
    # Line 1250
    move	$s8,$a0
    # Line 1256
    jal	glRasterPos4dv
    # Line 1255
    sw	$at,5996($zero)
    # Line 1258
    # lw $t9, -18116($gp) # &glRasterPos4dv
    # Line 1257
    ld	$a1,32($sp)
    lw	$a1,11740($a1)
    # Line 1258
    move	$a0,$s8
    jal	glRasterPos4dv
    # Line 1257
    sw	$a1,5996($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1260
    ld	$gp,16($sp)
    # Line 1259
    ld	$a2,24($sp)
    # Line 1260
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1259
    sw	$a2,5996($zero)
.end __glce_RasterPos4dv

# Function: __glce_RasterPos4f
# Declared: Line 1265 (Source lines: 1266-1276)
# Address: 0x0da56d00 - 0x0da56d8c (Size: 140 bytes, Frame: 192)
.globl __glce_RasterPos4f
.ent __glce_RasterPos4f
__glce_RasterPos4f:
    # Line 1270
    lw	$v0,6000($zero)
    # Line 1266
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 1270
    sd	$v0,56($sp)
    # Line 1266
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 1268
    lw	$s8,4112($zero)
    # Line 1266
    addiu	$v1,$v1,-23848
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 1272
    # lw $t9, -18112($gp) # &glRasterPos4f
    # Line 1266
    sdc1	$f30,0($sp)
    # Line 1271
    lw	$at,7960($s8)
    # Line 1266
    mov.s	$f30,$f12
    # Line 1272
    jal	glRasterPos4f
    # Line 1271
    sw	$at,6000($zero)
    # Line 1274
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -18112($gp) # &glRasterPos4f
    ldc1	$f13,24($sp)
    # Line 1273
    lw	$a0,11744($s8)
    # Line 1274
    mov.s	$f12,$f30
    jal	glRasterPos4f
    # Line 1273
    sw	$a0,6000($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 1276
    ld	$gp,48($sp)
    # Line 1275
    ld	$a1,56($sp)
    # Line 1276
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1275
    sw	$a1,6000($zero)
.end __glce_RasterPos4f

# Function: __glce_RasterPos4fv
# Declared: Line 1281 (Source lines: 1282-1292)
# Address: 0x0da56d90 - 0x0da56e04 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos4fv
.ent __glce_RasterPos4fv
__glce_RasterPos4fv:
    # Line 1286
    lw	$v0,6004($zero)
    # Line 1282
    addiu	$sp,$sp,-48
    # Line 1286
    sd	$v0,24($sp)
    # Line 1282
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1284
    lw	$at,4112($zero)
    # Line 1282
    addiu	$v1,$v1,-23992
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1288
    # lw $t9, -18108($gp) # &glRasterPos4fv
    # Line 1284
    sd	$at,32($sp)
    # Line 1287
    lw	$at,7964($at)
    # Line 1282
    move	$s8,$a0
    # Line 1288
    jal	glRasterPos4fv
    # Line 1287
    sw	$at,6004($zero)
    # Line 1290
    # lw $t9, -18108($gp) # &glRasterPos4fv
    # Line 1289
    ld	$a1,32($sp)
    lw	$a1,11748($a1)
    # Line 1290
    move	$a0,$s8
    jal	glRasterPos4fv
    # Line 1289
    sw	$a1,6004($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1292
    ld	$gp,16($sp)
    # Line 1291
    ld	$a2,24($sp)
    # Line 1292
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1291
    sw	$a2,6004($zero)
.end __glce_RasterPos4fv

# Function: __glce_RasterPos4i
# Declared: Line 1297 (Source lines: 1298-1308)
# Address: 0x0da56e10 - 0x0da56e9c (Size: 140 bytes, Frame: 192)
.globl __glce_RasterPos4i
.ent __glce_RasterPos4i
__glce_RasterPos4i:
    # Line 1302
    lw	$v0,6008($zero)
    # Line 1298
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 1302
    sd	$v0,24($sp)
    # Line 1298
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1300
    lw	$at,4112($zero)
    # Line 1298
    addiu	$v1,$v1,-24120
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1304
    # lw $t9, -18104($gp) # &glRasterPos4i
    # Line 1300
    sd	$at,32($sp)
    # Line 1303
    lw	$at,7968($at)
    # Line 1298
    move	$s8,$a0
    # Line 1304
    jal	glRasterPos4i
    # Line 1303
    sw	$at,6008($zero)
    # Line 1306
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18104($gp) # &glRasterPos4i
    # Line 1305
    ld	$a4,32($sp)
    # Line 1306
    ld	$a1,56($sp)
    # Line 1305
    lw	$a4,11752($a4)
    # Line 1306
    move	$a0,$s8
    jal	glRasterPos4i
    # Line 1305
    sw	$a4,6008($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1308
    ld	$gp,16($sp)
    # Line 1307
    ld	$a5,24($sp)
    # Line 1308
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1307
    sw	$a5,6008($zero)
.end __glce_RasterPos4i

# Function: __glce_RasterPos4iv
# Declared: Line 1313 (Source lines: 1314-1324)
# Address: 0x0da56ea0 - 0x0da56f14 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos4iv
.ent __glce_RasterPos4iv
__glce_RasterPos4iv:
    # Line 1318
    lw	$v0,6012($zero)
    # Line 1314
    addiu	$sp,$sp,-48
    # Line 1318
    sd	$v0,24($sp)
    # Line 1314
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1316
    lw	$at,4112($zero)
    # Line 1314
    addiu	$v1,$v1,-24264
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1320
    # lw $t9, -18100($gp) # &glRasterPos4iv
    # Line 1316
    sd	$at,32($sp)
    # Line 1319
    lw	$at,7972($at)
    # Line 1314
    move	$s8,$a0
    # Line 1320
    jal	glRasterPos4iv
    # Line 1319
    sw	$at,6012($zero)
    # Line 1322
    # lw $t9, -18100($gp) # &glRasterPos4iv
    # Line 1321
    ld	$a1,32($sp)
    lw	$a1,11756($a1)
    # Line 1322
    move	$a0,$s8
    jal	glRasterPos4iv
    # Line 1321
    sw	$a1,6012($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1324
    ld	$gp,16($sp)
    # Line 1323
    ld	$a2,24($sp)
    # Line 1324
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1323
    sw	$a2,6012($zero)
.end __glce_RasterPos4iv

# Function: __glce_RasterPos4s
# Declared: Line 1329 (Source lines: 1330-1340)
# Address: 0x0da56f20 - 0x0da56fac (Size: 140 bytes, Frame: 192)
.globl __glce_RasterPos4s
.ent __glce_RasterPos4s
__glce_RasterPos4s:
    # Line 1334
    lw	$v0,6016($zero)
    # Line 1330
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 1334
    sd	$v0,24($sp)
    # Line 1330
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1332
    lw	$at,4112($zero)
    # Line 1330
    addiu	$v1,$v1,-24392
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1336
    # lw $t9, -18096($gp) # &glRasterPos4s
    # Line 1332
    sd	$at,32($sp)
    # Line 1335
    lw	$at,7976($at)
    # Line 1330
    move	$s8,$a0
    # Line 1336
    jal	glRasterPos4s
    # Line 1335
    sw	$at,6016($zero)
    # Line 1338
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18096($gp) # &glRasterPos4s
    # Line 1337
    ld	$a4,32($sp)
    # Line 1338
    ld	$a1,56($sp)
    # Line 1337
    lw	$a4,11760($a4)
    # Line 1338
    move	$a0,$s8
    jal	glRasterPos4s
    # Line 1337
    sw	$a4,6016($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1340
    ld	$gp,16($sp)
    # Line 1339
    ld	$a5,24($sp)
    # Line 1340
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1339
    sw	$a5,6016($zero)
.end __glce_RasterPos4s

# Function: __glce_RasterPos4sv
# Declared: Line 1345 (Source lines: 1346-1356)
# Address: 0x0da56fb0 - 0x0da57024 (Size: 116 bytes, Frame: 48)
.globl __glce_RasterPos4sv
.ent __glce_RasterPos4sv
__glce_RasterPos4sv:
    # Line 1350
    lw	$v0,6020($zero)
    # Line 1346
    addiu	$sp,$sp,-48
    # Line 1350
    sd	$v0,24($sp)
    # Line 1346
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1348
    lw	$at,4112($zero)
    # Line 1346
    addiu	$v1,$v1,-24536
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1352
    # lw $t9, -18092($gp) # &glRasterPos4sv
    # Line 1348
    sd	$at,32($sp)
    # Line 1351
    lw	$at,7980($at)
    # Line 1346
    move	$s8,$a0
    # Line 1352
    jal	glRasterPos4sv
    # Line 1351
    sw	$at,6020($zero)
    # Line 1354
    # lw $t9, -18092($gp) # &glRasterPos4sv
    # Line 1353
    ld	$a1,32($sp)
    lw	$a1,11764($a1)
    # Line 1354
    move	$a0,$s8
    jal	glRasterPos4sv
    # Line 1353
    sw	$a1,6020($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1356
    ld	$gp,16($sp)
    # Line 1355
    ld	$a2,24($sp)
    # Line 1356
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1355
    sw	$a2,6020($zero)
.end __glce_RasterPos4sv

# Function: __glce_Rectd
# Declared: Line 1361 (Source lines: 1362-1372)
# Address: 0x0da57030 - 0x0da570bc (Size: 140 bytes, Frame: 192)
.globl __glce_Rectd
.ent __glce_Rectd
__glce_Rectd:
    # Line 1366
    lw	$v0,6024($zero)
    # Line 1362
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 1366
    sd	$v0,56($sp)
    # Line 1362
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 1364
    lw	$s8,4112($zero)
    # Line 1362
    addiu	$v1,$v1,-24664
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 1368
    # lw $t9, -18088($gp) # &glRectd
    # Line 1362
    sdc1	$f30,0($sp)
    # Line 1367
    lw	$at,7984($s8)
    # Line 1362
    mov.d	$f30,$f12
    # Line 1368
    jal	glRectd
    # Line 1367
    sw	$at,6024($zero)
    # Line 1370
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -18088($gp) # &glRectd
    ldc1	$f13,24($sp)
    # Line 1369
    lw	$a0,11768($s8)
    # Line 1370
    mov.d	$f12,$f30
    jal	glRectd
    # Line 1369
    sw	$a0,6024($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 1372
    ld	$gp,48($sp)
    # Line 1371
    ld	$a1,56($sp)
    # Line 1372
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1371
    sw	$a1,6024($zero)
.end __glce_Rectd

# Function: __glce_Rectdv
# Declared: Line 1377 (Source lines: 1378-1388)
# Address: 0x0da570c0 - 0x0da5713c (Size: 124 bytes, Frame: 48)
.globl __glce_Rectdv
.ent __glce_Rectdv
__glce_Rectdv:
    # Line 1382
    lw	$v0,6028($zero)
    # Line 1378
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1382
    sd	$v0,24($sp)
    # Line 1378
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1380
    lw	$at,4112($zero)
    # Line 1378
    addiu	$v1,$v1,-24808
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1384
    # lw $t9, -18084($gp) # &glRectdv
    # Line 1380
    sd	$at,32($sp)
    # Line 1383
    lw	$at,7988($at)
    # Line 1378
    move	$s8,$a0
    # Line 1384
    jal	glRectdv
    # Line 1383
    sw	$at,6028($zero)
    # Line 1386
    # lw $t9, -18084($gp) # &glRectdv
    # Line 1385
    ld	$a2,32($sp)
    # Line 1386
    ld	$a1,40($sp)
    # Line 1385
    lw	$a2,11772($a2)
    # Line 1386
    move	$a0,$s8
    jal	glRectdv
    # Line 1385
    sw	$a2,6028($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1388
    ld	$gp,16($sp)
    # Line 1387
    ld	$a3,24($sp)
    # Line 1388
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1387
    sw	$a3,6028($zero)
.end __glce_Rectdv

# Function: __glce_Rectf
# Declared: Line 1393 (Source lines: 1394-1404)
# Address: 0x0da57140 - 0x0da571cc (Size: 140 bytes, Frame: 192)
.globl __glce_Rectf
.ent __glce_Rectf
__glce_Rectf:
    # Line 1398
    lw	$v0,6032($zero)
    # Line 1394
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 1398
    sd	$v0,56($sp)
    # Line 1394
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 1396
    lw	$s8,4112($zero)
    # Line 1394
    addiu	$v1,$v1,-24936
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 1400
    # lw $t9, -18080($gp) # &glRectf
    # Line 1394
    sdc1	$f30,0($sp)
    # Line 1399
    lw	$at,7992($s8)
    # Line 1394
    mov.s	$f30,$f12
    # Line 1400
    jal	glRectf
    # Line 1399
    sw	$at,6032($zero)
    # Line 1402
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -18080($gp) # &glRectf
    ldc1	$f13,24($sp)
    # Line 1401
    lw	$a0,11776($s8)
    # Line 1402
    mov.s	$f12,$f30
    jal	glRectf
    # Line 1401
    sw	$a0,6032($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 1404
    ld	$gp,48($sp)
    # Line 1403
    ld	$a1,56($sp)
    # Line 1404
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1403
    sw	$a1,6032($zero)
.end __glce_Rectf

# Function: __glce_Rectfv
# Declared: Line 1409 (Source lines: 1410-1420)
# Address: 0x0da571d0 - 0x0da5724c (Size: 124 bytes, Frame: 48)
.globl __glce_Rectfv
.ent __glce_Rectfv
__glce_Rectfv:
    # Line 1414
    lw	$v0,6036($zero)
    # Line 1410
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1414
    sd	$v0,24($sp)
    # Line 1410
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1412
    lw	$at,4112($zero)
    # Line 1410
    addiu	$v1,$v1,-25080
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1416
    # lw $t9, -18076($gp) # &glRectfv
    # Line 1412
    sd	$at,32($sp)
    # Line 1415
    lw	$at,7996($at)
    # Line 1410
    move	$s8,$a0
    # Line 1416
    jal	glRectfv
    # Line 1415
    sw	$at,6036($zero)
    # Line 1418
    # lw $t9, -18076($gp) # &glRectfv
    # Line 1417
    ld	$a2,32($sp)
    # Line 1418
    ld	$a1,40($sp)
    # Line 1417
    lw	$a2,11780($a2)
    # Line 1418
    move	$a0,$s8
    jal	glRectfv
    # Line 1417
    sw	$a2,6036($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1420
    ld	$gp,16($sp)
    # Line 1419
    ld	$a3,24($sp)
    # Line 1420
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1419
    sw	$a3,6036($zero)
.end __glce_Rectfv

# Function: __glce_Recti
# Declared: Line 1425 (Source lines: 1426-1436)
# Address: 0x0da57250 - 0x0da572dc (Size: 140 bytes, Frame: 192)
.globl __glce_Recti
.ent __glce_Recti
__glce_Recti:
    # Line 1430
    lw	$v0,6040($zero)
    # Line 1426
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 1430
    sd	$v0,24($sp)
    # Line 1426
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1428
    lw	$at,4112($zero)
    # Line 1426
    addiu	$v1,$v1,-25208
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1432
    # lw $t9, -18072($gp) # &glRecti
    # Line 1428
    sd	$at,32($sp)
    # Line 1431
    lw	$at,8000($at)
    # Line 1426
    move	$s8,$a0
    # Line 1432
    jal	glRecti
    # Line 1431
    sw	$at,6040($zero)
    # Line 1434
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18072($gp) # &glRecti
    # Line 1433
    ld	$a4,32($sp)
    # Line 1434
    ld	$a1,56($sp)
    # Line 1433
    lw	$a4,11784($a4)
    # Line 1434
    move	$a0,$s8
    jal	glRecti
    # Line 1433
    sw	$a4,6040($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1436
    ld	$gp,16($sp)
    # Line 1435
    ld	$a5,24($sp)
    # Line 1436
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1435
    sw	$a5,6040($zero)
.end __glce_Recti

# Function: __glce_Rectiv
# Declared: Line 1441 (Source lines: 1442-1452)
# Address: 0x0da572e0 - 0x0da5735c (Size: 124 bytes, Frame: 48)
.globl __glce_Rectiv
.ent __glce_Rectiv
__glce_Rectiv:
    # Line 1446
    lw	$v0,6044($zero)
    # Line 1442
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1446
    sd	$v0,24($sp)
    # Line 1442
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1444
    lw	$at,4112($zero)
    # Line 1442
    addiu	$v1,$v1,-25352
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1448
    # lw $t9, -18068($gp) # &glRectiv
    # Line 1444
    sd	$at,32($sp)
    # Line 1447
    lw	$at,8004($at)
    # Line 1442
    move	$s8,$a0
    # Line 1448
    jal	glRectiv
    # Line 1447
    sw	$at,6044($zero)
    # Line 1450
    # lw $t9, -18068($gp) # &glRectiv
    # Line 1449
    ld	$a2,32($sp)
    # Line 1450
    ld	$a1,40($sp)
    # Line 1449
    lw	$a2,11788($a2)
    # Line 1450
    move	$a0,$s8
    jal	glRectiv
    # Line 1449
    sw	$a2,6044($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1452
    ld	$gp,16($sp)
    # Line 1451
    ld	$a3,24($sp)
    # Line 1452
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1451
    sw	$a3,6044($zero)
.end __glce_Rectiv

# Function: __glce_Rects
# Declared: Line 1457 (Source lines: 1458-1468)
# Address: 0x0da57360 - 0x0da573ec (Size: 140 bytes, Frame: 192)
.globl __glce_Rects
.ent __glce_Rects
__glce_Rects:
    # Line 1462
    lw	$v0,6048($zero)
    # Line 1458
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 1462
    sd	$v0,24($sp)
    # Line 1458
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1460
    lw	$at,4112($zero)
    # Line 1458
    addiu	$v1,$v1,-25480
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1464
    # lw $t9, -18064($gp) # &glRects
    # Line 1460
    sd	$at,32($sp)
    # Line 1463
    lw	$at,8008($at)
    # Line 1458
    move	$s8,$a0
    # Line 1464
    jal	glRects
    # Line 1463
    sw	$at,6048($zero)
    # Line 1466
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -18064($gp) # &glRects
    # Line 1465
    ld	$a4,32($sp)
    # Line 1466
    ld	$a1,56($sp)
    # Line 1465
    lw	$a4,11792($a4)
    # Line 1466
    move	$a0,$s8
    jal	glRects
    # Line 1465
    sw	$a4,6048($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1468
    ld	$gp,16($sp)
    # Line 1467
    ld	$a5,24($sp)
    # Line 1468
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1467
    sw	$a5,6048($zero)
.end __glce_Rects

# Function: __glce_Rectsv
# Declared: Line 1473 (Source lines: 1474-1484)
# Address: 0x0da573f0 - 0x0da5746c (Size: 124 bytes, Frame: 48)
.globl __glce_Rectsv
.ent __glce_Rectsv
__glce_Rectsv:
    # Line 1478
    lw	$v0,6052($zero)
    # Line 1474
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1478
    sd	$v0,24($sp)
    # Line 1474
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1476
    lw	$at,4112($zero)
    # Line 1474
    addiu	$v1,$v1,-25624
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1480
    # lw $t9, -18060($gp) # &glRectsv
    # Line 1476
    sd	$at,32($sp)
    # Line 1479
    lw	$at,8012($at)
    # Line 1474
    move	$s8,$a0
    # Line 1480
    jal	glRectsv
    # Line 1479
    sw	$at,6052($zero)
    # Line 1482
    # lw $t9, -18060($gp) # &glRectsv
    # Line 1481
    ld	$a2,32($sp)
    # Line 1482
    ld	$a1,40($sp)
    # Line 1481
    lw	$a2,11796($a2)
    # Line 1482
    move	$a0,$s8
    jal	glRectsv
    # Line 1481
    sw	$a2,6052($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1484
    ld	$gp,16($sp)
    # Line 1483
    ld	$a3,24($sp)
    # Line 1484
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1483
    sw	$a3,6052($zero)
.end __glce_Rectsv

# Function: __glce_TexCoord1d
# Declared: Line 1489 (Source lines: 1490-1500)
# Address: 0x0da57470 - 0x0da574e4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1d
.ent __glce_TexCoord1d
__glce_TexCoord1d:
    # Line 1494
    lw	$v0,5800($zero)
    # Line 1490
    addiu	$sp,$sp,-48
    # Line 1494
    sd	$v0,32($sp)
    # Line 1490
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x4
    # Line 1492
    lw	$s8,4112($zero)
    # Line 1490
    addiu	$v1,$v1,-25752
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 1496
    # lw $t9, -18056($gp) # &glTexCoord1d
    # Line 1490
    sdc1	$f30,0($sp)
    # Line 1495
    lw	$at,7760($s8)
    # Line 1490
    mov.d	$f30,$f12
    # Line 1496
    jal	glTexCoord1d
    # Line 1495
    sw	$at,5800($zero)
    # Line 1498
    # lw $t9, -18056($gp) # &glTexCoord1d
    # Line 1497
    lw	$a0,11544($s8)
    # Line 1498
    mov.d	$f12,$f30
    jal	glTexCoord1d
    # Line 1497
    sw	$a0,5800($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 1500
    ld	$gp,24($sp)
    # Line 1499
    ld	$a1,32($sp)
    # Line 1500
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1499
    sw	$a1,5800($zero)
.end __glce_TexCoord1d

# Function: __glce_TexCoord1dv
# Declared: Line 1505 (Source lines: 1506-1516)
# Address: 0x0da574f0 - 0x0da57564 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1dv
.ent __glce_TexCoord1dv
__glce_TexCoord1dv:
    # Line 1510
    lw	$v0,5804($zero)
    # Line 1506
    addiu	$sp,$sp,-48
    # Line 1510
    sd	$v0,24($sp)
    # Line 1506
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1508
    lw	$at,4112($zero)
    # Line 1506
    addiu	$v1,$v1,-25880
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1512
    # lw $t9, -18052($gp) # &glTexCoord1dv
    # Line 1508
    sd	$at,32($sp)
    # Line 1511
    lw	$at,7764($at)
    # Line 1506
    move	$s8,$a0
    # Line 1512
    jal	glTexCoord1dv
    # Line 1511
    sw	$at,5804($zero)
    # Line 1514
    # lw $t9, -18052($gp) # &glTexCoord1dv
    # Line 1513
    ld	$a1,32($sp)
    lw	$a1,11548($a1)
    # Line 1514
    move	$a0,$s8
    jal	glTexCoord1dv
    # Line 1513
    sw	$a1,5804($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1516
    ld	$gp,16($sp)
    # Line 1515
    ld	$a2,24($sp)
    # Line 1516
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1515
    sw	$a2,5804($zero)
.end __glce_TexCoord1dv

# Function: __glce_TexCoord1f
# Declared: Line 1521 (Source lines: 1522-1532)
# Address: 0x0da57570 - 0x0da575e4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1f
.ent __glce_TexCoord1f
__glce_TexCoord1f:
    # Line 1526
    lw	$v0,5808($zero)
    # Line 1522
    addiu	$sp,$sp,-48
    # Line 1526
    sd	$v0,32($sp)
    # Line 1522
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x4
    # Line 1524
    lw	$s8,4112($zero)
    # Line 1522
    addiu	$v1,$v1,-26008
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 1528
    # lw $t9, -18048($gp) # &glTexCoord1f
    # Line 1522
    sdc1	$f30,0($sp)
    # Line 1527
    lw	$at,7768($s8)
    # Line 1522
    mov.s	$f30,$f12
    # Line 1528
    jal	glTexCoord1f
    # Line 1527
    sw	$at,5808($zero)
    # Line 1530
    # lw $t9, -18048($gp) # &glTexCoord1f
    # Line 1529
    lw	$a0,11552($s8)
    # Line 1530
    mov.s	$f12,$f30
    jal	glTexCoord1f
    # Line 1529
    sw	$a0,5808($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 1532
    ld	$gp,24($sp)
    # Line 1531
    ld	$a1,32($sp)
    # Line 1532
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1531
    sw	$a1,5808($zero)
.end __glce_TexCoord1f

# Function: __glce_TexCoord1fv
# Declared: Line 1537 (Source lines: 1538-1548)
# Address: 0x0da575f0 - 0x0da57664 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1fv
.ent __glce_TexCoord1fv
__glce_TexCoord1fv:
    # Line 1542
    lw	$v0,5812($zero)
    # Line 1538
    addiu	$sp,$sp,-48
    # Line 1542
    sd	$v0,24($sp)
    # Line 1538
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1540
    lw	$at,4112($zero)
    # Line 1538
    addiu	$v1,$v1,-26136
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1544
    # lw $t9, -18044($gp) # &glTexCoord1fv
    # Line 1540
    sd	$at,32($sp)
    # Line 1543
    lw	$at,7772($at)
    # Line 1538
    move	$s8,$a0
    # Line 1544
    jal	glTexCoord1fv
    # Line 1543
    sw	$at,5812($zero)
    # Line 1546
    # lw $t9, -18044($gp) # &glTexCoord1fv
    # Line 1545
    ld	$a1,32($sp)
    lw	$a1,11556($a1)
    # Line 1546
    move	$a0,$s8
    jal	glTexCoord1fv
    # Line 1545
    sw	$a1,5812($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1548
    ld	$gp,16($sp)
    # Line 1547
    ld	$a2,24($sp)
    # Line 1548
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1547
    sw	$a2,5812($zero)
.end __glce_TexCoord1fv

# Function: __glce_TexCoord1i
# Declared: Line 1553 (Source lines: 1554-1564)
# Address: 0x0da57670 - 0x0da576e4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1i
.ent __glce_TexCoord1i
__glce_TexCoord1i:
    # Line 1558
    lw	$v0,5816($zero)
    # Line 1554
    addiu	$sp,$sp,-48
    # Line 1558
    sd	$v0,24($sp)
    # Line 1554
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1556
    lw	$at,4112($zero)
    # Line 1554
    addiu	$v1,$v1,-26264
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1560
    # lw $t9, -18040($gp) # &glTexCoord1i
    # Line 1556
    sd	$at,32($sp)
    # Line 1559
    lw	$at,7776($at)
    # Line 1554
    move	$s8,$a0
    # Line 1560
    jal	glTexCoord1i
    # Line 1559
    sw	$at,5816($zero)
    # Line 1562
    # lw $t9, -18040($gp) # &glTexCoord1i
    # Line 1561
    ld	$a1,32($sp)
    lw	$a1,11560($a1)
    # Line 1562
    move	$a0,$s8
    jal	glTexCoord1i
    # Line 1561
    sw	$a1,5816($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1564
    ld	$gp,16($sp)
    # Line 1563
    ld	$a2,24($sp)
    # Line 1564
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1563
    sw	$a2,5816($zero)
.end __glce_TexCoord1i

# Function: __glce_TexCoord1iv
# Declared: Line 1569 (Source lines: 1570-1580)
# Address: 0x0da576f0 - 0x0da57764 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1iv
.ent __glce_TexCoord1iv
__glce_TexCoord1iv:
    # Line 1574
    lw	$v0,5820($zero)
    # Line 1570
    addiu	$sp,$sp,-48
    # Line 1574
    sd	$v0,24($sp)
    # Line 1570
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1572
    lw	$at,4112($zero)
    # Line 1570
    addiu	$v1,$v1,-26392
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1576
    # lw $t9, -18036($gp) # &glTexCoord1iv
    # Line 1572
    sd	$at,32($sp)
    # Line 1575
    lw	$at,7780($at)
    # Line 1570
    move	$s8,$a0
    # Line 1576
    jal	glTexCoord1iv
    # Line 1575
    sw	$at,5820($zero)
    # Line 1578
    # lw $t9, -18036($gp) # &glTexCoord1iv
    # Line 1577
    ld	$a1,32($sp)
    lw	$a1,11564($a1)
    # Line 1578
    move	$a0,$s8
    jal	glTexCoord1iv
    # Line 1577
    sw	$a1,5820($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1580
    ld	$gp,16($sp)
    # Line 1579
    ld	$a2,24($sp)
    # Line 1580
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1579
    sw	$a2,5820($zero)
.end __glce_TexCoord1iv

# Function: __glce_TexCoord1s
# Declared: Line 1585 (Source lines: 1586-1596)
# Address: 0x0da57770 - 0x0da577e4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1s
.ent __glce_TexCoord1s
__glce_TexCoord1s:
    # Line 1590
    lw	$v0,5824($zero)
    # Line 1586
    addiu	$sp,$sp,-48
    # Line 1590
    sd	$v0,24($sp)
    # Line 1586
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1588
    lw	$at,4112($zero)
    # Line 1586
    addiu	$v1,$v1,-26520
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1592
    # lw $t9, -18032($gp) # &glTexCoord1s
    # Line 1588
    sd	$at,32($sp)
    # Line 1591
    lw	$at,7784($at)
    # Line 1586
    move	$s8,$a0
    # Line 1592
    jal	glTexCoord1s
    # Line 1591
    sw	$at,5824($zero)
    # Line 1594
    # lw $t9, -18032($gp) # &glTexCoord1s
    # Line 1593
    ld	$a1,32($sp)
    lw	$a1,11568($a1)
    # Line 1594
    move	$a0,$s8
    jal	glTexCoord1s
    # Line 1593
    sw	$a1,5824($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1596
    ld	$gp,16($sp)
    # Line 1595
    ld	$a2,24($sp)
    # Line 1596
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1595
    sw	$a2,5824($zero)
.end __glce_TexCoord1s

# Function: __glce_TexCoord1sv
# Declared: Line 1601 (Source lines: 1602-1612)
# Address: 0x0da577f0 - 0x0da57864 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord1sv
.ent __glce_TexCoord1sv
__glce_TexCoord1sv:
    # Line 1606
    lw	$v0,5828($zero)
    # Line 1602
    addiu	$sp,$sp,-48
    # Line 1606
    sd	$v0,24($sp)
    # Line 1602
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1604
    lw	$at,4112($zero)
    # Line 1602
    addiu	$v1,$v1,-26648
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1608
    # lw $t9, -18028($gp) # &glTexCoord1sv
    # Line 1604
    sd	$at,32($sp)
    # Line 1607
    lw	$at,7788($at)
    # Line 1602
    move	$s8,$a0
    # Line 1608
    jal	glTexCoord1sv
    # Line 1607
    sw	$at,5828($zero)
    # Line 1610
    # lw $t9, -18028($gp) # &glTexCoord1sv
    # Line 1609
    ld	$a1,32($sp)
    lw	$a1,11572($a1)
    # Line 1610
    move	$a0,$s8
    jal	glTexCoord1sv
    # Line 1609
    sw	$a1,5828($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1612
    ld	$gp,16($sp)
    # Line 1611
    ld	$a2,24($sp)
    # Line 1612
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1611
    sw	$a2,5828($zero)
.end __glce_TexCoord1sv

# Function: __glce_TexCoord2d
# Declared: Line 1617 (Source lines: 1618-1628)
# Address: 0x0da57870 - 0x0da578ec (Size: 124 bytes, Frame: 48)
.globl __glce_TexCoord2d
.ent __glce_TexCoord2d
__glce_TexCoord2d:
    # Line 1622
    lw	$v0,5832($zero)
    # Line 1618
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 1622
    sd	$v0,40($sp)
    # Line 1618
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x4
    # Line 1620
    lw	$s8,4112($zero)
    # Line 1618
    addiu	$v1,$v1,-26776
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 1624
    # lw $t9, -18024($gp) # &glTexCoord2d
    # Line 1618
    sdc1	$f30,0($sp)
    # Line 1623
    lw	$at,7792($s8)
    # Line 1618
    mov.d	$f30,$f12
    # Line 1624
    jal	glTexCoord2d
    # Line 1623
    sw	$at,5832($zero)
    # Line 1626
    # lw $t9, -18024($gp) # &glTexCoord2d
    ldc1	$f13,8($sp)
    # Line 1625
    lw	$a0,11576($s8)
    # Line 1626
    mov.d	$f12,$f30
    jal	glTexCoord2d
    # Line 1625
    sw	$a0,5832($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 1628
    ld	$gp,32($sp)
    # Line 1627
    ld	$a1,40($sp)
    # Line 1628
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1627
    sw	$a1,5832($zero)
.end __glce_TexCoord2d

# Function: __glce_TexCoord2dv
# Declared: Line 1633 (Source lines: 1634-1644)
# Address: 0x0da578f0 - 0x0da57964 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord2dv
.ent __glce_TexCoord2dv
__glce_TexCoord2dv:
    # Line 1638
    lw	$v0,5836($zero)
    # Line 1634
    addiu	$sp,$sp,-48
    # Line 1638
    sd	$v0,24($sp)
    # Line 1634
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1636
    lw	$at,4112($zero)
    # Line 1634
    addiu	$v1,$v1,-26904
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1640
    # lw $t9, -18020($gp) # &glTexCoord2dv
    # Line 1636
    sd	$at,32($sp)
    # Line 1639
    lw	$at,7796($at)
    # Line 1634
    move	$s8,$a0
    # Line 1640
    jal	glTexCoord2dv
    # Line 1639
    sw	$at,5836($zero)
    # Line 1642
    # lw $t9, -18020($gp) # &glTexCoord2dv
    # Line 1641
    ld	$a1,32($sp)
    lw	$a1,11580($a1)
    # Line 1642
    move	$a0,$s8
    jal	glTexCoord2dv
    # Line 1641
    sw	$a1,5836($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1644
    ld	$gp,16($sp)
    # Line 1643
    ld	$a2,24($sp)
    # Line 1644
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1643
    sw	$a2,5836($zero)
.end __glce_TexCoord2dv

# Function: __glce_TexCoord2f
# Declared: Line 1649 (Source lines: 1650-1660)
# Address: 0x0da57970 - 0x0da579ec (Size: 124 bytes, Frame: 48)
.globl __glce_TexCoord2f
.ent __glce_TexCoord2f
__glce_TexCoord2f:
    # Line 1654
    lw	$v0,5840($zero)
    # Line 1650
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 1654
    sd	$v0,40($sp)
    # Line 1650
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x4
    # Line 1652
    lw	$s8,4112($zero)
    # Line 1650
    addiu	$v1,$v1,-27032
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 1656
    # lw $t9, -18016($gp) # &glTexCoord2f
    # Line 1650
    sdc1	$f30,0($sp)
    # Line 1655
    lw	$at,7800($s8)
    # Line 1650
    mov.s	$f30,$f12
    # Line 1656
    jal	glTexCoord2f
    # Line 1655
    sw	$at,5840($zero)
    # Line 1658
    # lw $t9, -18016($gp) # &glTexCoord2f
    ldc1	$f13,8($sp)
    # Line 1657
    lw	$a0,11584($s8)
    # Line 1658
    mov.s	$f12,$f30
    jal	glTexCoord2f
    # Line 1657
    sw	$a0,5840($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 1660
    ld	$gp,32($sp)
    # Line 1659
    ld	$a1,40($sp)
    # Line 1660
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1659
    sw	$a1,5840($zero)
.end __glce_TexCoord2f

# Function: __glce_TexCoord2fv
# Declared: Line 1665 (Source lines: 1666-1676)
# Address: 0x0da579f0 - 0x0da57a64 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord2fv
.ent __glce_TexCoord2fv
__glce_TexCoord2fv:
    # Line 1670
    lw	$v0,5844($zero)
    # Line 1666
    addiu	$sp,$sp,-48
    # Line 1670
    sd	$v0,24($sp)
    # Line 1666
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1668
    lw	$at,4112($zero)
    # Line 1666
    addiu	$v1,$v1,-27160
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1672
    # lw $t9, -18012($gp) # &glTexCoord2fv
    # Line 1668
    sd	$at,32($sp)
    # Line 1671
    lw	$at,7804($at)
    # Line 1666
    move	$s8,$a0
    # Line 1672
    jal	glTexCoord2fv
    # Line 1671
    sw	$at,5844($zero)
    # Line 1674
    # lw $t9, -18012($gp) # &glTexCoord2fv
    # Line 1673
    ld	$a1,32($sp)
    lw	$a1,11588($a1)
    # Line 1674
    move	$a0,$s8
    jal	glTexCoord2fv
    # Line 1673
    sw	$a1,5844($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1676
    ld	$gp,16($sp)
    # Line 1675
    ld	$a2,24($sp)
    # Line 1676
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1675
    sw	$a2,5844($zero)
.end __glce_TexCoord2fv

# Function: __glce_TexCoord2i
# Declared: Line 1681 (Source lines: 1682-1692)
# Address: 0x0da57a70 - 0x0da57aec (Size: 124 bytes, Frame: 48)
.globl __glce_TexCoord2i
.ent __glce_TexCoord2i
__glce_TexCoord2i:
    # Line 1686
    lw	$v0,5848($zero)
    # Line 1682
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1686
    sd	$v0,24($sp)
    # Line 1682
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1684
    lw	$at,4112($zero)
    # Line 1682
    addiu	$v1,$v1,-27288
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1688
    # lw $t9, -18008($gp) # &glTexCoord2i
    # Line 1684
    sd	$at,32($sp)
    # Line 1687
    lw	$at,7808($at)
    # Line 1682
    move	$s8,$a0
    # Line 1688
    jal	glTexCoord2i
    # Line 1687
    sw	$at,5848($zero)
    # Line 1690
    # lw $t9, -18008($gp) # &glTexCoord2i
    # Line 1689
    ld	$a2,32($sp)
    # Line 1690
    ld	$a1,40($sp)
    # Line 1689
    lw	$a2,11592($a2)
    # Line 1690
    move	$a0,$s8
    jal	glTexCoord2i
    # Line 1689
    sw	$a2,5848($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1692
    ld	$gp,16($sp)
    # Line 1691
    ld	$a3,24($sp)
    # Line 1692
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1691
    sw	$a3,5848($zero)
.end __glce_TexCoord2i

# Function: __glce_TexCoord2iv
# Declared: Line 1697 (Source lines: 1698-1708)
# Address: 0x0da57af0 - 0x0da57b64 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord2iv
.ent __glce_TexCoord2iv
__glce_TexCoord2iv:
    # Line 1702
    lw	$v0,5852($zero)
    # Line 1698
    addiu	$sp,$sp,-48
    # Line 1702
    sd	$v0,24($sp)
    # Line 1698
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1700
    lw	$at,4112($zero)
    # Line 1698
    addiu	$v1,$v1,-27416
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1704
    # lw $t9, -18004($gp) # &glTexCoord2iv
    # Line 1700
    sd	$at,32($sp)
    # Line 1703
    lw	$at,7812($at)
    # Line 1698
    move	$s8,$a0
    # Line 1704
    jal	glTexCoord2iv
    # Line 1703
    sw	$at,5852($zero)
    # Line 1706
    # lw $t9, -18004($gp) # &glTexCoord2iv
    # Line 1705
    ld	$a1,32($sp)
    lw	$a1,11596($a1)
    # Line 1706
    move	$a0,$s8
    jal	glTexCoord2iv
    # Line 1705
    sw	$a1,5852($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1708
    ld	$gp,16($sp)
    # Line 1707
    ld	$a2,24($sp)
    # Line 1708
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1707
    sw	$a2,5852($zero)
.end __glce_TexCoord2iv

# Function: __glce_TexCoord2s
# Declared: Line 1713 (Source lines: 1714-1724)
# Address: 0x0da57b70 - 0x0da57bec (Size: 124 bytes, Frame: 48)
.globl __glce_TexCoord2s
.ent __glce_TexCoord2s
__glce_TexCoord2s:
    # Line 1718
    lw	$v0,5856($zero)
    # Line 1714
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 1718
    sd	$v0,24($sp)
    # Line 1714
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1716
    lw	$at,4112($zero)
    # Line 1714
    addiu	$v1,$v1,-27544
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1720
    # lw $t9, -18000($gp) # &glTexCoord2s
    # Line 1716
    sd	$at,32($sp)
    # Line 1719
    lw	$at,7816($at)
    # Line 1714
    move	$s8,$a0
    # Line 1720
    jal	glTexCoord2s
    # Line 1719
    sw	$at,5856($zero)
    # Line 1722
    # lw $t9, -18000($gp) # &glTexCoord2s
    # Line 1721
    ld	$a2,32($sp)
    # Line 1722
    ld	$a1,40($sp)
    # Line 1721
    lw	$a2,11600($a2)
    # Line 1722
    move	$a0,$s8
    jal	glTexCoord2s
    # Line 1721
    sw	$a2,5856($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1724
    ld	$gp,16($sp)
    # Line 1723
    ld	$a3,24($sp)
    # Line 1724
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1723
    sw	$a3,5856($zero)
.end __glce_TexCoord2s

# Function: __glce_TexCoord2sv
# Declared: Line 1729 (Source lines: 1730-1740)
# Address: 0x0da57bf0 - 0x0da57c64 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord2sv
.ent __glce_TexCoord2sv
__glce_TexCoord2sv:
    # Line 1734
    lw	$v0,5860($zero)
    # Line 1730
    addiu	$sp,$sp,-48
    # Line 1734
    sd	$v0,24($sp)
    # Line 1730
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1732
    lw	$at,4112($zero)
    # Line 1730
    addiu	$v1,$v1,-27672
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1736
    # lw $t9, -17996($gp) # &glTexCoord2sv
    # Line 1732
    sd	$at,32($sp)
    # Line 1735
    lw	$at,7820($at)
    # Line 1730
    move	$s8,$a0
    # Line 1736
    jal	glTexCoord2sv
    # Line 1735
    sw	$at,5860($zero)
    # Line 1738
    # lw $t9, -17996($gp) # &glTexCoord2sv
    # Line 1737
    ld	$a1,32($sp)
    lw	$a1,11604($a1)
    # Line 1738
    move	$a0,$s8
    jal	glTexCoord2sv
    # Line 1737
    sw	$a1,5860($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1740
    ld	$gp,16($sp)
    # Line 1739
    ld	$a2,24($sp)
    # Line 1740
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1739
    sw	$a2,5860($zero)
.end __glce_TexCoord2sv

# Function: __glce_TexCoord3d
# Declared: Line 1745 (Source lines: 1746-1756)
# Address: 0x0da57c70 - 0x0da57cf4 (Size: 132 bytes, Frame: 192)
.globl __glce_TexCoord3d
.ent __glce_TexCoord3d
__glce_TexCoord3d:
    # Line 1750
    lw	$v0,5864($zero)
    # Line 1746
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 1750
    sd	$v0,48($sp)
    # Line 1746
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 1748
    lw	$s8,4112($zero)
    # Line 1746
    addiu	$v1,$v1,-27800
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 1752
    # lw $t9, -17992($gp) # &glTexCoord3d
    # Line 1746
    sdc1	$f30,0($sp)
    # Line 1751
    lw	$at,7824($s8)
    # Line 1746
    mov.d	$f30,$f12
    # Line 1752
    jal	glTexCoord3d
    # Line 1751
    sw	$at,5864($zero)
    # Line 1754
    ldc1	$f14,8($sp)
    # lw $t9, -17992($gp) # &glTexCoord3d
    ldc1	$f13,16($sp)
    # Line 1753
    lw	$a0,11608($s8)
    # Line 1754
    mov.d	$f12,$f30
    jal	glTexCoord3d
    # Line 1753
    sw	$a0,5864($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 1756
    ld	$gp,40($sp)
    # Line 1755
    ld	$a1,48($sp)
    # Line 1756
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1755
    sw	$a1,5864($zero)
.end __glce_TexCoord3d

# Function: __glce_TexCoord3dv
# Declared: Line 1761 (Source lines: 1762-1772)
# Address: 0x0da57d00 - 0x0da57d74 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord3dv
.ent __glce_TexCoord3dv
__glce_TexCoord3dv:
    # Line 1766
    lw	$v0,5868($zero)
    # Line 1762
    addiu	$sp,$sp,-48
    # Line 1766
    sd	$v0,24($sp)
    # Line 1762
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1764
    lw	$at,4112($zero)
    # Line 1762
    addiu	$v1,$v1,-27944
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1768
    # lw $t9, -17988($gp) # &glTexCoord3dv
    # Line 1764
    sd	$at,32($sp)
    # Line 1767
    lw	$at,7828($at)
    # Line 1762
    move	$s8,$a0
    # Line 1768
    jal	glTexCoord3dv
    # Line 1767
    sw	$at,5868($zero)
    # Line 1770
    # lw $t9, -17988($gp) # &glTexCoord3dv
    # Line 1769
    ld	$a1,32($sp)
    lw	$a1,11612($a1)
    # Line 1770
    move	$a0,$s8
    jal	glTexCoord3dv
    # Line 1769
    sw	$a1,5868($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1772
    ld	$gp,16($sp)
    # Line 1771
    ld	$a2,24($sp)
    # Line 1772
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1771
    sw	$a2,5868($zero)
.end __glce_TexCoord3dv

# Function: __glce_TexCoord3f
# Declared: Line 1777 (Source lines: 1778-1788)
# Address: 0x0da57d80 - 0x0da57e04 (Size: 132 bytes, Frame: 192)
.globl __glce_TexCoord3f
.ent __glce_TexCoord3f
__glce_TexCoord3f:
    # Line 1782
    lw	$v0,5872($zero)
    # Line 1778
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 1782
    sd	$v0,48($sp)
    # Line 1778
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 1780
    lw	$s8,4112($zero)
    # Line 1778
    addiu	$v1,$v1,-28072
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 1784
    # lw $t9, -17984($gp) # &glTexCoord3f
    # Line 1778
    sdc1	$f30,0($sp)
    # Line 1783
    lw	$at,7832($s8)
    # Line 1778
    mov.s	$f30,$f12
    # Line 1784
    jal	glTexCoord3f
    # Line 1783
    sw	$at,5872($zero)
    # Line 1786
    ldc1	$f14,8($sp)
    # lw $t9, -17984($gp) # &glTexCoord3f
    ldc1	$f13,16($sp)
    # Line 1785
    lw	$a0,11616($s8)
    # Line 1786
    mov.s	$f12,$f30
    jal	glTexCoord3f
    # Line 1785
    sw	$a0,5872($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 1788
    ld	$gp,40($sp)
    # Line 1787
    ld	$a1,48($sp)
    # Line 1788
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1787
    sw	$a1,5872($zero)
.end __glce_TexCoord3f

# Function: __glce_TexCoord3fv
# Declared: Line 1793 (Source lines: 1794-1804)
# Address: 0x0da57e10 - 0x0da57e84 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord3fv
.ent __glce_TexCoord3fv
__glce_TexCoord3fv:
    # Line 1798
    lw	$v0,5876($zero)
    # Line 1794
    addiu	$sp,$sp,-48
    # Line 1798
    sd	$v0,24($sp)
    # Line 1794
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1796
    lw	$at,4112($zero)
    # Line 1794
    addiu	$v1,$v1,-28216
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1800
    # lw $t9, -17980($gp) # &glTexCoord3fv
    # Line 1796
    sd	$at,32($sp)
    # Line 1799
    lw	$at,7836($at)
    # Line 1794
    move	$s8,$a0
    # Line 1800
    jal	glTexCoord3fv
    # Line 1799
    sw	$at,5876($zero)
    # Line 1802
    # lw $t9, -17980($gp) # &glTexCoord3fv
    # Line 1801
    ld	$a1,32($sp)
    lw	$a1,11620($a1)
    # Line 1802
    move	$a0,$s8
    jal	glTexCoord3fv
    # Line 1801
    sw	$a1,5876($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1804
    ld	$gp,16($sp)
    # Line 1803
    ld	$a2,24($sp)
    # Line 1804
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1803
    sw	$a2,5876($zero)
.end __glce_TexCoord3fv

# Function: __glce_TexCoord3i
# Declared: Line 1809 (Source lines: 1810-1820)
# Address: 0x0da57e90 - 0x0da57f14 (Size: 132 bytes, Frame: 192)
.globl __glce_TexCoord3i
.ent __glce_TexCoord3i
__glce_TexCoord3i:
    # Line 1814
    lw	$v0,5880($zero)
    # Line 1810
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 1814
    sd	$v0,24($sp)
    # Line 1810
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1812
    lw	$at,4112($zero)
    # Line 1810
    addiu	$v1,$v1,-28344
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1816
    # lw $t9, -17976($gp) # &glTexCoord3i
    # Line 1812
    sd	$at,32($sp)
    # Line 1815
    lw	$at,7840($at)
    # Line 1810
    move	$s8,$a0
    # Line 1816
    jal	glTexCoord3i
    # Line 1815
    sw	$at,5880($zero)
    # Line 1818
    ld	$a2,40($sp)
    # lw $t9, -17976($gp) # &glTexCoord3i
    # Line 1817
    ld	$a3,32($sp)
    # Line 1818
    ld	$a1,48($sp)
    # Line 1817
    lw	$a3,11624($a3)
    # Line 1818
    move	$a0,$s8
    jal	glTexCoord3i
    # Line 1817
    sw	$a3,5880($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1820
    ld	$gp,16($sp)
    # Line 1819
    ld	$a4,24($sp)
    # Line 1820
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1819
    sw	$a4,5880($zero)
.end __glce_TexCoord3i

# Function: __glce_TexCoord3iv
# Declared: Line 1825 (Source lines: 1826-1836)
# Address: 0x0da57f20 - 0x0da57f94 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord3iv
.ent __glce_TexCoord3iv
__glce_TexCoord3iv:
    # Line 1830
    lw	$v0,5884($zero)
    # Line 1826
    addiu	$sp,$sp,-48
    # Line 1830
    sd	$v0,24($sp)
    # Line 1826
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1828
    lw	$at,4112($zero)
    # Line 1826
    addiu	$v1,$v1,-28488
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1832
    # lw $t9, -17972($gp) # &glTexCoord3iv
    # Line 1828
    sd	$at,32($sp)
    # Line 1831
    lw	$at,7844($at)
    # Line 1826
    move	$s8,$a0
    # Line 1832
    jal	glTexCoord3iv
    # Line 1831
    sw	$at,5884($zero)
    # Line 1834
    # lw $t9, -17972($gp) # &glTexCoord3iv
    # Line 1833
    ld	$a1,32($sp)
    lw	$a1,11628($a1)
    # Line 1834
    move	$a0,$s8
    jal	glTexCoord3iv
    # Line 1833
    sw	$a1,5884($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1836
    ld	$gp,16($sp)
    # Line 1835
    ld	$a2,24($sp)
    # Line 1836
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1835
    sw	$a2,5884($zero)
.end __glce_TexCoord3iv

# Function: __glce_TexCoord3s
# Declared: Line 1841 (Source lines: 1842-1852)
# Address: 0x0da57fa0 - 0x0da58024 (Size: 132 bytes, Frame: 192)
.globl __glce_TexCoord3s
.ent __glce_TexCoord3s
__glce_TexCoord3s:
    # Line 1846
    lw	$v0,5888($zero)
    # Line 1842
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 1846
    sd	$v0,24($sp)
    # Line 1842
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1844
    lw	$at,4112($zero)
    # Line 1842
    addiu	$v1,$v1,-28616
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1848
    # lw $t9, -17968($gp) # &glTexCoord3s
    # Line 1844
    sd	$at,32($sp)
    # Line 1847
    lw	$at,7848($at)
    # Line 1842
    move	$s8,$a0
    # Line 1848
    jal	glTexCoord3s
    # Line 1847
    sw	$at,5888($zero)
    # Line 1850
    ld	$a2,40($sp)
    # lw $t9, -17968($gp) # &glTexCoord3s
    # Line 1849
    ld	$a3,32($sp)
    # Line 1850
    ld	$a1,48($sp)
    # Line 1849
    lw	$a3,11632($a3)
    # Line 1850
    move	$a0,$s8
    jal	glTexCoord3s
    # Line 1849
    sw	$a3,5888($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1852
    ld	$gp,16($sp)
    # Line 1851
    ld	$a4,24($sp)
    # Line 1852
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1851
    sw	$a4,5888($zero)
.end __glce_TexCoord3s

# Function: __glce_TexCoord3sv
# Declared: Line 1857 (Source lines: 1858-1868)
# Address: 0x0da58030 - 0x0da580a4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord3sv
.ent __glce_TexCoord3sv
__glce_TexCoord3sv:
    # Line 1862
    lw	$v0,5892($zero)
    # Line 1858
    addiu	$sp,$sp,-48
    # Line 1862
    sd	$v0,24($sp)
    # Line 1858
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1860
    lw	$at,4112($zero)
    # Line 1858
    addiu	$v1,$v1,-28760
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1864
    # lw $t9, -17964($gp) # &glTexCoord3sv
    # Line 1860
    sd	$at,32($sp)
    # Line 1863
    lw	$at,7852($at)
    # Line 1858
    move	$s8,$a0
    # Line 1864
    jal	glTexCoord3sv
    # Line 1863
    sw	$at,5892($zero)
    # Line 1866
    # lw $t9, -17964($gp) # &glTexCoord3sv
    # Line 1865
    ld	$a1,32($sp)
    lw	$a1,11636($a1)
    # Line 1866
    move	$a0,$s8
    jal	glTexCoord3sv
    # Line 1865
    sw	$a1,5892($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1868
    ld	$gp,16($sp)
    # Line 1867
    ld	$a2,24($sp)
    # Line 1868
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1867
    sw	$a2,5892($zero)
.end __glce_TexCoord3sv

# Function: __glce_TexCoord4d
# Declared: Line 1873 (Source lines: 1874-1884)
# Address: 0x0da580b0 - 0x0da5813c (Size: 140 bytes, Frame: 192)
.globl __glce_TexCoord4d
.ent __glce_TexCoord4d
__glce_TexCoord4d:
    # Line 1878
    lw	$v0,5896($zero)
    # Line 1874
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 1878
    sd	$v0,56($sp)
    # Line 1874
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 1876
    lw	$s8,4112($zero)
    # Line 1874
    addiu	$v1,$v1,-28888
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 1880
    # lw $t9, -17960($gp) # &glTexCoord4d
    # Line 1874
    sdc1	$f30,0($sp)
    # Line 1879
    lw	$at,7856($s8)
    # Line 1874
    mov.d	$f30,$f12
    # Line 1880
    jal	glTexCoord4d
    # Line 1879
    sw	$at,5896($zero)
    # Line 1882
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17960($gp) # &glTexCoord4d
    ldc1	$f13,24($sp)
    # Line 1881
    lw	$a0,11640($s8)
    # Line 1882
    mov.d	$f12,$f30
    jal	glTexCoord4d
    # Line 1881
    sw	$a0,5896($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 1884
    ld	$gp,48($sp)
    # Line 1883
    ld	$a1,56($sp)
    # Line 1884
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1883
    sw	$a1,5896($zero)
.end __glce_TexCoord4d

# Function: __glce_TexCoord4dv
# Declared: Line 1889 (Source lines: 1890-1900)
# Address: 0x0da58140 - 0x0da581b4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord4dv
.ent __glce_TexCoord4dv
__glce_TexCoord4dv:
    # Line 1894
    lw	$v0,5900($zero)
    # Line 1890
    addiu	$sp,$sp,-48
    # Line 1894
    sd	$v0,24($sp)
    # Line 1890
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1892
    lw	$at,4112($zero)
    # Line 1890
    addiu	$v1,$v1,-29032
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1896
    # lw $t9, -17956($gp) # &glTexCoord4dv
    # Line 1892
    sd	$at,32($sp)
    # Line 1895
    lw	$at,7860($at)
    # Line 1890
    move	$s8,$a0
    # Line 1896
    jal	glTexCoord4dv
    # Line 1895
    sw	$at,5900($zero)
    # Line 1898
    # lw $t9, -17956($gp) # &glTexCoord4dv
    # Line 1897
    ld	$a1,32($sp)
    lw	$a1,11644($a1)
    # Line 1898
    move	$a0,$s8
    jal	glTexCoord4dv
    # Line 1897
    sw	$a1,5900($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1900
    ld	$gp,16($sp)
    # Line 1899
    ld	$a2,24($sp)
    # Line 1900
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1899
    sw	$a2,5900($zero)
.end __glce_TexCoord4dv

# Function: __glce_TexCoord4f
# Declared: Line 1905 (Source lines: 1906-1916)
# Address: 0x0da581c0 - 0x0da5824c (Size: 140 bytes, Frame: 192)
.globl __glce_TexCoord4f
.ent __glce_TexCoord4f
__glce_TexCoord4f:
    # Line 1910
    lw	$v0,5904($zero)
    # Line 1906
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 1910
    sd	$v0,56($sp)
    # Line 1906
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 1908
    lw	$s8,4112($zero)
    # Line 1906
    addiu	$v1,$v1,-29160
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 1912
    # lw $t9, -17952($gp) # &glTexCoord4f
    # Line 1906
    sdc1	$f30,0($sp)
    # Line 1911
    lw	$at,7864($s8)
    # Line 1906
    mov.s	$f30,$f12
    # Line 1912
    jal	glTexCoord4f
    # Line 1911
    sw	$at,5904($zero)
    # Line 1914
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17952($gp) # &glTexCoord4f
    ldc1	$f13,24($sp)
    # Line 1913
    lw	$a0,11648($s8)
    # Line 1914
    mov.s	$f12,$f30
    jal	glTexCoord4f
    # Line 1913
    sw	$a0,5904($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 1916
    ld	$gp,48($sp)
    # Line 1915
    ld	$a1,56($sp)
    # Line 1916
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1915
    sw	$a1,5904($zero)
.end __glce_TexCoord4f

# Function: __glce_TexCoord4fv
# Declared: Line 1921 (Source lines: 1922-1932)
# Address: 0x0da58250 - 0x0da582c4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord4fv
.ent __glce_TexCoord4fv
__glce_TexCoord4fv:
    # Line 1926
    lw	$v0,5908($zero)
    # Line 1922
    addiu	$sp,$sp,-48
    # Line 1926
    sd	$v0,24($sp)
    # Line 1922
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1924
    lw	$at,4112($zero)
    # Line 1922
    addiu	$v1,$v1,-29304
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1928
    # lw $t9, -17948($gp) # &glTexCoord4fv
    # Line 1924
    sd	$at,32($sp)
    # Line 1927
    lw	$at,7868($at)
    # Line 1922
    move	$s8,$a0
    # Line 1928
    jal	glTexCoord4fv
    # Line 1927
    sw	$at,5908($zero)
    # Line 1930
    # lw $t9, -17948($gp) # &glTexCoord4fv
    # Line 1929
    ld	$a1,32($sp)
    lw	$a1,11652($a1)
    # Line 1930
    move	$a0,$s8
    jal	glTexCoord4fv
    # Line 1929
    sw	$a1,5908($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1932
    ld	$gp,16($sp)
    # Line 1931
    ld	$a2,24($sp)
    # Line 1932
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1931
    sw	$a2,5908($zero)
.end __glce_TexCoord4fv

# Function: __glce_TexCoord4i
# Declared: Line 1937 (Source lines: 1938-1948)
# Address: 0x0da582d0 - 0x0da5835c (Size: 140 bytes, Frame: 192)
.globl __glce_TexCoord4i
.ent __glce_TexCoord4i
__glce_TexCoord4i:
    # Line 1942
    lw	$v0,5912($zero)
    # Line 1938
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 1942
    sd	$v0,24($sp)
    # Line 1938
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1940
    lw	$at,4112($zero)
    # Line 1938
    addiu	$v1,$v1,-29432
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1944
    # lw $t9, -17944($gp) # &glTexCoord4i
    # Line 1940
    sd	$at,32($sp)
    # Line 1943
    lw	$at,7872($at)
    # Line 1938
    move	$s8,$a0
    # Line 1944
    jal	glTexCoord4i
    # Line 1943
    sw	$at,5912($zero)
    # Line 1946
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17944($gp) # &glTexCoord4i
    # Line 1945
    ld	$a4,32($sp)
    # Line 1946
    ld	$a1,56($sp)
    # Line 1945
    lw	$a4,11656($a4)
    # Line 1946
    move	$a0,$s8
    jal	glTexCoord4i
    # Line 1945
    sw	$a4,5912($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1948
    ld	$gp,16($sp)
    # Line 1947
    ld	$a5,24($sp)
    # Line 1948
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1947
    sw	$a5,5912($zero)
.end __glce_TexCoord4i

# Function: __glce_TexCoord4iv
# Declared: Line 1953 (Source lines: 1954-1964)
# Address: 0x0da58360 - 0x0da583d4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord4iv
.ent __glce_TexCoord4iv
__glce_TexCoord4iv:
    # Line 1958
    lw	$v0,5916($zero)
    # Line 1954
    addiu	$sp,$sp,-48
    # Line 1958
    sd	$v0,24($sp)
    # Line 1954
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1956
    lw	$at,4112($zero)
    # Line 1954
    addiu	$v1,$v1,-29576
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1960
    # lw $t9, -17940($gp) # &glTexCoord4iv
    # Line 1956
    sd	$at,32($sp)
    # Line 1959
    lw	$at,7876($at)
    # Line 1954
    move	$s8,$a0
    # Line 1960
    jal	glTexCoord4iv
    # Line 1959
    sw	$at,5916($zero)
    # Line 1962
    # lw $t9, -17940($gp) # &glTexCoord4iv
    # Line 1961
    ld	$a1,32($sp)
    lw	$a1,11660($a1)
    # Line 1962
    move	$a0,$s8
    jal	glTexCoord4iv
    # Line 1961
    sw	$a1,5916($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1964
    ld	$gp,16($sp)
    # Line 1963
    ld	$a2,24($sp)
    # Line 1964
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1963
    sw	$a2,5916($zero)
.end __glce_TexCoord4iv

# Function: __glce_TexCoord4s
# Declared: Line 1969 (Source lines: 1970-1980)
# Address: 0x0da583e0 - 0x0da5846c (Size: 140 bytes, Frame: 192)
.globl __glce_TexCoord4s
.ent __glce_TexCoord4s
__glce_TexCoord4s:
    # Line 1974
    lw	$v0,5920($zero)
    # Line 1970
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 1974
    sd	$v0,24($sp)
    # Line 1970
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1972
    lw	$at,4112($zero)
    # Line 1970
    addiu	$v1,$v1,-29704
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1976
    # lw $t9, -17936($gp) # &glTexCoord4s
    # Line 1972
    sd	$at,32($sp)
    # Line 1975
    lw	$at,7880($at)
    # Line 1970
    move	$s8,$a0
    # Line 1976
    jal	glTexCoord4s
    # Line 1975
    sw	$at,5920($zero)
    # Line 1978
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17936($gp) # &glTexCoord4s
    # Line 1977
    ld	$a4,32($sp)
    # Line 1978
    ld	$a1,56($sp)
    # Line 1977
    lw	$a4,11664($a4)
    # Line 1978
    move	$a0,$s8
    jal	glTexCoord4s
    # Line 1977
    sw	$a4,5920($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1980
    ld	$gp,16($sp)
    # Line 1979
    ld	$a5,24($sp)
    # Line 1980
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1979
    sw	$a5,5920($zero)
.end __glce_TexCoord4s

# Function: __glce_TexCoord4sv
# Declared: Line 1985 (Source lines: 1986-1996)
# Address: 0x0da58470 - 0x0da584e4 (Size: 116 bytes, Frame: 48)
.globl __glce_TexCoord4sv
.ent __glce_TexCoord4sv
__glce_TexCoord4sv:
    # Line 1990
    lw	$v0,5924($zero)
    # Line 1986
    addiu	$sp,$sp,-48
    # Line 1990
    sd	$v0,24($sp)
    # Line 1986
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 1988
    lw	$at,4112($zero)
    # Line 1986
    addiu	$v1,$v1,-29848
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1992
    # lw $t9, -17932($gp) # &glTexCoord4sv
    # Line 1988
    sd	$at,32($sp)
    # Line 1991
    lw	$at,7884($at)
    # Line 1986
    move	$s8,$a0
    # Line 1992
    jal	glTexCoord4sv
    # Line 1991
    sw	$at,5924($zero)
    # Line 1994
    # lw $t9, -17932($gp) # &glTexCoord4sv
    # Line 1993
    ld	$a1,32($sp)
    lw	$a1,11668($a1)
    # Line 1994
    move	$a0,$s8
    jal	glTexCoord4sv
    # Line 1993
    sw	$a1,5924($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 1996
    ld	$gp,16($sp)
    # Line 1995
    ld	$a2,24($sp)
    # Line 1996
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1995
    sw	$a2,5924($zero)
.end __glce_TexCoord4sv

# Function: __glce_Vertex2d
# Declared: Line 2001 (Source lines: 2002-2012)
# Address: 0x0da584f0 - 0x0da5856c (Size: 124 bytes, Frame: 48)
.globl __glce_Vertex2d
.ent __glce_Vertex2d
__glce_Vertex2d:
    # Line 2006
    lw	$v0,5496($zero)
    # Line 2002
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 2006
    sd	$v0,40($sp)
    # Line 2002
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x4
    # Line 2004
    lw	$s8,4112($zero)
    # Line 2002
    addiu	$v1,$v1,-29976
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 2008
    # lw $t9, -17928($gp) # &glVertex2d
    # Line 2002
    sdc1	$f30,0($sp)
    # Line 2007
    lw	$at,7456($s8)
    # Line 2002
    mov.d	$f30,$f12
    # Line 2008
    jal	glVertex2d
    # Line 2007
    sw	$at,5496($zero)
    # Line 2010
    # lw $t9, -17928($gp) # &glVertex2d
    ldc1	$f13,8($sp)
    # Line 2009
    lw	$a0,11240($s8)
    # Line 2010
    mov.d	$f12,$f30
    jal	glVertex2d
    # Line 2009
    sw	$a0,5496($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 2012
    ld	$gp,32($sp)
    # Line 2011
    ld	$a1,40($sp)
    # Line 2012
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2011
    sw	$a1,5496($zero)
.end __glce_Vertex2d

# Function: __glce_Vertex2dv
# Declared: Line 2017 (Source lines: 2018-2028)
# Address: 0x0da58570 - 0x0da585e4 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex2dv
.ent __glce_Vertex2dv
__glce_Vertex2dv:
    # Line 2022
    lw	$v0,5500($zero)
    # Line 2018
    addiu	$sp,$sp,-48
    # Line 2022
    sd	$v0,24($sp)
    # Line 2018
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2020
    lw	$at,4112($zero)
    # Line 2018
    addiu	$v1,$v1,-30104
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2024
    # lw $t9, -17924($gp) # &glVertex2dv
    # Line 2020
    sd	$at,32($sp)
    # Line 2023
    lw	$at,7460($at)
    # Line 2018
    move	$s8,$a0
    # Line 2024
    jal	glVertex2dv
    # Line 2023
    sw	$at,5500($zero)
    # Line 2026
    # lw $t9, -17924($gp) # &glVertex2dv
    # Line 2025
    ld	$a1,32($sp)
    lw	$a1,11244($a1)
    # Line 2026
    move	$a0,$s8
    jal	glVertex2dv
    # Line 2025
    sw	$a1,5500($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2028
    ld	$gp,16($sp)
    # Line 2027
    ld	$a2,24($sp)
    # Line 2028
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2027
    sw	$a2,5500($zero)
.end __glce_Vertex2dv

# Function: __glce_Vertex2f
# Declared: Line 2033 (Source lines: 2034-2044)
# Address: 0x0da585f0 - 0x0da5866c (Size: 124 bytes, Frame: 48)
.globl __glce_Vertex2f
.ent __glce_Vertex2f
__glce_Vertex2f:
    # Line 2038
    lw	$v0,5504($zero)
    # Line 2034
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 2038
    sd	$v0,40($sp)
    # Line 2034
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x4
    # Line 2036
    lw	$s8,4112($zero)
    # Line 2034
    addiu	$v1,$v1,-30232
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 2040
    # lw $t9, -17920($gp) # &glVertex2f
    # Line 2034
    sdc1	$f30,0($sp)
    # Line 2039
    lw	$at,7464($s8)
    # Line 2034
    mov.s	$f30,$f12
    # Line 2040
    jal	glVertex2f
    # Line 2039
    sw	$at,5504($zero)
    # Line 2042
    # lw $t9, -17920($gp) # &glVertex2f
    ldc1	$f13,8($sp)
    # Line 2041
    lw	$a0,11248($s8)
    # Line 2042
    mov.s	$f12,$f30
    jal	glVertex2f
    # Line 2041
    sw	$a0,5504($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 2044
    ld	$gp,32($sp)
    # Line 2043
    ld	$a1,40($sp)
    # Line 2044
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2043
    sw	$a1,5504($zero)
.end __glce_Vertex2f

# Function: __glce_Vertex2fv
# Declared: Line 2049 (Source lines: 2050-2060)
# Address: 0x0da58670 - 0x0da586e4 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex2fv
.ent __glce_Vertex2fv
__glce_Vertex2fv:
    # Line 2054
    lw	$v0,5508($zero)
    # Line 2050
    addiu	$sp,$sp,-48
    # Line 2054
    sd	$v0,24($sp)
    # Line 2050
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2052
    lw	$at,4112($zero)
    # Line 2050
    addiu	$v1,$v1,-30360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2056
    # lw $t9, -17916($gp) # &glVertex2fv
    # Line 2052
    sd	$at,32($sp)
    # Line 2055
    lw	$at,7468($at)
    # Line 2050
    move	$s8,$a0
    # Line 2056
    jal	glVertex2fv
    # Line 2055
    sw	$at,5508($zero)
    # Line 2058
    # lw $t9, -17916($gp) # &glVertex2fv
    # Line 2057
    ld	$a1,32($sp)
    lw	$a1,11252($a1)
    # Line 2058
    move	$a0,$s8
    jal	glVertex2fv
    # Line 2057
    sw	$a1,5508($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2060
    ld	$gp,16($sp)
    # Line 2059
    ld	$a2,24($sp)
    # Line 2060
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2059
    sw	$a2,5508($zero)
.end __glce_Vertex2fv

# Function: __glce_Vertex2i
# Declared: Line 2065 (Source lines: 2066-2076)
# Address: 0x0da586f0 - 0x0da5876c (Size: 124 bytes, Frame: 48)
.globl __glce_Vertex2i
.ent __glce_Vertex2i
__glce_Vertex2i:
    # Line 2070
    lw	$v0,5512($zero)
    # Line 2066
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2070
    sd	$v0,24($sp)
    # Line 2066
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2068
    lw	$at,4112($zero)
    # Line 2066
    addiu	$v1,$v1,-30488
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2072
    # lw $t9, -17912($gp) # &glVertex2i
    # Line 2068
    sd	$at,32($sp)
    # Line 2071
    lw	$at,7472($at)
    # Line 2066
    move	$s8,$a0
    # Line 2072
    jal	glVertex2i
    # Line 2071
    sw	$at,5512($zero)
    # Line 2074
    # lw $t9, -17912($gp) # &glVertex2i
    # Line 2073
    ld	$a2,32($sp)
    # Line 2074
    ld	$a1,40($sp)
    # Line 2073
    lw	$a2,11256($a2)
    # Line 2074
    move	$a0,$s8
    jal	glVertex2i
    # Line 2073
    sw	$a2,5512($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2076
    ld	$gp,16($sp)
    # Line 2075
    ld	$a3,24($sp)
    # Line 2076
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2075
    sw	$a3,5512($zero)
.end __glce_Vertex2i

# Function: __glce_Vertex2iv
# Declared: Line 2081 (Source lines: 2082-2092)
# Address: 0x0da58770 - 0x0da587e4 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex2iv
.ent __glce_Vertex2iv
__glce_Vertex2iv:
    # Line 2086
    lw	$v0,5516($zero)
    # Line 2082
    addiu	$sp,$sp,-48
    # Line 2086
    sd	$v0,24($sp)
    # Line 2082
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2084
    lw	$at,4112($zero)
    # Line 2082
    addiu	$v1,$v1,-30616
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2088
    # lw $t9, -17908($gp) # &glVertex2iv
    # Line 2084
    sd	$at,32($sp)
    # Line 2087
    lw	$at,7476($at)
    # Line 2082
    move	$s8,$a0
    # Line 2088
    jal	glVertex2iv
    # Line 2087
    sw	$at,5516($zero)
    # Line 2090
    # lw $t9, -17908($gp) # &glVertex2iv
    # Line 2089
    ld	$a1,32($sp)
    lw	$a1,11260($a1)
    # Line 2090
    move	$a0,$s8
    jal	glVertex2iv
    # Line 2089
    sw	$a1,5516($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2092
    ld	$gp,16($sp)
    # Line 2091
    ld	$a2,24($sp)
    # Line 2092
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2091
    sw	$a2,5516($zero)
.end __glce_Vertex2iv

# Function: __glce_Vertex2s
# Declared: Line 2097 (Source lines: 2098-2108)
# Address: 0x0da587f0 - 0x0da5886c (Size: 124 bytes, Frame: 48)
.globl __glce_Vertex2s
.ent __glce_Vertex2s
__glce_Vertex2s:
    # Line 2102
    lw	$v0,5520($zero)
    # Line 2098
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2102
    sd	$v0,24($sp)
    # Line 2098
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2100
    lw	$at,4112($zero)
    # Line 2098
    addiu	$v1,$v1,-30744
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2104
    # lw $t9, -17904($gp) # &glVertex2s
    # Line 2100
    sd	$at,32($sp)
    # Line 2103
    lw	$at,7480($at)
    # Line 2098
    move	$s8,$a0
    # Line 2104
    jal	glVertex2s
    # Line 2103
    sw	$at,5520($zero)
    # Line 2106
    # lw $t9, -17904($gp) # &glVertex2s
    # Line 2105
    ld	$a2,32($sp)
    # Line 2106
    ld	$a1,40($sp)
    # Line 2105
    lw	$a2,11264($a2)
    # Line 2106
    move	$a0,$s8
    jal	glVertex2s
    # Line 2105
    sw	$a2,5520($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2108
    ld	$gp,16($sp)
    # Line 2107
    ld	$a3,24($sp)
    # Line 2108
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2107
    sw	$a3,5520($zero)
.end __glce_Vertex2s

# Function: __glce_Vertex2sv
# Declared: Line 2113 (Source lines: 2114-2124)
# Address: 0x0da58870 - 0x0da588e4 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex2sv
.ent __glce_Vertex2sv
__glce_Vertex2sv:
    # Line 2118
    lw	$v0,5524($zero)
    # Line 2114
    addiu	$sp,$sp,-48
    # Line 2118
    sd	$v0,24($sp)
    # Line 2114
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2116
    lw	$at,4112($zero)
    # Line 2114
    addiu	$v1,$v1,-30872
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2120
    # lw $t9, -17900($gp) # &glVertex2sv
    # Line 2116
    sd	$at,32($sp)
    # Line 2119
    lw	$at,7484($at)
    # Line 2114
    move	$s8,$a0
    # Line 2120
    jal	glVertex2sv
    # Line 2119
    sw	$at,5524($zero)
    # Line 2122
    # lw $t9, -17900($gp) # &glVertex2sv
    # Line 2121
    ld	$a1,32($sp)
    lw	$a1,11268($a1)
    # Line 2122
    move	$a0,$s8
    jal	glVertex2sv
    # Line 2121
    sw	$a1,5524($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2124
    ld	$gp,16($sp)
    # Line 2123
    ld	$a2,24($sp)
    # Line 2124
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2123
    sw	$a2,5524($zero)
.end __glce_Vertex2sv

# Function: __glce_Vertex3d
# Declared: Line 2129 (Source lines: 2130-2140)
# Address: 0x0da588f0 - 0x0da58974 (Size: 132 bytes, Frame: 192)
.globl __glce_Vertex3d
.ent __glce_Vertex3d
__glce_Vertex3d:
    # Line 2134
    lw	$v0,5528($zero)
    # Line 2130
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 2134
    sd	$v0,48($sp)
    # Line 2130
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 2132
    lw	$s8,4112($zero)
    # Line 2130
    addiu	$v1,$v1,-31000
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 2136
    # lw $t9, -17896($gp) # &glVertex3d
    # Line 2130
    sdc1	$f30,0($sp)
    # Line 2135
    lw	$at,7488($s8)
    # Line 2130
    mov.d	$f30,$f12
    # Line 2136
    jal	glVertex3d
    # Line 2135
    sw	$at,5528($zero)
    # Line 2138
    ldc1	$f14,8($sp)
    # lw $t9, -17896($gp) # &glVertex3d
    ldc1	$f13,16($sp)
    # Line 2137
    lw	$a0,11272($s8)
    # Line 2138
    mov.d	$f12,$f30
    jal	glVertex3d
    # Line 2137
    sw	$a0,5528($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 2140
    ld	$gp,40($sp)
    # Line 2139
    ld	$a1,48($sp)
    # Line 2140
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2139
    sw	$a1,5528($zero)
.end __glce_Vertex3d

# Function: __glce_Vertex3dv
# Declared: Line 2145 (Source lines: 2146-2156)
# Address: 0x0da58980 - 0x0da589f4 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex3dv
.ent __glce_Vertex3dv
__glce_Vertex3dv:
    # Line 2150
    lw	$v0,5532($zero)
    # Line 2146
    addiu	$sp,$sp,-48
    # Line 2150
    sd	$v0,24($sp)
    # Line 2146
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2148
    lw	$at,4112($zero)
    # Line 2146
    addiu	$v1,$v1,-31144
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2152
    # lw $t9, -17892($gp) # &glVertex3dv
    # Line 2148
    sd	$at,32($sp)
    # Line 2151
    lw	$at,7492($at)
    # Line 2146
    move	$s8,$a0
    # Line 2152
    jal	glVertex3dv
    # Line 2151
    sw	$at,5532($zero)
    # Line 2154
    # lw $t9, -17892($gp) # &glVertex3dv
    # Line 2153
    ld	$a1,32($sp)
    lw	$a1,11276($a1)
    # Line 2154
    move	$a0,$s8
    jal	glVertex3dv
    # Line 2153
    sw	$a1,5532($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2156
    ld	$gp,16($sp)
    # Line 2155
    ld	$a2,24($sp)
    # Line 2156
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2155
    sw	$a2,5532($zero)
.end __glce_Vertex3dv

# Function: __glce_Vertex3f
# Declared: Line 2161 (Source lines: 2162-2172)
# Address: 0x0da58a00 - 0x0da58a84 (Size: 132 bytes, Frame: 192)
.globl __glce_Vertex3f
.ent __glce_Vertex3f
__glce_Vertex3f:
    # Line 2166
    lw	$v0,5536($zero)
    # Line 2162
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 2166
    sd	$v0,48($sp)
    # Line 2162
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x4
    # Line 2164
    lw	$s8,4112($zero)
    # Line 2162
    addiu	$v1,$v1,-31272
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 2168
    # lw $t9, -17888($gp) # &glVertex3f
    # Line 2162
    sdc1	$f30,0($sp)
    # Line 2167
    lw	$at,7496($s8)
    # Line 2162
    mov.s	$f30,$f12
    # Line 2168
    jal	glVertex3f
    # Line 2167
    sw	$at,5536($zero)
    # Line 2170
    ldc1	$f14,8($sp)
    # lw $t9, -17888($gp) # &glVertex3f
    ldc1	$f13,16($sp)
    # Line 2169
    lw	$a0,11280($s8)
    # Line 2170
    mov.s	$f12,$f30
    jal	glVertex3f
    # Line 2169
    sw	$a0,5536($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 2172
    ld	$gp,40($sp)
    # Line 2171
    ld	$a1,48($sp)
    # Line 2172
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2171
    sw	$a1,5536($zero)
.end __glce_Vertex3f

# Function: __glce_Vertex3fv
# Declared: Line 2177 (Source lines: 2178-2188)
# Address: 0x0da58a90 - 0x0da58b04 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex3fv
.ent __glce_Vertex3fv
__glce_Vertex3fv:
    # Line 2182
    lw	$v0,5540($zero)
    # Line 2178
    addiu	$sp,$sp,-48
    # Line 2182
    sd	$v0,24($sp)
    # Line 2178
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2180
    lw	$at,4112($zero)
    # Line 2178
    addiu	$v1,$v1,-31416
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2184
    # lw $t9, -17884($gp) # &glVertex3fv
    # Line 2180
    sd	$at,32($sp)
    # Line 2183
    lw	$at,7500($at)
    # Line 2178
    move	$s8,$a0
    # Line 2184
    jal	glVertex3fv
    # Line 2183
    sw	$at,5540($zero)
    # Line 2186
    # lw $t9, -17884($gp) # &glVertex3fv
    # Line 2185
    ld	$a1,32($sp)
    lw	$a1,11284($a1)
    # Line 2186
    move	$a0,$s8
    jal	glVertex3fv
    # Line 2185
    sw	$a1,5540($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2188
    ld	$gp,16($sp)
    # Line 2187
    ld	$a2,24($sp)
    # Line 2188
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2187
    sw	$a2,5540($zero)
.end __glce_Vertex3fv

# Function: __glce_Vertex3i
# Declared: Line 2193 (Source lines: 2194-2204)
# Address: 0x0da58b10 - 0x0da58b94 (Size: 132 bytes, Frame: 192)
.globl __glce_Vertex3i
.ent __glce_Vertex3i
__glce_Vertex3i:
    # Line 2198
    lw	$v0,5544($zero)
    # Line 2194
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2198
    sd	$v0,24($sp)
    # Line 2194
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2196
    lw	$at,4112($zero)
    # Line 2194
    addiu	$v1,$v1,-31544
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2200
    # lw $t9, -17880($gp) # &glVertex3i
    # Line 2196
    sd	$at,32($sp)
    # Line 2199
    lw	$at,7504($at)
    # Line 2194
    move	$s8,$a0
    # Line 2200
    jal	glVertex3i
    # Line 2199
    sw	$at,5544($zero)
    # Line 2202
    ld	$a2,40($sp)
    # lw $t9, -17880($gp) # &glVertex3i
    # Line 2201
    ld	$a3,32($sp)
    # Line 2202
    ld	$a1,48($sp)
    # Line 2201
    lw	$a3,11288($a3)
    # Line 2202
    move	$a0,$s8
    jal	glVertex3i
    # Line 2201
    sw	$a3,5544($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2204
    ld	$gp,16($sp)
    # Line 2203
    ld	$a4,24($sp)
    # Line 2204
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2203
    sw	$a4,5544($zero)
.end __glce_Vertex3i

# Function: __glce_Vertex3iv
# Declared: Line 2209 (Source lines: 2210-2220)
# Address: 0x0da58ba0 - 0x0da58c14 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex3iv
.ent __glce_Vertex3iv
__glce_Vertex3iv:
    # Line 2214
    lw	$v0,5548($zero)
    # Line 2210
    addiu	$sp,$sp,-48
    # Line 2214
    sd	$v0,24($sp)
    # Line 2210
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2212
    lw	$at,4112($zero)
    # Line 2210
    addiu	$v1,$v1,-31688
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2216
    # lw $t9, -17876($gp) # &glVertex3iv
    # Line 2212
    sd	$at,32($sp)
    # Line 2215
    lw	$at,7508($at)
    # Line 2210
    move	$s8,$a0
    # Line 2216
    jal	glVertex3iv
    # Line 2215
    sw	$at,5548($zero)
    # Line 2218
    # lw $t9, -17876($gp) # &glVertex3iv
    # Line 2217
    ld	$a1,32($sp)
    lw	$a1,11292($a1)
    # Line 2218
    move	$a0,$s8
    jal	glVertex3iv
    # Line 2217
    sw	$a1,5548($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2220
    ld	$gp,16($sp)
    # Line 2219
    ld	$a2,24($sp)
    # Line 2220
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2219
    sw	$a2,5548($zero)
.end __glce_Vertex3iv

# Function: __glce_Vertex3s
# Declared: Line 2225 (Source lines: 2226-2236)
# Address: 0x0da58c20 - 0x0da58ca4 (Size: 132 bytes, Frame: 192)
.globl __glce_Vertex3s
.ent __glce_Vertex3s
__glce_Vertex3s:
    # Line 2230
    lw	$v0,5552($zero)
    # Line 2226
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2230
    sd	$v0,24($sp)
    # Line 2226
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2228
    lw	$at,4112($zero)
    # Line 2226
    addiu	$v1,$v1,-31816
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2232
    # lw $t9, -17872($gp) # &glVertex3s
    # Line 2228
    sd	$at,32($sp)
    # Line 2231
    lw	$at,7512($at)
    # Line 2226
    move	$s8,$a0
    # Line 2232
    jal	glVertex3s
    # Line 2231
    sw	$at,5552($zero)
    # Line 2234
    ld	$a2,40($sp)
    # lw $t9, -17872($gp) # &glVertex3s
    # Line 2233
    ld	$a3,32($sp)
    # Line 2234
    ld	$a1,48($sp)
    # Line 2233
    lw	$a3,11296($a3)
    # Line 2234
    move	$a0,$s8
    jal	glVertex3s
    # Line 2233
    sw	$a3,5552($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2236
    ld	$gp,16($sp)
    # Line 2235
    ld	$a4,24($sp)
    # Line 2236
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2235
    sw	$a4,5552($zero)
.end __glce_Vertex3s

# Function: __glce_Vertex3sv
# Declared: Line 2241 (Source lines: 2242-2252)
# Address: 0x0da58cb0 - 0x0da58d24 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex3sv
.ent __glce_Vertex3sv
__glce_Vertex3sv:
    # Line 2246
    lw	$v0,5556($zero)
    # Line 2242
    addiu	$sp,$sp,-48
    # Line 2246
    sd	$v0,24($sp)
    # Line 2242
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2244
    lw	$at,4112($zero)
    # Line 2242
    addiu	$v1,$v1,-31960
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2248
    # lw $t9, -17868($gp) # &glVertex3sv
    # Line 2244
    sd	$at,32($sp)
    # Line 2247
    lw	$at,7516($at)
    # Line 2242
    move	$s8,$a0
    # Line 2248
    jal	glVertex3sv
    # Line 2247
    sw	$at,5556($zero)
    # Line 2250
    # lw $t9, -17868($gp) # &glVertex3sv
    # Line 2249
    ld	$a1,32($sp)
    lw	$a1,11300($a1)
    # Line 2250
    move	$a0,$s8
    jal	glVertex3sv
    # Line 2249
    sw	$a1,5556($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2252
    ld	$gp,16($sp)
    # Line 2251
    ld	$a2,24($sp)
    # Line 2252
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2251
    sw	$a2,5556($zero)
.end __glce_Vertex3sv

# Function: __glce_Vertex4d
# Declared: Line 2257 (Source lines: 2258-2268)
# Address: 0x0da58d30 - 0x0da58dbc (Size: 140 bytes, Frame: 192)
.globl __glce_Vertex4d
.ent __glce_Vertex4d
__glce_Vertex4d:
    # Line 2262
    lw	$v0,5560($zero)
    # Line 2258
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 2262
    sd	$v0,56($sp)
    # Line 2258
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 2260
    lw	$s8,4112($zero)
    # Line 2258
    addiu	$v1,$v1,-32088
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 2264
    # lw $t9, -17864($gp) # &glVertex4d
    # Line 2258
    sdc1	$f30,0($sp)
    # Line 2263
    lw	$at,7520($s8)
    # Line 2258
    mov.d	$f30,$f12
    # Line 2264
    jal	glVertex4d
    # Line 2263
    sw	$at,5560($zero)
    # Line 2266
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17864($gp) # &glVertex4d
    ldc1	$f13,24($sp)
    # Line 2265
    lw	$a0,11304($s8)
    # Line 2266
    mov.d	$f12,$f30
    jal	glVertex4d
    # Line 2265
    sw	$a0,5560($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 2268
    ld	$gp,48($sp)
    # Line 2267
    ld	$a1,56($sp)
    # Line 2268
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2267
    sw	$a1,5560($zero)
.end __glce_Vertex4d

# Function: __glce_Vertex4dv
# Declared: Line 2273 (Source lines: 2274-2284)
# Address: 0x0da58dc0 - 0x0da58e34 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex4dv
.ent __glce_Vertex4dv
__glce_Vertex4dv:
    # Line 2278
    lw	$v0,5564($zero)
    # Line 2274
    addiu	$sp,$sp,-48
    # Line 2278
    sd	$v0,24($sp)
    # Line 2274
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2276
    lw	$at,4112($zero)
    # Line 2274
    addiu	$v1,$v1,-32232
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2280
    # lw $t9, -17860($gp) # &glVertex4dv
    # Line 2276
    sd	$at,32($sp)
    # Line 2279
    lw	$at,7524($at)
    # Line 2274
    move	$s8,$a0
    # Line 2280
    jal	glVertex4dv
    # Line 2279
    sw	$at,5564($zero)
    # Line 2282
    # lw $t9, -17860($gp) # &glVertex4dv
    # Line 2281
    ld	$a1,32($sp)
    lw	$a1,11308($a1)
    # Line 2282
    move	$a0,$s8
    jal	glVertex4dv
    # Line 2281
    sw	$a1,5564($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2284
    ld	$gp,16($sp)
    # Line 2283
    ld	$a2,24($sp)
    # Line 2284
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2283
    sw	$a2,5564($zero)
.end __glce_Vertex4dv

# Function: __glce_Vertex4f
# Declared: Line 2289 (Source lines: 2290-2300)
# Address: 0x0da58e40 - 0x0da58ecc (Size: 140 bytes, Frame: 192)
.globl __glce_Vertex4f
.ent __glce_Vertex4f
__glce_Vertex4f:
    # Line 2294
    lw	$v0,5568($zero)
    # Line 2290
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 2294
    sd	$v0,56($sp)
    # Line 2290
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x4
    # Line 2292
    lw	$s8,4112($zero)
    # Line 2290
    addiu	$v1,$v1,-32360
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 2296
    # lw $t9, -17856($gp) # &glVertex4f
    # Line 2290
    sdc1	$f30,0($sp)
    # Line 2295
    lw	$at,7528($s8)
    # Line 2290
    mov.s	$f30,$f12
    # Line 2296
    jal	glVertex4f
    # Line 2295
    sw	$at,5568($zero)
    # Line 2298
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17856($gp) # &glVertex4f
    ldc1	$f13,24($sp)
    # Line 2297
    lw	$a0,11312($s8)
    # Line 2298
    mov.s	$f12,$f30
    jal	glVertex4f
    # Line 2297
    sw	$a0,5568($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 2300
    ld	$gp,48($sp)
    # Line 2299
    ld	$a1,56($sp)
    # Line 2300
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2299
    sw	$a1,5568($zero)
.end __glce_Vertex4f

# Function: __glce_Vertex4fv
# Declared: Line 2305 (Source lines: 2306-2316)
# Address: 0x0da58ed0 - 0x0da58f44 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex4fv
.ent __glce_Vertex4fv
__glce_Vertex4fv:
    # Line 2310
    lw	$v0,5572($zero)
    # Line 2306
    addiu	$sp,$sp,-48
    # Line 2310
    sd	$v0,24($sp)
    # Line 2306
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2308
    lw	$at,4112($zero)
    # Line 2306
    addiu	$v1,$v1,-32504
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2312
    # lw $t9, -17852($gp) # &glVertex4fv
    # Line 2308
    sd	$at,32($sp)
    # Line 2311
    lw	$at,7532($at)
    # Line 2306
    move	$s8,$a0
    # Line 2312
    jal	glVertex4fv
    # Line 2311
    sw	$at,5572($zero)
    # Line 2314
    # lw $t9, -17852($gp) # &glVertex4fv
    # Line 2313
    ld	$a1,32($sp)
    lw	$a1,11316($a1)
    # Line 2314
    move	$a0,$s8
    jal	glVertex4fv
    # Line 2313
    sw	$a1,5572($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2316
    ld	$gp,16($sp)
    # Line 2315
    ld	$a2,24($sp)
    # Line 2316
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2315
    sw	$a2,5572($zero)
.end __glce_Vertex4fv

# Function: __glce_Vertex4i
# Declared: Line 2321 (Source lines: 2322-2332)
# Address: 0x0da58f50 - 0x0da58fdc (Size: 140 bytes, Frame: 192)
.globl __glce_Vertex4i
.ent __glce_Vertex4i
__glce_Vertex4i:
    # Line 2326
    lw	$v0,5576($zero)
    # Line 2322
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 2326
    sd	$v0,24($sp)
    # Line 2322
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x4
    # Line 2324
    lw	$at,4112($zero)
    # Line 2322
    addiu	$v1,$v1,-32632
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2328
    # lw $t9, -17848($gp) # &glVertex4i
    # Line 2324
    sd	$at,32($sp)
    # Line 2327
    lw	$at,7536($at)
    # Line 2322
    move	$s8,$a0
    # Line 2328
    jal	glVertex4i
    # Line 2327
    sw	$at,5576($zero)
    # Line 2330
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17848($gp) # &glVertex4i
    # Line 2329
    ld	$a4,32($sp)
    # Line 2330
    ld	$a1,56($sp)
    # Line 2329
    lw	$a4,11320($a4)
    # Line 2330
    move	$a0,$s8
    jal	glVertex4i
    # Line 2329
    sw	$a4,5576($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2332
    ld	$gp,16($sp)
    # Line 2331
    ld	$a5,24($sp)
    # Line 2332
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2331
    sw	$a5,5576($zero)
.end __glce_Vertex4i

# Function: __glce_Vertex4iv
# Declared: Line 2337 (Source lines: 2338-2348)
# Address: 0x0da58fe0 - 0x0da59054 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex4iv
.ent __glce_Vertex4iv
__glce_Vertex4iv:
    # Line 2342
    lw	$v0,5580($zero)
    # Line 2338
    addiu	$sp,$sp,-48
    # Line 2342
    sd	$v0,24($sp)
    # Line 2338
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2340
    lw	$at,4112($zero)
    # Line 2338
    addiu	$v1,$v1,32760
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2344
    # lw $t9, -17844($gp) # &glVertex4iv
    # Line 2340
    sd	$at,32($sp)
    # Line 2343
    lw	$at,7540($at)
    # Line 2338
    move	$s8,$a0
    # Line 2344
    jal	glVertex4iv
    # Line 2343
    sw	$at,5580($zero)
    # Line 2346
    # lw $t9, -17844($gp) # &glVertex4iv
    # Line 2345
    ld	$a1,32($sp)
    lw	$a1,11324($a1)
    # Line 2346
    move	$a0,$s8
    jal	glVertex4iv
    # Line 2345
    sw	$a1,5580($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2348
    ld	$gp,16($sp)
    # Line 2347
    ld	$a2,24($sp)
    # Line 2348
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2347
    sw	$a2,5580($zero)
.end __glce_Vertex4iv

# Function: __glce_Vertex4s
# Declared: Line 2353 (Source lines: 2354-2364)
# Address: 0x0da59060 - 0x0da590ec (Size: 140 bytes, Frame: 192)
.globl __glce_Vertex4s
.ent __glce_Vertex4s
__glce_Vertex4s:
    # Line 2358
    lw	$v0,5584($zero)
    # Line 2354
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 2358
    sd	$v0,24($sp)
    # Line 2354
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2356
    lw	$at,4112($zero)
    # Line 2354
    addiu	$v1,$v1,32632
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2360
    # lw $t9, -17840($gp) # &glVertex4s
    # Line 2356
    sd	$at,32($sp)
    # Line 2359
    lw	$at,7544($at)
    # Line 2354
    move	$s8,$a0
    # Line 2360
    jal	glVertex4s
    # Line 2359
    sw	$at,5584($zero)
    # Line 2362
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17840($gp) # &glVertex4s
    # Line 2361
    ld	$a4,32($sp)
    # Line 2362
    ld	$a1,56($sp)
    # Line 2361
    lw	$a4,11328($a4)
    # Line 2362
    move	$a0,$s8
    jal	glVertex4s
    # Line 2361
    sw	$a4,5584($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2364
    ld	$gp,16($sp)
    # Line 2363
    ld	$a5,24($sp)
    # Line 2364
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2363
    sw	$a5,5584($zero)
.end __glce_Vertex4s

# Function: __glce_Vertex4sv
# Declared: Line 2369 (Source lines: 2370-2380)
# Address: 0x0da590f0 - 0x0da59164 (Size: 116 bytes, Frame: 48)
.globl __glce_Vertex4sv
.ent __glce_Vertex4sv
__glce_Vertex4sv:
    # Line 2374
    lw	$v0,5588($zero)
    # Line 2370
    addiu	$sp,$sp,-48
    # Line 2374
    sd	$v0,24($sp)
    # Line 2370
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2372
    lw	$at,4112($zero)
    # Line 2370
    addiu	$v1,$v1,32488
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2376
    # lw $t9, -17836($gp) # &glVertex4sv
    # Line 2372
    sd	$at,32($sp)
    # Line 2375
    lw	$at,7548($at)
    # Line 2370
    move	$s8,$a0
    # Line 2376
    jal	glVertex4sv
    # Line 2375
    sw	$at,5588($zero)
    # Line 2378
    # lw $t9, -17836($gp) # &glVertex4sv
    # Line 2377
    ld	$a1,32($sp)
    lw	$a1,11332($a1)
    # Line 2378
    move	$a0,$s8
    jal	glVertex4sv
    # Line 2377
    sw	$a1,5588($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2380
    ld	$gp,16($sp)
    # Line 2379
    ld	$a2,24($sp)
    # Line 2380
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2379
    sw	$a2,5588($zero)
.end __glce_Vertex4sv

# Function: __glce_ClipPlane
# Declared: Line 2385 (Source lines: 2386-2396)
# Address: 0x0da59170 - 0x0da591ec (Size: 124 bytes, Frame: 48)
.globl __glce_ClipPlane
.ent __glce_ClipPlane
__glce_ClipPlane:
    # Line 2390
    lw	$v0,4224($zero)
    # Line 2386
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2390
    sd	$v0,24($sp)
    # Line 2386
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2388
    lw	$at,4112($zero)
    # Line 2386
    addiu	$v1,$v1,32360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2392
    # lw $t9, -17832($gp) # &glClipPlane
    # Line 2388
    sd	$at,32($sp)
    # Line 2391
    lw	$at,6184($at)
    # Line 2386
    move	$s8,$a0
    # Line 2392
    jal	glClipPlane
    # Line 2391
    sw	$at,4224($zero)
    # Line 2394
    # lw $t9, -17832($gp) # &glClipPlane
    # Line 2393
    ld	$a2,32($sp)
    # Line 2394
    ld	$a1,40($sp)
    # Line 2393
    lw	$a2,9968($a2)
    # Line 2394
    move	$a0,$s8
    jal	glClipPlane
    # Line 2393
    sw	$a2,4224($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2396
    ld	$gp,16($sp)
    # Line 2395
    ld	$a3,24($sp)
    # Line 2396
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2395
    sw	$a3,4224($zero)
.end __glce_ClipPlane

# Function: __glce_ColorMaterial
# Declared: Line 2401 (Source lines: 2402-2412)
# Address: 0x0da591f0 - 0x0da5926c (Size: 124 bytes, Frame: 48)
.globl __glce_ColorMaterial
.ent __glce_ColorMaterial
__glce_ColorMaterial:
    # Line 2406
    lw	$v0,4228($zero)
    # Line 2402
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2406
    sd	$v0,24($sp)
    # Line 2402
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2404
    lw	$at,4112($zero)
    # Line 2402
    addiu	$v1,$v1,32232
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2408
    # lw $t9, -17828($gp) # &glColorMaterial
    # Line 2404
    sd	$at,32($sp)
    # Line 2407
    lw	$at,6188($at)
    # Line 2402
    move	$s8,$a0
    # Line 2408
    jal	glColorMaterial
    # Line 2407
    sw	$at,4228($zero)
    # Line 2410
    # lw $t9, -17828($gp) # &glColorMaterial
    # Line 2409
    ld	$a2,32($sp)
    # Line 2410
    ld	$a1,40($sp)
    # Line 2409
    lw	$a2,9972($a2)
    # Line 2410
    move	$a0,$s8
    jal	glColorMaterial
    # Line 2409
    sw	$a2,4228($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2412
    ld	$gp,16($sp)
    # Line 2411
    ld	$a3,24($sp)
    # Line 2412
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2411
    sw	$a3,4228($zero)
.end __glce_ColorMaterial

# Function: __glce_CullFace
# Declared: Line 2417 (Source lines: 2418-2428)
# Address: 0x0da59270 - 0x0da592e4 (Size: 116 bytes, Frame: 48)
.globl __glce_CullFace
.ent __glce_CullFace
__glce_CullFace:
    # Line 2422
    lw	$v0,4232($zero)
    # Line 2418
    addiu	$sp,$sp,-48
    # Line 2422
    sd	$v0,24($sp)
    # Line 2418
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2420
    lw	$at,4112($zero)
    # Line 2418
    addiu	$v1,$v1,32104
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2424
    # lw $t9, -17824($gp) # &glCullFace
    # Line 2420
    sd	$at,32($sp)
    # Line 2423
    lw	$at,6192($at)
    # Line 2418
    move	$s8,$a0
    # Line 2424
    jal	glCullFace
    # Line 2423
    sw	$at,4232($zero)
    # Line 2426
    # lw $t9, -17824($gp) # &glCullFace
    # Line 2425
    ld	$a1,32($sp)
    lw	$a1,9976($a1)
    # Line 2426
    move	$a0,$s8
    jal	glCullFace
    # Line 2425
    sw	$a1,4232($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2428
    ld	$gp,16($sp)
    # Line 2427
    ld	$a2,24($sp)
    # Line 2428
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2427
    sw	$a2,4232($zero)
.end __glce_CullFace

# Function: __glce_Fogf
# Declared: Line 2433 (Source lines: 2434-2444)
# Address: 0x0da592f0 - 0x0da59374 (Size: 132 bytes, Frame: 48)
.globl __glce_Fogf
.ent __glce_Fogf
__glce_Fogf:
    # Line 2438
    lw	$v0,4236($zero)
    # Line 2434
    addiu	$sp,$sp,-48
    # Line 2438
    sd	$v0,32($sp)
    # Line 2434
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2436
    lw	$at,4112($zero)
    # Line 2434
    addiu	$v1,$v1,31976
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2440
    # lw $t9, -17820($gp) # &glFogf
    # Line 2436
    sd	$at,40($sp)
    # Line 2439
    lw	$at,6196($at)
    # Line 2434
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 2440
    jal	glFogf
    # Line 2439
    sw	$at,4236($zero)
    # Line 2442
    # lw $t9, -17820($gp) # &glFogf
    # Line 2441
    ld	$a1,40($sp)
    lw	$a1,9980($a1)
    # Line 2442
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glFogf
    # Line 2441
    sw	$a1,4236($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2444
    ld	$gp,24($sp)
    # Line 2443
    ld	$a2,32($sp)
    # Line 2444
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2443
    sw	$a2,4236($zero)
.end __glce_Fogf

# Function: __glce_Fogfv
# Declared: Line 2449 (Source lines: 2450-2460)
# Address: 0x0da59380 - 0x0da593fc (Size: 124 bytes, Frame: 48)
.globl __glce_Fogfv
.ent __glce_Fogfv
__glce_Fogfv:
    # Line 2454
    lw	$v0,4240($zero)
    # Line 2450
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2454
    sd	$v0,24($sp)
    # Line 2450
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2452
    lw	$at,4112($zero)
    # Line 2450
    addiu	$v1,$v1,31832
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2456
    # lw $t9, -17816($gp) # &glFogfv
    # Line 2452
    sd	$at,32($sp)
    # Line 2455
    lw	$at,6200($at)
    # Line 2450
    move	$s8,$a0
    # Line 2456
    jal	glFogfv
    # Line 2455
    sw	$at,4240($zero)
    # Line 2458
    # lw $t9, -17816($gp) # &glFogfv
    # Line 2457
    ld	$a2,32($sp)
    # Line 2458
    ld	$a1,40($sp)
    # Line 2457
    lw	$a2,9984($a2)
    # Line 2458
    move	$a0,$s8
    jal	glFogfv
    # Line 2457
    sw	$a2,4240($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2460
    ld	$gp,16($sp)
    # Line 2459
    ld	$a3,24($sp)
    # Line 2460
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2459
    sw	$a3,4240($zero)
.end __glce_Fogfv

# Function: __glce_Fogi
# Declared: Line 2465 (Source lines: 2466-2476)
# Address: 0x0da59400 - 0x0da5947c (Size: 124 bytes, Frame: 48)
.globl __glce_Fogi
.ent __glce_Fogi
__glce_Fogi:
    # Line 2470
    lw	$v0,4244($zero)
    # Line 2466
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2470
    sd	$v0,24($sp)
    # Line 2466
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2468
    lw	$at,4112($zero)
    # Line 2466
    addiu	$v1,$v1,31704
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2472
    # lw $t9, -17812($gp) # &glFogi
    # Line 2468
    sd	$at,32($sp)
    # Line 2471
    lw	$at,6204($at)
    # Line 2466
    move	$s8,$a0
    # Line 2472
    jal	glFogi
    # Line 2471
    sw	$at,4244($zero)
    # Line 2474
    # lw $t9, -17812($gp) # &glFogi
    # Line 2473
    ld	$a2,32($sp)
    # Line 2474
    ld	$a1,40($sp)
    # Line 2473
    lw	$a2,9988($a2)
    # Line 2474
    move	$a0,$s8
    jal	glFogi
    # Line 2473
    sw	$a2,4244($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2476
    ld	$gp,16($sp)
    # Line 2475
    ld	$a3,24($sp)
    # Line 2476
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2475
    sw	$a3,4244($zero)
.end __glce_Fogi

# Function: __glce_Fogiv
# Declared: Line 2481 (Source lines: 2482-2492)
# Address: 0x0da59480 - 0x0da594fc (Size: 124 bytes, Frame: 48)
.globl __glce_Fogiv
.ent __glce_Fogiv
__glce_Fogiv:
    # Line 2486
    lw	$v0,4248($zero)
    # Line 2482
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2486
    sd	$v0,24($sp)
    # Line 2482
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2484
    lw	$at,4112($zero)
    # Line 2482
    addiu	$v1,$v1,31576
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2488
    # lw $t9, -17808($gp) # &glFogiv
    # Line 2484
    sd	$at,32($sp)
    # Line 2487
    lw	$at,6208($at)
    # Line 2482
    move	$s8,$a0
    # Line 2488
    jal	glFogiv
    # Line 2487
    sw	$at,4248($zero)
    # Line 2490
    # lw $t9, -17808($gp) # &glFogiv
    # Line 2489
    ld	$a2,32($sp)
    # Line 2490
    ld	$a1,40($sp)
    # Line 2489
    lw	$a2,9992($a2)
    # Line 2490
    move	$a0,$s8
    jal	glFogiv
    # Line 2489
    sw	$a2,4248($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2492
    ld	$gp,16($sp)
    # Line 2491
    ld	$a3,24($sp)
    # Line 2492
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2491
    sw	$a3,4248($zero)
.end __glce_Fogiv

# Function: __glce_FrontFace
# Declared: Line 2497 (Source lines: 2498-2508)
# Address: 0x0da59500 - 0x0da59574 (Size: 116 bytes, Frame: 48)
.globl __glce_FrontFace
.ent __glce_FrontFace
__glce_FrontFace:
    # Line 2502
    lw	$v0,4252($zero)
    # Line 2498
    addiu	$sp,$sp,-48
    # Line 2502
    sd	$v0,24($sp)
    # Line 2498
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2500
    lw	$at,4112($zero)
    # Line 2498
    addiu	$v1,$v1,31448
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2504
    # lw $t9, -17804($gp) # &glFrontFace
    # Line 2500
    sd	$at,32($sp)
    # Line 2503
    lw	$at,6212($at)
    # Line 2498
    move	$s8,$a0
    # Line 2504
    jal	glFrontFace
    # Line 2503
    sw	$at,4252($zero)
    # Line 2506
    # lw $t9, -17804($gp) # &glFrontFace
    # Line 2505
    ld	$a1,32($sp)
    lw	$a1,9996($a1)
    # Line 2506
    move	$a0,$s8
    jal	glFrontFace
    # Line 2505
    sw	$a1,4252($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2508
    ld	$gp,16($sp)
    # Line 2507
    ld	$a2,24($sp)
    # Line 2508
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2507
    sw	$a2,4252($zero)
.end __glce_FrontFace

# Function: __glce_Hint
# Declared: Line 2513 (Source lines: 2514-2524)
# Address: 0x0da59580 - 0x0da595fc (Size: 124 bytes, Frame: 48)
.globl __glce_Hint
.ent __glce_Hint
__glce_Hint:
    # Line 2518
    lw	$v0,4256($zero)
    # Line 2514
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2518
    sd	$v0,24($sp)
    # Line 2514
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2516
    lw	$at,4112($zero)
    # Line 2514
    addiu	$v1,$v1,31320
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2520
    # lw $t9, -17800($gp) # &glHint
    # Line 2516
    sd	$at,32($sp)
    # Line 2519
    lw	$at,6216($at)
    # Line 2514
    move	$s8,$a0
    # Line 2520
    jal	glHint
    # Line 2519
    sw	$at,4256($zero)
    # Line 2522
    # lw $t9, -17800($gp) # &glHint
    # Line 2521
    ld	$a2,32($sp)
    # Line 2522
    ld	$a1,40($sp)
    # Line 2521
    lw	$a2,10000($a2)
    # Line 2522
    move	$a0,$s8
    jal	glHint
    # Line 2521
    sw	$a2,4256($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2524
    ld	$gp,16($sp)
    # Line 2523
    ld	$a3,24($sp)
    # Line 2524
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2523
    sw	$a3,4256($zero)
.end __glce_Hint

# Function: __glce_Lightf
# Declared: Line 2529 (Source lines: 2530-2540)
# Address: 0x0da59600 - 0x0da5968c (Size: 140 bytes, Frame: 192)
.globl __glce_Lightf
.ent __glce_Lightf
__glce_Lightf:
    # Line 2534
    lw	$v0,4260($zero)
    # Line 2530
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 2534
    sd	$v0,32($sp)
    # Line 2530
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2532
    lw	$at,4112($zero)
    # Line 2530
    addiu	$v1,$v1,31192
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2536
    # lw $t9, -17796($gp) # &glLightf
    # Line 2532
    sd	$at,40($sp)
    # Line 2535
    lw	$at,6220($at)
    # Line 2530
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 2536
    jal	glLightf
    # Line 2535
    sw	$at,4260($zero)
    # Line 2538
    # lw $t9, -17796($gp) # &glLightf
    # Line 2537
    ld	$a2,40($sp)
    # Line 2538
    ld	$a1,48($sp)
    # Line 2537
    lw	$a2,10004($a2)
    # Line 2538
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glLightf
    # Line 2537
    sw	$a2,4260($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2540
    ld	$gp,24($sp)
    # Line 2539
    ld	$a3,32($sp)
    # Line 2540
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2539
    sw	$a3,4260($zero)
.end __glce_Lightf

# Function: __glce_Lightfv
# Declared: Line 2545 (Source lines: 2546-2556)
# Address: 0x0da59690 - 0x0da59714 (Size: 132 bytes, Frame: 192)
.globl __glce_Lightfv
.ent __glce_Lightfv
__glce_Lightfv:
    # Line 2550
    lw	$v0,4264($zero)
    # Line 2546
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2550
    sd	$v0,24($sp)
    # Line 2546
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2548
    lw	$at,4112($zero)
    # Line 2546
    addiu	$v1,$v1,31048
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2552
    # lw $t9, -17792($gp) # &glLightfv
    # Line 2548
    sd	$at,32($sp)
    # Line 2551
    lw	$at,6224($at)
    # Line 2546
    move	$s8,$a0
    # Line 2552
    jal	glLightfv
    # Line 2551
    sw	$at,4264($zero)
    # Line 2554
    ld	$a2,40($sp)
    # lw $t9, -17792($gp) # &glLightfv
    # Line 2553
    ld	$a3,32($sp)
    # Line 2554
    ld	$a1,48($sp)
    # Line 2553
    lw	$a3,10008($a3)
    # Line 2554
    move	$a0,$s8
    jal	glLightfv
    # Line 2553
    sw	$a3,4264($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2556
    ld	$gp,16($sp)
    # Line 2555
    ld	$a4,24($sp)
    # Line 2556
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2555
    sw	$a4,4264($zero)
.end __glce_Lightfv

# Function: __glce_Lighti
# Declared: Line 2561 (Source lines: 2562-2572)
# Address: 0x0da59720 - 0x0da597a4 (Size: 132 bytes, Frame: 192)
.globl __glce_Lighti
.ent __glce_Lighti
__glce_Lighti:
    # Line 2566
    lw	$v0,4268($zero)
    # Line 2562
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2566
    sd	$v0,24($sp)
    # Line 2562
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2564
    lw	$at,4112($zero)
    # Line 2562
    addiu	$v1,$v1,30904
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2568
    # lw $t9, -17788($gp) # &glLighti
    # Line 2564
    sd	$at,32($sp)
    # Line 2567
    lw	$at,6228($at)
    # Line 2562
    move	$s8,$a0
    # Line 2568
    jal	glLighti
    # Line 2567
    sw	$at,4268($zero)
    # Line 2570
    ld	$a2,40($sp)
    # lw $t9, -17788($gp) # &glLighti
    # Line 2569
    ld	$a3,32($sp)
    # Line 2570
    ld	$a1,48($sp)
    # Line 2569
    lw	$a3,10012($a3)
    # Line 2570
    move	$a0,$s8
    jal	glLighti
    # Line 2569
    sw	$a3,4268($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2572
    ld	$gp,16($sp)
    # Line 2571
    ld	$a4,24($sp)
    # Line 2572
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2571
    sw	$a4,4268($zero)
.end __glce_Lighti

# Function: __glce_Lightiv
# Declared: Line 2577 (Source lines: 2578-2588)
# Address: 0x0da597b0 - 0x0da59834 (Size: 132 bytes, Frame: 192)
.globl __glce_Lightiv
.ent __glce_Lightiv
__glce_Lightiv:
    # Line 2582
    lw	$v0,4272($zero)
    # Line 2578
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2582
    sd	$v0,24($sp)
    # Line 2578
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2580
    lw	$at,4112($zero)
    # Line 2578
    addiu	$v1,$v1,30760
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2584
    # lw $t9, -17784($gp) # &glLightiv
    # Line 2580
    sd	$at,32($sp)
    # Line 2583
    lw	$at,6232($at)
    # Line 2578
    move	$s8,$a0
    # Line 2584
    jal	glLightiv
    # Line 2583
    sw	$at,4272($zero)
    # Line 2586
    ld	$a2,40($sp)
    # lw $t9, -17784($gp) # &glLightiv
    # Line 2585
    ld	$a3,32($sp)
    # Line 2586
    ld	$a1,48($sp)
    # Line 2585
    lw	$a3,10016($a3)
    # Line 2586
    move	$a0,$s8
    jal	glLightiv
    # Line 2585
    sw	$a3,4272($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2588
    ld	$gp,16($sp)
    # Line 2587
    ld	$a4,24($sp)
    # Line 2588
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2587
    sw	$a4,4272($zero)
.end __glce_Lightiv

# Function: __glce_LightModelf
# Declared: Line 2593 (Source lines: 2594-2604)
# Address: 0x0da59840 - 0x0da598c4 (Size: 132 bytes, Frame: 48)
.globl __glce_LightModelf
.ent __glce_LightModelf
__glce_LightModelf:
    # Line 2598
    lw	$v0,4276($zero)
    # Line 2594
    addiu	$sp,$sp,-48
    # Line 2598
    sd	$v0,32($sp)
    # Line 2594
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2596
    lw	$at,4112($zero)
    # Line 2594
    addiu	$v1,$v1,30616
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2600
    # lw $t9, -17780($gp) # &glLightModelf
    # Line 2596
    sd	$at,40($sp)
    # Line 2599
    lw	$at,6236($at)
    # Line 2594
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 2600
    jal	glLightModelf
    # Line 2599
    sw	$at,4276($zero)
    # Line 2602
    # lw $t9, -17780($gp) # &glLightModelf
    # Line 2601
    ld	$a1,40($sp)
    lw	$a1,10020($a1)
    # Line 2602
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glLightModelf
    # Line 2601
    sw	$a1,4276($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2604
    ld	$gp,24($sp)
    # Line 2603
    ld	$a2,32($sp)
    # Line 2604
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2603
    sw	$a2,4276($zero)
.end __glce_LightModelf

# Function: __glce_LightModelfv
# Declared: Line 2609 (Source lines: 2610-2620)
# Address: 0x0da598d0 - 0x0da5994c (Size: 124 bytes, Frame: 48)
.globl __glce_LightModelfv
.ent __glce_LightModelfv
__glce_LightModelfv:
    # Line 2614
    lw	$v0,4280($zero)
    # Line 2610
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2614
    sd	$v0,24($sp)
    # Line 2610
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2612
    lw	$at,4112($zero)
    # Line 2610
    addiu	$v1,$v1,30472
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2616
    # lw $t9, -17776($gp) # &glLightModelfv
    # Line 2612
    sd	$at,32($sp)
    # Line 2615
    lw	$at,6240($at)
    # Line 2610
    move	$s8,$a0
    # Line 2616
    jal	glLightModelfv
    # Line 2615
    sw	$at,4280($zero)
    # Line 2618
    # lw $t9, -17776($gp) # &glLightModelfv
    # Line 2617
    ld	$a2,32($sp)
    # Line 2618
    ld	$a1,40($sp)
    # Line 2617
    lw	$a2,10024($a2)
    # Line 2618
    move	$a0,$s8
    jal	glLightModelfv
    # Line 2617
    sw	$a2,4280($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2620
    ld	$gp,16($sp)
    # Line 2619
    ld	$a3,24($sp)
    # Line 2620
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2619
    sw	$a3,4280($zero)
.end __glce_LightModelfv

# Function: __glce_LightModeli
# Declared: Line 2625 (Source lines: 2626-2636)
# Address: 0x0da59950 - 0x0da599cc (Size: 124 bytes, Frame: 48)
.globl __glce_LightModeli
.ent __glce_LightModeli
__glce_LightModeli:
    # Line 2630
    lw	$v0,4284($zero)
    # Line 2626
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2630
    sd	$v0,24($sp)
    # Line 2626
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2628
    lw	$at,4112($zero)
    # Line 2626
    addiu	$v1,$v1,30344
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2632
    # lw $t9, -17772($gp) # &glLightModeli
    # Line 2628
    sd	$at,32($sp)
    # Line 2631
    lw	$at,6244($at)
    # Line 2626
    move	$s8,$a0
    # Line 2632
    jal	glLightModeli
    # Line 2631
    sw	$at,4284($zero)
    # Line 2634
    # lw $t9, -17772($gp) # &glLightModeli
    # Line 2633
    ld	$a2,32($sp)
    # Line 2634
    ld	$a1,40($sp)
    # Line 2633
    lw	$a2,10028($a2)
    # Line 2634
    move	$a0,$s8
    jal	glLightModeli
    # Line 2633
    sw	$a2,4284($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2636
    ld	$gp,16($sp)
    # Line 2635
    ld	$a3,24($sp)
    # Line 2636
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2635
    sw	$a3,4284($zero)
.end __glce_LightModeli

# Function: __glce_LightModeliv
# Declared: Line 2641 (Source lines: 2642-2652)
# Address: 0x0da599d0 - 0x0da59a4c (Size: 124 bytes, Frame: 48)
.globl __glce_LightModeliv
.ent __glce_LightModeliv
__glce_LightModeliv:
    # Line 2646
    lw	$v0,4288($zero)
    # Line 2642
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2646
    sd	$v0,24($sp)
    # Line 2642
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2644
    lw	$at,4112($zero)
    # Line 2642
    addiu	$v1,$v1,30216
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2648
    # lw $t9, -17768($gp) # &glLightModeliv
    # Line 2644
    sd	$at,32($sp)
    # Line 2647
    lw	$at,6248($at)
    # Line 2642
    move	$s8,$a0
    # Line 2648
    jal	glLightModeliv
    # Line 2647
    sw	$at,4288($zero)
    # Line 2650
    # lw $t9, -17768($gp) # &glLightModeliv
    # Line 2649
    ld	$a2,32($sp)
    # Line 2650
    ld	$a1,40($sp)
    # Line 2649
    lw	$a2,10032($a2)
    # Line 2650
    move	$a0,$s8
    jal	glLightModeliv
    # Line 2649
    sw	$a2,4288($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2652
    ld	$gp,16($sp)
    # Line 2651
    ld	$a3,24($sp)
    # Line 2652
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2651
    sw	$a3,4288($zero)
.end __glce_LightModeliv

# Function: __glce_LineStipple
# Declared: Line 2657 (Source lines: 2658-2668)
# Address: 0x0da59a50 - 0x0da59acc (Size: 124 bytes, Frame: 48)
.globl __glce_LineStipple
.ent __glce_LineStipple
__glce_LineStipple:
    # Line 2662
    lw	$v0,4292($zero)
    # Line 2658
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2662
    sd	$v0,24($sp)
    # Line 2658
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2660
    lw	$at,4112($zero)
    # Line 2658
    addiu	$v1,$v1,30088
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2664
    # lw $t9, -17764($gp) # &glLineStipple
    # Line 2660
    sd	$at,32($sp)
    # Line 2663
    lw	$at,6252($at)
    # Line 2658
    move	$s8,$a0
    # Line 2664
    jal	glLineStipple
    # Line 2663
    sw	$at,4292($zero)
    # Line 2666
    # lw $t9, -17764($gp) # &glLineStipple
    # Line 2665
    ld	$a2,32($sp)
    # Line 2666
    ld	$a1,40($sp)
    # Line 2665
    lw	$a2,10036($a2)
    # Line 2666
    move	$a0,$s8
    jal	glLineStipple
    # Line 2665
    sw	$a2,4292($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2668
    ld	$gp,16($sp)
    # Line 2667
    ld	$a3,24($sp)
    # Line 2668
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2667
    sw	$a3,4292($zero)
.end __glce_LineStipple

# Function: __glce_LineWidth
# Declared: Line 2673 (Source lines: 2674-2684)
# Address: 0x0da59ad0 - 0x0da59b44 (Size: 116 bytes, Frame: 48)
.globl __glce_LineWidth
.ent __glce_LineWidth
__glce_LineWidth:
    # Line 2678
    lw	$v0,4296($zero)
    # Line 2674
    addiu	$sp,$sp,-48
    # Line 2678
    sd	$v0,32($sp)
    # Line 2674
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 2676
    lw	$s8,4112($zero)
    # Line 2674
    addiu	$v1,$v1,29960
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2680
    # lw $t9, -17760($gp) # &glLineWidth
    # Line 2674
    sdc1	$f30,0($sp)
    # Line 2679
    lw	$at,6256($s8)
    # Line 2674
    mov.s	$f30,$f12
    # Line 2680
    jal	glLineWidth
    # Line 2679
    sw	$at,4296($zero)
    # Line 2682
    # lw $t9, -17760($gp) # &glLineWidth
    # Line 2681
    lw	$a0,10040($s8)
    # Line 2682
    mov.s	$f12,$f30
    jal	glLineWidth
    # Line 2681
    sw	$a0,4296($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2684
    ld	$gp,24($sp)
    # Line 2683
    ld	$a1,32($sp)
    # Line 2684
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2683
    sw	$a1,4296($zero)
.end __glce_LineWidth

# Function: __glce_Materialf
# Declared: Line 2689 (Source lines: 2690-2700)
# Address: 0x0da59b50 - 0x0da59bdc (Size: 140 bytes, Frame: 192)
.globl __glce_Materialf
.ent __glce_Materialf
__glce_Materialf:
    # Line 2694
    lw	$v0,4300($zero)
    # Line 2690
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 2694
    sd	$v0,32($sp)
    # Line 2690
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2692
    lw	$at,4112($zero)
    # Line 2690
    addiu	$v1,$v1,29832
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2696
    # lw $t9, -17756($gp) # &glMaterialf
    # Line 2692
    sd	$at,40($sp)
    # Line 2695
    lw	$at,6260($at)
    # Line 2690
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 2696
    jal	glMaterialf
    # Line 2695
    sw	$at,4300($zero)
    # Line 2698
    # lw $t9, -17756($gp) # &glMaterialf
    # Line 2697
    ld	$a2,40($sp)
    # Line 2698
    ld	$a1,48($sp)
    # Line 2697
    lw	$a2,10044($a2)
    # Line 2698
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glMaterialf
    # Line 2697
    sw	$a2,4300($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2700
    ld	$gp,24($sp)
    # Line 2699
    ld	$a3,32($sp)
    # Line 2700
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2699
    sw	$a3,4300($zero)
.end __glce_Materialf

# Function: __glce_Materialfv
# Declared: Line 2705 (Source lines: 2706-2716)
# Address: 0x0da59be0 - 0x0da59c64 (Size: 132 bytes, Frame: 192)
.globl __glce_Materialfv
.ent __glce_Materialfv
__glce_Materialfv:
    # Line 2710
    lw	$v0,4304($zero)
    # Line 2706
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2710
    sd	$v0,24($sp)
    # Line 2706
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2708
    lw	$at,4112($zero)
    # Line 2706
    addiu	$v1,$v1,29688
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2712
    # lw $t9, -17752($gp) # &glMaterialfv
    # Line 2708
    sd	$at,32($sp)
    # Line 2711
    lw	$at,6264($at)
    # Line 2706
    move	$s8,$a0
    # Line 2712
    jal	glMaterialfv
    # Line 2711
    sw	$at,4304($zero)
    # Line 2714
    ld	$a2,40($sp)
    # lw $t9, -17752($gp) # &glMaterialfv
    # Line 2713
    ld	$a3,32($sp)
    # Line 2714
    ld	$a1,48($sp)
    # Line 2713
    lw	$a3,10048($a3)
    # Line 2714
    move	$a0,$s8
    jal	glMaterialfv
    # Line 2713
    sw	$a3,4304($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2716
    ld	$gp,16($sp)
    # Line 2715
    ld	$a4,24($sp)
    # Line 2716
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2715
    sw	$a4,4304($zero)
.end __glce_Materialfv

# Function: __glce_Materiali
# Declared: Line 2721 (Source lines: 2722-2732)
# Address: 0x0da59c70 - 0x0da59cf4 (Size: 132 bytes, Frame: 192)
.globl __glce_Materiali
.ent __glce_Materiali
__glce_Materiali:
    # Line 2726
    lw	$v0,4308($zero)
    # Line 2722
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2726
    sd	$v0,24($sp)
    # Line 2722
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2724
    lw	$at,4112($zero)
    # Line 2722
    addiu	$v1,$v1,29544
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2728
    # lw $t9, -17748($gp) # &glMateriali
    # Line 2724
    sd	$at,32($sp)
    # Line 2727
    lw	$at,6268($at)
    # Line 2722
    move	$s8,$a0
    # Line 2728
    jal	glMateriali
    # Line 2727
    sw	$at,4308($zero)
    # Line 2730
    ld	$a2,40($sp)
    # lw $t9, -17748($gp) # &glMateriali
    # Line 2729
    ld	$a3,32($sp)
    # Line 2730
    ld	$a1,48($sp)
    # Line 2729
    lw	$a3,10052($a3)
    # Line 2730
    move	$a0,$s8
    jal	glMateriali
    # Line 2729
    sw	$a3,4308($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2732
    ld	$gp,16($sp)
    # Line 2731
    ld	$a4,24($sp)
    # Line 2732
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2731
    sw	$a4,4308($zero)
.end __glce_Materiali

# Function: __glce_Materialiv
# Declared: Line 2737 (Source lines: 2738-2748)
# Address: 0x0da59d00 - 0x0da59d84 (Size: 132 bytes, Frame: 192)
.globl __glce_Materialiv
.ent __glce_Materialiv
__glce_Materialiv:
    # Line 2742
    lw	$v0,4312($zero)
    # Line 2738
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2742
    sd	$v0,24($sp)
    # Line 2738
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2740
    lw	$at,4112($zero)
    # Line 2738
    addiu	$v1,$v1,29400
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2744
    # lw $t9, -17744($gp) # &glMaterialiv
    # Line 2740
    sd	$at,32($sp)
    # Line 2743
    lw	$at,6272($at)
    # Line 2738
    move	$s8,$a0
    # Line 2744
    jal	glMaterialiv
    # Line 2743
    sw	$at,4312($zero)
    # Line 2746
    ld	$a2,40($sp)
    # lw $t9, -17744($gp) # &glMaterialiv
    # Line 2745
    ld	$a3,32($sp)
    # Line 2746
    ld	$a1,48($sp)
    # Line 2745
    lw	$a3,10056($a3)
    # Line 2746
    move	$a0,$s8
    jal	glMaterialiv
    # Line 2745
    sw	$a3,4312($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2748
    ld	$gp,16($sp)
    # Line 2747
    ld	$a4,24($sp)
    # Line 2748
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2747
    sw	$a4,4312($zero)
.end __glce_Materialiv

# Function: __glce_PointSize
# Declared: Line 2753 (Source lines: 2754-2764)
# Address: 0x0da59d90 - 0x0da59e04 (Size: 116 bytes, Frame: 48)
.globl __glce_PointSize
.ent __glce_PointSize
__glce_PointSize:
    # Line 2758
    lw	$v0,4316($zero)
    # Line 2754
    addiu	$sp,$sp,-48
    # Line 2758
    sd	$v0,32($sp)
    # Line 2754
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 2756
    lw	$s8,4112($zero)
    # Line 2754
    addiu	$v1,$v1,29256
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2760
    # lw $t9, -17740($gp) # &glPointSize
    # Line 2754
    sdc1	$f30,0($sp)
    # Line 2759
    lw	$at,6276($s8)
    # Line 2754
    mov.s	$f30,$f12
    # Line 2760
    jal	glPointSize
    # Line 2759
    sw	$at,4316($zero)
    # Line 2762
    # lw $t9, -17740($gp) # &glPointSize
    # Line 2761
    lw	$a0,10060($s8)
    # Line 2762
    mov.s	$f12,$f30
    jal	glPointSize
    # Line 2761
    sw	$a0,4316($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2764
    ld	$gp,24($sp)
    # Line 2763
    ld	$a1,32($sp)
    # Line 2764
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2763
    sw	$a1,4316($zero)
.end __glce_PointSize

# Function: __glce_PolygonMode
# Declared: Line 2769 (Source lines: 2770-2780)
# Address: 0x0da59e10 - 0x0da59e8c (Size: 124 bytes, Frame: 48)
.globl __glce_PolygonMode
.ent __glce_PolygonMode
__glce_PolygonMode:
    # Line 2774
    lw	$v0,4320($zero)
    # Line 2770
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 2774
    sd	$v0,24($sp)
    # Line 2770
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2772
    lw	$at,4112($zero)
    # Line 2770
    addiu	$v1,$v1,29128
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2776
    # lw $t9, -17736($gp) # &glPolygonMode
    # Line 2772
    sd	$at,32($sp)
    # Line 2775
    lw	$at,6280($at)
    # Line 2770
    move	$s8,$a0
    # Line 2776
    jal	glPolygonMode
    # Line 2775
    sw	$at,4320($zero)
    # Line 2778
    # lw $t9, -17736($gp) # &glPolygonMode
    # Line 2777
    ld	$a2,32($sp)
    # Line 2778
    ld	$a1,40($sp)
    # Line 2777
    lw	$a2,10064($a2)
    # Line 2778
    move	$a0,$s8
    jal	glPolygonMode
    # Line 2777
    sw	$a2,4320($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2780
    ld	$gp,16($sp)
    # Line 2779
    ld	$a3,24($sp)
    # Line 2780
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2779
    sw	$a3,4320($zero)
.end __glce_PolygonMode

# Function: __glce_PolygonStipple
# Declared: Line 2785 (Source lines: 2786-2796)
# Address: 0x0da59e90 - 0x0da59f04 (Size: 116 bytes, Frame: 48)
.globl __glce_PolygonStipple
.ent __glce_PolygonStipple
__glce_PolygonStipple:
    # Line 2790
    lw	$v0,4324($zero)
    # Line 2786
    addiu	$sp,$sp,-48
    # Line 2790
    sd	$v0,24($sp)
    # Line 2786
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2788
    lw	$at,4112($zero)
    # Line 2786
    addiu	$v1,$v1,29000
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2792
    # lw $t9, -17732($gp) # &glPolygonStipple
    # Line 2788
    sd	$at,32($sp)
    # Line 2791
    lw	$at,6284($at)
    # Line 2786
    move	$s8,$a0
    # Line 2792
    jal	glPolygonStipple
    # Line 2791
    sw	$at,4324($zero)
    # Line 2794
    # lw $t9, -17732($gp) # &glPolygonStipple
    # Line 2793
    ld	$a1,32($sp)
    lw	$a1,10068($a1)
    # Line 2794
    move	$a0,$s8
    jal	glPolygonStipple
    # Line 2793
    sw	$a1,4324($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2796
    ld	$gp,16($sp)
    # Line 2795
    ld	$a2,24($sp)
    # Line 2796
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2795
    sw	$a2,4324($zero)
.end __glce_PolygonStipple

# Function: __glce_Scissor
# Declared: Line 2801 (Source lines: 2802-2812)
# Address: 0x0da59f10 - 0x0da59f9c (Size: 140 bytes, Frame: 192)
.globl __glce_Scissor
.ent __glce_Scissor
__glce_Scissor:
    # Line 2806
    lw	$v0,4328($zero)
    # Line 2802
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 2806
    sd	$v0,24($sp)
    # Line 2802
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2804
    lw	$at,4112($zero)
    # Line 2802
    addiu	$v1,$v1,28872
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2808
    # lw $t9, -17728($gp) # &glScissor
    # Line 2804
    sd	$at,32($sp)
    # Line 2807
    lw	$at,6288($at)
    # Line 2802
    move	$s8,$a0
    # Line 2808
    jal	glScissor
    # Line 2807
    sw	$at,4328($zero)
    # Line 2810
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17728($gp) # &glScissor
    # Line 2809
    ld	$a4,32($sp)
    # Line 2810
    ld	$a1,56($sp)
    # Line 2809
    lw	$a4,10072($a4)
    # Line 2810
    move	$a0,$s8
    jal	glScissor
    # Line 2809
    sw	$a4,4328($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2812
    ld	$gp,16($sp)
    # Line 2811
    ld	$a5,24($sp)
    # Line 2812
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2811
    sw	$a5,4328($zero)
.end __glce_Scissor

# Function: __glce_ShadeModel
# Declared: Line 2817 (Source lines: 2818-2828)
# Address: 0x0da59fa0 - 0x0da5a014 (Size: 116 bytes, Frame: 48)
.globl __glce_ShadeModel
.ent __glce_ShadeModel
__glce_ShadeModel:
    # Line 2822
    lw	$v0,4332($zero)
    # Line 2818
    addiu	$sp,$sp,-48
    # Line 2822
    sd	$v0,24($sp)
    # Line 2818
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2820
    lw	$at,4112($zero)
    # Line 2818
    addiu	$v1,$v1,28728
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2824
    # lw $t9, -17724($gp) # &glShadeModel
    # Line 2820
    sd	$at,32($sp)
    # Line 2823
    lw	$at,6292($at)
    # Line 2818
    move	$s8,$a0
    # Line 2824
    jal	glShadeModel
    # Line 2823
    sw	$at,4332($zero)
    # Line 2826
    # lw $t9, -17724($gp) # &glShadeModel
    # Line 2825
    ld	$a1,32($sp)
    lw	$a1,10076($a1)
    # Line 2826
    move	$a0,$s8
    jal	glShadeModel
    # Line 2825
    sw	$a1,4332($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2828
    ld	$gp,16($sp)
    # Line 2827
    ld	$a2,24($sp)
    # Line 2828
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2827
    sw	$a2,4332($zero)
.end __glce_ShadeModel

# Function: __glce_TexParameterf
# Declared: Line 2833 (Source lines: 2834-2844)
# Address: 0x0da5a020 - 0x0da5a0ac (Size: 140 bytes, Frame: 192)
.globl __glce_TexParameterf
.ent __glce_TexParameterf
__glce_TexParameterf:
    # Line 2838
    lw	$v0,4336($zero)
    # Line 2834
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 2838
    sd	$v0,32($sp)
    # Line 2834
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2836
    lw	$at,4112($zero)
    # Line 2834
    addiu	$v1,$v1,28600
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2840
    # lw $t9, -17720($gp) # &glTexParameterf
    # Line 2836
    sd	$at,40($sp)
    # Line 2839
    lw	$at,6296($at)
    # Line 2834
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 2840
    jal	glTexParameterf
    # Line 2839
    sw	$at,4336($zero)
    # Line 2842
    # lw $t9, -17720($gp) # &glTexParameterf
    # Line 2841
    ld	$a2,40($sp)
    # Line 2842
    ld	$a1,48($sp)
    # Line 2841
    lw	$a2,10080($a2)
    # Line 2842
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glTexParameterf
    # Line 2841
    sw	$a2,4336($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2844
    ld	$gp,24($sp)
    # Line 2843
    ld	$a3,32($sp)
    # Line 2844
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2843
    sw	$a3,4336($zero)
.end __glce_TexParameterf

# Function: __glce_TexParameterfv
# Declared: Line 2849 (Source lines: 2850-2860)
# Address: 0x0da5a0b0 - 0x0da5a134 (Size: 132 bytes, Frame: 192)
.globl __glce_TexParameterfv
.ent __glce_TexParameterfv
__glce_TexParameterfv:
    # Line 2854
    lw	$v0,4340($zero)
    # Line 2850
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2854
    sd	$v0,24($sp)
    # Line 2850
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2852
    lw	$at,4112($zero)
    # Line 2850
    addiu	$v1,$v1,28456
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2856
    # lw $t9, -17716($gp) # &glTexParameterfv
    # Line 2852
    sd	$at,32($sp)
    # Line 2855
    lw	$at,6300($at)
    # Line 2850
    move	$s8,$a0
    # Line 2856
    jal	glTexParameterfv
    # Line 2855
    sw	$at,4340($zero)
    # Line 2858
    ld	$a2,40($sp)
    # lw $t9, -17716($gp) # &glTexParameterfv
    # Line 2857
    ld	$a3,32($sp)
    # Line 2858
    ld	$a1,48($sp)
    # Line 2857
    lw	$a3,10084($a3)
    # Line 2858
    move	$a0,$s8
    jal	glTexParameterfv
    # Line 2857
    sw	$a3,4340($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2860
    ld	$gp,16($sp)
    # Line 2859
    ld	$a4,24($sp)
    # Line 2860
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2859
    sw	$a4,4340($zero)
.end __glce_TexParameterfv

# Function: __glce_TexParameteri
# Declared: Line 2865 (Source lines: 2866-2876)
# Address: 0x0da5a140 - 0x0da5a1c4 (Size: 132 bytes, Frame: 192)
.globl __glce_TexParameteri
.ent __glce_TexParameteri
__glce_TexParameteri:
    # Line 2870
    lw	$v0,4344($zero)
    # Line 2866
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2870
    sd	$v0,24($sp)
    # Line 2866
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2868
    lw	$at,4112($zero)
    # Line 2866
    addiu	$v1,$v1,28312
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2872
    # lw $t9, -17712($gp) # &glTexParameteri
    # Line 2868
    sd	$at,32($sp)
    # Line 2871
    lw	$at,6304($at)
    # Line 2866
    move	$s8,$a0
    # Line 2872
    jal	glTexParameteri
    # Line 2871
    sw	$at,4344($zero)
    # Line 2874
    ld	$a2,40($sp)
    # lw $t9, -17712($gp) # &glTexParameteri
    # Line 2873
    ld	$a3,32($sp)
    # Line 2874
    ld	$a1,48($sp)
    # Line 2873
    lw	$a3,10088($a3)
    # Line 2874
    move	$a0,$s8
    jal	glTexParameteri
    # Line 2873
    sw	$a3,4344($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2876
    ld	$gp,16($sp)
    # Line 2875
    ld	$a4,24($sp)
    # Line 2876
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2875
    sw	$a4,4344($zero)
.end __glce_TexParameteri

# Function: __glce_TexParameteriv
# Declared: Line 2881 (Source lines: 2882-2892)
# Address: 0x0da5a1d0 - 0x0da5a254 (Size: 132 bytes, Frame: 192)
.globl __glce_TexParameteriv
.ent __glce_TexParameteriv
__glce_TexParameteriv:
    # Line 2886
    lw	$v0,4348($zero)
    # Line 2882
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2886
    sd	$v0,24($sp)
    # Line 2882
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2884
    lw	$at,4112($zero)
    # Line 2882
    addiu	$v1,$v1,28168
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2888
    # lw $t9, -17708($gp) # &glTexParameteriv
    # Line 2884
    sd	$at,32($sp)
    # Line 2887
    lw	$at,6308($at)
    # Line 2882
    move	$s8,$a0
    # Line 2888
    jal	glTexParameteriv
    # Line 2887
    sw	$at,4348($zero)
    # Line 2890
    ld	$a2,40($sp)
    # lw $t9, -17708($gp) # &glTexParameteriv
    # Line 2889
    ld	$a3,32($sp)
    # Line 2890
    ld	$a1,48($sp)
    # Line 2889
    lw	$a3,10092($a3)
    # Line 2890
    move	$a0,$s8
    jal	glTexParameteriv
    # Line 2889
    sw	$a3,4348($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2892
    ld	$gp,16($sp)
    # Line 2891
    ld	$a4,24($sp)
    # Line 2892
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2891
    sw	$a4,4348($zero)
.end __glce_TexParameteriv

# Function: __glce_TexImage1D
# Declared: Line 2897 (Source lines: 2898-2908)
# Address: 0x0da5a260 - 0x0da5a30c (Size: 172 bytes, Frame: 224)
.globl __glce_TexImage1D
.ent __glce_TexImage1D
__glce_TexImage1D:
    # Line 2902
    lw	$v0,4352($zero)
    # Line 2898
    addiu	$sp,$sp,-96
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    # Line 2902
    sd	$v0,24($sp)
    # Line 2898
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2900
    lw	$at,4112($zero)
    # Line 2898
    addiu	$v1,$v1,28024
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2904
    # lw $t9, -17704($gp) # &glTexImage1D
    # Line 2900
    sd	$at,32($sp)
    # Line 2903
    lw	$at,6312($at)
    # Line 2898
    move	$s8,$a0
    # Line 2904
    jal	glTexImage1D
    # Line 2903
    sw	$at,4352($zero)
    # Line 2906
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # lw $t9, -17704($gp) # &glTexImage1D
    # Line 2905
    ld	$t0,32($sp)
    # Line 2906
    ld	$a1,88($sp)
    # Line 2905
    lw	$t0,10096($t0)
    # Line 2906
    move	$a0,$s8
    jal	glTexImage1D
    # Line 2905
    sw	$t0,4352($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2908
    ld	$gp,16($sp)
    # Line 2907
    ld	$t1,24($sp)
    # Line 2908
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2907
    sw	$t1,4352($zero)
.end __glce_TexImage1D

# Function: __glce_TexImage2D
# Declared: Line 2913 (Source lines: 2914-2924)
# Address: 0x0da5a310 - 0x0da5a3c4 (Size: 180 bytes, Frame: 176)
.globl __glce_TexImage2D
.ent __glce_TexImage2D
__glce_TexImage2D:
    # Line 2918
    lw	$t0,4356($zero)
    # Line 2914
    addiu	$sp,$sp,-176
    sd	$a7,48($sp)
    sd	$a6,56($sp)
    sd	$a5,64($sp)
    sd	$a4,72($sp)
    # Line 2918
    sd	$t0,32($sp)
    # Line 2914
    sd	$a3,80($sp)
    sd	$a2,88($sp)
    sd	$a1,96($sp)
    sd	$a0,104($sp)
    sd	$ra,16($sp)
    # Line 2916
    lw	$v0,4112($zero)
    sd	$v0,40($sp)
    # Line 2914
    lui	$v1,0x3
    # Line 2919
    lw	$v0,6316($v0)
    # Line 2914
    addiu	$v1,$v1,27848
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2920
    # lw $t9, -17700($gp) # &glTexImage2D
    # Line 2919
    sw	$v0,4356($zero)
    # Line 2920
    lw	$at,180($sp)
    jal	glTexImage2D
    sw	$at,4($sp)
    # Line 2922
    ld	$a7,48($sp)
    ld	$a6,56($sp)
    ld	$a5,64($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a2,88($sp)
    ld	$a1,96($sp)
    ld	$a0,104($sp)
    # Line 2921
    ld	$t2,40($sp)
    # Line 2922
    # lw $t9, -17700($gp) # &glTexImage2D
    # Line 2921
    lw	$t2,10100($t2)
    sw	$t2,4356($zero)
    # Line 2922
    lw	$t1,180($sp)
    jal	glTexImage2D
    sw	$t1,4($sp)
    ld	$ra,16($sp)
    # Line 2924
    ld	$gp,24($sp)
    # Line 2923
    ld	$t3,32($sp)
    # Line 2924
    addiu	$sp,$sp,176
    jr	$ra
    # Line 2923
    sw	$t3,4356($zero)
.end __glce_TexImage2D

# Function: __glce_TexEnvf
# Declared: Line 2929 (Source lines: 2930-2940)
# Address: 0x0da5a3d0 - 0x0da5a45c (Size: 140 bytes, Frame: 192)
.globl __glce_TexEnvf
.ent __glce_TexEnvf
__glce_TexEnvf:
    # Line 2934
    lw	$v0,4360($zero)
    # Line 2930
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 2934
    sd	$v0,32($sp)
    # Line 2930
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2932
    lw	$at,4112($zero)
    # Line 2930
    addiu	$v1,$v1,27656
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 2936
    # lw $t9, -17696($gp) # &glTexEnvf
    # Line 2932
    sd	$at,40($sp)
    # Line 2935
    lw	$at,6320($at)
    # Line 2930
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 2936
    jal	glTexEnvf
    # Line 2935
    sw	$at,4360($zero)
    # Line 2938
    # lw $t9, -17696($gp) # &glTexEnvf
    # Line 2937
    ld	$a2,40($sp)
    # Line 2938
    ld	$a1,48($sp)
    # Line 2937
    lw	$a2,10104($a2)
    # Line 2938
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glTexEnvf
    # Line 2937
    sw	$a2,4360($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 2940
    ld	$gp,24($sp)
    # Line 2939
    ld	$a3,32($sp)
    # Line 2940
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2939
    sw	$a3,4360($zero)
.end __glce_TexEnvf

# Function: __glce_TexEnvfv
# Declared: Line 2945 (Source lines: 2946-2956)
# Address: 0x0da5a460 - 0x0da5a4e4 (Size: 132 bytes, Frame: 192)
.globl __glce_TexEnvfv
.ent __glce_TexEnvfv
__glce_TexEnvfv:
    # Line 2950
    lw	$v0,4364($zero)
    # Line 2946
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2950
    sd	$v0,24($sp)
    # Line 2946
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2948
    lw	$at,4112($zero)
    # Line 2946
    addiu	$v1,$v1,27512
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2952
    # lw $t9, -17692($gp) # &glTexEnvfv
    # Line 2948
    sd	$at,32($sp)
    # Line 2951
    lw	$at,6324($at)
    # Line 2946
    move	$s8,$a0
    # Line 2952
    jal	glTexEnvfv
    # Line 2951
    sw	$at,4364($zero)
    # Line 2954
    ld	$a2,40($sp)
    # lw $t9, -17692($gp) # &glTexEnvfv
    # Line 2953
    ld	$a3,32($sp)
    # Line 2954
    ld	$a1,48($sp)
    # Line 2953
    lw	$a3,10108($a3)
    # Line 2954
    move	$a0,$s8
    jal	glTexEnvfv
    # Line 2953
    sw	$a3,4364($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2956
    ld	$gp,16($sp)
    # Line 2955
    ld	$a4,24($sp)
    # Line 2956
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2955
    sw	$a4,4364($zero)
.end __glce_TexEnvfv

# Function: __glce_TexEnvi
# Declared: Line 2961 (Source lines: 2962-2972)
# Address: 0x0da5a4f0 - 0x0da5a574 (Size: 132 bytes, Frame: 192)
.globl __glce_TexEnvi
.ent __glce_TexEnvi
__glce_TexEnvi:
    # Line 2966
    lw	$v0,4368($zero)
    # Line 2962
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2966
    sd	$v0,24($sp)
    # Line 2962
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2964
    lw	$at,4112($zero)
    # Line 2962
    addiu	$v1,$v1,27368
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2968
    # lw $t9, -17688($gp) # &glTexEnvi
    # Line 2964
    sd	$at,32($sp)
    # Line 2967
    lw	$at,6328($at)
    # Line 2962
    move	$s8,$a0
    # Line 2968
    jal	glTexEnvi
    # Line 2967
    sw	$at,4368($zero)
    # Line 2970
    ld	$a2,40($sp)
    # lw $t9, -17688($gp) # &glTexEnvi
    # Line 2969
    ld	$a3,32($sp)
    # Line 2970
    ld	$a1,48($sp)
    # Line 2969
    lw	$a3,10112($a3)
    # Line 2970
    move	$a0,$s8
    jal	glTexEnvi
    # Line 2969
    sw	$a3,4368($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2972
    ld	$gp,16($sp)
    # Line 2971
    ld	$a4,24($sp)
    # Line 2972
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2971
    sw	$a4,4368($zero)
.end __glce_TexEnvi

# Function: __glce_TexEnviv
# Declared: Line 2977 (Source lines: 2978-2988)
# Address: 0x0da5a580 - 0x0da5a604 (Size: 132 bytes, Frame: 192)
.globl __glce_TexEnviv
.ent __glce_TexEnviv
__glce_TexEnviv:
    # Line 2982
    lw	$v0,4372($zero)
    # Line 2978
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 2982
    sd	$v0,24($sp)
    # Line 2978
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 2980
    lw	$at,4112($zero)
    # Line 2978
    addiu	$v1,$v1,27224
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 2984
    # lw $t9, -17684($gp) # &glTexEnviv
    # Line 2980
    sd	$at,32($sp)
    # Line 2983
    lw	$at,6332($at)
    # Line 2978
    move	$s8,$a0
    # Line 2984
    jal	glTexEnviv
    # Line 2983
    sw	$at,4372($zero)
    # Line 2986
    ld	$a2,40($sp)
    # lw $t9, -17684($gp) # &glTexEnviv
    # Line 2985
    ld	$a3,32($sp)
    # Line 2986
    ld	$a1,48($sp)
    # Line 2985
    lw	$a3,10116($a3)
    # Line 2986
    move	$a0,$s8
    jal	glTexEnviv
    # Line 2985
    sw	$a3,4372($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 2988
    ld	$gp,16($sp)
    # Line 2987
    ld	$a4,24($sp)
    # Line 2988
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2987
    sw	$a4,4372($zero)
.end __glce_TexEnviv

# Function: __glce_TexGend
# Declared: Line 2993 (Source lines: 2994-3004)
# Address: 0x0da5a610 - 0x0da5a69c (Size: 140 bytes, Frame: 192)
.globl __glce_TexGend
.ent __glce_TexGend
__glce_TexGend:
    # Line 2998
    lw	$v0,4376($zero)
    # Line 2994
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 2998
    sd	$v0,32($sp)
    # Line 2994
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 2996
    lw	$at,4112($zero)
    # Line 2994
    addiu	$v1,$v1,27080
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3000
    # lw $t9, -17680($gp) # &glTexGend
    # Line 2996
    sd	$at,40($sp)
    # Line 2999
    lw	$at,6336($at)
    # Line 2994
    mov.d	$f30,$f14
    move	$s8,$a0
    # Line 3000
    jal	glTexGend
    # Line 2999
    sw	$at,4376($zero)
    # Line 3002
    # lw $t9, -17680($gp) # &glTexGend
    # Line 3001
    ld	$a2,40($sp)
    # Line 3002
    ld	$a1,48($sp)
    # Line 3001
    lw	$a2,10120($a2)
    # Line 3002
    mov.d	$f14,$f30
    move	$a0,$s8
    jal	glTexGend
    # Line 3001
    sw	$a2,4376($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3004
    ld	$gp,24($sp)
    # Line 3003
    ld	$a3,32($sp)
    # Line 3004
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3003
    sw	$a3,4376($zero)
.end __glce_TexGend

# Function: __glce_TexGendv
# Declared: Line 3009 (Source lines: 3010-3020)
# Address: 0x0da5a6a0 - 0x0da5a724 (Size: 132 bytes, Frame: 192)
.globl __glce_TexGendv
.ent __glce_TexGendv
__glce_TexGendv:
    # Line 3014
    lw	$v0,4380($zero)
    # Line 3010
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3014
    sd	$v0,24($sp)
    # Line 3010
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3012
    lw	$at,4112($zero)
    # Line 3010
    addiu	$v1,$v1,26936
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3016
    # lw $t9, -17676($gp) # &glTexGendv
    # Line 3012
    sd	$at,32($sp)
    # Line 3015
    lw	$at,6340($at)
    # Line 3010
    move	$s8,$a0
    # Line 3016
    jal	glTexGendv
    # Line 3015
    sw	$at,4380($zero)
    # Line 3018
    ld	$a2,40($sp)
    # lw $t9, -17676($gp) # &glTexGendv
    # Line 3017
    ld	$a3,32($sp)
    # Line 3018
    ld	$a1,48($sp)
    # Line 3017
    lw	$a3,10124($a3)
    # Line 3018
    move	$a0,$s8
    jal	glTexGendv
    # Line 3017
    sw	$a3,4380($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3020
    ld	$gp,16($sp)
    # Line 3019
    ld	$a4,24($sp)
    # Line 3020
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3019
    sw	$a4,4380($zero)
.end __glce_TexGendv

# Function: __glce_TexGenf
# Declared: Line 3025 (Source lines: 3026-3036)
# Address: 0x0da5a730 - 0x0da5a7bc (Size: 140 bytes, Frame: 192)
.globl __glce_TexGenf
.ent __glce_TexGenf
__glce_TexGenf:
    # Line 3030
    lw	$v0,4384($zero)
    # Line 3026
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 3030
    sd	$v0,32($sp)
    # Line 3026
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3028
    lw	$at,4112($zero)
    # Line 3026
    addiu	$v1,$v1,26792
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3032
    # lw $t9, -17672($gp) # &glTexGenf
    # Line 3028
    sd	$at,40($sp)
    # Line 3031
    lw	$at,6344($at)
    # Line 3026
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 3032
    jal	glTexGenf
    # Line 3031
    sw	$at,4384($zero)
    # Line 3034
    # lw $t9, -17672($gp) # &glTexGenf
    # Line 3033
    ld	$a2,40($sp)
    # Line 3034
    ld	$a1,48($sp)
    # Line 3033
    lw	$a2,10128($a2)
    # Line 3034
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glTexGenf
    # Line 3033
    sw	$a2,4384($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3036
    ld	$gp,24($sp)
    # Line 3035
    ld	$a3,32($sp)
    # Line 3036
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3035
    sw	$a3,4384($zero)
.end __glce_TexGenf

# Function: __glce_TexGenfv
# Declared: Line 3041 (Source lines: 3042-3052)
# Address: 0x0da5a7c0 - 0x0da5a844 (Size: 132 bytes, Frame: 192)
.globl __glce_TexGenfv
.ent __glce_TexGenfv
__glce_TexGenfv:
    # Line 3046
    lw	$v0,4388($zero)
    # Line 3042
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3046
    sd	$v0,24($sp)
    # Line 3042
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3044
    lw	$at,4112($zero)
    # Line 3042
    addiu	$v1,$v1,26648
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3048
    # lw $t9, -17668($gp) # &glTexGenfv
    # Line 3044
    sd	$at,32($sp)
    # Line 3047
    lw	$at,6348($at)
    # Line 3042
    move	$s8,$a0
    # Line 3048
    jal	glTexGenfv
    # Line 3047
    sw	$at,4388($zero)
    # Line 3050
    ld	$a2,40($sp)
    # lw $t9, -17668($gp) # &glTexGenfv
    # Line 3049
    ld	$a3,32($sp)
    # Line 3050
    ld	$a1,48($sp)
    # Line 3049
    lw	$a3,10132($a3)
    # Line 3050
    move	$a0,$s8
    jal	glTexGenfv
    # Line 3049
    sw	$a3,4388($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3052
    ld	$gp,16($sp)
    # Line 3051
    ld	$a4,24($sp)
    # Line 3052
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3051
    sw	$a4,4388($zero)
.end __glce_TexGenfv

# Function: __glce_TexGeni
# Declared: Line 3057 (Source lines: 3058-3068)
# Address: 0x0da5a850 - 0x0da5a8d4 (Size: 132 bytes, Frame: 192)
.globl __glce_TexGeni
.ent __glce_TexGeni
__glce_TexGeni:
    # Line 3062
    lw	$v0,4392($zero)
    # Line 3058
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3062
    sd	$v0,24($sp)
    # Line 3058
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3060
    lw	$at,4112($zero)
    # Line 3058
    addiu	$v1,$v1,26504
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3064
    # lw $t9, -17664($gp) # &glTexGeni
    # Line 3060
    sd	$at,32($sp)
    # Line 3063
    lw	$at,6352($at)
    # Line 3058
    move	$s8,$a0
    # Line 3064
    jal	glTexGeni
    # Line 3063
    sw	$at,4392($zero)
    # Line 3066
    ld	$a2,40($sp)
    # lw $t9, -17664($gp) # &glTexGeni
    # Line 3065
    ld	$a3,32($sp)
    # Line 3066
    ld	$a1,48($sp)
    # Line 3065
    lw	$a3,10136($a3)
    # Line 3066
    move	$a0,$s8
    jal	glTexGeni
    # Line 3065
    sw	$a3,4392($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3068
    ld	$gp,16($sp)
    # Line 3067
    ld	$a4,24($sp)
    # Line 3068
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3067
    sw	$a4,4392($zero)
.end __glce_TexGeni

# Function: __glce_TexGeniv
# Declared: Line 3073 (Source lines: 3074-3084)
# Address: 0x0da5a8e0 - 0x0da5a964 (Size: 132 bytes, Frame: 192)
.globl __glce_TexGeniv
.ent __glce_TexGeniv
__glce_TexGeniv:
    # Line 3078
    lw	$v0,4396($zero)
    # Line 3074
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3078
    sd	$v0,24($sp)
    # Line 3074
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3076
    lw	$at,4112($zero)
    # Line 3074
    addiu	$v1,$v1,26360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3080
    # lw $t9, -17660($gp) # &glTexGeniv
    # Line 3076
    sd	$at,32($sp)
    # Line 3079
    lw	$at,6356($at)
    # Line 3074
    move	$s8,$a0
    # Line 3080
    jal	glTexGeniv
    # Line 3079
    sw	$at,4396($zero)
    # Line 3082
    ld	$a2,40($sp)
    # lw $t9, -17660($gp) # &glTexGeniv
    # Line 3081
    ld	$a3,32($sp)
    # Line 3082
    ld	$a1,48($sp)
    # Line 3081
    lw	$a3,10140($a3)
    # Line 3082
    move	$a0,$s8
    jal	glTexGeniv
    # Line 3081
    sw	$a3,4396($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3084
    ld	$gp,16($sp)
    # Line 3083
    ld	$a4,24($sp)
    # Line 3084
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3083
    sw	$a4,4396($zero)
.end __glce_TexGeniv

# Function: __glce_FeedbackBuffer
# Declared: Line 3089 (Source lines: 3090-3098)
# Address: 0x0da5a970 - 0x0da5a9bc (Size: 76 bytes, Frame: 32)
.globl __glce_FeedbackBuffer
.ent __glce_FeedbackBuffer
__glce_FeedbackBuffer:
    # Line 3090
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3094
    lw	$s8,4400($zero)
    # Line 3090
    lui	$v0,0x3
    # Line 3095
    lw	$at,4112($zero)
    # Line 3090
    addiu	$v0,$v0,26216
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3096
    # lw $t9, -17656($gp) # &glFeedbackBuffer
    # Line 3090
    sd	$ra,0($sp)
    # Line 3095
    lw	$at,10144($at)
    # Line 3096
    jal	glFeedbackBuffer
    # Line 3095
    sw	$at,4400($zero)
    ld	$ra,0($sp)
    # Line 3098
    ld	$gp,16($sp)
    # Line 3097
    sw	$s8,4400($zero)
    # Line 3098
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_FeedbackBuffer

# Function: __glce_SelectBuffer
# Declared: Line 3103 (Source lines: 3104-3112)
# Address: 0x0da5a9c0 - 0x0da5aa0c (Size: 76 bytes, Frame: 32)
.globl __glce_SelectBuffer
.ent __glce_SelectBuffer
__glce_SelectBuffer:
    # Line 3104
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3108
    lw	$s8,4404($zero)
    # Line 3104
    lui	$v0,0x3
    # Line 3109
    lw	$at,4112($zero)
    # Line 3104
    addiu	$v0,$v0,26136
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3110
    # lw $t9, -17652($gp) # &glSelectBuffer
    # Line 3104
    sd	$ra,0($sp)
    # Line 3109
    lw	$at,10148($at)
    # Line 3110
    jal	glSelectBuffer
    # Line 3109
    sw	$at,4404($zero)
    ld	$ra,0($sp)
    # Line 3112
    ld	$gp,16($sp)
    # Line 3111
    sw	$s8,4404($zero)
    # Line 3112
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_SelectBuffer

# Function: __glce_RenderMode
# Declared: Line 3117 (Source lines: 3118-3127)
# Address: 0x0da5aa10 - 0x0da5aa5c (Size: 76 bytes, Frame: 32)
.globl __glce_RenderMode
.ent __glce_RenderMode
__glce_RenderMode:
    # Line 3118
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3123
    lw	$s8,4408($zero)
    # Line 3118
    lui	$v0,0x3
    # Line 3124
    lw	$at,4112($zero)
    # Line 3118
    addiu	$v0,$v0,26056
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3125
    # lw $t9, -17648($gp) # &glRenderMode
    # Line 3118
    sd	$ra,0($sp)
    # Line 3124
    lw	$at,10152($at)
    # Line 3125
    jal	glRenderMode
    # Line 3124
    sw	$at,4408($zero)
    ld	$ra,0($sp)
    # Line 3127
    ld	$gp,16($sp)
    # Line 3126
    sw	$s8,4408($zero)
    # Line 3127
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_RenderMode

# Function: __glce_InitNames
# Declared: Line 3133 (Source lines: 3134-3144)
# Address: 0x0da5aa60 - 0x0da5aac4 (Size: 100 bytes, Frame: 32)
.globl __glce_InitNames
.ent __glce_InitNames
__glce_InitNames:
    # Line 3138
    lw	$v0,4412($zero)
    # Line 3134
    addiu	$sp,$sp,-32
    # Line 3138
    sd	$v0,24($sp)
    # Line 3134
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3136
    lw	$s8,4112($zero)
    # Line 3134
    addiu	$v1,$v1,25976
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3140
    # lw $t9, -17644($gp) # &glInitNames
    # Line 3134
    sd	$ra,0($sp)
    # Line 3139
    lw	$at,6372($s8)
    # Line 3140
    jal	glInitNames
    # Line 3139
    sw	$at,4412($zero)
    # Line 3142
    # lw $t9, -17644($gp) # &glInitNames
    # Line 3141
    lw	$a0,10156($s8)
    # Line 3142
    jal	glInitNames
    # Line 3141
    sw	$a0,4412($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3144
    ld	$gp,16($sp)
    # Line 3143
    ld	$a1,24($sp)
    # Line 3144
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3143
    sw	$a1,4412($zero)
.end __glce_InitNames

# Function: __glce_LoadName
# Declared: Line 3149 (Source lines: 3150-3160)
# Address: 0x0da5aad0 - 0x0da5ab44 (Size: 116 bytes, Frame: 48)
.globl __glce_LoadName
.ent __glce_LoadName
__glce_LoadName:
    # Line 3154
    lw	$v0,4416($zero)
    # Line 3150
    addiu	$sp,$sp,-48
    # Line 3154
    sd	$v0,24($sp)
    # Line 3150
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3152
    lw	$at,4112($zero)
    # Line 3150
    addiu	$v1,$v1,25864
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3156
    # lw $t9, -17640($gp) # &glLoadName
    # Line 3152
    sd	$at,32($sp)
    # Line 3155
    lw	$at,6376($at)
    # Line 3150
    move	$s8,$a0
    # Line 3156
    jal	glLoadName
    # Line 3155
    sw	$at,4416($zero)
    # Line 3158
    # lw $t9, -17640($gp) # &glLoadName
    # Line 3157
    ld	$a1,32($sp)
    lw	$a1,10160($a1)
    # Line 3158
    move	$a0,$s8
    jal	glLoadName
    # Line 3157
    sw	$a1,4416($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3160
    ld	$gp,16($sp)
    # Line 3159
    ld	$a2,24($sp)
    # Line 3160
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3159
    sw	$a2,4416($zero)
.end __glce_LoadName

# Function: __glce_PassThrough
# Declared: Line 3165 (Source lines: 3166-3176)
# Address: 0x0da5ab50 - 0x0da5abc4 (Size: 116 bytes, Frame: 48)
.globl __glce_PassThrough
.ent __glce_PassThrough
__glce_PassThrough:
    # Line 3170
    lw	$v0,4420($zero)
    # Line 3166
    addiu	$sp,$sp,-48
    # Line 3170
    sd	$v0,32($sp)
    # Line 3166
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 3168
    lw	$s8,4112($zero)
    # Line 3166
    addiu	$v1,$v1,25736
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3172
    # lw $t9, -17636($gp) # &glPassThrough
    # Line 3166
    sdc1	$f30,0($sp)
    # Line 3171
    lw	$at,6380($s8)
    # Line 3166
    mov.s	$f30,$f12
    # Line 3172
    jal	glPassThrough
    # Line 3171
    sw	$at,4420($zero)
    # Line 3174
    # lw $t9, -17636($gp) # &glPassThrough
    # Line 3173
    lw	$a0,10164($s8)
    # Line 3174
    mov.s	$f12,$f30
    jal	glPassThrough
    # Line 3173
    sw	$a0,4420($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3176
    ld	$gp,24($sp)
    # Line 3175
    ld	$a1,32($sp)
    # Line 3176
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3175
    sw	$a1,4420($zero)
.end __glce_PassThrough

# Function: __glce_PopName
# Declared: Line 3181 (Source lines: 3182-3192)
# Address: 0x0da5abd0 - 0x0da5ac34 (Size: 100 bytes, Frame: 32)
.globl __glce_PopName
.ent __glce_PopName
__glce_PopName:
    # Line 3186
    lw	$v0,4424($zero)
    # Line 3182
    addiu	$sp,$sp,-32
    # Line 3186
    sd	$v0,24($sp)
    # Line 3182
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3184
    lw	$s8,4112($zero)
    # Line 3182
    addiu	$v1,$v1,25608
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3188
    # lw $t9, -17632($gp) # &glPopName
    # Line 3182
    sd	$ra,0($sp)
    # Line 3187
    lw	$at,6384($s8)
    # Line 3188
    jal	glPopName
    # Line 3187
    sw	$at,4424($zero)
    # Line 3190
    # lw $t9, -17632($gp) # &glPopName
    # Line 3189
    lw	$a0,10168($s8)
    # Line 3190
    jal	glPopName
    # Line 3189
    sw	$a0,4424($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3192
    ld	$gp,16($sp)
    # Line 3191
    ld	$a1,24($sp)
    # Line 3192
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3191
    sw	$a1,4424($zero)
.end __glce_PopName

# Function: __glce_PushName
# Declared: Line 3197 (Source lines: 3198-3208)
# Address: 0x0da5ac40 - 0x0da5acb4 (Size: 116 bytes, Frame: 48)
.globl __glce_PushName
.ent __glce_PushName
__glce_PushName:
    # Line 3202
    lw	$v0,4428($zero)
    # Line 3198
    addiu	$sp,$sp,-48
    # Line 3202
    sd	$v0,24($sp)
    # Line 3198
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3200
    lw	$at,4112($zero)
    # Line 3198
    addiu	$v1,$v1,25496
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3204
    # lw $t9, -17628($gp) # &glPushName
    # Line 3200
    sd	$at,32($sp)
    # Line 3203
    lw	$at,6388($at)
    # Line 3198
    move	$s8,$a0
    # Line 3204
    jal	glPushName
    # Line 3203
    sw	$at,4428($zero)
    # Line 3206
    # lw $t9, -17628($gp) # &glPushName
    # Line 3205
    ld	$a1,32($sp)
    lw	$a1,10172($a1)
    # Line 3206
    move	$a0,$s8
    jal	glPushName
    # Line 3205
    sw	$a1,4428($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3208
    ld	$gp,16($sp)
    # Line 3207
    ld	$a2,24($sp)
    # Line 3208
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3207
    sw	$a2,4428($zero)
.end __glce_PushName

# Function: __glce_DrawBuffer
# Declared: Line 3213 (Source lines: 3214-3224)
# Address: 0x0da5acc0 - 0x0da5ad34 (Size: 116 bytes, Frame: 48)
.globl __glce_DrawBuffer
.ent __glce_DrawBuffer
__glce_DrawBuffer:
    # Line 3218
    lw	$v0,4432($zero)
    # Line 3214
    addiu	$sp,$sp,-48
    # Line 3218
    sd	$v0,24($sp)
    # Line 3214
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3216
    lw	$at,4112($zero)
    # Line 3214
    addiu	$v1,$v1,25368
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3220
    # lw $t9, -17624($gp) # &glDrawBuffer
    # Line 3216
    sd	$at,32($sp)
    # Line 3219
    lw	$at,6392($at)
    # Line 3214
    move	$s8,$a0
    # Line 3220
    jal	glDrawBuffer
    # Line 3219
    sw	$at,4432($zero)
    # Line 3222
    # lw $t9, -17624($gp) # &glDrawBuffer
    # Line 3221
    ld	$a1,32($sp)
    lw	$a1,10176($a1)
    # Line 3222
    move	$a0,$s8
    jal	glDrawBuffer
    # Line 3221
    sw	$a1,4432($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3224
    ld	$gp,16($sp)
    # Line 3223
    ld	$a2,24($sp)
    # Line 3224
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3223
    sw	$a2,4432($zero)
.end __glce_DrawBuffer

# Function: __glce_Clear
# Declared: Line 3229 (Source lines: 3230-3240)
# Address: 0x0da5ad40 - 0x0da5adb4 (Size: 116 bytes, Frame: 48)
.globl __glce_Clear
.ent __glce_Clear
__glce_Clear:
    # Line 3234
    lw	$v0,4436($zero)
    # Line 3230
    addiu	$sp,$sp,-48
    # Line 3234
    sd	$v0,24($sp)
    # Line 3230
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3232
    lw	$at,4112($zero)
    # Line 3230
    addiu	$v1,$v1,25240
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3236
    # lw $t9, -17620($gp) # &glClear
    # Line 3232
    sd	$at,32($sp)
    # Line 3235
    lw	$at,6396($at)
    # Line 3230
    move	$s8,$a0
    # Line 3236
    jal	glClear
    # Line 3235
    sw	$at,4436($zero)
    # Line 3238
    # lw $t9, -17620($gp) # &glClear
    # Line 3237
    ld	$a1,32($sp)
    lw	$a1,10180($a1)
    # Line 3238
    move	$a0,$s8
    jal	glClear
    # Line 3237
    sw	$a1,4436($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3240
    ld	$gp,16($sp)
    # Line 3239
    ld	$a2,24($sp)
    # Line 3240
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3239
    sw	$a2,4436($zero)
.end __glce_Clear

# Function: __glce_ClearAccum
# Declared: Line 3245 (Source lines: 3246-3256)
# Address: 0x0da5adc0 - 0x0da5ae4c (Size: 140 bytes, Frame: 192)
.globl __glce_ClearAccum
.ent __glce_ClearAccum
__glce_ClearAccum:
    # Line 3250
    lw	$v0,4440($zero)
    # Line 3246
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 3250
    sd	$v0,56($sp)
    # Line 3246
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x3
    # Line 3248
    lw	$s8,4112($zero)
    # Line 3246
    addiu	$v1,$v1,25112
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 3252
    # lw $t9, -17616($gp) # &glClearAccum
    # Line 3246
    sdc1	$f30,0($sp)
    # Line 3251
    lw	$at,6400($s8)
    # Line 3246
    mov.s	$f30,$f12
    # Line 3252
    jal	glClearAccum
    # Line 3251
    sw	$at,4440($zero)
    # Line 3254
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17616($gp) # &glClearAccum
    ldc1	$f13,24($sp)
    # Line 3253
    lw	$a0,10184($s8)
    # Line 3254
    mov.s	$f12,$f30
    jal	glClearAccum
    # Line 3253
    sw	$a0,4440($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 3256
    ld	$gp,48($sp)
    # Line 3255
    ld	$a1,56($sp)
    # Line 3256
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3255
    sw	$a1,4440($zero)
.end __glce_ClearAccum

# Function: __glce_ClearIndex
# Declared: Line 3261 (Source lines: 3262-3272)
# Address: 0x0da5ae50 - 0x0da5aec4 (Size: 116 bytes, Frame: 48)
.globl __glce_ClearIndex
.ent __glce_ClearIndex
__glce_ClearIndex:
    # Line 3266
    lw	$v0,4444($zero)
    # Line 3262
    addiu	$sp,$sp,-48
    # Line 3266
    sd	$v0,32($sp)
    # Line 3262
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 3264
    lw	$s8,4112($zero)
    # Line 3262
    addiu	$v1,$v1,24968
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3268
    # lw $t9, -17612($gp) # &glClearIndex
    # Line 3262
    sdc1	$f30,0($sp)
    # Line 3267
    lw	$at,6404($s8)
    # Line 3262
    mov.s	$f30,$f12
    # Line 3268
    jal	glClearIndex
    # Line 3267
    sw	$at,4444($zero)
    # Line 3270
    # lw $t9, -17612($gp) # &glClearIndex
    # Line 3269
    lw	$a0,10188($s8)
    # Line 3270
    mov.s	$f12,$f30
    jal	glClearIndex
    # Line 3269
    sw	$a0,4444($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3272
    ld	$gp,24($sp)
    # Line 3271
    ld	$a1,32($sp)
    # Line 3272
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3271
    sw	$a1,4444($zero)
.end __glce_ClearIndex

# Function: __glce_ClearColor
# Declared: Line 3277 (Source lines: 3278-3288)
# Address: 0x0da5aed0 - 0x0da5af5c (Size: 140 bytes, Frame: 192)
.globl __glce_ClearColor
.ent __glce_ClearColor
__glce_ClearColor:
    # Line 3282
    lw	$v0,4448($zero)
    # Line 3278
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 3282
    sd	$v0,56($sp)
    # Line 3278
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x3
    # Line 3280
    lw	$s8,4112($zero)
    # Line 3278
    addiu	$v1,$v1,24840
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 3284
    # lw $t9, -17608($gp) # &glClearColor
    # Line 3278
    sdc1	$f30,0($sp)
    # Line 3283
    lw	$at,6408($s8)
    # Line 3278
    mov.s	$f30,$f12
    # Line 3284
    jal	glClearColor
    # Line 3283
    sw	$at,4448($zero)
    # Line 3286
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17608($gp) # &glClearColor
    ldc1	$f13,24($sp)
    # Line 3285
    lw	$a0,10192($s8)
    # Line 3286
    mov.s	$f12,$f30
    jal	glClearColor
    # Line 3285
    sw	$a0,4448($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 3288
    ld	$gp,48($sp)
    # Line 3287
    ld	$a1,56($sp)
    # Line 3288
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3287
    sw	$a1,4448($zero)
.end __glce_ClearColor

# Function: __glce_ClearStencil
# Declared: Line 3293 (Source lines: 3294-3304)
# Address: 0x0da5af60 - 0x0da5afd4 (Size: 116 bytes, Frame: 48)
.globl __glce_ClearStencil
.ent __glce_ClearStencil
__glce_ClearStencil:
    # Line 3298
    lw	$v0,4452($zero)
    # Line 3294
    addiu	$sp,$sp,-48
    # Line 3298
    sd	$v0,24($sp)
    # Line 3294
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3296
    lw	$at,4112($zero)
    # Line 3294
    addiu	$v1,$v1,24696
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3300
    # lw $t9, -17604($gp) # &glClearStencil
    # Line 3296
    sd	$at,32($sp)
    # Line 3299
    lw	$at,6412($at)
    # Line 3294
    move	$s8,$a0
    # Line 3300
    jal	glClearStencil
    # Line 3299
    sw	$at,4452($zero)
    # Line 3302
    # lw $t9, -17604($gp) # &glClearStencil
    # Line 3301
    ld	$a1,32($sp)
    lw	$a1,10196($a1)
    # Line 3302
    move	$a0,$s8
    jal	glClearStencil
    # Line 3301
    sw	$a1,4452($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3304
    ld	$gp,16($sp)
    # Line 3303
    ld	$a2,24($sp)
    # Line 3304
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3303
    sw	$a2,4452($zero)
.end __glce_ClearStencil

# Function: __glce_ClearDepth
# Declared: Line 3309 (Source lines: 3310-3320)
# Address: 0x0da5afe0 - 0x0da5b054 (Size: 116 bytes, Frame: 48)
.globl __glce_ClearDepth
.ent __glce_ClearDepth
__glce_ClearDepth:
    # Line 3314
    lw	$v0,4456($zero)
    # Line 3310
    addiu	$sp,$sp,-48
    # Line 3314
    sd	$v0,32($sp)
    # Line 3310
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 3312
    lw	$s8,4112($zero)
    # Line 3310
    addiu	$v1,$v1,24568
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3316
    # lw $t9, -17600($gp) # &glClearDepth
    # Line 3310
    sdc1	$f30,0($sp)
    # Line 3315
    lw	$at,6416($s8)
    # Line 3310
    mov.d	$f30,$f12
    # Line 3316
    jal	glClearDepth
    # Line 3315
    sw	$at,4456($zero)
    # Line 3318
    # lw $t9, -17600($gp) # &glClearDepth
    # Line 3317
    lw	$a0,10200($s8)
    # Line 3318
    mov.d	$f12,$f30
    jal	glClearDepth
    # Line 3317
    sw	$a0,4456($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3320
    ld	$gp,24($sp)
    # Line 3319
    ld	$a1,32($sp)
    # Line 3320
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3319
    sw	$a1,4456($zero)
.end __glce_ClearDepth

# Function: __glce_StencilMask
# Declared: Line 3325 (Source lines: 3326-3336)
# Address: 0x0da5b060 - 0x0da5b0d4 (Size: 116 bytes, Frame: 48)
.globl __glce_StencilMask
.ent __glce_StencilMask
__glce_StencilMask:
    # Line 3330
    lw	$v0,4460($zero)
    # Line 3326
    addiu	$sp,$sp,-48
    # Line 3330
    sd	$v0,24($sp)
    # Line 3326
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3328
    lw	$at,4112($zero)
    # Line 3326
    addiu	$v1,$v1,24440
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3332
    # lw $t9, -17596($gp) # &glStencilMask
    # Line 3328
    sd	$at,32($sp)
    # Line 3331
    lw	$at,6420($at)
    # Line 3326
    move	$s8,$a0
    # Line 3332
    jal	glStencilMask
    # Line 3331
    sw	$at,4460($zero)
    # Line 3334
    # lw $t9, -17596($gp) # &glStencilMask
    # Line 3333
    ld	$a1,32($sp)
    lw	$a1,10204($a1)
    # Line 3334
    move	$a0,$s8
    jal	glStencilMask
    # Line 3333
    sw	$a1,4460($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3336
    ld	$gp,16($sp)
    # Line 3335
    ld	$a2,24($sp)
    # Line 3336
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3335
    sw	$a2,4460($zero)
.end __glce_StencilMask

# Function: __glce_ColorMask
# Declared: Line 3341 (Source lines: 3342-3352)
# Address: 0x0da5b0e0 - 0x0da5b16c (Size: 140 bytes, Frame: 192)
.globl __glce_ColorMask
.ent __glce_ColorMask
__glce_ColorMask:
    # Line 3346
    lw	$v0,4464($zero)
    # Line 3342
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 3346
    sd	$v0,24($sp)
    # Line 3342
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3344
    lw	$at,4112($zero)
    # Line 3342
    addiu	$v1,$v1,24312
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3348
    # lw $t9, -17592($gp) # &glColorMask
    # Line 3344
    sd	$at,32($sp)
    # Line 3347
    lw	$at,6424($at)
    # Line 3342
    move	$s8,$a0
    # Line 3348
    jal	glColorMask
    # Line 3347
    sw	$at,4464($zero)
    # Line 3350
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17592($gp) # &glColorMask
    # Line 3349
    ld	$a4,32($sp)
    # Line 3350
    ld	$a1,56($sp)
    # Line 3349
    lw	$a4,10208($a4)
    # Line 3350
    move	$a0,$s8
    jal	glColorMask
    # Line 3349
    sw	$a4,4464($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3352
    ld	$gp,16($sp)
    # Line 3351
    ld	$a5,24($sp)
    # Line 3352
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3351
    sw	$a5,4464($zero)
.end __glce_ColorMask

# Function: __glce_DepthMask
# Declared: Line 3357 (Source lines: 3358-3368)
# Address: 0x0da5b170 - 0x0da5b1e4 (Size: 116 bytes, Frame: 48)
.globl __glce_DepthMask
.ent __glce_DepthMask
__glce_DepthMask:
    # Line 3362
    lw	$v0,4468($zero)
    # Line 3358
    addiu	$sp,$sp,-48
    # Line 3362
    sd	$v0,24($sp)
    # Line 3358
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3360
    lw	$at,4112($zero)
    # Line 3358
    addiu	$v1,$v1,24168
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3364
    # lw $t9, -17588($gp) # &glDepthMask
    # Line 3360
    sd	$at,32($sp)
    # Line 3363
    lw	$at,6428($at)
    # Line 3358
    move	$s8,$a0
    # Line 3364
    jal	glDepthMask
    # Line 3363
    sw	$at,4468($zero)
    # Line 3366
    # lw $t9, -17588($gp) # &glDepthMask
    # Line 3365
    ld	$a1,32($sp)
    lw	$a1,10212($a1)
    # Line 3366
    move	$a0,$s8
    jal	glDepthMask
    # Line 3365
    sw	$a1,4468($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3368
    ld	$gp,16($sp)
    # Line 3367
    ld	$a2,24($sp)
    # Line 3368
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3367
    sw	$a2,4468($zero)
.end __glce_DepthMask

# Function: __glce_IndexMask
# Declared: Line 3373 (Source lines: 3374-3384)
# Address: 0x0da5b1f0 - 0x0da5b264 (Size: 116 bytes, Frame: 48)
.globl __glce_IndexMask
.ent __glce_IndexMask
__glce_IndexMask:
    # Line 3378
    lw	$v0,4472($zero)
    # Line 3374
    addiu	$sp,$sp,-48
    # Line 3378
    sd	$v0,24($sp)
    # Line 3374
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3376
    lw	$at,4112($zero)
    # Line 3374
    addiu	$v1,$v1,24040
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3380
    # lw $t9, -17584($gp) # &glIndexMask
    # Line 3376
    sd	$at,32($sp)
    # Line 3379
    lw	$at,6432($at)
    # Line 3374
    move	$s8,$a0
    # Line 3380
    jal	glIndexMask
    # Line 3379
    sw	$at,4472($zero)
    # Line 3382
    # lw $t9, -17584($gp) # &glIndexMask
    # Line 3381
    ld	$a1,32($sp)
    lw	$a1,10216($a1)
    # Line 3382
    move	$a0,$s8
    jal	glIndexMask
    # Line 3381
    sw	$a1,4472($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3384
    ld	$gp,16($sp)
    # Line 3383
    ld	$a2,24($sp)
    # Line 3384
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3383
    sw	$a2,4472($zero)
.end __glce_IndexMask

# Function: __glce_Accum
# Declared: Line 3389 (Source lines: 3390-3400)
# Address: 0x0da5b270 - 0x0da5b2f4 (Size: 132 bytes, Frame: 48)
.globl __glce_Accum
.ent __glce_Accum
__glce_Accum:
    # Line 3394
    lw	$v0,4476($zero)
    # Line 3390
    addiu	$sp,$sp,-48
    # Line 3394
    sd	$v0,32($sp)
    # Line 3390
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3392
    lw	$at,4112($zero)
    # Line 3390
    addiu	$v1,$v1,23912
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3396
    # lw $t9, -17580($gp) # &glAccum
    # Line 3392
    sd	$at,40($sp)
    # Line 3395
    lw	$at,6436($at)
    # Line 3390
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 3396
    jal	glAccum
    # Line 3395
    sw	$at,4476($zero)
    # Line 3398
    # lw $t9, -17580($gp) # &glAccum
    # Line 3397
    ld	$a1,40($sp)
    lw	$a1,10220($a1)
    # Line 3398
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glAccum
    # Line 3397
    sw	$a1,4476($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3400
    ld	$gp,24($sp)
    # Line 3399
    ld	$a2,32($sp)
    # Line 3400
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3399
    sw	$a2,4476($zero)
.end __glce_Accum

# Function: __glce_Disable
# Declared: Line 3405 (Source lines: 3406-3416)
# Address: 0x0da5b300 - 0x0da5b374 (Size: 116 bytes, Frame: 48)
.globl __glce_Disable
.ent __glce_Disable
__glce_Disable:
    # Line 3410
    lw	$v0,4480($zero)
    # Line 3406
    addiu	$sp,$sp,-48
    # Line 3410
    sd	$v0,24($sp)
    # Line 3406
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3408
    lw	$at,4112($zero)
    # Line 3406
    addiu	$v1,$v1,23768
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3412
    # lw $t9, -17576($gp) # &glDisable
    # Line 3408
    sd	$at,32($sp)
    # Line 3411
    lw	$at,6440($at)
    # Line 3406
    move	$s8,$a0
    # Line 3412
    jal	glDisable
    # Line 3411
    sw	$at,4480($zero)
    # Line 3414
    # lw $t9, -17576($gp) # &glDisable
    # Line 3413
    ld	$a1,32($sp)
    lw	$a1,10224($a1)
    # Line 3414
    move	$a0,$s8
    jal	glDisable
    # Line 3413
    sw	$a1,4480($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3416
    ld	$gp,16($sp)
    # Line 3415
    ld	$a2,24($sp)
    # Line 3416
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3415
    sw	$a2,4480($zero)
.end __glce_Disable

# Function: __glce_Enable
# Declared: Line 3421 (Source lines: 3422-3432)
# Address: 0x0da5b380 - 0x0da5b3f4 (Size: 116 bytes, Frame: 48)
.globl __glce_Enable
.ent __glce_Enable
__glce_Enable:
    # Line 3426
    lw	$v0,4484($zero)
    # Line 3422
    addiu	$sp,$sp,-48
    # Line 3426
    sd	$v0,24($sp)
    # Line 3422
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3424
    lw	$at,4112($zero)
    # Line 3422
    addiu	$v1,$v1,23640
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3428
    # lw $t9, -17572($gp) # &glEnable
    # Line 3424
    sd	$at,32($sp)
    # Line 3427
    lw	$at,6444($at)
    # Line 3422
    move	$s8,$a0
    # Line 3428
    jal	glEnable
    # Line 3427
    sw	$at,4484($zero)
    # Line 3430
    # lw $t9, -17572($gp) # &glEnable
    # Line 3429
    ld	$a1,32($sp)
    lw	$a1,10228($a1)
    # Line 3430
    move	$a0,$s8
    jal	glEnable
    # Line 3429
    sw	$a1,4484($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3432
    ld	$gp,16($sp)
    # Line 3431
    ld	$a2,24($sp)
    # Line 3432
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3431
    sw	$a2,4484($zero)
.end __glce_Enable

# Function: __glce_Finish
# Declared: Line 3437 (Source lines: 3438-3446)
# Address: 0x0da5b400 - 0x0da5b44c (Size: 76 bytes, Frame: 32)
.globl __glce_Finish
.ent __glce_Finish
__glce_Finish:
    # Line 3438
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3442
    lw	$s8,4488($zero)
    # Line 3438
    lui	$v0,0x3
    # Line 3443
    lw	$at,4112($zero)
    # Line 3438
    addiu	$v0,$v0,23512
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3444
    # lw $t9, -17568($gp) # &glFinish
    # Line 3438
    sd	$ra,0($sp)
    # Line 3443
    lw	$at,10232($at)
    # Line 3444
    jal	glFinish
    # Line 3443
    sw	$at,4488($zero)
    ld	$ra,0($sp)
    # Line 3446
    ld	$gp,16($sp)
    # Line 3445
    sw	$s8,4488($zero)
    # Line 3446
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_Finish

# Function: __glce_Flush
# Declared: Line 3451 (Source lines: 3452-3460)
# Address: 0x0da5b450 - 0x0da5b49c (Size: 76 bytes, Frame: 32)
.globl __glce_Flush
.ent __glce_Flush
__glce_Flush:
    # Line 3452
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3456
    lw	$s8,4492($zero)
    # Line 3452
    lui	$v0,0x3
    # Line 3457
    lw	$at,4112($zero)
    # Line 3452
    addiu	$v0,$v0,23432
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3458
    # lw $t9, -17564($gp) # &glFlush
    # Line 3452
    sd	$ra,0($sp)
    # Line 3457
    lw	$at,10236($at)
    # Line 3458
    jal	glFlush
    # Line 3457
    sw	$at,4492($zero)
    ld	$ra,0($sp)
    # Line 3460
    ld	$gp,16($sp)
    # Line 3459
    sw	$s8,4492($zero)
    # Line 3460
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_Flush

# Function: __glce_PopAttrib
# Declared: Line 3465 (Source lines: 3466-3476)
# Address: 0x0da5b4a0 - 0x0da5b504 (Size: 100 bytes, Frame: 32)
.globl __glce_PopAttrib
.ent __glce_PopAttrib
__glce_PopAttrib:
    # Line 3470
    lw	$v0,4496($zero)
    # Line 3466
    addiu	$sp,$sp,-32
    # Line 3470
    sd	$v0,24($sp)
    # Line 3466
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3468
    lw	$s8,4112($zero)
    # Line 3466
    addiu	$v1,$v1,23352
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3472
    # lw $t9, -17560($gp) # &glPopAttrib
    # Line 3466
    sd	$ra,0($sp)
    # Line 3471
    lw	$at,6456($s8)
    # Line 3472
    jal	glPopAttrib
    # Line 3471
    sw	$at,4496($zero)
    # Line 3474
    # lw $t9, -17560($gp) # &glPopAttrib
    # Line 3473
    lw	$a0,10240($s8)
    # Line 3474
    jal	glPopAttrib
    # Line 3473
    sw	$a0,4496($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3476
    ld	$gp,16($sp)
    # Line 3475
    ld	$a1,24($sp)
    # Line 3476
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3475
    sw	$a1,4496($zero)
.end __glce_PopAttrib

# Function: __glce_PushAttrib
# Declared: Line 3481 (Source lines: 3482-3492)
# Address: 0x0da5b510 - 0x0da5b584 (Size: 116 bytes, Frame: 48)
.globl __glce_PushAttrib
.ent __glce_PushAttrib
__glce_PushAttrib:
    # Line 3486
    lw	$v0,4500($zero)
    # Line 3482
    addiu	$sp,$sp,-48
    # Line 3486
    sd	$v0,24($sp)
    # Line 3482
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3484
    lw	$at,4112($zero)
    # Line 3482
    addiu	$v1,$v1,23240
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3488
    # lw $t9, -17556($gp) # &glPushAttrib
    # Line 3484
    sd	$at,32($sp)
    # Line 3487
    lw	$at,6460($at)
    # Line 3482
    move	$s8,$a0
    # Line 3488
    jal	glPushAttrib
    # Line 3487
    sw	$at,4500($zero)
    # Line 3490
    # lw $t9, -17556($gp) # &glPushAttrib
    # Line 3489
    ld	$a1,32($sp)
    lw	$a1,10244($a1)
    # Line 3490
    move	$a0,$s8
    jal	glPushAttrib
    # Line 3489
    sw	$a1,4500($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3492
    ld	$gp,16($sp)
    # Line 3491
    ld	$a2,24($sp)
    # Line 3492
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3491
    sw	$a2,4500($zero)
.end __glce_PushAttrib

# Function: __glce_Map1d
# Declared: Line 3497 (Source lines: 3498-3508)
# Address: 0x0da5b590 - 0x0da5b634 (Size: 164 bytes, Frame: 208)
.globl __glce_Map1d
.ent __glce_Map1d
__glce_Map1d:
    # Line 3502
    lw	$v0,4504($zero)
    # Line 3498
    addiu	$sp,$sp,-80
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sdc1	$f14,8($sp)
    sd	$a3,72($sp)
    # Line 3502
    sd	$v0,40($sp)
    # Line 3498
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3500
    lw	$at,4112($zero)
    # Line 3498
    addiu	$v1,$v1,23112
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3504
    # lw $t9, -17552($gp) # &glMap1d
    # Line 3500
    sd	$at,48($sp)
    # Line 3503
    lw	$at,6464($at)
    # Line 3498
    mov.d	$f30,$f13
    move	$s8,$a0
    # Line 3504
    jal	glMap1d
    # Line 3503
    sw	$at,4504($zero)
    # Line 3506
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    # lw $t9, -17552($gp) # &glMap1d
    # Line 3505
    ld	$a1,48($sp)
    # Line 3506
    ldc1	$f14,8($sp)
    # Line 3505
    lw	$a1,10248($a1)
    # Line 3506
    mov.d	$f13,$f30
    move	$a0,$s8
    jal	glMap1d
    # Line 3505
    sw	$a1,4504($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3508
    ld	$gp,32($sp)
    # Line 3507
    ld	$a2,40($sp)
    # Line 3508
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3507
    sw	$a2,4504($zero)
.end __glce_Map1d

# Function: __glce_Map1f
# Declared: Line 3513 (Source lines: 3514-3524)
# Address: 0x0da5b640 - 0x0da5b6e4 (Size: 164 bytes, Frame: 208)
.globl __glce_Map1f
.ent __glce_Map1f
__glce_Map1f:
    # Line 3518
    lw	$v0,4508($zero)
    # Line 3514
    addiu	$sp,$sp,-80
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sdc1	$f14,8($sp)
    sd	$a3,72($sp)
    # Line 3518
    sd	$v0,40($sp)
    # Line 3514
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3516
    lw	$at,4112($zero)
    # Line 3514
    addiu	$v1,$v1,22936
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3520
    # lw $t9, -17548($gp) # &glMap1f
    # Line 3516
    sd	$at,48($sp)
    # Line 3519
    lw	$at,6468($at)
    # Line 3514
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 3520
    jal	glMap1f
    # Line 3519
    sw	$at,4508($zero)
    # Line 3522
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    # lw $t9, -17548($gp) # &glMap1f
    # Line 3521
    ld	$a1,48($sp)
    # Line 3522
    ldc1	$f14,8($sp)
    # Line 3521
    lw	$a1,10252($a1)
    # Line 3522
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glMap1f
    # Line 3521
    sw	$a1,4508($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3524
    ld	$gp,32($sp)
    # Line 3523
    ld	$a2,40($sp)
    # Line 3524
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3523
    sw	$a2,4508($zero)
.end __glce_Map1f

# Function: __glce_Map2d
# Declared: Line 3529 (Source lines: 3530-3540)
# Address: 0x0da5b6f0 - 0x0da5b7cc (Size: 220 bytes, Frame: 176)
.globl __glce_Map2d
.ent __glce_Map2d
__glce_Map2d:
    # Line 3534
    lw	$a2,4512($zero)
    # Line 3530
    addiu	$sp,$sp,-176
    sdc1	$f18,24($sp)
    # Line 3534
    sd	$a2,72($sp)
    # Line 3530
    sdc1	$f17,32($sp)
    sd	$a7,88($sp)
    sd	$a4,96($sp)
    sdc1	$f14,40($sp)
    sd	$ra,48($sp)
    sd	$s1,56($sp)
    sdc1	$f30,16($sp)
    sd	$s5,64($sp)
    # Line 3532
    lw	$a1,4112($zero)
    sd	$a1,80($sp)
    # Line 3535
    lw	$a1,6472($a1)
    sw	$a1,4512($zero)
    # Line 3530
    lui	$v1,0x3
    # Line 3536
    lw	$at,180($sp)
    # Line 3530
    addiu	$v1,$v1,22760
    sd	$gp,104($sp)
    addu	$gp,$t9,$v1
    # Line 3536
    # lw $t9, -17544($gp) # &glMap2d
    lw	$v0,188($sp)
    # Line 3530
    move	$s5,$a3
    # Line 3536
    sw	$v0,12($sp)
    # Line 3530
    mov.d	$f30,$f13
    move	$s1,$a0
    # Line 3536
    jal	glMap2d
    sw	$at,4($sp)
    # Line 3538
    ldc1	$f18,24($sp)
    ld	$a7,88($sp)
    ldc1	$f17,32($sp)
    ld	$a4,96($sp)
    ldc1	$f14,40($sp)
    # Line 3537
    ld	$t0,80($sp)
    # Line 3538
    # lw $t9, -17544($gp) # &glMap2d
    # Line 3537
    lw	$t0,10256($t0)
    sw	$t0,4512($zero)
    # Line 3538
    lw	$a5,180($sp)
    lw	$a6,188($sp)
    move	$a3,$s5
    sw	$a6,12($sp)
    mov.d	$f13,$f30
    move	$a0,$s1
    jal	glMap2d
    sw	$a5,4($sp)
    ld	$s1,56($sp)
    ld	$s5,64($sp)
    ldc1	$f30,16($sp)
    ld	$ra,48($sp)
    # Line 3540
    ld	$gp,104($sp)
    # Line 3539
    ld	$t1,72($sp)
    # Line 3540
    addiu	$sp,$sp,176
    jr	$ra
    # Line 3539
    sw	$t1,4512($zero)
.end __glce_Map2d

# Function: __glce_Map2f
# Declared: Line 3545 (Source lines: 3546-3556)
# Address: 0x0da5b7d0 - 0x0da5b8ac (Size: 220 bytes, Frame: 176)
.globl __glce_Map2f
.ent __glce_Map2f
__glce_Map2f:
    # Line 3550
    lw	$a2,4516($zero)
    # Line 3546
    addiu	$sp,$sp,-176
    sdc1	$f18,24($sp)
    # Line 3550
    sd	$a2,72($sp)
    # Line 3546
    sdc1	$f17,32($sp)
    sd	$a7,88($sp)
    sd	$a4,96($sp)
    sdc1	$f14,40($sp)
    sd	$ra,48($sp)
    sd	$s1,56($sp)
    sdc1	$f30,16($sp)
    sd	$s5,64($sp)
    # Line 3548
    lw	$a1,4112($zero)
    sd	$a1,80($sp)
    # Line 3551
    lw	$a1,6476($a1)
    sw	$a1,4516($zero)
    # Line 3546
    lui	$v1,0x3
    # Line 3552
    lw	$at,180($sp)
    # Line 3546
    addiu	$v1,$v1,22536
    sd	$gp,104($sp)
    addu	$gp,$t9,$v1
    # Line 3552
    # lw $t9, -17540($gp) # &glMap2f
    lw	$v0,188($sp)
    # Line 3546
    move	$s5,$a3
    # Line 3552
    sw	$v0,12($sp)
    # Line 3546
    mov.s	$f30,$f13
    move	$s1,$a0
    # Line 3552
    jal	glMap2f
    sw	$at,4($sp)
    # Line 3554
    ldc1	$f18,24($sp)
    ld	$a7,88($sp)
    ldc1	$f17,32($sp)
    ld	$a4,96($sp)
    ldc1	$f14,40($sp)
    # Line 3553
    ld	$t0,80($sp)
    # Line 3554
    # lw $t9, -17540($gp) # &glMap2f
    # Line 3553
    lw	$t0,10260($t0)
    sw	$t0,4516($zero)
    # Line 3554
    lw	$a5,180($sp)
    lw	$a6,188($sp)
    move	$a3,$s5
    sw	$a6,12($sp)
    mov.s	$f13,$f30
    move	$a0,$s1
    jal	glMap2f
    sw	$a5,4($sp)
    ld	$s1,56($sp)
    ld	$s5,64($sp)
    ldc1	$f30,16($sp)
    ld	$ra,48($sp)
    # Line 3556
    ld	$gp,104($sp)
    # Line 3555
    ld	$t1,72($sp)
    # Line 3556
    addiu	$sp,$sp,176
    jr	$ra
    # Line 3555
    sw	$t1,4516($zero)
.end __glce_Map2f

# Function: __glce_MapGrid1d
# Declared: Line 3561 (Source lines: 3562-3572)
# Address: 0x0da5b8b0 - 0x0da5b93c (Size: 140 bytes, Frame: 192)
.globl __glce_MapGrid1d
.ent __glce_MapGrid1d
__glce_MapGrid1d:
    # Line 3566
    lw	$v0,4520($zero)
    # Line 3562
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    # Line 3566
    sd	$v0,40($sp)
    # Line 3562
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3564
    lw	$at,4112($zero)
    # Line 3562
    addiu	$v1,$v1,22312
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3568
    # lw $t9, -17536($gp) # &glMapGrid1d
    # Line 3564
    sd	$at,48($sp)
    # Line 3567
    lw	$at,6480($at)
    # Line 3562
    mov.d	$f30,$f13
    move	$s8,$a0
    # Line 3568
    jal	glMapGrid1d
    # Line 3567
    sw	$at,4520($zero)
    # Line 3570
    # lw $t9, -17536($gp) # &glMapGrid1d
    # Line 3569
    ld	$a1,48($sp)
    # Line 3570
    ldc1	$f14,8($sp)
    # Line 3569
    lw	$a1,10264($a1)
    # Line 3570
    mov.d	$f13,$f30
    move	$a0,$s8
    jal	glMapGrid1d
    # Line 3569
    sw	$a1,4520($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3572
    ld	$gp,32($sp)
    # Line 3571
    ld	$a2,40($sp)
    # Line 3572
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3571
    sw	$a2,4520($zero)
.end __glce_MapGrid1d

# Function: __glce_MapGrid1f
# Declared: Line 3577 (Source lines: 3578-3588)
# Address: 0x0da5b940 - 0x0da5b9cc (Size: 140 bytes, Frame: 192)
.globl __glce_MapGrid1f
.ent __glce_MapGrid1f
__glce_MapGrid1f:
    # Line 3582
    lw	$v0,4524($zero)
    # Line 3578
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    # Line 3582
    sd	$v0,40($sp)
    # Line 3578
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3580
    lw	$at,4112($zero)
    # Line 3578
    addiu	$v1,$v1,22168
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3584
    # lw $t9, -17532($gp) # &glMapGrid1f
    # Line 3580
    sd	$at,48($sp)
    # Line 3583
    lw	$at,6484($at)
    # Line 3578
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 3584
    jal	glMapGrid1f
    # Line 3583
    sw	$at,4524($zero)
    # Line 3586
    # lw $t9, -17532($gp) # &glMapGrid1f
    # Line 3585
    ld	$a1,48($sp)
    # Line 3586
    ldc1	$f14,8($sp)
    # Line 3585
    lw	$a1,10268($a1)
    # Line 3586
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glMapGrid1f
    # Line 3585
    sw	$a1,4524($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3588
    ld	$gp,32($sp)
    # Line 3587
    ld	$a2,40($sp)
    # Line 3588
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3587
    sw	$a2,4524($zero)
.end __glce_MapGrid1f

# Function: __glce_MapGrid2d
# Declared: Line 3593 (Source lines: 3594-3604)
# Address: 0x0da5b9d0 - 0x0da5ba74 (Size: 164 bytes, Frame: 208)
.globl __glce_MapGrid2d
.ent __glce_MapGrid2d
__glce_MapGrid2d:
    # Line 3598
    lw	$v0,4528($zero)
    # Line 3594
    addiu	$sp,$sp,-80
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f14,24($sp)
    sd	$a3,72($sp)
    # Line 3598
    sd	$v0,56($sp)
    # Line 3594
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3596
    lw	$at,4112($zero)
    # Line 3594
    addiu	$v1,$v1,22024
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 3600
    # lw $t9, -17528($gp) # &glMapGrid2d
    # Line 3596
    sd	$at,64($sp)
    # Line 3599
    lw	$at,6488($at)
    # Line 3594
    mov.d	$f30,$f13
    move	$s8,$a0
    # Line 3600
    jal	glMapGrid2d
    # Line 3599
    sw	$at,4528($zero)
    # Line 3602
    ldc1	$f17,8($sp)
    ldc1	$f16,16($sp)
    ld	$a3,72($sp)
    # lw $t9, -17528($gp) # &glMapGrid2d
    # Line 3601
    ld	$a1,64($sp)
    # Line 3602
    ldc1	$f14,24($sp)
    # Line 3601
    lw	$a1,10272($a1)
    # Line 3602
    mov.d	$f13,$f30
    move	$a0,$s8
    jal	glMapGrid2d
    # Line 3601
    sw	$a1,4528($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 3604
    ld	$gp,48($sp)
    # Line 3603
    ld	$a2,56($sp)
    # Line 3604
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3603
    sw	$a2,4528($zero)
.end __glce_MapGrid2d

# Function: __glce_MapGrid2f
# Declared: Line 3609 (Source lines: 3610-3620)
# Address: 0x0da5ba80 - 0x0da5bb24 (Size: 164 bytes, Frame: 208)
.globl __glce_MapGrid2f
.ent __glce_MapGrid2f
__glce_MapGrid2f:
    # Line 3614
    lw	$v0,4532($zero)
    # Line 3610
    addiu	$sp,$sp,-80
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f14,24($sp)
    sd	$a3,72($sp)
    # Line 3614
    sd	$v0,56($sp)
    # Line 3610
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3612
    lw	$at,4112($zero)
    # Line 3610
    addiu	$v1,$v1,21848
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 3616
    # lw $t9, -17524($gp) # &glMapGrid2f
    # Line 3612
    sd	$at,64($sp)
    # Line 3615
    lw	$at,6492($at)
    # Line 3610
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 3616
    jal	glMapGrid2f
    # Line 3615
    sw	$at,4532($zero)
    # Line 3618
    ldc1	$f17,8($sp)
    ldc1	$f16,16($sp)
    ld	$a3,72($sp)
    # lw $t9, -17524($gp) # &glMapGrid2f
    # Line 3617
    ld	$a1,64($sp)
    # Line 3618
    ldc1	$f14,24($sp)
    # Line 3617
    lw	$a1,10276($a1)
    # Line 3618
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glMapGrid2f
    # Line 3617
    sw	$a1,4532($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 3620
    ld	$gp,48($sp)
    # Line 3619
    ld	$a2,56($sp)
    # Line 3620
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3619
    sw	$a2,4532($zero)
.end __glce_MapGrid2f

# Function: __glce_EvalCoord1d
# Declared: Line 3625 (Source lines: 3626-3636)
# Address: 0x0da5bb30 - 0x0da5bba4 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalCoord1d
.ent __glce_EvalCoord1d
__glce_EvalCoord1d:
    # Line 3630
    lw	$v0,4536($zero)
    # Line 3626
    addiu	$sp,$sp,-48
    # Line 3630
    sd	$v0,32($sp)
    # Line 3626
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 3628
    lw	$s8,4112($zero)
    # Line 3626
    addiu	$v1,$v1,21672
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3632
    # lw $t9, -17520($gp) # &glEvalCoord1d
    # Line 3626
    sdc1	$f30,0($sp)
    # Line 3631
    lw	$at,6496($s8)
    # Line 3626
    mov.d	$f30,$f12
    # Line 3632
    jal	glEvalCoord1d
    # Line 3631
    sw	$at,4536($zero)
    # Line 3634
    # lw $t9, -17520($gp) # &glEvalCoord1d
    # Line 3633
    lw	$a0,10280($s8)
    # Line 3634
    mov.d	$f12,$f30
    jal	glEvalCoord1d
    # Line 3633
    sw	$a0,4536($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3636
    ld	$gp,24($sp)
    # Line 3635
    ld	$a1,32($sp)
    # Line 3636
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3635
    sw	$a1,4536($zero)
.end __glce_EvalCoord1d

# Function: __glce_EvalCoord1dv
# Declared: Line 3641 (Source lines: 3642-3652)
# Address: 0x0da5bbb0 - 0x0da5bc24 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalCoord1dv
.ent __glce_EvalCoord1dv
__glce_EvalCoord1dv:
    # Line 3646
    lw	$v0,4540($zero)
    # Line 3642
    addiu	$sp,$sp,-48
    # Line 3646
    sd	$v0,24($sp)
    # Line 3642
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3644
    lw	$at,4112($zero)
    # Line 3642
    addiu	$v1,$v1,21544
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3648
    # lw $t9, -17516($gp) # &glEvalCoord1dv
    # Line 3644
    sd	$at,32($sp)
    # Line 3647
    lw	$at,6500($at)
    # Line 3642
    move	$s8,$a0
    # Line 3648
    jal	glEvalCoord1dv
    # Line 3647
    sw	$at,4540($zero)
    # Line 3650
    # lw $t9, -17516($gp) # &glEvalCoord1dv
    # Line 3649
    ld	$a1,32($sp)
    lw	$a1,10284($a1)
    # Line 3650
    move	$a0,$s8
    jal	glEvalCoord1dv
    # Line 3649
    sw	$a1,4540($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3652
    ld	$gp,16($sp)
    # Line 3651
    ld	$a2,24($sp)
    # Line 3652
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3651
    sw	$a2,4540($zero)
.end __glce_EvalCoord1dv

# Function: __glce_EvalCoord1f
# Declared: Line 3657 (Source lines: 3658-3668)
# Address: 0x0da5bc30 - 0x0da5bca4 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalCoord1f
.ent __glce_EvalCoord1f
__glce_EvalCoord1f:
    # Line 3662
    lw	$v0,4544($zero)
    # Line 3658
    addiu	$sp,$sp,-48
    # Line 3662
    sd	$v0,32($sp)
    # Line 3658
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    lui	$v1,0x3
    # Line 3660
    lw	$s8,4112($zero)
    # Line 3658
    addiu	$v1,$v1,21416
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3664
    # lw $t9, -17512($gp) # &glEvalCoord1f
    # Line 3658
    sdc1	$f30,0($sp)
    # Line 3663
    lw	$at,6504($s8)
    # Line 3658
    mov.s	$f30,$f12
    # Line 3664
    jal	glEvalCoord1f
    # Line 3663
    sw	$at,4544($zero)
    # Line 3666
    # lw $t9, -17512($gp) # &glEvalCoord1f
    # Line 3665
    lw	$a0,10288($s8)
    # Line 3666
    mov.s	$f12,$f30
    jal	glEvalCoord1f
    # Line 3665
    sw	$a0,4544($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3668
    ld	$gp,24($sp)
    # Line 3667
    ld	$a1,32($sp)
    # Line 3668
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3667
    sw	$a1,4544($zero)
.end __glce_EvalCoord1f

# Function: __glce_EvalCoord1fv
# Declared: Line 3673 (Source lines: 3674-3684)
# Address: 0x0da5bcb0 - 0x0da5bd24 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalCoord1fv
.ent __glce_EvalCoord1fv
__glce_EvalCoord1fv:
    # Line 3678
    lw	$v0,4548($zero)
    # Line 3674
    addiu	$sp,$sp,-48
    # Line 3678
    sd	$v0,24($sp)
    # Line 3674
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3676
    lw	$at,4112($zero)
    # Line 3674
    addiu	$v1,$v1,21288
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3680
    # lw $t9, -17508($gp) # &glEvalCoord1fv
    # Line 3676
    sd	$at,32($sp)
    # Line 3679
    lw	$at,6508($at)
    # Line 3674
    move	$s8,$a0
    # Line 3680
    jal	glEvalCoord1fv
    # Line 3679
    sw	$at,4548($zero)
    # Line 3682
    # lw $t9, -17508($gp) # &glEvalCoord1fv
    # Line 3681
    ld	$a1,32($sp)
    lw	$a1,10292($a1)
    # Line 3682
    move	$a0,$s8
    jal	glEvalCoord1fv
    # Line 3681
    sw	$a1,4548($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3684
    ld	$gp,16($sp)
    # Line 3683
    ld	$a2,24($sp)
    # Line 3684
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3683
    sw	$a2,4548($zero)
.end __glce_EvalCoord1fv

# Function: __glce_EvalCoord2d
# Declared: Line 3689 (Source lines: 3690-3700)
# Address: 0x0da5bd30 - 0x0da5bdac (Size: 124 bytes, Frame: 48)
.globl __glce_EvalCoord2d
.ent __glce_EvalCoord2d
__glce_EvalCoord2d:
    # Line 3694
    lw	$v0,4552($zero)
    # Line 3690
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 3694
    sd	$v0,40($sp)
    # Line 3690
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x3
    # Line 3692
    lw	$s8,4112($zero)
    # Line 3690
    addiu	$v1,$v1,21160
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3696
    # lw $t9, -17504($gp) # &glEvalCoord2d
    # Line 3690
    sdc1	$f30,0($sp)
    # Line 3695
    lw	$at,6512($s8)
    # Line 3690
    mov.d	$f30,$f12
    # Line 3696
    jal	glEvalCoord2d
    # Line 3695
    sw	$at,4552($zero)
    # Line 3698
    # lw $t9, -17504($gp) # &glEvalCoord2d
    ldc1	$f13,8($sp)
    # Line 3697
    lw	$a0,10296($s8)
    # Line 3698
    mov.d	$f12,$f30
    jal	glEvalCoord2d
    # Line 3697
    sw	$a0,4552($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3700
    ld	$gp,32($sp)
    # Line 3699
    ld	$a1,40($sp)
    # Line 3700
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3699
    sw	$a1,4552($zero)
.end __glce_EvalCoord2d

# Function: __glce_EvalCoord2dv
# Declared: Line 3705 (Source lines: 3706-3716)
# Address: 0x0da5bdb0 - 0x0da5be24 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalCoord2dv
.ent __glce_EvalCoord2dv
__glce_EvalCoord2dv:
    # Line 3710
    lw	$v0,4556($zero)
    # Line 3706
    addiu	$sp,$sp,-48
    # Line 3710
    sd	$v0,24($sp)
    # Line 3706
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3708
    lw	$at,4112($zero)
    # Line 3706
    addiu	$v1,$v1,21032
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3712
    # lw $t9, -17500($gp) # &glEvalCoord2dv
    # Line 3708
    sd	$at,32($sp)
    # Line 3711
    lw	$at,6516($at)
    # Line 3706
    move	$s8,$a0
    # Line 3712
    jal	glEvalCoord2dv
    # Line 3711
    sw	$at,4556($zero)
    # Line 3714
    # lw $t9, -17500($gp) # &glEvalCoord2dv
    # Line 3713
    ld	$a1,32($sp)
    lw	$a1,10300($a1)
    # Line 3714
    move	$a0,$s8
    jal	glEvalCoord2dv
    # Line 3713
    sw	$a1,4556($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3716
    ld	$gp,16($sp)
    # Line 3715
    ld	$a2,24($sp)
    # Line 3716
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3715
    sw	$a2,4556($zero)
.end __glce_EvalCoord2dv

# Function: __glce_EvalCoord2f
# Declared: Line 3721 (Source lines: 3722-3732)
# Address: 0x0da5be30 - 0x0da5beac (Size: 124 bytes, Frame: 48)
.globl __glce_EvalCoord2f
.ent __glce_EvalCoord2f
__glce_EvalCoord2f:
    # Line 3726
    lw	$v0,4560($zero)
    # Line 3722
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 3726
    sd	$v0,40($sp)
    # Line 3722
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x3
    # Line 3724
    lw	$s8,4112($zero)
    # Line 3722
    addiu	$v1,$v1,20904
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3728
    # lw $t9, -17496($gp) # &glEvalCoord2f
    # Line 3722
    sdc1	$f30,0($sp)
    # Line 3727
    lw	$at,6520($s8)
    # Line 3722
    mov.s	$f30,$f12
    # Line 3728
    jal	glEvalCoord2f
    # Line 3727
    sw	$at,4560($zero)
    # Line 3730
    # lw $t9, -17496($gp) # &glEvalCoord2f
    ldc1	$f13,8($sp)
    # Line 3729
    lw	$a0,10304($s8)
    # Line 3730
    mov.s	$f12,$f30
    jal	glEvalCoord2f
    # Line 3729
    sw	$a0,4560($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3732
    ld	$gp,32($sp)
    # Line 3731
    ld	$a1,40($sp)
    # Line 3732
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3731
    sw	$a1,4560($zero)
.end __glce_EvalCoord2f

# Function: __glce_EvalCoord2fv
# Declared: Line 3737 (Source lines: 3738-3748)
# Address: 0x0da5beb0 - 0x0da5bf24 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalCoord2fv
.ent __glce_EvalCoord2fv
__glce_EvalCoord2fv:
    # Line 3742
    lw	$v0,4564($zero)
    # Line 3738
    addiu	$sp,$sp,-48
    # Line 3742
    sd	$v0,24($sp)
    # Line 3738
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3740
    lw	$at,4112($zero)
    # Line 3738
    addiu	$v1,$v1,20776
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3744
    # lw $t9, -17492($gp) # &glEvalCoord2fv
    # Line 3740
    sd	$at,32($sp)
    # Line 3743
    lw	$at,6524($at)
    # Line 3738
    move	$s8,$a0
    # Line 3744
    jal	glEvalCoord2fv
    # Line 3743
    sw	$at,4564($zero)
    # Line 3746
    # lw $t9, -17492($gp) # &glEvalCoord2fv
    # Line 3745
    ld	$a1,32($sp)
    lw	$a1,10308($a1)
    # Line 3746
    move	$a0,$s8
    jal	glEvalCoord2fv
    # Line 3745
    sw	$a1,4564($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3748
    ld	$gp,16($sp)
    # Line 3747
    ld	$a2,24($sp)
    # Line 3748
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3747
    sw	$a2,4564($zero)
.end __glce_EvalCoord2fv

# Function: __glce_EvalMesh1
# Declared: Line 3753 (Source lines: 3754-3764)
# Address: 0x0da5bf30 - 0x0da5bfb4 (Size: 132 bytes, Frame: 192)
.globl __glce_EvalMesh1
.ent __glce_EvalMesh1
__glce_EvalMesh1:
    # Line 3758
    lw	$v0,4568($zero)
    # Line 3754
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3758
    sd	$v0,24($sp)
    # Line 3754
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3756
    lw	$at,4112($zero)
    # Line 3754
    addiu	$v1,$v1,20648
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3760
    # lw $t9, -17488($gp) # &glEvalMesh1
    # Line 3756
    sd	$at,32($sp)
    # Line 3759
    lw	$at,6528($at)
    # Line 3754
    move	$s8,$a0
    # Line 3760
    jal	glEvalMesh1
    # Line 3759
    sw	$at,4568($zero)
    # Line 3762
    ld	$a2,40($sp)
    # lw $t9, -17488($gp) # &glEvalMesh1
    # Line 3761
    ld	$a3,32($sp)
    # Line 3762
    ld	$a1,48($sp)
    # Line 3761
    lw	$a3,10312($a3)
    # Line 3762
    move	$a0,$s8
    jal	glEvalMesh1
    # Line 3761
    sw	$a3,4568($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3764
    ld	$gp,16($sp)
    # Line 3763
    ld	$a4,24($sp)
    # Line 3764
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3763
    sw	$a4,4568($zero)
.end __glce_EvalMesh1

# Function: __glce_EvalPoint1
# Declared: Line 3769 (Source lines: 3770-3780)
# Address: 0x0da5bfc0 - 0x0da5c034 (Size: 116 bytes, Frame: 48)
.globl __glce_EvalPoint1
.ent __glce_EvalPoint1
__glce_EvalPoint1:
    # Line 3774
    lw	$v0,4572($zero)
    # Line 3770
    addiu	$sp,$sp,-48
    # Line 3774
    sd	$v0,24($sp)
    # Line 3770
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3772
    lw	$at,4112($zero)
    # Line 3770
    addiu	$v1,$v1,20504
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3776
    # lw $t9, -17484($gp) # &glEvalPoint1
    # Line 3772
    sd	$at,32($sp)
    # Line 3775
    lw	$at,6532($at)
    # Line 3770
    move	$s8,$a0
    # Line 3776
    jal	glEvalPoint1
    # Line 3775
    sw	$at,4572($zero)
    # Line 3778
    # lw $t9, -17484($gp) # &glEvalPoint1
    # Line 3777
    ld	$a1,32($sp)
    lw	$a1,10316($a1)
    # Line 3778
    move	$a0,$s8
    jal	glEvalPoint1
    # Line 3777
    sw	$a1,4572($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3780
    ld	$gp,16($sp)
    # Line 3779
    ld	$a2,24($sp)
    # Line 3780
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3779
    sw	$a2,4572($zero)
.end __glce_EvalPoint1

# Function: __glce_EvalMesh2
# Declared: Line 3785 (Source lines: 3786-3796)
# Address: 0x0da5c040 - 0x0da5c0d4 (Size: 148 bytes, Frame: 208)
.globl __glce_EvalMesh2
.ent __glce_EvalMesh2
__glce_EvalMesh2:
    # Line 3790
    lw	$v0,4576($zero)
    # Line 3786
    addiu	$sp,$sp,-80
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    # Line 3790
    sd	$v0,24($sp)
    # Line 3786
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3788
    lw	$at,4112($zero)
    # Line 3786
    addiu	$v1,$v1,20376
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3792
    # lw $t9, -17480($gp) # &glEvalMesh2
    # Line 3788
    sd	$at,32($sp)
    # Line 3791
    lw	$at,6536($at)
    # Line 3786
    move	$s8,$a0
    # Line 3792
    jal	glEvalMesh2
    # Line 3791
    sw	$at,4576($zero)
    # Line 3794
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -17480($gp) # &glEvalMesh2
    # Line 3793
    ld	$a5,32($sp)
    # Line 3794
    ld	$a1,64($sp)
    # Line 3793
    lw	$a5,10320($a5)
    # Line 3794
    move	$a0,$s8
    jal	glEvalMesh2
    # Line 3793
    sw	$a5,4576($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3796
    ld	$gp,16($sp)
    # Line 3795
    ld	$a6,24($sp)
    # Line 3796
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3795
    sw	$a6,4576($zero)
.end __glce_EvalMesh2

# Function: __glce_EvalPoint2
# Declared: Line 3801 (Source lines: 3802-3812)
# Address: 0x0da5c0e0 - 0x0da5c15c (Size: 124 bytes, Frame: 48)
.globl __glce_EvalPoint2
.ent __glce_EvalPoint2
__glce_EvalPoint2:
    # Line 3806
    lw	$v0,4580($zero)
    # Line 3802
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 3806
    sd	$v0,24($sp)
    # Line 3802
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3804
    lw	$at,4112($zero)
    # Line 3802
    addiu	$v1,$v1,20216
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3808
    # lw $t9, -17476($gp) # &glEvalPoint2
    # Line 3804
    sd	$at,32($sp)
    # Line 3807
    lw	$at,6540($at)
    # Line 3802
    move	$s8,$a0
    # Line 3808
    jal	glEvalPoint2
    # Line 3807
    sw	$at,4580($zero)
    # Line 3810
    # lw $t9, -17476($gp) # &glEvalPoint2
    # Line 3809
    ld	$a2,32($sp)
    # Line 3810
    ld	$a1,40($sp)
    # Line 3809
    lw	$a2,10324($a2)
    # Line 3810
    move	$a0,$s8
    jal	glEvalPoint2
    # Line 3809
    sw	$a2,4580($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3812
    ld	$gp,16($sp)
    # Line 3811
    ld	$a3,24($sp)
    # Line 3812
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3811
    sw	$a3,4580($zero)
.end __glce_EvalPoint2

# Function: __glce_AlphaFunc
# Declared: Line 3817 (Source lines: 3818-3828)
# Address: 0x0da5c160 - 0x0da5c1e4 (Size: 132 bytes, Frame: 48)
.globl __glce_AlphaFunc
.ent __glce_AlphaFunc
__glce_AlphaFunc:
    # Line 3822
    lw	$v0,4584($zero)
    # Line 3818
    addiu	$sp,$sp,-48
    # Line 3822
    sd	$v0,32($sp)
    # Line 3818
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3820
    lw	$at,4112($zero)
    # Line 3818
    addiu	$v1,$v1,20088
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3824
    # lw $t9, -17472($gp) # &glAlphaFunc
    # Line 3820
    sd	$at,40($sp)
    # Line 3823
    lw	$at,6544($at)
    # Line 3818
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 3824
    jal	glAlphaFunc
    # Line 3823
    sw	$at,4584($zero)
    # Line 3826
    # lw $t9, -17472($gp) # &glAlphaFunc
    # Line 3825
    ld	$a1,40($sp)
    lw	$a1,10328($a1)
    # Line 3826
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glAlphaFunc
    # Line 3825
    sw	$a1,4584($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3828
    ld	$gp,24($sp)
    # Line 3827
    ld	$a2,32($sp)
    # Line 3828
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3827
    sw	$a2,4584($zero)
.end __glce_AlphaFunc

# Function: __glce_BlendFunc
# Declared: Line 3833 (Source lines: 3834-3844)
# Address: 0x0da5c1f0 - 0x0da5c26c (Size: 124 bytes, Frame: 48)
.globl __glce_BlendFunc
.ent __glce_BlendFunc
__glce_BlendFunc:
    # Line 3838
    lw	$v0,4588($zero)
    # Line 3834
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 3838
    sd	$v0,24($sp)
    # Line 3834
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3836
    lw	$at,4112($zero)
    # Line 3834
    addiu	$v1,$v1,19944
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3840
    # lw $t9, -17468($gp) # &glBlendFunc
    # Line 3836
    sd	$at,32($sp)
    # Line 3839
    lw	$at,6548($at)
    # Line 3834
    move	$s8,$a0
    # Line 3840
    jal	glBlendFunc
    # Line 3839
    sw	$at,4588($zero)
    # Line 3842
    # lw $t9, -17468($gp) # &glBlendFunc
    # Line 3841
    ld	$a2,32($sp)
    # Line 3842
    ld	$a1,40($sp)
    # Line 3841
    lw	$a2,10332($a2)
    # Line 3842
    move	$a0,$s8
    jal	glBlendFunc
    # Line 3841
    sw	$a2,4588($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3844
    ld	$gp,16($sp)
    # Line 3843
    ld	$a3,24($sp)
    # Line 3844
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3843
    sw	$a3,4588($zero)
.end __glce_BlendFunc

# Function: __glce_LogicOp
# Declared: Line 3849 (Source lines: 3850-3860)
# Address: 0x0da5c270 - 0x0da5c2e4 (Size: 116 bytes, Frame: 48)
.globl __glce_LogicOp
.ent __glce_LogicOp
__glce_LogicOp:
    # Line 3854
    lw	$v0,4592($zero)
    # Line 3850
    addiu	$sp,$sp,-48
    # Line 3854
    sd	$v0,24($sp)
    # Line 3850
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3852
    lw	$at,4112($zero)
    # Line 3850
    addiu	$v1,$v1,19816
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3856
    # lw $t9, -17464($gp) # &glLogicOp
    # Line 3852
    sd	$at,32($sp)
    # Line 3855
    lw	$at,6552($at)
    # Line 3850
    move	$s8,$a0
    # Line 3856
    jal	glLogicOp
    # Line 3855
    sw	$at,4592($zero)
    # Line 3858
    # lw $t9, -17464($gp) # &glLogicOp
    # Line 3857
    ld	$a1,32($sp)
    lw	$a1,10336($a1)
    # Line 3858
    move	$a0,$s8
    jal	glLogicOp
    # Line 3857
    sw	$a1,4592($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3860
    ld	$gp,16($sp)
    # Line 3859
    ld	$a2,24($sp)
    # Line 3860
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3859
    sw	$a2,4592($zero)
.end __glce_LogicOp

# Function: __glce_StencilFunc
# Declared: Line 3865 (Source lines: 3866-3876)
# Address: 0x0da5c2f0 - 0x0da5c374 (Size: 132 bytes, Frame: 192)
.globl __glce_StencilFunc
.ent __glce_StencilFunc
__glce_StencilFunc:
    # Line 3870
    lw	$v0,4596($zero)
    # Line 3866
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3870
    sd	$v0,24($sp)
    # Line 3866
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3868
    lw	$at,4112($zero)
    # Line 3866
    addiu	$v1,$v1,19688
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3872
    # lw $t9, -17460($gp) # &glStencilFunc
    # Line 3868
    sd	$at,32($sp)
    # Line 3871
    lw	$at,6556($at)
    # Line 3866
    move	$s8,$a0
    # Line 3872
    jal	glStencilFunc
    # Line 3871
    sw	$at,4596($zero)
    # Line 3874
    ld	$a2,40($sp)
    # lw $t9, -17460($gp) # &glStencilFunc
    # Line 3873
    ld	$a3,32($sp)
    # Line 3874
    ld	$a1,48($sp)
    # Line 3873
    lw	$a3,10340($a3)
    # Line 3874
    move	$a0,$s8
    jal	glStencilFunc
    # Line 3873
    sw	$a3,4596($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3876
    ld	$gp,16($sp)
    # Line 3875
    ld	$a4,24($sp)
    # Line 3876
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3875
    sw	$a4,4596($zero)
.end __glce_StencilFunc

# Function: __glce_StencilOp
# Declared: Line 3881 (Source lines: 3882-3892)
# Address: 0x0da5c380 - 0x0da5c404 (Size: 132 bytes, Frame: 192)
.globl __glce_StencilOp
.ent __glce_StencilOp
__glce_StencilOp:
    # Line 3886
    lw	$v0,4600($zero)
    # Line 3882
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3886
    sd	$v0,24($sp)
    # Line 3882
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3884
    lw	$at,4112($zero)
    # Line 3882
    addiu	$v1,$v1,19544
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3888
    # lw $t9, -17456($gp) # &glStencilOp
    # Line 3884
    sd	$at,32($sp)
    # Line 3887
    lw	$at,6560($at)
    # Line 3882
    move	$s8,$a0
    # Line 3888
    jal	glStencilOp
    # Line 3887
    sw	$at,4600($zero)
    # Line 3890
    ld	$a2,40($sp)
    # lw $t9, -17456($gp) # &glStencilOp
    # Line 3889
    ld	$a3,32($sp)
    # Line 3890
    ld	$a1,48($sp)
    # Line 3889
    lw	$a3,10344($a3)
    # Line 3890
    move	$a0,$s8
    jal	glStencilOp
    # Line 3889
    sw	$a3,4600($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3892
    ld	$gp,16($sp)
    # Line 3891
    ld	$a4,24($sp)
    # Line 3892
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3891
    sw	$a4,4600($zero)
.end __glce_StencilOp

# Function: __glce_DepthFunc
# Declared: Line 3897 (Source lines: 3898-3908)
# Address: 0x0da5c410 - 0x0da5c484 (Size: 116 bytes, Frame: 48)
.globl __glce_DepthFunc
.ent __glce_DepthFunc
__glce_DepthFunc:
    # Line 3902
    lw	$v0,4604($zero)
    # Line 3898
    addiu	$sp,$sp,-48
    # Line 3902
    sd	$v0,24($sp)
    # Line 3898
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3900
    lw	$at,4112($zero)
    # Line 3898
    addiu	$v1,$v1,19400
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3904
    # lw $t9, -17452($gp) # &glDepthFunc
    # Line 3900
    sd	$at,32($sp)
    # Line 3903
    lw	$at,6564($at)
    # Line 3898
    move	$s8,$a0
    # Line 3904
    jal	glDepthFunc
    # Line 3903
    sw	$at,4604($zero)
    # Line 3906
    # lw $t9, -17452($gp) # &glDepthFunc
    # Line 3905
    ld	$a1,32($sp)
    lw	$a1,10348($a1)
    # Line 3906
    move	$a0,$s8
    jal	glDepthFunc
    # Line 3905
    sw	$a1,4604($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3908
    ld	$gp,16($sp)
    # Line 3907
    ld	$a2,24($sp)
    # Line 3908
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3907
    sw	$a2,4604($zero)
.end __glce_DepthFunc

# Function: __glce_PixelZoom
# Declared: Line 3913 (Source lines: 3914-3924)
# Address: 0x0da5c490 - 0x0da5c50c (Size: 124 bytes, Frame: 48)
.globl __glce_PixelZoom
.ent __glce_PixelZoom
__glce_PixelZoom:
    # Line 3918
    lw	$v0,4608($zero)
    # Line 3914
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 3918
    sd	$v0,40($sp)
    # Line 3914
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x3
    # Line 3916
    lw	$s8,4112($zero)
    # Line 3914
    addiu	$v1,$v1,19272
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3920
    # lw $t9, -17448($gp) # &glPixelZoom
    # Line 3914
    sdc1	$f30,0($sp)
    # Line 3919
    lw	$at,6568($s8)
    # Line 3914
    mov.s	$f30,$f12
    # Line 3920
    jal	glPixelZoom
    # Line 3919
    sw	$at,4608($zero)
    # Line 3922
    # lw $t9, -17448($gp) # &glPixelZoom
    ldc1	$f13,8($sp)
    # Line 3921
    lw	$a0,10352($s8)
    # Line 3922
    mov.s	$f12,$f30
    jal	glPixelZoom
    # Line 3921
    sw	$a0,4608($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 3924
    ld	$gp,32($sp)
    # Line 3923
    ld	$a1,40($sp)
    # Line 3924
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3923
    sw	$a1,4608($zero)
.end __glce_PixelZoom

# Function: __glce_PixelTransferf
# Declared: Line 3929 (Source lines: 3930-3940)
# Address: 0x0da5c510 - 0x0da5c594 (Size: 132 bytes, Frame: 48)
.globl __glce_PixelTransferf
.ent __glce_PixelTransferf
__glce_PixelTransferf:
    # Line 3934
    lw	$v0,4612($zero)
    # Line 3930
    addiu	$sp,$sp,-48
    # Line 3934
    sd	$v0,32($sp)
    # Line 3930
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 3932
    lw	$at,4112($zero)
    # Line 3930
    addiu	$v1,$v1,19144
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 3936
    # lw $t9, -17444($gp) # &glPixelTransferf
    # Line 3932
    sd	$at,40($sp)
    # Line 3935
    lw	$at,6572($at)
    # Line 3930
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 3936
    jal	glPixelTransferf
    # Line 3935
    sw	$at,4612($zero)
    # Line 3938
    # lw $t9, -17444($gp) # &glPixelTransferf
    # Line 3937
    ld	$a1,40($sp)
    lw	$a1,10356($a1)
    # Line 3938
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glPixelTransferf
    # Line 3937
    sw	$a1,4612($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 3940
    ld	$gp,24($sp)
    # Line 3939
    ld	$a2,32($sp)
    # Line 3940
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3939
    sw	$a2,4612($zero)
.end __glce_PixelTransferf

# Function: __glce_PixelTransferi
# Declared: Line 3945 (Source lines: 3946-3956)
# Address: 0x0da5c5a0 - 0x0da5c61c (Size: 124 bytes, Frame: 48)
.globl __glce_PixelTransferi
.ent __glce_PixelTransferi
__glce_PixelTransferi:
    # Line 3950
    lw	$v0,4616($zero)
    # Line 3946
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 3950
    sd	$v0,24($sp)
    # Line 3946
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3948
    lw	$at,4112($zero)
    # Line 3946
    addiu	$v1,$v1,19000
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3952
    # lw $t9, -17440($gp) # &glPixelTransferi
    # Line 3948
    sd	$at,32($sp)
    # Line 3951
    lw	$at,6576($at)
    # Line 3946
    move	$s8,$a0
    # Line 3952
    jal	glPixelTransferi
    # Line 3951
    sw	$at,4616($zero)
    # Line 3954
    # lw $t9, -17440($gp) # &glPixelTransferi
    # Line 3953
    ld	$a2,32($sp)
    # Line 3954
    ld	$a1,40($sp)
    # Line 3953
    lw	$a2,10360($a2)
    # Line 3954
    move	$a0,$s8
    jal	glPixelTransferi
    # Line 3953
    sw	$a2,4616($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 3956
    ld	$gp,16($sp)
    # Line 3955
    ld	$a3,24($sp)
    # Line 3956
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3955
    sw	$a3,4616($zero)
.end __glce_PixelTransferi

# Function: __glce_PixelStoref
# Declared: Line 3961 (Source lines: 3962-3970)
# Address: 0x0da5c620 - 0x0da5c66c (Size: 76 bytes, Frame: 32)
.globl __glce_PixelStoref
.ent __glce_PixelStoref
__glce_PixelStoref:
    # Line 3962
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3966
    lw	$s8,4620($zero)
    # Line 3962
    lui	$v0,0x3
    # Line 3967
    lw	$at,4112($zero)
    # Line 3962
    addiu	$v0,$v0,18872
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3968
    # lw $t9, -17436($gp) # &glPixelStoref
    # Line 3962
    sd	$ra,0($sp)
    # Line 3967
    lw	$at,10364($at)
    # Line 3968
    jal	glPixelStoref
    # Line 3967
    sw	$at,4620($zero)
    ld	$ra,0($sp)
    # Line 3970
    ld	$gp,16($sp)
    # Line 3969
    sw	$s8,4620($zero)
    # Line 3970
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PixelStoref

# Function: __glce_PixelStorei
# Declared: Line 3975 (Source lines: 3976-3984)
# Address: 0x0da5c670 - 0x0da5c6bc (Size: 76 bytes, Frame: 32)
.globl __glce_PixelStorei
.ent __glce_PixelStorei
__glce_PixelStorei:
    # Line 3976
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3980
    lw	$s8,4624($zero)
    # Line 3976
    lui	$v0,0x3
    # Line 3981
    lw	$at,4112($zero)
    # Line 3976
    addiu	$v0,$v0,18792
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 3982
    # lw $t9, -17432($gp) # &glPixelStorei
    # Line 3976
    sd	$ra,0($sp)
    # Line 3981
    lw	$at,10368($at)
    # Line 3982
    jal	glPixelStorei
    # Line 3981
    sw	$at,4624($zero)
    ld	$ra,0($sp)
    # Line 3984
    ld	$gp,16($sp)
    # Line 3983
    sw	$s8,4624($zero)
    # Line 3984
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PixelStorei

# Function: __glce_PixelMapfv
# Declared: Line 3989 (Source lines: 3990-4000)
# Address: 0x0da5c6c0 - 0x0da5c744 (Size: 132 bytes, Frame: 192)
.globl __glce_PixelMapfv
.ent __glce_PixelMapfv
__glce_PixelMapfv:
    # Line 3994
    lw	$v0,4628($zero)
    # Line 3990
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 3994
    sd	$v0,24($sp)
    # Line 3990
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 3992
    lw	$at,4112($zero)
    # Line 3990
    addiu	$v1,$v1,18712
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 3996
    # lw $t9, -17428($gp) # &glPixelMapfv
    # Line 3992
    sd	$at,32($sp)
    # Line 3995
    lw	$at,6588($at)
    # Line 3990
    move	$s8,$a0
    # Line 3996
    jal	glPixelMapfv
    # Line 3995
    sw	$at,4628($zero)
    # Line 3998
    ld	$a2,40($sp)
    # lw $t9, -17428($gp) # &glPixelMapfv
    # Line 3997
    ld	$a3,32($sp)
    # Line 3998
    ld	$a1,48($sp)
    # Line 3997
    lw	$a3,10372($a3)
    # Line 3998
    move	$a0,$s8
    jal	glPixelMapfv
    # Line 3997
    sw	$a3,4628($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4000
    ld	$gp,16($sp)
    # Line 3999
    ld	$a4,24($sp)
    # Line 4000
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3999
    sw	$a4,4628($zero)
.end __glce_PixelMapfv

# Function: __glce_PixelMapuiv
# Declared: Line 4005 (Source lines: 4006-4016)
# Address: 0x0da5c750 - 0x0da5c7d4 (Size: 132 bytes, Frame: 192)
.globl __glce_PixelMapuiv
.ent __glce_PixelMapuiv
__glce_PixelMapuiv:
    # Line 4010
    lw	$v0,4632($zero)
    # Line 4006
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 4010
    sd	$v0,24($sp)
    # Line 4006
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4008
    lw	$at,4112($zero)
    # Line 4006
    addiu	$v1,$v1,18568
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4012
    # lw $t9, -17424($gp) # &glPixelMapuiv
    # Line 4008
    sd	$at,32($sp)
    # Line 4011
    lw	$at,6592($at)
    # Line 4006
    move	$s8,$a0
    # Line 4012
    jal	glPixelMapuiv
    # Line 4011
    sw	$at,4632($zero)
    # Line 4014
    ld	$a2,40($sp)
    # lw $t9, -17424($gp) # &glPixelMapuiv
    # Line 4013
    ld	$a3,32($sp)
    # Line 4014
    ld	$a1,48($sp)
    # Line 4013
    lw	$a3,10376($a3)
    # Line 4014
    move	$a0,$s8
    jal	glPixelMapuiv
    # Line 4013
    sw	$a3,4632($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4016
    ld	$gp,16($sp)
    # Line 4015
    ld	$a4,24($sp)
    # Line 4016
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4015
    sw	$a4,4632($zero)
.end __glce_PixelMapuiv

# Function: __glce_PixelMapusv
# Declared: Line 4021 (Source lines: 4022-4032)
# Address: 0x0da5c7e0 - 0x0da5c864 (Size: 132 bytes, Frame: 192)
.globl __glce_PixelMapusv
.ent __glce_PixelMapusv
__glce_PixelMapusv:
    # Line 4026
    lw	$v0,4636($zero)
    # Line 4022
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 4026
    sd	$v0,24($sp)
    # Line 4022
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4024
    lw	$at,4112($zero)
    # Line 4022
    addiu	$v1,$v1,18424
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4028
    # lw $t9, -17420($gp) # &glPixelMapusv
    # Line 4024
    sd	$at,32($sp)
    # Line 4027
    lw	$at,6596($at)
    # Line 4022
    move	$s8,$a0
    # Line 4028
    jal	glPixelMapusv
    # Line 4027
    sw	$at,4636($zero)
    # Line 4030
    ld	$a2,40($sp)
    # lw $t9, -17420($gp) # &glPixelMapusv
    # Line 4029
    ld	$a3,32($sp)
    # Line 4030
    ld	$a1,48($sp)
    # Line 4029
    lw	$a3,10380($a3)
    # Line 4030
    move	$a0,$s8
    jal	glPixelMapusv
    # Line 4029
    sw	$a3,4636($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4032
    ld	$gp,16($sp)
    # Line 4031
    ld	$a4,24($sp)
    # Line 4032
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4031
    sw	$a4,4636($zero)
.end __glce_PixelMapusv

# Function: __glce_ReadBuffer
# Declared: Line 4037 (Source lines: 4038-4048)
# Address: 0x0da5c870 - 0x0da5c8e4 (Size: 116 bytes, Frame: 48)
.globl __glce_ReadBuffer
.ent __glce_ReadBuffer
__glce_ReadBuffer:
    # Line 4042
    lw	$v0,4640($zero)
    # Line 4038
    addiu	$sp,$sp,-48
    # Line 4042
    sd	$v0,24($sp)
    # Line 4038
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4040
    lw	$at,4112($zero)
    # Line 4038
    addiu	$v1,$v1,18280
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4044
    # lw $t9, -17416($gp) # &glReadBuffer
    # Line 4040
    sd	$at,32($sp)
    # Line 4043
    lw	$at,6600($at)
    # Line 4038
    move	$s8,$a0
    # Line 4044
    jal	glReadBuffer
    # Line 4043
    sw	$at,4640($zero)
    # Line 4046
    # lw $t9, -17416($gp) # &glReadBuffer
    # Line 4045
    ld	$a1,32($sp)
    lw	$a1,10384($a1)
    # Line 4046
    move	$a0,$s8
    jal	glReadBuffer
    # Line 4045
    sw	$a1,4640($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4048
    ld	$gp,16($sp)
    # Line 4047
    ld	$a2,24($sp)
    # Line 4048
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4047
    sw	$a2,4640($zero)
.end __glce_ReadBuffer

# Function: __glce_CopyPixels
# Declared: Line 4053 (Source lines: 4054-4064)
# Address: 0x0da5c8f0 - 0x0da5c984 (Size: 148 bytes, Frame: 208)
.globl __glce_CopyPixels
.ent __glce_CopyPixels
__glce_CopyPixels:
    # Line 4058
    lw	$v0,4644($zero)
    # Line 4054
    addiu	$sp,$sp,-80
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    # Line 4058
    sd	$v0,24($sp)
    # Line 4054
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4056
    lw	$at,4112($zero)
    # Line 4054
    addiu	$v1,$v1,18152
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4060
    # lw $t9, -17412($gp) # &glCopyPixels
    # Line 4056
    sd	$at,32($sp)
    # Line 4059
    lw	$at,6604($at)
    # Line 4054
    move	$s8,$a0
    # Line 4060
    jal	glCopyPixels
    # Line 4059
    sw	$at,4644($zero)
    # Line 4062
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -17412($gp) # &glCopyPixels
    # Line 4061
    ld	$a5,32($sp)
    # Line 4062
    ld	$a1,64($sp)
    # Line 4061
    lw	$a5,10388($a5)
    # Line 4062
    move	$a0,$s8
    jal	glCopyPixels
    # Line 4061
    sw	$a5,4644($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4064
    ld	$gp,16($sp)
    # Line 4063
    ld	$a6,24($sp)
    # Line 4064
    addiu	$sp,$sp,80
    jr	$ra
    # Line 4063
    sw	$a6,4644($zero)
.end __glce_CopyPixels

# Function: __glce_ReadPixels
# Declared: Line 4069 (Source lines: 4070-4078)
# Address: 0x0da5c990 - 0x0da5c9dc (Size: 76 bytes, Frame: 32)
.globl __glce_ReadPixels
.ent __glce_ReadPixels
__glce_ReadPixels:
    # Line 4070
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4074
    lw	$s8,4648($zero)
    # Line 4070
    lui	$v0,0x3
    # Line 4075
    lw	$at,4112($zero)
    # Line 4070
    addiu	$v0,$v0,17992
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4076
    # lw $t9, -17408($gp) # &glReadPixels
    # Line 4070
    sd	$ra,0($sp)
    # Line 4075
    lw	$at,10392($at)
    # Line 4076
    jal	glReadPixels
    # Line 4075
    sw	$at,4648($zero)
    ld	$ra,0($sp)
    # Line 4078
    ld	$gp,16($sp)
    # Line 4077
    sw	$s8,4648($zero)
    # Line 4078
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ReadPixels

# Function: __glce_DrawPixels
# Declared: Line 4083 (Source lines: 4084-4094)
# Address: 0x0da5c9e0 - 0x0da5ca74 (Size: 148 bytes, Frame: 208)
.globl __glce_DrawPixels
.ent __glce_DrawPixels
__glce_DrawPixels:
    # Line 4088
    lw	$v0,4652($zero)
    # Line 4084
    addiu	$sp,$sp,-80
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    # Line 4088
    sd	$v0,24($sp)
    # Line 4084
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4086
    lw	$at,4112($zero)
    # Line 4084
    addiu	$v1,$v1,17912
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4090
    # lw $t9, -17404($gp) # &glDrawPixels
    # Line 4086
    sd	$at,32($sp)
    # Line 4089
    lw	$at,6612($at)
    # Line 4084
    move	$s8,$a0
    # Line 4090
    jal	glDrawPixels
    # Line 4089
    sw	$at,4652($zero)
    # Line 4092
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -17404($gp) # &glDrawPixels
    # Line 4091
    ld	$a5,32($sp)
    # Line 4092
    ld	$a1,64($sp)
    # Line 4091
    lw	$a5,10396($a5)
    # Line 4092
    move	$a0,$s8
    jal	glDrawPixels
    # Line 4091
    sw	$a5,4652($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4094
    ld	$gp,16($sp)
    # Line 4093
    ld	$a6,24($sp)
    # Line 4094
    addiu	$sp,$sp,80
    jr	$ra
    # Line 4093
    sw	$a6,4652($zero)
.end __glce_DrawPixels

# Function: __glce_GetBooleanv
# Declared: Line 4099 (Source lines: 4100-4108)
# Address: 0x0da5ca80 - 0x0da5cacc (Size: 76 bytes, Frame: 32)
.globl __glce_GetBooleanv
.ent __glce_GetBooleanv
__glce_GetBooleanv:
    # Line 4100
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4104
    lw	$s8,4656($zero)
    # Line 4100
    lui	$v0,0x3
    # Line 4105
    lw	$at,4112($zero)
    # Line 4100
    addiu	$v0,$v0,17752
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4106
    # lw $t9, -17400($gp) # &glGetBooleanv
    # Line 4100
    sd	$ra,0($sp)
    # Line 4105
    lw	$at,10400($at)
    # Line 4106
    jal	glGetBooleanv
    # Line 4105
    sw	$at,4656($zero)
    ld	$ra,0($sp)
    # Line 4108
    ld	$gp,16($sp)
    # Line 4107
    sw	$s8,4656($zero)
    # Line 4108
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetBooleanv

# Function: __glce_GetClipPlane
# Declared: Line 4113 (Source lines: 4114-4122)
# Address: 0x0da5cad0 - 0x0da5cb1c (Size: 76 bytes, Frame: 32)
.globl __glce_GetClipPlane
.ent __glce_GetClipPlane
__glce_GetClipPlane:
    # Line 4114
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4118
    lw	$s8,4660($zero)
    # Line 4114
    lui	$v0,0x3
    # Line 4119
    lw	$at,4112($zero)
    # Line 4114
    addiu	$v0,$v0,17672
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4120
    # lw $t9, -17396($gp) # &glGetClipPlane
    # Line 4114
    sd	$ra,0($sp)
    # Line 4119
    lw	$at,10404($at)
    # Line 4120
    jal	glGetClipPlane
    # Line 4119
    sw	$at,4660($zero)
    ld	$ra,0($sp)
    # Line 4122
    ld	$gp,16($sp)
    # Line 4121
    sw	$s8,4660($zero)
    # Line 4122
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetClipPlane

# Function: __glce_GetDoublev
# Declared: Line 4127 (Source lines: 4128-4136)
# Address: 0x0da5cb20 - 0x0da5cb6c (Size: 76 bytes, Frame: 32)
.globl __glce_GetDoublev
.ent __glce_GetDoublev
__glce_GetDoublev:
    # Line 4128
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4132
    lw	$s8,4664($zero)
    # Line 4128
    lui	$v0,0x3
    # Line 4133
    lw	$at,4112($zero)
    # Line 4128
    addiu	$v0,$v0,17592
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4134
    # lw $t9, -17392($gp) # &glGetDoublev
    # Line 4128
    sd	$ra,0($sp)
    # Line 4133
    lw	$at,10408($at)
    # Line 4134
    jal	glGetDoublev
    # Line 4133
    sw	$at,4664($zero)
    ld	$ra,0($sp)
    # Line 4136
    ld	$gp,16($sp)
    # Line 4135
    sw	$s8,4664($zero)
    # Line 4136
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetDoublev

# Function: __glce_GetError
# Declared: Line 4141 (Source lines: 4142-4151)
# Address: 0x0da5cb70 - 0x0da5cbbc (Size: 76 bytes, Frame: 32)
.globl __glce_GetError
.ent __glce_GetError
__glce_GetError:
    # Line 4142
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4147
    lw	$s8,4668($zero)
    # Line 4142
    lui	$v0,0x3
    # Line 4148
    lw	$at,4112($zero)
    # Line 4142
    addiu	$v0,$v0,17512
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4149
    # lw $t9, -17388($gp) # &glGetError
    # Line 4142
    sd	$ra,0($sp)
    # Line 4148
    lw	$at,10412($at)
    # Line 4149
    jal	glGetError
    # Line 4148
    sw	$at,4668($zero)
    ld	$ra,0($sp)
    # Line 4151
    ld	$gp,16($sp)
    # Line 4150
    sw	$s8,4668($zero)
    # Line 4151
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetError

# Function: __glce_GetFloatv
# Declared: Line 4157 (Source lines: 4158-4166)
# Address: 0x0da5cbc0 - 0x0da5cc0c (Size: 76 bytes, Frame: 32)
.globl __glce_GetFloatv
.ent __glce_GetFloatv
__glce_GetFloatv:
    # Line 4158
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4162
    lw	$s8,4672($zero)
    # Line 4158
    lui	$v0,0x3
    # Line 4163
    lw	$at,4112($zero)
    # Line 4158
    addiu	$v0,$v0,17432
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4164
    # lw $t9, -17384($gp) # &glGetFloatv
    # Line 4158
    sd	$ra,0($sp)
    # Line 4163
    lw	$at,10416($at)
    # Line 4164
    jal	glGetFloatv
    # Line 4163
    sw	$at,4672($zero)
    ld	$ra,0($sp)
    # Line 4166
    ld	$gp,16($sp)
    # Line 4165
    sw	$s8,4672($zero)
    # Line 4166
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetFloatv

# Function: __glce_GetIntegerv
# Declared: Line 4171 (Source lines: 4172-4180)
# Address: 0x0da5cc10 - 0x0da5cc5c (Size: 76 bytes, Frame: 32)
.globl __glce_GetIntegerv
.ent __glce_GetIntegerv
__glce_GetIntegerv:
    # Line 4172
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4176
    lw	$s8,4676($zero)
    # Line 4172
    lui	$v0,0x3
    # Line 4177
    lw	$at,4112($zero)
    # Line 4172
    addiu	$v0,$v0,17352
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4178
    # lw $t9, -17380($gp) # &glGetIntegerv
    # Line 4172
    sd	$ra,0($sp)
    # Line 4177
    lw	$at,10420($at)
    # Line 4178
    jal	glGetIntegerv
    # Line 4177
    sw	$at,4676($zero)
    ld	$ra,0($sp)
    # Line 4180
    ld	$gp,16($sp)
    # Line 4179
    sw	$s8,4676($zero)
    # Line 4180
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetIntegerv

# Function: __glce_GetLightfv
# Declared: Line 4185 (Source lines: 4186-4194)
# Address: 0x0da5cc60 - 0x0da5ccac (Size: 76 bytes, Frame: 32)
.globl __glce_GetLightfv
.ent __glce_GetLightfv
__glce_GetLightfv:
    # Line 4186
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4190
    lw	$s8,4680($zero)
    # Line 4186
    lui	$v0,0x3
    # Line 4191
    lw	$at,4112($zero)
    # Line 4186
    addiu	$v0,$v0,17272
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4192
    # lw $t9, -17376($gp) # &glGetLightfv
    # Line 4186
    sd	$ra,0($sp)
    # Line 4191
    lw	$at,10424($at)
    # Line 4192
    jal	glGetLightfv
    # Line 4191
    sw	$at,4680($zero)
    ld	$ra,0($sp)
    # Line 4194
    ld	$gp,16($sp)
    # Line 4193
    sw	$s8,4680($zero)
    # Line 4194
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetLightfv

# Function: __glce_GetLightiv
# Declared: Line 4199 (Source lines: 4200-4208)
# Address: 0x0da5ccb0 - 0x0da5ccfc (Size: 76 bytes, Frame: 32)
.globl __glce_GetLightiv
.ent __glce_GetLightiv
__glce_GetLightiv:
    # Line 4200
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4204
    lw	$s8,4684($zero)
    # Line 4200
    lui	$v0,0x3
    # Line 4205
    lw	$at,4112($zero)
    # Line 4200
    addiu	$v0,$v0,17192
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4206
    # lw $t9, -17372($gp) # &glGetLightiv
    # Line 4200
    sd	$ra,0($sp)
    # Line 4205
    lw	$at,10428($at)
    # Line 4206
    jal	glGetLightiv
    # Line 4205
    sw	$at,4684($zero)
    ld	$ra,0($sp)
    # Line 4208
    ld	$gp,16($sp)
    # Line 4207
    sw	$s8,4684($zero)
    # Line 4208
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetLightiv

# Function: __glce_GetMapdv
# Declared: Line 4213 (Source lines: 4214-4222)
# Address: 0x0da5cd00 - 0x0da5cd4c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMapdv
.ent __glce_GetMapdv
__glce_GetMapdv:
    # Line 4214
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4218
    lw	$s8,4688($zero)
    # Line 4214
    lui	$v0,0x3
    # Line 4219
    lw	$at,4112($zero)
    # Line 4214
    addiu	$v0,$v0,17112
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4220
    # lw $t9, -17368($gp) # &glGetMapdv
    # Line 4214
    sd	$ra,0($sp)
    # Line 4219
    lw	$at,10432($at)
    # Line 4220
    jal	glGetMapdv
    # Line 4219
    sw	$at,4688($zero)
    ld	$ra,0($sp)
    # Line 4222
    ld	$gp,16($sp)
    # Line 4221
    sw	$s8,4688($zero)
    # Line 4222
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMapdv

# Function: __glce_GetMapfv
# Declared: Line 4227 (Source lines: 4228-4236)
# Address: 0x0da5cd50 - 0x0da5cd9c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMapfv
.ent __glce_GetMapfv
__glce_GetMapfv:
    # Line 4228
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4232
    lw	$s8,4692($zero)
    # Line 4228
    lui	$v0,0x3
    # Line 4233
    lw	$at,4112($zero)
    # Line 4228
    addiu	$v0,$v0,17032
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4234
    # lw $t9, -17364($gp) # &glGetMapfv
    # Line 4228
    sd	$ra,0($sp)
    # Line 4233
    lw	$at,10436($at)
    # Line 4234
    jal	glGetMapfv
    # Line 4233
    sw	$at,4692($zero)
    ld	$ra,0($sp)
    # Line 4236
    ld	$gp,16($sp)
    # Line 4235
    sw	$s8,4692($zero)
    # Line 4236
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMapfv

# Function: __glce_GetMapiv
# Declared: Line 4241 (Source lines: 4242-4250)
# Address: 0x0da5cda0 - 0x0da5cdec (Size: 76 bytes, Frame: 32)
.globl __glce_GetMapiv
.ent __glce_GetMapiv
__glce_GetMapiv:
    # Line 4242
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4246
    lw	$s8,4696($zero)
    # Line 4242
    lui	$v0,0x3
    # Line 4247
    lw	$at,4112($zero)
    # Line 4242
    addiu	$v0,$v0,16952
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4248
    # lw $t9, -17360($gp) # &glGetMapiv
    # Line 4242
    sd	$ra,0($sp)
    # Line 4247
    lw	$at,10440($at)
    # Line 4248
    jal	glGetMapiv
    # Line 4247
    sw	$at,4696($zero)
    ld	$ra,0($sp)
    # Line 4250
    ld	$gp,16($sp)
    # Line 4249
    sw	$s8,4696($zero)
    # Line 4250
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMapiv

# Function: __glce_GetMaterialfv
# Declared: Line 4255 (Source lines: 4256-4264)
# Address: 0x0da5cdf0 - 0x0da5ce3c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMaterialfv
.ent __glce_GetMaterialfv
__glce_GetMaterialfv:
    # Line 4256
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4260
    lw	$s8,4700($zero)
    # Line 4256
    lui	$v0,0x3
    # Line 4261
    lw	$at,4112($zero)
    # Line 4256
    addiu	$v0,$v0,16872
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4262
    # lw $t9, -17356($gp) # &glGetMaterialfv
    # Line 4256
    sd	$ra,0($sp)
    # Line 4261
    lw	$at,10444($at)
    # Line 4262
    jal	glGetMaterialfv
    # Line 4261
    sw	$at,4700($zero)
    ld	$ra,0($sp)
    # Line 4264
    ld	$gp,16($sp)
    # Line 4263
    sw	$s8,4700($zero)
    # Line 4264
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMaterialfv

# Function: __glce_GetMaterialiv
# Declared: Line 4269 (Source lines: 4270-4278)
# Address: 0x0da5ce40 - 0x0da5ce8c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMaterialiv
.ent __glce_GetMaterialiv
__glce_GetMaterialiv:
    # Line 4270
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4274
    lw	$s8,4704($zero)
    # Line 4270
    lui	$v0,0x3
    # Line 4275
    lw	$at,4112($zero)
    # Line 4270
    addiu	$v0,$v0,16792
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4276
    # lw $t9, -17352($gp) # &glGetMaterialiv
    # Line 4270
    sd	$ra,0($sp)
    # Line 4275
    lw	$at,10448($at)
    # Line 4276
    jal	glGetMaterialiv
    # Line 4275
    sw	$at,4704($zero)
    ld	$ra,0($sp)
    # Line 4278
    ld	$gp,16($sp)
    # Line 4277
    sw	$s8,4704($zero)
    # Line 4278
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMaterialiv

# Function: __glce_GetPixelMapfv
# Declared: Line 4283 (Source lines: 4284-4292)
# Address: 0x0da5ce90 - 0x0da5cedc (Size: 76 bytes, Frame: 32)
.globl __glce_GetPixelMapfv
.ent __glce_GetPixelMapfv
__glce_GetPixelMapfv:
    # Line 4284
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4288
    lw	$s8,4708($zero)
    # Line 4284
    lui	$v0,0x3
    # Line 4289
    lw	$at,4112($zero)
    # Line 4284
    addiu	$v0,$v0,16712
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4290
    # lw $t9, -17348($gp) # &glGetPixelMapfv
    # Line 4284
    sd	$ra,0($sp)
    # Line 4289
    lw	$at,10452($at)
    # Line 4290
    jal	glGetPixelMapfv
    # Line 4289
    sw	$at,4708($zero)
    ld	$ra,0($sp)
    # Line 4292
    ld	$gp,16($sp)
    # Line 4291
    sw	$s8,4708($zero)
    # Line 4292
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPixelMapfv

# Function: __glce_GetPixelMapuiv
# Declared: Line 4297 (Source lines: 4298-4306)
# Address: 0x0da5cee0 - 0x0da5cf2c (Size: 76 bytes, Frame: 32)
.globl __glce_GetPixelMapuiv
.ent __glce_GetPixelMapuiv
__glce_GetPixelMapuiv:
    # Line 4298
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4302
    lw	$s8,4712($zero)
    # Line 4298
    lui	$v0,0x3
    # Line 4303
    lw	$at,4112($zero)
    # Line 4298
    addiu	$v0,$v0,16632
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4304
    # lw $t9, -17344($gp) # &glGetPixelMapuiv
    # Line 4298
    sd	$ra,0($sp)
    # Line 4303
    lw	$at,10456($at)
    # Line 4304
    jal	glGetPixelMapuiv
    # Line 4303
    sw	$at,4712($zero)
    ld	$ra,0($sp)
    # Line 4306
    ld	$gp,16($sp)
    # Line 4305
    sw	$s8,4712($zero)
    # Line 4306
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPixelMapuiv

# Function: __glce_GetPixelMapusv
# Declared: Line 4311 (Source lines: 4312-4320)
# Address: 0x0da5cf30 - 0x0da5cf7c (Size: 76 bytes, Frame: 32)
.globl __glce_GetPixelMapusv
.ent __glce_GetPixelMapusv
__glce_GetPixelMapusv:
    # Line 4312
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4316
    lw	$s8,4716($zero)
    # Line 4312
    lui	$v0,0x3
    # Line 4317
    lw	$at,4112($zero)
    # Line 4312
    addiu	$v0,$v0,16552
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4318
    # lw $t9, -17340($gp) # &glGetPixelMapusv
    # Line 4312
    sd	$ra,0($sp)
    # Line 4317
    lw	$at,10460($at)
    # Line 4318
    jal	glGetPixelMapusv
    # Line 4317
    sw	$at,4716($zero)
    ld	$ra,0($sp)
    # Line 4320
    ld	$gp,16($sp)
    # Line 4319
    sw	$s8,4716($zero)
    # Line 4320
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPixelMapusv

# Function: __glce_GetPolygonStipple
# Declared: Line 4325 (Source lines: 4326-4334)
# Address: 0x0da5cf80 - 0x0da5cfcc (Size: 76 bytes, Frame: 32)
.globl __glce_GetPolygonStipple
.ent __glce_GetPolygonStipple
__glce_GetPolygonStipple:
    # Line 4326
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4330
    lw	$s8,4720($zero)
    # Line 4326
    lui	$v0,0x3
    # Line 4331
    lw	$at,4112($zero)
    # Line 4326
    addiu	$v0,$v0,16472
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4332
    # lw $t9, -17336($gp) # &glGetPolygonStipple
    # Line 4326
    sd	$ra,0($sp)
    # Line 4331
    lw	$at,10464($at)
    # Line 4332
    jal	glGetPolygonStipple
    # Line 4331
    sw	$at,4720($zero)
    ld	$ra,0($sp)
    # Line 4334
    ld	$gp,16($sp)
    # Line 4333
    sw	$s8,4720($zero)
    # Line 4334
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPolygonStipple

# Function: __glce_GetString
# Declared: Line 4339 (Source lines: 4340-4349)
# Address: 0x0da5cfd0 - 0x0da5d01c (Size: 76 bytes, Frame: 32)
.globl __glce_GetString
.ent __glce_GetString
__glce_GetString:
    # Line 4340
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4345
    lw	$s8,4724($zero)
    # Line 4340
    lui	$v0,0x3
    # Line 4346
    lw	$at,4112($zero)
    # Line 4340
    addiu	$v0,$v0,16392
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4347
    # lw $t9, -17332($gp) # &glGetString
    # Line 4340
    sd	$ra,0($sp)
    # Line 4346
    lw	$at,10468($at)
    # Line 4347
    jal	glGetString
    # Line 4346
    sw	$at,4724($zero)
    ld	$ra,0($sp)
    # Line 4349
    ld	$gp,16($sp)
    # Line 4348
    sw	$s8,4724($zero)
    # Line 4349
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetString

# Function: __glce_GetTexEnvfv
# Declared: Line 4355 (Source lines: 4356-4364)
# Address: 0x0da5d020 - 0x0da5d06c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexEnvfv
.ent __glce_GetTexEnvfv
__glce_GetTexEnvfv:
    # Line 4356
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4360
    lw	$s8,4728($zero)
    # Line 4356
    lui	$v0,0x3
    # Line 4361
    lw	$at,4112($zero)
    # Line 4356
    addiu	$v0,$v0,16312
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4362
    # lw $t9, -17328($gp) # &glGetTexEnvfv
    # Line 4356
    sd	$ra,0($sp)
    # Line 4361
    lw	$at,10472($at)
    # Line 4362
    jal	glGetTexEnvfv
    # Line 4361
    sw	$at,4728($zero)
    ld	$ra,0($sp)
    # Line 4364
    ld	$gp,16($sp)
    # Line 4363
    sw	$s8,4728($zero)
    # Line 4364
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexEnvfv

# Function: __glce_GetTexEnviv
# Declared: Line 4369 (Source lines: 4370-4378)
# Address: 0x0da5d070 - 0x0da5d0bc (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexEnviv
.ent __glce_GetTexEnviv
__glce_GetTexEnviv:
    # Line 4370
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4374
    lw	$s8,4732($zero)
    # Line 4370
    lui	$v0,0x3
    # Line 4375
    lw	$at,4112($zero)
    # Line 4370
    addiu	$v0,$v0,16232
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4376
    # lw $t9, -17324($gp) # &glGetTexEnviv
    # Line 4370
    sd	$ra,0($sp)
    # Line 4375
    lw	$at,10476($at)
    # Line 4376
    jal	glGetTexEnviv
    # Line 4375
    sw	$at,4732($zero)
    ld	$ra,0($sp)
    # Line 4378
    ld	$gp,16($sp)
    # Line 4377
    sw	$s8,4732($zero)
    # Line 4378
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexEnviv

# Function: __glce_GetTexGendv
# Declared: Line 4383 (Source lines: 4384-4392)
# Address: 0x0da5d0c0 - 0x0da5d10c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexGendv
.ent __glce_GetTexGendv
__glce_GetTexGendv:
    # Line 4384
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4388
    lw	$s8,4736($zero)
    # Line 4384
    lui	$v0,0x3
    # Line 4389
    lw	$at,4112($zero)
    # Line 4384
    addiu	$v0,$v0,16152
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4390
    # lw $t9, -17320($gp) # &glGetTexGendv
    # Line 4384
    sd	$ra,0($sp)
    # Line 4389
    lw	$at,10480($at)
    # Line 4390
    jal	glGetTexGendv
    # Line 4389
    sw	$at,4736($zero)
    ld	$ra,0($sp)
    # Line 4392
    ld	$gp,16($sp)
    # Line 4391
    sw	$s8,4736($zero)
    # Line 4392
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexGendv

# Function: __glce_GetTexGenfv
# Declared: Line 4397 (Source lines: 4398-4406)
# Address: 0x0da5d110 - 0x0da5d15c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexGenfv
.ent __glce_GetTexGenfv
__glce_GetTexGenfv:
    # Line 4398
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4402
    lw	$s8,4740($zero)
    # Line 4398
    lui	$v0,0x3
    # Line 4403
    lw	$at,4112($zero)
    # Line 4398
    addiu	$v0,$v0,16072
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4404
    # lw $t9, -17316($gp) # &glGetTexGenfv
    # Line 4398
    sd	$ra,0($sp)
    # Line 4403
    lw	$at,10484($at)
    # Line 4404
    jal	glGetTexGenfv
    # Line 4403
    sw	$at,4740($zero)
    ld	$ra,0($sp)
    # Line 4406
    ld	$gp,16($sp)
    # Line 4405
    sw	$s8,4740($zero)
    # Line 4406
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexGenfv

# Function: __glce_GetTexGeniv
# Declared: Line 4411 (Source lines: 4412-4420)
# Address: 0x0da5d160 - 0x0da5d1ac (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexGeniv
.ent __glce_GetTexGeniv
__glce_GetTexGeniv:
    # Line 4412
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4416
    lw	$s8,4744($zero)
    # Line 4412
    lui	$v0,0x3
    # Line 4417
    lw	$at,4112($zero)
    # Line 4412
    addiu	$v0,$v0,15992
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4418
    # lw $t9, -17312($gp) # &glGetTexGeniv
    # Line 4412
    sd	$ra,0($sp)
    # Line 4417
    lw	$at,10488($at)
    # Line 4418
    jal	glGetTexGeniv
    # Line 4417
    sw	$at,4744($zero)
    ld	$ra,0($sp)
    # Line 4420
    ld	$gp,16($sp)
    # Line 4419
    sw	$s8,4744($zero)
    # Line 4420
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexGeniv

# Function: __glce_GetTexImage
# Declared: Line 4425 (Source lines: 4426-4434)
# Address: 0x0da5d1b0 - 0x0da5d1fc (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexImage
.ent __glce_GetTexImage
__glce_GetTexImage:
    # Line 4426
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4430
    lw	$s8,4748($zero)
    # Line 4426
    lui	$v0,0x3
    # Line 4431
    lw	$at,4112($zero)
    # Line 4426
    addiu	$v0,$v0,15912
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4432
    # lw $t9, -17308($gp) # &glGetTexImage
    # Line 4426
    sd	$ra,0($sp)
    # Line 4431
    lw	$at,10492($at)
    # Line 4432
    jal	glGetTexImage
    # Line 4431
    sw	$at,4748($zero)
    ld	$ra,0($sp)
    # Line 4434
    ld	$gp,16($sp)
    # Line 4433
    sw	$s8,4748($zero)
    # Line 4434
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexImage

# Function: __glce_GetTexParameterfv
# Declared: Line 4439 (Source lines: 4440-4448)
# Address: 0x0da5d200 - 0x0da5d24c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexParameterfv
.ent __glce_GetTexParameterfv
__glce_GetTexParameterfv:
    # Line 4440
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4444
    lw	$s8,4752($zero)
    # Line 4440
    lui	$v0,0x3
    # Line 4445
    lw	$at,4112($zero)
    # Line 4440
    addiu	$v0,$v0,15832
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4446
    # lw $t9, -17304($gp) # &glGetTexParameterfv
    # Line 4440
    sd	$ra,0($sp)
    # Line 4445
    lw	$at,10496($at)
    # Line 4446
    jal	glGetTexParameterfv
    # Line 4445
    sw	$at,4752($zero)
    ld	$ra,0($sp)
    # Line 4448
    ld	$gp,16($sp)
    # Line 4447
    sw	$s8,4752($zero)
    # Line 4448
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexParameterfv

# Function: __glce_GetTexParameteriv
# Declared: Line 4453 (Source lines: 4454-4462)
# Address: 0x0da5d250 - 0x0da5d29c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexParameteriv
.ent __glce_GetTexParameteriv
__glce_GetTexParameteriv:
    # Line 4454
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4458
    lw	$s8,4756($zero)
    # Line 4454
    lui	$v0,0x3
    # Line 4459
    lw	$at,4112($zero)
    # Line 4454
    addiu	$v0,$v0,15752
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4460
    # lw $t9, -17300($gp) # &glGetTexParameteriv
    # Line 4454
    sd	$ra,0($sp)
    # Line 4459
    lw	$at,10500($at)
    # Line 4460
    jal	glGetTexParameteriv
    # Line 4459
    sw	$at,4756($zero)
    ld	$ra,0($sp)
    # Line 4462
    ld	$gp,16($sp)
    # Line 4461
    sw	$s8,4756($zero)
    # Line 4462
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexParameteriv

# Function: __glce_GetTexLevelParameterfv
# Declared: Line 4467 (Source lines: 4468-4476)
# Address: 0x0da5d2a0 - 0x0da5d2ec (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexLevelParameterfv
.ent __glce_GetTexLevelParameterfv
__glce_GetTexLevelParameterfv:
    # Line 4468
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4472
    lw	$s8,4760($zero)
    # Line 4468
    lui	$v0,0x3
    # Line 4473
    lw	$at,4112($zero)
    # Line 4468
    addiu	$v0,$v0,15672
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4474
    # lw $t9, -17296($gp) # &glGetTexLevelParameterfv
    # Line 4468
    sd	$ra,0($sp)
    # Line 4473
    lw	$at,10504($at)
    # Line 4474
    jal	glGetTexLevelParameterfv
    # Line 4473
    sw	$at,4760($zero)
    ld	$ra,0($sp)
    # Line 4476
    ld	$gp,16($sp)
    # Line 4475
    sw	$s8,4760($zero)
    # Line 4476
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexLevelParameterfv

# Function: __glce_GetTexLevelParameteriv
# Declared: Line 4481 (Source lines: 4482-4490)
# Address: 0x0da5d2f0 - 0x0da5d33c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexLevelParameteriv
.ent __glce_GetTexLevelParameteriv
__glce_GetTexLevelParameteriv:
    # Line 4482
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4486
    lw	$s8,4764($zero)
    # Line 4482
    lui	$v0,0x3
    # Line 4487
    lw	$at,4112($zero)
    # Line 4482
    addiu	$v0,$v0,15592
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4488
    # lw $t9, -17292($gp) # &glGetTexLevelParameteriv
    # Line 4482
    sd	$ra,0($sp)
    # Line 4487
    lw	$at,10508($at)
    # Line 4488
    jal	glGetTexLevelParameteriv
    # Line 4487
    sw	$at,4764($zero)
    ld	$ra,0($sp)
    # Line 4490
    ld	$gp,16($sp)
    # Line 4489
    sw	$s8,4764($zero)
    # Line 4490
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexLevelParameteriv

# Function: __glce_IsEnabled
# Declared: Line 4495 (Source lines: 4496-4505)
# Address: 0x0da5d340 - 0x0da5d390 (Size: 80 bytes, Frame: 32)
.globl __glce_IsEnabled
.ent __glce_IsEnabled
__glce_IsEnabled:
    # Line 4496
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4501
    lw	$s8,4768($zero)
    # Line 4496
    lui	$v0,0x3
    # Line 4502
    lw	$at,4112($zero)
    # Line 4496
    addiu	$v0,$v0,15512
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4503
    # lw $t9, -17288($gp) # &glIsEnabled
    # Line 4496
    sd	$ra,0($sp)
    # Line 4502
    lw	$at,10512($at)
    # Line 4503
    jal	glIsEnabled
    # Line 4502
    sw	$at,4768($zero)
    ld	$ra,0($sp)
    # Line 4505
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 4504
    sw	$s8,4768($zero)
    # Line 4505
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IsEnabled

# Function: __glce_IsList
# Declared: Line 4511 (Source lines: 4512-4521)
# Address: 0x0da5d390 - 0x0da5d3e0 (Size: 80 bytes, Frame: 32)
.globl __glce_IsList
.ent __glce_IsList
__glce_IsList:
    # Line 4512
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4517
    lw	$s8,4772($zero)
    # Line 4512
    lui	$v0,0x3
    # Line 4518
    lw	$at,4112($zero)
    # Line 4512
    addiu	$v0,$v0,15432
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4519
    # lw $t9, -17284($gp) # &glIsList
    # Line 4512
    sd	$ra,0($sp)
    # Line 4518
    lw	$at,10516($at)
    # Line 4519
    jal	glIsList
    # Line 4518
    sw	$at,4772($zero)
    ld	$ra,0($sp)
    # Line 4521
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 4520
    sw	$s8,4772($zero)
    # Line 4521
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IsList

# Function: __glce_DepthRange
# Declared: Line 4527 (Source lines: 4528-4538)
# Address: 0x0da5d3e0 - 0x0da5d45c (Size: 124 bytes, Frame: 48)
.globl __glce_DepthRange
.ent __glce_DepthRange
__glce_DepthRange:
    # Line 4532
    lw	$v0,4776($zero)
    # Line 4528
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 4532
    sd	$v0,40($sp)
    # Line 4528
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x3
    # Line 4530
    lw	$s8,4112($zero)
    # Line 4528
    addiu	$v1,$v1,15352
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 4534
    # lw $t9, -17280($gp) # &glDepthRange
    # Line 4528
    sdc1	$f30,0($sp)
    # Line 4533
    lw	$at,6736($s8)
    # Line 4528
    mov.d	$f30,$f12
    # Line 4534
    jal	glDepthRange
    # Line 4533
    sw	$at,4776($zero)
    # Line 4536
    # lw $t9, -17280($gp) # &glDepthRange
    ldc1	$f13,8($sp)
    # Line 4535
    lw	$a0,10520($s8)
    # Line 4536
    mov.d	$f12,$f30
    jal	glDepthRange
    # Line 4535
    sw	$a0,4776($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 4538
    ld	$gp,32($sp)
    # Line 4537
    ld	$a1,40($sp)
    # Line 4538
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4537
    sw	$a1,4776($zero)
.end __glce_DepthRange

# Function: __glce_Frustum
# Declared: Line 4543 (Source lines: 4544-4554)
# Address: 0x0da5d460 - 0x0da5d4fc (Size: 156 bytes, Frame: 208)
.globl __glce_Frustum
.ent __glce_Frustum
__glce_Frustum:
    # Line 4548
    lw	$v0,4780($zero)
    # Line 4544
    addiu	$sp,$sp,-80
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,24($sp)
    sdc1	$f14,32($sp)
    sdc1	$f13,40($sp)
    # Line 4548
    sd	$v0,72($sp)
    # Line 4544
    sd	$ra,48($sp)
    sd	$s8,56($sp)
    lui	$v1,0x3
    # Line 4546
    lw	$s8,4112($zero)
    # Line 4544
    addiu	$v1,$v1,15224
    sd	$gp,64($sp)
    addu	$gp,$t9,$v1
    # Line 4550
    # lw $t9, -17276($gp) # &glFrustum
    # Line 4544
    sdc1	$f30,0($sp)
    # Line 4549
    lw	$at,6740($s8)
    # Line 4544
    mov.d	$f30,$f12
    # Line 4550
    jal	glFrustum
    # Line 4549
    sw	$at,4780($zero)
    # Line 4552
    ldc1	$f17,8($sp)
    ldc1	$f16,16($sp)
    ldc1	$f15,24($sp)
    ldc1	$f14,32($sp)
    # lw $t9, -17276($gp) # &glFrustum
    ldc1	$f13,40($sp)
    # Line 4551
    lw	$a0,10524($s8)
    # Line 4552
    mov.d	$f12,$f30
    jal	glFrustum
    # Line 4551
    sw	$a0,4780($zero)
    ld	$s8,56($sp)
    ldc1	$f30,0($sp)
    ld	$ra,48($sp)
    # Line 4554
    ld	$gp,64($sp)
    # Line 4553
    ld	$a1,72($sp)
    # Line 4554
    addiu	$sp,$sp,80
    jr	$ra
    # Line 4553
    sw	$a1,4780($zero)
.end __glce_Frustum

# Function: __glce_LoadIdentity
# Declared: Line 4559 (Source lines: 4560-4570)
# Address: 0x0da5d500 - 0x0da5d564 (Size: 100 bytes, Frame: 32)
.globl __glce_LoadIdentity
.ent __glce_LoadIdentity
__glce_LoadIdentity:
    # Line 4564
    lw	$v0,4784($zero)
    # Line 4560
    addiu	$sp,$sp,-32
    # Line 4564
    sd	$v0,24($sp)
    # Line 4560
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4562
    lw	$s8,4112($zero)
    # Line 4560
    addiu	$v1,$v1,15064
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4566
    # lw $t9, -17272($gp) # &glLoadIdentity
    # Line 4560
    sd	$ra,0($sp)
    # Line 4565
    lw	$at,6744($s8)
    # Line 4566
    jal	glLoadIdentity
    # Line 4565
    sw	$at,4784($zero)
    # Line 4568
    # lw $t9, -17272($gp) # &glLoadIdentity
    # Line 4567
    lw	$a0,10528($s8)
    # Line 4568
    jal	glLoadIdentity
    # Line 4567
    sw	$a0,4784($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4570
    ld	$gp,16($sp)
    # Line 4569
    ld	$a1,24($sp)
    # Line 4570
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4569
    sw	$a1,4784($zero)
.end __glce_LoadIdentity

# Function: __glce_LoadMatrixf
# Declared: Line 4575 (Source lines: 4576-4586)
# Address: 0x0da5d570 - 0x0da5d5e4 (Size: 116 bytes, Frame: 48)
.globl __glce_LoadMatrixf
.ent __glce_LoadMatrixf
__glce_LoadMatrixf:
    # Line 4580
    lw	$v0,4788($zero)
    # Line 4576
    addiu	$sp,$sp,-48
    # Line 4580
    sd	$v0,24($sp)
    # Line 4576
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4578
    lw	$at,4112($zero)
    # Line 4576
    addiu	$v1,$v1,14952
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4582
    # lw $t9, -17268($gp) # &glLoadMatrixf
    # Line 4578
    sd	$at,32($sp)
    # Line 4581
    lw	$at,6748($at)
    # Line 4576
    move	$s8,$a0
    # Line 4582
    jal	glLoadMatrixf
    # Line 4581
    sw	$at,4788($zero)
    # Line 4584
    # lw $t9, -17268($gp) # &glLoadMatrixf
    # Line 4583
    ld	$a1,32($sp)
    lw	$a1,10532($a1)
    # Line 4584
    move	$a0,$s8
    jal	glLoadMatrixf
    # Line 4583
    sw	$a1,4788($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4586
    ld	$gp,16($sp)
    # Line 4585
    ld	$a2,24($sp)
    # Line 4586
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4585
    sw	$a2,4788($zero)
.end __glce_LoadMatrixf

# Function: __glce_LoadMatrixd
# Declared: Line 4591 (Source lines: 4592-4602)
# Address: 0x0da5d5f0 - 0x0da5d664 (Size: 116 bytes, Frame: 48)
.globl __glce_LoadMatrixd
.ent __glce_LoadMatrixd
__glce_LoadMatrixd:
    # Line 4596
    lw	$v0,4792($zero)
    # Line 4592
    addiu	$sp,$sp,-48
    # Line 4596
    sd	$v0,24($sp)
    # Line 4592
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4594
    lw	$at,4112($zero)
    # Line 4592
    addiu	$v1,$v1,14824
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4598
    # lw $t9, -17264($gp) # &glLoadMatrixd
    # Line 4594
    sd	$at,32($sp)
    # Line 4597
    lw	$at,6752($at)
    # Line 4592
    move	$s8,$a0
    # Line 4598
    jal	glLoadMatrixd
    # Line 4597
    sw	$at,4792($zero)
    # Line 4600
    # lw $t9, -17264($gp) # &glLoadMatrixd
    # Line 4599
    ld	$a1,32($sp)
    lw	$a1,10536($a1)
    # Line 4600
    move	$a0,$s8
    jal	glLoadMatrixd
    # Line 4599
    sw	$a1,4792($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4602
    ld	$gp,16($sp)
    # Line 4601
    ld	$a2,24($sp)
    # Line 4602
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4601
    sw	$a2,4792($zero)
.end __glce_LoadMatrixd

# Function: __glce_MatrixMode
# Declared: Line 4607 (Source lines: 4608-4618)
# Address: 0x0da5d670 - 0x0da5d6e4 (Size: 116 bytes, Frame: 48)
.globl __glce_MatrixMode
.ent __glce_MatrixMode
__glce_MatrixMode:
    # Line 4612
    lw	$v0,4796($zero)
    # Line 4608
    addiu	$sp,$sp,-48
    # Line 4612
    sd	$v0,24($sp)
    # Line 4608
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4610
    lw	$at,4112($zero)
    # Line 4608
    addiu	$v1,$v1,14696
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4614
    # lw $t9, -17260($gp) # &glMatrixMode
    # Line 4610
    sd	$at,32($sp)
    # Line 4613
    lw	$at,6756($at)
    # Line 4608
    move	$s8,$a0
    # Line 4614
    jal	glMatrixMode
    # Line 4613
    sw	$at,4796($zero)
    # Line 4616
    # lw $t9, -17260($gp) # &glMatrixMode
    # Line 4615
    ld	$a1,32($sp)
    lw	$a1,10540($a1)
    # Line 4616
    move	$a0,$s8
    jal	glMatrixMode
    # Line 4615
    sw	$a1,4796($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4618
    ld	$gp,16($sp)
    # Line 4617
    ld	$a2,24($sp)
    # Line 4618
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4617
    sw	$a2,4796($zero)
.end __glce_MatrixMode

# Function: __glce_MultMatrixf
# Declared: Line 4623 (Source lines: 4624-4634)
# Address: 0x0da5d6f0 - 0x0da5d764 (Size: 116 bytes, Frame: 48)
.globl __glce_MultMatrixf
.ent __glce_MultMatrixf
__glce_MultMatrixf:
    # Line 4628
    lw	$v0,4800($zero)
    # Line 4624
    addiu	$sp,$sp,-48
    # Line 4628
    sd	$v0,24($sp)
    # Line 4624
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4626
    lw	$at,4112($zero)
    # Line 4624
    addiu	$v1,$v1,14568
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4630
    # lw $t9, -17256($gp) # &glMultMatrixf
    # Line 4626
    sd	$at,32($sp)
    # Line 4629
    lw	$at,6760($at)
    # Line 4624
    move	$s8,$a0
    # Line 4630
    jal	glMultMatrixf
    # Line 4629
    sw	$at,4800($zero)
    # Line 4632
    # lw $t9, -17256($gp) # &glMultMatrixf
    # Line 4631
    ld	$a1,32($sp)
    lw	$a1,10544($a1)
    # Line 4632
    move	$a0,$s8
    jal	glMultMatrixf
    # Line 4631
    sw	$a1,4800($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4634
    ld	$gp,16($sp)
    # Line 4633
    ld	$a2,24($sp)
    # Line 4634
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4633
    sw	$a2,4800($zero)
.end __glce_MultMatrixf

# Function: __glce_MultMatrixd
# Declared: Line 4639 (Source lines: 4640-4650)
# Address: 0x0da5d770 - 0x0da5d7e4 (Size: 116 bytes, Frame: 48)
.globl __glce_MultMatrixd
.ent __glce_MultMatrixd
__glce_MultMatrixd:
    # Line 4644
    lw	$v0,4804($zero)
    # Line 4640
    addiu	$sp,$sp,-48
    # Line 4644
    sd	$v0,24($sp)
    # Line 4640
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4642
    lw	$at,4112($zero)
    # Line 4640
    addiu	$v1,$v1,14440
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4646
    # lw $t9, -17252($gp) # &glMultMatrixd
    # Line 4642
    sd	$at,32($sp)
    # Line 4645
    lw	$at,6764($at)
    # Line 4640
    move	$s8,$a0
    # Line 4646
    jal	glMultMatrixd
    # Line 4645
    sw	$at,4804($zero)
    # Line 4648
    # lw $t9, -17252($gp) # &glMultMatrixd
    # Line 4647
    ld	$a1,32($sp)
    lw	$a1,10548($a1)
    # Line 4648
    move	$a0,$s8
    jal	glMultMatrixd
    # Line 4647
    sw	$a1,4804($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4650
    ld	$gp,16($sp)
    # Line 4649
    ld	$a2,24($sp)
    # Line 4650
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4649
    sw	$a2,4804($zero)
.end __glce_MultMatrixd

# Function: __glce_Ortho
# Declared: Line 4655 (Source lines: 4656-4666)
# Address: 0x0da5d7f0 - 0x0da5d88c (Size: 156 bytes, Frame: 208)
.globl __glce_Ortho
.ent __glce_Ortho
__glce_Ortho:
    # Line 4660
    lw	$v0,4808($zero)
    # Line 4656
    addiu	$sp,$sp,-80
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,24($sp)
    sdc1	$f14,32($sp)
    sdc1	$f13,40($sp)
    # Line 4660
    sd	$v0,72($sp)
    # Line 4656
    sd	$ra,48($sp)
    sd	$s8,56($sp)
    lui	$v1,0x3
    # Line 4658
    lw	$s8,4112($zero)
    # Line 4656
    addiu	$v1,$v1,14312
    sd	$gp,64($sp)
    addu	$gp,$t9,$v1
    # Line 4662
    # lw $t9, -17248($gp) # &glOrtho
    # Line 4656
    sdc1	$f30,0($sp)
    # Line 4661
    lw	$at,6768($s8)
    # Line 4656
    mov.d	$f30,$f12
    # Line 4662
    jal	glOrtho
    # Line 4661
    sw	$at,4808($zero)
    # Line 4664
    ldc1	$f17,8($sp)
    ldc1	$f16,16($sp)
    ldc1	$f15,24($sp)
    ldc1	$f14,32($sp)
    # lw $t9, -17248($gp) # &glOrtho
    ldc1	$f13,40($sp)
    # Line 4663
    lw	$a0,10552($s8)
    # Line 4664
    mov.d	$f12,$f30
    jal	glOrtho
    # Line 4663
    sw	$a0,4808($zero)
    ld	$s8,56($sp)
    ldc1	$f30,0($sp)
    ld	$ra,48($sp)
    # Line 4666
    ld	$gp,64($sp)
    # Line 4665
    ld	$a1,72($sp)
    # Line 4666
    addiu	$sp,$sp,80
    jr	$ra
    # Line 4665
    sw	$a1,4808($zero)
.end __glce_Ortho

# Function: __glce_PopMatrix
# Declared: Line 4671 (Source lines: 4672-4682)
# Address: 0x0da5d890 - 0x0da5d8f4 (Size: 100 bytes, Frame: 32)
.globl __glce_PopMatrix
.ent __glce_PopMatrix
__glce_PopMatrix:
    # Line 4676
    lw	$v0,4812($zero)
    # Line 4672
    addiu	$sp,$sp,-32
    # Line 4676
    sd	$v0,24($sp)
    # Line 4672
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4674
    lw	$s8,4112($zero)
    # Line 4672
    addiu	$v1,$v1,14152
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4678
    # lw $t9, -17244($gp) # &glPopMatrix
    # Line 4672
    sd	$ra,0($sp)
    # Line 4677
    lw	$at,6772($s8)
    # Line 4678
    jal	glPopMatrix
    # Line 4677
    sw	$at,4812($zero)
    # Line 4680
    # lw $t9, -17244($gp) # &glPopMatrix
    # Line 4679
    lw	$a0,10556($s8)
    # Line 4680
    jal	glPopMatrix
    # Line 4679
    sw	$a0,4812($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4682
    ld	$gp,16($sp)
    # Line 4681
    ld	$a1,24($sp)
    # Line 4682
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4681
    sw	$a1,4812($zero)
.end __glce_PopMatrix

# Function: __glce_PushMatrix
# Declared: Line 4687 (Source lines: 4688-4698)
# Address: 0x0da5d900 - 0x0da5d964 (Size: 100 bytes, Frame: 32)
.globl __glce_PushMatrix
.ent __glce_PushMatrix
__glce_PushMatrix:
    # Line 4692
    lw	$v0,4816($zero)
    # Line 4688
    addiu	$sp,$sp,-32
    # Line 4692
    sd	$v0,24($sp)
    # Line 4688
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4690
    lw	$s8,4112($zero)
    # Line 4688
    addiu	$v1,$v1,14040
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4694
    # lw $t9, -17240($gp) # &glPushMatrix
    # Line 4688
    sd	$ra,0($sp)
    # Line 4693
    lw	$at,6776($s8)
    # Line 4694
    jal	glPushMatrix
    # Line 4693
    sw	$at,4816($zero)
    # Line 4696
    # lw $t9, -17240($gp) # &glPushMatrix
    # Line 4695
    lw	$a0,10560($s8)
    # Line 4696
    jal	glPushMatrix
    # Line 4695
    sw	$a0,4816($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4698
    ld	$gp,16($sp)
    # Line 4697
    ld	$a1,24($sp)
    # Line 4698
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4697
    sw	$a1,4816($zero)
.end __glce_PushMatrix

# Function: __glce_Rotated
# Declared: Line 4703 (Source lines: 4704-4714)
# Address: 0x0da5d970 - 0x0da5d9fc (Size: 140 bytes, Frame: 192)
.globl __glce_Rotated
.ent __glce_Rotated
__glce_Rotated:
    # Line 4708
    lw	$v0,4820($zero)
    # Line 4704
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 4708
    sd	$v0,56($sp)
    # Line 4704
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x3
    # Line 4706
    lw	$s8,4112($zero)
    # Line 4704
    addiu	$v1,$v1,13928
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 4710
    # lw $t9, -17236($gp) # &glRotated
    # Line 4704
    sdc1	$f30,0($sp)
    # Line 4709
    lw	$at,6780($s8)
    # Line 4704
    mov.d	$f30,$f12
    # Line 4710
    jal	glRotated
    # Line 4709
    sw	$at,4820($zero)
    # Line 4712
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17236($gp) # &glRotated
    ldc1	$f13,24($sp)
    # Line 4711
    lw	$a0,10564($s8)
    # Line 4712
    mov.d	$f12,$f30
    jal	glRotated
    # Line 4711
    sw	$a0,4820($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 4714
    ld	$gp,48($sp)
    # Line 4713
    ld	$a1,56($sp)
    # Line 4714
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4713
    sw	$a1,4820($zero)
.end __glce_Rotated

# Function: __glce_Rotatef
# Declared: Line 4719 (Source lines: 4720-4730)
# Address: 0x0da5da00 - 0x0da5da8c (Size: 140 bytes, Frame: 192)
.globl __glce_Rotatef
.ent __glce_Rotatef
__glce_Rotatef:
    # Line 4724
    lw	$v0,4824($zero)
    # Line 4720
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 4724
    sd	$v0,56($sp)
    # Line 4720
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x3
    # Line 4722
    lw	$s8,4112($zero)
    # Line 4720
    addiu	$v1,$v1,13784
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 4726
    # lw $t9, -17232($gp) # &glRotatef
    # Line 4720
    sdc1	$f30,0($sp)
    # Line 4725
    lw	$at,6784($s8)
    # Line 4720
    mov.s	$f30,$f12
    # Line 4726
    jal	glRotatef
    # Line 4725
    sw	$at,4824($zero)
    # Line 4728
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17232($gp) # &glRotatef
    ldc1	$f13,24($sp)
    # Line 4727
    lw	$a0,10568($s8)
    # Line 4728
    mov.s	$f12,$f30
    jal	glRotatef
    # Line 4727
    sw	$a0,4824($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 4730
    ld	$gp,48($sp)
    # Line 4729
    ld	$a1,56($sp)
    # Line 4730
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4729
    sw	$a1,4824($zero)
.end __glce_Rotatef

# Function: __glce_Scaled
# Declared: Line 4735 (Source lines: 4736-4746)
# Address: 0x0da5da90 - 0x0da5db14 (Size: 132 bytes, Frame: 192)
.globl __glce_Scaled
.ent __glce_Scaled
__glce_Scaled:
    # Line 4740
    lw	$v0,4828($zero)
    # Line 4736
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 4740
    sd	$v0,48($sp)
    # Line 4736
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x3
    # Line 4738
    lw	$s8,4112($zero)
    # Line 4736
    addiu	$v1,$v1,13640
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 4742
    # lw $t9, -17228($gp) # &glScaled
    # Line 4736
    sdc1	$f30,0($sp)
    # Line 4741
    lw	$at,6788($s8)
    # Line 4736
    mov.d	$f30,$f12
    # Line 4742
    jal	glScaled
    # Line 4741
    sw	$at,4828($zero)
    # Line 4744
    ldc1	$f14,8($sp)
    # lw $t9, -17228($gp) # &glScaled
    ldc1	$f13,16($sp)
    # Line 4743
    lw	$a0,10572($s8)
    # Line 4744
    mov.d	$f12,$f30
    jal	glScaled
    # Line 4743
    sw	$a0,4828($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 4746
    ld	$gp,40($sp)
    # Line 4745
    ld	$a1,48($sp)
    # Line 4746
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4745
    sw	$a1,4828($zero)
.end __glce_Scaled

# Function: __glce_Scalef
# Declared: Line 4751 (Source lines: 4752-4762)
# Address: 0x0da5db20 - 0x0da5dba4 (Size: 132 bytes, Frame: 192)
.globl __glce_Scalef
.ent __glce_Scalef
__glce_Scalef:
    # Line 4756
    lw	$v0,4832($zero)
    # Line 4752
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 4756
    sd	$v0,48($sp)
    # Line 4752
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x3
    # Line 4754
    lw	$s8,4112($zero)
    # Line 4752
    addiu	$v1,$v1,13496
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 4758
    # lw $t9, -17224($gp) # &glScalef
    # Line 4752
    sdc1	$f30,0($sp)
    # Line 4757
    lw	$at,6792($s8)
    # Line 4752
    mov.s	$f30,$f12
    # Line 4758
    jal	glScalef
    # Line 4757
    sw	$at,4832($zero)
    # Line 4760
    ldc1	$f14,8($sp)
    # lw $t9, -17224($gp) # &glScalef
    ldc1	$f13,16($sp)
    # Line 4759
    lw	$a0,10576($s8)
    # Line 4760
    mov.s	$f12,$f30
    jal	glScalef
    # Line 4759
    sw	$a0,4832($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 4762
    ld	$gp,40($sp)
    # Line 4761
    ld	$a1,48($sp)
    # Line 4762
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4761
    sw	$a1,4832($zero)
.end __glce_Scalef

# Function: __glce_Translated
# Declared: Line 4767 (Source lines: 4768-4778)
# Address: 0x0da5dbb0 - 0x0da5dc34 (Size: 132 bytes, Frame: 192)
.globl __glce_Translated
.ent __glce_Translated
__glce_Translated:
    # Line 4772
    lw	$v0,4836($zero)
    # Line 4768
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 4772
    sd	$v0,48($sp)
    # Line 4768
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x3
    # Line 4770
    lw	$s8,4112($zero)
    # Line 4768
    addiu	$v1,$v1,13352
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 4774
    # lw $t9, -17220($gp) # &glTranslated
    # Line 4768
    sdc1	$f30,0($sp)
    # Line 4773
    lw	$at,6796($s8)
    # Line 4768
    mov.d	$f30,$f12
    # Line 4774
    jal	glTranslated
    # Line 4773
    sw	$at,4836($zero)
    # Line 4776
    ldc1	$f14,8($sp)
    # lw $t9, -17220($gp) # &glTranslated
    ldc1	$f13,16($sp)
    # Line 4775
    lw	$a0,10580($s8)
    # Line 4776
    mov.d	$f12,$f30
    jal	glTranslated
    # Line 4775
    sw	$a0,4836($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 4778
    ld	$gp,40($sp)
    # Line 4777
    ld	$a1,48($sp)
    # Line 4778
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4777
    sw	$a1,4836($zero)
.end __glce_Translated

# Function: __glce_Translatef
# Declared: Line 4783 (Source lines: 4784-4794)
# Address: 0x0da5dc40 - 0x0da5dcc4 (Size: 132 bytes, Frame: 192)
.globl __glce_Translatef
.ent __glce_Translatef
__glce_Translatef:
    # Line 4788
    lw	$v0,4840($zero)
    # Line 4784
    addiu	$sp,$sp,-64
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    # Line 4788
    sd	$v0,48($sp)
    # Line 4784
    sd	$ra,24($sp)
    sd	$s8,32($sp)
    lui	$v1,0x3
    # Line 4786
    lw	$s8,4112($zero)
    # Line 4784
    addiu	$v1,$v1,13208
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 4790
    # lw $t9, -17216($gp) # &glTranslatef
    # Line 4784
    sdc1	$f30,0($sp)
    # Line 4789
    lw	$at,6800($s8)
    # Line 4784
    mov.s	$f30,$f12
    # Line 4790
    jal	glTranslatef
    # Line 4789
    sw	$at,4840($zero)
    # Line 4792
    ldc1	$f14,8($sp)
    # lw $t9, -17216($gp) # &glTranslatef
    ldc1	$f13,16($sp)
    # Line 4791
    lw	$a0,10584($s8)
    # Line 4792
    mov.s	$f12,$f30
    jal	glTranslatef
    # Line 4791
    sw	$a0,4840($zero)
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    # Line 4794
    ld	$gp,40($sp)
    # Line 4793
    ld	$a1,48($sp)
    # Line 4794
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4793
    sw	$a1,4840($zero)
.end __glce_Translatef

# Function: __glce_Viewport
# Declared: Line 4799 (Source lines: 4800-4810)
# Address: 0x0da5dcd0 - 0x0da5dd5c (Size: 140 bytes, Frame: 192)
.globl __glce_Viewport
.ent __glce_Viewport
__glce_Viewport:
    # Line 4804
    lw	$v0,4844($zero)
    # Line 4800
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 4804
    sd	$v0,24($sp)
    # Line 4800
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4802
    lw	$at,4112($zero)
    # Line 4800
    addiu	$v1,$v1,13064
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4806
    # lw $t9, -17212($gp) # &glViewport
    # Line 4802
    sd	$at,32($sp)
    # Line 4805
    lw	$at,6804($at)
    # Line 4800
    move	$s8,$a0
    # Line 4806
    jal	glViewport
    # Line 4805
    sw	$at,4844($zero)
    # Line 4808
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17212($gp) # &glViewport
    # Line 4807
    ld	$a4,32($sp)
    # Line 4808
    ld	$a1,56($sp)
    # Line 4807
    lw	$a4,10588($a4)
    # Line 4808
    move	$a0,$s8
    jal	glViewport
    # Line 4807
    sw	$a4,4844($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4810
    ld	$gp,16($sp)
    # Line 4809
    ld	$a5,24($sp)
    # Line 4810
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4809
    sw	$a5,4844($zero)
.end __glce_Viewport

# Function: __glce_BlendColorEXT
# Declared: Line 4815 (Source lines: 4816-4826)
# Address: 0x0da5dd60 - 0x0da5ddec (Size: 140 bytes, Frame: 192)
.globl __glce_BlendColorEXT
.ent __glce_BlendColorEXT
__glce_BlendColorEXT:
    # Line 4820
    lw	$v0,4848($zero)
    # Line 4816
    addiu	$sp,$sp,-64
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    # Line 4820
    sd	$v0,56($sp)
    # Line 4816
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    lui	$v1,0x3
    # Line 4818
    lw	$s8,4112($zero)
    # Line 4816
    addiu	$v1,$v1,12920
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 4822
    # lw $t9, -17208($gp) # &glBlendColorEXT
    # Line 4816
    sdc1	$f30,0($sp)
    # Line 4821
    lw	$at,6808($s8)
    # Line 4816
    mov.s	$f30,$f12
    # Line 4822
    jal	glBlendColorEXT
    # Line 4821
    sw	$at,4848($zero)
    # Line 4824
    ldc1	$f15,8($sp)
    ldc1	$f14,16($sp)
    # lw $t9, -17208($gp) # &glBlendColorEXT
    ldc1	$f13,24($sp)
    # Line 4823
    lw	$a0,10592($s8)
    # Line 4824
    mov.s	$f12,$f30
    jal	glBlendColorEXT
    # Line 4823
    sw	$a0,4848($zero)
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    # Line 4826
    ld	$gp,48($sp)
    # Line 4825
    ld	$a1,56($sp)
    # Line 4826
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4825
    sw	$a1,4848($zero)
.end __glce_BlendColorEXT

# Function: __glce_BlendEquationEXT
# Declared: Line 4831 (Source lines: 4832-4842)
# Address: 0x0da5ddf0 - 0x0da5de64 (Size: 116 bytes, Frame: 48)
.globl __glce_BlendEquationEXT
.ent __glce_BlendEquationEXT
__glce_BlendEquationEXT:
    # Line 4836
    lw	$v0,4852($zero)
    # Line 4832
    addiu	$sp,$sp,-48
    # Line 4836
    sd	$v0,24($sp)
    # Line 4832
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4834
    lw	$at,4112($zero)
    # Line 4832
    addiu	$v1,$v1,12776
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4838
    # lw $t9, -17204($gp) # &glBlendEquationEXT
    # Line 4834
    sd	$at,32($sp)
    # Line 4837
    lw	$at,6812($at)
    # Line 4832
    move	$s8,$a0
    # Line 4838
    jal	glBlendEquationEXT
    # Line 4837
    sw	$at,4852($zero)
    # Line 4840
    # lw $t9, -17204($gp) # &glBlendEquationEXT
    # Line 4839
    ld	$a1,32($sp)
    lw	$a1,10596($a1)
    # Line 4840
    move	$a0,$s8
    jal	glBlendEquationEXT
    # Line 4839
    sw	$a1,4852($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4842
    ld	$gp,16($sp)
    # Line 4841
    ld	$a2,24($sp)
    # Line 4842
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4841
    sw	$a2,4852($zero)
.end __glce_BlendEquationEXT

# Function: __glce_PolygonOffsetEXT
# Declared: Line 4847 (Source lines: 4848-4858)
# Address: 0x0da5de70 - 0x0da5deec (Size: 124 bytes, Frame: 48)
.globl __glce_PolygonOffsetEXT
.ent __glce_PolygonOffsetEXT
__glce_PolygonOffsetEXT:
    # Line 4852
    lw	$v0,4856($zero)
    # Line 4848
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 4852
    sd	$v0,40($sp)
    # Line 4848
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x3
    # Line 4850
    lw	$s8,4112($zero)
    # Line 4848
    addiu	$v1,$v1,12648
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 4854
    # lw $t9, -17200($gp) # &glPolygonOffsetEXT
    # Line 4848
    sdc1	$f30,0($sp)
    # Line 4853
    lw	$at,6816($s8)
    # Line 4848
    mov.s	$f30,$f12
    # Line 4854
    jal	glPolygonOffsetEXT
    # Line 4853
    sw	$at,4856($zero)
    # Line 4856
    # lw $t9, -17200($gp) # &glPolygonOffsetEXT
    ldc1	$f13,8($sp)
    # Line 4855
    lw	$a0,10600($s8)
    # Line 4856
    mov.s	$f12,$f30
    jal	glPolygonOffsetEXT
    # Line 4855
    sw	$a0,4856($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 4858
    ld	$gp,32($sp)
    # Line 4857
    ld	$a1,40($sp)
    # Line 4858
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4857
    sw	$a1,4856($zero)
.end __glce_PolygonOffsetEXT

# Function: __glce_TexSubImage1DEXT
# Declared: Line 4863 (Source lines: 4864-4874)
# Address: 0x0da5def0 - 0x0da5df94 (Size: 164 bytes, Frame: 224)
.globl __glce_TexSubImage1DEXT
.ent __glce_TexSubImage1DEXT
__glce_TexSubImage1DEXT:
    # Line 4868
    lw	$v0,4860($zero)
    # Line 4864
    addiu	$sp,$sp,-96
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    # Line 4868
    sd	$v0,24($sp)
    # Line 4864
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4866
    lw	$at,4112($zero)
    # Line 4864
    addiu	$v1,$v1,12520
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4870
    # lw $t9, -17196($gp) # &glTexSubImage1DEXT
    # Line 4866
    sd	$at,32($sp)
    # Line 4869
    lw	$at,6820($at)
    # Line 4864
    move	$s8,$a0
    # Line 4870
    jal	glTexSubImage1DEXT
    # Line 4869
    sw	$at,4860($zero)
    # Line 4872
    ld	$a6,40($sp)
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # lw $t9, -17196($gp) # &glTexSubImage1DEXT
    # Line 4871
    ld	$a7,32($sp)
    # Line 4872
    ld	$a1,80($sp)
    # Line 4871
    lw	$a7,10604($a7)
    # Line 4872
    move	$a0,$s8
    jal	glTexSubImage1DEXT
    # Line 4871
    sw	$a7,4860($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4874
    ld	$gp,16($sp)
    # Line 4873
    ld	$t0,24($sp)
    # Line 4874
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4873
    sw	$t0,4860($zero)
.end __glce_TexSubImage1DEXT

# Function: __glce_TexSubImage2DEXT
# Declared: Line 4879 (Source lines: 4880-4890)
# Address: 0x0da5dfa0 - 0x0da5e054 (Size: 180 bytes, Frame: 176)
.globl __glce_TexSubImage2DEXT
.ent __glce_TexSubImage2DEXT
__glce_TexSubImage2DEXT:
    # Line 4884
    lw	$t0,4864($zero)
    # Line 4880
    addiu	$sp,$sp,-176
    sd	$a7,48($sp)
    sd	$a6,56($sp)
    sd	$a5,64($sp)
    sd	$a4,72($sp)
    # Line 4884
    sd	$t0,32($sp)
    # Line 4880
    sd	$a3,80($sp)
    sd	$a2,88($sp)
    sd	$a1,96($sp)
    sd	$a0,104($sp)
    sd	$ra,16($sp)
    # Line 4882
    lw	$v0,4112($zero)
    sd	$v0,40($sp)
    # Line 4880
    lui	$v1,0x3
    # Line 4885
    lw	$v0,6824($v0)
    # Line 4880
    addiu	$v1,$v1,12344
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 4886
    # lw $t9, -17192($gp) # &glTexSubImage2DEXT
    # Line 4885
    sw	$v0,4864($zero)
    # Line 4886
    lw	$at,180($sp)
    jal	glTexSubImage2DEXT
    sw	$at,4($sp)
    # Line 4888
    ld	$a7,48($sp)
    ld	$a6,56($sp)
    ld	$a5,64($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a2,88($sp)
    ld	$a1,96($sp)
    ld	$a0,104($sp)
    # Line 4887
    ld	$t2,40($sp)
    # Line 4888
    # lw $t9, -17192($gp) # &glTexSubImage2DEXT
    # Line 4887
    lw	$t2,10608($t2)
    sw	$t2,4864($zero)
    # Line 4888
    lw	$t1,180($sp)
    jal	glTexSubImage2DEXT
    sw	$t1,4($sp)
    ld	$ra,16($sp)
    # Line 4890
    ld	$gp,24($sp)
    # Line 4889
    ld	$t3,32($sp)
    # Line 4890
    addiu	$sp,$sp,176
    jr	$ra
    # Line 4889
    sw	$t3,4864($zero)
.end __glce_TexSubImage2DEXT

# Function: __glce_ConvolutionFilter1DEXT
# Declared: Line 4895 (Source lines: 4896-4906)
# Address: 0x0da5e060 - 0x0da5e0fc (Size: 156 bytes, Frame: 208)
.globl __glce_ConvolutionFilter1DEXT
.ent __glce_ConvolutionFilter1DEXT
__glce_ConvolutionFilter1DEXT:
    # Line 4900
    lw	$v0,4868($zero)
    # Line 4896
    addiu	$sp,$sp,-80
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    # Line 4900
    sd	$v0,24($sp)
    # Line 4896
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4898
    lw	$at,4112($zero)
    # Line 4896
    addiu	$v1,$v1,12152
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4902
    # lw $t9, -17188($gp) # &glConvolutionFilter1DEXT
    # Line 4898
    sd	$at,32($sp)
    # Line 4901
    lw	$at,6828($at)
    # Line 4896
    move	$s8,$a0
    # Line 4902
    jal	glConvolutionFilter1DEXT
    # Line 4901
    sw	$at,4868($zero)
    # Line 4904
    ld	$a5,40($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # lw $t9, -17188($gp) # &glConvolutionFilter1DEXT
    # Line 4903
    ld	$a6,32($sp)
    # Line 4904
    ld	$a1,72($sp)
    # Line 4903
    lw	$a6,10612($a6)
    # Line 4904
    move	$a0,$s8
    jal	glConvolutionFilter1DEXT
    # Line 4903
    sw	$a6,4868($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4906
    ld	$gp,16($sp)
    # Line 4905
    ld	$a7,24($sp)
    # Line 4906
    addiu	$sp,$sp,80
    jr	$ra
    # Line 4905
    sw	$a7,4868($zero)
.end __glce_ConvolutionFilter1DEXT

# Function: __glce_ConvolutionFilter2DEXT
# Declared: Line 4911 (Source lines: 4912-4922)
# Address: 0x0da5e100 - 0x0da5e1a4 (Size: 164 bytes, Frame: 224)
.globl __glce_ConvolutionFilter2DEXT
.ent __glce_ConvolutionFilter2DEXT
__glce_ConvolutionFilter2DEXT:
    # Line 4916
    lw	$v0,4872($zero)
    # Line 4912
    addiu	$sp,$sp,-96
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    # Line 4916
    sd	$v0,24($sp)
    # Line 4912
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4914
    lw	$at,4112($zero)
    # Line 4912
    addiu	$v1,$v1,11992
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4918
    # lw $t9, -17184($gp) # &glConvolutionFilter2DEXT
    # Line 4914
    sd	$at,32($sp)
    # Line 4917
    lw	$at,6832($at)
    # Line 4912
    move	$s8,$a0
    # Line 4918
    jal	glConvolutionFilter2DEXT
    # Line 4917
    sw	$at,4872($zero)
    # Line 4920
    ld	$a6,40($sp)
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # lw $t9, -17184($gp) # &glConvolutionFilter2DEXT
    # Line 4919
    ld	$a7,32($sp)
    # Line 4920
    ld	$a1,80($sp)
    # Line 4919
    lw	$a7,10616($a7)
    # Line 4920
    move	$a0,$s8
    jal	glConvolutionFilter2DEXT
    # Line 4919
    sw	$a7,4872($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4922
    ld	$gp,16($sp)
    # Line 4921
    ld	$t0,24($sp)
    # Line 4922
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4921
    sw	$t0,4872($zero)
.end __glce_ConvolutionFilter2DEXT

# Function: __glce_ConvolutionParameterfEXT
# Declared: Line 4927 (Source lines: 4928-4938)
# Address: 0x0da5e1b0 - 0x0da5e23c (Size: 140 bytes, Frame: 192)
.globl __glce_ConvolutionParameterfEXT
.ent __glce_ConvolutionParameterfEXT
__glce_ConvolutionParameterfEXT:
    # Line 4932
    lw	$v0,4876($zero)
    # Line 4928
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 4932
    sd	$v0,32($sp)
    # Line 4928
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 4930
    lw	$at,4112($zero)
    # Line 4928
    addiu	$v1,$v1,11816
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 4934
    # lw $t9, -17180($gp) # &glConvolutionParameterfEXT
    # Line 4930
    sd	$at,40($sp)
    # Line 4933
    lw	$at,6836($at)
    # Line 4928
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 4934
    jal	glConvolutionParameterfEXT
    # Line 4933
    sw	$at,4876($zero)
    # Line 4936
    # lw $t9, -17180($gp) # &glConvolutionParameterfEXT
    # Line 4935
    ld	$a2,40($sp)
    # Line 4936
    ld	$a1,48($sp)
    # Line 4935
    lw	$a2,10620($a2)
    # Line 4936
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glConvolutionParameterfEXT
    # Line 4935
    sw	$a2,4876($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 4938
    ld	$gp,24($sp)
    # Line 4937
    ld	$a3,32($sp)
    # Line 4938
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4937
    sw	$a3,4876($zero)
.end __glce_ConvolutionParameterfEXT

# Function: __glce_ConvolutionParameterfvEXT
# Declared: Line 4943 (Source lines: 4944-4954)
# Address: 0x0da5e240 - 0x0da5e2c4 (Size: 132 bytes, Frame: 192)
.globl __glce_ConvolutionParameterfvEXT
.ent __glce_ConvolutionParameterfvEXT
__glce_ConvolutionParameterfvEXT:
    # Line 4948
    lw	$v0,4880($zero)
    # Line 4944
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 4948
    sd	$v0,24($sp)
    # Line 4944
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4946
    lw	$at,4112($zero)
    # Line 4944
    addiu	$v1,$v1,11672
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4950
    # lw $t9, -17176($gp) # &glConvolutionParameterfvEXT
    # Line 4946
    sd	$at,32($sp)
    # Line 4949
    lw	$at,6840($at)
    # Line 4944
    move	$s8,$a0
    # Line 4950
    jal	glConvolutionParameterfvEXT
    # Line 4949
    sw	$at,4880($zero)
    # Line 4952
    ld	$a2,40($sp)
    # lw $t9, -17176($gp) # &glConvolutionParameterfvEXT
    # Line 4951
    ld	$a3,32($sp)
    # Line 4952
    ld	$a1,48($sp)
    # Line 4951
    lw	$a3,10624($a3)
    # Line 4952
    move	$a0,$s8
    jal	glConvolutionParameterfvEXT
    # Line 4951
    sw	$a3,4880($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4954
    ld	$gp,16($sp)
    # Line 4953
    ld	$a4,24($sp)
    # Line 4954
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4953
    sw	$a4,4880($zero)
.end __glce_ConvolutionParameterfvEXT

# Function: __glce_ConvolutionParameteriEXT
# Declared: Line 4959 (Source lines: 4960-4970)
# Address: 0x0da5e2d0 - 0x0da5e354 (Size: 132 bytes, Frame: 192)
.globl __glce_ConvolutionParameteriEXT
.ent __glce_ConvolutionParameteriEXT
__glce_ConvolutionParameteriEXT:
    # Line 4964
    lw	$v0,4884($zero)
    # Line 4960
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 4964
    sd	$v0,24($sp)
    # Line 4960
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4962
    lw	$at,4112($zero)
    # Line 4960
    addiu	$v1,$v1,11528
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4966
    # lw $t9, -17172($gp) # &glConvolutionParameteriEXT
    # Line 4962
    sd	$at,32($sp)
    # Line 4965
    lw	$at,6844($at)
    # Line 4960
    move	$s8,$a0
    # Line 4966
    jal	glConvolutionParameteriEXT
    # Line 4965
    sw	$at,4884($zero)
    # Line 4968
    ld	$a2,40($sp)
    # lw $t9, -17172($gp) # &glConvolutionParameteriEXT
    # Line 4967
    ld	$a3,32($sp)
    # Line 4968
    ld	$a1,48($sp)
    # Line 4967
    lw	$a3,10628($a3)
    # Line 4968
    move	$a0,$s8
    jal	glConvolutionParameteriEXT
    # Line 4967
    sw	$a3,4884($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4970
    ld	$gp,16($sp)
    # Line 4969
    ld	$a4,24($sp)
    # Line 4970
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4969
    sw	$a4,4884($zero)
.end __glce_ConvolutionParameteriEXT

# Function: __glce_ConvolutionParameterivEXT
# Declared: Line 4975 (Source lines: 4976-4986)
# Address: 0x0da5e360 - 0x0da5e3e4 (Size: 132 bytes, Frame: 192)
.globl __glce_ConvolutionParameterivEXT
.ent __glce_ConvolutionParameterivEXT
__glce_ConvolutionParameterivEXT:
    # Line 4980
    lw	$v0,4888($zero)
    # Line 4976
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 4980
    sd	$v0,24($sp)
    # Line 4976
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4978
    lw	$at,4112($zero)
    # Line 4976
    addiu	$v1,$v1,11384
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4982
    # lw $t9, -17168($gp) # &glConvolutionParameterivEXT
    # Line 4978
    sd	$at,32($sp)
    # Line 4981
    lw	$at,6848($at)
    # Line 4976
    move	$s8,$a0
    # Line 4982
    jal	glConvolutionParameterivEXT
    # Line 4981
    sw	$at,4888($zero)
    # Line 4984
    ld	$a2,40($sp)
    # lw $t9, -17168($gp) # &glConvolutionParameterivEXT
    # Line 4983
    ld	$a3,32($sp)
    # Line 4984
    ld	$a1,48($sp)
    # Line 4983
    lw	$a3,10632($a3)
    # Line 4984
    move	$a0,$s8
    jal	glConvolutionParameterivEXT
    # Line 4983
    sw	$a3,4888($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 4986
    ld	$gp,16($sp)
    # Line 4985
    ld	$a4,24($sp)
    # Line 4986
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4985
    sw	$a4,4888($zero)
.end __glce_ConvolutionParameterivEXT

# Function: __glce_CopyConvolutionFilter1DEXT
# Declared: Line 4991 (Source lines: 4992-5002)
# Address: 0x0da5e3f0 - 0x0da5e484 (Size: 148 bytes, Frame: 208)
.globl __glce_CopyConvolutionFilter1DEXT
.ent __glce_CopyConvolutionFilter1DEXT
__glce_CopyConvolutionFilter1DEXT:
    # Line 4996
    lw	$v0,4892($zero)
    # Line 4992
    addiu	$sp,$sp,-80
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    # Line 4996
    sd	$v0,24($sp)
    # Line 4992
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 4994
    lw	$at,4112($zero)
    # Line 4992
    addiu	$v1,$v1,11240
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 4998
    # lw $t9, -17164($gp) # &glCopyConvolutionFilter1DEXT
    # Line 4994
    sd	$at,32($sp)
    # Line 4997
    lw	$at,6852($at)
    # Line 4992
    move	$s8,$a0
    # Line 4998
    jal	glCopyConvolutionFilter1DEXT
    # Line 4997
    sw	$at,4892($zero)
    # Line 5000
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -17164($gp) # &glCopyConvolutionFilter1DEXT
    # Line 4999
    ld	$a5,32($sp)
    # Line 5000
    ld	$a1,64($sp)
    # Line 4999
    lw	$a5,10636($a5)
    # Line 5000
    move	$a0,$s8
    jal	glCopyConvolutionFilter1DEXT
    # Line 4999
    sw	$a5,4892($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5002
    ld	$gp,16($sp)
    # Line 5001
    ld	$a6,24($sp)
    # Line 5002
    addiu	$sp,$sp,80
    jr	$ra
    # Line 5001
    sw	$a6,4892($zero)
.end __glce_CopyConvolutionFilter1DEXT

# Function: __glce_CopyConvolutionFilter2DEXT
# Declared: Line 5007 (Source lines: 5008-5018)
# Address: 0x0da5e490 - 0x0da5e52c (Size: 156 bytes, Frame: 208)
.globl __glce_CopyConvolutionFilter2DEXT
.ent __glce_CopyConvolutionFilter2DEXT
__glce_CopyConvolutionFilter2DEXT:
    # Line 5012
    lw	$v0,4896($zero)
    # Line 5008
    addiu	$sp,$sp,-80
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    # Line 5012
    sd	$v0,24($sp)
    # Line 5008
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5010
    lw	$at,4112($zero)
    # Line 5008
    addiu	$v1,$v1,11080
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5014
    # lw $t9, -17160($gp) # &glCopyConvolutionFilter2DEXT
    # Line 5010
    sd	$at,32($sp)
    # Line 5013
    lw	$at,6856($at)
    # Line 5008
    move	$s8,$a0
    # Line 5014
    jal	glCopyConvolutionFilter2DEXT
    # Line 5013
    sw	$at,4896($zero)
    # Line 5016
    ld	$a5,40($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # lw $t9, -17160($gp) # &glCopyConvolutionFilter2DEXT
    # Line 5015
    ld	$a6,32($sp)
    # Line 5016
    ld	$a1,72($sp)
    # Line 5015
    lw	$a6,10640($a6)
    # Line 5016
    move	$a0,$s8
    jal	glCopyConvolutionFilter2DEXT
    # Line 5015
    sw	$a6,4896($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5018
    ld	$gp,16($sp)
    # Line 5017
    ld	$a7,24($sp)
    # Line 5018
    addiu	$sp,$sp,80
    jr	$ra
    # Line 5017
    sw	$a7,4896($zero)
.end __glce_CopyConvolutionFilter2DEXT

# Function: __glce_GetConvolutionFilterEXT
# Declared: Line 5023 (Source lines: 5024-5032)
# Address: 0x0da5e530 - 0x0da5e57c (Size: 76 bytes, Frame: 32)
.globl __glce_GetConvolutionFilterEXT
.ent __glce_GetConvolutionFilterEXT
__glce_GetConvolutionFilterEXT:
    # Line 5024
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5028
    lw	$s8,4900($zero)
    # Line 5024
    lui	$v0,0x3
    # Line 5029
    lw	$at,4112($zero)
    # Line 5024
    addiu	$v0,$v0,10920
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5030
    # lw $t9, -17156($gp) # &glGetConvolutionFilterEXT
    # Line 5024
    sd	$ra,0($sp)
    # Line 5029
    lw	$at,10644($at)
    # Line 5030
    jal	glGetConvolutionFilterEXT
    # Line 5029
    sw	$at,4900($zero)
    ld	$ra,0($sp)
    # Line 5032
    ld	$gp,16($sp)
    # Line 5031
    sw	$s8,4900($zero)
    # Line 5032
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetConvolutionFilterEXT

# Function: __glce_GetConvolutionParameterfvEXT
# Declared: Line 5037 (Source lines: 5038-5046)
# Address: 0x0da5e580 - 0x0da5e5cc (Size: 76 bytes, Frame: 32)
.globl __glce_GetConvolutionParameterfvEXT
.ent __glce_GetConvolutionParameterfvEXT
__glce_GetConvolutionParameterfvEXT:
    # Line 5038
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5042
    lw	$s8,4904($zero)
    # Line 5038
    lui	$v0,0x3
    # Line 5043
    lw	$at,4112($zero)
    # Line 5038
    addiu	$v0,$v0,10840
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5044
    # lw $t9, -17152($gp) # &glGetConvolutionParameterfvEXT
    # Line 5038
    sd	$ra,0($sp)
    # Line 5043
    lw	$at,10648($at)
    # Line 5044
    jal	glGetConvolutionParameterfvEXT
    # Line 5043
    sw	$at,4904($zero)
    ld	$ra,0($sp)
    # Line 5046
    ld	$gp,16($sp)
    # Line 5045
    sw	$s8,4904($zero)
    # Line 5046
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetConvolutionParameterfvEXT

# Function: __glce_GetConvolutionParameterivEXT
# Declared: Line 5051 (Source lines: 5052-5060)
# Address: 0x0da5e5d0 - 0x0da5e61c (Size: 76 bytes, Frame: 32)
.globl __glce_GetConvolutionParameterivEXT
.ent __glce_GetConvolutionParameterivEXT
__glce_GetConvolutionParameterivEXT:
    # Line 5052
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5056
    lw	$s8,4908($zero)
    # Line 5052
    lui	$v0,0x3
    # Line 5057
    lw	$at,4112($zero)
    # Line 5052
    addiu	$v0,$v0,10760
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5058
    # lw $t9, -17148($gp) # &glGetConvolutionParameterivEXT
    # Line 5052
    sd	$ra,0($sp)
    # Line 5057
    lw	$at,10652($at)
    # Line 5058
    jal	glGetConvolutionParameterivEXT
    # Line 5057
    sw	$at,4908($zero)
    ld	$ra,0($sp)
    # Line 5060
    ld	$gp,16($sp)
    # Line 5059
    sw	$s8,4908($zero)
    # Line 5060
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetConvolutionParameterivEXT

# Function: __glce_GetSeparableFilterEXT
# Declared: Line 5065 (Source lines: 5066-5074)
# Address: 0x0da5e620 - 0x0da5e66c (Size: 76 bytes, Frame: 32)
.globl __glce_GetSeparableFilterEXT
.ent __glce_GetSeparableFilterEXT
__glce_GetSeparableFilterEXT:
    # Line 5066
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5070
    lw	$s8,4912($zero)
    # Line 5066
    lui	$v0,0x3
    # Line 5071
    lw	$at,4112($zero)
    # Line 5066
    addiu	$v0,$v0,10680
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5072
    # lw $t9, -17144($gp) # &glGetSeparableFilterEXT
    # Line 5066
    sd	$ra,0($sp)
    # Line 5071
    lw	$at,10656($at)
    # Line 5072
    jal	glGetSeparableFilterEXT
    # Line 5071
    sw	$at,4912($zero)
    ld	$ra,0($sp)
    # Line 5074
    ld	$gp,16($sp)
    # Line 5073
    sw	$s8,4912($zero)
    # Line 5074
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetSeparableFilterEXT

# Function: __glce_SeparableFilter2DEXT
# Declared: Line 5079 (Source lines: 5080-5090)
# Address: 0x0da5e670 - 0x0da5e71c (Size: 172 bytes, Frame: 224)
.globl __glce_SeparableFilter2DEXT
.ent __glce_SeparableFilter2DEXT
__glce_SeparableFilter2DEXT:
    # Line 5084
    lw	$v0,4916($zero)
    # Line 5080
    addiu	$sp,$sp,-96
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    # Line 5084
    sd	$v0,24($sp)
    # Line 5080
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5082
    lw	$at,4112($zero)
    # Line 5080
    addiu	$v1,$v1,10600
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5086
    # lw $t9, -17140($gp) # &glSeparableFilter2DEXT
    # Line 5082
    sd	$at,32($sp)
    # Line 5085
    lw	$at,6876($at)
    # Line 5080
    move	$s8,$a0
    # Line 5086
    jal	glSeparableFilter2DEXT
    # Line 5085
    sw	$at,4916($zero)
    # Line 5088
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # lw $t9, -17140($gp) # &glSeparableFilter2DEXT
    # Line 5087
    ld	$t0,32($sp)
    # Line 5088
    ld	$a1,88($sp)
    # Line 5087
    lw	$t0,10660($t0)
    # Line 5088
    move	$a0,$s8
    jal	glSeparableFilter2DEXT
    # Line 5087
    sw	$t0,4916($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5090
    ld	$gp,16($sp)
    # Line 5089
    ld	$t1,24($sp)
    # Line 5090
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5089
    sw	$t1,4916($zero)
.end __glce_SeparableFilter2DEXT

# Function: __glce_GetHistogramEXT
# Declared: Line 5095 (Source lines: 5096-5104)
# Address: 0x0da5e720 - 0x0da5e76c (Size: 76 bytes, Frame: 32)
.globl __glce_GetHistogramEXT
.ent __glce_GetHistogramEXT
__glce_GetHistogramEXT:
    # Line 5096
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5100
    lw	$s8,4920($zero)
    # Line 5096
    lui	$v0,0x3
    # Line 5101
    lw	$at,4112($zero)
    # Line 5096
    addiu	$v0,$v0,10424
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5102
    # lw $t9, -17136($gp) # &glGetHistogramEXT
    # Line 5096
    sd	$ra,0($sp)
    # Line 5101
    lw	$at,10664($at)
    # Line 5102
    jal	glGetHistogramEXT
    # Line 5101
    sw	$at,4920($zero)
    ld	$ra,0($sp)
    # Line 5104
    ld	$gp,16($sp)
    # Line 5103
    sw	$s8,4920($zero)
    # Line 5104
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetHistogramEXT

# Function: __glce_GetHistogramParameterfvEXT
# Declared: Line 5109 (Source lines: 5110-5118)
# Address: 0x0da5e770 - 0x0da5e7bc (Size: 76 bytes, Frame: 32)
.globl __glce_GetHistogramParameterfvEXT
.ent __glce_GetHistogramParameterfvEXT
__glce_GetHistogramParameterfvEXT:
    # Line 5110
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5114
    lw	$s8,4924($zero)
    # Line 5110
    lui	$v0,0x3
    # Line 5115
    lw	$at,4112($zero)
    # Line 5110
    addiu	$v0,$v0,10344
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5116
    # lw $t9, -17132($gp) # &glGetHistogramParameterfvEXT
    # Line 5110
    sd	$ra,0($sp)
    # Line 5115
    lw	$at,10668($at)
    # Line 5116
    jal	glGetHistogramParameterfvEXT
    # Line 5115
    sw	$at,4924($zero)
    ld	$ra,0($sp)
    # Line 5118
    ld	$gp,16($sp)
    # Line 5117
    sw	$s8,4924($zero)
    # Line 5118
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetHistogramParameterfvEXT

# Function: __glce_GetHistogramParameterivEXT
# Declared: Line 5123 (Source lines: 5124-5132)
# Address: 0x0da5e7c0 - 0x0da5e80c (Size: 76 bytes, Frame: 32)
.globl __glce_GetHistogramParameterivEXT
.ent __glce_GetHistogramParameterivEXT
__glce_GetHistogramParameterivEXT:
    # Line 5124
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5128
    lw	$s8,4928($zero)
    # Line 5124
    lui	$v0,0x3
    # Line 5129
    lw	$at,4112($zero)
    # Line 5124
    addiu	$v0,$v0,10264
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5130
    # lw $t9, -17128($gp) # &glGetHistogramParameterivEXT
    # Line 5124
    sd	$ra,0($sp)
    # Line 5129
    lw	$at,10672($at)
    # Line 5130
    jal	glGetHistogramParameterivEXT
    # Line 5129
    sw	$at,4928($zero)
    ld	$ra,0($sp)
    # Line 5132
    ld	$gp,16($sp)
    # Line 5131
    sw	$s8,4928($zero)
    # Line 5132
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetHistogramParameterivEXT

# Function: __glce_GetMinmaxEXT
# Declared: Line 5137 (Source lines: 5138-5146)
# Address: 0x0da5e810 - 0x0da5e85c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMinmaxEXT
.ent __glce_GetMinmaxEXT
__glce_GetMinmaxEXT:
    # Line 5138
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5142
    lw	$s8,4932($zero)
    # Line 5138
    lui	$v0,0x3
    # Line 5143
    lw	$at,4112($zero)
    # Line 5138
    addiu	$v0,$v0,10184
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5144
    # lw $t9, -17124($gp) # &glGetMinmaxEXT
    # Line 5138
    sd	$ra,0($sp)
    # Line 5143
    lw	$at,10676($at)
    # Line 5144
    jal	glGetMinmaxEXT
    # Line 5143
    sw	$at,4932($zero)
    ld	$ra,0($sp)
    # Line 5146
    ld	$gp,16($sp)
    # Line 5145
    sw	$s8,4932($zero)
    # Line 5146
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMinmaxEXT

# Function: __glce_GetMinmaxParameterfvEXT
# Declared: Line 5151 (Source lines: 5152-5160)
# Address: 0x0da5e860 - 0x0da5e8ac (Size: 76 bytes, Frame: 32)
.globl __glce_GetMinmaxParameterfvEXT
.ent __glce_GetMinmaxParameterfvEXT
__glce_GetMinmaxParameterfvEXT:
    # Line 5152
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5156
    lw	$s8,4936($zero)
    # Line 5152
    lui	$v0,0x3
    # Line 5157
    lw	$at,4112($zero)
    # Line 5152
    addiu	$v0,$v0,10104
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5158
    # lw $t9, -17120($gp) # &glGetMinmaxParameterfvEXT
    # Line 5152
    sd	$ra,0($sp)
    # Line 5157
    lw	$at,10680($at)
    # Line 5158
    jal	glGetMinmaxParameterfvEXT
    # Line 5157
    sw	$at,4936($zero)
    ld	$ra,0($sp)
    # Line 5160
    ld	$gp,16($sp)
    # Line 5159
    sw	$s8,4936($zero)
    # Line 5160
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMinmaxParameterfvEXT

# Function: __glce_GetMinmaxParameterivEXT
# Declared: Line 5165 (Source lines: 5166-5174)
# Address: 0x0da5e8b0 - 0x0da5e8fc (Size: 76 bytes, Frame: 32)
.globl __glce_GetMinmaxParameterivEXT
.ent __glce_GetMinmaxParameterivEXT
__glce_GetMinmaxParameterivEXT:
    # Line 5166
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5170
    lw	$s8,4940($zero)
    # Line 5166
    lui	$v0,0x3
    # Line 5171
    lw	$at,4112($zero)
    # Line 5166
    addiu	$v0,$v0,10024
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5172
    # lw $t9, -17116($gp) # &glGetMinmaxParameterivEXT
    # Line 5166
    sd	$ra,0($sp)
    # Line 5171
    lw	$at,10684($at)
    # Line 5172
    jal	glGetMinmaxParameterivEXT
    # Line 5171
    sw	$at,4940($zero)
    ld	$ra,0($sp)
    # Line 5174
    ld	$gp,16($sp)
    # Line 5173
    sw	$s8,4940($zero)
    # Line 5174
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMinmaxParameterivEXT

# Function: __glce_HistogramEXT
# Declared: Line 5179 (Source lines: 5180-5190)
# Address: 0x0da5e900 - 0x0da5e98c (Size: 140 bytes, Frame: 192)
.globl __glce_HistogramEXT
.ent __glce_HistogramEXT
__glce_HistogramEXT:
    # Line 5184
    lw	$v0,4944($zero)
    # Line 5180
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 5184
    sd	$v0,24($sp)
    # Line 5180
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5182
    lw	$at,4112($zero)
    # Line 5180
    addiu	$v1,$v1,9944
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5186
    # lw $t9, -17112($gp) # &glHistogramEXT
    # Line 5182
    sd	$at,32($sp)
    # Line 5185
    lw	$at,6904($at)
    # Line 5180
    move	$s8,$a0
    # Line 5186
    jal	glHistogramEXT
    # Line 5185
    sw	$at,4944($zero)
    # Line 5188
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -17112($gp) # &glHistogramEXT
    # Line 5187
    ld	$a4,32($sp)
    # Line 5188
    ld	$a1,56($sp)
    # Line 5187
    lw	$a4,10688($a4)
    # Line 5188
    move	$a0,$s8
    jal	glHistogramEXT
    # Line 5187
    sw	$a4,4944($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5190
    ld	$gp,16($sp)
    # Line 5189
    ld	$a5,24($sp)
    # Line 5190
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5189
    sw	$a5,4944($zero)
.end __glce_HistogramEXT

# Function: __glce_MinmaxEXT
# Declared: Line 5195 (Source lines: 5196-5206)
# Address: 0x0da5e990 - 0x0da5ea14 (Size: 132 bytes, Frame: 192)
.globl __glce_MinmaxEXT
.ent __glce_MinmaxEXT
__glce_MinmaxEXT:
    # Line 5200
    lw	$v0,4948($zero)
    # Line 5196
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 5200
    sd	$v0,24($sp)
    # Line 5196
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5198
    lw	$at,4112($zero)
    # Line 5196
    addiu	$v1,$v1,9800
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5202
    # lw $t9, -17108($gp) # &glMinmaxEXT
    # Line 5198
    sd	$at,32($sp)
    # Line 5201
    lw	$at,6908($at)
    # Line 5196
    move	$s8,$a0
    # Line 5202
    jal	glMinmaxEXT
    # Line 5201
    sw	$at,4948($zero)
    # Line 5204
    ld	$a2,40($sp)
    # lw $t9, -17108($gp) # &glMinmaxEXT
    # Line 5203
    ld	$a3,32($sp)
    # Line 5204
    ld	$a1,48($sp)
    # Line 5203
    lw	$a3,10692($a3)
    # Line 5204
    move	$a0,$s8
    jal	glMinmaxEXT
    # Line 5203
    sw	$a3,4948($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5206
    ld	$gp,16($sp)
    # Line 5205
    ld	$a4,24($sp)
    # Line 5206
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5205
    sw	$a4,4948($zero)
.end __glce_MinmaxEXT

# Function: __glce_ResetHistogramEXT
# Declared: Line 5211 (Source lines: 5212-5222)
# Address: 0x0da5ea20 - 0x0da5ea94 (Size: 116 bytes, Frame: 48)
.globl __glce_ResetHistogramEXT
.ent __glce_ResetHistogramEXT
__glce_ResetHistogramEXT:
    # Line 5216
    lw	$v0,4952($zero)
    # Line 5212
    addiu	$sp,$sp,-48
    # Line 5216
    sd	$v0,24($sp)
    # Line 5212
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5214
    lw	$at,4112($zero)
    # Line 5212
    addiu	$v1,$v1,9656
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5218
    # lw $t9, -17104($gp) # &glResetHistogramEXT
    # Line 5214
    sd	$at,32($sp)
    # Line 5217
    lw	$at,6912($at)
    # Line 5212
    move	$s8,$a0
    # Line 5218
    jal	glResetHistogramEXT
    # Line 5217
    sw	$at,4952($zero)
    # Line 5220
    # lw $t9, -17104($gp) # &glResetHistogramEXT
    # Line 5219
    ld	$a1,32($sp)
    lw	$a1,10696($a1)
    # Line 5220
    move	$a0,$s8
    jal	glResetHistogramEXT
    # Line 5219
    sw	$a1,4952($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5222
    ld	$gp,16($sp)
    # Line 5221
    ld	$a2,24($sp)
    # Line 5222
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5221
    sw	$a2,4952($zero)
.end __glce_ResetHistogramEXT

# Function: __glce_ResetMinmaxEXT
# Declared: Line 5227 (Source lines: 5228-5238)
# Address: 0x0da5eaa0 - 0x0da5eb14 (Size: 116 bytes, Frame: 48)
.globl __glce_ResetMinmaxEXT
.ent __glce_ResetMinmaxEXT
__glce_ResetMinmaxEXT:
    # Line 5232
    lw	$v0,4956($zero)
    # Line 5228
    addiu	$sp,$sp,-48
    # Line 5232
    sd	$v0,24($sp)
    # Line 5228
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5230
    lw	$at,4112($zero)
    # Line 5228
    addiu	$v1,$v1,9528
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5234
    # lw $t9, -17100($gp) # &glResetMinmaxEXT
    # Line 5230
    sd	$at,32($sp)
    # Line 5233
    lw	$at,6916($at)
    # Line 5228
    move	$s8,$a0
    # Line 5234
    jal	glResetMinmaxEXT
    # Line 5233
    sw	$at,4956($zero)
    # Line 5236
    # lw $t9, -17100($gp) # &glResetMinmaxEXT
    # Line 5235
    ld	$a1,32($sp)
    lw	$a1,10700($a1)
    # Line 5236
    move	$a0,$s8
    jal	glResetMinmaxEXT
    # Line 5235
    sw	$a1,4956($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5238
    ld	$gp,16($sp)
    # Line 5237
    ld	$a2,24($sp)
    # Line 5238
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5237
    sw	$a2,4956($zero)
.end __glce_ResetMinmaxEXT

# Function: __glce_TexImage3DEXT
# Declared: Line 5243 (Source lines: 5244-5254)
# Address: 0x0da5eb20 - 0x0da5ebec (Size: 204 bytes, Frame: 176)
.globl __glce_TexImage3DEXT
.ent __glce_TexImage3DEXT
__glce_TexImage3DEXT:
    # Line 5248
    lw	$t1,4960($zero)
    # Line 5244
    addiu	$sp,$sp,-176
    sd	$a7,48($sp)
    sd	$a6,56($sp)
    sd	$a5,64($sp)
    # Line 5248
    sd	$t1,32($sp)
    # Line 5244
    sd	$a4,72($sp)
    sd	$a3,80($sp)
    sd	$a2,88($sp)
    sd	$a1,96($sp)
    sd	$ra,16($sp)
    sd	$s4,24($sp)
    # Line 5246
    lw	$t0,4112($zero)
    sd	$t0,40($sp)
    # Line 5249
    lw	$t0,6920($t0)
    sw	$t0,4960($zero)
    # Line 5244
    lui	$v1,0x3
    # Line 5250
    lw	$at,180($sp)
    # Line 5244
    addiu	$v1,$v1,9400
    sd	$gp,104($sp)
    addu	$gp,$t9,$v1
    # Line 5250
    # lw $t9, -17096($gp) # &glTexImage3DEXT
    lw	$v0,188($sp)
    sw	$v0,12($sp)
    # Line 5244
    move	$s4,$a0
    # Line 5250
    jal	glTexImage3DEXT
    sw	$at,4($sp)
    # Line 5252
    ld	$a7,48($sp)
    ld	$a6,56($sp)
    ld	$a5,64($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a2,88($sp)
    ld	$a1,96($sp)
    # Line 5251
    ld	$t8,40($sp)
    # Line 5252
    # lw $t9, -17096($gp) # &glTexImage3DEXT
    # Line 5251
    lw	$t8,10704($t8)
    sw	$t8,4960($zero)
    # Line 5252
    lw	$t2,180($sp)
    lw	$t3,188($sp)
    sw	$t3,12($sp)
    move	$a0,$s4
    jal	glTexImage3DEXT
    sw	$t2,4($sp)
    ld	$s4,24($sp)
    ld	$ra,16($sp)
    # Line 5254
    ld	$gp,104($sp)
    # Line 5253
    ld	$t9,32($sp)
    # Line 5254
    addiu	$sp,$sp,176
    jr	$ra
    # Line 5253
    sw	$t9,4960($zero)
.end __glce_TexImage3DEXT

# Function: __glce_TexSubImage3DEXT
# Declared: Line 5259 (Source lines: 5260-5270)
# Address: 0x0da5ebf0 - 0x0da5eccc (Size: 220 bytes, Frame: 192)
.globl __glce_TexSubImage3DEXT
.ent __glce_TexSubImage3DEXT
__glce_TexSubImage3DEXT:
    # Line 5260
    addiu	$sp,$sp,-192
    sd	$a7,64($sp)
    sd	$a6,72($sp)
    sd	$a5,80($sp)
    sd	$a4,88($sp)
    sd	$a3,96($sp)
    sd	$a2,104($sp)
    sd	$a0,32($sp)
    sd	$ra,40($sp)
    sd	$s4,48($sp)
    sd	$s0,112($sp)
    # Line 5264
    lw	$s0,4964($zero)
    # Line 5262
    lw	$t1,4112($zero)
    sd	$t1,56($sp)
    # Line 5265
    lw	$t1,6924($t1)
    sw	$t1,4964($zero)
    # Line 5266
    lw	$at,196($sp)
    lw	$v0,204($sp)
    # Line 5260
    lui	$t0,0x3
    # Line 5266
    lw	$v1,212($sp)
    # Line 5260
    addiu	$t0,$t0,9192
    sd	$gp,120($sp)
    addu	$gp,$t9,$t0
    # Line 5266
    # lw $t9, -17092($gp) # &glTexSubImage3DEXT
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    # Line 5260
    move	$s4,$a1
    # Line 5266
    jal	glTexSubImage3DEXT
    sw	$at,4($sp)
    # Line 5268
    ld	$a7,64($sp)
    ld	$a6,72($sp)
    ld	$a5,80($sp)
    ld	$a4,88($sp)
    ld	$a3,96($sp)
    ld	$a2,104($sp)
    # Line 5267
    ld	$t9,56($sp)
    # Line 5268
    ld	$a0,32($sp)
    # Line 5267
    lw	$t9,10708($t9)
    sw	$t9,4964($zero)
    # Line 5268
    lw	$t2,196($sp)
    lw	$t3,204($sp)
    lw	$t8,212($sp)
    # lw $t9, -17092($gp) # &glTexSubImage3DEXT
    sw	$t8,20($sp)
    sw	$t3,12($sp)
    move	$a1,$s4
    jal	glTexSubImage3DEXT
    sw	$t2,4($sp)
    ld	$s4,48($sp)
    ld	$ra,40($sp)
    # Line 5270
    ld	$gp,120($sp)
    # Line 5269
    sw	$s0,4964($zero)
    # Line 5270
    ld	$s0,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_TexSubImage3DEXT

# Function: __glce_ColorPointerEXT
# Declared: Line 5276 (Source lines: 5277-5285)
# Address: 0x0da5ecd0 - 0x0da5ed1c (Size: 76 bytes, Frame: 32)
.globl __glce_ColorPointerEXT
.ent __glce_ColorPointerEXT
__glce_ColorPointerEXT:
    # Line 5277
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5281
    lw	$s8,4972($zero)
    # Line 5277
    lui	$v0,0x3
    # Line 5282
    lw	$at,4112($zero)
    # Line 5277
    addiu	$v0,$v0,8968
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5283
    # lw $t9, -17080($gp) # &glColorPointerEXT
    # Line 5277
    sd	$ra,0($sp)
    # Line 5282
    lw	$at,10716($at)
    # Line 5283
    jal	glColorPointerEXT
    # Line 5282
    sw	$at,4972($zero)
    ld	$ra,0($sp)
    # Line 5285
    ld	$gp,16($sp)
    # Line 5284
    sw	$s8,4972($zero)
    # Line 5285
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ColorPointerEXT

# Function: __glce_EdgeFlagPointerEXT
# Declared: Line 5291 (Source lines: 5292-5300)
# Address: 0x0da5ed20 - 0x0da5ed6c (Size: 76 bytes, Frame: 32)
.globl __glce_EdgeFlagPointerEXT
.ent __glce_EdgeFlagPointerEXT
__glce_EdgeFlagPointerEXT:
    # Line 5292
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5296
    lw	$s8,4980($zero)
    # Line 5292
    lui	$v0,0x3
    # Line 5297
    lw	$at,4112($zero)
    # Line 5292
    addiu	$v0,$v0,8888
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5298
    # lw $t9, -17072($gp) # &glEdgeFlagPointerEXT
    # Line 5292
    sd	$ra,0($sp)
    # Line 5297
    lw	$at,10724($at)
    # Line 5298
    jal	glEdgeFlagPointerEXT
    # Line 5297
    sw	$at,4980($zero)
    ld	$ra,0($sp)
    # Line 5300
    ld	$gp,16($sp)
    # Line 5299
    sw	$s8,4980($zero)
    # Line 5300
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_EdgeFlagPointerEXT

# Function: __glce_GetPointervEXT
# Declared: Line 5305 (Source lines: 5306-5314)
# Address: 0x0da5ed70 - 0x0da5edbc (Size: 76 bytes, Frame: 32)
.globl __glce_GetPointervEXT
.ent __glce_GetPointervEXT
__glce_GetPointervEXT:
    # Line 5306
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5310
    lw	$s8,4984($zero)
    # Line 5306
    lui	$v0,0x3
    # Line 5311
    lw	$at,4112($zero)
    # Line 5306
    addiu	$v0,$v0,8808
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5312
    # lw $t9, -17068($gp) # &glGetPointervEXT
    # Line 5306
    sd	$ra,0($sp)
    # Line 5311
    lw	$at,10728($at)
    # Line 5312
    jal	glGetPointervEXT
    # Line 5311
    sw	$at,4984($zero)
    ld	$ra,0($sp)
    # Line 5314
    ld	$gp,16($sp)
    # Line 5313
    sw	$s8,4984($zero)
    # Line 5314
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPointervEXT

# Function: __glce_IndexPointerEXT
# Declared: Line 5319 (Source lines: 5320-5328)
# Address: 0x0da5edc0 - 0x0da5ee0c (Size: 76 bytes, Frame: 32)
.globl __glce_IndexPointerEXT
.ent __glce_IndexPointerEXT
__glce_IndexPointerEXT:
    # Line 5320
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5324
    lw	$s8,4988($zero)
    # Line 5320
    lui	$v0,0x3
    # Line 5325
    lw	$at,4112($zero)
    # Line 5320
    addiu	$v0,$v0,8728
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5326
    # lw $t9, -17064($gp) # &glIndexPointerEXT
    # Line 5320
    sd	$ra,0($sp)
    # Line 5325
    lw	$at,10732($at)
    # Line 5326
    jal	glIndexPointerEXT
    # Line 5325
    sw	$at,4988($zero)
    ld	$ra,0($sp)
    # Line 5328
    ld	$gp,16($sp)
    # Line 5327
    sw	$s8,4988($zero)
    # Line 5328
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IndexPointerEXT

# Function: __glce_NormalPointerEXT
# Declared: Line 5333 (Source lines: 5334-5342)
# Address: 0x0da5ee10 - 0x0da5ee5c (Size: 76 bytes, Frame: 32)
.globl __glce_NormalPointerEXT
.ent __glce_NormalPointerEXT
__glce_NormalPointerEXT:
    # Line 5334
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5338
    lw	$s8,4992($zero)
    # Line 5334
    lui	$v0,0x3
    # Line 5339
    lw	$at,4112($zero)
    # Line 5334
    addiu	$v0,$v0,8648
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5340
    # lw $t9, -17060($gp) # &glNormalPointerEXT
    # Line 5334
    sd	$ra,0($sp)
    # Line 5339
    lw	$at,10736($at)
    # Line 5340
    jal	glNormalPointerEXT
    # Line 5339
    sw	$at,4992($zero)
    ld	$ra,0($sp)
    # Line 5342
    ld	$gp,16($sp)
    # Line 5341
    sw	$s8,4992($zero)
    # Line 5342
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_NormalPointerEXT

# Function: __glce_TexCoordPointerEXT
# Declared: Line 5347 (Source lines: 5348-5356)
# Address: 0x0da5ee60 - 0x0da5eeac (Size: 76 bytes, Frame: 32)
.globl __glce_TexCoordPointerEXT
.ent __glce_TexCoordPointerEXT
__glce_TexCoordPointerEXT:
    # Line 5348
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5352
    lw	$s8,4996($zero)
    # Line 5348
    lui	$v0,0x3
    # Line 5353
    lw	$at,4112($zero)
    # Line 5348
    addiu	$v0,$v0,8568
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5354
    # lw $t9, -17056($gp) # &glTexCoordPointerEXT
    # Line 5348
    sd	$ra,0($sp)
    # Line 5353
    lw	$at,10740($at)
    # Line 5354
    jal	glTexCoordPointerEXT
    # Line 5353
    sw	$at,4996($zero)
    ld	$ra,0($sp)
    # Line 5356
    ld	$gp,16($sp)
    # Line 5355
    sw	$s8,4996($zero)
    # Line 5356
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_TexCoordPointerEXT

# Function: __glce_VertexPointerEXT
# Declared: Line 5361 (Source lines: 5362-5370)
# Address: 0x0da5eeb0 - 0x0da5eefc (Size: 76 bytes, Frame: 32)
.globl __glce_VertexPointerEXT
.ent __glce_VertexPointerEXT
__glce_VertexPointerEXT:
    # Line 5362
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5366
    lw	$s8,5000($zero)
    # Line 5362
    lui	$v0,0x3
    # Line 5367
    lw	$at,4112($zero)
    # Line 5362
    addiu	$v0,$v0,8488
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5368
    # lw $t9, -17052($gp) # &glVertexPointerEXT
    # Line 5362
    sd	$ra,0($sp)
    # Line 5367
    lw	$at,10744($at)
    # Line 5368
    jal	glVertexPointerEXT
    # Line 5367
    sw	$at,5000($zero)
    ld	$ra,0($sp)
    # Line 5370
    ld	$gp,16($sp)
    # Line 5369
    sw	$s8,5000($zero)
    # Line 5370
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_VertexPointerEXT

# Function: __glce_AreTexturesResidentEXT
# Declared: Line 5375 (Source lines: 5376-5385)
# Address: 0x0da5ef00 - 0x0da5ef50 (Size: 80 bytes, Frame: 32)
.globl __glce_AreTexturesResidentEXT
.ent __glce_AreTexturesResidentEXT
__glce_AreTexturesResidentEXT:
    # Line 5376
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5381
    lw	$s8,5004($zero)
    # Line 5376
    lui	$v0,0x3
    # Line 5382
    lw	$at,4112($zero)
    # Line 5376
    addiu	$v0,$v0,8408
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5383
    # lw $t9, -17048($gp) # &glAreTexturesResidentEXT
    # Line 5376
    sd	$ra,0($sp)
    # Line 5382
    lw	$at,10748($at)
    # Line 5383
    jal	glAreTexturesResidentEXT
    # Line 5382
    sw	$at,5004($zero)
    ld	$ra,0($sp)
    # Line 5385
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 5384
    sw	$s8,5004($zero)
    # Line 5385
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_AreTexturesResidentEXT

# Function: __glce_BindTextureEXT
# Declared: Line 5391 (Source lines: 5392-5402)
# Address: 0x0da5ef50 - 0x0da5efcc (Size: 124 bytes, Frame: 48)
.globl __glce_BindTextureEXT
.ent __glce_BindTextureEXT
__glce_BindTextureEXT:
    # Line 5396
    lw	$v0,5008($zero)
    # Line 5392
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 5396
    sd	$v0,24($sp)
    # Line 5392
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5394
    lw	$at,4112($zero)
    # Line 5392
    addiu	$v1,$v1,8328
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5398
    # lw $t9, -17044($gp) # &glBindTextureEXT
    # Line 5394
    sd	$at,32($sp)
    # Line 5397
    lw	$at,6968($at)
    # Line 5392
    move	$s8,$a0
    # Line 5398
    jal	glBindTextureEXT
    # Line 5397
    sw	$at,5008($zero)
    # Line 5400
    # lw $t9, -17044($gp) # &glBindTextureEXT
    # Line 5399
    ld	$a2,32($sp)
    # Line 5400
    ld	$a1,40($sp)
    # Line 5399
    lw	$a2,10752($a2)
    # Line 5400
    move	$a0,$s8
    jal	glBindTextureEXT
    # Line 5399
    sw	$a2,5008($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5402
    ld	$gp,16($sp)
    # Line 5401
    ld	$a3,24($sp)
    # Line 5402
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5401
    sw	$a3,5008($zero)
.end __glce_BindTextureEXT

# Function: __glce_DeleteTexturesEXT
# Declared: Line 5407 (Source lines: 5408-5416)
# Address: 0x0da5efd0 - 0x0da5f01c (Size: 76 bytes, Frame: 32)
.globl __glce_DeleteTexturesEXT
.ent __glce_DeleteTexturesEXT
__glce_DeleteTexturesEXT:
    # Line 5408
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5412
    lw	$s8,5012($zero)
    # Line 5408
    lui	$v0,0x3
    # Line 5413
    lw	$at,4112($zero)
    # Line 5408
    addiu	$v0,$v0,8200
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5414
    # lw $t9, -17040($gp) # &glDeleteTexturesEXT
    # Line 5408
    sd	$ra,0($sp)
    # Line 5413
    lw	$at,10756($at)
    # Line 5414
    jal	glDeleteTexturesEXT
    # Line 5413
    sw	$at,5012($zero)
    ld	$ra,0($sp)
    # Line 5416
    ld	$gp,16($sp)
    # Line 5415
    sw	$s8,5012($zero)
    # Line 5416
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_DeleteTexturesEXT

# Function: __glce_GenTexturesEXT
# Declared: Line 5421 (Source lines: 5422-5430)
# Address: 0x0da5f020 - 0x0da5f06c (Size: 76 bytes, Frame: 32)
.globl __glce_GenTexturesEXT
.ent __glce_GenTexturesEXT
__glce_GenTexturesEXT:
    # Line 5422
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5426
    lw	$s8,5016($zero)
    # Line 5422
    lui	$v0,0x3
    # Line 5427
    lw	$at,4112($zero)
    # Line 5422
    addiu	$v0,$v0,8120
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5428
    # lw $t9, -17036($gp) # &glGenTexturesEXT
    # Line 5422
    sd	$ra,0($sp)
    # Line 5427
    lw	$at,10760($at)
    # Line 5428
    jal	glGenTexturesEXT
    # Line 5427
    sw	$at,5016($zero)
    ld	$ra,0($sp)
    # Line 5430
    ld	$gp,16($sp)
    # Line 5429
    sw	$s8,5016($zero)
    # Line 5430
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GenTexturesEXT

# Function: __glce_IsTextureEXT
# Declared: Line 5435 (Source lines: 5436-5445)
# Address: 0x0da5f070 - 0x0da5f0c0 (Size: 80 bytes, Frame: 32)
.globl __glce_IsTextureEXT
.ent __glce_IsTextureEXT
__glce_IsTextureEXT:
    # Line 5436
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5441
    lw	$s8,5020($zero)
    # Line 5436
    lui	$v0,0x3
    # Line 5442
    lw	$at,4112($zero)
    # Line 5436
    addiu	$v0,$v0,8040
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5443
    # lw $t9, -17032($gp) # &glIsTextureEXT
    # Line 5436
    sd	$ra,0($sp)
    # Line 5442
    lw	$at,10764($at)
    # Line 5443
    jal	glIsTextureEXT
    # Line 5442
    sw	$at,5020($zero)
    ld	$ra,0($sp)
    # Line 5445
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 5444
    sw	$s8,5020($zero)
    # Line 5445
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IsTextureEXT

# Function: __glce_PrioritizeTexturesEXT
# Declared: Line 5451 (Source lines: 5452-5462)
# Address: 0x0da5f0c0 - 0x0da5f144 (Size: 132 bytes, Frame: 192)
.globl __glce_PrioritizeTexturesEXT
.ent __glce_PrioritizeTexturesEXT
__glce_PrioritizeTexturesEXT:
    # Line 5456
    lw	$v0,5024($zero)
    # Line 5452
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 5456
    sd	$v0,24($sp)
    # Line 5452
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5454
    lw	$at,4112($zero)
    # Line 5452
    addiu	$v1,$v1,7960
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5458
    # lw $t9, -17028($gp) # &glPrioritizeTexturesEXT
    # Line 5454
    sd	$at,32($sp)
    # Line 5457
    lw	$at,6984($at)
    # Line 5452
    move	$s8,$a0
    # Line 5458
    jal	glPrioritizeTexturesEXT
    # Line 5457
    sw	$at,5024($zero)
    # Line 5460
    ld	$a2,40($sp)
    # lw $t9, -17028($gp) # &glPrioritizeTexturesEXT
    # Line 5459
    ld	$a3,32($sp)
    # Line 5460
    ld	$a1,48($sp)
    # Line 5459
    lw	$a3,10768($a3)
    # Line 5460
    move	$a0,$s8
    jal	glPrioritizeTexturesEXT
    # Line 5459
    sw	$a3,5024($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5462
    ld	$gp,16($sp)
    # Line 5461
    ld	$a4,24($sp)
    # Line 5462
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5461
    sw	$a4,5024($zero)
.end __glce_PrioritizeTexturesEXT

# Function: __glce_CopyTexImage1DEXT
# Declared: Line 5467 (Source lines: 5468-5478)
# Address: 0x0da5f150 - 0x0da5f1f4 (Size: 164 bytes, Frame: 224)
.globl __glce_CopyTexImage1DEXT
.ent __glce_CopyTexImage1DEXT
__glce_CopyTexImage1DEXT:
    # Line 5472
    lw	$v0,5028($zero)
    # Line 5468
    addiu	$sp,$sp,-96
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    # Line 5472
    sd	$v0,24($sp)
    # Line 5468
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5470
    lw	$at,4112($zero)
    # Line 5468
    addiu	$v1,$v1,7816
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5474
    # lw $t9, -17024($gp) # &glCopyTexImage1DEXT
    # Line 5470
    sd	$at,32($sp)
    # Line 5473
    lw	$at,6988($at)
    # Line 5468
    move	$s8,$a0
    # Line 5474
    jal	glCopyTexImage1DEXT
    # Line 5473
    sw	$at,5028($zero)
    # Line 5476
    ld	$a6,40($sp)
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # lw $t9, -17024($gp) # &glCopyTexImage1DEXT
    # Line 5475
    ld	$a7,32($sp)
    # Line 5476
    ld	$a1,80($sp)
    # Line 5475
    lw	$a7,10772($a7)
    # Line 5476
    move	$a0,$s8
    jal	glCopyTexImage1DEXT
    # Line 5475
    sw	$a7,5028($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5478
    ld	$gp,16($sp)
    # Line 5477
    ld	$t0,24($sp)
    # Line 5478
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5477
    sw	$t0,5028($zero)
.end __glce_CopyTexImage1DEXT

# Function: __glce_CopyTexImage2DEXT
# Declared: Line 5483 (Source lines: 5484-5494)
# Address: 0x0da5f200 - 0x0da5f2ac (Size: 172 bytes, Frame: 224)
.globl __glce_CopyTexImage2DEXT
.ent __glce_CopyTexImage2DEXT
__glce_CopyTexImage2DEXT:
    # Line 5488
    lw	$v0,5032($zero)
    # Line 5484
    addiu	$sp,$sp,-96
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    # Line 5488
    sd	$v0,24($sp)
    # Line 5484
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5486
    lw	$at,4112($zero)
    # Line 5484
    addiu	$v1,$v1,7640
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5490
    # lw $t9, -17020($gp) # &glCopyTexImage2DEXT
    # Line 5486
    sd	$at,32($sp)
    # Line 5489
    lw	$at,6992($at)
    # Line 5484
    move	$s8,$a0
    # Line 5490
    jal	glCopyTexImage2DEXT
    # Line 5489
    sw	$at,5032($zero)
    # Line 5492
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # lw $t9, -17020($gp) # &glCopyTexImage2DEXT
    # Line 5491
    ld	$t0,32($sp)
    # Line 5492
    ld	$a1,88($sp)
    # Line 5491
    lw	$t0,10776($t0)
    # Line 5492
    move	$a0,$s8
    jal	glCopyTexImage2DEXT
    # Line 5491
    sw	$t0,5032($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5494
    ld	$gp,16($sp)
    # Line 5493
    ld	$t1,24($sp)
    # Line 5494
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5493
    sw	$t1,5032($zero)
.end __glce_CopyTexImage2DEXT

# Function: __glce_CopyTexSubImage1DEXT
# Declared: Line 5499 (Source lines: 5500-5510)
# Address: 0x0da5f2b0 - 0x0da5f34c (Size: 156 bytes, Frame: 208)
.globl __glce_CopyTexSubImage1DEXT
.ent __glce_CopyTexSubImage1DEXT
__glce_CopyTexSubImage1DEXT:
    # Line 5504
    lw	$v0,5036($zero)
    # Line 5500
    addiu	$sp,$sp,-80
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    # Line 5504
    sd	$v0,24($sp)
    # Line 5500
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5502
    lw	$at,4112($zero)
    # Line 5500
    addiu	$v1,$v1,7464
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5506
    # lw $t9, -17016($gp) # &glCopyTexSubImage1DEXT
    # Line 5502
    sd	$at,32($sp)
    # Line 5505
    lw	$at,6996($at)
    # Line 5500
    move	$s8,$a0
    # Line 5506
    jal	glCopyTexSubImage1DEXT
    # Line 5505
    sw	$at,5036($zero)
    # Line 5508
    ld	$a5,40($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # lw $t9, -17016($gp) # &glCopyTexSubImage1DEXT
    # Line 5507
    ld	$a6,32($sp)
    # Line 5508
    ld	$a1,72($sp)
    # Line 5507
    lw	$a6,10780($a6)
    # Line 5508
    move	$a0,$s8
    jal	glCopyTexSubImage1DEXT
    # Line 5507
    sw	$a6,5036($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5510
    ld	$gp,16($sp)
    # Line 5509
    ld	$a7,24($sp)
    # Line 5510
    addiu	$sp,$sp,80
    jr	$ra
    # Line 5509
    sw	$a7,5036($zero)
.end __glce_CopyTexSubImage1DEXT

# Function: __glce_CopyTexSubImage2DEXT
# Declared: Line 5515 (Source lines: 5516-5526)
# Address: 0x0da5f350 - 0x0da5f3fc (Size: 172 bytes, Frame: 224)
.globl __glce_CopyTexSubImage2DEXT
.ent __glce_CopyTexSubImage2DEXT
__glce_CopyTexSubImage2DEXT:
    # Line 5520
    lw	$v0,5040($zero)
    # Line 5516
    addiu	$sp,$sp,-96
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    # Line 5520
    sd	$v0,24($sp)
    # Line 5516
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5518
    lw	$at,4112($zero)
    # Line 5516
    addiu	$v1,$v1,7304
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5522
    # lw $t9, -17012($gp) # &glCopyTexSubImage2DEXT
    # Line 5518
    sd	$at,32($sp)
    # Line 5521
    lw	$at,7000($at)
    # Line 5516
    move	$s8,$a0
    # Line 5522
    jal	glCopyTexSubImage2DEXT
    # Line 5521
    sw	$at,5040($zero)
    # Line 5524
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # lw $t9, -17012($gp) # &glCopyTexSubImage2DEXT
    # Line 5523
    ld	$t0,32($sp)
    # Line 5524
    ld	$a1,88($sp)
    # Line 5523
    lw	$t0,10784($t0)
    # Line 5524
    move	$a0,$s8
    jal	glCopyTexSubImage2DEXT
    # Line 5523
    sw	$t0,5040($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5526
    ld	$gp,16($sp)
    # Line 5525
    ld	$t1,24($sp)
    # Line 5526
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5525
    sw	$t1,5040($zero)
.end __glce_CopyTexSubImage2DEXT

# Function: __glce_CopyTexSubImage3DEXT
# Declared: Line 5531 (Source lines: 5532-5542)
# Address: 0x0da5f400 - 0x0da5f4b4 (Size: 180 bytes, Frame: 176)
.globl __glce_CopyTexSubImage3DEXT
.ent __glce_CopyTexSubImage3DEXT
__glce_CopyTexSubImage3DEXT:
    # Line 5536
    lw	$t0,5044($zero)
    # Line 5532
    addiu	$sp,$sp,-176
    sd	$a7,48($sp)
    sd	$a6,56($sp)
    sd	$a5,64($sp)
    sd	$a4,72($sp)
    # Line 5536
    sd	$t0,32($sp)
    # Line 5532
    sd	$a3,80($sp)
    sd	$a2,88($sp)
    sd	$a1,96($sp)
    sd	$a0,104($sp)
    sd	$ra,16($sp)
    # Line 5534
    lw	$v0,4112($zero)
    sd	$v0,40($sp)
    # Line 5532
    lui	$v1,0x3
    # Line 5537
    lw	$v0,7004($v0)
    # Line 5532
    addiu	$v1,$v1,7128
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 5538
    # lw $t9, -17008($gp) # &glCopyTexSubImage3DEXT
    # Line 5537
    sw	$v0,5044($zero)
    # Line 5538
    lw	$at,180($sp)
    jal	glCopyTexSubImage3DEXT
    sw	$at,4($sp)
    # Line 5540
    ld	$a7,48($sp)
    ld	$a6,56($sp)
    ld	$a5,64($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a2,88($sp)
    ld	$a1,96($sp)
    ld	$a0,104($sp)
    # Line 5539
    ld	$t2,40($sp)
    # Line 5540
    # lw $t9, -17008($gp) # &glCopyTexSubImage3DEXT
    # Line 5539
    lw	$t2,10788($t2)
    sw	$t2,5044($zero)
    # Line 5540
    lw	$t1,180($sp)
    jal	glCopyTexSubImage3DEXT
    sw	$t1,4($sp)
    ld	$ra,16($sp)
    # Line 5542
    ld	$gp,24($sp)
    # Line 5541
    ld	$t3,32($sp)
    # Line 5542
    addiu	$sp,$sp,176
    jr	$ra
    # Line 5541
    sw	$t3,5044($zero)
.end __glce_CopyTexSubImage3DEXT

# Function: __glce_ColorPointer
# Declared: Line 5547 (Source lines: 5548-5556)
# Address: 0x0da5f4c0 - 0x0da5f50c (Size: 76 bytes, Frame: 32)
.globl __glce_ColorPointer
.ent __glce_ColorPointer
__glce_ColorPointer:
    # Line 5548
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5552
    lw	$s8,5048($zero)
    # Line 5548
    lui	$v0,0x3
    # Line 5553
    lw	$at,4112($zero)
    # Line 5548
    addiu	$v0,$v0,6936
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5554
    # lw $t9, -17004($gp) # &glColorPointer
    # Line 5548
    sd	$ra,0($sp)
    # Line 5553
    lw	$at,10792($at)
    # Line 5554
    jal	glColorPointer
    # Line 5553
    sw	$at,5048($zero)
    ld	$ra,0($sp)
    # Line 5556
    ld	$gp,16($sp)
    # Line 5555
    sw	$s8,5048($zero)
    # Line 5556
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ColorPointer

# Function: __glce_DisableClientState
# Declared: Line 5561 (Source lines: 5562-5570)
# Address: 0x0da5f510 - 0x0da5f55c (Size: 76 bytes, Frame: 32)
.globl __glce_DisableClientState
.ent __glce_DisableClientState
__glce_DisableClientState:
    # Line 5562
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5566
    lw	$s8,5052($zero)
    # Line 5562
    lui	$v0,0x3
    # Line 5567
    lw	$at,4112($zero)
    # Line 5562
    addiu	$v0,$v0,6856
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5568
    # lw $t9, -17000($gp) # &glDisableClientState
    # Line 5562
    sd	$ra,0($sp)
    # Line 5567
    lw	$at,10796($at)
    # Line 5568
    jal	glDisableClientState
    # Line 5567
    sw	$at,5052($zero)
    ld	$ra,0($sp)
    # Line 5570
    ld	$gp,16($sp)
    # Line 5569
    sw	$s8,5052($zero)
    # Line 5570
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_DisableClientState

# Function: __glce_EdgeFlagPointer
# Declared: Line 5576 (Source lines: 5577-5585)
# Address: 0x0da5f560 - 0x0da5f5ac (Size: 76 bytes, Frame: 32)
.globl __glce_EdgeFlagPointer
.ent __glce_EdgeFlagPointer
__glce_EdgeFlagPointer:
    # Line 5577
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5581
    lw	$s8,5060($zero)
    # Line 5577
    lui	$v0,0x3
    # Line 5582
    lw	$at,4112($zero)
    # Line 5577
    addiu	$v0,$v0,6776
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5583
    # lw $t9, -16992($gp) # &glEdgeFlagPointer
    # Line 5577
    sd	$ra,0($sp)
    # Line 5582
    lw	$at,10804($at)
    # Line 5583
    jal	glEdgeFlagPointer
    # Line 5582
    sw	$at,5060($zero)
    ld	$ra,0($sp)
    # Line 5585
    ld	$gp,16($sp)
    # Line 5584
    sw	$s8,5060($zero)
    # Line 5585
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_EdgeFlagPointer

# Function: __glce_EnableClientState
# Declared: Line 5590 (Source lines: 5591-5599)
# Address: 0x0da5f5b0 - 0x0da5f5fc (Size: 76 bytes, Frame: 32)
.globl __glce_EnableClientState
.ent __glce_EnableClientState
__glce_EnableClientState:
    # Line 5591
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5595
    lw	$s8,5064($zero)
    # Line 5591
    lui	$v0,0x3
    # Line 5596
    lw	$at,4112($zero)
    # Line 5591
    addiu	$v0,$v0,6696
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5597
    # lw $t9, -16988($gp) # &glEnableClientState
    # Line 5591
    sd	$ra,0($sp)
    # Line 5596
    lw	$at,10808($at)
    # Line 5597
    jal	glEnableClientState
    # Line 5596
    sw	$at,5064($zero)
    ld	$ra,0($sp)
    # Line 5599
    ld	$gp,16($sp)
    # Line 5598
    sw	$s8,5064($zero)
    # Line 5599
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_EnableClientState

# Function: __glce_IndexPointer
# Declared: Line 5604 (Source lines: 5605-5613)
# Address: 0x0da5f600 - 0x0da5f64c (Size: 76 bytes, Frame: 32)
.globl __glce_IndexPointer
.ent __glce_IndexPointer
__glce_IndexPointer:
    # Line 5605
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5609
    lw	$s8,5068($zero)
    # Line 5605
    lui	$v0,0x3
    # Line 5610
    lw	$at,4112($zero)
    # Line 5605
    addiu	$v0,$v0,6616
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5611
    # lw $t9, -16984($gp) # &glIndexPointer
    # Line 5605
    sd	$ra,0($sp)
    # Line 5610
    lw	$at,10812($at)
    # Line 5611
    jal	glIndexPointer
    # Line 5610
    sw	$at,5068($zero)
    ld	$ra,0($sp)
    # Line 5613
    ld	$gp,16($sp)
    # Line 5612
    sw	$s8,5068($zero)
    # Line 5613
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IndexPointer

# Function: __glce_InterleavedArrays
# Declared: Line 5618 (Source lines: 5619-5627)
# Address: 0x0da5f650 - 0x0da5f69c (Size: 76 bytes, Frame: 32)
.globl __glce_InterleavedArrays
.ent __glce_InterleavedArrays
__glce_InterleavedArrays:
    # Line 5619
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5623
    lw	$s8,5072($zero)
    # Line 5619
    lui	$v0,0x3
    # Line 5624
    lw	$at,4112($zero)
    # Line 5619
    addiu	$v0,$v0,6536
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5625
    # lw $t9, -16980($gp) # &glInterleavedArrays
    # Line 5619
    sd	$ra,0($sp)
    # Line 5624
    lw	$at,10816($at)
    # Line 5625
    jal	glInterleavedArrays
    # Line 5624
    sw	$at,5072($zero)
    ld	$ra,0($sp)
    # Line 5627
    ld	$gp,16($sp)
    # Line 5626
    sw	$s8,5072($zero)
    # Line 5627
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_InterleavedArrays

# Function: __glce_NormalPointer
# Declared: Line 5632 (Source lines: 5633-5641)
# Address: 0x0da5f6a0 - 0x0da5f6ec (Size: 76 bytes, Frame: 32)
.globl __glce_NormalPointer
.ent __glce_NormalPointer
__glce_NormalPointer:
    # Line 5633
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5637
    lw	$s8,5076($zero)
    # Line 5633
    lui	$v0,0x3
    # Line 5638
    lw	$at,4112($zero)
    # Line 5633
    addiu	$v0,$v0,6456
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5639
    # lw $t9, -16976($gp) # &glNormalPointer
    # Line 5633
    sd	$ra,0($sp)
    # Line 5638
    lw	$at,10820($at)
    # Line 5639
    jal	glNormalPointer
    # Line 5638
    sw	$at,5076($zero)
    ld	$ra,0($sp)
    # Line 5641
    ld	$gp,16($sp)
    # Line 5640
    sw	$s8,5076($zero)
    # Line 5641
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_NormalPointer

# Function: __glce_TexCoordPointer
# Declared: Line 5646 (Source lines: 5647-5655)
# Address: 0x0da5f6f0 - 0x0da5f73c (Size: 76 bytes, Frame: 32)
.globl __glce_TexCoordPointer
.ent __glce_TexCoordPointer
__glce_TexCoordPointer:
    # Line 5647
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5651
    lw	$s8,5080($zero)
    # Line 5647
    lui	$v0,0x3
    # Line 5652
    lw	$at,4112($zero)
    # Line 5647
    addiu	$v0,$v0,6376
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5653
    # lw $t9, -16972($gp) # &glTexCoordPointer
    # Line 5647
    sd	$ra,0($sp)
    # Line 5652
    lw	$at,10824($at)
    # Line 5653
    jal	glTexCoordPointer
    # Line 5652
    sw	$at,5080($zero)
    ld	$ra,0($sp)
    # Line 5655
    ld	$gp,16($sp)
    # Line 5654
    sw	$s8,5080($zero)
    # Line 5655
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_TexCoordPointer

# Function: __glce_VertexPointer
# Declared: Line 5660 (Source lines: 5661-5669)
# Address: 0x0da5f740 - 0x0da5f78c (Size: 76 bytes, Frame: 32)
.globl __glce_VertexPointer
.ent __glce_VertexPointer
__glce_VertexPointer:
    # Line 5661
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5665
    lw	$s8,5084($zero)
    # Line 5661
    lui	$v0,0x3
    # Line 5666
    lw	$at,4112($zero)
    # Line 5661
    addiu	$v0,$v0,6296
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5667
    # lw $t9, -16968($gp) # &glVertexPointer
    # Line 5661
    sd	$ra,0($sp)
    # Line 5666
    lw	$at,10828($at)
    # Line 5667
    jal	glVertexPointer
    # Line 5666
    sw	$at,5084($zero)
    ld	$ra,0($sp)
    # Line 5669
    ld	$gp,16($sp)
    # Line 5668
    sw	$s8,5084($zero)
    # Line 5669
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_VertexPointer

# Function: __glce_PolygonOffset
# Declared: Line 5674 (Source lines: 5675-5685)
# Address: 0x0da5f790 - 0x0da5f80c (Size: 124 bytes, Frame: 48)
.globl __glce_PolygonOffset
.ent __glce_PolygonOffset
__glce_PolygonOffset:
    # Line 5679
    lw	$v0,5088($zero)
    # Line 5675
    addiu	$sp,$sp,-48
    sdc1	$f13,8($sp)
    # Line 5679
    sd	$v0,40($sp)
    # Line 5675
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    lui	$v1,0x3
    # Line 5677
    lw	$s8,4112($zero)
    # Line 5675
    addiu	$v1,$v1,6216
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 5681
    # lw $t9, -16964($gp) # &glPolygonOffset
    # Line 5675
    sdc1	$f30,0($sp)
    # Line 5680
    lw	$at,7048($s8)
    # Line 5675
    mov.s	$f30,$f12
    # Line 5681
    jal	glPolygonOffset
    # Line 5680
    sw	$at,5088($zero)
    # Line 5683
    # lw $t9, -16964($gp) # &glPolygonOffset
    ldc1	$f13,8($sp)
    # Line 5682
    lw	$a0,10832($s8)
    # Line 5683
    mov.s	$f12,$f30
    jal	glPolygonOffset
    # Line 5682
    sw	$a0,5088($zero)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    # Line 5685
    ld	$gp,32($sp)
    # Line 5684
    ld	$a1,40($sp)
    # Line 5685
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5684
    sw	$a1,5088($zero)
.end __glce_PolygonOffset

# Function: __glce_Indexub
# Declared: Line 5690 (Source lines: 5691-5701)
# Address: 0x0da5f810 - 0x0da5f884 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexub
.ent __glce_Indexub
__glce_Indexub:
    # Line 5695
    lw	$v0,5752($zero)
    # Line 5691
    addiu	$sp,$sp,-48
    # Line 5695
    sd	$v0,24($sp)
    # Line 5691
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5693
    lw	$at,4112($zero)
    # Line 5691
    addiu	$v1,$v1,6088
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5697
    # lw $t9, -16960($gp) # &glIndexub
    # Line 5693
    sd	$at,32($sp)
    # Line 5696
    lw	$at,7712($at)
    # Line 5691
    move	$s8,$a0
    # Line 5697
    jal	glIndexub
    # Line 5696
    sw	$at,5752($zero)
    # Line 5699
    # lw $t9, -16960($gp) # &glIndexub
    # Line 5698
    ld	$a1,32($sp)
    lw	$a1,11496($a1)
    # Line 5699
    move	$a0,$s8
    jal	glIndexub
    # Line 5698
    sw	$a1,5752($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5701
    ld	$gp,16($sp)
    # Line 5700
    ld	$a2,24($sp)
    # Line 5701
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5700
    sw	$a2,5752($zero)
.end __glce_Indexub

# Function: __glce_Indexubv
# Declared: Line 5706 (Source lines: 5707-5717)
# Address: 0x0da5f890 - 0x0da5f904 (Size: 116 bytes, Frame: 48)
.globl __glce_Indexubv
.ent __glce_Indexubv
__glce_Indexubv:
    # Line 5711
    lw	$v0,5756($zero)
    # Line 5707
    addiu	$sp,$sp,-48
    # Line 5711
    sd	$v0,24($sp)
    # Line 5707
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5709
    lw	$at,4112($zero)
    # Line 5707
    addiu	$v1,$v1,5960
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5713
    # lw $t9, -16956($gp) # &glIndexubv
    # Line 5709
    sd	$at,32($sp)
    # Line 5712
    lw	$at,7716($at)
    # Line 5707
    move	$s8,$a0
    # Line 5713
    jal	glIndexubv
    # Line 5712
    sw	$at,5756($zero)
    # Line 5715
    # lw $t9, -16956($gp) # &glIndexubv
    # Line 5714
    ld	$a1,32($sp)
    lw	$a1,11500($a1)
    # Line 5715
    move	$a0,$s8
    jal	glIndexubv
    # Line 5714
    sw	$a1,5756($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5717
    ld	$gp,16($sp)
    # Line 5716
    ld	$a2,24($sp)
    # Line 5717
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5716
    sw	$a2,5756($zero)
.end __glce_Indexubv

# Function: __glce_PopClientAttrib
# Declared: Line 5722 (Source lines: 5723-5731)
# Address: 0x0da5f910 - 0x0da5f95c (Size: 76 bytes, Frame: 32)
.globl __glce_PopClientAttrib
.ent __glce_PopClientAttrib
__glce_PopClientAttrib:
    # Line 5723
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5727
    lw	$s8,5092($zero)
    # Line 5723
    lui	$v0,0x3
    # Line 5728
    lw	$at,4112($zero)
    # Line 5723
    addiu	$v0,$v0,5832
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5729
    # lw $t9, -16952($gp) # &glPopClientAttrib
    # Line 5723
    sd	$ra,0($sp)
    # Line 5728
    lw	$at,10836($at)
    # Line 5729
    jal	glPopClientAttrib
    # Line 5728
    sw	$at,5092($zero)
    ld	$ra,0($sp)
    # Line 5731
    ld	$gp,16($sp)
    # Line 5730
    sw	$s8,5092($zero)
    # Line 5731
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PopClientAttrib

# Function: __glce_PushClientAttrib
# Declared: Line 5736 (Source lines: 5737-5745)
# Address: 0x0da5f960 - 0x0da5f9ac (Size: 76 bytes, Frame: 32)
.globl __glce_PushClientAttrib
.ent __glce_PushClientAttrib
__glce_PushClientAttrib:
    # Line 5737
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5741
    lw	$s8,5096($zero)
    # Line 5737
    lui	$v0,0x3
    # Line 5742
    lw	$at,4112($zero)
    # Line 5737
    addiu	$v0,$v0,5752
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5743
    # lw $t9, -16948($gp) # &glPushClientAttrib
    # Line 5737
    sd	$ra,0($sp)
    # Line 5742
    lw	$at,10840($at)
    # Line 5743
    jal	glPushClientAttrib
    # Line 5742
    sw	$at,5096($zero)
    ld	$ra,0($sp)
    # Line 5745
    ld	$gp,16($sp)
    # Line 5744
    sw	$s8,5096($zero)
    # Line 5745
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PushClientAttrib

# Function: __glce_SampleMaskSGIS
# Declared: Line 5750 (Source lines: 5751-5761)
# Address: 0x0da5f9b0 - 0x0da5fa34 (Size: 132 bytes, Frame: 48)
.globl __glce_SampleMaskSGIS
.ent __glce_SampleMaskSGIS
__glce_SampleMaskSGIS:
    # Line 5755
    lw	$v0,5100($zero)
    # Line 5751
    addiu	$sp,$sp,-48
    # Line 5755
    sd	$v0,32($sp)
    # Line 5751
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 5753
    lw	$at,4112($zero)
    # Line 5751
    addiu	$v1,$v1,5672
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 5757
    # lw $t9, -16944($gp) # &glSampleMaskSGIS
    # Line 5753
    sd	$at,40($sp)
    # Line 5756
    lw	$at,7060($at)
    # Line 5751
    mov.s	$f30,$f12
    move	$s8,$a1
    # Line 5757
    jal	glSampleMaskSGIS
    # Line 5756
    sw	$at,5100($zero)
    # Line 5759
    # lw $t9, -16944($gp) # &glSampleMaskSGIS
    # Line 5758
    ld	$a0,40($sp)
    lw	$a0,10844($a0)
    # Line 5759
    move	$a1,$s8
    mov.s	$f12,$f30
    jal	glSampleMaskSGIS
    # Line 5758
    sw	$a0,5100($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 5761
    ld	$gp,24($sp)
    # Line 5760
    ld	$a1,32($sp)
    # Line 5761
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5760
    sw	$a1,5100($zero)
.end __glce_SampleMaskSGIS

# Function: __glce_SamplePatternSGIS
# Declared: Line 5766 (Source lines: 5767-5777)
# Address: 0x0da5fa40 - 0x0da5fab4 (Size: 116 bytes, Frame: 48)
.globl __glce_SamplePatternSGIS
.ent __glce_SamplePatternSGIS
__glce_SamplePatternSGIS:
    # Line 5771
    lw	$v0,5104($zero)
    # Line 5767
    addiu	$sp,$sp,-48
    # Line 5771
    sd	$v0,24($sp)
    # Line 5767
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5769
    lw	$at,4112($zero)
    # Line 5767
    addiu	$v1,$v1,5528
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5773
    # lw $t9, -16940($gp) # &glSamplePatternSGIS
    # Line 5769
    sd	$at,32($sp)
    # Line 5772
    lw	$at,7064($at)
    # Line 5767
    move	$s8,$a0
    # Line 5773
    jal	glSamplePatternSGIS
    # Line 5772
    sw	$at,5104($zero)
    # Line 5775
    # lw $t9, -16940($gp) # &glSamplePatternSGIS
    # Line 5774
    ld	$a1,32($sp)
    lw	$a1,10848($a1)
    # Line 5775
    move	$a0,$s8
    jal	glSamplePatternSGIS
    # Line 5774
    sw	$a1,5104($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5777
    ld	$gp,16($sp)
    # Line 5776
    ld	$a2,24($sp)
    # Line 5777
    addiu	$sp,$sp,48
    jr	$ra
    # Line 5776
    sw	$a2,5104($zero)
.end __glce_SamplePatternSGIS

# Function: __glce_TagSampleBufferSGIX
# Declared: Line 5782 (Source lines: 5783-5793)
# Address: 0x0da5fac0 - 0x0da5fb24 (Size: 100 bytes, Frame: 32)
.globl __glce_TagSampleBufferSGIX
.ent __glce_TagSampleBufferSGIX
__glce_TagSampleBufferSGIX:
    # Line 5787
    lw	$v0,5108($zero)
    # Line 5783
    addiu	$sp,$sp,-32
    # Line 5787
    sd	$v0,24($sp)
    # Line 5783
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5785
    lw	$s8,4112($zero)
    # Line 5783
    addiu	$v1,$v1,5400
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5789
    # lw $t9, -16936($gp) # &glTagSampleBufferSGIX
    # Line 5783
    sd	$ra,0($sp)
    # Line 5788
    lw	$at,7068($s8)
    # Line 5789
    jal	glTagSampleBufferSGIX
    # Line 5788
    sw	$at,5108($zero)
    # Line 5791
    # lw $t9, -16936($gp) # &glTagSampleBufferSGIX
    # Line 5790
    lw	$a0,10852($s8)
    # Line 5791
    jal	glTagSampleBufferSGIX
    # Line 5790
    sw	$a0,5108($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5793
    ld	$gp,16($sp)
    # Line 5792
    ld	$a1,24($sp)
    # Line 5793
    addiu	$sp,$sp,32
    jr	$ra
    # Line 5792
    sw	$a1,5108($zero)
.end __glce_TagSampleBufferSGIX

# Function: __glce_DetailTexFuncSGIS
# Declared: Line 5798 (Source lines: 5799-5809)
# Address: 0x0da5fb30 - 0x0da5fbb4 (Size: 132 bytes, Frame: 192)
.globl __glce_DetailTexFuncSGIS
.ent __glce_DetailTexFuncSGIS
__glce_DetailTexFuncSGIS:
    # Line 5803
    lw	$v0,5112($zero)
    # Line 5799
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 5803
    sd	$v0,24($sp)
    # Line 5799
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5801
    lw	$at,4112($zero)
    # Line 5799
    addiu	$v1,$v1,5288
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5805
    # lw $t9, -16932($gp) # &glDetailTexFuncSGIS
    # Line 5801
    sd	$at,32($sp)
    # Line 5804
    lw	$at,7072($at)
    # Line 5799
    move	$s8,$a0
    # Line 5805
    jal	glDetailTexFuncSGIS
    # Line 5804
    sw	$at,5112($zero)
    # Line 5807
    ld	$a2,40($sp)
    # lw $t9, -16932($gp) # &glDetailTexFuncSGIS
    # Line 5806
    ld	$a3,32($sp)
    # Line 5807
    ld	$a1,48($sp)
    # Line 5806
    lw	$a3,10856($a3)
    # Line 5807
    move	$a0,$s8
    jal	glDetailTexFuncSGIS
    # Line 5806
    sw	$a3,5112($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5809
    ld	$gp,16($sp)
    # Line 5808
    ld	$a4,24($sp)
    # Line 5809
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5808
    sw	$a4,5112($zero)
.end __glce_DetailTexFuncSGIS

# Function: __glce_GetDetailTexFuncSGIS
# Declared: Line 5814 (Source lines: 5815-5823)
# Address: 0x0da5fbc0 - 0x0da5fc0c (Size: 76 bytes, Frame: 32)
.globl __glce_GetDetailTexFuncSGIS
.ent __glce_GetDetailTexFuncSGIS
__glce_GetDetailTexFuncSGIS:
    # Line 5815
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5819
    lw	$s8,5116($zero)
    # Line 5815
    lui	$v0,0x3
    # Line 5820
    lw	$at,4112($zero)
    # Line 5815
    addiu	$v0,$v0,5144
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5821
    # lw $t9, -16928($gp) # &glGetDetailTexFuncSGIS
    # Line 5815
    sd	$ra,0($sp)
    # Line 5820
    lw	$at,10860($at)
    # Line 5821
    jal	glGetDetailTexFuncSGIS
    # Line 5820
    sw	$at,5116($zero)
    ld	$ra,0($sp)
    # Line 5823
    ld	$gp,16($sp)
    # Line 5822
    sw	$s8,5116($zero)
    # Line 5823
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetDetailTexFuncSGIS

# Function: __glce_SharpenTexFuncSGIS
# Declared: Line 5828 (Source lines: 5829-5839)
# Address: 0x0da5fc10 - 0x0da5fc94 (Size: 132 bytes, Frame: 192)
.globl __glce_SharpenTexFuncSGIS
.ent __glce_SharpenTexFuncSGIS
__glce_SharpenTexFuncSGIS:
    # Line 5833
    lw	$v0,5120($zero)
    # Line 5829
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 5833
    sd	$v0,24($sp)
    # Line 5829
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5831
    lw	$at,4112($zero)
    # Line 5829
    addiu	$v1,$v1,5064
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5835
    # lw $t9, -16924($gp) # &glSharpenTexFuncSGIS
    # Line 5831
    sd	$at,32($sp)
    # Line 5834
    lw	$at,7080($at)
    # Line 5829
    move	$s8,$a0
    # Line 5835
    jal	glSharpenTexFuncSGIS
    # Line 5834
    sw	$at,5120($zero)
    # Line 5837
    ld	$a2,40($sp)
    # lw $t9, -16924($gp) # &glSharpenTexFuncSGIS
    # Line 5836
    ld	$a3,32($sp)
    # Line 5837
    ld	$a1,48($sp)
    # Line 5836
    lw	$a3,10864($a3)
    # Line 5837
    move	$a0,$s8
    jal	glSharpenTexFuncSGIS
    # Line 5836
    sw	$a3,5120($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5839
    ld	$gp,16($sp)
    # Line 5838
    ld	$a4,24($sp)
    # Line 5839
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5838
    sw	$a4,5120($zero)
.end __glce_SharpenTexFuncSGIS

# Function: __glce_GetSharpenTexFuncSGIS
# Declared: Line 5844 (Source lines: 5845-5853)
# Address: 0x0da5fca0 - 0x0da5fcec (Size: 76 bytes, Frame: 32)
.globl __glce_GetSharpenTexFuncSGIS
.ent __glce_GetSharpenTexFuncSGIS
__glce_GetSharpenTexFuncSGIS:
    # Line 5845
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5849
    lw	$s8,5124($zero)
    # Line 5845
    lui	$v0,0x3
    # Line 5850
    lw	$at,4112($zero)
    # Line 5845
    addiu	$v0,$v0,4920
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5851
    # lw $t9, -16920($gp) # &glGetSharpenTexFuncSGIS
    # Line 5845
    sd	$ra,0($sp)
    # Line 5850
    lw	$at,10868($at)
    # Line 5851
    jal	glGetSharpenTexFuncSGIS
    # Line 5850
    sw	$at,5124($zero)
    ld	$ra,0($sp)
    # Line 5853
    ld	$gp,16($sp)
    # Line 5852
    sw	$s8,5124($zero)
    # Line 5853
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetSharpenTexFuncSGIS

# Function: __glce_ColorTableSGI
# Declared: Line 5858 (Source lines: 5859-5869)
# Address: 0x0da5fcf0 - 0x0da5fd8c (Size: 156 bytes, Frame: 208)
.globl __glce_ColorTableSGI
.ent __glce_ColorTableSGI
__glce_ColorTableSGI:
    # Line 5863
    lw	$v0,5128($zero)
    # Line 5859
    addiu	$sp,$sp,-80
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    # Line 5863
    sd	$v0,24($sp)
    # Line 5859
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5861
    lw	$at,4112($zero)
    # Line 5859
    addiu	$v1,$v1,4840
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5865
    # lw $t9, -16916($gp) # &glColorTableSGI
    # Line 5861
    sd	$at,32($sp)
    # Line 5864
    lw	$at,7088($at)
    # Line 5859
    move	$s8,$a0
    # Line 5865
    jal	glColorTableSGI
    # Line 5864
    sw	$at,5128($zero)
    # Line 5867
    ld	$a5,40($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # lw $t9, -16916($gp) # &glColorTableSGI
    # Line 5866
    ld	$a6,32($sp)
    # Line 5867
    ld	$a1,72($sp)
    # Line 5866
    lw	$a6,10872($a6)
    # Line 5867
    move	$a0,$s8
    jal	glColorTableSGI
    # Line 5866
    sw	$a6,5128($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5869
    ld	$gp,16($sp)
    # Line 5868
    ld	$a7,24($sp)
    # Line 5869
    addiu	$sp,$sp,80
    jr	$ra
    # Line 5868
    sw	$a7,5128($zero)
.end __glce_ColorTableSGI

# Function: __glce_ColorTableParameterfvSGI
# Declared: Line 5874 (Source lines: 5875-5885)
# Address: 0x0da5fd90 - 0x0da5fe14 (Size: 132 bytes, Frame: 192)
.globl __glce_ColorTableParameterfvSGI
.ent __glce_ColorTableParameterfvSGI
__glce_ColorTableParameterfvSGI:
    # Line 5879
    lw	$v0,5132($zero)
    # Line 5875
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 5879
    sd	$v0,24($sp)
    # Line 5875
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5877
    lw	$at,4112($zero)
    # Line 5875
    addiu	$v1,$v1,4680
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5881
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    # Line 5877
    sd	$at,32($sp)
    # Line 5880
    lw	$at,7092($at)
    # Line 5875
    move	$s8,$a0
    # Line 5881
    jal	glColorTableParameterfvSGI
    # Line 5880
    sw	$at,5132($zero)
    # Line 5883
    ld	$a2,40($sp)
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    # Line 5882
    ld	$a3,32($sp)
    # Line 5883
    ld	$a1,48($sp)
    # Line 5882
    lw	$a3,10876($a3)
    # Line 5883
    move	$a0,$s8
    jal	glColorTableParameterfvSGI
    # Line 5882
    sw	$a3,5132($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5885
    ld	$gp,16($sp)
    # Line 5884
    ld	$a4,24($sp)
    # Line 5885
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5884
    sw	$a4,5132($zero)
.end __glce_ColorTableParameterfvSGI

# Function: __glce_ColorTableParameterivSGI
# Declared: Line 5890 (Source lines: 5891-5901)
# Address: 0x0da5fe20 - 0x0da5fea4 (Size: 132 bytes, Frame: 192)
.globl __glce_ColorTableParameterivSGI
.ent __glce_ColorTableParameterivSGI
__glce_ColorTableParameterivSGI:
    # Line 5895
    lw	$v0,5136($zero)
    # Line 5891
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 5895
    sd	$v0,24($sp)
    # Line 5891
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5893
    lw	$at,4112($zero)
    # Line 5891
    addiu	$v1,$v1,4536
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5897
    # lw $t9, -16908($gp) # &glColorTableParameterivSGI
    # Line 5893
    sd	$at,32($sp)
    # Line 5896
    lw	$at,7096($at)
    # Line 5891
    move	$s8,$a0
    # Line 5897
    jal	glColorTableParameterivSGI
    # Line 5896
    sw	$at,5136($zero)
    # Line 5899
    ld	$a2,40($sp)
    # lw $t9, -16908($gp) # &glColorTableParameterivSGI
    # Line 5898
    ld	$a3,32($sp)
    # Line 5899
    ld	$a1,48($sp)
    # Line 5898
    lw	$a3,10880($a3)
    # Line 5899
    move	$a0,$s8
    jal	glColorTableParameterivSGI
    # Line 5898
    sw	$a3,5136($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5901
    ld	$gp,16($sp)
    # Line 5900
    ld	$a4,24($sp)
    # Line 5901
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5900
    sw	$a4,5136($zero)
.end __glce_ColorTableParameterivSGI

# Function: __glce_CopyColorTableSGI
# Declared: Line 5906 (Source lines: 5907-5917)
# Address: 0x0da5feb0 - 0x0da5ff44 (Size: 148 bytes, Frame: 208)
.globl __glce_CopyColorTableSGI
.ent __glce_CopyColorTableSGI
__glce_CopyColorTableSGI:
    # Line 5911
    lw	$v0,5140($zero)
    # Line 5907
    addiu	$sp,$sp,-80
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    # Line 5911
    sd	$v0,24($sp)
    # Line 5907
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5909
    lw	$at,4112($zero)
    # Line 5907
    addiu	$v1,$v1,4392
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 5913
    # lw $t9, -16904($gp) # &glCopyColorTableSGI
    # Line 5909
    sd	$at,32($sp)
    # Line 5912
    lw	$at,7100($at)
    # Line 5907
    move	$s8,$a0
    # Line 5913
    jal	glCopyColorTableSGI
    # Line 5912
    sw	$at,5140($zero)
    # Line 5915
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -16904($gp) # &glCopyColorTableSGI
    # Line 5914
    ld	$a5,32($sp)
    # Line 5915
    ld	$a1,64($sp)
    # Line 5914
    lw	$a5,10884($a5)
    # Line 5915
    move	$a0,$s8
    jal	glCopyColorTableSGI
    # Line 5914
    sw	$a5,5140($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 5917
    ld	$gp,16($sp)
    # Line 5916
    ld	$a6,24($sp)
    # Line 5917
    addiu	$sp,$sp,80
    jr	$ra
    # Line 5916
    sw	$a6,5140($zero)
.end __glce_CopyColorTableSGI

# Function: __glce_GetColorTableSGI
# Declared: Line 5922 (Source lines: 5923-5931)
# Address: 0x0da5ff50 - 0x0da5ff9c (Size: 76 bytes, Frame: 32)
.globl __glce_GetColorTableSGI
.ent __glce_GetColorTableSGI
__glce_GetColorTableSGI:
    # Line 5923
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5927
    lw	$s8,5144($zero)
    # Line 5923
    lui	$v0,0x3
    # Line 5928
    lw	$at,4112($zero)
    # Line 5923
    addiu	$v0,$v0,4232
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5929
    # lw $t9, -16900($gp) # &glGetColorTableSGI
    # Line 5923
    sd	$ra,0($sp)
    # Line 5928
    lw	$at,10888($at)
    # Line 5929
    jal	glGetColorTableSGI
    # Line 5928
    sw	$at,5144($zero)
    ld	$ra,0($sp)
    # Line 5931
    ld	$gp,16($sp)
    # Line 5930
    sw	$s8,5144($zero)
    # Line 5931
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetColorTableSGI

# Function: __glce_GetColorTableParameterfvSGI
# Declared: Line 5936 (Source lines: 5937-5945)
# Address: 0x0da5ffa0 - 0x0da5ffec (Size: 76 bytes, Frame: 32)
.globl __glce_GetColorTableParameterfvSGI
.ent __glce_GetColorTableParameterfvSGI
__glce_GetColorTableParameterfvSGI:
    # Line 5937
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5941
    lw	$s8,5148($zero)
    # Line 5937
    lui	$v0,0x3
    # Line 5942
    lw	$at,4112($zero)
    # Line 5937
    addiu	$v0,$v0,4152
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5943
    # lw $t9, -16896($gp) # &glGetColorTableParameterfvSGI
    # Line 5937
    sd	$ra,0($sp)
    # Line 5942
    lw	$at,10892($at)
    # Line 5943
    jal	glGetColorTableParameterfvSGI
    # Line 5942
    sw	$at,5148($zero)
    ld	$ra,0($sp)
    # Line 5945
    ld	$gp,16($sp)
    # Line 5944
    sw	$s8,5148($zero)
    # Line 5945
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetColorTableParameterfvSGI

# Function: __glce_GetColorTableParameterivSGI
# Declared: Line 5950 (Source lines: 5951-5959)
# Address: 0x0da5fff0 - 0x0da6003c (Size: 76 bytes, Frame: 32)
.globl __glce_GetColorTableParameterivSGI
.ent __glce_GetColorTableParameterivSGI
__glce_GetColorTableParameterivSGI:
    # Line 5951
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5955
    lw	$s8,5152($zero)
    # Line 5951
    lui	$v0,0x3
    # Line 5956
    lw	$at,4112($zero)
    # Line 5951
    addiu	$v0,$v0,4072
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 5957
    # lw $t9, -16892($gp) # &glGetColorTableParameterivSGI
    # Line 5951
    sd	$ra,0($sp)
    # Line 5956
    lw	$at,10896($at)
    # Line 5957
    jal	glGetColorTableParameterivSGI
    # Line 5956
    sw	$at,5152($zero)
    ld	$ra,0($sp)
    # Line 5959
    ld	$gp,16($sp)
    # Line 5958
    sw	$s8,5152($zero)
    # Line 5959
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetColorTableParameterivSGI

# Function: __glce_TexImage4DSGIS
# Declared: Line 5964 (Source lines: 5965-5975)
# Address: 0x0da60040 - 0x0da6011c (Size: 220 bytes, Frame: 192)
.globl __glce_TexImage4DSGIS
.ent __glce_TexImage4DSGIS
__glce_TexImage4DSGIS:
    # Line 5965
    addiu	$sp,$sp,-192
    sd	$a7,64($sp)
    sd	$a6,72($sp)
    sd	$a5,80($sp)
    sd	$a4,88($sp)
    sd	$a3,96($sp)
    sd	$a2,104($sp)
    sd	$a0,32($sp)
    sd	$ra,40($sp)
    sd	$s4,48($sp)
    sd	$s0,112($sp)
    # Line 5969
    lw	$s0,5156($zero)
    # Line 5967
    lw	$t1,4112($zero)
    sd	$t1,56($sp)
    # Line 5970
    lw	$t1,7116($t1)
    sw	$t1,5156($zero)
    # Line 5971
    lw	$at,196($sp)
    lw	$v0,204($sp)
    # Line 5965
    lui	$t0,0x3
    # Line 5971
    lw	$v1,212($sp)
    # Line 5965
    addiu	$t0,$t0,3992
    sd	$gp,120($sp)
    addu	$gp,$t9,$t0
    # Line 5971
    # lw $t9, -16888($gp) # &glTexImage4DSGIS
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    # Line 5965
    move	$s4,$a1
    # Line 5971
    jal	glTexImage4DSGIS
    sw	$at,4($sp)
    # Line 5973
    ld	$a7,64($sp)
    ld	$a6,72($sp)
    ld	$a5,80($sp)
    ld	$a4,88($sp)
    ld	$a3,96($sp)
    ld	$a2,104($sp)
    # Line 5972
    ld	$t9,56($sp)
    # Line 5973
    ld	$a0,32($sp)
    # Line 5972
    lw	$t9,10900($t9)
    sw	$t9,5156($zero)
    # Line 5973
    lw	$t2,196($sp)
    lw	$t3,204($sp)
    lw	$t8,212($sp)
    # lw $t9, -16888($gp) # &glTexImage4DSGIS
    sw	$t8,20($sp)
    sw	$t3,12($sp)
    move	$a1,$s4
    jal	glTexImage4DSGIS
    sw	$t2,4($sp)
    ld	$s4,48($sp)
    ld	$ra,40($sp)
    # Line 5975
    ld	$gp,120($sp)
    # Line 5974
    sw	$s0,5156($zero)
    # Line 5975
    ld	$s0,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_TexImage4DSGIS

# Function: __glce_TexSubImage4DSGIS
# Declared: Line 5980 (Source lines: 5981-5991)
# Address: 0x0da60120 - 0x0da60224 (Size: 260 bytes, Frame: 208)
.globl __glce_TexSubImage4DSGIS
.ent __glce_TexSubImage4DSGIS
__glce_TexSubImage4DSGIS:
    # Line 5981
    addiu	$sp,$sp,-208
    sd	$a7,88($sp)
    sd	$a6,96($sp)
    sd	$a5,104($sp)
    sd	$a4,112($sp)
    sd	$a3,120($sp)
    sd	$a0,48($sp)
    sd	$ra,64($sp)
    sd	$s0,56($sp)
    sd	$s4,72($sp)
    sd	$s1,136($sp)
    # Line 5985
    lw	$s1,5160($zero)
    # Line 5983
    lw	$t3,4112($zero)
    sd	$t3,80($sp)
    # Line 5986
    lw	$t3,7120($t3)
    sw	$t3,5160($zero)
    # Line 5987
    lw	$at,212($sp)
    lw	$v0,220($sp)
    lw	$v1,228($sp)
    lw	$t1,236($sp)
    lw	$t2,244($sp)
    sw	$t2,36($sp)
    # Line 5981
    lui	$t0,0x3
    # Line 5987
    sw	$t1,28($sp)
    # Line 5981
    addiu	$t0,$t0,3768
    sd	$gp,128($sp)
    addu	$gp,$t9,$t0
    # Line 5987
    # lw $t9, -16884($gp) # &glTexSubImage4DSGIS
    sw	$v1,20($sp)
    # Line 5981
    move	$s4,$a2
    # Line 5987
    sw	$v0,12($sp)
    # Line 5981
    move	$s0,$a1
    # Line 5987
    jal	glTexSubImage4DSGIS
    sw	$at,4($sp)
    # Line 5989
    ld	$a7,88($sp)
    ld	$a6,96($sp)
    ld	$a5,104($sp)
    ld	$a4,112($sp)
    ld	$a3,120($sp)
    # Line 5988
    ld	$a0,80($sp)
    # Line 5989
    # lw $t9, -16884($gp) # &glTexSubImage4DSGIS
    # Line 5988
    lw	$a0,10904($a0)
    sw	$a0,5160($zero)
    # Line 5989
    ld	$a0,48($sp)
    lw	$t8,212($sp)
    lw	$ra,220($sp)
    lw	$at,228($sp)
    lw	$v0,236($sp)
    lw	$v1,244($sp)
    sw	$v1,36($sp)
    sw	$v0,28($sp)
    sw	$at,20($sp)
    move	$a2,$s4
    sw	$ra,12($sp)
    move	$a1,$s0
    jal	glTexSubImage4DSGIS
    sw	$t8,4($sp)
    ld	$s0,56($sp)
    ld	$s4,72($sp)
    ld	$ra,64($sp)
    # Line 5991
    ld	$gp,128($sp)
    # Line 5990
    sw	$s1,5160($zero)
    # Line 5991
    ld	$s1,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glce_TexSubImage4DSGIS

# Function: __glce_PixelTexGenSGIX
# Declared: Line 5996 (Source lines: 5997-6007)
# Address: 0x0da60230 - 0x0da602a4 (Size: 116 bytes, Frame: 48)
.globl __glce_PixelTexGenSGIX
.ent __glce_PixelTexGenSGIX
__glce_PixelTexGenSGIX:
    # Line 6001
    lw	$v0,5164($zero)
    # Line 5997
    addiu	$sp,$sp,-48
    # Line 6001
    sd	$v0,24($sp)
    # Line 5997
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 5999
    lw	$at,4112($zero)
    # Line 5997
    addiu	$v1,$v1,3496
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6003
    # lw $t9, -16880($gp) # &glPixelTexGenSGIX
    # Line 5999
    sd	$at,32($sp)
    # Line 6002
    lw	$at,7124($at)
    # Line 5997
    move	$s8,$a0
    # Line 6003
    jal	glPixelTexGenSGIX
    # Line 6002
    sw	$at,5164($zero)
    # Line 6005
    # lw $t9, -16880($gp) # &glPixelTexGenSGIX
    # Line 6004
    ld	$a1,32($sp)
    lw	$a1,10908($a1)
    # Line 6005
    move	$a0,$s8
    jal	glPixelTexGenSGIX
    # Line 6004
    sw	$a1,5164($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6007
    ld	$gp,16($sp)
    # Line 6006
    ld	$a2,24($sp)
    # Line 6007
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6006
    sw	$a2,5164($zero)
.end __glce_PixelTexGenSGIX

# Function: __glce_SpriteParameterfSGIX
# Declared: Line 6012 (Source lines: 6013-6023)
# Address: 0x0da602b0 - 0x0da60334 (Size: 132 bytes, Frame: 48)
.globl __glce_SpriteParameterfSGIX
.ent __glce_SpriteParameterfSGIX
__glce_SpriteParameterfSGIX:
    # Line 6017
    lw	$v0,5168($zero)
    # Line 6013
    addiu	$sp,$sp,-48
    # Line 6017
    sd	$v0,32($sp)
    # Line 6013
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 6015
    lw	$at,4112($zero)
    # Line 6013
    addiu	$v1,$v1,3368
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 6019
    # lw $t9, -16876($gp) # &glSpriteParameterfSGIX
    # Line 6015
    sd	$at,40($sp)
    # Line 6018
    lw	$at,7128($at)
    # Line 6013
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 6019
    jal	glSpriteParameterfSGIX
    # Line 6018
    sw	$at,5168($zero)
    # Line 6021
    # lw $t9, -16876($gp) # &glSpriteParameterfSGIX
    # Line 6020
    ld	$a1,40($sp)
    lw	$a1,10912($a1)
    # Line 6021
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glSpriteParameterfSGIX
    # Line 6020
    sw	$a1,5168($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 6023
    ld	$gp,24($sp)
    # Line 6022
    ld	$a2,32($sp)
    # Line 6023
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6022
    sw	$a2,5168($zero)
.end __glce_SpriteParameterfSGIX

# Function: __glce_SpriteParameterfvSGIX
# Declared: Line 6028 (Source lines: 6029-6039)
# Address: 0x0da60340 - 0x0da603bc (Size: 124 bytes, Frame: 48)
.globl __glce_SpriteParameterfvSGIX
.ent __glce_SpriteParameterfvSGIX
__glce_SpriteParameterfvSGIX:
    # Line 6033
    lw	$v0,5172($zero)
    # Line 6029
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6033
    sd	$v0,24($sp)
    # Line 6029
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6031
    lw	$at,4112($zero)
    # Line 6029
    addiu	$v1,$v1,3224
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6035
    # lw $t9, -16872($gp) # &glSpriteParameterfvSGIX
    # Line 6031
    sd	$at,32($sp)
    # Line 6034
    lw	$at,7132($at)
    # Line 6029
    move	$s8,$a0
    # Line 6035
    jal	glSpriteParameterfvSGIX
    # Line 6034
    sw	$at,5172($zero)
    # Line 6037
    # lw $t9, -16872($gp) # &glSpriteParameterfvSGIX
    # Line 6036
    ld	$a2,32($sp)
    # Line 6037
    ld	$a1,40($sp)
    # Line 6036
    lw	$a2,10916($a2)
    # Line 6037
    move	$a0,$s8
    jal	glSpriteParameterfvSGIX
    # Line 6036
    sw	$a2,5172($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6039
    ld	$gp,16($sp)
    # Line 6038
    ld	$a3,24($sp)
    # Line 6039
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6038
    sw	$a3,5172($zero)
.end __glce_SpriteParameterfvSGIX

# Function: __glce_SpriteParameteriSGIX
# Declared: Line 6044 (Source lines: 6045-6055)
# Address: 0x0da603c0 - 0x0da6043c (Size: 124 bytes, Frame: 48)
.globl __glce_SpriteParameteriSGIX
.ent __glce_SpriteParameteriSGIX
__glce_SpriteParameteriSGIX:
    # Line 6049
    lw	$v0,5176($zero)
    # Line 6045
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6049
    sd	$v0,24($sp)
    # Line 6045
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6047
    lw	$at,4112($zero)
    # Line 6045
    addiu	$v1,$v1,3096
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6051
    # lw $t9, -16868($gp) # &glSpriteParameteriSGIX
    # Line 6047
    sd	$at,32($sp)
    # Line 6050
    lw	$at,7136($at)
    # Line 6045
    move	$s8,$a0
    # Line 6051
    jal	glSpriteParameteriSGIX
    # Line 6050
    sw	$at,5176($zero)
    # Line 6053
    # lw $t9, -16868($gp) # &glSpriteParameteriSGIX
    # Line 6052
    ld	$a2,32($sp)
    # Line 6053
    ld	$a1,40($sp)
    # Line 6052
    lw	$a2,10920($a2)
    # Line 6053
    move	$a0,$s8
    jal	glSpriteParameteriSGIX
    # Line 6052
    sw	$a2,5176($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6055
    ld	$gp,16($sp)
    # Line 6054
    ld	$a3,24($sp)
    # Line 6055
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6054
    sw	$a3,5176($zero)
.end __glce_SpriteParameteriSGIX

# Function: __glce_SpriteParameterivSGIX
# Declared: Line 6060 (Source lines: 6061-6071)
# Address: 0x0da60440 - 0x0da604bc (Size: 124 bytes, Frame: 48)
.globl __glce_SpriteParameterivSGIX
.ent __glce_SpriteParameterivSGIX
__glce_SpriteParameterivSGIX:
    # Line 6065
    lw	$v0,5180($zero)
    # Line 6061
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6065
    sd	$v0,24($sp)
    # Line 6061
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6063
    lw	$at,4112($zero)
    # Line 6061
    addiu	$v1,$v1,2968
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6067
    # lw $t9, -16864($gp) # &glSpriteParameterivSGIX
    # Line 6063
    sd	$at,32($sp)
    # Line 6066
    lw	$at,7140($at)
    # Line 6061
    move	$s8,$a0
    # Line 6067
    jal	glSpriteParameterivSGIX
    # Line 6066
    sw	$at,5180($zero)
    # Line 6069
    # lw $t9, -16864($gp) # &glSpriteParameterivSGIX
    # Line 6068
    ld	$a2,32($sp)
    # Line 6069
    ld	$a1,40($sp)
    # Line 6068
    lw	$a2,10924($a2)
    # Line 6069
    move	$a0,$s8
    jal	glSpriteParameterivSGIX
    # Line 6068
    sw	$a2,5180($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6071
    ld	$gp,16($sp)
    # Line 6070
    ld	$a3,24($sp)
    # Line 6071
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6070
    sw	$a3,5180($zero)
.end __glce_SpriteParameterivSGIX

# Function: __glce_GetTexFilterFuncSGIS
# Declared: Line 6076 (Source lines: 6077-6085)
# Address: 0x0da604c0 - 0x0da6050c (Size: 76 bytes, Frame: 32)
.globl __glce_GetTexFilterFuncSGIS
.ent __glce_GetTexFilterFuncSGIS
__glce_GetTexFilterFuncSGIS:
    # Line 6077
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6081
    lw	$s8,5184($zero)
    # Line 6077
    lui	$v0,0x3
    # Line 6082
    lw	$at,4112($zero)
    # Line 6077
    addiu	$v0,$v0,2840
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6083
    # lw $t9, -16860($gp) # &glGetTexFilterFuncSGIS
    # Line 6077
    sd	$ra,0($sp)
    # Line 6082
    lw	$at,10928($at)
    # Line 6083
    jal	glGetTexFilterFuncSGIS
    # Line 6082
    sw	$at,5184($zero)
    ld	$ra,0($sp)
    # Line 6085
    ld	$gp,16($sp)
    # Line 6084
    sw	$s8,5184($zero)
    # Line 6085
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetTexFilterFuncSGIS

# Function: __glce_TexFilterFuncSGIS
# Declared: Line 6090 (Source lines: 6091-6101)
# Address: 0x0da60510 - 0x0da6059c (Size: 140 bytes, Frame: 192)
.globl __glce_TexFilterFuncSGIS
.ent __glce_TexFilterFuncSGIS
__glce_TexFilterFuncSGIS:
    # Line 6095
    lw	$v0,5188($zero)
    # Line 6091
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 6095
    sd	$v0,24($sp)
    # Line 6091
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6093
    lw	$at,4112($zero)
    # Line 6091
    addiu	$v1,$v1,2760
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6097
    # lw $t9, -16856($gp) # &glTexFilterFuncSGIS
    # Line 6093
    sd	$at,32($sp)
    # Line 6096
    lw	$at,7148($at)
    # Line 6091
    move	$s8,$a0
    # Line 6097
    jal	glTexFilterFuncSGIS
    # Line 6096
    sw	$at,5188($zero)
    # Line 6099
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -16856($gp) # &glTexFilterFuncSGIS
    # Line 6098
    ld	$a4,32($sp)
    # Line 6099
    ld	$a1,56($sp)
    # Line 6098
    lw	$a4,10932($a4)
    # Line 6099
    move	$a0,$s8
    jal	glTexFilterFuncSGIS
    # Line 6098
    sw	$a4,5188($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6101
    ld	$gp,16($sp)
    # Line 6100
    ld	$a5,24($sp)
    # Line 6101
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6100
    sw	$a5,5188($zero)
.end __glce_TexFilterFuncSGIS

# Function: __glce_PointParameterfSGIS
# Declared: Line 6106 (Source lines: 6107-6117)
# Address: 0x0da605a0 - 0x0da60624 (Size: 132 bytes, Frame: 48)
.globl __glce_PointParameterfSGIS
.ent __glce_PointParameterfSGIS
__glce_PointParameterfSGIS:
    # Line 6111
    lw	$v0,5192($zero)
    # Line 6107
    addiu	$sp,$sp,-48
    # Line 6111
    sd	$v0,32($sp)
    # Line 6107
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 6109
    lw	$at,4112($zero)
    # Line 6107
    addiu	$v1,$v1,2616
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 6113
    # lw $t9, -16852($gp) # &glPointParameterfSGIS
    # Line 6109
    sd	$at,40($sp)
    # Line 6112
    lw	$at,7152($at)
    # Line 6107
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 6113
    jal	glPointParameterfSGIS
    # Line 6112
    sw	$at,5192($zero)
    # Line 6115
    # lw $t9, -16852($gp) # &glPointParameterfSGIS
    # Line 6114
    ld	$a1,40($sp)
    lw	$a1,10936($a1)
    # Line 6115
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glPointParameterfSGIS
    # Line 6114
    sw	$a1,5192($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 6117
    ld	$gp,24($sp)
    # Line 6116
    ld	$a2,32($sp)
    # Line 6117
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6116
    sw	$a2,5192($zero)
.end __glce_PointParameterfSGIS

# Function: __glce_PointParameterfvSGIS
# Declared: Line 6122 (Source lines: 6123-6133)
# Address: 0x0da60630 - 0x0da606ac (Size: 124 bytes, Frame: 48)
.globl __glce_PointParameterfvSGIS
.ent __glce_PointParameterfvSGIS
__glce_PointParameterfvSGIS:
    # Line 6127
    lw	$v0,5196($zero)
    # Line 6123
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6127
    sd	$v0,24($sp)
    # Line 6123
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6125
    lw	$at,4112($zero)
    # Line 6123
    addiu	$v1,$v1,2472
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6129
    # lw $t9, -16848($gp) # &glPointParameterfvSGIS
    # Line 6125
    sd	$at,32($sp)
    # Line 6128
    lw	$at,7156($at)
    # Line 6123
    move	$s8,$a0
    # Line 6129
    jal	glPointParameterfvSGIS
    # Line 6128
    sw	$at,5196($zero)
    # Line 6131
    # lw $t9, -16848($gp) # &glPointParameterfvSGIS
    # Line 6130
    ld	$a2,32($sp)
    # Line 6131
    ld	$a1,40($sp)
    # Line 6130
    lw	$a2,10940($a2)
    # Line 6131
    move	$a0,$s8
    jal	glPointParameterfvSGIS
    # Line 6130
    sw	$a2,5196($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6133
    ld	$gp,16($sp)
    # Line 6132
    ld	$a3,24($sp)
    # Line 6133
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6132
    sw	$a3,5196($zero)
.end __glce_PointParameterfvSGIS

# Function: __glce_FogFuncSGIS
# Declared: Line 6138 (Source lines: 6139-6149)
# Address: 0x0da606b0 - 0x0da6072c (Size: 124 bytes, Frame: 48)
.globl __glce_FogFuncSGIS
.ent __glce_FogFuncSGIS
__glce_FogFuncSGIS:
    # Line 6143
    lw	$v0,5200($zero)
    # Line 6139
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6143
    sd	$v0,24($sp)
    # Line 6139
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6141
    lw	$at,4112($zero)
    # Line 6139
    addiu	$v1,$v1,2344
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6145
    # lw $t9, -16844($gp) # &glFogFuncSGIS
    # Line 6141
    sd	$at,32($sp)
    # Line 6144
    lw	$at,7160($at)
    # Line 6139
    move	$s8,$a0
    # Line 6145
    jal	glFogFuncSGIS
    # Line 6144
    sw	$at,5200($zero)
    # Line 6147
    # lw $t9, -16844($gp) # &glFogFuncSGIS
    # Line 6146
    ld	$a2,32($sp)
    # Line 6147
    ld	$a1,40($sp)
    # Line 6146
    lw	$a2,10944($a2)
    # Line 6147
    move	$a0,$s8
    jal	glFogFuncSGIS
    # Line 6146
    sw	$a2,5200($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6149
    ld	$gp,16($sp)
    # Line 6148
    ld	$a3,24($sp)
    # Line 6149
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6148
    sw	$a3,5200($zero)
.end __glce_FogFuncSGIS

# Function: __glce_GetInstrumentsSGIX
# Declared: Line 6154 (Source lines: 6155-6164)
# Address: 0x0da60730 - 0x0da6077c (Size: 76 bytes, Frame: 32)
.globl __glce_GetInstrumentsSGIX
.ent __glce_GetInstrumentsSGIX
__glce_GetInstrumentsSGIX:
    # Line 6155
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6160
    lw	$s8,5204($zero)
    # Line 6155
    lui	$v0,0x3
    # Line 6161
    lw	$at,4112($zero)
    # Line 6155
    addiu	$v0,$v0,2216
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6162
    # lw $t9, -16840($gp) # &glGetInstrumentsSGIX
    # Line 6155
    sd	$ra,0($sp)
    # Line 6161
    lw	$at,10948($at)
    # Line 6162
    jal	glGetInstrumentsSGIX
    # Line 6161
    sw	$at,5204($zero)
    ld	$ra,0($sp)
    # Line 6164
    ld	$gp,16($sp)
    # Line 6163
    sw	$s8,5204($zero)
    # Line 6164
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetInstrumentsSGIX

# Function: __glce_InstrumentsBufferSGIX
# Declared: Line 6170 (Source lines: 6171-6179)
# Address: 0x0da60780 - 0x0da607cc (Size: 76 bytes, Frame: 32)
.globl __glce_InstrumentsBufferSGIX
.ent __glce_InstrumentsBufferSGIX
__glce_InstrumentsBufferSGIX:
    # Line 6171
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6175
    lw	$s8,5208($zero)
    # Line 6171
    lui	$v0,0x3
    # Line 6176
    lw	$at,4112($zero)
    # Line 6171
    addiu	$v0,$v0,2136
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6177
    # lw $t9, -16836($gp) # &glInstrumentsBufferSGIX
    # Line 6171
    sd	$ra,0($sp)
    # Line 6176
    lw	$at,10952($at)
    # Line 6177
    jal	glInstrumentsBufferSGIX
    # Line 6176
    sw	$at,5208($zero)
    ld	$ra,0($sp)
    # Line 6179
    ld	$gp,16($sp)
    # Line 6178
    sw	$s8,5208($zero)
    # Line 6179
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_InstrumentsBufferSGIX

# Function: __glce_PollInstrumentsSGIX
# Declared: Line 6184 (Source lines: 6185-6194)
# Address: 0x0da607d0 - 0x0da6081c (Size: 76 bytes, Frame: 32)
.globl __glce_PollInstrumentsSGIX
.ent __glce_PollInstrumentsSGIX
__glce_PollInstrumentsSGIX:
    # Line 6185
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6190
    lw	$s8,5212($zero)
    # Line 6185
    lui	$v0,0x3
    # Line 6191
    lw	$at,4112($zero)
    # Line 6185
    addiu	$v0,$v0,2056
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6192
    # lw $t9, -16832($gp) # &glPollInstrumentsSGIX
    # Line 6185
    sd	$ra,0($sp)
    # Line 6191
    lw	$at,10956($at)
    # Line 6192
    jal	glPollInstrumentsSGIX
    # Line 6191
    sw	$at,5212($zero)
    ld	$ra,0($sp)
    # Line 6194
    ld	$gp,16($sp)
    # Line 6193
    sw	$s8,5212($zero)
    # Line 6194
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PollInstrumentsSGIX

# Function: __glce_ReadInstrumentsSGIX
# Declared: Line 6200 (Source lines: 6201-6211)
# Address: 0x0da60820 - 0x0da60894 (Size: 116 bytes, Frame: 48)
.globl __glce_ReadInstrumentsSGIX
.ent __glce_ReadInstrumentsSGIX
__glce_ReadInstrumentsSGIX:
    # Line 6205
    lw	$v0,5216($zero)
    # Line 6201
    addiu	$sp,$sp,-48
    # Line 6205
    sd	$v0,24($sp)
    # Line 6201
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6203
    lw	$at,4112($zero)
    # Line 6201
    addiu	$v1,$v1,1976
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6207
    # lw $t9, -16828($gp) # &glReadInstrumentsSGIX
    # Line 6203
    sd	$at,32($sp)
    # Line 6206
    lw	$at,7176($at)
    # Line 6201
    move	$s8,$a0
    # Line 6207
    jal	glReadInstrumentsSGIX
    # Line 6206
    sw	$at,5216($zero)
    # Line 6209
    # lw $t9, -16828($gp) # &glReadInstrumentsSGIX
    # Line 6208
    ld	$a1,32($sp)
    lw	$a1,10960($a1)
    # Line 6209
    move	$a0,$s8
    jal	glReadInstrumentsSGIX
    # Line 6208
    sw	$a1,5216($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6211
    ld	$gp,16($sp)
    # Line 6210
    ld	$a2,24($sp)
    # Line 6211
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6210
    sw	$a2,5216($zero)
.end __glce_ReadInstrumentsSGIX

# Function: __glce_StartInstrumentsSGIX
# Declared: Line 6216 (Source lines: 6217-6227)
# Address: 0x0da608a0 - 0x0da60904 (Size: 100 bytes, Frame: 32)
.globl __glce_StartInstrumentsSGIX
.ent __glce_StartInstrumentsSGIX
__glce_StartInstrumentsSGIX:
    # Line 6221
    lw	$v0,5220($zero)
    # Line 6217
    addiu	$sp,$sp,-32
    # Line 6221
    sd	$v0,24($sp)
    # Line 6217
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6219
    lw	$s8,4112($zero)
    # Line 6217
    addiu	$v1,$v1,1848
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6223
    # lw $t9, -16824($gp) # &glStartInstrumentsSGIX
    # Line 6217
    sd	$ra,0($sp)
    # Line 6222
    lw	$at,7180($s8)
    # Line 6223
    jal	glStartInstrumentsSGIX
    # Line 6222
    sw	$at,5220($zero)
    # Line 6225
    # lw $t9, -16824($gp) # &glStartInstrumentsSGIX
    # Line 6224
    lw	$a0,10964($s8)
    # Line 6225
    jal	glStartInstrumentsSGIX
    # Line 6224
    sw	$a0,5220($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6227
    ld	$gp,16($sp)
    # Line 6226
    ld	$a1,24($sp)
    # Line 6227
    addiu	$sp,$sp,32
    jr	$ra
    # Line 6226
    sw	$a1,5220($zero)
.end __glce_StartInstrumentsSGIX

# Function: __glce_StopInstrumentsSGIX
# Declared: Line 6232 (Source lines: 6233-6243)
# Address: 0x0da60910 - 0x0da60984 (Size: 116 bytes, Frame: 48)
.globl __glce_StopInstrumentsSGIX
.ent __glce_StopInstrumentsSGIX
__glce_StopInstrumentsSGIX:
    # Line 6237
    lw	$v0,5224($zero)
    # Line 6233
    addiu	$sp,$sp,-48
    # Line 6237
    sd	$v0,24($sp)
    # Line 6233
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6235
    lw	$at,4112($zero)
    # Line 6233
    addiu	$v1,$v1,1736
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6239
    # lw $t9, -16820($gp) # &glStopInstrumentsSGIX
    # Line 6235
    sd	$at,32($sp)
    # Line 6238
    lw	$at,7184($at)
    # Line 6233
    move	$s8,$a0
    # Line 6239
    jal	glStopInstrumentsSGIX
    # Line 6238
    sw	$at,5224($zero)
    # Line 6241
    # lw $t9, -16820($gp) # &glStopInstrumentsSGIX
    # Line 6240
    ld	$a1,32($sp)
    lw	$a1,10968($a1)
    # Line 6241
    move	$a0,$s8
    jal	glStopInstrumentsSGIX
    # Line 6240
    sw	$a1,5224($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6243
    ld	$gp,16($sp)
    # Line 6242
    ld	$a2,24($sp)
    # Line 6243
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6242
    sw	$a2,5224($zero)
.end __glce_StopInstrumentsSGIX

# Function: __glce_FlushRasterSGIX
# Declared: Line 6248 (Source lines: 6249-6257)
# Address: 0x0da60990 - 0x0da609dc (Size: 76 bytes, Frame: 32)
.globl __glce_FlushRasterSGIX
.ent __glce_FlushRasterSGIX
__glce_FlushRasterSGIX:
    # Line 6249
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6253
    lw	$s8,5228($zero)
    # Line 6249
    lui	$v0,0x3
    # Line 6254
    lw	$at,4112($zero)
    # Line 6249
    addiu	$v0,$v0,1608
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6255
    # lw $t9, -16816($gp) # &glFlushRasterSGIX
    # Line 6249
    sd	$ra,0($sp)
    # Line 6254
    lw	$at,10972($at)
    # Line 6255
    jal	glFlushRasterSGIX
    # Line 6254
    sw	$at,5228($zero)
    ld	$ra,0($sp)
    # Line 6257
    ld	$gp,16($sp)
    # Line 6256
    sw	$s8,5228($zero)
    # Line 6257
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_FlushRasterSGIX

# Function: __glce_ReferencePlaneSGIX
# Declared: Line 6262 (Source lines: 6263-6273)
# Address: 0x0da609e0 - 0x0da60a54 (Size: 116 bytes, Frame: 48)
.globl __glce_ReferencePlaneSGIX
.ent __glce_ReferencePlaneSGIX
__glce_ReferencePlaneSGIX:
    # Line 6267
    lw	$v0,5232($zero)
    # Line 6263
    addiu	$sp,$sp,-48
    # Line 6267
    sd	$v0,24($sp)
    # Line 6263
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6265
    lw	$at,4112($zero)
    # Line 6263
    addiu	$v1,$v1,1528
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6269
    # lw $t9, -16812($gp) # &glReferencePlaneSGIX
    # Line 6265
    sd	$at,32($sp)
    # Line 6268
    lw	$at,7192($at)
    # Line 6263
    move	$s8,$a0
    # Line 6269
    jal	glReferencePlaneSGIX
    # Line 6268
    sw	$at,5232($zero)
    # Line 6271
    # lw $t9, -16812($gp) # &glReferencePlaneSGIX
    # Line 6270
    ld	$a1,32($sp)
    lw	$a1,10976($a1)
    # Line 6271
    move	$a0,$s8
    jal	glReferencePlaneSGIX
    # Line 6270
    sw	$a1,5232($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6273
    ld	$gp,16($sp)
    # Line 6272
    ld	$a2,24($sp)
    # Line 6273
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6272
    sw	$a2,5232($zero)
.end __glce_ReferencePlaneSGIX

# Function: __glce_FrameZoomSGIX
# Declared: Line 6278 (Source lines: 6279-6289)
# Address: 0x0da60a60 - 0x0da60ad4 (Size: 116 bytes, Frame: 48)
.globl __glce_FrameZoomSGIX
.ent __glce_FrameZoomSGIX
__glce_FrameZoomSGIX:
    # Line 6283
    lw	$v0,5236($zero)
    # Line 6279
    addiu	$sp,$sp,-48
    # Line 6283
    sd	$v0,24($sp)
    # Line 6279
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6281
    lw	$at,4112($zero)
    # Line 6279
    addiu	$v1,$v1,1400
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6285
    # lw $t9, -16808($gp) # &glFrameZoomSGIX
    # Line 6281
    sd	$at,32($sp)
    # Line 6284
    lw	$at,7196($at)
    # Line 6279
    move	$s8,$a0
    # Line 6285
    jal	glFrameZoomSGIX
    # Line 6284
    sw	$at,5236($zero)
    # Line 6287
    # lw $t9, -16808($gp) # &glFrameZoomSGIX
    # Line 6286
    ld	$a1,32($sp)
    lw	$a1,10980($a1)
    # Line 6287
    move	$a0,$s8
    jal	glFrameZoomSGIX
    # Line 6286
    sw	$a1,5236($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6289
    ld	$gp,16($sp)
    # Line 6288
    ld	$a2,24($sp)
    # Line 6289
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6288
    sw	$a2,5236($zero)
.end __glce_FrameZoomSGIX

# Function: __glce_IglooInterfaceSGIX
# Declared: Line 6294 (Source lines: 6295-6303)
# Address: 0x0da60ae0 - 0x0da60b2c (Size: 76 bytes, Frame: 32)
.globl __glce_IglooInterfaceSGIX
.ent __glce_IglooInterfaceSGIX
__glce_IglooInterfaceSGIX:
    # Line 6295
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6299
    lw	$s8,5240($zero)
    # Line 6295
    lui	$v0,0x3
    # Line 6300
    lw	$at,4112($zero)
    # Line 6295
    addiu	$v0,$v0,1272
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6301
    # lw $t9, -16804($gp) # &glIglooInterfaceSGIX
    # Line 6295
    sd	$ra,0($sp)
    # Line 6300
    lw	$at,10984($at)
    # Line 6301
    jal	glIglooInterfaceSGIX
    # Line 6300
    sw	$at,5240($zero)
    ld	$ra,0($sp)
    # Line 6303
    ld	$gp,16($sp)
    # Line 6302
    sw	$s8,5240($zero)
    # Line 6303
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IglooInterfaceSGIX

# Function: __glce_DeformationMap3dSGIX
# Declared: Line 6308 (Source lines: 6309-6319)
# Address: 0x0da60b30 - 0x0da60c4c (Size: 284 bytes, Frame: 208)
.globl __glce_DeformationMap3dSGIX
.ent __glce_DeformationMap3dSGIX
__glce_DeformationMap3dSGIX:
    # Line 6309
    addiu	$sp,$sp,-208
    sdc1	$f18,56($sp)
    sdc1	$f17,64($sp)
    sd	$a7,120($sp)
    sd	$a4,128($sp)
    sdc1	$f14,72($sp)
    sd	$ra,80($sp)
    sd	$s1,88($sp)
    sdc1	$f22,48($sp)
    sd	$s5,96($sp)
    sd	$s0,104($sp)
    # Line 6313
    lw	$s0,5244($zero)
    # Line 6311
    lw	$a5,4112($zero)
    sd	$a5,112($sp)
    # Line 6314
    lw	$a5,7204($a5)
    sw	$a5,5244($zero)
    # Line 6315
    lw	$at,212($sp)
    lw	$v1,236($sp)
    lw	$a1,244($sp)
    lw	$a2,252($sp)
    ldc1	$f0,216($sp)
    ldc1	$f1,224($sp)
    sw	$a2,44($sp)
    sw	$a1,36($sp)
    # Line 6309
    lui	$v0,0x3
    # Line 6315
    sw	$v1,28($sp)
    # Line 6309
    addiu	$v0,$v0,1192
    sd	$gp,136($sp)
    addu	$gp,$t9,$v0
    # Line 6315
    # lw $t9, -16800($gp) # &glDeformationMap3dSGIX
    sw	$at,4($sp)
    # Line 6309
    move	$s5,$a3
    # Line 6315
    sdc1	$f1,16($sp)
    # Line 6309
    mov.d	$f22,$f13
    move	$s1,$a0
    # Line 6315
    jal	glDeformationMap3dSGIX
    sdc1	$f0,8($sp)
    # Line 6317
    ldc1	$f18,56($sp)
    ldc1	$f17,64($sp)
    ld	$a4,128($sp)
    ldc1	$f14,72($sp)
    # Line 6316
    ld	$t2,112($sp)
    # Line 6317
    # lw $t9, -16800($gp) # &glDeformationMap3dSGIX
    # Line 6316
    lw	$t2,10988($t2)
    sw	$t2,5244($zero)
    # Line 6317
    lw	$a6,212($sp)
    lw	$a7,236($sp)
    lw	$t0,244($sp)
    lw	$t1,252($sp)
    ldc1	$f2,216($sp)
    ldc1	$f3,224($sp)
    sw	$t1,44($sp)
    sw	$t0,36($sp)
    sw	$a7,28($sp)
    ld	$a7,120($sp)
    sw	$a6,4($sp)
    move	$a3,$s5
    sdc1	$f3,16($sp)
    mov.d	$f13,$f22
    move	$a0,$s1
    jal	glDeformationMap3dSGIX
    sdc1	$f2,8($sp)
    ld	$s1,88($sp)
    ld	$s5,96($sp)
    ldc1	$f22,48($sp)
    ld	$ra,80($sp)
    # Line 6319
    ld	$gp,136($sp)
    # Line 6318
    sw	$s0,5244($zero)
    # Line 6319
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glce_DeformationMap3dSGIX

# Function: __glce_DeformationMap3fSGIX
# Declared: Line 6324 (Source lines: 6325-6335)
# Address: 0x0da60c50 - 0x0da60d6c (Size: 284 bytes, Frame: 208)
.globl __glce_DeformationMap3fSGIX
.ent __glce_DeformationMap3fSGIX
__glce_DeformationMap3fSGIX:
    # Line 6325
    addiu	$sp,$sp,-208
    sdc1	$f18,56($sp)
    sdc1	$f17,64($sp)
    sd	$a7,120($sp)
    sd	$a4,128($sp)
    sdc1	$f14,72($sp)
    sd	$ra,80($sp)
    sd	$s1,88($sp)
    sdc1	$f22,48($sp)
    sd	$s5,96($sp)
    sd	$s0,104($sp)
    # Line 6329
    lw	$s0,5248($zero)
    # Line 6327
    lw	$a5,4112($zero)
    sd	$a5,112($sp)
    # Line 6330
    lw	$a5,7208($a5)
    sw	$a5,5248($zero)
    # Line 6331
    lw	$at,212($sp)
    lw	$v1,236($sp)
    lw	$a1,244($sp)
    lw	$a2,252($sp)
    lwc1	$f0,216($sp)
    lwc1	$f1,224($sp)
    sw	$a2,44($sp)
    sw	$a1,36($sp)
    # Line 6325
    lui	$v0,0x3
    # Line 6331
    sw	$v1,28($sp)
    # Line 6325
    addiu	$v0,$v0,904
    sd	$gp,136($sp)
    addu	$gp,$t9,$v0
    # Line 6331
    # lw $t9, -16796($gp) # &glDeformationMap3fSGIX
    sw	$at,4($sp)
    # Line 6325
    move	$s5,$a3
    # Line 6331
    swc1	$f1,16($sp)
    # Line 6325
    mov.s	$f22,$f13
    move	$s1,$a0
    # Line 6331
    jal	glDeformationMap3fSGIX
    swc1	$f0,8($sp)
    # Line 6333
    ldc1	$f18,56($sp)
    ldc1	$f17,64($sp)
    ld	$a4,128($sp)
    ldc1	$f14,72($sp)
    # Line 6332
    ld	$t2,112($sp)
    # Line 6333
    # lw $t9, -16796($gp) # &glDeformationMap3fSGIX
    # Line 6332
    lw	$t2,10992($t2)
    sw	$t2,5248($zero)
    # Line 6333
    lw	$a6,212($sp)
    lw	$a7,236($sp)
    lw	$t0,244($sp)
    lw	$t1,252($sp)
    lwc1	$f2,216($sp)
    lwc1	$f3,224($sp)
    sw	$t1,44($sp)
    sw	$t0,36($sp)
    sw	$a7,28($sp)
    ld	$a7,120($sp)
    sw	$a6,4($sp)
    move	$a3,$s5
    swc1	$f3,16($sp)
    mov.s	$f13,$f22
    move	$a0,$s1
    jal	glDeformationMap3fSGIX
    swc1	$f2,8($sp)
    ld	$s1,88($sp)
    ld	$s5,96($sp)
    ldc1	$f22,48($sp)
    ld	$ra,80($sp)
    # Line 6335
    ld	$gp,136($sp)
    # Line 6334
    sw	$s0,5248($zero)
    # Line 6335
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glce_DeformationMap3fSGIX

# Function: __glce_DeformSGIX
# Declared: Line 6340 (Source lines: 6341-6351)
# Address: 0x0da60d70 - 0x0da60de4 (Size: 116 bytes, Frame: 48)
.globl __glce_DeformSGIX
.ent __glce_DeformSGIX
__glce_DeformSGIX:
    # Line 6345
    lw	$v0,5252($zero)
    # Line 6341
    addiu	$sp,$sp,-48
    # Line 6345
    sd	$v0,24($sp)
    # Line 6341
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6343
    lw	$at,4112($zero)
    # Line 6341
    addiu	$v1,$v1,616
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6347
    # lw $t9, -16792($gp) # &glDeformSGIX
    # Line 6343
    sd	$at,32($sp)
    # Line 6346
    lw	$at,7212($at)
    # Line 6341
    move	$s8,$a0
    # Line 6347
    jal	glDeformSGIX
    # Line 6346
    sw	$at,5252($zero)
    # Line 6349
    # lw $t9, -16792($gp) # &glDeformSGIX
    # Line 6348
    ld	$a1,32($sp)
    lw	$a1,10996($a1)
    # Line 6349
    move	$a0,$s8
    jal	glDeformSGIX
    # Line 6348
    sw	$a1,5252($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6351
    ld	$gp,16($sp)
    # Line 6350
    ld	$a2,24($sp)
    # Line 6351
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6350
    sw	$a2,5252($zero)
.end __glce_DeformSGIX

# Function: __glce_LoadIdentityDeformationMapSGIX
# Declared: Line 6356 (Source lines: 6357-6367)
# Address: 0x0da60df0 - 0x0da60e64 (Size: 116 bytes, Frame: 48)
.globl __glce_LoadIdentityDeformationMapSGIX
.ent __glce_LoadIdentityDeformationMapSGIX
__glce_LoadIdentityDeformationMapSGIX:
    # Line 6361
    lw	$v0,5256($zero)
    # Line 6357
    addiu	$sp,$sp,-48
    # Line 6361
    sd	$v0,24($sp)
    # Line 6357
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6359
    lw	$at,4112($zero)
    # Line 6357
    addiu	$v1,$v1,488
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6363
    # lw $t9, -16788($gp) # &glLoadIdentityDeformationMapSGIX
    # Line 6359
    sd	$at,32($sp)
    # Line 6362
    lw	$at,7216($at)
    # Line 6357
    move	$s8,$a0
    # Line 6363
    jal	glLoadIdentityDeformationMapSGIX
    # Line 6362
    sw	$at,5256($zero)
    # Line 6365
    # lw $t9, -16788($gp) # &glLoadIdentityDeformationMapSGIX
    # Line 6364
    ld	$a1,32($sp)
    lw	$a1,11000($a1)
    # Line 6365
    move	$a0,$s8
    jal	glLoadIdentityDeformationMapSGIX
    # Line 6364
    sw	$a1,5256($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6367
    ld	$gp,16($sp)
    # Line 6366
    ld	$a2,24($sp)
    # Line 6367
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6366
    sw	$a2,5256($zero)
.end __glce_LoadIdentityDeformationMapSGIX

# Function: __glce_GetListParameterfvSGIX
# Declared: Line 6372 (Source lines: 6373-6381)
# Address: 0x0da60e70 - 0x0da60ebc (Size: 76 bytes, Frame: 32)
.globl __glce_GetListParameterfvSGIX
.ent __glce_GetListParameterfvSGIX
__glce_GetListParameterfvSGIX:
    # Line 6373
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6377
    lw	$s8,5260($zero)
    # Line 6373
    lui	$v0,0x3
    # Line 6378
    lw	$at,4112($zero)
    # Line 6373
    addiu	$v0,$v0,360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6379
    # lw $t9, -16784($gp) # &glGetListParameterfvSGIX
    # Line 6373
    sd	$ra,0($sp)
    # Line 6378
    lw	$at,11004($at)
    # Line 6379
    jal	glGetListParameterfvSGIX
    # Line 6378
    sw	$at,5260($zero)
    ld	$ra,0($sp)
    # Line 6381
    ld	$gp,16($sp)
    # Line 6380
    sw	$s8,5260($zero)
    # Line 6381
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetListParameterfvSGIX

# Function: __glce_GetListParameterivSGIX
# Declared: Line 6386 (Source lines: 6387-6395)
# Address: 0x0da60ec0 - 0x0da60f0c (Size: 76 bytes, Frame: 32)
.globl __glce_GetListParameterivSGIX
.ent __glce_GetListParameterivSGIX
__glce_GetListParameterivSGIX:
    # Line 6387
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6391
    lw	$s8,5264($zero)
    # Line 6387
    lui	$v0,0x3
    # Line 6392
    lw	$at,4112($zero)
    # Line 6387
    addiu	$v0,$v0,280
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6393
    # lw $t9, -16780($gp) # &glGetListParameterivSGIX
    # Line 6387
    sd	$ra,0($sp)
    # Line 6392
    lw	$at,11008($at)
    # Line 6393
    jal	glGetListParameterivSGIX
    # Line 6392
    sw	$at,5264($zero)
    ld	$ra,0($sp)
    # Line 6395
    ld	$gp,16($sp)
    # Line 6394
    sw	$s8,5264($zero)
    # Line 6395
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetListParameterivSGIX

# Function: __glce_ListParameterfSGIX
# Declared: Line 6400 (Source lines: 6401-6409)
# Address: 0x0da60f10 - 0x0da60f5c (Size: 76 bytes, Frame: 32)
.globl __glce_ListParameterfSGIX
.ent __glce_ListParameterfSGIX
__glce_ListParameterfSGIX:
    # Line 6401
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6405
    lw	$s8,5268($zero)
    # Line 6401
    lui	$v0,0x3
    # Line 6406
    lw	$at,4112($zero)
    # Line 6401
    addiu	$v0,$v0,200
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6407
    # lw $t9, -16776($gp) # &glListParameterfSGIX
    # Line 6401
    sd	$ra,0($sp)
    # Line 6406
    lw	$at,11012($at)
    # Line 6407
    jal	glListParameterfSGIX
    # Line 6406
    sw	$at,5268($zero)
    ld	$ra,0($sp)
    # Line 6409
    ld	$gp,16($sp)
    # Line 6408
    sw	$s8,5268($zero)
    # Line 6409
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ListParameterfSGIX

# Function: __glce_ListParameterfvSGIX
# Declared: Line 6414 (Source lines: 6415-6423)
# Address: 0x0da60f60 - 0x0da60fac (Size: 76 bytes, Frame: 32)
.globl __glce_ListParameterfvSGIX
.ent __glce_ListParameterfvSGIX
__glce_ListParameterfvSGIX:
    # Line 6415
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6419
    lw	$s8,5272($zero)
    # Line 6415
    lui	$v0,0x3
    # Line 6420
    lw	$at,4112($zero)
    # Line 6415
    addiu	$v0,$v0,120
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6421
    # lw $t9, -16772($gp) # &glListParameterfvSGIX
    # Line 6415
    sd	$ra,0($sp)
    # Line 6420
    lw	$at,11016($at)
    # Line 6421
    jal	glListParameterfvSGIX
    # Line 6420
    sw	$at,5272($zero)
    ld	$ra,0($sp)
    # Line 6423
    ld	$gp,16($sp)
    # Line 6422
    sw	$s8,5272($zero)
    # Line 6423
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ListParameterfvSGIX

# Function: __glce_ListParameteriSGIX
# Declared: Line 6428 (Source lines: 6429-6437)
# Address: 0x0da60fb0 - 0x0da60ffc (Size: 76 bytes, Frame: 32)
.globl __glce_ListParameteriSGIX
.ent __glce_ListParameteriSGIX
__glce_ListParameteriSGIX:
    # Line 6429
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6433
    lw	$s8,5276($zero)
    # Line 6429
    lui	$v0,0x3
    # Line 6434
    lw	$at,4112($zero)
    # Line 6429
    addiu	$v0,$v0,40
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6435
    # lw $t9, -16768($gp) # &glListParameteriSGIX
    # Line 6429
    sd	$ra,0($sp)
    # Line 6434
    lw	$at,11020($at)
    # Line 6435
    jal	glListParameteriSGIX
    # Line 6434
    sw	$at,5276($zero)
    ld	$ra,0($sp)
    # Line 6437
    ld	$gp,16($sp)
    # Line 6436
    sw	$s8,5276($zero)
    # Line 6437
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ListParameteriSGIX

# Function: __glce_ListParameterivSGIX
# Declared: Line 6442 (Source lines: 6443-6451)
# Address: 0x0da61000 - 0x0da6104c (Size: 76 bytes, Frame: 32)
.globl __glce_ListParameterivSGIX
.ent __glce_ListParameterivSGIX
__glce_ListParameterivSGIX:
    # Line 6443
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6447
    lw	$s8,5280($zero)
    # Line 6443
    lui	$v0,0x3
    # Line 6448
    lw	$at,4112($zero)
    # Line 6443
    addiu	$v0,$v0,-40
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6449
    # lw $t9, -16764($gp) # &glListParameterivSGIX
    # Line 6443
    sd	$ra,0($sp)
    # Line 6448
    lw	$at,11024($at)
    # Line 6449
    jal	glListParameterivSGIX
    # Line 6448
    sw	$at,5280($zero)
    ld	$ra,0($sp)
    # Line 6451
    ld	$gp,16($sp)
    # Line 6450
    sw	$s8,5280($zero)
    # Line 6451
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_ListParameterivSGIX

# Function: __glce_ColorSubTable
# Declared: Line 6456 (Source lines: 6457-6467)
# Address: 0x0da61050 - 0x0da610ec (Size: 156 bytes, Frame: 208)
.globl __glce_ColorSubTable
.ent __glce_ColorSubTable
__glce_ColorSubTable:
    # Line 6461
    lw	$v0,5284($zero)
    # Line 6457
    addiu	$sp,$sp,-80
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    # Line 6461
    sd	$v0,24($sp)
    # Line 6457
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6459
    lw	$at,4112($zero)
    # Line 6457
    addiu	$v1,$v1,-120
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6463
    # lw $t9, -16760($gp) # &glColorSubTable
    # Line 6459
    sd	$at,32($sp)
    # Line 6462
    lw	$at,7244($at)
    # Line 6457
    move	$s8,$a0
    # Line 6463
    jal	glColorSubTable
    # Line 6462
    sw	$at,5284($zero)
    # Line 6465
    ld	$a5,40($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # lw $t9, -16760($gp) # &glColorSubTable
    # Line 6464
    ld	$a6,32($sp)
    # Line 6465
    ld	$a1,72($sp)
    # Line 6464
    lw	$a6,11028($a6)
    # Line 6465
    move	$a0,$s8
    jal	glColorSubTable
    # Line 6464
    sw	$a6,5284($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6467
    ld	$gp,16($sp)
    # Line 6466
    ld	$a7,24($sp)
    # Line 6467
    addiu	$sp,$sp,80
    jr	$ra
    # Line 6466
    sw	$a7,5284($zero)
.end __glce_ColorSubTable

# Function: __glce_CopyColorSubTable
# Declared: Line 6472 (Source lines: 6473-6483)
# Address: 0x0da610f0 - 0x0da61184 (Size: 148 bytes, Frame: 208)
.globl __glce_CopyColorSubTable
.ent __glce_CopyColorSubTable
__glce_CopyColorSubTable:
    # Line 6477
    lw	$v0,5288($zero)
    # Line 6473
    addiu	$sp,$sp,-80
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    # Line 6477
    sd	$v0,24($sp)
    # Line 6473
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6475
    lw	$at,4112($zero)
    # Line 6473
    addiu	$v1,$v1,-280
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6479
    # lw $t9, -16756($gp) # &glCopyColorSubTable
    # Line 6475
    sd	$at,32($sp)
    # Line 6478
    lw	$at,7248($at)
    # Line 6473
    move	$s8,$a0
    # Line 6479
    jal	glCopyColorSubTable
    # Line 6478
    sw	$at,5288($zero)
    # Line 6481
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -16756($gp) # &glCopyColorSubTable
    # Line 6480
    ld	$a5,32($sp)
    # Line 6481
    ld	$a1,64($sp)
    # Line 6480
    lw	$a5,11032($a5)
    # Line 6481
    move	$a0,$s8
    jal	glCopyColorSubTable
    # Line 6480
    sw	$a5,5288($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6483
    ld	$gp,16($sp)
    # Line 6482
    ld	$a6,24($sp)
    # Line 6483
    addiu	$sp,$sp,80
    jr	$ra
    # Line 6482
    sw	$a6,5288($zero)
.end __glce_CopyColorSubTable

# Function: __glce_GetFogFuncSGIS
# Declared: Line 6489 (Source lines: 6490-6498)
# Address: 0x0da61190 - 0x0da611dc (Size: 76 bytes, Frame: 32)
.globl __glce_GetFogFuncSGIS
.ent __glce_GetFogFuncSGIS
__glce_GetFogFuncSGIS:
    # Line 6490
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6494
    lw	$s8,5296($zero)
    # Line 6490
    lui	$v0,0x3
    # Line 6495
    lw	$at,4112($zero)
    # Line 6490
    addiu	$v0,$v0,-440
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6496
    # lw $t9, -16748($gp) # &glGetFogFuncSGIS
    # Line 6490
    sd	$ra,0($sp)
    # Line 6495
    lw	$at,11040($at)
    # Line 6496
    jal	glGetFogFuncSGIS
    # Line 6495
    sw	$at,5296($zero)
    ld	$ra,0($sp)
    # Line 6498
    ld	$gp,16($sp)
    # Line 6497
    sw	$s8,5296($zero)
    # Line 6498
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetFogFuncSGIS

# Function: __glce_PixelTexGenParameteriSGIS
# Declared: Line 6503 (Source lines: 6504-6514)
# Address: 0x0da611e0 - 0x0da6125c (Size: 124 bytes, Frame: 48)
.globl __glce_PixelTexGenParameteriSGIS
.ent __glce_PixelTexGenParameteriSGIS
__glce_PixelTexGenParameteriSGIS:
    # Line 6508
    lw	$v0,5300($zero)
    # Line 6504
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6508
    sd	$v0,24($sp)
    # Line 6504
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6506
    lw	$at,4112($zero)
    # Line 6504
    addiu	$v1,$v1,-520
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6510
    # lw $t9, -16744($gp) # &glPixelTexGenParameteriSGIS
    # Line 6506
    sd	$at,32($sp)
    # Line 6509
    lw	$at,7260($at)
    # Line 6504
    move	$s8,$a0
    # Line 6510
    jal	glPixelTexGenParameteriSGIS
    # Line 6509
    sw	$at,5300($zero)
    # Line 6512
    # lw $t9, -16744($gp) # &glPixelTexGenParameteriSGIS
    # Line 6511
    ld	$a2,32($sp)
    # Line 6512
    ld	$a1,40($sp)
    # Line 6511
    lw	$a2,11044($a2)
    # Line 6512
    move	$a0,$s8
    jal	glPixelTexGenParameteriSGIS
    # Line 6511
    sw	$a2,5300($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6514
    ld	$gp,16($sp)
    # Line 6513
    ld	$a3,24($sp)
    # Line 6514
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6513
    sw	$a3,5300($zero)
.end __glce_PixelTexGenParameteriSGIS

# Function: __glce_PixelTexGenParameterivSGIS
# Declared: Line 6519 (Source lines: 6520-6530)
# Address: 0x0da61260 - 0x0da612dc (Size: 124 bytes, Frame: 48)
.globl __glce_PixelTexGenParameterivSGIS
.ent __glce_PixelTexGenParameterivSGIS
__glce_PixelTexGenParameterivSGIS:
    # Line 6524
    lw	$v0,5304($zero)
    # Line 6520
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6524
    sd	$v0,24($sp)
    # Line 6520
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6522
    lw	$at,4112($zero)
    # Line 6520
    addiu	$v1,$v1,-648
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6526
    # lw $t9, -16740($gp) # &glPixelTexGenParameterivSGIS
    # Line 6522
    sd	$at,32($sp)
    # Line 6525
    lw	$at,7264($at)
    # Line 6520
    move	$s8,$a0
    # Line 6526
    jal	glPixelTexGenParameterivSGIS
    # Line 6525
    sw	$at,5304($zero)
    # Line 6528
    # lw $t9, -16740($gp) # &glPixelTexGenParameterivSGIS
    # Line 6527
    ld	$a2,32($sp)
    # Line 6528
    ld	$a1,40($sp)
    # Line 6527
    lw	$a2,11048($a2)
    # Line 6528
    move	$a0,$s8
    jal	glPixelTexGenParameterivSGIS
    # Line 6527
    sw	$a2,5304($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6530
    ld	$gp,16($sp)
    # Line 6529
    ld	$a3,24($sp)
    # Line 6530
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6529
    sw	$a3,5304($zero)
.end __glce_PixelTexGenParameterivSGIS

# Function: __glce_PixelTexGenParameterfSGIS
# Declared: Line 6535 (Source lines: 6536-6546)
# Address: 0x0da612e0 - 0x0da61364 (Size: 132 bytes, Frame: 48)
.globl __glce_PixelTexGenParameterfSGIS
.ent __glce_PixelTexGenParameterfSGIS
__glce_PixelTexGenParameterfSGIS:
    # Line 6540
    lw	$v0,5308($zero)
    # Line 6536
    addiu	$sp,$sp,-48
    # Line 6540
    sd	$v0,32($sp)
    # Line 6536
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 6538
    lw	$at,4112($zero)
    # Line 6536
    addiu	$v1,$v1,-776
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 6542
    # lw $t9, -16736($gp) # &glPixelTexGenParameterfSGIS
    # Line 6538
    sd	$at,40($sp)
    # Line 6541
    lw	$at,7268($at)
    # Line 6536
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 6542
    jal	glPixelTexGenParameterfSGIS
    # Line 6541
    sw	$at,5308($zero)
    # Line 6544
    # lw $t9, -16736($gp) # &glPixelTexGenParameterfSGIS
    # Line 6543
    ld	$a1,40($sp)
    lw	$a1,11052($a1)
    # Line 6544
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glPixelTexGenParameterfSGIS
    # Line 6543
    sw	$a1,5308($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 6546
    ld	$gp,24($sp)
    # Line 6545
    ld	$a2,32($sp)
    # Line 6546
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6545
    sw	$a2,5308($zero)
.end __glce_PixelTexGenParameterfSGIS

# Function: __glce_PixelTexGenParameterfvSGIS
# Declared: Line 6551 (Source lines: 6552-6562)
# Address: 0x0da61370 - 0x0da613ec (Size: 124 bytes, Frame: 48)
.globl __glce_PixelTexGenParameterfvSGIS
.ent __glce_PixelTexGenParameterfvSGIS
__glce_PixelTexGenParameterfvSGIS:
    # Line 6556
    lw	$v0,5312($zero)
    # Line 6552
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6556
    sd	$v0,24($sp)
    # Line 6552
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6554
    lw	$at,4112($zero)
    # Line 6552
    addiu	$v1,$v1,-920
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6558
    # lw $t9, -16732($gp) # &glPixelTexGenParameterfvSGIS
    # Line 6554
    sd	$at,32($sp)
    # Line 6557
    lw	$at,7272($at)
    # Line 6552
    move	$s8,$a0
    # Line 6558
    jal	glPixelTexGenParameterfvSGIS
    # Line 6557
    sw	$at,5312($zero)
    # Line 6560
    # lw $t9, -16732($gp) # &glPixelTexGenParameterfvSGIS
    # Line 6559
    ld	$a2,32($sp)
    # Line 6560
    ld	$a1,40($sp)
    # Line 6559
    lw	$a2,11056($a2)
    # Line 6560
    move	$a0,$s8
    jal	glPixelTexGenParameterfvSGIS
    # Line 6559
    sw	$a2,5312($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6562
    ld	$gp,16($sp)
    # Line 6561
    ld	$a3,24($sp)
    # Line 6562
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6561
    sw	$a3,5312($zero)
.end __glce_PixelTexGenParameterfvSGIS

# Function: __glce_GetPixelTexGenParameterivSGIS
# Declared: Line 6567 (Source lines: 6568-6576)
# Address: 0x0da613f0 - 0x0da6143c (Size: 76 bytes, Frame: 32)
.globl __glce_GetPixelTexGenParameterivSGIS
.ent __glce_GetPixelTexGenParameterivSGIS
__glce_GetPixelTexGenParameterivSGIS:
    # Line 6568
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6572
    lw	$s8,5316($zero)
    # Line 6568
    lui	$v0,0x3
    # Line 6573
    lw	$at,4112($zero)
    # Line 6568
    addiu	$v0,$v0,-1048
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6574
    # lw $t9, -16728($gp) # &glGetPixelTexGenParameterivSGIS
    # Line 6568
    sd	$ra,0($sp)
    # Line 6573
    lw	$at,11060($at)
    # Line 6574
    jal	glGetPixelTexGenParameterivSGIS
    # Line 6573
    sw	$at,5316($zero)
    ld	$ra,0($sp)
    # Line 6576
    ld	$gp,16($sp)
    # Line 6575
    sw	$s8,5316($zero)
    # Line 6576
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPixelTexGenParameterivSGIS

# Function: __glce_GetPixelTexGenParameterfvSGIS
# Declared: Line 6581 (Source lines: 6582-6590)
# Address: 0x0da61440 - 0x0da6148c (Size: 76 bytes, Frame: 32)
.globl __glce_GetPixelTexGenParameterfvSGIS
.ent __glce_GetPixelTexGenParameterfvSGIS
__glce_GetPixelTexGenParameterfvSGIS:
    # Line 6582
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6586
    lw	$s8,5320($zero)
    # Line 6582
    lui	$v0,0x3
    # Line 6587
    lw	$at,4112($zero)
    # Line 6582
    addiu	$v0,$v0,-1128
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6588
    # lw $t9, -16724($gp) # &glGetPixelTexGenParameterfvSGIS
    # Line 6582
    sd	$ra,0($sp)
    # Line 6587
    lw	$at,11064($at)
    # Line 6588
    jal	glGetPixelTexGenParameterfvSGIS
    # Line 6587
    sw	$at,5320($zero)
    ld	$ra,0($sp)
    # Line 6590
    ld	$gp,16($sp)
    # Line 6589
    sw	$s8,5320($zero)
    # Line 6590
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetPixelTexGenParameterfvSGIS

# Function: __glce_AsyncMarkerSGIX
# Declared: Line 6595 (Source lines: 6596-6606)
# Address: 0x0da61490 - 0x0da61504 (Size: 116 bytes, Frame: 48)
.globl __glce_AsyncMarkerSGIX
.ent __glce_AsyncMarkerSGIX
__glce_AsyncMarkerSGIX:
    # Line 6600
    lw	$v0,5324($zero)
    # Line 6596
    addiu	$sp,$sp,-48
    # Line 6600
    sd	$v0,24($sp)
    # Line 6596
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6598
    lw	$at,4112($zero)
    # Line 6596
    addiu	$v1,$v1,-1208
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6602
    # lw $t9, -16720($gp) # &glAsyncMarkerSGIX
    # Line 6598
    sd	$at,32($sp)
    # Line 6601
    lw	$at,7284($at)
    # Line 6596
    move	$s8,$a0
    # Line 6602
    jal	glAsyncMarkerSGIX
    # Line 6601
    sw	$at,5324($zero)
    # Line 6604
    # lw $t9, -16720($gp) # &glAsyncMarkerSGIX
    # Line 6603
    ld	$a1,32($sp)
    lw	$a1,11068($a1)
    # Line 6604
    move	$a0,$s8
    jal	glAsyncMarkerSGIX
    # Line 6603
    sw	$a1,5324($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6606
    ld	$gp,16($sp)
    # Line 6605
    ld	$a2,24($sp)
    # Line 6606
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6605
    sw	$a2,5324($zero)
.end __glce_AsyncMarkerSGIX

# Function: __glce_FinishAsyncSGIX
# Declared: Line 6611 (Source lines: 6612-6621)
# Address: 0x0da61510 - 0x0da6155c (Size: 76 bytes, Frame: 32)
.globl __glce_FinishAsyncSGIX
.ent __glce_FinishAsyncSGIX
__glce_FinishAsyncSGIX:
    # Line 6612
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6617
    lw	$s8,5328($zero)
    # Line 6612
    lui	$v0,0x3
    # Line 6618
    lw	$at,4112($zero)
    # Line 6612
    addiu	$v0,$v0,-1336
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6619
    # lw $t9, -16716($gp) # &glFinishAsyncSGIX
    # Line 6612
    sd	$ra,0($sp)
    # Line 6618
    lw	$at,11072($at)
    # Line 6619
    jal	glFinishAsyncSGIX
    # Line 6618
    sw	$at,5328($zero)
    ld	$ra,0($sp)
    # Line 6621
    ld	$gp,16($sp)
    # Line 6620
    sw	$s8,5328($zero)
    # Line 6621
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_FinishAsyncSGIX

# Function: __glce_PollAsyncSGIX
# Declared: Line 6627 (Source lines: 6628-6637)
# Address: 0x0da61560 - 0x0da615ac (Size: 76 bytes, Frame: 32)
.globl __glce_PollAsyncSGIX
.ent __glce_PollAsyncSGIX
__glce_PollAsyncSGIX:
    # Line 6628
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6633
    lw	$s8,5332($zero)
    # Line 6628
    lui	$v0,0x3
    # Line 6634
    lw	$at,4112($zero)
    # Line 6628
    addiu	$v0,$v0,-1416
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6635
    # lw $t9, -16712($gp) # &glPollAsyncSGIX
    # Line 6628
    sd	$ra,0($sp)
    # Line 6634
    lw	$at,11076($at)
    # Line 6635
    jal	glPollAsyncSGIX
    # Line 6634
    sw	$at,5332($zero)
    ld	$ra,0($sp)
    # Line 6637
    ld	$gp,16($sp)
    # Line 6636
    sw	$s8,5332($zero)
    # Line 6637
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PollAsyncSGIX

# Function: __glce_GenAsyncMarkersSGIX
# Declared: Line 6643 (Source lines: 6644-6653)
# Address: 0x0da615b0 - 0x0da615fc (Size: 76 bytes, Frame: 32)
.globl __glce_GenAsyncMarkersSGIX
.ent __glce_GenAsyncMarkersSGIX
__glce_GenAsyncMarkersSGIX:
    # Line 6644
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6649
    lw	$s8,5336($zero)
    # Line 6644
    lui	$v0,0x3
    # Line 6650
    lw	$at,4112($zero)
    # Line 6644
    addiu	$v0,$v0,-1496
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6651
    # lw $t9, -16708($gp) # &glGenAsyncMarkersSGIX
    # Line 6644
    sd	$ra,0($sp)
    # Line 6650
    lw	$at,11080($at)
    # Line 6651
    jal	glGenAsyncMarkersSGIX
    # Line 6650
    sw	$at,5336($zero)
    ld	$ra,0($sp)
    # Line 6653
    ld	$gp,16($sp)
    # Line 6652
    sw	$s8,5336($zero)
    # Line 6653
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GenAsyncMarkersSGIX

# Function: __glce_DeleteAsyncMarkersSGIX
# Declared: Line 6659 (Source lines: 6660-6668)
# Address: 0x0da61600 - 0x0da6164c (Size: 76 bytes, Frame: 32)
.globl __glce_DeleteAsyncMarkersSGIX
.ent __glce_DeleteAsyncMarkersSGIX
__glce_DeleteAsyncMarkersSGIX:
    # Line 6660
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6664
    lw	$s8,5340($zero)
    # Line 6660
    lui	$v0,0x3
    # Line 6665
    lw	$at,4112($zero)
    # Line 6660
    addiu	$v0,$v0,-1576
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6666
    # lw $t9, -16704($gp) # &glDeleteAsyncMarkersSGIX
    # Line 6660
    sd	$ra,0($sp)
    # Line 6665
    lw	$at,11084($at)
    # Line 6666
    jal	glDeleteAsyncMarkersSGIX
    # Line 6665
    sw	$at,5340($zero)
    ld	$ra,0($sp)
    # Line 6668
    ld	$gp,16($sp)
    # Line 6667
    sw	$s8,5340($zero)
    # Line 6668
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_DeleteAsyncMarkersSGIX

# Function: __glce_IsAsyncMarkerSGIX
# Declared: Line 6673 (Source lines: 6674-6683)
# Address: 0x0da61650 - 0x0da616a0 (Size: 80 bytes, Frame: 32)
.globl __glce_IsAsyncMarkerSGIX
.ent __glce_IsAsyncMarkerSGIX
__glce_IsAsyncMarkerSGIX:
    # Line 6674
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6679
    lw	$s8,5344($zero)
    # Line 6674
    lui	$v0,0x3
    # Line 6680
    lw	$at,4112($zero)
    # Line 6674
    addiu	$v0,$v0,-1656
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6681
    # lw $t9, -16700($gp) # &glIsAsyncMarkerSGIX
    # Line 6674
    sd	$ra,0($sp)
    # Line 6680
    lw	$at,11088($at)
    # Line 6681
    jal	glIsAsyncMarkerSGIX
    # Line 6680
    sw	$at,5344($zero)
    ld	$ra,0($sp)
    # Line 6683
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 6682
    sw	$s8,5344($zero)
    # Line 6683
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IsAsyncMarkerSGIX

# Function: __glce_FragmentColorMaterialSGIX
# Declared: Line 6689 (Source lines: 6690-6700)
# Address: 0x0da616a0 - 0x0da6171c (Size: 124 bytes, Frame: 48)
.globl __glce_FragmentColorMaterialSGIX
.ent __glce_FragmentColorMaterialSGIX
__glce_FragmentColorMaterialSGIX:
    # Line 6694
    lw	$v0,5348($zero)
    # Line 6690
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6694
    sd	$v0,24($sp)
    # Line 6690
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6692
    lw	$at,4112($zero)
    # Line 6690
    addiu	$v1,$v1,-1736
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6696
    # lw $t9, -16696($gp) # &glFragmentColorMaterialSGIX
    # Line 6692
    sd	$at,32($sp)
    # Line 6695
    lw	$at,7308($at)
    # Line 6690
    move	$s8,$a0
    # Line 6696
    jal	glFragmentColorMaterialSGIX
    # Line 6695
    sw	$at,5348($zero)
    # Line 6698
    # lw $t9, -16696($gp) # &glFragmentColorMaterialSGIX
    # Line 6697
    ld	$a2,32($sp)
    # Line 6698
    ld	$a1,40($sp)
    # Line 6697
    lw	$a2,11092($a2)
    # Line 6698
    move	$a0,$s8
    jal	glFragmentColorMaterialSGIX
    # Line 6697
    sw	$a2,5348($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6700
    ld	$gp,16($sp)
    # Line 6699
    ld	$a3,24($sp)
    # Line 6700
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6699
    sw	$a3,5348($zero)
.end __glce_FragmentColorMaterialSGIX

# Function: __glce_FragmentLightfSGIX
# Declared: Line 6705 (Source lines: 6706-6716)
# Address: 0x0da61720 - 0x0da617ac (Size: 140 bytes, Frame: 192)
.globl __glce_FragmentLightfSGIX
.ent __glce_FragmentLightfSGIX
__glce_FragmentLightfSGIX:
    # Line 6710
    lw	$v0,5352($zero)
    # Line 6706
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 6710
    sd	$v0,32($sp)
    # Line 6706
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 6708
    lw	$at,4112($zero)
    # Line 6706
    addiu	$v1,$v1,-1864
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 6712
    # lw $t9, -16692($gp) # &glFragmentLightfSGIX
    # Line 6708
    sd	$at,40($sp)
    # Line 6711
    lw	$at,7312($at)
    # Line 6706
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 6712
    jal	glFragmentLightfSGIX
    # Line 6711
    sw	$at,5352($zero)
    # Line 6714
    # lw $t9, -16692($gp) # &glFragmentLightfSGIX
    # Line 6713
    ld	$a2,40($sp)
    # Line 6714
    ld	$a1,48($sp)
    # Line 6713
    lw	$a2,11096($a2)
    # Line 6714
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glFragmentLightfSGIX
    # Line 6713
    sw	$a2,5352($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 6716
    ld	$gp,24($sp)
    # Line 6715
    ld	$a3,32($sp)
    # Line 6716
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6715
    sw	$a3,5352($zero)
.end __glce_FragmentLightfSGIX

# Function: __glce_FragmentLightfvSGIX
# Declared: Line 6721 (Source lines: 6722-6732)
# Address: 0x0da617b0 - 0x0da61834 (Size: 132 bytes, Frame: 192)
.globl __glce_FragmentLightfvSGIX
.ent __glce_FragmentLightfvSGIX
__glce_FragmentLightfvSGIX:
    # Line 6726
    lw	$v0,5356($zero)
    # Line 6722
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6726
    sd	$v0,24($sp)
    # Line 6722
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6724
    lw	$at,4112($zero)
    # Line 6722
    addiu	$v1,$v1,-2008
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6728
    # lw $t9, -16688($gp) # &glFragmentLightfvSGIX
    # Line 6724
    sd	$at,32($sp)
    # Line 6727
    lw	$at,7316($at)
    # Line 6722
    move	$s8,$a0
    # Line 6728
    jal	glFragmentLightfvSGIX
    # Line 6727
    sw	$at,5356($zero)
    # Line 6730
    ld	$a2,40($sp)
    # lw $t9, -16688($gp) # &glFragmentLightfvSGIX
    # Line 6729
    ld	$a3,32($sp)
    # Line 6730
    ld	$a1,48($sp)
    # Line 6729
    lw	$a3,11100($a3)
    # Line 6730
    move	$a0,$s8
    jal	glFragmentLightfvSGIX
    # Line 6729
    sw	$a3,5356($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6732
    ld	$gp,16($sp)
    # Line 6731
    ld	$a4,24($sp)
    # Line 6732
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6731
    sw	$a4,5356($zero)
.end __glce_FragmentLightfvSGIX

# Function: __glce_FragmentLightiSGIX
# Declared: Line 6737 (Source lines: 6738-6748)
# Address: 0x0da61840 - 0x0da618c4 (Size: 132 bytes, Frame: 192)
.globl __glce_FragmentLightiSGIX
.ent __glce_FragmentLightiSGIX
__glce_FragmentLightiSGIX:
    # Line 6742
    lw	$v0,5360($zero)
    # Line 6738
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6742
    sd	$v0,24($sp)
    # Line 6738
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6740
    lw	$at,4112($zero)
    # Line 6738
    addiu	$v1,$v1,-2152
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6744
    # lw $t9, -16684($gp) # &glFragmentLightiSGIX
    # Line 6740
    sd	$at,32($sp)
    # Line 6743
    lw	$at,7320($at)
    # Line 6738
    move	$s8,$a0
    # Line 6744
    jal	glFragmentLightiSGIX
    # Line 6743
    sw	$at,5360($zero)
    # Line 6746
    ld	$a2,40($sp)
    # lw $t9, -16684($gp) # &glFragmentLightiSGIX
    # Line 6745
    ld	$a3,32($sp)
    # Line 6746
    ld	$a1,48($sp)
    # Line 6745
    lw	$a3,11104($a3)
    # Line 6746
    move	$a0,$s8
    jal	glFragmentLightiSGIX
    # Line 6745
    sw	$a3,5360($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6748
    ld	$gp,16($sp)
    # Line 6747
    ld	$a4,24($sp)
    # Line 6748
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6747
    sw	$a4,5360($zero)
.end __glce_FragmentLightiSGIX

# Function: __glce_FragmentLightivSGIX
# Declared: Line 6753 (Source lines: 6754-6764)
# Address: 0x0da618d0 - 0x0da61954 (Size: 132 bytes, Frame: 192)
.globl __glce_FragmentLightivSGIX
.ent __glce_FragmentLightivSGIX
__glce_FragmentLightivSGIX:
    # Line 6758
    lw	$v0,5364($zero)
    # Line 6754
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6758
    sd	$v0,24($sp)
    # Line 6754
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6756
    lw	$at,4112($zero)
    # Line 6754
    addiu	$v1,$v1,-2296
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6760
    # lw $t9, -16680($gp) # &glFragmentLightivSGIX
    # Line 6756
    sd	$at,32($sp)
    # Line 6759
    lw	$at,7324($at)
    # Line 6754
    move	$s8,$a0
    # Line 6760
    jal	glFragmentLightivSGIX
    # Line 6759
    sw	$at,5364($zero)
    # Line 6762
    ld	$a2,40($sp)
    # lw $t9, -16680($gp) # &glFragmentLightivSGIX
    # Line 6761
    ld	$a3,32($sp)
    # Line 6762
    ld	$a1,48($sp)
    # Line 6761
    lw	$a3,11108($a3)
    # Line 6762
    move	$a0,$s8
    jal	glFragmentLightivSGIX
    # Line 6761
    sw	$a3,5364($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6764
    ld	$gp,16($sp)
    # Line 6763
    ld	$a4,24($sp)
    # Line 6764
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6763
    sw	$a4,5364($zero)
.end __glce_FragmentLightivSGIX

# Function: __glce_FragmentLightModelfSGIX
# Declared: Line 6769 (Source lines: 6770-6780)
# Address: 0x0da61960 - 0x0da619e4 (Size: 132 bytes, Frame: 48)
.globl __glce_FragmentLightModelfSGIX
.ent __glce_FragmentLightModelfSGIX
__glce_FragmentLightModelfSGIX:
    # Line 6774
    lw	$v0,5368($zero)
    # Line 6770
    addiu	$sp,$sp,-48
    # Line 6774
    sd	$v0,32($sp)
    # Line 6770
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 6772
    lw	$at,4112($zero)
    # Line 6770
    addiu	$v1,$v1,-2440
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 6776
    # lw $t9, -16676($gp) # &glFragmentLightModelfSGIX
    # Line 6772
    sd	$at,40($sp)
    # Line 6775
    lw	$at,7328($at)
    # Line 6770
    mov.s	$f30,$f13
    move	$s8,$a0
    # Line 6776
    jal	glFragmentLightModelfSGIX
    # Line 6775
    sw	$at,5368($zero)
    # Line 6778
    # lw $t9, -16676($gp) # &glFragmentLightModelfSGIX
    # Line 6777
    ld	$a1,40($sp)
    lw	$a1,11112($a1)
    # Line 6778
    mov.s	$f13,$f30
    move	$a0,$s8
    jal	glFragmentLightModelfSGIX
    # Line 6777
    sw	$a1,5368($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 6780
    ld	$gp,24($sp)
    # Line 6779
    ld	$a2,32($sp)
    # Line 6780
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6779
    sw	$a2,5368($zero)
.end __glce_FragmentLightModelfSGIX

# Function: __glce_FragmentLightModelfvSGIX
# Declared: Line 6785 (Source lines: 6786-6796)
# Address: 0x0da619f0 - 0x0da61a6c (Size: 124 bytes, Frame: 48)
.globl __glce_FragmentLightModelfvSGIX
.ent __glce_FragmentLightModelfvSGIX
__glce_FragmentLightModelfvSGIX:
    # Line 6790
    lw	$v0,5372($zero)
    # Line 6786
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6790
    sd	$v0,24($sp)
    # Line 6786
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6788
    lw	$at,4112($zero)
    # Line 6786
    addiu	$v1,$v1,-2584
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6792
    # lw $t9, -16672($gp) # &glFragmentLightModelfvSGIX
    # Line 6788
    sd	$at,32($sp)
    # Line 6791
    lw	$at,7332($at)
    # Line 6786
    move	$s8,$a0
    # Line 6792
    jal	glFragmentLightModelfvSGIX
    # Line 6791
    sw	$at,5372($zero)
    # Line 6794
    # lw $t9, -16672($gp) # &glFragmentLightModelfvSGIX
    # Line 6793
    ld	$a2,32($sp)
    # Line 6794
    ld	$a1,40($sp)
    # Line 6793
    lw	$a2,11116($a2)
    # Line 6794
    move	$a0,$s8
    jal	glFragmentLightModelfvSGIX
    # Line 6793
    sw	$a2,5372($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6796
    ld	$gp,16($sp)
    # Line 6795
    ld	$a3,24($sp)
    # Line 6796
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6795
    sw	$a3,5372($zero)
.end __glce_FragmentLightModelfvSGIX

# Function: __glce_FragmentLightModeliSGIX
# Declared: Line 6801 (Source lines: 6802-6812)
# Address: 0x0da61a70 - 0x0da61aec (Size: 124 bytes, Frame: 48)
.globl __glce_FragmentLightModeliSGIX
.ent __glce_FragmentLightModeliSGIX
__glce_FragmentLightModeliSGIX:
    # Line 6806
    lw	$v0,5376($zero)
    # Line 6802
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6806
    sd	$v0,24($sp)
    # Line 6802
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6804
    lw	$at,4112($zero)
    # Line 6802
    addiu	$v1,$v1,-2712
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6808
    # lw $t9, -16668($gp) # &glFragmentLightModeliSGIX
    # Line 6804
    sd	$at,32($sp)
    # Line 6807
    lw	$at,7336($at)
    # Line 6802
    move	$s8,$a0
    # Line 6808
    jal	glFragmentLightModeliSGIX
    # Line 6807
    sw	$at,5376($zero)
    # Line 6810
    # lw $t9, -16668($gp) # &glFragmentLightModeliSGIX
    # Line 6809
    ld	$a2,32($sp)
    # Line 6810
    ld	$a1,40($sp)
    # Line 6809
    lw	$a2,11120($a2)
    # Line 6810
    move	$a0,$s8
    jal	glFragmentLightModeliSGIX
    # Line 6809
    sw	$a2,5376($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6812
    ld	$gp,16($sp)
    # Line 6811
    ld	$a3,24($sp)
    # Line 6812
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6811
    sw	$a3,5376($zero)
.end __glce_FragmentLightModeliSGIX

# Function: __glce_FragmentLightModelivSGIX
# Declared: Line 6817 (Source lines: 6818-6828)
# Address: 0x0da61af0 - 0x0da61b6c (Size: 124 bytes, Frame: 48)
.globl __glce_FragmentLightModelivSGIX
.ent __glce_FragmentLightModelivSGIX
__glce_FragmentLightModelivSGIX:
    # Line 6822
    lw	$v0,5380($zero)
    # Line 6818
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6822
    sd	$v0,24($sp)
    # Line 6818
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6820
    lw	$at,4112($zero)
    # Line 6818
    addiu	$v1,$v1,-2840
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6824
    # lw $t9, -16664($gp) # &glFragmentLightModelivSGIX
    # Line 6820
    sd	$at,32($sp)
    # Line 6823
    lw	$at,7340($at)
    # Line 6818
    move	$s8,$a0
    # Line 6824
    jal	glFragmentLightModelivSGIX
    # Line 6823
    sw	$at,5380($zero)
    # Line 6826
    # lw $t9, -16664($gp) # &glFragmentLightModelivSGIX
    # Line 6825
    ld	$a2,32($sp)
    # Line 6826
    ld	$a1,40($sp)
    # Line 6825
    lw	$a2,11124($a2)
    # Line 6826
    move	$a0,$s8
    jal	glFragmentLightModelivSGIX
    # Line 6825
    sw	$a2,5380($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6828
    ld	$gp,16($sp)
    # Line 6827
    ld	$a3,24($sp)
    # Line 6828
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6827
    sw	$a3,5380($zero)
.end __glce_FragmentLightModelivSGIX

# Function: __glce_FragmentMaterialfSGIX
# Declared: Line 6833 (Source lines: 6834-6844)
# Address: 0x0da61b70 - 0x0da61bfc (Size: 140 bytes, Frame: 192)
.globl __glce_FragmentMaterialfSGIX
.ent __glce_FragmentMaterialfSGIX
__glce_FragmentMaterialfSGIX:
    # Line 6838
    lw	$v0,5384($zero)
    # Line 6834
    addiu	$sp,$sp,-64
    sd	$a1,48($sp)
    # Line 6838
    sd	$v0,32($sp)
    # Line 6834
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    sdc1	$f30,0($sp)
    lui	$v1,0x3
    # Line 6836
    lw	$at,4112($zero)
    # Line 6834
    addiu	$v1,$v1,-2968
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 6840
    # lw $t9, -16660($gp) # &glFragmentMaterialfSGIX
    # Line 6836
    sd	$at,40($sp)
    # Line 6839
    lw	$at,7344($at)
    # Line 6834
    mov.s	$f30,$f14
    move	$s8,$a0
    # Line 6840
    jal	glFragmentMaterialfSGIX
    # Line 6839
    sw	$at,5384($zero)
    # Line 6842
    # lw $t9, -16660($gp) # &glFragmentMaterialfSGIX
    # Line 6841
    ld	$a2,40($sp)
    # Line 6842
    ld	$a1,48($sp)
    # Line 6841
    lw	$a2,11128($a2)
    # Line 6842
    mov.s	$f14,$f30
    move	$a0,$s8
    jal	glFragmentMaterialfSGIX
    # Line 6841
    sw	$a2,5384($zero)
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    # Line 6844
    ld	$gp,24($sp)
    # Line 6843
    ld	$a3,32($sp)
    # Line 6844
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6843
    sw	$a3,5384($zero)
.end __glce_FragmentMaterialfSGIX

# Function: __glce_FragmentMaterialfvSGIX
# Declared: Line 6849 (Source lines: 6850-6860)
# Address: 0x0da61c00 - 0x0da61c84 (Size: 132 bytes, Frame: 192)
.globl __glce_FragmentMaterialfvSGIX
.ent __glce_FragmentMaterialfvSGIX
__glce_FragmentMaterialfvSGIX:
    # Line 6854
    lw	$v0,5388($zero)
    # Line 6850
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6854
    sd	$v0,24($sp)
    # Line 6850
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6852
    lw	$at,4112($zero)
    # Line 6850
    addiu	$v1,$v1,-3112
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6856
    # lw $t9, -16656($gp) # &glFragmentMaterialfvSGIX
    # Line 6852
    sd	$at,32($sp)
    # Line 6855
    lw	$at,7348($at)
    # Line 6850
    move	$s8,$a0
    # Line 6856
    jal	glFragmentMaterialfvSGIX
    # Line 6855
    sw	$at,5388($zero)
    # Line 6858
    ld	$a2,40($sp)
    # lw $t9, -16656($gp) # &glFragmentMaterialfvSGIX
    # Line 6857
    ld	$a3,32($sp)
    # Line 6858
    ld	$a1,48($sp)
    # Line 6857
    lw	$a3,11132($a3)
    # Line 6858
    move	$a0,$s8
    jal	glFragmentMaterialfvSGIX
    # Line 6857
    sw	$a3,5388($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6860
    ld	$gp,16($sp)
    # Line 6859
    ld	$a4,24($sp)
    # Line 6860
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6859
    sw	$a4,5388($zero)
.end __glce_FragmentMaterialfvSGIX

# Function: __glce_FragmentMaterialiSGIX
# Declared: Line 6865 (Source lines: 6866-6876)
# Address: 0x0da61c90 - 0x0da61d14 (Size: 132 bytes, Frame: 192)
.globl __glce_FragmentMaterialiSGIX
.ent __glce_FragmentMaterialiSGIX
__glce_FragmentMaterialiSGIX:
    # Line 6870
    lw	$v0,5392($zero)
    # Line 6866
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6870
    sd	$v0,24($sp)
    # Line 6866
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6868
    lw	$at,4112($zero)
    # Line 6866
    addiu	$v1,$v1,-3256
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6872
    # lw $t9, -16652($gp) # &glFragmentMaterialiSGIX
    # Line 6868
    sd	$at,32($sp)
    # Line 6871
    lw	$at,7352($at)
    # Line 6866
    move	$s8,$a0
    # Line 6872
    jal	glFragmentMaterialiSGIX
    # Line 6871
    sw	$at,5392($zero)
    # Line 6874
    ld	$a2,40($sp)
    # lw $t9, -16652($gp) # &glFragmentMaterialiSGIX
    # Line 6873
    ld	$a3,32($sp)
    # Line 6874
    ld	$a1,48($sp)
    # Line 6873
    lw	$a3,11136($a3)
    # Line 6874
    move	$a0,$s8
    jal	glFragmentMaterialiSGIX
    # Line 6873
    sw	$a3,5392($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6876
    ld	$gp,16($sp)
    # Line 6875
    ld	$a4,24($sp)
    # Line 6876
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6875
    sw	$a4,5392($zero)
.end __glce_FragmentMaterialiSGIX

# Function: __glce_FragmentMaterialivSGIX
# Declared: Line 6881 (Source lines: 6882-6892)
# Address: 0x0da61d20 - 0x0da61da4 (Size: 132 bytes, Frame: 192)
.globl __glce_FragmentMaterialivSGIX
.ent __glce_FragmentMaterialivSGIX
__glce_FragmentMaterialivSGIX:
    # Line 6886
    lw	$v0,5396($zero)
    # Line 6882
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6886
    sd	$v0,24($sp)
    # Line 6882
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6884
    lw	$at,4112($zero)
    # Line 6882
    addiu	$v1,$v1,-3400
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6888
    # lw $t9, -16648($gp) # &glFragmentMaterialivSGIX
    # Line 6884
    sd	$at,32($sp)
    # Line 6887
    lw	$at,7356($at)
    # Line 6882
    move	$s8,$a0
    # Line 6888
    jal	glFragmentMaterialivSGIX
    # Line 6887
    sw	$at,5396($zero)
    # Line 6890
    ld	$a2,40($sp)
    # lw $t9, -16648($gp) # &glFragmentMaterialivSGIX
    # Line 6889
    ld	$a3,32($sp)
    # Line 6890
    ld	$a1,48($sp)
    # Line 6889
    lw	$a3,11140($a3)
    # Line 6890
    move	$a0,$s8
    jal	glFragmentMaterialivSGIX
    # Line 6889
    sw	$a3,5396($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6892
    ld	$gp,16($sp)
    # Line 6891
    ld	$a4,24($sp)
    # Line 6892
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6891
    sw	$a4,5396($zero)
.end __glce_FragmentMaterialivSGIX

# Function: __glce_GetFragmentLightfvSGIX
# Declared: Line 6897 (Source lines: 6898-6906)
# Address: 0x0da61db0 - 0x0da61dfc (Size: 76 bytes, Frame: 32)
.globl __glce_GetFragmentLightfvSGIX
.ent __glce_GetFragmentLightfvSGIX
__glce_GetFragmentLightfvSGIX:
    # Line 6898
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6902
    lw	$s8,5400($zero)
    # Line 6898
    lui	$v0,0x3
    # Line 6903
    lw	$at,4112($zero)
    # Line 6898
    addiu	$v0,$v0,-3544
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6904
    # lw $t9, -16644($gp) # &glGetFragmentLightfvSGIX
    # Line 6898
    sd	$ra,0($sp)
    # Line 6903
    lw	$at,11144($at)
    # Line 6904
    jal	glGetFragmentLightfvSGIX
    # Line 6903
    sw	$at,5400($zero)
    ld	$ra,0($sp)
    # Line 6906
    ld	$gp,16($sp)
    # Line 6905
    sw	$s8,5400($zero)
    # Line 6906
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetFragmentLightfvSGIX

# Function: __glce_GetFragmentLightivSGIX
# Declared: Line 6911 (Source lines: 6912-6920)
# Address: 0x0da61e00 - 0x0da61e4c (Size: 76 bytes, Frame: 32)
.globl __glce_GetFragmentLightivSGIX
.ent __glce_GetFragmentLightivSGIX
__glce_GetFragmentLightivSGIX:
    # Line 6912
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6916
    lw	$s8,5404($zero)
    # Line 6912
    lui	$v0,0x3
    # Line 6917
    lw	$at,4112($zero)
    # Line 6912
    addiu	$v0,$v0,-3624
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6918
    # lw $t9, -16640($gp) # &glGetFragmentLightivSGIX
    # Line 6912
    sd	$ra,0($sp)
    # Line 6917
    lw	$at,11148($at)
    # Line 6918
    jal	glGetFragmentLightivSGIX
    # Line 6917
    sw	$at,5404($zero)
    ld	$ra,0($sp)
    # Line 6920
    ld	$gp,16($sp)
    # Line 6919
    sw	$s8,5404($zero)
    # Line 6920
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetFragmentLightivSGIX

# Function: __glce_GetFragmentMaterialfvSGIX
# Declared: Line 6925 (Source lines: 6926-6934)
# Address: 0x0da61e50 - 0x0da61e9c (Size: 76 bytes, Frame: 32)
.globl __glce_GetFragmentMaterialfvSGIX
.ent __glce_GetFragmentMaterialfvSGIX
__glce_GetFragmentMaterialfvSGIX:
    # Line 6926
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6930
    lw	$s8,5408($zero)
    # Line 6926
    lui	$v0,0x3
    # Line 6931
    lw	$at,4112($zero)
    # Line 6926
    addiu	$v0,$v0,-3704
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6932
    # lw $t9, -16636($gp) # &glGetFragmentMaterialfvSGIX
    # Line 6926
    sd	$ra,0($sp)
    # Line 6931
    lw	$at,11152($at)
    # Line 6932
    jal	glGetFragmentMaterialfvSGIX
    # Line 6931
    sw	$at,5408($zero)
    ld	$ra,0($sp)
    # Line 6934
    ld	$gp,16($sp)
    # Line 6933
    sw	$s8,5408($zero)
    # Line 6934
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetFragmentMaterialfvSGIX

# Function: __glce_GetFragmentMaterialivSGIX
# Declared: Line 6939 (Source lines: 6940-6948)
# Address: 0x0da61ea0 - 0x0da61eec (Size: 76 bytes, Frame: 32)
.globl __glce_GetFragmentMaterialivSGIX
.ent __glce_GetFragmentMaterialivSGIX
__glce_GetFragmentMaterialivSGIX:
    # Line 6940
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6944
    lw	$s8,5412($zero)
    # Line 6940
    lui	$v0,0x3
    # Line 6945
    lw	$at,4112($zero)
    # Line 6940
    addiu	$v0,$v0,-3784
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 6946
    # lw $t9, -16632($gp) # &glGetFragmentMaterialivSGIX
    # Line 6940
    sd	$ra,0($sp)
    # Line 6945
    lw	$at,11156($at)
    # Line 6946
    jal	glGetFragmentMaterialivSGIX
    # Line 6945
    sw	$at,5412($zero)
    ld	$ra,0($sp)
    # Line 6948
    ld	$gp,16($sp)
    # Line 6947
    sw	$s8,5412($zero)
    # Line 6948
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetFragmentMaterialivSGIX

# Function: __glce_LightEnviSGIX
# Declared: Line 6953 (Source lines: 6954-6964)
# Address: 0x0da61ef0 - 0x0da61f6c (Size: 124 bytes, Frame: 48)
.globl __glce_LightEnviSGIX
.ent __glce_LightEnviSGIX
__glce_LightEnviSGIX:
    # Line 6958
    lw	$v0,5416($zero)
    # Line 6954
    addiu	$sp,$sp,-48
    sd	$a1,40($sp)
    # Line 6958
    sd	$v0,24($sp)
    # Line 6954
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6956
    lw	$at,4112($zero)
    # Line 6954
    addiu	$v1,$v1,-3864
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6960
    # lw $t9, -16628($gp) # &glLightEnviSGIX
    # Line 6956
    sd	$at,32($sp)
    # Line 6959
    lw	$at,7376($at)
    # Line 6954
    move	$s8,$a0
    # Line 6960
    jal	glLightEnviSGIX
    # Line 6959
    sw	$at,5416($zero)
    # Line 6962
    # lw $t9, -16628($gp) # &glLightEnviSGIX
    # Line 6961
    ld	$a2,32($sp)
    # Line 6962
    ld	$a1,40($sp)
    # Line 6961
    lw	$a2,11160($a2)
    # Line 6962
    move	$a0,$s8
    jal	glLightEnviSGIX
    # Line 6961
    sw	$a2,5416($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6964
    ld	$gp,16($sp)
    # Line 6963
    ld	$a3,24($sp)
    # Line 6964
    addiu	$sp,$sp,48
    jr	$ra
    # Line 6963
    sw	$a3,5416($zero)
.end __glce_LightEnviSGIX

# Function: __glce_TextureColorMaskSGIS
# Declared: Line 6969 (Source lines: 6970-6980)
# Address: 0x0da61f70 - 0x0da61ffc (Size: 140 bytes, Frame: 192)
.globl __glce_TextureColorMaskSGIS
.ent __glce_TextureColorMaskSGIS
__glce_TextureColorMaskSGIS:
    # Line 6974
    lw	$v0,5420($zero)
    # Line 6970
    addiu	$sp,$sp,-64
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    # Line 6974
    sd	$v0,24($sp)
    # Line 6970
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6972
    lw	$at,4112($zero)
    # Line 6970
    addiu	$v1,$v1,-3992
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6976
    # lw $t9, -16624($gp) # &glTextureColorMaskSGIS
    # Line 6972
    sd	$at,32($sp)
    # Line 6975
    lw	$at,7380($at)
    # Line 6970
    move	$s8,$a0
    # Line 6976
    jal	glTextureColorMaskSGIS
    # Line 6975
    sw	$at,5420($zero)
    # Line 6978
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -16624($gp) # &glTextureColorMaskSGIS
    # Line 6977
    ld	$a4,32($sp)
    # Line 6978
    ld	$a1,56($sp)
    # Line 6977
    lw	$a4,11164($a4)
    # Line 6978
    move	$a0,$s8
    jal	glTextureColorMaskSGIS
    # Line 6977
    sw	$a4,5420($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6980
    ld	$gp,16($sp)
    # Line 6979
    ld	$a5,24($sp)
    # Line 6980
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6979
    sw	$a5,5420($zero)
.end __glce_TextureColorMaskSGIS

# Function: __glce_DrawArrays
# Declared: Line 6985 (Source lines: 6986-6996)
# Address: 0x0da62000 - 0x0da62084 (Size: 132 bytes, Frame: 192)
.globl __glce_DrawArrays
.ent __glce_DrawArrays
__glce_DrawArrays:
    # Line 6990
    lw	$v0,5424($zero)
    # Line 6986
    addiu	$sp,$sp,-64
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    # Line 6990
    sd	$v0,24($sp)
    # Line 6986
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    lui	$v1,0x3
    # Line 6988
    lw	$at,4112($zero)
    # Line 6986
    addiu	$v1,$v1,-4136
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 6992
    # lw $t9, -16620($gp) # &glDrawArrays
    # Line 6988
    sd	$at,32($sp)
    # Line 6991
    lw	$at,7384($at)
    # Line 6986
    move	$s8,$a0
    # Line 6992
    jal	glDrawArrays
    # Line 6991
    sw	$at,5424($zero)
    # Line 6994
    ld	$a2,40($sp)
    # lw $t9, -16620($gp) # &glDrawArrays
    # Line 6993
    ld	$a3,32($sp)
    # Line 6994
    ld	$a1,48($sp)
    # Line 6993
    lw	$a3,11168($a3)
    # Line 6994
    move	$a0,$s8
    jal	glDrawArrays
    # Line 6993
    sw	$a3,5424($zero)
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 6996
    ld	$gp,16($sp)
    # Line 6995
    ld	$a4,24($sp)
    # Line 6996
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6995
    sw	$a4,5424($zero)
.end __glce_DrawArrays

# Function: __glce_AreTexturesResident
# Declared: Line 7001 (Source lines: 7002-7011)
# Address: 0x0da62090 - 0x0da620e0 (Size: 80 bytes, Frame: 32)
.globl __glce_AreTexturesResident
.ent __glce_AreTexturesResident
__glce_AreTexturesResident:
    # Line 7002
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7007
    lw	$s8,5428($zero)
    # Line 7002
    lui	$v0,0x3
    # Line 7008
    lw	$at,4112($zero)
    # Line 7002
    addiu	$v0,$v0,-4280
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7009
    # lw $t9, -16616($gp) # &glAreTexturesResident
    # Line 7002
    sd	$ra,0($sp)
    # Line 7008
    lw	$at,11172($at)
    # Line 7009
    jal	glAreTexturesResident
    # Line 7008
    sw	$at,5428($zero)
    ld	$ra,0($sp)
    # Line 7011
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 7010
    sw	$s8,5428($zero)
    # Line 7011
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_AreTexturesResident

# Function: __glce_DeleteTextures
# Declared: Line 7017 (Source lines: 7018-7026)
# Address: 0x0da620e0 - 0x0da6212c (Size: 76 bytes, Frame: 32)
.globl __glce_DeleteTextures
.ent __glce_DeleteTextures
__glce_DeleteTextures:
    # Line 7018
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7022
    lw	$s8,5432($zero)
    # Line 7018
    lui	$v0,0x3
    # Line 7023
    lw	$at,4112($zero)
    # Line 7018
    addiu	$v0,$v0,-4360
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7024
    # lw $t9, -16612($gp) # &glDeleteTextures
    # Line 7018
    sd	$ra,0($sp)
    # Line 7023
    lw	$at,11176($at)
    # Line 7024
    jal	glDeleteTextures
    # Line 7023
    sw	$at,5432($zero)
    ld	$ra,0($sp)
    # Line 7026
    ld	$gp,16($sp)
    # Line 7025
    sw	$s8,5432($zero)
    # Line 7026
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_DeleteTextures

# Function: __glce_GenTextures
# Declared: Line 7031 (Source lines: 7032-7040)
# Address: 0x0da62130 - 0x0da6217c (Size: 76 bytes, Frame: 32)
.globl __glce_GenTextures
.ent __glce_GenTextures
__glce_GenTextures:
    # Line 7032
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7036
    lw	$s8,5436($zero)
    # Line 7032
    lui	$v0,0x3
    # Line 7037
    lw	$at,4112($zero)
    # Line 7032
    addiu	$v0,$v0,-4440
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7038
    # lw $t9, -16608($gp) # &glGenTextures
    # Line 7032
    sd	$ra,0($sp)
    # Line 7037
    lw	$at,11180($at)
    # Line 7038
    jal	glGenTextures
    # Line 7037
    sw	$at,5436($zero)
    ld	$ra,0($sp)
    # Line 7040
    ld	$gp,16($sp)
    # Line 7039
    sw	$s8,5436($zero)
    # Line 7040
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GenTextures

# Function: __glce_IsTexture
# Declared: Line 7045 (Source lines: 7046-7055)
# Address: 0x0da62180 - 0x0da621d0 (Size: 80 bytes, Frame: 32)
.globl __glce_IsTexture
.ent __glce_IsTexture
__glce_IsTexture:
    # Line 7046
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7051
    lw	$s8,5440($zero)
    # Line 7046
    lui	$v0,0x3
    # Line 7052
    lw	$at,4112($zero)
    # Line 7046
    addiu	$v0,$v0,-4520
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7053
    # lw $t9, -16604($gp) # &glIsTexture
    # Line 7046
    sd	$ra,0($sp)
    # Line 7052
    lw	$at,11184($at)
    # Line 7053
    jal	glIsTexture
    # Line 7052
    sw	$at,5440($zero)
    ld	$ra,0($sp)
    # Line 7055
    ld	$gp,16($sp)
    andi	$v0,$v0,0xff
    # Line 7054
    sw	$s8,5440($zero)
    # Line 7055
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_IsTexture

# Function: __glce_GetColorTable
# Declared: Line 7061 (Source lines: 7062-7070)
# Address: 0x0da621d0 - 0x0da6221c (Size: 76 bytes, Frame: 32)
.globl __glce_GetColorTable
.ent __glce_GetColorTable
__glce_GetColorTable:
    # Line 7062
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7066
    lw	$s8,5444($zero)
    # Line 7062
    lui	$v0,0x3
    # Line 7067
    lw	$at,4112($zero)
    # Line 7062
    addiu	$v0,$v0,-4600
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7068
    # lw $t9, -16600($gp) # &glGetColorTable
    # Line 7062
    sd	$ra,0($sp)
    # Line 7067
    lw	$at,11188($at)
    # Line 7068
    jal	glGetColorTable
    # Line 7067
    sw	$at,5444($zero)
    ld	$ra,0($sp)
    # Line 7070
    ld	$gp,16($sp)
    # Line 7069
    sw	$s8,5444($zero)
    # Line 7070
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetColorTable

# Function: __glce_GetColorTableParameterfv
# Declared: Line 7075 (Source lines: 7076-7084)
# Address: 0x0da62220 - 0x0da6226c (Size: 76 bytes, Frame: 32)
.globl __glce_GetColorTableParameterfv
.ent __glce_GetColorTableParameterfv
__glce_GetColorTableParameterfv:
    # Line 7076
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7080
    lw	$s8,5448($zero)
    # Line 7076
    lui	$v0,0x3
    # Line 7081
    lw	$at,4112($zero)
    # Line 7076
    addiu	$v0,$v0,-4680
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7082
    # lw $t9, -16596($gp) # &glGetColorTableParameterfv
    # Line 7076
    sd	$ra,0($sp)
    # Line 7081
    lw	$at,11192($at)
    # Line 7082
    jal	glGetColorTableParameterfv
    # Line 7081
    sw	$at,5448($zero)
    ld	$ra,0($sp)
    # Line 7084
    ld	$gp,16($sp)
    # Line 7083
    sw	$s8,5448($zero)
    # Line 7084
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetColorTableParameterfv

# Function: __glce_GetColorTableParameteriv
# Declared: Line 7089 (Source lines: 7090-7098)
# Address: 0x0da62270 - 0x0da622bc (Size: 76 bytes, Frame: 32)
.globl __glce_GetColorTableParameteriv
.ent __glce_GetColorTableParameteriv
__glce_GetColorTableParameteriv:
    # Line 7090
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7094
    lw	$s8,5452($zero)
    # Line 7090
    lui	$v0,0x3
    # Line 7095
    lw	$at,4112($zero)
    # Line 7090
    addiu	$v0,$v0,-4760
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7096
    # lw $t9, -16592($gp) # &glGetColorTableParameteriv
    # Line 7090
    sd	$ra,0($sp)
    # Line 7095
    lw	$at,11196($at)
    # Line 7096
    jal	glGetColorTableParameteriv
    # Line 7095
    sw	$at,5452($zero)
    ld	$ra,0($sp)
    # Line 7098
    ld	$gp,16($sp)
    # Line 7097
    sw	$s8,5452($zero)
    # Line 7098
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetColorTableParameteriv

# Function: __glce_GetConvolutionFilter
# Declared: Line 7103 (Source lines: 7104-7112)
# Address: 0x0da622c0 - 0x0da6230c (Size: 76 bytes, Frame: 32)
.globl __glce_GetConvolutionFilter
.ent __glce_GetConvolutionFilter
__glce_GetConvolutionFilter:
    # Line 7104
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7108
    lw	$s8,5456($zero)
    # Line 7104
    lui	$v0,0x3
    # Line 7109
    lw	$at,4112($zero)
    # Line 7104
    addiu	$v0,$v0,-4840
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7110
    # lw $t9, -16588($gp) # &glGetConvolutionFilter
    # Line 7104
    sd	$ra,0($sp)
    # Line 7109
    lw	$at,11200($at)
    # Line 7110
    jal	glGetConvolutionFilter
    # Line 7109
    sw	$at,5456($zero)
    ld	$ra,0($sp)
    # Line 7112
    ld	$gp,16($sp)
    # Line 7111
    sw	$s8,5456($zero)
    # Line 7112
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetConvolutionFilter

# Function: __glce_GetConvolutionParameterfv
# Declared: Line 7117 (Source lines: 7118-7126)
# Address: 0x0da62310 - 0x0da6235c (Size: 76 bytes, Frame: 32)
.globl __glce_GetConvolutionParameterfv
.ent __glce_GetConvolutionParameterfv
__glce_GetConvolutionParameterfv:
    # Line 7118
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7122
    lw	$s8,5460($zero)
    # Line 7118
    lui	$v0,0x3
    # Line 7123
    lw	$at,4112($zero)
    # Line 7118
    addiu	$v0,$v0,-4920
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7124
    # lw $t9, -16584($gp) # &glGetConvolutionParameterfv
    # Line 7118
    sd	$ra,0($sp)
    # Line 7123
    lw	$at,11204($at)
    # Line 7124
    jal	glGetConvolutionParameterfv
    # Line 7123
    sw	$at,5460($zero)
    ld	$ra,0($sp)
    # Line 7126
    ld	$gp,16($sp)
    # Line 7125
    sw	$s8,5460($zero)
    # Line 7126
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetConvolutionParameterfv

# Function: __glce_GetConvolutionParameteriv
# Declared: Line 7131 (Source lines: 7132-7140)
# Address: 0x0da62360 - 0x0da623ac (Size: 76 bytes, Frame: 32)
.globl __glce_GetConvolutionParameteriv
.ent __glce_GetConvolutionParameteriv
__glce_GetConvolutionParameteriv:
    # Line 7132
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7136
    lw	$s8,5464($zero)
    # Line 7132
    lui	$v0,0x3
    # Line 7137
    lw	$at,4112($zero)
    # Line 7132
    addiu	$v0,$v0,-5000
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7138
    # lw $t9, -16580($gp) # &glGetConvolutionParameteriv
    # Line 7132
    sd	$ra,0($sp)
    # Line 7137
    lw	$at,11208($at)
    # Line 7138
    jal	glGetConvolutionParameteriv
    # Line 7137
    sw	$at,5464($zero)
    ld	$ra,0($sp)
    # Line 7140
    ld	$gp,16($sp)
    # Line 7139
    sw	$s8,5464($zero)
    # Line 7140
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetConvolutionParameteriv

# Function: __glce_GetSeparableFilter
# Declared: Line 7145 (Source lines: 7146-7154)
# Address: 0x0da623b0 - 0x0da623fc (Size: 76 bytes, Frame: 32)
.globl __glce_GetSeparableFilter
.ent __glce_GetSeparableFilter
__glce_GetSeparableFilter:
    # Line 7146
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7150
    lw	$s8,5468($zero)
    # Line 7146
    lui	$v0,0x3
    # Line 7151
    lw	$at,4112($zero)
    # Line 7146
    addiu	$v0,$v0,-5080
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7152
    # lw $t9, -16576($gp) # &glGetSeparableFilter
    # Line 7146
    sd	$ra,0($sp)
    # Line 7151
    lw	$at,11212($at)
    # Line 7152
    jal	glGetSeparableFilter
    # Line 7151
    sw	$at,5468($zero)
    ld	$ra,0($sp)
    # Line 7154
    ld	$gp,16($sp)
    # Line 7153
    sw	$s8,5468($zero)
    # Line 7154
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetSeparableFilter

# Function: __glce_GetHistogram
# Declared: Line 7159 (Source lines: 7160-7168)
# Address: 0x0da62400 - 0x0da6244c (Size: 76 bytes, Frame: 32)
.globl __glce_GetHistogram
.ent __glce_GetHistogram
__glce_GetHistogram:
    # Line 7160
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7164
    lw	$s8,5472($zero)
    # Line 7160
    lui	$v0,0x3
    # Line 7165
    lw	$at,4112($zero)
    # Line 7160
    addiu	$v0,$v0,-5160
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7166
    # lw $t9, -16572($gp) # &glGetHistogram
    # Line 7160
    sd	$ra,0($sp)
    # Line 7165
    lw	$at,11216($at)
    # Line 7166
    jal	glGetHistogram
    # Line 7165
    sw	$at,5472($zero)
    ld	$ra,0($sp)
    # Line 7168
    ld	$gp,16($sp)
    # Line 7167
    sw	$s8,5472($zero)
    # Line 7168
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetHistogram

# Function: __glce_GetHistogramParameterfv
# Declared: Line 7173 (Source lines: 7174-7182)
# Address: 0x0da62450 - 0x0da6249c (Size: 76 bytes, Frame: 32)
.globl __glce_GetHistogramParameterfv
.ent __glce_GetHistogramParameterfv
__glce_GetHistogramParameterfv:
    # Line 7174
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7178
    lw	$s8,5476($zero)
    # Line 7174
    lui	$v0,0x3
    # Line 7179
    lw	$at,4112($zero)
    # Line 7174
    addiu	$v0,$v0,-5240
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7180
    # lw $t9, -16568($gp) # &glGetHistogramParameterfv
    # Line 7174
    sd	$ra,0($sp)
    # Line 7179
    lw	$at,11220($at)
    # Line 7180
    jal	glGetHistogramParameterfv
    # Line 7179
    sw	$at,5476($zero)
    ld	$ra,0($sp)
    # Line 7182
    ld	$gp,16($sp)
    # Line 7181
    sw	$s8,5476($zero)
    # Line 7182
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetHistogramParameterfv

# Function: __glce_GetHistogramParameteriv
# Declared: Line 7187 (Source lines: 7188-7196)
# Address: 0x0da624a0 - 0x0da624ec (Size: 76 bytes, Frame: 32)
.globl __glce_GetHistogramParameteriv
.ent __glce_GetHistogramParameteriv
__glce_GetHistogramParameteriv:
    # Line 7188
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7192
    lw	$s8,5480($zero)
    # Line 7188
    lui	$v0,0x3
    # Line 7193
    lw	$at,4112($zero)
    # Line 7188
    addiu	$v0,$v0,-5320
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7194
    # lw $t9, -16564($gp) # &glGetHistogramParameteriv
    # Line 7188
    sd	$ra,0($sp)
    # Line 7193
    lw	$at,11224($at)
    # Line 7194
    jal	glGetHistogramParameteriv
    # Line 7193
    sw	$at,5480($zero)
    ld	$ra,0($sp)
    # Line 7196
    ld	$gp,16($sp)
    # Line 7195
    sw	$s8,5480($zero)
    # Line 7196
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetHistogramParameteriv

# Function: __glce_GetMinmax
# Declared: Line 7201 (Source lines: 7202-7210)
# Address: 0x0da624f0 - 0x0da6253c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMinmax
.ent __glce_GetMinmax
__glce_GetMinmax:
    # Line 7202
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7206
    lw	$s8,5484($zero)
    # Line 7202
    lui	$v0,0x3
    # Line 7207
    lw	$at,4112($zero)
    # Line 7202
    addiu	$v0,$v0,-5400
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7208
    # lw $t9, -16560($gp) # &glGetMinmax
    # Line 7202
    sd	$ra,0($sp)
    # Line 7207
    lw	$at,11228($at)
    # Line 7208
    jal	glGetMinmax
    # Line 7207
    sw	$at,5484($zero)
    ld	$ra,0($sp)
    # Line 7210
    ld	$gp,16($sp)
    # Line 7209
    sw	$s8,5484($zero)
    # Line 7210
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMinmax

# Function: __glce_GetMinmaxParameterfv
# Declared: Line 7215 (Source lines: 7216-7224)
# Address: 0x0da62540 - 0x0da6258c (Size: 76 bytes, Frame: 32)
.globl __glce_GetMinmaxParameterfv
.ent __glce_GetMinmaxParameterfv
__glce_GetMinmaxParameterfv:
    # Line 7216
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7220
    lw	$s8,5488($zero)
    # Line 7216
    lui	$v0,0x3
    # Line 7221
    lw	$at,4112($zero)
    # Line 7216
    addiu	$v0,$v0,-5480
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7222
    # lw $t9, -16556($gp) # &glGetMinmaxParameterfv
    # Line 7216
    sd	$ra,0($sp)
    # Line 7221
    lw	$at,11232($at)
    # Line 7222
    jal	glGetMinmaxParameterfv
    # Line 7221
    sw	$at,5488($zero)
    ld	$ra,0($sp)
    # Line 7224
    ld	$gp,16($sp)
    # Line 7223
    sw	$s8,5488($zero)
    # Line 7224
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMinmaxParameterfv

# Function: __glce_GetMinmaxParameteriv
# Declared: Line 7229 (Source lines: 7230-7238)
# Address: 0x0da62590 - 0x0da625dc (Size: 76 bytes, Frame: 32)
.globl __glce_GetMinmaxParameteriv
.ent __glce_GetMinmaxParameteriv
__glce_GetMinmaxParameteriv:
    # Line 7230
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 7234
    lw	$s8,5492($zero)
    # Line 7230
    lui	$v0,0x3
    # Line 7235
    lw	$at,4112($zero)
    # Line 7230
    addiu	$v0,$v0,-5560
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 7236
    # lw $t9, -16552($gp) # &glGetMinmaxParameteriv
    # Line 7230
    sd	$ra,0($sp)
    # Line 7235
    lw	$at,11236($at)
    # Line 7236
    jal	glGetMinmaxParameteriv
    # Line 7235
    sw	$at,5492($zero)
    ld	$ra,0($sp)
    # Line 7238
    ld	$gp,16($sp)
    # Line 7237
    sw	$s8,5492($zero)
    # Line 7238
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetMinmaxParameteriv

