# Source: ../pixel/px_histogram.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_histogram.c
# Total Functions: 21

.text

# Function: __glFClamp
# Declared: Line 28 (Source lines: 30-35)
# Address: 0x0d9b78d0 - 0x0d9b78fc (Size: 44 bytes, Frame: 0)
.globl __glFClamp
.ent __glFClamp
__glFClamp:
    # Line 30
    mtc1	$zero,$f5
    c.lt.s	$f12,$f5
    lw	$a1,4112($zero)
    bc1t	.L0d9b78f4
    # Line 32
    mov.s	$f0,$f5
    lwc1	$f0,3544($a1)
    c.lt.s $f0,$f12
    # Line 35
    jr	$ra
    movf.s	$f0,$f12,$fcc1
.L0d9b78f4:
    jr	$ra
    nop
.end __glFClamp

# Function: __glSpanMinmaxA
# Declared: Line 43 (Source lines: 45-69)
# Address: 0x0d9b7900 - 0x0d9b7a5c (Size: 348 bytes, Frame: 0)
.globl __glSpanMinmaxA
.ent __glSpanMinmaxA
__glSpanMinmaxA:
    # Line 57
    lw	$a7,184($a1)
    # Line 45
    move	$a6,$a3
    move	$a5,$a2
    # Line 57
    blez	$a7,.L0d9b798c
    # Line 54
    lwc1	$f5,30868($a0)
    # Line 57
    move	$a2,$zero
    andi	$at,$a7,0x1
    beqz	$at,.L0d9b7984
    sra	$v0,$a7,0x1
    # Line 60
    lwc1	$f8,0($a5)
    swc1	$f8,0($a3)
    # Line 61
    lwc1	$f7,4($a5)
    swc1	$f7,4($a3)
    # Line 62
    lwc1	$f6,8($a5)
    swc1	$f6,8($a3)
    lwc1	$f4,12($a5)
    lwc1	$f0,1332($a0)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f0
    # Line 59
    addiu	$a2,$a2,1
    # Line 62
    bc1f	.L0d9b7964
    # Line 67
    addiu	$a6,$a6,16
    # Line 64
    swc1	$f4,1332($a0)
    lwc1	$f4,12($a5)
    mul.s	$f4,$f4,$f5
.L0d9b7964:
    lwc1	$f6,1336($a0)
    c.lt.s $f6,$f4
    bc1f .L0d9b7978
    nop
    # Line 66
    swc1	$f4,1336($a0)
.L0d9b7978:
    # Line 67
    lwc1	$f7,12($a5)
    addiu	$a5,$a5,16
    swc1	$f7,-4($a6)
.L0d9b7984:
    bnezl	$v0,.L0d9b79c8
    # Line 60
    lwc1	$f8,0($a5)
.L0d9b798c:
    # Line 69
    jr	$ra
    nop
    nop
    nop
    nop
.L0d9b79a0:
    # Line 64
    lwc1	$f8,1336($a0)
    c.lt.s $f8,$f4
    bc1f .L0d9b79b4
    nop
    # Line 66
    swc1	$f4,1336($a0)
.L0d9b79b4:
    # Line 67
    lwc1	$f9,28($a5)
    addiu	$a5,$a5,32
    # Line 59
    beq	$a7,$a2,.L0d9b798c
    # Line 67
    swc1	$f9,-4($a6)
    # Line 60
    lwc1	$f8,0($a5)
.L0d9b79c8:
    swc1	$f8,0($a6)
    # Line 61
    lwc1	$f7,4($a5)
    swc1	$f7,4($a6)
    # Line 62
    lwc1	$f6,8($a5)
    swc1	$f6,8($a6)
    lwc1	$f4,12($a5)
    lwc1	$f10,1332($a0)
    mul.s	$f4,$f4,$f5
    c.lt.s $f4,$f10
    bc1f .L0d9b7a00
    # Line 59
    addiu	$a2,$a2,2
    # Line 64
    swc1	$f4,1332($a0)
    lwc1	$f4,12($a5)
    mul.s	$f4,$f4,$f5
.L0d9b7a00:
    lwc1	$f6,1336($a0)
    c.lt.s $f6,$f4
    bc1f .L0d9b7a14
    nop
    # Line 66
    swc1	$f4,1336($a0)
.L0d9b7a14:
    # Line 67
    lwc1	$f9,12($a5)
    swc1	$f9,12($a6)
    # Line 60
    lwc1	$f8,16($a5)
    swc1	$f8,16($a6)
    # Line 61
    lwc1	$f7,20($a5)
    swc1	$f7,20($a6)
    # Line 62
    lwc1	$f6,24($a5)
    swc1	$f6,24($a6)
    lwc1	$f4,28($a5)
    lwc1	$f7,1332($a0)
    mul.s	$f4,$f4,$f5
    c.lt.s $f4,$f7
    bc1f .L0d9b79a0
    # Line 67
    addiu	$a6,$a6,32
    # Line 64
    swc1	$f4,1332($a0)
    lwc1	$f4,28($a5)
    b	.L0d9b79a0
    mul.s	$f4,$f4,$f5
.end __glSpanMinmaxA

# Function: __glSpanMinmaxL
# Declared: Line 71 (Source lines: 73-97)
# Address: 0x0d9b7a60 - 0x0d9b7bc0 (Size: 352 bytes, Frame: 0)
.globl __glSpanMinmaxL
.ent __glSpanMinmaxL
__glSpanMinmaxL:
    # Line 85
    lw	$a7,184($a1)
    # Line 73
    move	$a6,$a3
    move	$a5,$a2
    # Line 85
    blez	$a7,.L0d9b7aec
    # Line 82
    lwc1	$f6,30856($a0)
    # Line 85
    move	$a2,$zero
    andi	$at,$a7,0x1
    beqz	$at,.L0d9b7ae4
    sra	$v0,$a7,0x1
    lwc1	$f5,0($a5)
    lwc1	$f0,1332($a0)
    mul.s	$f4,$f5,$f6
    c.lt.s	$f4,$f0
    bc1f	.L0d9b7aa8
    # Line 87
    addiu	$a2,$a2,1
    # Line 89
    swc1	$f4,1332($a0)
    lwc1	$f5,0($a5)
    mul.s	$f4,$f5,$f6
.L0d9b7aa8:
    lwc1	$f1,1336($a0)
    c.lt.s $f1,$f4
    bc1f .L0d9b7ac0
    nop
    # Line 91
    swc1	$f4,1336($a0)
    lwc1	$f5,0($a5)
.L0d9b7ac0:
    # Line 92
    swc1	$f5,0($a6)
    # Line 93
    lwc1	$f4,4($a5)
    swc1	$f4,4($a6)
    # Line 94
    lwc1	$f3,8($a5)
    swc1	$f3,8($a6)
    # Line 95
    lwc1	$f2,12($a5)
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    swc1	$f2,-4($a6)
.L0d9b7ae4:
    bnezl	$v0,.L0d9b7b9c
    # Line 85
    lwc1	$f5,0($a5)
.L0d9b7aec:
    # Line 97
    jr	$ra
    nop
    nop
    nop
    nop
.L0d9b7b00:
    # Line 89
    lwc1	$f7,1336($a0)
    c.lt.s $f7,$f4
    bc1f .L0d9b7b18
    nop
    # Line 91
    swc1	$f4,1336($a0)
    lwc1	$f5,0($a5)
.L0d9b7b18:
    # Line 92
    swc1	$f5,0($a6)
    # Line 93
    lwc1	$f11,4($a5)
    swc1	$f11,4($a6)
    # Line 94
    lwc1	$f10,8($a5)
    swc1	$f10,8($a6)
    # Line 95
    lwc1	$f9,12($a5)
    swc1	$f9,12($a6)
    # Line 85
    lwc1	$f5,16($a5)
    lwc1	$f8,1332($a0)
    mul.s	$f4,$f5,$f6
    c.lt.s $f4,$f8
    bc1f .L0d9b7b58
    nop
    # Line 89
    swc1	$f4,1332($a0)
    lwc1	$f5,16($a5)
    mul.s	$f4,$f5,$f6
.L0d9b7b58:
    lwc1	$f12,1336($a0)
    c.lt.s $f12,$f4
    bc1f .L0d9b7b70
    nop
    # Line 91
    swc1	$f4,1336($a0)
    lwc1	$f5,16($a5)
.L0d9b7b70:
    # Line 92
    swc1	$f5,16($a6)
    # Line 93
    lwc1	$f15,20($a5)
    swc1	$f15,20($a6)
    # Line 94
    lwc1	$f14,24($a5)
    swc1	$f14,24($a6)
    # Line 95
    lwc1	$f13,28($a5)
    addiu	$a6,$a6,32
    addiu	$a5,$a5,32
    # Line 87
    beq	$a7,$a2,.L0d9b7aec
    # Line 95
    swc1	$f13,-4($a6)
    # Line 85
    lwc1	$f5,0($a5)
.L0d9b7b9c:
    lwc1	$f16,1332($a0)
    mul.s	$f4,$f5,$f6
    c.lt.s $f4,$f16
    bc1f .L0d9b7b00
    # Line 87
    addiu	$a2,$a2,2
    # Line 89
    swc1	$f4,1332($a0)
    lwc1	$f5,0($a5)
    b	.L0d9b7b00
    mul.s	$f4,$f5,$f6
.end __glSpanMinmaxL

# Function: __glSpanMinmaxLA
# Declared: Line 99 (Source lines: 101-130)
# Address: 0x0d9b7bc0 - 0x0d9b7dbc (Size: 508 bytes, Frame: 0)
.globl __glSpanMinmaxLA
.ent __glSpanMinmaxLA
__glSpanMinmaxLA:
    # Line 114
    lw	$a7,184($a1)
    # Line 101
    move	$a6,$a3
    move	$a5,$a2
    # Line 111
    lwc1	$f7,30868($a0)
    sra	$v0,$a7,0x1
    # Line 110
    lwc1	$f6,30856($a0)
    # Line 114
    blez	$a7,.L0d9b7c88
    andi	$at,$a7,0x1
    move	$a2,$zero
    beqz	$at,.L0d9b7c80
    nop
    lwc1	$f5,0($a5)
    lwc1	$f0,1332($a0)
    mul.s	$f4,$f5,$f6
    c.lt.s	$f4,$f0
    bc1f	.L0d9b7c10
    nop
    # Line 118
    swc1	$f4,1332($a0)
    lwc1	$f5,0($a5)
    mul.s	$f4,$f5,$f6
.L0d9b7c10:
    lwc1	$f1,1340($a0)
    c.lt.s $f1,$f4
    bc1f .L0d9b7c28
    # Line 116
    addiu	$a2,$a2,1
    # Line 120
    swc1	$f4,1340($a0)
    lwc1	$f5,0($a5)
.L0d9b7c28:
    # Line 121
    swc1	$f5,0($a6)
    # Line 122
    lwc1	$f9,4($a5)
    swc1	$f9,4($a6)
    # Line 123
    lwc1	$f8,8($a5)
    swc1	$f8,8($a6)
    lwc1	$f4,12($a5)
    lwc1	$f2,1336($a0)
    mul.s	$f4,$f4,$f7
    c.lt.s $f4,$f2
    bc1f .L0d9b7c60
    # Line 128
    addiu	$a6,$a6,16
    # Line 125
    swc1	$f4,1336($a0)
    lwc1	$f4,12($a5)
    mul.s	$f4,$f4,$f7
.L0d9b7c60:
    lwc1	$f5,1344($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9b7c74
    nop
    # Line 127
    swc1	$f4,1344($a0)
.L0d9b7c74:
    # Line 128
    lwc1	$f8,12($a5)
    addiu	$a5,$a5,16
    swc1	$f8,-4($a6)
.L0d9b7c80:
    bnezl	$v0,.L0d9b7d08
    # Line 114
    lwc1	$f5,0($a5)
.L0d9b7c88:
    # Line 130
    jr	$ra
    nop
.L0d9b7c90:
    # Line 118
    lwc1	$f9,1340($a0)
    c.lt.s $f9,$f4
    bc1f .L0d9b7ca8
    nop
    # Line 120
    swc1	$f4,1340($a0)
    lwc1	$f5,16($a5)
.L0d9b7ca8:
    # Line 121
    swc1	$f5,16($a6)
    # Line 122
    lwc1	$f9,20($a5)
    swc1	$f9,20($a6)
    # Line 123
    lwc1	$f8,24($a5)
    swc1	$f8,24($a6)
    lwc1	$f4,28($a5)
    lwc1	$f10,1336($a0)
    mul.s	$f4,$f4,$f7
    c.lt.s $f4,$f10
    bc1f .L0d9b7ce0
    # Line 128
    addiu	$a6,$a6,32
    # Line 125
    swc1	$f4,1336($a0)
    lwc1	$f4,28($a5)
    mul.s	$f4,$f4,$f7
.L0d9b7ce0:
    lwc1	$f5,1344($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9b7cf4
    nop
    # Line 127
    swc1	$f4,1344($a0)
.L0d9b7cf4:
    # Line 128
    lwc1	$f8,28($a5)
    addiu	$a5,$a5,32
    # Line 116
    beq	$a7,$a2,.L0d9b7c88
    # Line 128
    swc1	$f8,-4($a6)
    # Line 114
    lwc1	$f5,0($a5)
.L0d9b7d08:
    lwc1	$f9,1332($a0)
    mul.s	$f4,$f5,$f6
    c.lt.s $f4,$f9
    bc1f .L0d9b7d28
    nop
    # Line 118
    swc1	$f4,1332($a0)
    lwc1	$f5,0($a5)
    mul.s	$f4,$f5,$f6
.L0d9b7d28:
    lwc1	$f10,1340($a0)
    c.lt.s	$f10,$f4
    bc1f	.L0d9b7d40
    nop
    # Line 120
    swc1	$f4,1340($a0)
    lwc1	$f5,0($a5)
.L0d9b7d40:
    # Line 121
    swc1	$f5,0($a6)
    # Line 122
    lwc1	$f9,4($a5)
    swc1	$f9,4($a6)
    # Line 123
    lwc1	$f8,8($a5)
    swc1	$f8,8($a6)
    lwc1	$f4,12($a5)
    lwc1	$f11,1336($a0)
    mul.s	$f4,$f4,$f7
    c.lt.s $f4,$f11
    bc1f .L0d9b7d78
    nop
    # Line 125
    swc1	$f4,1336($a0)
    lwc1	$f4,12($a5)
    mul.s	$f4,$f4,$f7
.L0d9b7d78:
    lwc1	$f5,1344($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9b7d8c
    # Line 116
    addiu	$a2,$a2,2
    # Line 127
    swc1	$f4,1344($a0)
.L0d9b7d8c:
    # Line 128
    lwc1	$f9,12($a5)
    swc1	$f9,12($a6)
    # Line 114
    lwc1	$f5,16($a5)
    lwc1	$f8,1332($a0)
    mul.s	$f4,$f5,$f6
    c.lt.s $f4,$f8
    bc1f .L0d9b7c90
    nop
    # Line 118
    swc1	$f4,1332($a0)
    lwc1	$f5,16($a5)
    b	.L0d9b7c90
    mul.s	$f4,$f5,$f6
.end __glSpanMinmaxLA

# Function: __glSpanMinmaxRGB
# Declared: Line 132 (Source lines: 134-168)
# Address: 0x0d9b7dc0 - 0x0d9b7ed0 (Size: 272 bytes, Frame: 0)
.globl __glSpanMinmaxRGB
.ent __glSpanMinmaxRGB
__glSpanMinmaxRGB:
    # Line 148
    lw	$a7,184($a1)
    # Line 145
    lwc1	$f8,30864($a0)
    # Line 144
    lwc1	$f9,30860($a0)
    # Line 134
    move	$a6,$a3
    move	$a5,$a2
    # Line 148
    move	$a2,$zero
    blez	$a7,.L0d9b7ec8
    # Line 143
    lwc1	$f7,30856($a0)
    b	.L0d9b7e24
    # Line 148
    lwc1	$f5,0($a5)
    nop
    nop
.L0d9b7df0:
    # Line 162
    lwc1	$f0,1352($a0)
    c.lt.s	$f0,$f4
    bc1f	.L0d9b7e08
    nop
    # Line 164
    swc1	$f4,1352($a0)
    lwc1	$f5,8($a5)
.L0d9b7e08:
    # Line 165
    swc1	$f5,8($a6)
    # Line 166
    lwc1	$f1,12($a5)
    addiu	$a6,$a6,16
    addiu	$a5,$a5,16
    # Line 150
    beq	$a7,$a2,.L0d9b7ec8
    # Line 166
    swc1	$f1,-4($a6)
    # Line 148
    lwc1	$f5,0($a5)
.L0d9b7e24:
    lwc1	$f2,1332($a0)
    mul.s	$f4,$f5,$f7
    c.lt.s $f4,$f2
    bc1f .L0d9b7e44
    nop
    # Line 152
    swc1	$f4,1332($a0)
    lwc1	$f5,0($a5)
    mul.s	$f4,$f5,$f7
.L0d9b7e44:
    lwc1	$f3,1344($a0)
    c.lt.s $f3,$f4
    bc1f .L0d9b7e5c
    nop
    # Line 154
    swc1	$f4,1344($a0)
    lwc1	$f5,0($a5)
.L0d9b7e5c:
    # Line 155
    swc1	$f5,0($a6)
    lwc1	$f6,4($a5)
    lwc1	$f10,1336($a0)
    mul.s	$f4,$f6,$f9
    c.lt.s $f4,$f10
    bc1f .L0d9b7e84
    # Line 150
    addiu	$a2,$a2,1
    # Line 157
    swc1	$f4,1336($a0)
    lwc1	$f6,4($a5)
    mul.s	$f4,$f6,$f9
.L0d9b7e84:
    lwc1	$f11,1348($a0)
    c.lt.s $f11,$f4
    bc1f .L0d9b7e9c
    nop
    # Line 159
    swc1	$f4,1348($a0)
    lwc1	$f6,4($a5)
.L0d9b7e9c:
    # Line 160
    swc1	$f6,4($a6)
    lwc1	$f5,8($a5)
    lwc1	$f12,1340($a0)
    mul.s	$f4,$f5,$f8
    c.lt.s $f4,$f12
    bc1f .L0d9b7df0
    nop
    # Line 162
    swc1	$f4,1340($a0)
    lwc1	$f5,8($a5)
    b	.L0d9b7df0
    mul.s	$f4,$f5,$f8
.L0d9b7ec8:
    # Line 168
    jr	$ra
    nop
.end __glSpanMinmaxRGB

# Function: __glSpanMinmaxRGBA
# Declared: Line 170 (Source lines: 172-211)
# Address: 0x0d9b7ed0 - 0x0d9b8014 (Size: 324 bytes, Frame: 0)
.globl __glSpanMinmaxRGBA
.ent __glSpanMinmaxRGBA
__glSpanMinmaxRGBA:
    # Line 184
    lwc1	$f10,30868($a0)
    # Line 187
    lw	$a7,184($a1)
    # Line 183
    lwc1	$f8,30864($a0)
    # Line 182
    lwc1	$f9,30860($a0)
    # Line 172
    move	$a6,$a3
    move	$a5,$a2
    # Line 187
    blez	$a7,.L0d9b800c
    # Line 181
    lwc1	$f7,30856($a0)
    # Line 187
    move	$a2,$zero
    b	.L0d9b7fe8
    lwc1	$f6,0($a5)
    nop
.L0d9b7f00:
    # Line 191
    lwc1	$f0,1348($a0)
    c.lt.s	$f0,$f4
    bc1f	.L0d9b7f18
    nop
    # Line 193
    swc1	$f4,1348($a0)
    lwc1	$f6,0($a5)
.L0d9b7f18:
    # Line 194
    swc1	$f6,0($a6)
    lwc1	$f5,4($a5)
    lwc1	$f1,1336($a0)
    mul.s	$f4,$f5,$f9
    c.lt.s $f4,$f1
    bc1f .L0d9b7f40
    nop
    # Line 196
    swc1	$f4,1336($a0)
    lwc1	$f5,4($a5)
    mul.s	$f4,$f5,$f9
.L0d9b7f40:
    lwc1	$f2,1352($a0)
    c.lt.s $f2,$f4
    bc1f .L0d9b7f58
    # Line 189
    addiu	$a2,$a2,1
    # Line 198
    swc1	$f4,1352($a0)
    lwc1	$f5,4($a5)
.L0d9b7f58:
    # Line 199
    swc1	$f5,4($a6)
    lwc1	$f6,8($a5)
    lwc1	$f3,1340($a0)
    mul.s	$f4,$f6,$f8
    c.lt.s $f4,$f3
    bc1f .L0d9b7f80
    nop
    # Line 201
    swc1	$f4,1340($a0)
    lwc1	$f6,8($a5)
    mul.s	$f4,$f6,$f8
.L0d9b7f80:
    lwc1	$f5,1356($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9b7f98
    nop
    # Line 203
    swc1	$f4,1356($a0)
    lwc1	$f6,8($a5)
.L0d9b7f98:
    # Line 204
    swc1	$f6,8($a6)
    lwc1	$f4,12($a5)
    lwc1	$f11,1344($a0)
    mul.s	$f4,$f4,$f10
    c.lt.s $f4,$f11
    bc1f .L0d9b7fc0
    # Line 209
    addiu	$a6,$a6,16
    # Line 206
    swc1	$f4,1344($a0)
    lwc1	$f4,12($a5)
    mul.s	$f4,$f4,$f10
.L0d9b7fc0:
    lwc1	$f5,1360($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9b7fd4
    nop
    # Line 208
    swc1	$f4,1360($a0)
.L0d9b7fd4:
    # Line 209
    lwc1	$f6,12($a5)
    addiu	$a5,$a5,16
    # Line 189
    beq	$a7,$a2,.L0d9b800c
    # Line 209
    swc1	$f6,-4($a6)
    # Line 187
    lwc1	$f6,0($a5)
.L0d9b7fe8:
    lwc1	$f11,1332($a0)
    mul.s	$f4,$f6,$f7
    c.lt.s $f4,$f11
    bc1f .L0d9b7f00
    nop
    # Line 191
    swc1	$f4,1332($a0)
    lwc1	$f6,0($a5)
    b	.L0d9b7f00
    mul.s	$f4,$f6,$f7
.L0d9b800c:
    # Line 211
    jr	$ra
    nop
.end __glSpanMinmaxRGBA

# Function: __glSpanMinmaxSinkA
# Declared: Line 220 (Source lines: 230-241)
# Address: 0x0d9b8020 - 0x0d9b8120 (Size: 256 bytes, Frame: 0)
.globl __glSpanMinmaxSinkA
.ent __glSpanMinmaxSinkA
__glSpanMinmaxSinkA:
    # Line 233
    lw	$a5,184($a1)
    # Line 235
    addiu	$a4,$a2,12
    blez	$a5,.L0d9b808c
    # Line 230
    lwc1	$f5,30868($a0)
    # Line 235
    move	$a2,$zero
    andi	$at,$a5,0x1
    sra	$v0,$a5,0x1
    lwc1	$f7,1336($a0)
    beqz	$at,.L0d9b8084
    lwc1	$f6,1332($a0)
    lwc1	$f8,0($a4)
    mul.s	$f8,$f8,$f5
    c.lt.s	$f8,$f6
    addiu	$a2,$a2,1
    bc1f	.L0d9b8070
    mov.s	$f4,$f8
    # Line 237
    swc1	$f8,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f6,$f8
    mul.s	$f4,$f4,$f5
.L0d9b8070:
    c.lt.s $f7,$f4
    bc1f .L0d9b8084
    # Line 235
    addiu	$a4,$a4,16
    # Line 239
    mov.s	$f7,$f4
    swc1	$f4,1336($a0)
.L0d9b8084:
    bnezl	$v0,.L0d9b80c0
    # Line 235
    lwc1	$f8,0($a4)
.L0d9b808c:
    # Line 241
    jr	$ra
    nop
    nop
    nop
    nop
.L0d9b80a0:
    # Line 237
    c.lt.s $f7,$f4
    bc1f .L0d9b80b4
    # Line 235
    addiu	$a4,$a4,32
    # Line 239
    mov.s	$f7,$f4
    swc1	$f4,1336($a0)
.L0d9b80b4:
    # Line 235
    beq	$a5,$a2,.L0d9b808c
    nop
    lwc1	$f8,0($a4)
.L0d9b80c0:
    mul.s	$f8,$f8,$f5
    c.lt.s $f8,$f6
    addiu	$a2,$a2,2
    bc1f .L0d9b80e4
    mov.s	$f4,$f8
    # Line 237
    swc1	$f8,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f6,$f8
    mul.s	$f4,$f4,$f5
.L0d9b80e4:
    c.lt.s $f7,$f4
    bc1f .L0d9b80f8
    nop
    # Line 239
    mov.s	$f7,$f4
    swc1	$f4,1336($a0)
.L0d9b80f8:
    # Line 235
    lwc1	$f8,16($a4)
    mul.s	$f8,$f8,$f5
    c.lt.s $f8,$f6
    bc1f .L0d9b80a0
    mov.s	$f4,$f8
    # Line 237
    swc1	$f8,1332($a0)
    lwc1	$f4,16($a4)
    mov.s	$f6,$f8
    b	.L0d9b80a0
    mul.s	$f4,$f4,$f5
.end __glSpanMinmaxSinkA

# Function: __glSpanMinmaxSinkL
# Declared: Line 244 (Source lines: 246-265)
# Address: 0x0d9b8120 - 0x0d9b8220 (Size: 256 bytes, Frame: 0)
.globl __glSpanMinmaxSinkL
.ent __glSpanMinmaxSinkL
__glSpanMinmaxSinkL:
    # Line 257
    lw	$a5,184($a1)
    # Line 246
    move	$a4,$a2
    # Line 257
    blez	$a5,.L0d9b818c
    # Line 254
    lwc1	$f5,30868($a0)
    # Line 257
    move	$a2,$zero
    andi	$at,$a5,0x1
    sra	$v0,$a5,0x1
    lwc1	$f7,1336($a0)
    beqz	$at,.L0d9b8184
    lwc1	$f6,1332($a0)
    lwc1	$f8,0($a4)
    mul.s	$f8,$f8,$f5
    c.lt.s	$f8,$f6
    # Line 259
    addiu	$a2,$a2,1
    # Line 257
    bc1f	.L0d9b8170
    mov.s	$f4,$f8
    # Line 261
    swc1	$f8,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f6,$f8
    mul.s	$f4,$f4,$f5
.L0d9b8170:
    c.lt.s $f7,$f4
    bc1f .L0d9b8184
    # Line 259
    addiu	$a4,$a4,16
    # Line 263
    mov.s	$f7,$f4
    swc1	$f4,1336($a0)
.L0d9b8184:
    bnezl	$v0,.L0d9b81c0
    # Line 257
    lwc1	$f8,0($a4)
.L0d9b818c:
    # Line 265
    jr	$ra
    nop
    nop
    nop
    nop
.L0d9b81a0:
    # Line 261
    c.lt.s $f7,$f4
    bc1f .L0d9b81b4
    # Line 259
    addiu	$a4,$a4,32
    # Line 263
    mov.s	$f7,$f4
    swc1	$f4,1336($a0)
.L0d9b81b4:
    # Line 259
    beq	$a5,$a2,.L0d9b818c
    nop
    # Line 257
    lwc1	$f8,0($a4)
.L0d9b81c0:
    mul.s	$f8,$f8,$f5
    c.lt.s $f8,$f6
    # Line 259
    addiu	$a2,$a2,2
    # Line 257
    bc1f .L0d9b81e4
    mov.s	$f4,$f8
    # Line 261
    swc1	$f8,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f6,$f8
    mul.s	$f4,$f4,$f5
.L0d9b81e4:
    c.lt.s $f7,$f4
    bc1f .L0d9b81f8
    nop
    # Line 263
    mov.s	$f7,$f4
    swc1	$f4,1336($a0)
.L0d9b81f8:
    # Line 257
    lwc1	$f8,16($a4)
    mul.s	$f8,$f8,$f5
    c.lt.s $f8,$f6
    bc1f .L0d9b81a0
    mov.s	$f4,$f8
    # Line 261
    swc1	$f8,1332($a0)
    lwc1	$f4,16($a4)
    mov.s	$f6,$f8
    b	.L0d9b81a0
    mul.s	$f4,$f4,$f5
.end __glSpanMinmaxSinkL

# Function: __glSpanMinmaxSinkLA
# Declared: Line 268 (Source lines: 270-295)
# Address: 0x0d9b8220 - 0x0d9b82d8 (Size: 184 bytes, Frame: 0)
.globl __glSpanMinmaxSinkLA
.ent __glSpanMinmaxSinkLA
__glSpanMinmaxSinkLA:
    # Line 282
    lw	$a5,184($a1)
    # Line 279
    lwc1	$f5,30868($a0)
    # Line 270
    move	$a4,$a2
    # Line 282
    blez	$a5,.L0d9b82d0
    # Line 278
    lwc1	$f6,30856($a0)
    # Line 282
    move	$a2,$zero
    lwc1	$f9,1344($a0)
    lwc1	$f7,1336($a0)
    lwc1	$f8,1340($a0)
    b	.L0d9b8258
    lwc1	$f10,1332($a0)
    nop
.L0d9b8250:
    # Line 284
    beq	$a5,$a2,.L0d9b82d0
    nop
.L0d9b8258:
    # Line 282
    lwc1	$f11,0($a4)
    mul.s	$f11,$f11,$f6
    c.lt.s	$f11,$f10
    # Line 284
    addiu	$a2,$a2,1
    # Line 282
    bc1f	.L0d9b8280
    mov.s	$f4,$f11
    # Line 286
    swc1	$f11,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f10,$f11
    mul.s	$f4,$f4,$f6
.L0d9b8280:
    c.lt.s $f8,$f4
    bc1f .L0d9b8294
    nop
    # Line 288
    mov.s	$f8,$f4
    swc1	$f4,1340($a0)
.L0d9b8294:
    lwc1	$f11,12($a4)
    mul.s	$f11,$f11,$f5
    c.lt.s $f11,$f7
    bc1f .L0d9b82b8
    mov.s	$f4,$f11
    # Line 291
    swc1	$f11,1336($a0)
    lwc1	$f4,12($a4)
    mov.s	$f7,$f11
    mul.s	$f4,$f4,$f5
.L0d9b82b8:
    c.lt.s $f9,$f4
    bc1f .L0d9b8250
    # Line 284
    addiu	$a4,$a4,16
    # Line 293
    mov.s	$f9,$f4
    b	.L0d9b8250
    swc1	$f4,1344($a0)
.L0d9b82d0:
    # Line 295
    jr	$ra
    nop
.end __glSpanMinmaxSinkLA

# Function: __glSpanMinmaxSinkRGB
# Declared: Line 298 (Source lines: 300-331)
# Address: 0x0d9b82e0 - 0x0d9b83e0 (Size: 256 bytes, Frame: 0)
.globl __glSpanMinmaxSinkRGB
.ent __glSpanMinmaxSinkRGB
__glSpanMinmaxSinkRGB:
    # Line 313
    lw	$a5,184($a1)
    # Line 310
    lwc1	$f6,30864($a0)
    # Line 309
    lwc1	$f5,30860($a0)
    # Line 300
    move	$a4,$a2
    # Line 313
    move	$a2,$zero
    blez	$a5,.L0d9b83d8
    # Line 308
    lwc1	$f7,30856($a0)
    # Line 313
    lwc1	$f13,1352($a0)
    lwc1	$f8,1340($a0)
    lwc1	$f11,1348($a0)
    lwc1	$f12,1336($a0)
    lwc1	$f10,1344($a0)
    b	.L0d9b833c
    lwc1	$f9,1332($a0)
    nop
    nop
.L0d9b8320:
    # Line 327
    c.lt.s	$f13,$f4
    bc1f	.L0d9b8334
    # Line 315
    addiu	$a4,$a4,16
    # Line 329
    mov.s	$f13,$f4
    swc1	$f4,1352($a0)
.L0d9b8334:
    # Line 315
    beq	$a5,$a2,.L0d9b83d8
    nop
.L0d9b833c:
    # Line 313
    lwc1	$f14,0($a4)
    mul.s	$f14,$f14,$f7
    c.lt.s $f14,$f9
    bc1f .L0d9b8360
    mov.s	$f4,$f14
    # Line 317
    swc1	$f14,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f9,$f14
    mul.s	$f4,$f4,$f7
.L0d9b8360:
    c.lt.s $f10,$f4
    bc1f .L0d9b8374
    nop
    # Line 319
    mov.s	$f10,$f4
    swc1	$f4,1344($a0)
.L0d9b8374:
    lwc1	$f14,4($a4)
    mul.s	$f14,$f14,$f5
    c.lt.s $f14,$f12
    # Line 315
    addiu	$a2,$a2,1
    # Line 319
    bc1f .L0d9b839c
    mov.s	$f4,$f14
    # Line 322
    swc1	$f14,1336($a0)
    lwc1	$f4,4($a4)
    mov.s	$f12,$f14
    mul.s	$f4,$f4,$f5
.L0d9b839c:
    c.lt.s $f11,$f4
    bc1f .L0d9b83b0
    nop
    # Line 324
    mov.s	$f11,$f4
    swc1	$f4,1348($a0)
.L0d9b83b0:
    lwc1	$f14,8($a4)
    mul.s	$f14,$f14,$f6
    c.lt.s $f14,$f8
    bc1f .L0d9b8320
    mov.s	$f4,$f14
    # Line 327
    swc1	$f14,1340($a0)
    lwc1	$f4,8($a4)
    mov.s	$f8,$f14
    b	.L0d9b8320
    mul.s	$f4,$f4,$f6
.L0d9b83d8:
    # Line 331
    jr	$ra
    nop
.end __glSpanMinmaxSinkRGB

# Function: __glSpanMinmaxSinkRGBA
# Declared: Line 334 (Source lines: 336-373)
# Address: 0x0d9b83e0 - 0x0d9b8524 (Size: 324 bytes, Frame: 0)
.globl __glSpanMinmaxSinkRGBA
.ent __glSpanMinmaxSinkRGBA
__glSpanMinmaxSinkRGBA:
    # Line 347
    lwc1	$f7,30868($a0)
    # Line 350
    lw	$a5,184($a1)
    # Line 346
    lwc1	$f8,30864($a0)
    # Line 345
    lwc1	$f5,30860($a0)
    # Line 336
    move	$a4,$a2
    # Line 350
    move	$a2,$zero
    blez	$a5,.L0d9b851c
    # Line 344
    lwc1	$f6,30856($a0)
    # Line 350
    lwc1	$f11,1360($a0)
    lwc1	$f13,1344($a0)
    lwc1	$f16,1356($a0)
    lwc1	$f14,1340($a0)
    lwc1	$f12,1352($a0)
    lwc1	$f10,1336($a0)
    lwc1	$f15,1348($a0)
    b	.L0d9b84f4
    lwc1	$f9,1332($a0)
    nop
    nop
    nop
.L0d9b8430:
    # Line 354
    c.lt.s	$f15,$f4
    bc1f	.L0d9b8444
    nop
    # Line 356
    mov.s	$f15,$f4
    swc1	$f4,1348($a0)
.L0d9b8444:
    lwc1	$f17,4($a4)
    mul.s	$f17,$f17,$f5
    c.lt.s $f17,$f10
    bc1f .L0d9b8468
    mov.s	$f4,$f17
    # Line 359
    swc1	$f17,1336($a0)
    lwc1	$f4,4($a4)
    mov.s	$f10,$f17
    mul.s	$f4,$f4,$f5
.L0d9b8468:
    c.lt.s $f12,$f4
    bc1f .L0d9b847c
    # Line 352
    addiu	$a2,$a2,1
    # Line 361
    mov.s	$f12,$f4
    swc1	$f4,1352($a0)
.L0d9b847c:
    lwc1	$f17,8($a4)
    mul.s	$f17,$f17,$f8
    c.lt.s $f17,$f14
    bc1f .L0d9b84a0
    mov.s	$f4,$f17
    # Line 364
    swc1	$f17,1340($a0)
    lwc1	$f4,8($a4)
    mov.s	$f14,$f17
    mul.s	$f4,$f4,$f8
.L0d9b84a0:
    c.lt.s $f16,$f4
    bc1f .L0d9b84b4
    nop
    # Line 366
    mov.s	$f16,$f4
    swc1	$f4,1356($a0)
.L0d9b84b4:
    lwc1	$f17,12($a4)
    mul.s	$f17,$f17,$f7
    c.lt.s $f17,$f13
    bc1f .L0d9b84d8
    mov.s	$f4,$f17
    # Line 369
    swc1	$f17,1344($a0)
    lwc1	$f4,12($a4)
    mov.s	$f13,$f17
    mul.s	$f4,$f4,$f7
.L0d9b84d8:
    c.lt.s $f11,$f4
    bc1f .L0d9b84ec
    # Line 352
    addiu	$a4,$a4,16
    # Line 371
    mov.s	$f11,$f4
    swc1	$f4,1360($a0)
.L0d9b84ec:
    # Line 352
    beq	$a5,$a2,.L0d9b851c
    nop
.L0d9b84f4:
    # Line 350
    lwc1	$f17,0($a4)
    mul.s	$f17,$f17,$f6
    c.lt.s $f17,$f9
    bc1f .L0d9b8430
    mov.s	$f4,$f17
    # Line 354
    swc1	$f17,1332($a0)
    lwc1	$f4,0($a4)
    mov.s	$f9,$f17
    b	.L0d9b8430
    mul.s	$f4,$f4,$f6
.L0d9b851c:
    # Line 373
    jr	$ra
    nop
.end __glSpanMinmaxSinkRGBA

# Function: __glSpanHistogramA
# Declared: Line 376 (Source lines: 378-399)
# Address: 0x0d9b8530 - 0x0d9b871c (Size: 492 bytes, Frame: 208)
.globl __glSpanHistogramA
.ent __glSpanHistogramA
__glSpanHistogramA:
    # Line 378
    addiu	$sp,$sp,-80
    sdc1	$f20,0($sp)
    sd	$s3,8($sp)
    sd	$s0,24($sp)
    sd	$s4,16($sp)
    move	$s0,$a3
    # Line 390
    lw	$s4,184($a1)
    # Line 378
    move	$s3,$a0
    sd	$s1,32($sp)
    lui	$at,0xe
    move	$s1,$a2
    # Line 387
    lwc1	$f20,30868($a0)
    # Line 378
    addiu	$at,$at,-30040
    sd	$gp,40($sp)
    # Line 390
    blez	$s4,.L0d9b86fc
    # Line 378
    addu	$gp,$t9,$at
    andi	$v0,$s4,0x1
    sd	$ra,56($sp)
    sdc1	$f22,64($sp)
    sd	$s2,48($sp)
    # Line 390
    move	$s2,$zero
    beqz	$v0,.L0d9b8600
    ldc1	$f22,_lit8_3fe0000000000000
    # Line 393
    lwc1	$f15,0($a2)
    swc1	$f15,0($a3)
    # Line 394
    lwc1	$f14,4($a2)
    swc1	$f14,4($a3)
    # Line 395
    lwc1	$f13,8($a2)
    # Line 396
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 395
    swc1	$f13,8($a3)
    # Line 396
    lwc1	$f12,12($a2)
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a2,1284($s3)
    mtc1	$a2,$f17
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f22
    trunc.w.d	$f17,$f17
    mfc1	$a1,$f17
    lw	$a0,1244($s3)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
    # Line 397
    lwc1	$f16,12($s1)
    addiu	$s0,$s0,16
    # Line 392
    addiu	$s2,$s2,1
    # Line 397
    addiu	$s1,$s1,16
    swc1	$f16,-4($s0)
.L0d9b8600:
    sra	$a3,$s4,0x1
    beqz	$a3,.L0d9b86f0
    nop
    nop
.L0d9b8610:
    # Line 393
    lwc1	$f15,0($s1)
    swc1	$f15,0($s0)
    # Line 394
    lwc1	$f14,4($s1)
    swc1	$f14,4($s0)
    # Line 395
    lwc1	$f13,8($s1)
    # Line 396
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 395
    swc1	$f13,8($s0)
    # Line 396
    lwc1	$f12,12($s1)
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a7,1284($s3)
    mtc1	$a7,$f17
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f22
    trunc.w.d	$f17,$f17
    mfc1	$a6,$f17
    lw	$a5,1244($s3)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lw	$a4,0($a5)
    addiu	$a4,$a4,1
    sw	$a4,0($a5)
    # Line 397
    lwc1	$f16,12($s1)
    swc1	$f16,12($s0)
    # Line 393
    lwc1	$f15,16($s1)
    swc1	$f15,16($s0)
    # Line 394
    lwc1	$f14,20($s1)
    swc1	$f14,20($s0)
    # Line 395
    lwc1	$f13,24($s1)
    # Line 396
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 395
    swc1	$f13,24($s0)
    # Line 396
    lwc1	$f12,28($s1)
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$t3,1284($s3)
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    mul.s	$f19,$f19,$f0
    cvt.d.s	$f19,$f19
    add.d	$f19,$f19,$f22
    trunc.w.d	$f19,$f19
    mfc1	$t2,$f19
    lw	$t1,1244($s3)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t0,0($t1)
    addiu	$t0,$t0,1
    sw	$t0,0($t1)
    # Line 392
    addiu	$s2,$s2,2
    # Line 397
    lwc1	$f18,28($s1)
    addiu	$s0,$s0,32
    addiu	$s1,$s1,32
    # Line 392
    bne	$s4,$s2,.L0d9b8610
    # Line 397
    swc1	$f18,-4($s0)
.L0d9b86f0:
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ldc1	$f22,64($sp)
.L0d9b86fc:
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ldc1	$f20,0($sp)
    # Line 399
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanHistogramA

# Function: __glSpanHistogramL
# Declared: Line 401 (Source lines: 403-424)
# Address: 0x0d9b8720 - 0x0d9b890c (Size: 492 bytes, Frame: 208)
.globl __glSpanHistogramL
.ent __glSpanHistogramL
__glSpanHistogramL:
    # Line 403
    addiu	$sp,$sp,-80
    sdc1	$f20,0($sp)
    sd	$s3,8($sp)
    sd	$s1,32($sp)
    sd	$s4,16($sp)
    move	$s1,$a3
    # Line 415
    lw	$s4,184($a1)
    # Line 403
    move	$s3,$a0
    sd	$s0,24($sp)
    lui	$at,0xe
    move	$s0,$a2
    # Line 412
    lwc1	$f20,30856($a0)
    # Line 403
    addiu	$at,$at,-30536
    sd	$gp,40($sp)
    # Line 415
    blez	$s4,.L0d9b88ec
    # Line 403
    addu	$gp,$t9,$at
    andi	$v0,$s4,0x1
    sd	$ra,56($sp)
    sdc1	$f22,64($sp)
    sd	$s2,48($sp)
    # Line 415
    move	$s2,$zero
    beqz	$v0,.L0d9b87f0
    ldc1	$f22,_lit8_3fe0000000000000
    # Line 418
    lwc1	$f12,0($a2)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a2,1284($s3)
    mtc1	$a2,$f17
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f22
    trunc.w.d	$f17,$f17
    mfc1	$a1,$f17
    lw	$a0,1244($s3)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
    # Line 419
    lwc1	$f16,0($s0)
    swc1	$f16,0($s1)
    # Line 420
    lwc1	$f15,4($s0)
    swc1	$f15,4($s1)
    # Line 421
    lwc1	$f14,8($s0)
    swc1	$f14,8($s1)
    # Line 422
    lwc1	$f13,12($s0)
    addiu	$s1,$s1,16
    # Line 417
    addiu	$s2,$s2,1
    # Line 422
    addiu	$s0,$s0,16
    swc1	$f13,-4($s1)
.L0d9b87f0:
    sra	$a3,$s4,0x1
    beqz	$a3,.L0d9b88e0
    nop
    nop
.L0d9b8800:
    # Line 418
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a7,1284($s3)
    mtc1	$a7,$f17
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f22
    trunc.w.d	$f17,$f17
    mfc1	$a6,$f17
    lw	$a5,1244($s3)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lw	$a4,0($a5)
    addiu	$a4,$a4,1
    sw	$a4,0($a5)
    # Line 419
    lwc1	$f16,0($s0)
    swc1	$f16,0($s1)
    # Line 420
    lwc1	$f15,4($s0)
    swc1	$f15,4($s1)
    # Line 421
    lwc1	$f14,8($s0)
    swc1	$f14,8($s1)
    # Line 422
    lwc1	$f13,12($s0)
    # Line 418
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 422
    swc1	$f13,12($s1)
    # Line 418
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$t3,1284($s3)
    mtc1	$t3,$f25
    cvt.s.w	$f25,$f25
    mul.s	$f25,$f25,$f0
    cvt.d.s	$f25,$f25
    add.d	$f25,$f25,$f22
    trunc.w.d	$f25,$f25
    mfc1	$t2,$f25
    lw	$t1,1244($s3)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t0,0($t1)
    addiu	$t0,$t0,1
    sw	$t0,0($t1)
    # Line 419
    lwc1	$f23,16($s0)
    swc1	$f23,16($s1)
    # Line 420
    lwc1	$f21,20($s0)
    swc1	$f21,20($s1)
    # Line 421
    lwc1	$f19,24($s0)
    swc1	$f19,24($s1)
    # Line 417
    addiu	$s2,$s2,2
    # Line 422
    lwc1	$f18,28($s0)
    addiu	$s1,$s1,32
    addiu	$s0,$s0,32
    # Line 417
    bne	$s4,$s2,.L0d9b8800
    # Line 422
    swc1	$f18,-4($s1)
.L0d9b88e0:
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ldc1	$f22,64($sp)
.L0d9b88ec:
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ldc1	$f20,0($sp)
    # Line 424
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanHistogramL

# Function: __glSpanHistogramLA
# Declared: Line 426 (Source lines: 428-451)
# Address: 0x0d9b8910 - 0x0d9b8a68 (Size: 344 bytes, Frame: 208)
.globl __glSpanHistogramLA
.ent __glSpanHistogramLA
__glSpanHistogramLA:
    # Line 428
    addiu	$sp,$sp,-80
    sdc1	$f24,8($sp)
    # Line 438
    lwc1	$f24,30868($a0)
    # Line 428
    sdc1	$f22,0($sp)
    sd	$s2,16($sp)
    sd	$s1,40($sp)
    sd	$s4,24($sp)
    move	$s1,$a3
    # Line 441
    lw	$s4,184($a1)
    # Line 428
    move	$s2,$a0
    sd	$s0,32($sp)
    lui	$at,0xe
    move	$s0,$a2
    # Line 437
    lwc1	$f22,30856($a0)
    # Line 428
    addiu	$at,$at,-31032
    sd	$gp,48($sp)
    # Line 441
    blez	$s4,.L0d9b8a44
    # Line 428
    addu	$gp,$t9,$at
    sd	$ra,64($sp)
    sdc1	$f20,72($sp)
    sd	$s3,56($sp)
    # Line 441
    move	$s3,$zero
    ldc1	$f20,_lit8_3fe0000000000000
    nop
.L0d9b8970:
    # Line 444
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f22
    lw	$a1,1284($s2)
    mtc1	$a1,$f16
    cvt.s.w	$f16,$f16
    mul.s	$f16,$f16,$f0
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f20
    trunc.w.d	$f16,$f16
    mfc1	$a0,$f16
    lw	$v1,1244($s2)
    addu	$a0,$a0,$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 445
    lwc1	$f15,0($s0)
    swc1	$f15,0($s1)
    # Line 446
    lwc1	$f14,4($s0)
    swc1	$f14,4($s1)
    # Line 447
    lwc1	$f13,8($s0)
    # Line 448
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 447
    swc1	$f13,8($s1)
    # Line 448
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a5,1284($s2)
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    mul.s	$f18,$f18,$f0
    cvt.d.s	$f18,$f18
    add.d	$f18,$f18,$f20
    trunc.w.d	$f18,$f18
    mfc1	$a4,$f18
    lw	$a3,1244($s2)
    addu	$a4,$a4,$a4
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a2,4($a3)
    addiu	$a2,$a2,1
    sw	$a2,4($a3)
    # Line 443
    addiu	$s3,$s3,1
    # Line 449
    lwc1	$f17,12($s0)
    addiu	$s1,$s1,16
    addiu	$s0,$s0,16
    # Line 443
    bne	$s4,$s3,.L0d9b8970
    # Line 449
    swc1	$f17,-4($s1)
    ld	$s3,56($sp)
    ld	$ra,64($sp)
    ldc1	$f20,72($sp)
.L0d9b8a44:
    ld	$s2,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,8($sp)
    # Line 451
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanHistogramLA

# Function: __glSpanHistogramRGB
# Declared: Line 453 (Source lines: 455-480)
# Address: 0x0d9b8a70 - 0x0d9b8c34 (Size: 452 bytes, Frame: 224)
.globl __glSpanHistogramRGB
.ent __glSpanHistogramRGB
__glSpanHistogramRGB:
    # Line 455
    addiu	$sp,$sp,-96
    sdc1	$f26,0($sp)
    # Line 466
    lwc1	$f26,30864($a0)
    # Line 455
    sdc1	$f22,8($sp)
    # Line 465
    lwc1	$f22,30860($a0)
    # Line 455
    sdc1	$f24,16($sp)
    sd	$s2,24($sp)
    sd	$s1,48($sp)
    sd	$s4,32($sp)
    move	$s1,$a3
    # Line 469
    lw	$s4,184($a1)
    # Line 455
    move	$s2,$a0
    sd	$s0,40($sp)
    lui	$at,0xe
    move	$s0,$a2
    # Line 464
    lwc1	$f24,30856($a0)
    # Line 455
    addiu	$at,$at,-31384
    sd	$gp,56($sp)
    # Line 469
    blez	$s4,.L0d9b8c0c
    # Line 455
    addu	$gp,$t9,$at
    sd	$ra,72($sp)
    sdc1	$f20,80($sp)
    sd	$s3,64($sp)
    # Line 469
    move	$s3,$zero
    ldc1	$f20,_lit8_3fe0000000000000
    nop
    nop
    nop
.L0d9b8ae0:
    # Line 472
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a2,1284($s2)
    mtc1	$a2,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$a1,$f14
    sll	$a0,$a1,0x2
    lw	$v1,1244($s2)
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 473
    lwc1	$f13,0($s0)
    # Line 474
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 473
    swc1	$f13,0($s1)
    # Line 474
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f22
    lw	$a7,1284($s2)
    mtc1	$a7,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$a6,$f14
    sll	$a5,$a6,0x2
    lw	$a4,1244($s2)
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a3,4($a4)
    addiu	$a3,$a3,1
    sw	$a3,4($a4)
    # Line 475
    lwc1	$f13,4($s0)
    # Line 476
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 475
    swc1	$f13,4($s1)
    # Line 476
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    lw	$t8,1284($s2)
    mtc1	$t8,$f17
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f20
    trunc.w.d	$f17,$f17
    mfc1	$t3,$f17
    sll	$t2,$t3,0x2
    lw	$t1,1244($s2)
    subu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t0,8($t1)
    addiu	$t0,$t0,1
    sw	$t0,8($t1)
    # Line 477
    lwc1	$f16,8($s0)
    swc1	$f16,8($s1)
    # Line 471
    addiu	$s3,$s3,1
    # Line 478
    lwc1	$f15,12($s0)
    addiu	$s1,$s1,16
    addiu	$s0,$s0,16
    # Line 471
    bne	$s4,$s3,.L0d9b8ae0
    # Line 478
    swc1	$f15,-4($s1)
    ld	$s3,64($sp)
    ld	$ra,72($sp)
    ldc1	$f20,80($sp)
.L0d9b8c0c:
    ld	$s2,24($sp)
    ld	$s4,32($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ldc1	$f26,0($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,16($sp)
    # Line 480
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanHistogramRGB

# Function: __glSpanHistogramRGBA
# Declared: Line 482 (Source lines: 484-511)
# Address: 0x0d9b8c40 - 0x0d9b8e38 (Size: 504 bytes, Frame: 224)
.globl __glSpanHistogramRGBA
.ent __glSpanHistogramRGBA
__glSpanHistogramRGBA:
    # Line 484
    addiu	$sp,$sp,-96
    sdc1	$f28,24($sp)
    # Line 496
    lwc1	$f28,30868($a0)
    # Line 484
    sdc1	$f22,8($sp)
    # Line 495
    lwc1	$f22,30864($a0)
    # Line 484
    sdc1	$f24,16($sp)
    # Line 494
    lwc1	$f24,30860($a0)
    # Line 484
    sdc1	$f26,0($sp)
    sd	$s2,32($sp)
    sd	$s1,56($sp)
    sd	$s4,40($sp)
    move	$s1,$a3
    # Line 499
    lw	$s4,184($a1)
    # Line 484
    move	$s2,$a0
    sd	$s0,48($sp)
    lui	$at,0xe
    move	$s0,$a2
    # Line 493
    lwc1	$f26,30856($a0)
    # Line 484
    addiu	$at,$at,-31848
    sd	$gp,64($sp)
    # Line 499
    blez	$s4,.L0d9b8e0c
    # Line 484
    addu	$gp,$t9,$at
    sd	$ra,80($sp)
    sdc1	$f20,88($sp)
    sd	$s3,72($sp)
    # Line 499
    move	$s3,$zero
    ldc1	$f20,_lit8_3fe0000000000000
    nop
.L0d9b8cb0:
    # Line 502
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    lw	$a1,1284($s2)
    mtc1	$a1,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$a0,$f14
    lw	$v1,1244($s2)
    sll	$a0,$a0,0x4
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 503
    lwc1	$f13,0($s0)
    # Line 504
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 503
    swc1	$f13,0($s1)
    # Line 504
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a5,1284($s2)
    mtc1	$a5,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$a4,$f14
    lw	$a3,1244($s2)
    sll	$a4,$a4,0x4
    addu	$a3,$a3,$a4
    lw	$a2,4($a3)
    addiu	$a2,$a2,1
    sw	$a2,4($a3)
    # Line 505
    lwc1	$f13,4($s0)
    # Line 506
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 505
    swc1	$f13,4($s1)
    # Line 506
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f22
    lw	$t1,1284($s2)
    mtc1	$t1,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$t0,$f14
    lw	$a7,1244($s2)
    sll	$t0,$t0,0x4
    addu	$a7,$a7,$t0
    lw	$a6,8($a7)
    addiu	$a6,$a6,1
    sw	$a6,8($a7)
    # Line 507
    lwc1	$f13,8($s0)
    # Line 508
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 507
    swc1	$f13,8($s1)
    # Line 508
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$t9,1284($s2)
    mtc1	$t9,$f16
    cvt.s.w	$f16,$f16
    mul.s	$f16,$f16,$f0
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f20
    trunc.w.d	$f16,$f16
    mfc1	$t8,$f16
    lw	$t3,1244($s2)
    sll	$t8,$t8,0x4
    addu	$t3,$t3,$t8
    lw	$t2,12($t3)
    addiu	$t2,$t2,1
    sw	$t2,12($t3)
    # Line 501
    addiu	$s3,$s3,1
    # Line 509
    lwc1	$f15,12($s0)
    addiu	$s1,$s1,16
    addiu	$s0,$s0,16
    # Line 501
    bne	$s4,$s3,.L0d9b8cb0
    # Line 509
    swc1	$f15,-4($s1)
    ld	$s3,72($sp)
    ld	$ra,80($sp)
    ldc1	$f20,88($sp)
.L0d9b8e0c:
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ldc1	$f26,0($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,16($sp)
    ldc1	$f28,24($sp)
    # Line 511
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanHistogramRGBA

# Function: __glSpanHistogramSinkA
# Declared: Line 515 (Source lines: 517-533)
# Address: 0x0d9b8e40 - 0x0d9b8fb4 (Size: 372 bytes, Frame: 192)
.globl __glSpanHistogramSinkA
.ent __glSpanHistogramSinkA
__glSpanHistogramSinkA:
    # Line 517
    addiu	$sp,$sp,-64
    sdc1	$f20,0($sp)
    sd	$s0,24($sp)
    sd	$s3,16($sp)
    lui	$at,0xe
    # Line 528
    lw	$s3,184($a1)
    # Line 530
    addiu	$s0,$a2,12
    # Line 517
    sd	$s2,8($sp)
    addiu	$at,$at,-32360
    move	$s2,$a0
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 525
    lwc1	$f20,30868($a0)
    # Line 530
    blez	$s3,.L0d9b8f98
    andi	$v0,$s3,0x1
    sd	$ra,40($sp)
    sdc1	$f22,56($sp)
    sd	$s1,48($sp)
    move	$s1,$zero
    beqz	$v0,.L0d9b8ee4
    ldc1	$f22,_lit8_3fe0000000000000
    # Line 531
    lwc1	$f12,12($a2)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a2,1284($s2)
    mtc1	$a2,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a1,$f13
    lw	$a0,1244($s2)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    # Line 530
    addiu	$s0,$s0,16
    addiu	$s1,$s1,1
    # Line 531
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
.L0d9b8ee4:
    sra	$a3,$s3,0x1
    beqz	$a3,.L0d9b8f90
    ld	$ra,40($sp)
.L0d9b8ef0:
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a7,1284($s2)
    mtc1	$a7,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a6,$f13
    lw	$a5,1244($s2)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lw	$a4,0($a5)
    # lw $t9, -29464($gp) # &__glFClamp
    addiu	$a4,$a4,1
    sw	$a4,0($a5)
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$t3,1284($s2)
    mtc1	$t3,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$t2,$f14
    lw	$t1,1244($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    # Line 530
    addiu	$s1,$s1,2
    # Line 531
    lw	$t0,0($t1)
    # Line 530
    addiu	$s0,$s0,32
    # Line 531
    addiu	$t0,$t0,1
    # Line 530
    bne	$s3,$s1,.L0d9b8ef0
    # Line 531
    sw	$t0,0($t1)
    ld	$ra,40($sp)
.L0d9b8f90:
    ld	$s1,48($sp)
    ldc1	$f22,56($sp)
.L0d9b8f98:
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s0,24($sp)
    ldc1	$f20,0($sp)
    # Line 533
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSpanHistogramSinkA

# Function: __glSpanHistogramSinkL
# Declared: Line 536 (Source lines: 538-554)
# Address: 0x0d9b8fc0 - 0x0d9b9134 (Size: 372 bytes, Frame: 192)
.globl __glSpanHistogramSinkL
.ent __glSpanHistogramSinkL
__glSpanHistogramSinkL:
    # Line 538
    addiu	$sp,$sp,-64
    sdc1	$f20,0($sp)
    sd	$s2,8($sp)
    sd	$s3,16($sp)
    lui	$at,0xe
    # Line 549
    lw	$s3,184($a1)
    # Line 538
    move	$s2,$a0
    sd	$s0,24($sp)
    addiu	$at,$at,-32744
    move	$s0,$a2
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 546
    lwc1	$f20,30856($a0)
    # Line 549
    blez	$s3,.L0d9b9118
    andi	$v0,$s3,0x1
    sd	$ra,40($sp)
    sdc1	$f22,56($sp)
    sd	$s1,48($sp)
    move	$s1,$zero
    beqz	$v0,.L0d9b9064
    ldc1	$f22,_lit8_3fe0000000000000
    # Line 552
    lwc1	$f12,0($a2)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a2,1284($s2)
    mtc1	$a2,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a1,$f13
    lw	$a0,1244($s2)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    # Line 551
    addiu	$s0,$s0,16
    addiu	$s1,$s1,1
    # Line 552
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
.L0d9b9064:
    sra	$a3,$s3,0x1
    beqz	$a3,.L0d9b9110
    ld	$ra,40($sp)
.L0d9b9070:
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$a7,1284($s2)
    mtc1	$a7,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a6,$f13
    lw	$a5,1244($s2)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lw	$a4,0($a5)
    # lw $t9, -29464($gp) # &__glFClamp
    addiu	$a4,$a4,1
    sw	$a4,0($a5)
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f20
    lw	$t3,1284($s2)
    mtc1	$t3,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$t2,$f14
    lw	$t1,1244($s2)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    # Line 551
    addiu	$s1,$s1,2
    # Line 552
    lw	$t0,0($t1)
    # Line 551
    addiu	$s0,$s0,32
    # Line 552
    addiu	$t0,$t0,1
    # Line 551
    bne	$s3,$s1,.L0d9b9070
    # Line 552
    sw	$t0,0($t1)
    ld	$ra,40($sp)
.L0d9b9110:
    ld	$s1,48($sp)
    ldc1	$f22,56($sp)
.L0d9b9118:
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s0,24($sp)
    ldc1	$f20,0($sp)
    # Line 554
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSpanHistogramSinkL

# Function: __glSpanHistogramSinkLA
# Declared: Line 557 (Source lines: 559-578)
# Address: 0x0d9b9140 - 0x0d9b9270 (Size: 304 bytes, Frame: 208)
.globl __glSpanHistogramSinkLA
.ent __glSpanHistogramSinkLA
__glSpanHistogramSinkLA:
    # Line 559
    addiu	$sp,$sp,-80
    sdc1	$f24,8($sp)
    # Line 568
    lwc1	$f24,30868($a0)
    # Line 559
    sdc1	$f22,0($sp)
    sd	$s1,32($sp)
    sd	$s3,16($sp)
    # Line 571
    lw	$s3,184($a1)
    # Line 559
    move	$s1,$a0
    sd	$s0,24($sp)
    lui	$at,0xd
    move	$s0,$a2
    # Line 567
    lwc1	$f22,30856($a0)
    # Line 559
    addiu	$at,$at,32408
    sd	$gp,40($sp)
    # Line 571
    blez	$s3,.L0d9b9250
    # Line 559
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sdc1	$f20,64($sp)
    sd	$s2,56($sp)
    # Line 571
    move	$s2,$zero
    ldc1	$f20,_lit8_3fe0000000000000
    nop
    nop
    nop
.L0d9b91a0:
    # Line 574
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f22
    lw	$a1,1284($s1)
    mtc1	$a1,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    mfc1	$a0,$f13
    lw	$v1,1244($s1)
    addu	$a0,$a0,$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    # Line 576
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 574
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 576
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a5,1284($s1)
    mtc1	$a5,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$a4,$f14
    lw	$a3,1244($s1)
    addu	$a4,$a4,$a4
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    # Line 573
    addiu	$s2,$s2,1
    # Line 576
    lw	$a2,4($a3)
    # Line 573
    addiu	$s0,$s0,16
    # Line 576
    addiu	$a2,$a2,1
    # Line 573
    bne	$s3,$s2,.L0d9b91a0
    # Line 576
    sw	$a2,4($a3)
    ld	$ra,48($sp)
    ld	$s2,56($sp)
    ldc1	$f20,64($sp)
.L0d9b9250:
    ld	$s3,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,8($sp)
    # Line 578
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanHistogramSinkLA

# Function: __glSpanHistogramSinkRGB
# Declared: Line 581 (Source lines: 583-603)
# Address: 0x0d9b9270 - 0x0d9b93fc (Size: 396 bytes, Frame: 208)
.globl __glSpanHistogramSinkRGB
.ent __glSpanHistogramSinkRGB
__glSpanHistogramSinkRGB:
    # Line 583
    addiu	$sp,$sp,-80
    sdc1	$f26,0($sp)
    # Line 593
    lwc1	$f26,30864($a0)
    # Line 583
    sdc1	$f22,8($sp)
    # Line 592
    lwc1	$f22,30860($a0)
    # Line 583
    sdc1	$f24,16($sp)
    sd	$s1,40($sp)
    sd	$s3,24($sp)
    # Line 596
    lw	$s3,184($a1)
    # Line 583
    move	$s1,$a0
    sd	$s0,32($sp)
    lui	$at,0xd
    move	$s0,$a2
    # Line 591
    lwc1	$f24,30856($a0)
    # Line 583
    addiu	$at,$at,32104
    sd	$gp,48($sp)
    # Line 596
    blez	$s3,.L0d9b93d8
    # Line 583
    addu	$gp,$t9,$at
    sd	$ra,56($sp)
    sdc1	$f20,72($sp)
    sd	$s2,64($sp)
    # Line 596
    move	$s2,$zero
    ldc1	$f20,_lit8_3fe0000000000000
    nop
.L0d9b92d0:
    # Line 599
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a2,1284($s1)
    mtc1	$a2,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    mfc1	$a1,$f13
    sll	$a0,$a1,0x2
    lw	$v1,1244($s1)
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    # Line 600
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 599
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 600
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f22
    lw	$a7,1284($s1)
    mtc1	$a7,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    mfc1	$a6,$f13
    sll	$a5,$a6,0x2
    lw	$a4,1244($s1)
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a3,4($a4)
    # Line 601
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 600
    addiu	$a3,$a3,1
    sw	$a3,4($a4)
    # Line 601
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    lw	$t8,1284($s1)
    mtc1	$t8,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$t3,$f14
    sll	$t2,$t3,0x2
    lw	$t1,1244($s1)
    subu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    # Line 598
    addiu	$s2,$s2,1
    # Line 601
    lw	$t0,8($t1)
    # Line 598
    addiu	$s0,$s0,16
    # Line 601
    addiu	$t0,$t0,1
    # Line 598
    bne	$s3,$s2,.L0d9b92d0
    # Line 601
    sw	$t0,8($t1)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ldc1	$f20,72($sp)
.L0d9b93d8:
    ld	$s3,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ldc1	$f26,0($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,16($sp)
    # Line 603
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanHistogramSinkRGB

# Function: __glSpanHistogramSinkRGBA
# Declared: Line 606 (Source lines: 608-630)
# Address: 0x0d9b9400 - 0x0d9b95d0 (Size: 464 bytes, Frame: 224)
.globl __glSpanHistogramSinkRGBA
.ent __glSpanHistogramSinkRGBA
__glSpanHistogramSinkRGBA:
    # Line 608
    addiu	$sp,$sp,-96
    sdc1	$f28,24($sp)
    # Line 619
    lwc1	$f28,30868($a0)
    # Line 608
    sdc1	$f22,8($sp)
    # Line 618
    lwc1	$f22,30864($a0)
    # Line 608
    sdc1	$f24,16($sp)
    # Line 617
    lwc1	$f24,30860($a0)
    # Line 608
    sdc1	$f26,0($sp)
    sd	$s1,48($sp)
    sd	$s3,32($sp)
    # Line 622
    lw	$s3,184($a1)
    # Line 608
    move	$s1,$a0
    sd	$s0,40($sp)
    lui	$at,0xd
    move	$s0,$a2
    # Line 616
    lwc1	$f26,30856($a0)
    # Line 608
    addiu	$at,$at,31704
    sd	$gp,56($sp)
    # Line 622
    blez	$s3,.L0d9b95a8
    # Line 608
    addu	$gp,$t9,$at
    sd	$ra,64($sp)
    sdc1	$f20,80($sp)
    sd	$s2,72($sp)
    # Line 622
    move	$s2,$zero
    ldc1	$f20,_lit8_3fe0000000000000
    nop
    nop
    nop
.L0d9b9470:
    # Line 625
    lwc1	$f12,0($s0)
    # lw $t9, -29464($gp) # &__glFClamp
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    lw	$a1,1284($s1)
    mtc1	$a1,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    mfc1	$a0,$f13
    lw	$v1,1244($s1)
    sll	$a0,$a0,0x4
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    # Line 626
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 625
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 626
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a5,1284($s1)
    mtc1	$a5,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    mfc1	$a4,$f13
    lw	$a3,1244($s1)
    sll	$a4,$a4,0x4
    addu	$a3,$a3,$a4
    lw	$a2,4($a3)
    # Line 627
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 626
    addiu	$a2,$a2,1
    sw	$a2,4($a3)
    # Line 627
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f22
    lw	$t1,1284($s1)
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f0
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f20
    trunc.w.d	$f13,$f13
    mfc1	$t0,$f13
    lw	$a7,1244($s1)
    sll	$t0,$t0,0x4
    addu	$a7,$a7,$t0
    lw	$a6,8($a7)
    # Line 628
    # lw $t9, -29464($gp) # &__glFClamp
    # Line 627
    addiu	$a6,$a6,1
    sw	$a6,8($a7)
    # Line 628
    lwc1	$f12,12($s0)
    addiu	$s0,$s0,16
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$t9,1284($s1)
    mtc1	$t9,$f14
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f0
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f20
    trunc.w.d	$f14,$f14
    mfc1	$t8,$f14
    lw	$t3,1244($s1)
    sll	$t8,$t8,0x4
    addu	$t3,$t3,$t8
    # Line 624
    addiu	$s2,$s2,1
    # Line 628
    lw	$t2,12($t3)
    addiu	$t2,$t2,1
    # Line 624
    bne	$s3,$s2,.L0d9b9470
    # Line 628
    sw	$t2,12($t3)
    ld	$ra,64($sp)
    ld	$s2,72($sp)
    ldc1	$f20,80($sp)
.L0d9b95a8:
    ld	$s3,32($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ldc1	$f26,0($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,16($sp)
    ldc1	$f28,24($sp)
    # Line 630
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanHistogramSinkRGBA

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000

