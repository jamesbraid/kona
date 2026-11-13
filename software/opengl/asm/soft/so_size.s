# Source: ../soft/so_size.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_size.c
# Total Functions: 24

.text

# Function: __glFogiv_size
# Declared: Line 19 (Source lines: 21-29)
# Address: 0x0da044a0 - 0x0da04518 (Size: 120 bytes, Frame: 0)
.globl __glFogiv_size
.ent __glFogiv_size
__glFogiv_size:
    # Line 21
    li	$at,2918
    # Line 27
    li	$a4,1
    # Line 21
    beq	$a0,$at,.L0da044f0
    # Line 22
    li	$v0,4
    # Line 21
    li	$v0,2914
    beq	$a0,$v0,.L0da044f8
    li	$v1,2916
    beq	$a0,$v1,.L0da04500
    # Line 24
    li	$v0,1
    # Line 21
    li	$a1,2917
    beq	$a0,$a1,.L0da04508
    # Line 26
    li	$v0,1
    # Line 21
    li	$a2,2913
    beq	$a0,$a2,.L0da04510
    nop
    # Line 29
    li	$v0,-1
    # Line 21
    li	$a3,2915
    xor	$a3,$a0,$a3
    # Line 22
    jr	$ra
    movz	$v0,$a4,$a3
.L0da044f0:
    jr	$ra
    nop
.L0da044f8:
    jr	$ra
    # Line 23
    li	$v0,1
.L0da04500:
    # Line 22
    jr	$ra
    nop
.L0da04508:
    jr	$ra
    # Line 25
    li	$v0,1
.L0da04510:
    # Line 22
    jr	$ra
    nop
.end __glFogiv_size

# Function: __glFogfv_size
# Declared: Line 33 (Source lines: 34-35)
# Address: 0x0da04520 - 0x0da04554 (Size: 52 bytes, Frame: 16)
.globl __glFogfv_size
.ent __glFogfv_size
__glFogfv_size:
    # Line 34
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13640
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 35
    # lw $t9, -26940($gp) # &__glFogiv_size
    # Line 34
    sd	$ra,0($sp)
    # Line 35
    bal __glFogiv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFogfv_size

# Function: __glLightfv_size
# Declared: Line 38 (Source lines: 39-52)
# Address: 0x0da04560 - 0x0da045e8 (Size: 136 bytes, Frame: 0)
.globl __glLightfv_size
.ent __glLightfv_size
__glLightfv_size:
    # Line 39
    lui	$v1,0x9
    addiu	$v1,$v1,-13704
    addu	$at,$t9,$v1
    addiu	$v1,$a0,-4608
    la	$v0,.rodata
    sltiu	$a0,$v1,10
    sll	$v1,$v1,0x2
    addiu	$v0,$v0,4340
    beqz	$a0,.L0da04594
    addu	$v0,$v0,$v1
    lw	$a0,0($v0)
    jr	$a0
    # Line 48
    li	$v0,1
.L0da04594:
    # Line 52
    li	$v0,-1
.L0da04598:
    jr	$ra
    nop
.L0da045a0:
    jr	$ra
    # Line 41
    li	$v0,1
.L0da045a8:
    # Line 52
    jr	$ra
    # Line 50
    li	$v0,1
.L0da045b0:
    # Line 52
    jr	$ra
    # Line 49
    li	$v0,1
.L0da045b8:
    # Line 52
    jr	$ra
    # Line 42
    li	$v0,1
.L0da045c0:
    # Line 52
    jr	$ra
    # Line 47
    li	$v0,3
.L0da045c8:
    # Line 52
    jr	$ra
    # Line 46
    li	$v0,4
.L0da045d0:
    # Line 52
    jr	$ra
    # Line 45
    li	$v0,4
.L0da045d8:
    # Line 52
    jr	$ra
    # Line 44
    li	$v0,4
.L0da045e0:
    # Line 52
    jr	$ra
    # Line 43
    li	$v0,4
.end __glLightfv_size

# Function: __glLightiv_size
# Declared: Line 56 (Source lines: 57-58)
# Address: 0x0da045f0 - 0x0da04624 (Size: 52 bytes, Frame: 16)
.globl __glLightiv_size
.ent __glLightiv_size
__glLightiv_size:
    # Line 57
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13848
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 58
    # lw $t9, -26932($gp) # &__glLightfv_size
    # Line 57
    sd	$ra,0($sp)
    # Line 58
    bal __glLightfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glLightiv_size

# Function: __glLightModelfv_size
# Declared: Line 62 (Source lines: 64-70)
# Address: 0x0da04630 - 0x0da04680 (Size: 80 bytes, Frame: 0)
.globl __glLightModelfv_size
.ent __glLightModelfv_size
__glLightModelfv_size:
    # Line 64
    li	$at,2899
    # Line 68
    li	$a1,1
    # Line 64
    beq	$a0,$at,.L0da04668
    # Line 65
    li	$v0,4
    # Line 64
    li	$v0,2897
    beq	$a0,$v0,.L0da04670
    li	$v1,2898
    beq	$a0,$v1,.L0da04678
    # Line 67
    li	$v0,1
    # Line 70
    li	$v0,-1
    # Line 64
    li	$a2,0x81f8
    xor	$a0,$a0,$a2
    # Line 65
    jr	$ra
    movz	$v0,$a1,$a0
.L0da04668:
    jr	$ra
    nop
.L0da04670:
    jr	$ra
    # Line 66
    li	$v0,1
.L0da04678:
    # Line 65
    jr	$ra
    nop
.end __glLightModelfv_size

# Function: __glLightModeliv_size
# Declared: Line 74 (Source lines: 75-76)
# Address: 0x0da04680 - 0x0da046b4 (Size: 52 bytes, Frame: 16)
.globl __glLightModeliv_size
.ent __glLightModeliv_size
__glLightModeliv_size:
    # Line 75
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13992
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 76
    # lw $t9, -26924($gp) # &__glLightModelfv_size
    # Line 75
    sd	$ra,0($sp)
    # Line 76
    bal __glLightModelfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glLightModeliv_size

# Function: __glMaterialfv_size
# Declared: Line 79 (Source lines: 81-90)
# Address: 0x0da046c0 - 0x0da04770 (Size: 176 bytes, Frame: 0)
.globl __glMaterialfv_size
.ent __glMaterialfv_size
__glMaterialfv_size:
    # Line 81
    li	$a2,5635
    sltiu	$at,$a0,5632
    sltiu	$v0,$a0,5633
    sltiu	$a1,$a0,5635
    bnez	$at,.L0da04704
    sltiu	$v1,$a0,5634
    li	$a7,5633
    bnez	$v0,.L0da04750
    nop
    bnez	$v1,.L0da04740
    nop
    bnez	$a1,.L0da04760
    # Line 88
    li	$v0,3
    # Line 81
    bne	$a0,$a2,.L0da04738
    nop
    # Line 90
    jr	$ra
    nop
.L0da04704:
    # Line 81
    li	$a5,4610
    sltiu	$a3,$a0,4609
    sltiu	$a4,$a0,4610
    bnez	$a3,.L0da04730
    li	$a6,4608
    bnez	$a4,.L0da04758
    # Line 86
    li	$v0,4
    # Line 81
    bne	$a0,$a5,.L0da04738
    nop
    # Line 90
    jr	$ra
    nop
.L0da04730:
    # Line 81
    beq	$a0,$a6,.L0da04768
    # Line 84
    li	$v0,4
.L0da04738:
    # Line 90
    jr	$ra
    li	$v0,-1
.L0da04740:
    # Line 81
    bne	$a0,$a7,.L0da04738
    # Line 82
    li	$v0,1
    # Line 90
    jr	$ra
    nop
.L0da04750:
    jr	$ra
    # Line 83
    li	$v0,4
.L0da04758:
    # Line 90
    jr	$ra
    # Line 85
    li	$v0,4
.L0da04760:
    # Line 90
    jr	$ra
    # Line 87
    li	$v0,4
.L0da04768:
    # Line 90
    jr	$ra
    nop
.end __glMaterialfv_size

# Function: __glMaterialiv_size
# Declared: Line 94 (Source lines: 95-96)
# Address: 0x0da04770 - 0x0da047a4 (Size: 52 bytes, Frame: 16)
.globl __glMaterialiv_size
.ent __glMaterialiv_size
__glMaterialiv_size:
    # Line 95
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14232
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 96
    # lw $t9, -26916($gp) # &__glMaterialfv_size
    # Line 95
    sd	$ra,0($sp)
    # Line 96
    bal __glMaterialfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMaterialiv_size

# Function: __glColorTableParameterfvSGI_size
# Declared: Line 102 (Source lines: 104-108)
# Address: 0x0da047b0 - 0x0da047d4 (Size: 36 bytes, Frame: 0)
.globl __glColorTableParameterfvSGI_size
.ent __glColorTableParameterfvSGI_size
__glColorTableParameterfvSGI_size:
    # Line 104
    li	$at,0x80d6
    beq	$a0,$at,.L0da047cc
    li	$v0,0x80d7
    beq	$a0,$v0,.L0da047cc
    nop
    # Line 106
    jr	$ra
    # Line 108
    li	$v0,-1
.L0da047cc:
    # Line 106
    jr	$ra
    li	$v0,4
.end __glColorTableParameterfvSGI_size

# Function: __glColorTableParameterivSGI_size
# Declared: Line 112 (Source lines: 113-114)
# Address: 0x0da047e0 - 0x0da04814 (Size: 52 bytes, Frame: 16)
.globl __glColorTableParameterivSGI_size
.ent __glColorTableParameterivSGI_size
__glColorTableParameterivSGI_size:
    # Line 113
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14344
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 114
    # lw $t9, -26908($gp) # &__glColorTableParameterfvSGI_size
    # Line 113
    sd	$ra,0($sp)
    # Line 114
    bal __glColorTableParameterfvSGI_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glColorTableParameterivSGI_size

# Function: __glSpriteParameterfvSGIX_size
# Declared: Line 118 (Source lines: 121-126)
# Address: 0x0da04820 - 0x0da0485c (Size: 60 bytes, Frame: 0)
.globl __glSpriteParameterfvSGIX_size
.ent __glSpriteParameterfvSGIX_size
__glSpriteParameterfvSGIX_size:
    # Line 121
    li	$at,0x8149
    li	$v1,0x814b
    beq	$a0,$at,.L0da0484c
    # Line 122
    li	$v0,1
    # Line 121
    li	$v0,0x814a
    beq	$a0,$v0,.L0da04854
    xor	$v1,$a0,$v1
    # Line 124
    li	$a0,3
    # Line 126
    li	$v0,-1
    # Line 122
    jr	$ra
    movz	$v0,$a0,$v1
.L0da0484c:
    jr	$ra
    nop
.L0da04854:
    jr	$ra
    # Line 123
    li	$v0,3
.end __glSpriteParameterfvSGIX_size

# Function: __glSpriteParameterivSGIX_size
# Declared: Line 130 (Source lines: 131-132)
# Address: 0x0da04860 - 0x0da04894 (Size: 52 bytes, Frame: 16)
.globl __glSpriteParameterivSGIX_size
.ent __glSpriteParameterivSGIX_size
__glSpriteParameterivSGIX_size:
    # Line 131
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14472
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 132
    # lw $t9, -26900($gp) # &__glSpriteParameterfvSGIX_size
    # Line 131
    sd	$ra,0($sp)
    # Line 132
    bal __glSpriteParameterfvSGIX_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSpriteParameterivSGIX_size

# Function: __glPointParameterfvSGIS_size
# Declared: Line 135 (Source lines: 138-144)
# Address: 0x0da048a0 - 0x0da048f0 (Size: 80 bytes, Frame: 0)
.globl __glPointParameterfvSGIS_size
.ent __glPointParameterfvSGIS_size
__glPointParameterfvSGIS_size:
    # Line 138
    li	$at,0x8126
    # Line 142
    li	$a1,3
    # Line 138
    beq	$a0,$at,.L0da048d8
    # Line 139
    li	$v0,1
    # Line 138
    li	$v0,0x8127
    beq	$a0,$v0,.L0da048e0
    li	$v1,0x8128
    beq	$a0,$v1,.L0da048e8
    # Line 141
    li	$v0,1
    # Line 144
    li	$v0,-1
    # Line 138
    li	$a2,0x8129
    xor	$a0,$a0,$a2
    # Line 139
    jr	$ra
    movz	$v0,$a1,$a0
.L0da048d8:
    jr	$ra
    nop
.L0da048e0:
    jr	$ra
    # Line 140
    li	$v0,1
.L0da048e8:
    # Line 139
    jr	$ra
    nop
.end __glPointParameterfvSGIS_size

# Function: __glPixelTransformParameterfvSGI_size
# Declared: Line 154 (Source lines: 156-172)
# Address: 0x0da048f0 - 0x0da049e4 (Size: 244 bytes, Frame: 0)
.globl __glPixelTransformParameterfvSGI_size
.ent __glPixelTransformParameterfvSGI_size
__glPixelTransformParameterfvSGI_size:
    # Line 156
    li	$a2,0x8019
    sltu	$at,$a0,$a2
    bnez	$at,.L0da04938
    li	$t1,0x8013
    li	$t8,0x801a
    sltu	$v0,$a2,$a0
    li	$a2,0x81c9
    sltu	$a1,$a2,$a0
    beqz	$v0,.L0da0496c
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0da049a4
    li	$a2,0x81ca
    beqz	$a1,.L0da0496c
    nop
    bne	$a0,$a2,.L0da0499c
    nop
    b	.L0da0496c
    nop
.L0da04938:
    li	$a2,0x8015
    sltu	$a3,$a0,$a2
    bnez	$a3,.L0da04974
    li	$t9,0x8017
    sltu	$a4,$a2,$a0
    li	$a2,0x8018
    sltu	$a6,$a2,$a0
    beqz	$a4,.L0da0498c
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0da049d4
    nop
    bnez	$a6,.L0da0499c
    nop
.L0da0496c:
    # Line 172
    jr	$ra
    # Line 165
    li	$v0,1
.L0da04974:
    # Line 156
    li	$a2,0x8014
    sltu	$a7,$a0,$a2
    bnez	$a7,.L0da04994
    sltu	$t0,$a2,$a0
    bnez	$t0,.L0da0499c
    nop
.L0da0498c:
    # Line 172
    jr	$ra
    # Line 169
    li	$v0,4
.L0da04994:
    # Line 156
    beq	$a0,$t1,.L0da0496c
    nop
.L0da0499c:
    # Line 172
    jr	$ra
    li	$v0,-1
.L0da049a4:
    # Line 156
    li	$a2,0x801b
    sltu	$t2,$a0,$a2
    bnez	$t2,.L0da049c4
    sltu	$t3,$a2,$a0
    beqz	$t3,.L0da0496c
    nop
    b	.L0da0499c
    nop
.L0da049c4:
    bne	$a0,$t8,.L0da0499c
    nop
    b	.L0da0496c
    nop
.L0da049d4:
    bne	$a0,$t9,.L0da0499c
    nop
    b	.L0da0496c
    nop
.end __glPixelTransformParameterfvSGI_size

# Function: __glPixelTransformParameterivSGI_size
# Declared: Line 176 (Source lines: 177-178)
# Address: 0x0da049f0 - 0x0da04a24 (Size: 52 bytes, Frame: 16)
.globl __glPixelTransformParameterivSGI_size
.ent __glPixelTransformParameterivSGI_size
__glPixelTransformParameterivSGI_size:
    # Line 177
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14872
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 178
    # lw $t9, -26888($gp) # &__glPixelTransformParameterfvSGI_size
    # Line 177
    sd	$ra,0($sp)
    # Line 178
    bal __glPixelTransformParameterfvSGI_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glPixelTransformParameterivSGI_size

# Function: __glPixelTexGenParameterivSGIS_size
# Declared: Line 181 (Source lines: 183-190)
# Address: 0x0da04a30 - 0x0da04a6c (Size: 60 bytes, Frame: 0)
.globl __glPixelTexGenParameterivSGIS_size
.ent __glPixelTexGenParameterivSGIS_size
__glPixelTexGenParameterivSGIS_size:
    # Line 183
    li	$at,0x8354
    li	$v1,0x8357
    beq	$a0,$at,.L0da04a64
    li	$a1,0x835a
    li	$v0,0x8355
    beq	$a0,$v0,.L0da04a64
    nop
    beq	$a0,$v1,.L0da04a64
    # Line 190
    li	$v0,-1
    # Line 183
    beq	$a0,$a1,.L0da04a64
    nop
    # Line 188
    jr	$ra
    nop
.L0da04a64:
    jr	$ra
    li	$v0,1
.end __glPixelTexGenParameterivSGIS_size

# Function: __glPixelTexGenParameterfvSGIS_size
# Declared: Line 194 (Source lines: 195-196)
# Address: 0x0da04a70 - 0x0da04aa4 (Size: 52 bytes, Frame: 16)
.globl __glPixelTexGenParameterfvSGIS_size
.ent __glPixelTexGenParameterfvSGIS_size
__glPixelTexGenParameterfvSGIS_size:
    # Line 195
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15000
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 196
    # lw $t9, -26884($gp) # &__glPixelTexGenParameterivSGIS_size
    # Line 195
    sd	$ra,0($sp)
    # Line 196
    bal __glPixelTexGenParameterivSGIS_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glPixelTexGenParameterfvSGIS_size

# Function: __glFragmentMaterialfvSGIX_size
# Declared: Line 200 (Source lines: 202-210)
# Address: 0x0da04ab0 - 0x0da04b28 (Size: 120 bytes, Frame: 0)
.globl __glFragmentMaterialfvSGIX_size
.ent __glFragmentMaterialfvSGIX_size
__glFragmentMaterialfvSGIX_size:
    # Line 202
    li	$at,5633
    # Line 208
    li	$a4,4
    # Line 202
    beq	$a0,$at,.L0da04b00
    # Line 203
    li	$v0,1
    # Line 202
    li	$v0,5632
    beq	$a0,$v0,.L0da04b08
    li	$v1,4608
    beq	$a0,$v1,.L0da04b10
    # Line 205
    li	$v0,4
    # Line 202
    li	$a1,4609
    beq	$a0,$a1,.L0da04b18
    # Line 207
    li	$v0,4
    # Line 202
    li	$a2,4610
    beq	$a0,$a2,.L0da04b20
    nop
    # Line 210
    li	$v0,-1
    # Line 202
    li	$a3,5634
    xor	$a3,$a0,$a3
    # Line 203
    jr	$ra
    movz	$v0,$a4,$a3
.L0da04b00:
    jr	$ra
    nop
.L0da04b08:
    jr	$ra
    # Line 204
    li	$v0,4
.L0da04b10:
    # Line 203
    jr	$ra
    nop
.L0da04b18:
    jr	$ra
    # Line 206
    li	$v0,4
.L0da04b20:
    # Line 203
    jr	$ra
    nop
.end __glFragmentMaterialfvSGIX_size

# Function: __glFragmentMaterialivSGIX_size
# Declared: Line 214 (Source lines: 215-216)
# Address: 0x0da04b30 - 0x0da04b64 (Size: 52 bytes, Frame: 16)
.globl __glFragmentMaterialivSGIX_size
.ent __glFragmentMaterialivSGIX_size
__glFragmentMaterialivSGIX_size:
    # Line 215
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15192
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 216
    # lw $t9, -26876($gp) # &__glFragmentMaterialfvSGIX_size
    # Line 215
    sd	$ra,0($sp)
    # Line 216
    bal __glFragmentMaterialfvSGIX_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFragmentMaterialivSGIX_size

# Function: __glFragmentLightfvSGIX_size
# Declared: Line 219 (Source lines: 221-234)
# Address: 0x0da04b70 - 0x0da04c9c (Size: 300 bytes, Frame: 0)
.globl __glFragmentLightfvSGIX_size
.ent __glFragmentLightfvSGIX_size
__glFragmentLightfvSGIX_size:
    # Line 221
    sltiu	$at,$a0,4613
    bnez	$at,.L0da04bc8
    li	$t3,4617
    sltiu	$v0,$a0,4614
    sltiu	$t0,$a0,4615
    li	$t1,4614
    bnez	$v0,.L0da04c4c
    sltiu	$v1,$a0,4617
    sltiu	$v0,$a0,4616
    bnez	$v0,.L0da04c34
    nop
    bnez	$v1,.L0da04c8c
    # Line 231
    li	$v0,1
    # Line 221
    li	$v0,0x8193
    sltu	$a1,$a0,$v0
    sltu	$a2,$v0,$a0
    bnez	$a1,.L0da04c7c
    # Line 224
    li	$v0,1
    # Line 221
    bnez	$a2,.L0da04c24
    nop
    b	.L0da04c2c
    nop
.L0da04bc8:
    sltiu	$a6,$a0,4609
    sltiu	$v0,$a0,4610
    li	$a7,4608
    sltiu	$a3,$a0,4611
    bnez	$v0,.L0da04c04
    sltiu	$a4,$a0,4612
    li	$t2,4611
    bnez	$a3,.L0da04c74
    # Line 227
    li	$v0,4
    # Line 221
    bnez	$a4,.L0da04c64
    nop
    beqz	$at,.L0da04c24
    nop
    # Line 234
    jr	$ra
    # Line 229
    li	$v0,3
.L0da04c04:
    # Line 221
    bnez	$a6,.L0da04c1c
    nop
    beqz	$v0,.L0da04c24
    nop
    # Line 234
    jr	$ra
    # Line 226
    li	$v0,4
.L0da04c1c:
    # Line 221
    beq	$a0,$a7,.L0da04c94
    nop
.L0da04c24:
    # Line 234
    jr	$ra
    li	$v0,-1
.L0da04c2c:
    jr	$ra
    nop
.L0da04c34:
    # Line 221
    bnez	$t0,.L0da04c54
    nop
    beqz	$v0,.L0da04c24
    nop
    # Line 234
    jr	$ra
    # Line 230
    li	$v0,1
.L0da04c4c:
    # Line 234
    jr	$ra
    # Line 222
    li	$v0,1
.L0da04c54:
    # Line 221
    bne	$a0,$t1,.L0da04c24
    nop
    # Line 234
    jr	$ra
    # Line 223
    li	$v0,1
.L0da04c64:
    # Line 221
    bne	$a0,$t2,.L0da04c24
    nop
    # Line 234
    jr	$ra
    # Line 228
    li	$v0,4
.L0da04c74:
    # Line 234
    jr	$ra
    nop
.L0da04c7c:
    # Line 221
    bne	$a0,$t3,.L0da04c24
    nop
    # Line 234
    jr	$ra
    # Line 232
    li	$v0,1
.L0da04c8c:
    # Line 234
    jr	$ra
    nop
.L0da04c94:
    jr	$ra
    # Line 225
    li	$v0,4
.end __glFragmentLightfvSGIX_size

# Function: __glFragmentLightivSGIX_size
# Declared: Line 238 (Source lines: 239-240)
# Address: 0x0da04ca0 - 0x0da04cd4 (Size: 52 bytes, Frame: 16)
.globl __glFragmentLightivSGIX_size
.ent __glFragmentLightivSGIX_size
__glFragmentLightivSGIX_size:
    # Line 239
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15560
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 240
    # lw $t9, -26868($gp) # &__glFragmentLightfvSGIX_size
    # Line 239
    sd	$ra,0($sp)
    # Line 240
    bal __glFragmentLightfvSGIX_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFragmentLightivSGIX_size

# Function: __glFragmentLightModelfvSGIX_size
# Declared: Line 243 (Source lines: 245-251)
# Address: 0x0da04ce0 - 0x0da04d30 (Size: 80 bytes, Frame: 0)
.globl __glFragmentLightModelfvSGIX_size
.ent __glFragmentLightModelfvSGIX_size
__glFragmentLightModelfvSGIX_size:
    # Line 245
    li	$at,0x840a
    # Line 249
    li	$a1,1
    # Line 245
    beq	$a0,$at,.L0da04d18
    # Line 246
    li	$v0,4
    # Line 245
    li	$v0,0x8408
    beq	$a0,$v0,.L0da04d20
    li	$v1,0x8409
    beq	$a0,$v1,.L0da04d28
    # Line 248
    li	$v0,1
    # Line 251
    li	$v0,-1
    # Line 245
    li	$a2,0x840b
    xor	$a0,$a0,$a2
    # Line 246
    jr	$ra
    movz	$v0,$a1,$a0
.L0da04d18:
    jr	$ra
    nop
.L0da04d20:
    jr	$ra
    # Line 247
    li	$v0,1
.L0da04d28:
    # Line 246
    jr	$ra
    nop
.end __glFragmentLightModelfvSGIX_size

# Function: __glFragmentLightModelivSGIX_size
# Declared: Line 255 (Source lines: 256-257)
# Address: 0x0da04d30 - 0x0da04d64 (Size: 52 bytes, Frame: 16)
.globl __glFragmentLightModelivSGIX_size
.ent __glFragmentLightModelivSGIX_size
__glFragmentLightModelivSGIX_size:
    # Line 256
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15704
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 257
    # lw $t9, -26860($gp) # &__glFragmentLightModelfvSGIX_size
    # Line 256
    sd	$ra,0($sp)
    # Line 257
    bal __glFragmentLightModelfvSGIX_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFragmentLightModelivSGIX_size

# Function: __glColorSubTable_size
# Declared: Line 260 (Source lines: 261-273)
# Address: 0x0da04d70 - 0x0da04dc0 (Size: 80 bytes, Frame: 0)
.globl __glColorSubTable_size
.ent __glColorSubTable_size
__glColorSubTable_size:
    # Line 261
    lui	$a5,0x9
    lui	$a4,0xffff
    addiu	$a5,$a5,-15768
    ori	$a4,$a4,0x7f44
    addu	$at,$t9,$a5
    addu	$a4,$a0,$a4
    la	$a3,.rodata
    # Line 271
    li	$v0,1
    # Line 261
    sltiu	$a5,$a4,26
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,4380
    beqz	$a5,.L0da04db0
    addu	$a3,$a3,$a4
    lw	$a6,0($a3)
    jr	$a6
    nop
.L0da04db0:
    # Line 273
    jr	$ra
    li	$v0,-1
.L0da04db8:
    jr	$ra
    nop
.end __glColorSubTable_size

.late_rodata
jtbl_0da810f4:
    .word .L0da045e0
    .word .L0da045d8
    .word .L0da045d0
    .word .L0da045c8
    .word .L0da045c0
    .word .L0da045a0
    .word .L0da045b8
    .word .L0da04598
    .word .L0da045b0
    .word .L0da045a8
jtbl_0da8111c:
    .word .L0da04db8
    .word .L0da04db8
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db0
    .word .L0da04db8
    .word .L0da04db8
    .word .L0da04db8
    .word .L0da04db8
    .word .L0da04db8
    .word .L0da04db8

