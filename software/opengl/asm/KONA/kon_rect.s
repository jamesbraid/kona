# Source: ../KONA/kon_rect.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_rect.c
# Total Functions: 16

.text

# Function: __glkonim_Rectd
# Declared: Line 12 (Source lines: 12-19)
# Address: 0x0d983720 - 0x0d9837d0 (Size: 176 bytes, Frame: 48)
.globl __glkonim_Rectd
.ent __glkonim_Rectd
__glkonim_Rectd:
    # Line 13
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,22
    sw	$at,16384($zero)
    # Line 12
    addiu	$sp,$sp,-48
    sdc1	$f20,8($sp)
    lui	$v1,0x11
    sdc1	$f22,0($sp)
    addiu	$v1,$v1,-10056
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    mov.d	$f22,$f15
    # Line 14
    # lw $t9, -17928($gp) # &glVertex2d
    # Line 12
    mov.d	$f20,$f14
    sdc1	$f24,16($sp)
    mov.d	$f24,$f13
    sdc1	$f30,24($sp)
    # Line 14
    nop
    # Line 12
    sd	$ra,32($sp)
    # Line 14
    jal	glVertex2d
    # Line 12
    mov.d	$f30,$f12
    # Line 15
    # lw $t9, -17928($gp) # &glVertex2d
    mov.d	$f12,$f20
    jal	glVertex2d
    mov.d	$f13,$f24
    # Line 16
    # lw $t9, -17928($gp) # &glVertex2d
    mov.d	$f12,$f20
    ldc1	$f24,16($sp)
    jal	glVertex2d
    mov.d	$f13,$f22
    # Line 17
    # lw $t9, -17928($gp) # &glVertex2d
    mov.d	$f12,$f30
    ldc1	$f20,8($sp)
    jal	glVertex2d
    mov.d	$f13,$f22
    # Line 18
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,32($sp)
    ldc1	$f22,0($sp)
    ldc1	$f30,24($sp)
    # Line 19
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_Rectd

# Function: __glkonim_Rectdv
# Declared: Line 22 (Source lines: 22-29)
# Address: 0x0d9837d0 - 0x0d98386c (Size: 156 bytes, Frame: 32)
.globl __glkonim_Rectdv
.ent __glkonim_Rectdv
__glkonim_Rectdv:
    # Line 24
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    # Line 23
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,22
    # Line 22
    lui	$v1,0x11
    # Line 23
    sw	$at,16384($zero)
    # Line 22
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,-10232
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 24
    # lw $t9, -17928($gp) # &glVertex2d
    # Line 22
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    sd	$ra,16($sp)
    # Line 24
    jal	glVertex2d
    # Line 22
    move	$s1,$a0
    # Line 25
    # lw $t9, -17928($gp) # &glVertex2d
    ldc1	$f13,8($s1)
    jal	glVertex2d
    ldc1	$f12,0($s0)
    # Line 26
    # lw $t9, -17928($gp) # &glVertex2d
    ldc1	$f13,8($s0)
    jal	glVertex2d
    ldc1	$f12,0($s0)
    # Line 27
    # lw $t9, -17928($gp) # &glVertex2d
    ldc1	$f13,8($s0)
    jal	glVertex2d
    ldc1	$f12,0($s1)
    # Line 28
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 29
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonim_Rectdv

# Function: __glkonim_Rectf
# Declared: Line 32 (Source lines: 32-39)
# Address: 0x0d983870 - 0x0d983920 (Size: 176 bytes, Frame: 48)
.globl __glkonim_Rectf
.ent __glkonim_Rectf
__glkonim_Rectf:
    # Line 33
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,14
    sw	$at,16384($zero)
    # Line 32
    addiu	$sp,$sp,-48
    sdc1	$f20,8($sp)
    lui	$v1,0x11
    sdc1	$f22,0($sp)
    addiu	$v1,$v1,-10392
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    mov.s	$f22,$f15
    # Line 34
    # lw $t9, -17920($gp) # &glVertex2f
    # Line 32
    mov.s	$f20,$f14
    sdc1	$f24,16($sp)
    mov.s	$f24,$f13
    sdc1	$f30,24($sp)
    # Line 34
    nop
    # Line 32
    sd	$ra,32($sp)
    # Line 34
    jal	glVertex2f
    # Line 32
    mov.s	$f30,$f12
    # Line 35
    # lw $t9, -17920($gp) # &glVertex2f
    mov.s	$f12,$f20
    jal	glVertex2f
    mov.s	$f13,$f24
    # Line 36
    # lw $t9, -17920($gp) # &glVertex2f
    mov.s	$f12,$f20
    ldc1	$f24,16($sp)
    jal	glVertex2f
    mov.s	$f13,$f22
    # Line 37
    # lw $t9, -17920($gp) # &glVertex2f
    mov.s	$f12,$f30
    ldc1	$f20,8($sp)
    jal	glVertex2f
    mov.s	$f13,$f22
    # Line 38
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,32($sp)
    ldc1	$f22,0($sp)
    ldc1	$f30,24($sp)
    # Line 39
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_Rectf

# Function: __glkonim_Rectfv
# Declared: Line 42 (Source lines: 42-49)
# Address: 0x0d983920 - 0x0d9839bc (Size: 156 bytes, Frame: 32)
.globl __glkonim_Rectfv
.ent __glkonim_Rectfv
__glkonim_Rectfv:
    # Line 44
    lwc1	$f13,4($a0)
    lwc1	$f12,0($a0)
    # Line 43
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,14
    # Line 42
    lui	$v1,0x11
    # Line 43
    sw	$at,16384($zero)
    # Line 42
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,-10568
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 44
    # lw $t9, -17920($gp) # &glVertex2f
    # Line 42
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    sd	$ra,16($sp)
    # Line 44
    jal	glVertex2f
    # Line 42
    move	$s1,$a0
    # Line 45
    # lw $t9, -17920($gp) # &glVertex2f
    lwc1	$f13,4($s1)
    jal	glVertex2f
    lwc1	$f12,0($s0)
    # Line 46
    # lw $t9, -17920($gp) # &glVertex2f
    lwc1	$f13,4($s0)
    jal	glVertex2f
    lwc1	$f12,0($s0)
    # Line 47
    # lw $t9, -17920($gp) # &glVertex2f
    lwc1	$f13,4($s0)
    jal	glVertex2f
    lwc1	$f12,0($s1)
    # Line 48
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 49
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonim_Rectfv

# Function: __glkonim_Recti
# Declared: Line 52 (Source lines: 52-59)
# Address: 0x0d9839c0 - 0x0d983a70 (Size: 176 bytes, Frame: 48)
.globl __glkonim_Recti
.ent __glkonim_Recti
__glkonim_Recti:
    # Line 53
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,14
    sw	$at,16384($zero)
    # Line 52
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    lui	$v1,0x11
    sd	$s0,0($sp)
    addiu	$v1,$v1,-10728
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 54
    # lw $t9, -17912($gp) # &glVertex2i
    # Line 52
    move	$s0,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    move	$s5,$a1
    sd	$s8,32($sp)
    # Line 54
    nop
    # Line 52
    sd	$ra,16($sp)
    # Line 54
    jal	glVertex2i
    # Line 52
    move	$s8,$a0
    # Line 55
    # lw $t9, -17912($gp) # &glVertex2i
    move	$a0,$s1
    jal	glVertex2i
    move	$a1,$s5
    # Line 56
    # lw $t9, -17912($gp) # &glVertex2i
    move	$a0,$s1
    ld	$s5,24($sp)
    jal	glVertex2i
    move	$a1,$s0
    # Line 57
    # lw $t9, -17912($gp) # &glVertex2i
    move	$a0,$s8
    ld	$s1,8($sp)
    jal	glVertex2i
    move	$a1,$s0
    # Line 58
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,32($sp)
    # Line 59
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_Recti

# Function: __glkonim_Rectiv
# Declared: Line 62 (Source lines: 62-69)
# Address: 0x0d983a70 - 0x0d983b0c (Size: 156 bytes, Frame: 32)
.globl __glkonim_Rectiv
.ent __glkonim_Rectiv
__glkonim_Rectiv:
    # Line 63
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,14
    sw	$at,16384($zero)
    # Line 62
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    lui	$v1,0x11
    move	$s1,$a0
    # Line 64
    lw	$a0,0($a0)
    # Line 62
    addiu	$v1,$v1,-10904
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 64
    # lw $t9, -17912($gp) # &glVertex2i
    # Line 62
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 64
    jal	glVertex2i
    lw	$a1,4($s1)
    # Line 65
    # lw $t9, -17912($gp) # &glVertex2i
    lw	$a1,4($s1)
    jal	glVertex2i
    lw	$a0,0($s0)
    # Line 66
    # lw $t9, -17912($gp) # &glVertex2i
    lw	$a1,4($s0)
    jal	glVertex2i
    lw	$a0,0($s0)
    # Line 67
    # lw $t9, -17912($gp) # &glVertex2i
    lw	$a1,4($s0)
    jal	glVertex2i
    lw	$a0,0($s1)
    # Line 68
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,16($sp)
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 69
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonim_Rectiv

# Function: __glkonim_Rects
# Declared: Line 72 (Source lines: 72-83)
# Address: 0x0d983b10 - 0x0d983bc0 (Size: 176 bytes, Frame: 48)
.globl __glkonim_Rects
.ent __glkonim_Rects
__glkonim_Rects:
    # Line 74
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,10
    sw	$at,16384($zero)
    # Line 72
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    lui	$v1,0x11
    sd	$s0,0($sp)
    addiu	$v1,$v1,-11064
    sd	$gp,40($sp)
    addu	$gp,$t9,$v1
    # Line 78
    # lw $t9, -17904($gp) # &glVertex2s
    # Line 72
    move	$s0,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    move	$s5,$a1
    sd	$s8,32($sp)
    # Line 78
    nop
    # Line 72
    sd	$ra,16($sp)
    # Line 78
    jal	glVertex2s
    # Line 72
    move	$s8,$a0
    # Line 79
    # lw $t9, -17904($gp) # &glVertex2s
    move	$a0,$s1
    jal	glVertex2s
    move	$a1,$s5
    # Line 80
    # lw $t9, -17904($gp) # &glVertex2s
    move	$a0,$s1
    ld	$s5,24($sp)
    jal	glVertex2s
    move	$a1,$s0
    # Line 81
    # lw $t9, -17904($gp) # &glVertex2s
    move	$a0,$s8
    ld	$s1,8($sp)
    jal	glVertex2s
    move	$a1,$s0
    # Line 82
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s8,32($sp)
    # Line 83
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_Rects

# Function: __glkonim_Rectsv
# Declared: Line 86 (Source lines: 86-97)
# Address: 0x0d983bc0 - 0x0d983c5c (Size: 156 bytes, Frame: 32)
.globl __glkonim_Rectsv
.ent __glkonim_Rectsv
__glkonim_Rectsv:
    # Line 88
    li	$v0,3
    sw	$v0,16384($zero)
    li	$at,10
    sw	$at,16384($zero)
    # Line 86
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    lui	$v1,0x11
    move	$s1,$a0
    # Line 92
    lh	$a0,0($a0)
    # Line 86
    addiu	$v1,$v1,-11240
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 92
    # lw $t9, -17904($gp) # &glVertex2s
    # Line 86
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 92
    jal	glVertex2s
    lh	$a1,2($s1)
    # Line 93
    # lw $t9, -17904($gp) # &glVertex2s
    lh	$a1,2($s1)
    jal	glVertex2s
    lh	$a0,0($s0)
    # Line 94
    # lw $t9, -17904($gp) # &glVertex2s
    lh	$a1,2($s0)
    jal	glVertex2s
    lh	$a0,0($s0)
    # Line 95
    # lw $t9, -17904($gp) # &glVertex2s
    lh	$a1,2($s0)
    jal	glVertex2s
    lh	$a0,0($s1)
    # Line 96
    li	$a0,113
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,16($sp)
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 97
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonim_Rectsv

# Function: __glkonlc_Rectd
# Declared: Line 100 (Source lines: 100-109)
# Address: 0x0d983c60 - 0x0d983dc8 (Size: 360 bytes, Frame: 240)
.globl __glkonlc_Rectd
.ent __glkonlc_Rectd
__glkonlc_Rectd:
    # Line 101
    lw	$a2,4136($zero)
    # Line 100
    mov.d	$f6,$f15
    addiu	$sp,$sp,-112
    mov.d	$f5,$f14
    lui	$at,0x11
    # Line 101
    slti	$v0,$a2,24
    # Line 100
    mov.d	$f4,$f13
    sdc1	$f30,64($sp)
    addiu	$at,$at,-11400
    mov.d	$f30,$f12
    sd	$gp,72($sp)
    # Line 101
    bnez	$v0,.L0d983d94
    # Line 100
    addu	$gp,$t9,$at
.L0d983c94:
    # Line 109
    ld	$gp,72($sp)
    # Line 106
    sdc1	$f30,48($sp)
    # Line 103
    sdc1	$f30,0($sp)
    # Line 109
    ldc1	$f30,64($sp)
    # Line 106
    sdc1	$f6,56($sp)
    # Line 103
    sdc1	$f4,8($sp)
    lw	$a1,8($sp)
    # Line 105
    sdc1	$f6,40($sp)
    lw	$t0,44($sp)
    lw	$t1,40($sp)
    sdc1	$f5,32($sp)
    lw	$t2,36($sp)
    lw	$t3,32($sp)
    # Line 104
    sdc1	$f4,24($sp)
    lw	$t8,28($sp)
    lw	$t9,24($sp)
    sdc1	$f5,16($sp)
    lw	$at,20($sp)
    lw	$v0,16($sp)
    # Line 103
    lw	$v1,12($sp)
    lw	$a4,0($sp)
    # Line 101
    lw	$a0,4144($zero)
    # Line 103
    lw	$a3,4($sp)
    li	$a7,139
    sw	$a7,8($a0)
    sw	$v1,24($a0)
    # Line 104
    sw	$a7,28($a0)
    sw	$v0,32($a0)
    sw	$at,36($a0)
    sw	$t9,40($a0)
    sw	$t8,44($a0)
    # Line 105
    sw	$a7,48($a0)
    sw	$t3,52($a0)
    sw	$t2,56($a0)
    sw	$t1,60($a0)
    sw	$t0,64($a0)
    # Line 106
    sw	$a7,68($a0)
    # Line 103
    sw	$a1,20($a0)
    # Line 107
    li	$a1,113
    sw	$a1,88($a0)
    sw	$zero,92($a0)
    # Line 103
    sw	$a3,16($a0)
    # Line 106
    lw	$a3,60($sp)
    # Line 103
    sw	$a4,12($a0)
    # Line 106
    lw	$a4,56($sp)
    # Line 102
    li	$a5,22
    sw	$a5,4($a0)
    # Line 106
    lw	$a5,52($sp)
    # Line 102
    li	$a6,3
    sw	$a6,0($a0)
    # Line 106
    lw	$a6,48($sp)
    sw	$a6,72($a0)
    sw	$a5,76($a0)
    sw	$a4,80($a0)
    sw	$a3,84($a0)
    # Line 108
    addiu	$a0,$a0,96
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-24
    sw	$v1,4136($zero)
    # Line 109
    addiu	$sp,$sp,112
    # Line 108
    addiu	$v0,$v0,24
    # Line 109
    jr	$ra
    # Line 108
    sw	$v0,4148($zero)
.L0d983d94:
    sdc1	$f15,80($sp)
    # Line 101
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,88($sp)
    sdc1	$f13,96($sp)
    sd	$ra,104($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,104($sp)
    ldc1	$f4,96($sp)
    ldc1	$f5,88($sp)
    ldc1	$f6,80($sp)
    b	.L0d983c94
    move	$a2,$v0
.end __glkonlc_Rectd

# Function: __glkonlc_Rectdv
# Declared: Line 112 (Source lines: 112-121)
# Address: 0x0d983dd0 - 0x0d983f3c (Size: 364 bytes, Frame: 224)
.globl __glkonlc_Rectdv
.ent __glkonlc_Rectdv
__glkonlc_Rectdv:
    # Line 113
    lw	$a4,4136($zero)
    # Line 112
    addiu	$sp,$sp,-96
    lui	$at,0x11
    # Line 113
    slti	$v0,$a4,24
    # Line 112
    sd	$s8,64($sp)
    move	$s8,$a0
    addiu	$at,$at,-11768
    sd	$gp,72($sp)
    # Line 113
    bnez	$v0,.L0d983f18
    # Line 112
    addu	$gp,$t9,$at
.L0d983df8:
    # Line 113
    lw	$a0,4144($zero)
    # Line 114
    li	$a7,3
    sw	$a7,0($a0)
    # Line 115
    li	$a7,139
    sw	$a7,8($a0)
    # Line 114
    li	$a6,22
    sw	$a6,4($a0)
    # Line 115
    ldc1	$f7,0($s8)
    sdc1	$f7,0($sp)
    lw	$a5,0($sp)
    lw	$a3,4($sp)
    sw	$a3,16($a0)
    sw	$a5,12($a0)
    ldc1	$f6,8($s8)
    # Line 116
    sw	$a7,28($a0)
    # Line 115
    sdc1	$f6,8($sp)
    lw	$a2,8($sp)
    lw	$v1,12($sp)
    sw	$v1,24($a0)
    sw	$a2,20($a0)
    # Line 116
    ldc1	$f5,0($a1)
    sdc1	$f5,16($sp)
    lw	$v0,16($sp)
    lw	$at,20($sp)
    sw	$at,36($a0)
    sw	$v0,32($a0)
    ldc1	$f4,8($s8)
    # Line 117
    sw	$a7,48($a0)
    # Line 116
    sdc1	$f4,24($sp)
    lw	$t9,24($sp)
    lw	$t8,28($sp)
    sw	$t8,44($a0)
    sw	$t9,40($a0)
    # Line 117
    ldc1	$f3,0($a1)
    # Line 121
    ld	$gp,72($sp)
    # Line 117
    sdc1	$f3,32($sp)
    lw	$t3,32($sp)
    lw	$t2,36($sp)
    sw	$t2,56($a0)
    sw	$t3,52($a0)
    ldc1	$f2,8($a1)
    # Line 118
    sw	$a7,68($a0)
    # Line 117
    sdc1	$f2,40($sp)
    lw	$t1,40($sp)
    lw	$t0,44($sp)
    sw	$t0,64($a0)
    sw	$t1,60($a0)
    # Line 118
    ldc1	$f1,0($s8)
    # Line 121
    ld	$s8,64($sp)
    # Line 118
    sdc1	$f1,48($sp)
    lw	$a6,48($sp)
    lw	$a5,52($sp)
    sw	$a5,76($a0)
    sw	$a6,72($a0)
    ldc1	$f0,8($a1)
    # Line 119
    li	$a1,113
    sw	$a1,88($a0)
    sw	$zero,92($a0)
    # Line 118
    sdc1	$f0,56($sp)
    lw	$a2,60($sp)
    lw	$a3,56($sp)
    sw	$a3,80($a0)
    sw	$a2,84($a0)
    # Line 120
    addiu	$a0,$a0,96
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-24
    sw	$v1,4136($zero)
    # Line 121
    addiu	$sp,$sp,96
    # Line 120
    addiu	$v0,$v0,24
    # Line 121
    jr	$ra
    # Line 120
    sw	$v0,4148($zero)
.L0d983f18:
    # Line 113
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,80($sp)
    sd	$ra,88($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,88($sp)
    ld	$a1,80($sp)
    b	.L0d983df8
    move	$a4,$v0
.end __glkonlc_Rectdv

# Function: __glkonlc_Rectf
# Declared: Line 124 (Source lines: 124-133)
# Address: 0x0d983f40 - 0x0d984028 (Size: 232 bytes, Frame: 48)
.globl __glkonlc_Rectf
.ent __glkonlc_Rectf
__glkonlc_Rectf:
    # Line 125
    lw	$a2,4136($zero)
    # Line 124
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x11
    # Line 125
    slti	$v0,$a2,16
    # Line 124
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,-12136
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 125
    bnez	$v0,.L0d983ff4
    # Line 124
    addu	$gp,$t9,$at
.L0d983f74:
    # Line 125
    lw	$a0,4144($zero)
    # Line 133
    ld	$gp,8($sp)
    # Line 126
    li	$a5,3
    sw	$a5,0($a0)
    li	$a4,14
    sw	$a4,4($a0)
    # Line 127
    li	$a3,140
    sw	$a3,8($a0)
    swc1	$f30,12($a0)
    swc1	$f4,16($a0)
    # Line 128
    sw	$a3,20($a0)
    swc1	$f5,24($a0)
    swc1	$f4,28($a0)
    # Line 129
    sw	$a3,32($a0)
    swc1	$f5,36($a0)
    swc1	$f6,40($a0)
    # Line 130
    sw	$a3,44($a0)
    swc1	$f30,48($a0)
    swc1	$f6,52($a0)
    # Line 131
    li	$a1,113
    sw	$a1,56($a0)
    sw	$zero,60($a0)
    # Line 132
    addiu	$a0,$a0,64
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-16
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 133
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 132
    addiu	$v0,$v0,16
    # Line 133
    jr	$ra
    # Line 132
    sw	$v0,4148($zero)
.L0d983ff4:
    sdc1	$f15,16($sp)
    # Line 125
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,24($sp)
    sdc1	$f13,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    ldc1	$f5,24($sp)
    ldc1	$f6,16($sp)
    b	.L0d983f74
    move	$a2,$v0
.end __glkonlc_Rectf

# Function: __glkonlc_Rectfv
# Declared: Line 136 (Source lines: 136-145)
# Address: 0x0d984030 - 0x0d98411c (Size: 236 bytes, Frame: 32)
.globl __glkonlc_Rectfv
.ent __glkonlc_Rectfv
__glkonlc_Rectfv:
    # Line 137
    lw	$a4,4136($zero)
    # Line 136
    addiu	$sp,$sp,-32
    lui	$at,0x11
    # Line 137
    slti	$v0,$a4,16
    # Line 136
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-12376
    sd	$gp,8($sp)
    # Line 137
    bnez	$v0,.L0d9840f8
    # Line 136
    addu	$gp,$t9,$at
.L0d984058:
    # Line 137
    lw	$a0,4144($zero)
    # Line 139
    li	$a2,140
    sw	$a2,8($a0)
    # Line 138
    li	$a3,22
    sw	$a3,4($a0)
    li	$a5,3
    sw	$a5,0($a0)
    # Line 139
    lwc1	$f7,0($s8)
    swc1	$f7,12($a0)
    lwc1	$f6,4($s8)
    # Line 140
    sw	$a2,20($a0)
    # Line 139
    swc1	$f6,16($a0)
    # Line 140
    lwc1	$f5,0($a1)
    swc1	$f5,24($a0)
    lwc1	$f4,4($s8)
    # Line 141
    sw	$a2,32($a0)
    # Line 140
    swc1	$f4,28($a0)
    # Line 141
    lwc1	$f3,0($a1)
    # Line 145
    ld	$gp,8($sp)
    # Line 141
    swc1	$f3,36($a0)
    lwc1	$f2,4($a1)
    # Line 142
    sw	$a2,44($a0)
    # Line 141
    swc1	$f2,40($a0)
    # Line 142
    lwc1	$f1,0($s8)
    # Line 145
    ld	$s8,0($sp)
    # Line 142
    swc1	$f1,48($a0)
    lwc1	$f0,4($a1)
    # Line 143
    li	$a1,113
    sw	$a1,56($a0)
    sw	$zero,60($a0)
    # Line 142
    swc1	$f0,52($a0)
    # Line 144
    addiu	$a0,$a0,64
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-16
    sw	$v1,4136($zero)
    # Line 145
    addiu	$sp,$sp,32
    # Line 144
    addiu	$v0,$v0,16
    # Line 145
    jr	$ra
    # Line 144
    sw	$v0,4148($zero)
.L0d9840f8:
    # Line 137
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0d984058
    move	$a4,$v0
.end __glkonlc_Rectfv

# Function: __glkonlc_Recti
# Declared: Line 148 (Source lines: 148-157)
# Address: 0x0d984120 - 0x0d9841fc (Size: 220 bytes, Frame: 48)
.globl __glkonlc_Recti
.ent __glkonlc_Recti
__glkonlc_Recti:
    # Line 149
    lw	$a6,4136($zero)
    # Line 148
    addiu	$sp,$sp,-48
    lui	$at,0x11
    # Line 149
    slti	$v0,$a6,16
    # Line 148
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-12616
    sd	$gp,8($sp)
    # Line 149
    bnez	$v0,.L0d9841c8
    # Line 148
    addu	$gp,$t9,$at
.L0d984148:
    # Line 149
    lw	$a0,4144($zero)
    # Line 157
    ld	$gp,8($sp)
    # Line 150
    li	$a7,3
    sw	$a7,0($a0)
    li	$a5,14
    sw	$a5,4($a0)
    # Line 151
    li	$a4,141
    sw	$a4,8($a0)
    sw	$s8,12($a0)
    # Line 152
    sw	$a4,20($a0)
    sw	$a2,24($a0)
    # Line 153
    sw	$a4,32($a0)
    sw	$a2,36($a0)
    sw	$a3,40($a0)
    # Line 154
    sw	$a4,44($a0)
    sw	$s8,48($a0)
    sw	$a3,52($a0)
    # Line 151
    sw	$a1,16($a0)
    # Line 152
    sw	$a1,28($a0)
    # Line 155
    li	$a1,113
    sw	$a1,56($a0)
    sw	$zero,60($a0)
    # Line 156
    addiu	$a0,$a0,64
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-16
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 157
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 156
    addiu	$v0,$v0,16
    # Line 157
    jr	$ra
    # Line 156
    sw	$v0,4148($zero)
.L0d9841c8:
    sd	$a3,16($sp)
    # Line 149
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    b	.L0d984148
    move	$a6,$v0
.end __glkonlc_Recti

# Function: __glkonlc_Rectiv
# Declared: Line 160 (Source lines: 160-169)
# Address: 0x0d984200 - 0x0d9842ec (Size: 236 bytes, Frame: 32)
.globl __glkonlc_Rectiv
.ent __glkonlc_Rectiv
__glkonlc_Rectiv:
    # Line 161
    lw	$a4,4136($zero)
    # Line 160
    addiu	$sp,$sp,-32
    lui	$at,0x11
    # Line 161
    slti	$v0,$a4,16
    # Line 160
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-12840
    sd	$gp,8($sp)
    # Line 161
    bnez	$v0,.L0d9842c8
    # Line 160
    addu	$gp,$t9,$at
.L0d984228:
    # Line 161
    lw	$a0,4144($zero)
    # Line 169
    ld	$gp,8($sp)
    # Line 163
    li	$a5,141
    sw	$a5,8($a0)
    # Line 162
    li	$t8,22
    sw	$t8,4($a0)
    li	$t9,3
    sw	$t9,0($a0)
    # Line 163
    lw	$t3,0($s8)
    sw	$t3,12($a0)
    lw	$t2,4($s8)
    # Line 164
    sw	$a5,20($a0)
    # Line 163
    sw	$t2,16($a0)
    # Line 164
    lw	$t1,0($a1)
    sw	$t1,24($a0)
    lw	$t0,4($s8)
    # Line 165
    sw	$a5,32($a0)
    # Line 164
    sw	$t0,28($a0)
    # Line 165
    lw	$a7,0($a1)
    sw	$a7,36($a0)
    lw	$a6,4($a1)
    # Line 166
    sw	$a5,44($a0)
    # Line 165
    sw	$a6,40($a0)
    # Line 166
    lw	$a3,0($s8)
    # Line 169
    ld	$s8,0($sp)
    # Line 166
    sw	$a3,48($a0)
    lw	$a2,4($a1)
    # Line 167
    li	$a1,113
    sw	$a1,56($a0)
    sw	$zero,60($a0)
    # Line 166
    sw	$a2,52($a0)
    # Line 168
    addiu	$a0,$a0,64
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-16
    sw	$v1,4136($zero)
    # Line 169
    addiu	$sp,$sp,32
    # Line 168
    addiu	$v0,$v0,16
    # Line 169
    jr	$ra
    # Line 168
    sw	$v0,4148($zero)
.L0d9842c8:
    # Line 161
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0d984228
    move	$a4,$v0
.end __glkonlc_Rectiv

# Function: __glkonlc_Rects
# Declared: Line 172 (Source lines: 172-192)
# Address: 0x0d9842f0 - 0x0d9843d0 (Size: 224 bytes, Frame: 48)
.globl __glkonlc_Rects
.ent __glkonlc_Rects
__glkonlc_Rects:
    # Line 174
    lw	$a6,4136($zero)
    # Line 172
    addiu	$sp,$sp,-48
    lui	$at,0x11
    # Line 174
    slti	$v0,$a6,12
    # Line 172
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-13080
    sd	$gp,8($sp)
    # Line 174
    bnez	$v0,.L0d98439c
    # Line 172
    addu	$gp,$t9,$at
.L0d984318:
    # Line 192
    ld	$gp,8($sp)
    # Line 174
    lw	$a0,4144($zero)
    # Line 176
    sll	$a4,$s8,0x10
    # Line 192
    ld	$s8,0($sp)
    # Line 176
    ori	$a4,$a4,0x8e
    sw	$a4,8($a0)
    # Line 175
    li	$a7,3
    sw	$a7,0($a0)
    # Line 176
    sll	$a7,$a1,0x10
    sw	$a7,12($a0)
    # Line 177
    sw	$a7,20($a0)
    # Line 175
    li	$a5,14
    sw	$a5,4($a0)
    # Line 177
    sll	$a5,$a2,0x10
    # Line 178
    sll	$a2,$a3,0x10
    sw	$a2,28($a0)
    # Line 179
    sw	$a4,32($a0)
    sw	$a2,36($a0)
    # Line 180
    li	$a1,113
    sw	$a1,40($a0)
    sw	$zero,44($a0)
    # Line 177
    ori	$a5,$a5,0x8e
    sw	$a5,16($a0)
    # Line 178
    sw	$a5,24($a0)
    # Line 181
    addiu	$a0,$a0,48
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-12
    sw	$v1,4136($zero)
    # Line 192
    addiu	$sp,$sp,48
    # Line 181
    addiu	$v0,$v0,12
    # Line 192
    jr	$ra
    # Line 181
    sw	$v0,4148($zero)
.L0d98439c:
    sd	$a3,16($sp)
    # Line 174
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    b	.L0d984318
    move	$a6,$v0
.end __glkonlc_Rects

# Function: __glkonlc_Rectsv
# Declared: Line 195 (Source lines: 195-215)
# Address: 0x0d9843d0 - 0x0d9844d8 (Size: 264 bytes, Frame: 32)
.globl __glkonlc_Rectsv
.ent __glkonlc_Rectsv
__glkonlc_Rectsv:
    # Line 197
    lw	$a4,4136($zero)
    # Line 195
    addiu	$sp,$sp,-32
    lui	$at,0x11
    # Line 197
    slti	$v0,$a4,12
    # Line 195
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-13304
    sd	$gp,8($sp)
    # Line 197
    bnez	$v0,.L0d9844b4
    # Line 195
    addu	$gp,$t9,$at
.L0d9843f8:
    # Line 197
    lw	$a0,4144($zero)
    # Line 198
    li	$t3,22
    sw	$t3,4($a0)
    li	$t8,3
    sw	$t8,0($a0)
    # Line 199
    lh	$t2,0($s8)
    sll	$t2,$t2,0x10
    ori	$t2,$t2,0x8e
    sw	$t2,8($a0)
    lh	$t1,2($s8)
    sll	$t1,$t1,0x10
    sw	$t1,12($a0)
    # Line 200
    lh	$t0,0($a1)
    sll	$t0,$t0,0x10
    ori	$t0,$t0,0x8e
    sw	$t0,16($a0)
    lh	$a7,2($s8)
    sll	$a7,$a7,0x10
    sw	$a7,20($a0)
    # Line 201
    lh	$a6,0($a1)
    sll	$a6,$a6,0x10
    ori	$a6,$a6,0x8e
    sw	$a6,24($a0)
    lh	$a5,2($a1)
    sll	$a5,$a5,0x10
    sw	$a5,28($a0)
    # Line 202
    lh	$a3,0($s8)
    # Line 215
    ld	$gp,8($sp)
    ld	$s8,0($sp)
    # Line 202
    sll	$a3,$a3,0x10
    ori	$a3,$a3,0x8e
    sw	$a3,32($a0)
    lh	$a2,2($a1)
    # Line 203
    li	$a1,113
    sw	$a1,40($a0)
    sw	$zero,44($a0)
    # Line 202
    sll	$a2,$a2,0x10
    sw	$a2,36($a0)
    # Line 204
    addiu	$a0,$a0,48
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-12
    sw	$v1,4136($zero)
    # Line 215
    addiu	$sp,$sp,32
    # Line 204
    addiu	$v0,$v0,12
    # Line 215
    jr	$ra
    # Line 204
    sw	$v0,4148($zero)
.L0d9844b4:
    # Line 197
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0d9843f8
    move	$a4,$v0
.end __glkonlc_Rectsv

