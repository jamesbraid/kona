# Source: ../soft/so_rapi.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_rapi.c
# Total Functions: 24

.text

# Function: __glim_RasterPos2dv
# Declared: Line 38 (Source lines: 39-45)
# Address: 0x0da02220 - 0x0da022c4 (Size: 164 bytes, Frame: 48)
.globl __glim_RasterPos2dv
.ent __glim_RasterPos2dv
__glim_RasterPos2dv:
    # Line 39
    move	$a4,$a0
    # Line 41
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 39
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 41
    li	$v0,2
    sd	$ra,32($sp)
    # Line 39
    addiu	$at,$at,-4680
    sd	$gp,16($sp)
    # Line 41
    beqz	$a2,.L0da02294
    # Line 39
    addu	$gp,$t9,$at
    sd	$a0,24($sp)
    # Line 41
    beq	$a2,$v0,.L0da02274
    sd	$a3,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
.L0da02268:
    # Line 45
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da02274:
    # Line 41
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,8($sp)
    ld	$a4,24($sp)
    sw	$zero,4120($zero)
.L0da02294:
    # Line 43
    ldc1	$f1,0($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($sp)
    ldc1	$f0,8($a4)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($sp)
    # Line 44
    lw	$t9,12672($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da02268
    ld	$ra,32($sp)
.end __glim_RasterPos2dv

# Function: __glim_RasterPos2fv
# Declared: Line 47 (Source lines: 48-52)
# Address: 0x0da022d0 - 0x0da02358 (Size: 136 bytes, Frame: 32)
.globl __glim_RasterPos2fv
.ent __glim_RasterPos2fv
__glim_RasterPos2fv:
    # Line 48
    move	$a1,$a0
    # Line 49
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 48
    addiu	$sp,$sp,-32
    lui	$at,0x9
    # Line 49
    li	$v0,2
    sd	$ra,24($sp)
    # Line 48
    addiu	$at,$at,-4856
    sd	$gp,8($sp)
    # Line 49
    beqz	$a3,.L0da0233c
    # Line 48
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    # Line 49
    beq	$a3,$v0,.L0da0231c
    sd	$a4,0($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da02348
    nop
.L0da0231c:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,16($sp)
    sw	$zero,4120($zero)
.L0da0233c:
    # Line 51
    lw	$t9,12672($a4)
    jalr	$t9
    move	$a0,$a4
.L0da02348:
    ld	$ra,24($sp)
    # Line 52
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_RasterPos2fv

# Function: __glim_RasterPos2d
# Declared: Line 55 (Source lines: 56-62)
# Address: 0x0da02360 - 0x0da02404 (Size: 164 bytes, Frame: 48)
.globl __glim_RasterPos2d
.ent __glim_RasterPos2d
__glim_RasterPos2d:
    # Line 58
    lw	$a2,4120($zero)
    lw	$a0,4112($zero)
    # Line 56
    addiu	$sp,$sp,-48
    lui	$at,0x9
    mov.d	$f4,$f13
    # Line 58
    li	$v0,2
    sd	$ra,40($sp)
    # Line 56
    addiu	$at,$at,-5000
    mov.d	$f5,$f12
    sd	$gp,16($sp)
    # Line 58
    beqz	$a2,.L0da023e0
    # Line 56
    addu	$gp,$t9,$at
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    # Line 58
    beq	$a2,$v0,.L0da023bc
    sd	$a0,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da023b0:
    # Line 62
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da023bc:
    # Line 58
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,8($sp)
    ldc1	$f4,32($sp)
    ldc1	$f5,24($sp)
    sw	$zero,4120($zero)
.L0da023e0:
    # Line 60
    cvt.s.d	$f0,$f4
    cvt.s.d	$f1,$f5
    swc1	$f0,4($sp)
    swc1	$f1,0($sp)
    # Line 61
    lw	$t9,12672($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da023b0
    ld	$ra,40($sp)
.end __glim_RasterPos2d

# Function: __glim_RasterPos2f
# Declared: Line 64 (Source lines: 65-71)
# Address: 0x0da02410 - 0x0da024ac (Size: 156 bytes, Frame: 48)
.globl __glim_RasterPos2f
.ent __glim_RasterPos2f
__glim_RasterPos2f:
    # Line 67
    lw	$a2,4120($zero)
    lw	$a0,4112($zero)
    # Line 65
    addiu	$sp,$sp,-48
    lui	$at,0x9
    mov.s	$f4,$f13
    # Line 67
    li	$v0,2
    sd	$ra,40($sp)
    # Line 65
    addiu	$at,$at,-5176
    mov.s	$f5,$f12
    sd	$gp,16($sp)
    # Line 67
    beqz	$a2,.L0da02490
    # Line 65
    addu	$gp,$t9,$at
    sdc1	$f12,24($sp)
    sdc1	$f13,32($sp)
    # Line 67
    beq	$a2,$v0,.L0da0246c
    sd	$a0,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da02460:
    # Line 71
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da0246c:
    # Line 67
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,8($sp)
    ldc1	$f4,32($sp)
    ldc1	$f5,24($sp)
    sw	$zero,4120($zero)
.L0da02490:
    # Line 69
    swc1	$f4,4($sp)
    swc1	$f5,0($sp)
    # Line 70
    lw	$t9,12672($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da02460
    ld	$ra,40($sp)
.end __glim_RasterPos2f

# Function: __glim_RasterPos2i
# Declared: Line 73 (Source lines: 74-80)
# Address: 0x0da024b0 - 0x0da02560 (Size: 176 bytes, Frame: 48)
.globl __glim_RasterPos2i
.ent __glim_RasterPos2i
__glim_RasterPos2i:
    # Line 74
    move	$a5,$a1
    move	$a6,$a0
    # Line 76
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 74
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 76
    li	$v0,2
    sd	$ra,40($sp)
    # Line 74
    addiu	$at,$at,-5336
    sd	$gp,16($sp)
    # Line 76
    beqz	$a3,.L0da02530
    # Line 74
    addu	$gp,$t9,$at
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    # Line 76
    beq	$a3,$v0,.L0da0250c
    sd	$a4,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da02500:
    # Line 80
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da0250c:
    # Line 76
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a4,8($sp)
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    sw	$zero,4120($zero)
.L0da02530:
    # Line 78
    mtc1	$a5,$f0
    mtc1	$a6,$f1
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    swc1	$f0,4($sp)
    swc1	$f1,0($sp)
    # Line 79
    lw	$t9,12672($a4)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a4
    b	.L0da02500
    ld	$ra,40($sp)
.end __glim_RasterPos2i

# Function: __glim_RasterPos2iv
# Declared: Line 82 (Source lines: 83-89)
# Address: 0x0da02560 - 0x0da0260c (Size: 172 bytes, Frame: 48)
.globl __glim_RasterPos2iv
.ent __glim_RasterPos2iv
__glim_RasterPos2iv:
    # Line 83
    move	$a4,$a0
    # Line 85
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 83
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 85
    li	$v0,2
    sd	$ra,32($sp)
    # Line 83
    addiu	$at,$at,-5512
    sd	$gp,16($sp)
    # Line 85
    beqz	$a2,.L0da025d4
    # Line 83
    addu	$gp,$t9,$at
    sd	$a0,24($sp)
    # Line 85
    beq	$a2,$v0,.L0da025b4
    sd	$a3,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
.L0da025a8:
    # Line 89
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da025b4:
    # Line 85
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,8($sp)
    ld	$a4,24($sp)
    sw	$zero,4120($zero)
.L0da025d4:
    # Line 87
    lw	$at,0($a4)
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,0($sp)
    lw	$ra,4($a4)
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,4($sp)
    # Line 88
    lw	$t9,12672($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da025a8
    ld	$ra,32($sp)
.end __glim_RasterPos2iv

# Function: __glim_RasterPos2s
# Declared: Line 91 (Source lines: 92-98)
# Address: 0x0da02610 - 0x0da026c0 (Size: 176 bytes, Frame: 48)
.globl __glim_RasterPos2s
.ent __glim_RasterPos2s
__glim_RasterPos2s:
    # Line 92
    move	$a5,$a1
    move	$a6,$a0
    # Line 94
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 92
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 94
    li	$v0,2
    sd	$ra,40($sp)
    # Line 92
    addiu	$at,$at,-5688
    sd	$gp,16($sp)
    # Line 94
    beqz	$a3,.L0da02690
    # Line 92
    addu	$gp,$t9,$at
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    # Line 94
    beq	$a3,$v0,.L0da0266c
    sd	$a4,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da02660:
    # Line 98
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da0266c:
    # Line 94
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a4,8($sp)
    ld	$a5,32($sp)
    ld	$a6,24($sp)
    sw	$zero,4120($zero)
.L0da02690:
    # Line 96
    mtc1	$a5,$f0
    mtc1	$a6,$f1
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    swc1	$f0,4($sp)
    swc1	$f1,0($sp)
    # Line 97
    lw	$t9,12672($a4)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a4
    b	.L0da02660
    ld	$ra,40($sp)
.end __glim_RasterPos2s

# Function: __glim_RasterPos2sv
# Declared: Line 100 (Source lines: 101-107)
# Address: 0x0da026c0 - 0x0da0276c (Size: 172 bytes, Frame: 48)
.globl __glim_RasterPos2sv
.ent __glim_RasterPos2sv
__glim_RasterPos2sv:
    # Line 101
    move	$a4,$a0
    # Line 103
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 101
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 103
    li	$v0,2
    sd	$ra,32($sp)
    # Line 101
    addiu	$at,$at,-5864
    sd	$gp,16($sp)
    # Line 103
    beqz	$a2,.L0da02734
    # Line 101
    addu	$gp,$t9,$at
    sd	$a0,24($sp)
    # Line 103
    beq	$a2,$v0,.L0da02714
    sd	$a3,8($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
.L0da02708:
    # Line 107
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da02714:
    # Line 103
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,8($sp)
    ld	$a4,24($sp)
    sw	$zero,4120($zero)
.L0da02734:
    # Line 105
    lh	$at,0($a4)
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,0($sp)
    lh	$ra,2($a4)
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,4($sp)
    # Line 106
    lw	$t9,12672($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da02708
    ld	$ra,32($sp)
.end __glim_RasterPos2sv

# Function: __glim_RasterPos3dv
# Declared: Line 126 (Source lines: 127-133)
# Address: 0x0da02770 - 0x0da02820 (Size: 176 bytes, Frame: 48)
.globl __glim_RasterPos3dv
.ent __glim_RasterPos3dv
__glim_RasterPos3dv:
    # Line 127
    move	$a4,$a0
    # Line 129
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 127
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 129
    li	$v0,2
    sd	$ra,40($sp)
    # Line 127
    addiu	$at,$at,-6040
    sd	$gp,24($sp)
    # Line 129
    beqz	$a2,.L0da027e4
    # Line 127
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    # Line 129
    beq	$a2,$v0,.L0da027c4
    sd	$a3,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da027b8:
    # Line 133
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da027c4:
    # Line 129
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    ld	$a4,32($sp)
    sw	$zero,4120($zero)
.L0da027e4:
    # Line 131
    ldc1	$f2,0($a4)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($sp)
    ldc1	$f1,8($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($sp)
    ldc1	$f0,16($a4)
    cvt.s.d	$f0,$f0
    swc1	$f0,8($sp)
    # Line 132
    lw	$t9,12676($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da027b8
    ld	$ra,40($sp)
.end __glim_RasterPos3dv

# Function: __glim_RasterPos3fv
# Declared: Line 135 (Source lines: 136-140)
# Address: 0x0da02820 - 0x0da028a8 (Size: 136 bytes, Frame: 32)
.globl __glim_RasterPos3fv
.ent __glim_RasterPos3fv
__glim_RasterPos3fv:
    # Line 136
    move	$a1,$a0
    # Line 137
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 136
    addiu	$sp,$sp,-32
    lui	$at,0x9
    # Line 137
    li	$v0,2
    sd	$ra,24($sp)
    # Line 136
    addiu	$at,$at,-6216
    sd	$gp,8($sp)
    # Line 137
    beqz	$a3,.L0da0288c
    # Line 136
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    # Line 137
    beq	$a3,$v0,.L0da0286c
    sd	$a4,0($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da02898
    nop
.L0da0286c:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,16($sp)
    sw	$zero,4120($zero)
.L0da0288c:
    # Line 139
    lw	$t9,12676($a4)
    jalr	$t9
    move	$a0,$a4
.L0da02898:
    ld	$ra,24($sp)
    # Line 140
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_RasterPos3fv

# Function: __glim_RasterPos3d
# Declared: Line 143 (Source lines: 144-150)
# Address: 0x0da028b0 - 0x0da02968 (Size: 184 bytes, Frame: 192)
.globl __glim_RasterPos3d
.ent __glim_RasterPos3d
__glim_RasterPos3d:
    # Line 146
    lw	$a2,4120($zero)
    # Line 144
    mov.d	$f4,$f14
    # Line 146
    lw	$a0,4112($zero)
    # Line 144
    addiu	$sp,$sp,-64
    lui	$at,0x9
    mov.d	$f5,$f13
    sd	$ra,56($sp)
    addiu	$at,$at,-6360
    mov.d	$f6,$f12
    sd	$gp,24($sp)
    # Line 146
    beqz	$a2,.L0da0293c
    # Line 144
    addu	$gp,$t9,$at
    sdc1	$f12,32($sp)
    sdc1	$f13,40($sp)
    # Line 146
    li	$v0,2
    sdc1	$f14,48($sp)
    beq	$a2,$v0,.L0da02914
    sd	$a0,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0da02908:
    # Line 150
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da02914:
    # Line 146
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,16($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    sw	$zero,4120($zero)
.L0da0293c:
    # Line 148
    cvt.s.d	$f0,$f4
    cvt.s.d	$f1,$f5
    swc1	$f0,8($sp)
    cvt.s.d	$f2,$f6
    swc1	$f1,4($sp)
    swc1	$f2,0($sp)
    # Line 149
    lw	$t9,12676($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da02908
    ld	$ra,56($sp)
.end __glim_RasterPos3d

# Function: __glim_RasterPos3f
# Declared: Line 152 (Source lines: 153-159)
# Address: 0x0da02970 - 0x0da02a1c (Size: 172 bytes, Frame: 192)
.globl __glim_RasterPos3f
.ent __glim_RasterPos3f
__glim_RasterPos3f:
    # Line 155
    lw	$a2,4120($zero)
    # Line 153
    mov.s	$f4,$f14
    # Line 155
    lw	$a0,4112($zero)
    # Line 153
    addiu	$sp,$sp,-64
    lui	$at,0x9
    mov.s	$f5,$f13
    sd	$ra,56($sp)
    addiu	$at,$at,-6552
    mov.s	$f6,$f12
    sd	$gp,24($sp)
    # Line 155
    beqz	$a2,.L0da029fc
    # Line 153
    addu	$gp,$t9,$at
    sdc1	$f12,32($sp)
    sdc1	$f13,40($sp)
    # Line 155
    li	$v0,2
    sdc1	$f14,48($sp)
    beq	$a2,$v0,.L0da029d4
    sd	$a0,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0da029c8:
    # Line 159
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da029d4:
    # Line 155
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,16($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    ldc1	$f6,32($sp)
    sw	$zero,4120($zero)
.L0da029fc:
    # Line 157
    swc1	$f4,8($sp)
    swc1	$f5,4($sp)
    swc1	$f6,0($sp)
    # Line 158
    lw	$t9,12676($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da029c8
    ld	$ra,56($sp)
.end __glim_RasterPos3f

# Function: __glim_RasterPos3i
# Declared: Line 161 (Source lines: 162-168)
# Address: 0x0da02a20 - 0x0da02ae4 (Size: 196 bytes, Frame: 192)
.globl __glim_RasterPos3i
.ent __glim_RasterPos3i
__glim_RasterPos3i:
    # Line 162
    move	$a6,$a1
    move	$a7,$a0
    # Line 164
    lw	$a4,4120($zero)
    lw	$a5,4112($zero)
    # Line 162
    addiu	$sp,$sp,-64
    lui	$at,0x9
    # Line 164
    li	$v0,2
    sd	$ra,56($sp)
    # Line 162
    addiu	$at,$at,-6728
    sd	$gp,24($sp)
    # Line 164
    beqz	$a4,.L0da02aa8
    # Line 162
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    # Line 164
    beq	$a4,$v0,.L0da02a80
    sd	$a5,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0da02a74:
    # Line 168
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da02a80:
    # Line 164
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a5,16($sp)
    ld	$a2,48($sp)
    ld	$a6,40($sp)
    ld	$a7,32($sp)
    sw	$zero,4120($zero)
.L0da02aa8:
    # Line 166
    mtc1	$a2,$f0
    mtc1	$a6,$f1
    mtc1	$a7,$f2
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    cvt.s.w	$f2,$f2
    swc1	$f0,8($sp)
    swc1	$f1,4($sp)
    swc1	$f2,0($sp)
    # Line 167
    lw	$t9,12676($a5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a5
    b	.L0da02a74
    ld	$ra,56($sp)
.end __glim_RasterPos3i

# Function: __glim_RasterPos3iv
# Declared: Line 170 (Source lines: 171-177)
# Address: 0x0da02af0 - 0x0da02bac (Size: 188 bytes, Frame: 48)
.globl __glim_RasterPos3iv
.ent __glim_RasterPos3iv
__glim_RasterPos3iv:
    # Line 171
    move	$a4,$a0
    # Line 173
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 171
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 173
    li	$v0,2
    sd	$ra,40($sp)
    # Line 171
    addiu	$at,$at,-6936
    sd	$gp,24($sp)
    # Line 173
    beqz	$a2,.L0da02b64
    # Line 171
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    # Line 173
    beq	$a2,$v0,.L0da02b44
    sd	$a3,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da02b38:
    # Line 177
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da02b44:
    # Line 173
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    ld	$a4,32($sp)
    sw	$zero,4120($zero)
.L0da02b64:
    # Line 175
    lw	$v0,0($a4)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($sp)
    lw	$at,4($a4)
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,4($sp)
    lw	$ra,8($a4)
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,8($sp)
    # Line 176
    lw	$t9,12676($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da02b38
    ld	$ra,40($sp)
.end __glim_RasterPos3iv

# Function: __glim_RasterPos3s
# Declared: Line 179 (Source lines: 180-186)
# Address: 0x0da02bb0 - 0x0da02c74 (Size: 196 bytes, Frame: 192)
.globl __glim_RasterPos3s
.ent __glim_RasterPos3s
__glim_RasterPos3s:
    # Line 180
    move	$a6,$a1
    move	$a7,$a0
    # Line 182
    lw	$a4,4120($zero)
    lw	$a5,4112($zero)
    # Line 180
    addiu	$sp,$sp,-64
    lui	$at,0x9
    # Line 182
    li	$v0,2
    sd	$ra,56($sp)
    # Line 180
    addiu	$at,$at,-7128
    sd	$gp,24($sp)
    # Line 182
    beqz	$a4,.L0da02c38
    # Line 180
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    # Line 182
    beq	$a4,$v0,.L0da02c10
    sd	$a5,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0da02c04:
    # Line 186
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da02c10:
    # Line 182
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a5,16($sp)
    ld	$a2,48($sp)
    ld	$a6,40($sp)
    ld	$a7,32($sp)
    sw	$zero,4120($zero)
.L0da02c38:
    # Line 184
    mtc1	$a2,$f0
    mtc1	$a6,$f1
    mtc1	$a7,$f2
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    cvt.s.w	$f2,$f2
    swc1	$f0,8($sp)
    swc1	$f1,4($sp)
    swc1	$f2,0($sp)
    # Line 185
    lw	$t9,12676($a5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a5
    b	.L0da02c04
    ld	$ra,56($sp)
.end __glim_RasterPos3s

# Function: __glim_RasterPos3sv
# Declared: Line 188 (Source lines: 189-195)
# Address: 0x0da02c80 - 0x0da02d3c (Size: 188 bytes, Frame: 48)
.globl __glim_RasterPos3sv
.ent __glim_RasterPos3sv
__glim_RasterPos3sv:
    # Line 189
    move	$a4,$a0
    # Line 191
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 189
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 191
    li	$v0,2
    sd	$ra,40($sp)
    # Line 189
    addiu	$at,$at,-7336
    sd	$gp,24($sp)
    # Line 191
    beqz	$a2,.L0da02cf4
    # Line 189
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    # Line 191
    beq	$a2,$v0,.L0da02cd4
    sd	$a3,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da02cc8:
    # Line 195
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da02cd4:
    # Line 191
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    ld	$a4,32($sp)
    sw	$zero,4120($zero)
.L0da02cf4:
    # Line 193
    lh	$v0,0($a4)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($sp)
    lh	$at,2($a4)
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,4($sp)
    lh	$ra,4($a4)
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,8($sp)
    # Line 194
    lw	$t9,12676($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da02cc8
    ld	$ra,40($sp)
.end __glim_RasterPos3sv

# Function: __glim_RasterPos4dv
# Declared: Line 214 (Source lines: 215-221)
# Address: 0x0da02d40 - 0x0da02dfc (Size: 188 bytes, Frame: 48)
.globl __glim_RasterPos4dv
.ent __glim_RasterPos4dv
__glim_RasterPos4dv:
    # Line 215
    move	$a4,$a0
    # Line 217
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 215
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 217
    li	$v0,2
    sd	$ra,40($sp)
    # Line 215
    addiu	$at,$at,-7528
    sd	$gp,24($sp)
    # Line 217
    beqz	$a2,.L0da02db4
    # Line 215
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    # Line 217
    beq	$a2,$v0,.L0da02d94
    sd	$a3,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da02d88:
    # Line 221
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da02d94:
    # Line 217
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    ld	$a4,32($sp)
    sw	$zero,4120($zero)
.L0da02db4:
    # Line 219
    ldc1	$f3,0($a4)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    ldc1	$f2,8($a4)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,16($a4)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,24($a4)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 220
    lw	$t9,12680($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da02d88
    ld	$ra,40($sp)
.end __glim_RasterPos4dv

# Function: __glim_RasterPos4fv
# Declared: Line 223 (Source lines: 224-228)
# Address: 0x0da02e00 - 0x0da02e88 (Size: 136 bytes, Frame: 32)
.globl __glim_RasterPos4fv
.ent __glim_RasterPos4fv
__glim_RasterPos4fv:
    # Line 224
    move	$a1,$a0
    # Line 225
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 224
    addiu	$sp,$sp,-32
    lui	$at,0x9
    # Line 225
    li	$v0,2
    sd	$ra,24($sp)
    # Line 224
    addiu	$at,$at,-7720
    sd	$gp,8($sp)
    # Line 225
    beqz	$a3,.L0da02e6c
    # Line 224
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    # Line 225
    beq	$a3,$v0,.L0da02e4c
    sd	$a4,0($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da02e78
    nop
.L0da02e4c:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,16($sp)
    sw	$zero,4120($zero)
.L0da02e6c:
    # Line 227
    lw	$t9,12680($a4)
    jalr	$t9
    move	$a0,$a4
.L0da02e78:
    ld	$ra,24($sp)
    # Line 228
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_RasterPos4fv

# Function: __glim_RasterPos4d
# Declared: Line 231 (Source lines: 232-238)
# Address: 0x0da02e90 - 0x0da02f5c (Size: 204 bytes, Frame: 208)
.globl __glim_RasterPos4d
.ent __glim_RasterPos4d
__glim_RasterPos4d:
    # Line 232
    mov.d	$f4,$f15
    # Line 234
    lw	$a2,4120($zero)
    # Line 232
    mov.d	$f5,$f14
    # Line 234
    lw	$a0,4112($zero)
    # Line 232
    addiu	$sp,$sp,-80
    lui	$at,0x9
    mov.d	$f6,$f13
    sd	$ra,64($sp)
    addiu	$at,$at,-7864
    mov.d	$f7,$f12
    sd	$gp,24($sp)
    # Line 234
    beqz	$a2,.L0da02f28
    # Line 232
    addu	$gp,$t9,$at
    sdc1	$f12,32($sp)
    sdc1	$f13,40($sp)
    sdc1	$f14,48($sp)
    # Line 234
    li	$v0,2
    sdc1	$f15,56($sp)
    beq	$a2,$v0,.L0da02efc
    sd	$a0,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
.L0da02ef0:
    # Line 238
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da02efc:
    # Line 234
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,16($sp)
    ldc1	$f4,56($sp)
    ldc1	$f5,48($sp)
    ldc1	$f6,40($sp)
    ldc1	$f7,32($sp)
    sw	$zero,4120($zero)
.L0da02f28:
    # Line 236
    cvt.s.d	$f0,$f4
    cvt.s.d	$f1,$f5
    swc1	$f0,12($sp)
    cvt.s.d	$f2,$f6
    swc1	$f1,8($sp)
    cvt.s.d	$f3,$f7
    swc1	$f2,4($sp)
    swc1	$f3,0($sp)
    # Line 237
    lw	$t9,12680($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da02ef0
    ld	$ra,64($sp)
.end __glim_RasterPos4d

# Function: __glim_RasterPos4f
# Declared: Line 240 (Source lines: 241-247)
# Address: 0x0da02f60 - 0x0da0301c (Size: 188 bytes, Frame: 208)
.globl __glim_RasterPos4f
.ent __glim_RasterPos4f
__glim_RasterPos4f:
    # Line 241
    mov.s	$f4,$f15
    # Line 243
    lw	$a2,4120($zero)
    # Line 241
    mov.s	$f5,$f14
    # Line 243
    lw	$a0,4112($zero)
    # Line 241
    addiu	$sp,$sp,-80
    lui	$at,0x9
    mov.s	$f6,$f13
    sd	$ra,64($sp)
    addiu	$at,$at,-8072
    mov.s	$f7,$f12
    sd	$gp,24($sp)
    # Line 243
    beqz	$a2,.L0da02ff8
    # Line 241
    addu	$gp,$t9,$at
    sdc1	$f12,32($sp)
    sdc1	$f13,40($sp)
    sdc1	$f14,48($sp)
    # Line 243
    li	$v0,2
    sdc1	$f15,56($sp)
    beq	$a2,$v0,.L0da02fcc
    sd	$a0,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
.L0da02fc0:
    # Line 247
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da02fcc:
    # Line 243
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a0,16($sp)
    ldc1	$f4,56($sp)
    ldc1	$f5,48($sp)
    ldc1	$f6,40($sp)
    ldc1	$f7,32($sp)
    sw	$zero,4120($zero)
.L0da02ff8:
    # Line 245
    swc1	$f4,12($sp)
    swc1	$f5,8($sp)
    swc1	$f6,4($sp)
    swc1	$f7,0($sp)
    # Line 246
    lw	$t9,12680($a0)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0da02fc0
    ld	$ra,64($sp)
.end __glim_RasterPos4f

# Function: __glim_RasterPos4i
# Declared: Line 249 (Source lines: 250-256)
# Address: 0x0da03020 - 0x0da030f8 (Size: 216 bytes, Frame: 208)
.globl __glim_RasterPos4i
.ent __glim_RasterPos4i
__glim_RasterPos4i:
    # Line 250
    move	$a7,$a1
    move	$t0,$a0
    # Line 252
    lw	$a5,4120($zero)
    lw	$a6,4112($zero)
    # Line 250
    addiu	$sp,$sp,-80
    lui	$at,0x9
    # Line 252
    li	$v0,2
    sd	$ra,64($sp)
    # Line 250
    addiu	$at,$at,-8264
    sd	$gp,24($sp)
    # Line 252
    beqz	$a5,.L0da030b0
    # Line 250
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    sd	$a3,56($sp)
    # Line 252
    beq	$a5,$v0,.L0da03084
    sd	$a6,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
.L0da03078:
    # Line 256
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da03084:
    # Line 252
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a6,16($sp)
    ld	$a3,56($sp)
    ld	$a2,48($sp)
    ld	$a7,40($sp)
    ld	$t0,32($sp)
    sw	$zero,4120($zero)
.L0da030b0:
    # Line 254
    mtc1	$a3,$f0
    mtc1	$a2,$f1
    mtc1	$a7,$f2
    mtc1	$t0,$f3
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    cvt.s.w	$f2,$f2
    cvt.s.w	$f3,$f3
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    swc1	$f2,4($sp)
    swc1	$f3,0($sp)
    # Line 255
    lw	$t9,12680($a6)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a6
    b	.L0da03078
    ld	$ra,64($sp)
.end __glim_RasterPos4i

# Function: __glim_RasterPos4iv
# Declared: Line 258 (Source lines: 259-265)
# Address: 0x0da03100 - 0x0da031cc (Size: 204 bytes, Frame: 48)
.globl __glim_RasterPos4iv
.ent __glim_RasterPos4iv
__glim_RasterPos4iv:
    # Line 259
    move	$a4,$a0
    # Line 261
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 259
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 261
    li	$v0,2
    sd	$ra,40($sp)
    # Line 259
    addiu	$at,$at,-8488
    sd	$gp,24($sp)
    # Line 261
    beqz	$a2,.L0da03174
    # Line 259
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    # Line 261
    beq	$a2,$v0,.L0da03154
    sd	$a3,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da03148:
    # Line 265
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03154:
    # Line 261
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    ld	$a4,32($sp)
    sw	$zero,4120($zero)
.L0da03174:
    # Line 263
    lw	$v1,0($a4)
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lw	$v0,4($a4)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lw	$at,8($a4)
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lw	$ra,12($a4)
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 264
    lw	$t9,12680($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da03148
    ld	$ra,40($sp)
.end __glim_RasterPos4iv

# Function: __glim_RasterPos4s
# Declared: Line 267 (Source lines: 268-274)
# Address: 0x0da031d0 - 0x0da032a8 (Size: 216 bytes, Frame: 208)
.globl __glim_RasterPos4s
.ent __glim_RasterPos4s
__glim_RasterPos4s:
    # Line 268
    move	$a7,$a1
    move	$t0,$a0
    # Line 270
    lw	$a5,4120($zero)
    lw	$a6,4112($zero)
    # Line 268
    addiu	$sp,$sp,-80
    lui	$at,0x9
    # Line 270
    li	$v0,2
    sd	$ra,64($sp)
    # Line 268
    addiu	$at,$at,-8696
    sd	$gp,24($sp)
    # Line 270
    beqz	$a5,.L0da03260
    # Line 268
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    sd	$a1,40($sp)
    sd	$a2,48($sp)
    sd	$a3,56($sp)
    # Line 270
    beq	$a5,$v0,.L0da03234
    sd	$a6,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
.L0da03228:
    # Line 274
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da03234:
    # Line 270
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a6,16($sp)
    ld	$a3,56($sp)
    ld	$a2,48($sp)
    ld	$a7,40($sp)
    ld	$t0,32($sp)
    sw	$zero,4120($zero)
.L0da03260:
    # Line 272
    mtc1	$a3,$f0
    mtc1	$a2,$f1
    mtc1	$a7,$f2
    mtc1	$t0,$f3
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    cvt.s.w	$f2,$f2
    cvt.s.w	$f3,$f3
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    swc1	$f2,4($sp)
    swc1	$f3,0($sp)
    # Line 273
    lw	$t9,12680($a6)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a6
    b	.L0da03228
    ld	$ra,64($sp)
.end __glim_RasterPos4s

# Function: __glim_RasterPos4sv
# Declared: Line 276 (Source lines: 277-283)
# Address: 0x0da032b0 - 0x0da0337c (Size: 204 bytes, Frame: 48)
.globl __glim_RasterPos4sv
.ent __glim_RasterPos4sv
__glim_RasterPos4sv:
    # Line 277
    move	$a4,$a0
    # Line 279
    lw	$a2,4120($zero)
    lw	$a3,4112($zero)
    # Line 277
    addiu	$sp,$sp,-48
    lui	$at,0x9
    # Line 279
    li	$v0,2
    sd	$ra,40($sp)
    # Line 277
    addiu	$at,$at,-8920
    sd	$gp,24($sp)
    # Line 279
    beqz	$a2,.L0da03324
    # Line 277
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    # Line 279
    beq	$a2,$v0,.L0da03304
    sd	$a3,16($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
.L0da032f8:
    # Line 283
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03304:
    # Line 279
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a3,16($sp)
    ld	$a4,32($sp)
    sw	$zero,4120($zero)
.L0da03324:
    # Line 281
    lh	$v1,0($a4)
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lh	$v0,2($a4)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lh	$at,4($a4)
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lh	$ra,6($a4)
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 282
    lw	$t9,12680($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$a3
    b	.L0da032f8
    ld	$ra,40($sp)
.end __glim_RasterPos4sv

