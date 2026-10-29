# Source: kon_cdlfuncs.c
# Category: kon
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c kon_cdlfuncs.c
# Total Functions: 218

.text

# Function: __glkonlc_Color3b
# Declared: Line 10 (Source lines: 10-15)
# Address: 0x0da670e0 - 0x0da67184 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_Color3b
.ent __glkonlc_Color3b
__glkonlc_Color3b:
    # Line 11
    lw	$a5,4136($zero)
    # Line 10
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 11
    slti	$v0,$a5,2
    # Line 10
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-24840
    sd	$gp,8($sp)
    # Line 11
    bnez	$v0,.L0da67158
    # Line 10
    addu	$gp,$t9,$at
.L0da67108:
    # Line 15
    ld	$gp,8($sp)
    # Line 11
    lw	$a0,4144($zero)
    # Line 12
    sll	$a3,$s8,0x18
    andi	$a4,$a1,0xff
    # Line 15
    ld	$s8,0($sp)
    # Line 12
    sll	$a4,$a4,0x10
    # Line 13
    sll	$a1,$a2,0x18
    sw	$a1,4($a0)
    # Line 12
    or	$a3,$a3,$a4
    ori	$a3,$a3,0x61
    sw	$a3,0($a0)
    # Line 14
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 15
    addiu	$sp,$sp,48
    # Line 14
    addiu	$v0,$v0,2
    # Line 15
    jr	$ra
    # Line 14
    sw	$v0,4148($zero)
.L0da67158:
    # Line 11
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da67108
    move	$a5,$v0
.end __glkonlc_Color3b

# Function: __glkonlc_Color3bv
# Declared: Line 16 (Source lines: 16-21)
# Address: 0x0da67190 - 0x0da6722c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Color3bv
.ent __glkonlc_Color3bv
__glkonlc_Color3bv:
    # Line 17
    lw	$a3,4136($zero)
    # Line 16
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 17
    slti	$v0,$a3,2
    # Line 16
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-25016
    sd	$gp,8($sp)
    # Line 17
    bnez	$v0,.L0da67210
    # Line 16
    addu	$gp,$t9,$at
.L0da671b8:
    # Line 18
    lbu	$a4,1($s8)
    lb	$a2,0($s8)
    sll	$a4,$a4,0x10
    # Line 17
    lw	$a0,4144($zero)
    # Line 18
    sll	$a2,$a2,0x18
    # Line 21
    ld	$gp,8($sp)
    # Line 18
    or	$a2,$a2,$a4
    ori	$a2,$a2,0x61
    sw	$a2,0($a0)
    # Line 19
    lb	$a1,2($s8)
    # Line 21
    ld	$s8,0($sp)
    # Line 19
    sll	$a1,$a1,0x18
    sw	$a1,4($a0)
    # Line 20
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 21
    addiu	$sp,$sp,32
    # Line 20
    addiu	$v0,$v0,2
    # Line 21
    jr	$ra
    # Line 20
    sw	$v0,4148($zero)
.L0da67210:
    # Line 17
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da671b8
    move	$a3,$v0
.end __glkonlc_Color3bv

# Function: __glkonlc_Color3d
# Declared: Line 22 (Source lines: 22-29)
# Address: 0x0da67230 - 0x0da67300 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_Color3d
.ent __glkonlc_Color3d
__glkonlc_Color3d:
    # Line 23
    lw	$a2,4136($zero)
    # Line 22
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x3
    # Line 23
    slti	$v0,$a2,7
    # Line 22
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,-25176
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 23
    bnez	$v0,.L0da672d4
    # Line 22
    addu	$gp,$t9,$at
.L0da67260:
    # Line 29
    ld	$gp,32($sp)
    # Line 25
    sdc1	$f30,0($sp)
    # Line 29
    ldc1	$f30,24($sp)
    # Line 27
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 26
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 25
    lw	$a6,4($sp)
    # Line 23
    lw	$a0,4144($zero)
    # Line 25
    lw	$a7,0($sp)
    # Line 24
    li	$t0,98
    sw	$t0,0($a0)
    # Line 25
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 26
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 27
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 28
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 29
    addiu	$sp,$sp,64
    # Line 28
    addiu	$v0,$v0,7
    # Line 29
    jr	$ra
    # Line 28
    sw	$v0,4148($zero)
.L0da672d4:
    # Line 23
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da67260
    move	$a2,$v0
.end __glkonlc_Color3d

# Function: __glkonlc_Color3dv
# Declared: Line 30 (Source lines: 30-37)
# Address: 0x0da67300 - 0x0da673c4 (Size: 196 bytes, Frame: 48)
.globl __glkonlc_Color3dv
.ent __glkonlc_Color3dv
__glkonlc_Color3dv:
    # Line 31
    lw	$a3,4136($zero)
    # Line 30
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 31
    slti	$v0,$a3,7
    # Line 30
    sd	$s8,24($sp)
    move	$s8,$a0
    addiu	$at,$at,-25384
    sd	$gp,32($sp)
    # Line 31
    bnez	$v0,.L0da673a8
    # Line 30
    addu	$gp,$t9,$at
.L0da67328:
    # Line 31
    lw	$a0,4144($zero)
    # Line 32
    li	$t0,98
    sw	$t0,0($a0)
    # Line 33
    ldc1	$f2,0($s8)
    sdc1	$f2,0($sp)
    lw	$a7,0($sp)
    lw	$a6,4($sp)
    sw	$a6,8($a0)
    sw	$a7,4($a0)
    # Line 34
    ldc1	$f1,8($s8)
    # Line 37
    ld	$gp,32($sp)
    # Line 34
    sdc1	$f1,8($sp)
    lw	$a5,8($sp)
    lw	$a4,12($sp)
    sw	$a4,16($a0)
    sw	$a5,12($a0)
    # Line 35
    ldc1	$f0,16($s8)
    # Line 37
    ld	$s8,24($sp)
    # Line 35
    sdc1	$f0,16($sp)
    lw	$a1,20($sp)
    lw	$a2,16($sp)
    sw	$a2,20($a0)
    sw	$a1,24($a0)
    # Line 36
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-7
    sw	$v1,4136($zero)
    # Line 37
    addiu	$sp,$sp,48
    # Line 36
    addiu	$v0,$v0,7
    # Line 37
    jr	$ra
    # Line 36
    sw	$v0,4148($zero)
.L0da673a8:
    # Line 31
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    b	.L0da67328
    move	$a3,$v0
.end __glkonlc_Color3dv

# Function: __glkonlc_Color3f
# Declared: Line 38 (Source lines: 38-45)
# Address: 0x0da673d0 - 0x0da67470 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Color3f
.ent __glkonlc_Color3f
__glkonlc_Color3f:
    # Line 39
    lw	$a2,4136($zero)
    # Line 38
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x3
    # Line 39
    slti	$v0,$a2,4
    # Line 38
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,-25592
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 39
    bnez	$v0,.L0da67444
    # Line 38
    addu	$gp,$t9,$at
.L0da67400:
    # Line 39
    lw	$a0,4144($zero)
    # Line 45
    ld	$gp,8($sp)
    # Line 40
    li	$a1,99
    sw	$a1,0($a0)
    # Line 41
    swc1	$f30,4($a0)
    # Line 42
    swc1	$f4,8($a0)
    # Line 43
    swc1	$f5,12($a0)
    # Line 44
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 45
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 44
    addiu	$v0,$v0,4
    # Line 45
    jr	$ra
    # Line 44
    sw	$v0,4148($zero)
.L0da67444:
    # Line 39
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da67400
    move	$a2,$v0
.end __glkonlc_Color3f

# Function: __glkonlc_Color3fv
# Declared: Line 46 (Source lines: 46-53)
# Address: 0x0da67470 - 0x0da67504 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Color3fv
.ent __glkonlc_Color3fv
__glkonlc_Color3fv:
    # Line 47
    lw	$a3,4136($zero)
    # Line 46
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 47
    slti	$v0,$a3,4
    # Line 46
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-25752
    sd	$gp,8($sp)
    # Line 47
    bnez	$v0,.L0da674e8
    # Line 46
    addu	$gp,$t9,$at
.L0da67498:
    # Line 47
    lw	$a0,4144($zero)
    # Line 48
    li	$a1,99
    sw	$a1,0($a0)
    # Line 49
    lwc1	$f2,0($s8)
    swc1	$f2,4($a0)
    # Line 50
    lwc1	$f1,4($s8)
    # Line 53
    ld	$gp,8($sp)
    # Line 50
    swc1	$f1,8($a0)
    # Line 51
    lwc1	$f0,8($s8)
    # Line 53
    ld	$s8,0($sp)
    # Line 51
    swc1	$f0,12($a0)
    # Line 52
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 53
    addiu	$sp,$sp,32
    # Line 52
    addiu	$v0,$v0,4
    # Line 53
    jr	$ra
    # Line 52
    sw	$v0,4148($zero)
.L0da674e8:
    # Line 47
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67498
    move	$a3,$v0
.end __glkonlc_Color3fv

# Function: __glkonlc_Color3i
# Declared: Line 54 (Source lines: 54-61)
# Address: 0x0da67510 - 0x0da675a8 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_Color3i
.ent __glkonlc_Color3i
__glkonlc_Color3i:
    # Line 55
    lw	$a5,4136($zero)
    # Line 54
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 55
    slti	$v0,$a5,4
    # Line 54
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-25912
    sd	$gp,8($sp)
    # Line 55
    bnez	$v0,.L0da6757c
    # Line 54
    addu	$gp,$t9,$at
.L0da67538:
    # Line 55
    lw	$a0,4144($zero)
    # Line 61
    ld	$gp,8($sp)
    # Line 56
    li	$a3,100
    sw	$a3,0($a0)
    # Line 57
    sw	$s8,4($a0)
    # Line 58
    sw	$a1,8($a0)
    # Line 59
    sw	$a2,12($a0)
    # Line 60
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 61
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 60
    addiu	$v0,$v0,4
    # Line 61
    jr	$ra
    # Line 60
    sw	$v0,4148($zero)
.L0da6757c:
    # Line 55
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da67538
    move	$a5,$v0
.end __glkonlc_Color3i

# Function: __glkonlc_Color3iv
# Declared: Line 62 (Source lines: 62-69)
# Address: 0x0da675b0 - 0x0da67644 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Color3iv
.ent __glkonlc_Color3iv
__glkonlc_Color3iv:
    # Line 63
    lw	$a3,4136($zero)
    # Line 62
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 63
    slti	$v0,$a3,4
    # Line 62
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-26072
    sd	$gp,8($sp)
    # Line 63
    bnez	$v0,.L0da67628
    # Line 62
    addu	$gp,$t9,$at
.L0da675d8:
    # Line 63
    lw	$a0,4144($zero)
    # Line 69
    ld	$gp,8($sp)
    # Line 64
    li	$a5,100
    sw	$a5,0($a0)
    # Line 65
    lw	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 66
    lw	$a2,4($s8)
    sw	$a2,8($a0)
    # Line 67
    lw	$a1,8($s8)
    # Line 69
    ld	$s8,0($sp)
    # Line 67
    sw	$a1,12($a0)
    # Line 68
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 69
    addiu	$sp,$sp,32
    # Line 68
    addiu	$v0,$v0,4
    # Line 69
    jr	$ra
    # Line 68
    sw	$v0,4148($zero)
.L0da67628:
    # Line 63
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da675d8
    move	$a3,$v0
.end __glkonlc_Color3iv

# Function: __glkonlc_Color3s
# Declared: Line 70 (Source lines: 70-75)
# Address: 0x0da67650 - 0x0da676f0 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Color3s
.ent __glkonlc_Color3s
__glkonlc_Color3s:
    # Line 71
    lw	$a5,4136($zero)
    # Line 70
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 71
    slti	$v0,$a5,2
    # Line 70
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-26232
    sd	$gp,8($sp)
    # Line 71
    bnez	$v0,.L0da676c4
    # Line 70
    addu	$gp,$t9,$at
.L0da67678:
    # Line 75
    ld	$gp,8($sp)
    # Line 71
    lw	$a0,4144($zero)
    # Line 72
    sll	$a3,$s8,0x10
    # Line 75
    ld	$s8,0($sp)
    # Line 73
    andi	$a2,$a2,0xffff
    sll	$a1,$a1,0x10
    # Line 72
    ori	$a3,$a3,0x65
    sw	$a3,0($a0)
    # Line 73
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 74
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 75
    addiu	$sp,$sp,48
    # Line 74
    addiu	$v0,$v0,2
    # Line 75
    jr	$ra
    # Line 74
    sw	$v0,4148($zero)
.L0da676c4:
    # Line 71
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da67678
    move	$a5,$v0
.end __glkonlc_Color3s

# Function: __glkonlc_Color3sv
# Declared: Line 76 (Source lines: 76-81)
# Address: 0x0da676f0 - 0x0da67788 (Size: 152 bytes, Frame: 32)
.globl __glkonlc_Color3sv
.ent __glkonlc_Color3sv
__glkonlc_Color3sv:
    # Line 77
    lw	$a3,4136($zero)
    # Line 76
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 77
    slti	$v0,$a3,2
    # Line 76
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-26392
    sd	$gp,8($sp)
    # Line 77
    bnez	$v0,.L0da6776c
    # Line 76
    addu	$gp,$t9,$at
.L0da67718:
    # Line 78
    lh	$a4,0($s8)
    # Line 77
    lw	$a0,4144($zero)
    # Line 81
    ld	$gp,8($sp)
    # Line 78
    sll	$a4,$a4,0x10
    ori	$a4,$a4,0x65
    sw	$a4,0($a0)
    # Line 79
    lh	$a2,2($s8)
    lhu	$a1,4($s8)
    # Line 81
    ld	$s8,0($sp)
    # Line 79
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 80
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 81
    addiu	$sp,$sp,32
    # Line 80
    addiu	$v0,$v0,2
    # Line 81
    jr	$ra
    # Line 80
    sw	$v0,4148($zero)
.L0da6776c:
    # Line 77
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67718
    move	$a3,$v0
.end __glkonlc_Color3sv

# Function: __glkonlc_Color3ub
# Declared: Line 82 (Source lines: 82-87)
# Address: 0x0da67790 - 0x0da67830 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Color3ub
.ent __glkonlc_Color3ub
__glkonlc_Color3ub:
    # Line 83
    lw	$a5,4136($zero)
    # Line 82
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 83
    slti	$v0,$a5,2
    # Line 82
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-26552
    sd	$gp,8($sp)
    # Line 83
    bnez	$v0,.L0da67804
    # Line 82
    addu	$gp,$t9,$at
.L0da677b8:
    # Line 87
    ld	$gp,8($sp)
    # Line 84
    sll	$a4,$a1,0x10
    # Line 83
    lw	$a0,4144($zero)
    # Line 84
    sll	$a3,$s8,0x18
    # Line 87
    ld	$s8,0($sp)
    # Line 84
    or	$a3,$a3,$a4
    ori	$a3,$a3,0x66
    sw	$a3,0($a0)
    # Line 85
    sll	$a1,$a2,0x18
    sw	$a1,4($a0)
    # Line 86
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 87
    addiu	$sp,$sp,48
    # Line 86
    addiu	$v0,$v0,2
    # Line 87
    jr	$ra
    # Line 86
    sw	$v0,4148($zero)
.L0da67804:
    # Line 83
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da677b8
    move	$a5,$v0
.end __glkonlc_Color3ub

# Function: __glkonlc_Color3ubv
# Declared: Line 88 (Source lines: 88-93)
# Address: 0x0da67830 - 0x0da678cc (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Color3ubv
.ent __glkonlc_Color3ubv
__glkonlc_Color3ubv:
    # Line 89
    lw	$a3,4136($zero)
    # Line 88
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 89
    slti	$v0,$a3,2
    # Line 88
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-26712
    sd	$gp,8($sp)
    # Line 89
    bnez	$v0,.L0da678b0
    # Line 88
    addu	$gp,$t9,$at
.L0da67858:
    # Line 90
    lbu	$a4,1($s8)
    lbu	$a2,0($s8)
    sll	$a4,$a4,0x10
    # Line 89
    lw	$a0,4144($zero)
    # Line 90
    sll	$a2,$a2,0x18
    # Line 93
    ld	$gp,8($sp)
    # Line 90
    or	$a2,$a2,$a4
    ori	$a2,$a2,0x66
    sw	$a2,0($a0)
    # Line 91
    lbu	$a1,2($s8)
    # Line 93
    ld	$s8,0($sp)
    # Line 91
    sll	$a1,$a1,0x18
    sw	$a1,4($a0)
    # Line 92
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 93
    addiu	$sp,$sp,32
    # Line 92
    addiu	$v0,$v0,2
    # Line 93
    jr	$ra
    # Line 92
    sw	$v0,4148($zero)
.L0da678b0:
    # Line 89
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67858
    move	$a3,$v0
.end __glkonlc_Color3ubv

# Function: __glkonlc_Color3ui
# Declared: Line 94 (Source lines: 94-101)
# Address: 0x0da678d0 - 0x0da67968 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_Color3ui
.ent __glkonlc_Color3ui
__glkonlc_Color3ui:
    # Line 95
    lw	$a5,4136($zero)
    # Line 94
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 95
    slti	$v0,$a5,4
    # Line 94
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-26872
    sd	$gp,8($sp)
    # Line 95
    bnez	$v0,.L0da6793c
    # Line 94
    addu	$gp,$t9,$at
.L0da678f8:
    # Line 95
    lw	$a0,4144($zero)
    # Line 101
    ld	$gp,8($sp)
    # Line 96
    li	$a3,103
    sw	$a3,0($a0)
    # Line 97
    sw	$s8,4($a0)
    # Line 98
    sw	$a1,8($a0)
    # Line 99
    sw	$a2,12($a0)
    # Line 100
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 101
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 100
    addiu	$v0,$v0,4
    # Line 101
    jr	$ra
    # Line 100
    sw	$v0,4148($zero)
.L0da6793c:
    # Line 95
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da678f8
    move	$a5,$v0
.end __glkonlc_Color3ui

# Function: __glkonlc_Color3uiv
# Declared: Line 102 (Source lines: 102-109)
# Address: 0x0da67970 - 0x0da67a04 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Color3uiv
.ent __glkonlc_Color3uiv
__glkonlc_Color3uiv:
    # Line 103
    lw	$a3,4136($zero)
    # Line 102
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 103
    slti	$v0,$a3,4
    # Line 102
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-27032
    sd	$gp,8($sp)
    # Line 103
    bnez	$v0,.L0da679e8
    # Line 102
    addu	$gp,$t9,$at
.L0da67998:
    # Line 103
    lw	$a0,4144($zero)
    # Line 109
    ld	$gp,8($sp)
    # Line 104
    li	$a5,103
    sw	$a5,0($a0)
    # Line 105
    lw	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 106
    lw	$a2,4($s8)
    sw	$a2,8($a0)
    # Line 107
    lw	$a1,8($s8)
    # Line 109
    ld	$s8,0($sp)
    # Line 107
    sw	$a1,12($a0)
    # Line 108
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 109
    addiu	$sp,$sp,32
    # Line 108
    addiu	$v0,$v0,4
    # Line 109
    jr	$ra
    # Line 108
    sw	$v0,4148($zero)
.L0da679e8:
    # Line 103
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67998
    move	$a3,$v0
.end __glkonlc_Color3uiv

# Function: __glkonlc_Color3us
# Declared: Line 110 (Source lines: 110-115)
# Address: 0x0da67a10 - 0x0da67aac (Size: 156 bytes, Frame: 48)
.globl __glkonlc_Color3us
.ent __glkonlc_Color3us
__glkonlc_Color3us:
    # Line 111
    lw	$a5,4136($zero)
    # Line 110
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 111
    slti	$v0,$a5,2
    # Line 110
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-27192
    sd	$gp,8($sp)
    # Line 111
    bnez	$v0,.L0da67a80
    # Line 110
    addu	$gp,$t9,$at
.L0da67a38:
    # Line 115
    ld	$gp,8($sp)
    # Line 111
    lw	$a0,4144($zero)
    # Line 112
    sll	$a3,$s8,0x10
    # Line 115
    ld	$s8,0($sp)
    # Line 113
    sll	$a1,$a1,0x10
    # Line 112
    ori	$a3,$a3,0x68
    sw	$a3,0($a0)
    # Line 113
    or	$a1,$a2,$a1
    sw	$a1,4($a0)
    # Line 114
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 115
    addiu	$sp,$sp,48
    # Line 114
    addiu	$v0,$v0,2
    # Line 115
    jr	$ra
    # Line 114
    sw	$v0,4148($zero)
.L0da67a80:
    # Line 111
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da67a38
    move	$a5,$v0
.end __glkonlc_Color3us

# Function: __glkonlc_Color3usv
# Declared: Line 116 (Source lines: 116-121)
# Address: 0x0da67ab0 - 0x0da67b48 (Size: 152 bytes, Frame: 32)
.globl __glkonlc_Color3usv
.ent __glkonlc_Color3usv
__glkonlc_Color3usv:
    # Line 117
    lw	$a3,4136($zero)
    # Line 116
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 117
    slti	$v0,$a3,2
    # Line 116
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-27352
    sd	$gp,8($sp)
    # Line 117
    bnez	$v0,.L0da67b2c
    # Line 116
    addu	$gp,$t9,$at
.L0da67ad8:
    # Line 118
    lhu	$a4,0($s8)
    # Line 117
    lw	$a0,4144($zero)
    # Line 121
    ld	$gp,8($sp)
    # Line 118
    sll	$a4,$a4,0x10
    ori	$a4,$a4,0x68
    sw	$a4,0($a0)
    # Line 119
    lhu	$a2,2($s8)
    lhu	$a1,4($s8)
    # Line 121
    ld	$s8,0($sp)
    # Line 119
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 120
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 121
    addiu	$sp,$sp,32
    # Line 120
    addiu	$v0,$v0,2
    # Line 121
    jr	$ra
    # Line 120
    sw	$v0,4148($zero)
.L0da67b2c:
    # Line 117
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67ad8
    move	$a3,$v0
.end __glkonlc_Color3usv

# Function: __glkonlc_Color4b
# Declared: Line 122 (Source lines: 122-127)
# Address: 0x0da67b50 - 0x0da67c08 (Size: 184 bytes, Frame: 48)
.globl __glkonlc_Color4b
.ent __glkonlc_Color4b
__glkonlc_Color4b:
    # Line 123
    lw	$a6,4136($zero)
    # Line 122
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 123
    slti	$v0,$a6,2
    # Line 122
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-27512
    sd	$gp,8($sp)
    # Line 123
    bnez	$v0,.L0da67bd4
    # Line 122
    addu	$gp,$t9,$at
.L0da67b78:
    # Line 124
    sll	$a4,$s8,0x18
    andi	$a5,$a1,0xff
    # Line 127
    ld	$gp,8($sp)
    # Line 125
    sll	$a1,$a2,0x18
    andi	$a2,$a3,0xff
    # Line 123
    lw	$a0,4144($zero)
    # Line 125
    sll	$a2,$a2,0x10
    # Line 127
    ld	$s8,0($sp)
    # Line 124
    sll	$a5,$a5,0x10
    # Line 125
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 124
    or	$a4,$a4,$a5
    ori	$a3,$a4,0x69
    sw	$a3,0($a0)
    # Line 126
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-2
    sw	$v1,4136($zero)
    # Line 127
    addiu	$sp,$sp,48
    # Line 126
    addiu	$v0,$v0,2
    # Line 127
    jr	$ra
    # Line 126
    sw	$v0,4148($zero)
.L0da67bd4:
    sd	$a3,16($sp)
    # Line 123
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
    b	.L0da67b78
    move	$a6,$v0
.end __glkonlc_Color4b

# Function: __glkonlc_Color4bv
# Declared: Line 128 (Source lines: 128-133)
# Address: 0x0da67c10 - 0x0da67cb8 (Size: 168 bytes, Frame: 32)
.globl __glkonlc_Color4bv
.ent __glkonlc_Color4bv
__glkonlc_Color4bv:
    # Line 129
    lw	$a3,4136($zero)
    # Line 128
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 129
    slti	$v0,$a3,2
    # Line 128
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-27704
    sd	$gp,8($sp)
    # Line 129
    bnez	$v0,.L0da67c9c
    # Line 128
    addu	$gp,$t9,$at
.L0da67c38:
    # Line 130
    lbu	$a4,1($s8)
    lb	$a2,0($s8)
    sll	$a4,$a4,0x10
    # Line 129
    lw	$a0,4144($zero)
    # Line 130
    sll	$a2,$a2,0x18
    or	$a2,$a2,$a4
    ori	$a2,$a2,0x69
    sw	$a2,0($a0)
    # Line 131
    lbu	$a2,3($s8)
    lb	$a1,2($s8)
    # Line 133
    ld	$gp,8($sp)
    # Line 131
    sll	$a2,$a2,0x10
    # Line 133
    ld	$s8,0($sp)
    # Line 131
    sll	$a1,$a1,0x18
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 132
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 133
    addiu	$sp,$sp,32
    # Line 132
    addiu	$v0,$v0,2
    # Line 133
    jr	$ra
    # Line 132
    sw	$v0,4148($zero)
.L0da67c9c:
    # Line 129
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67c38
    move	$a3,$v0
.end __glkonlc_Color4bv

# Function: __glkonlc_Color4d
# Declared: Line 134 (Source lines: 134-142)
# Address: 0x0da67cc0 - 0x0da67db0 (Size: 240 bytes, Frame: 208)
.globl __glkonlc_Color4d
.ent __glkonlc_Color4d
__glkonlc_Color4d:
    # Line 135
    lw	$a2,4136($zero)
    # Line 134
    mov.d	$f6,$f15
    addiu	$sp,$sp,-80
    mov.d	$f5,$f14
    lui	$at,0x3
    # Line 135
    slti	$v0,$a2,9
    # Line 134
    mov.d	$f4,$f13
    sdc1	$f30,32($sp)
    addiu	$at,$at,-27880
    mov.d	$f30,$f12
    sd	$gp,40($sp)
    # Line 135
    bnez	$v0,.L0da67d7c
    # Line 134
    addu	$gp,$t9,$at
.L0da67cf4:
    # Line 142
    ld	$gp,40($sp)
    # Line 137
    sdc1	$f30,0($sp)
    # Line 142
    ldc1	$f30,32($sp)
    # Line 140
    sdc1	$f6,24($sp)
    lw	$a1,28($sp)
    lw	$a3,24($sp)
    # Line 139
    sdc1	$f5,16($sp)
    lw	$a4,20($sp)
    lw	$a5,16($sp)
    # Line 138
    sdc1	$f4,8($sp)
    lw	$a6,12($sp)
    lw	$a7,8($sp)
    # Line 137
    lw	$t0,4($sp)
    # Line 135
    lw	$a0,4144($zero)
    # Line 137
    lw	$t1,0($sp)
    # Line 136
    li	$t2,106
    sw	$t2,0($a0)
    # Line 137
    sw	$t1,4($a0)
    sw	$t0,8($a0)
    # Line 138
    sw	$a7,12($a0)
    sw	$a6,16($a0)
    # Line 139
    sw	$a5,20($a0)
    sw	$a4,24($a0)
    # Line 140
    sw	$a3,28($a0)
    sw	$a1,32($a0)
    # Line 141
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-9
    sw	$v1,4136($zero)
    # Line 142
    addiu	$sp,$sp,80
    # Line 141
    addiu	$v0,$v0,9
    # Line 142
    jr	$ra
    # Line 141
    sw	$v0,4148($zero)
.L0da67d7c:
    sdc1	$f15,48($sp)
    # Line 135
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,56($sp)
    sdc1	$f13,64($sp)
    sd	$ra,72($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,72($sp)
    ldc1	$f4,64($sp)
    ldc1	$f5,56($sp)
    ldc1	$f6,48($sp)
    b	.L0da67cf4
    move	$a2,$v0
.end __glkonlc_Color4d

# Function: __glkonlc_Color4dv
# Declared: Line 143 (Source lines: 143-151)
# Address: 0x0da67db0 - 0x0da67e8c (Size: 220 bytes, Frame: 192)
.globl __glkonlc_Color4dv
.ent __glkonlc_Color4dv
__glkonlc_Color4dv:
    # Line 144
    lw	$a3,4136($zero)
    # Line 143
    addiu	$sp,$sp,-64
    lui	$at,0x3
    # Line 144
    slti	$v0,$a3,9
    # Line 143
    sd	$s8,32($sp)
    move	$s8,$a0
    addiu	$at,$at,-28120
    sd	$gp,40($sp)
    # Line 144
    bnez	$v0,.L0da67e70
    # Line 143
    addu	$gp,$t9,$at
.L0da67dd8:
    # Line 144
    lw	$a0,4144($zero)
    # Line 145
    li	$t2,106
    sw	$t2,0($a0)
    # Line 146
    ldc1	$f3,0($s8)
    sdc1	$f3,0($sp)
    lw	$t1,0($sp)
    lw	$t0,4($sp)
    sw	$t0,8($a0)
    sw	$t1,4($a0)
    # Line 147
    ldc1	$f2,8($s8)
    sdc1	$f2,8($sp)
    lw	$a7,8($sp)
    lw	$a6,12($sp)
    sw	$a6,16($a0)
    sw	$a7,12($a0)
    # Line 148
    ldc1	$f1,16($s8)
    # Line 151
    ld	$gp,40($sp)
    # Line 148
    sdc1	$f1,16($sp)
    lw	$a5,16($sp)
    lw	$a4,20($sp)
    sw	$a4,24($a0)
    sw	$a5,20($a0)
    # Line 149
    ldc1	$f0,24($s8)
    # Line 151
    ld	$s8,32($sp)
    # Line 149
    sdc1	$f0,24($sp)
    lw	$a1,28($sp)
    lw	$a2,24($sp)
    sw	$a2,28($a0)
    sw	$a1,32($a0)
    # Line 150
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-9
    sw	$v1,4136($zero)
    # Line 151
    addiu	$sp,$sp,64
    # Line 150
    addiu	$v0,$v0,9
    # Line 151
    jr	$ra
    # Line 150
    sw	$v0,4148($zero)
.L0da67e70:
    # Line 144
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,48($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    b	.L0da67dd8
    move	$a3,$v0
.end __glkonlc_Color4dv

# Function: __glkonlc_Color4f
# Declared: Line 152 (Source lines: 152-160)
# Address: 0x0da67e90 - 0x0da67f40 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Color4f
.ent __glkonlc_Color4f
__glkonlc_Color4f:
    # Line 153
    lw	$a2,4136($zero)
    # Line 152
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x3
    # Line 153
    slti	$v0,$a2,5
    # Line 152
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,-28344
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 153
    bnez	$v0,.L0da67f0c
    # Line 152
    addu	$gp,$t9,$at
.L0da67ec4:
    # Line 153
    lw	$a0,4144($zero)
    # Line 160
    ld	$gp,8($sp)
    # Line 154
    li	$a1,107
    sw	$a1,0($a0)
    # Line 155
    swc1	$f30,4($a0)
    # Line 156
    swc1	$f4,8($a0)
    # Line 157
    swc1	$f5,12($a0)
    # Line 158
    swc1	$f6,16($a0)
    # Line 159
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 160
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 159
    addiu	$v0,$v0,5
    # Line 160
    jr	$ra
    # Line 159
    sw	$v0,4148($zero)
.L0da67f0c:
    sdc1	$f15,16($sp)
    # Line 153
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
    b	.L0da67ec4
    move	$a2,$v0
.end __glkonlc_Color4f

# Function: __glkonlc_Color4fv
# Declared: Line 161 (Source lines: 161-169)
# Address: 0x0da67f40 - 0x0da67fdc (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Color4fv
.ent __glkonlc_Color4fv
__glkonlc_Color4fv:
    # Line 162
    lw	$a3,4136($zero)
    # Line 161
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 162
    slti	$v0,$a3,5
    # Line 161
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-28520
    sd	$gp,8($sp)
    # Line 162
    bnez	$v0,.L0da67fc0
    # Line 161
    addu	$gp,$t9,$at
.L0da67f68:
    # Line 162
    lw	$a0,4144($zero)
    # Line 163
    li	$a1,107
    sw	$a1,0($a0)
    # Line 164
    lwc1	$f3,0($s8)
    swc1	$f3,4($a0)
    # Line 165
    lwc1	$f2,4($s8)
    swc1	$f2,8($a0)
    # Line 166
    lwc1	$f1,8($s8)
    # Line 169
    ld	$gp,8($sp)
    # Line 166
    swc1	$f1,12($a0)
    # Line 167
    lwc1	$f0,12($s8)
    # Line 169
    ld	$s8,0($sp)
    # Line 167
    swc1	$f0,16($a0)
    # Line 168
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 169
    addiu	$sp,$sp,32
    # Line 168
    addiu	$v0,$v0,5
    # Line 169
    jr	$ra
    # Line 168
    sw	$v0,4148($zero)
.L0da67fc0:
    # Line 162
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da67f68
    move	$a3,$v0
.end __glkonlc_Color4fv

# Function: __glkonlc_Color4i
# Declared: Line 170 (Source lines: 170-178)
# Address: 0x0da67fe0 - 0x0da68084 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_Color4i
.ent __glkonlc_Color4i
__glkonlc_Color4i:
    # Line 171
    lw	$a6,4136($zero)
    # Line 170
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 171
    slti	$v0,$a6,5
    # Line 170
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-28680
    sd	$gp,8($sp)
    # Line 171
    bnez	$v0,.L0da68050
    # Line 170
    addu	$gp,$t9,$at
.L0da68008:
    # Line 171
    lw	$a0,4144($zero)
    # Line 178
    ld	$gp,8($sp)
    # Line 172
    li	$a4,108
    sw	$a4,0($a0)
    # Line 173
    sw	$s8,4($a0)
    # Line 174
    sw	$a1,8($a0)
    # Line 175
    sw	$a2,12($a0)
    # Line 176
    sw	$a3,16($a0)
    # Line 177
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 178
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 177
    addiu	$v0,$v0,5
    # Line 178
    jr	$ra
    # Line 177
    sw	$v0,4148($zero)
.L0da68050:
    sd	$a3,16($sp)
    # Line 171
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
    b	.L0da68008
    move	$a6,$v0
.end __glkonlc_Color4i

# Function: __glkonlc_Color4iv
# Declared: Line 179 (Source lines: 179-187)
# Address: 0x0da68090 - 0x0da6812c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Color4iv
.ent __glkonlc_Color4iv
__glkonlc_Color4iv:
    # Line 180
    lw	$a3,4136($zero)
    # Line 179
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 180
    slti	$v0,$a3,5
    # Line 179
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-28856
    sd	$gp,8($sp)
    # Line 180
    bnez	$v0,.L0da68110
    # Line 179
    addu	$gp,$t9,$at
.L0da680b8:
    # Line 180
    lw	$a0,4144($zero)
    # Line 187
    ld	$gp,8($sp)
    # Line 181
    li	$a6,108
    sw	$a6,0($a0)
    # Line 182
    lw	$a5,0($s8)
    sw	$a5,4($a0)
    # Line 183
    lw	$a4,4($s8)
    sw	$a4,8($a0)
    # Line 184
    lw	$a2,8($s8)
    sw	$a2,12($a0)
    # Line 185
    lw	$a1,12($s8)
    # Line 187
    ld	$s8,0($sp)
    # Line 185
    sw	$a1,16($a0)
    # Line 186
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 187
    addiu	$sp,$sp,32
    # Line 186
    addiu	$v0,$v0,5
    # Line 187
    jr	$ra
    # Line 186
    sw	$v0,4148($zero)
.L0da68110:
    # Line 180
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da680b8
    move	$a3,$v0
.end __glkonlc_Color4iv

# Function: __glkonlc_Color4s
# Declared: Line 188 (Source lines: 188-194)
# Address: 0x0da68130 - 0x0da681e0 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Color4s
.ent __glkonlc_Color4s
__glkonlc_Color4s:
    # Line 189
    lw	$a6,4136($zero)
    # Line 188
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 189
    slti	$v0,$a6,3
    # Line 188
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-29016
    sd	$gp,8($sp)
    # Line 189
    bnez	$v0,.L0da681ac
    # Line 188
    addu	$gp,$t9,$at
.L0da68158:
    # Line 194
    ld	$gp,8($sp)
    # Line 189
    lw	$a0,4144($zero)
    # Line 190
    sll	$a4,$s8,0x10
    # Line 194
    ld	$s8,0($sp)
    # Line 190
    ori	$a4,$a4,0x6d
    sw	$a4,0($a0)
    # Line 191
    sll	$a4,$a1,0x10
    andi	$a2,$a2,0xffff
    # Line 192
    sll	$a1,$a3,0x10
    sw	$a1,8($a0)
    # Line 191
    or	$a2,$a4,$a2
    sw	$a2,4($a0)
    # Line 193
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-3
    sw	$v1,4136($zero)
    # Line 194
    addiu	$sp,$sp,48
    # Line 193
    addiu	$v0,$v0,3
    # Line 194
    jr	$ra
    # Line 193
    sw	$v0,4148($zero)
.L0da681ac:
    sd	$a3,16($sp)
    # Line 189
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
    b	.L0da68158
    move	$a6,$v0
.end __glkonlc_Color4s

# Function: __glkonlc_Color4sv
# Declared: Line 195 (Source lines: 195-201)
# Address: 0x0da681e0 - 0x0da68284 (Size: 164 bytes, Frame: 32)
.globl __glkonlc_Color4sv
.ent __glkonlc_Color4sv
__glkonlc_Color4sv:
    # Line 196
    lw	$a3,4136($zero)
    # Line 195
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 196
    slti	$v0,$a3,3
    # Line 195
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-29192
    sd	$gp,8($sp)
    # Line 196
    bnez	$v0,.L0da68268
    # Line 195
    addu	$gp,$t9,$at
.L0da68208:
    # Line 197
    lh	$a5,0($s8)
    # Line 196
    lw	$a0,4144($zero)
    # Line 197
    sll	$a5,$a5,0x10
    ori	$a5,$a5,0x6d
    sw	$a5,0($a0)
    # Line 198
    lh	$a4,2($s8)
    lhu	$a2,4($s8)
    # Line 201
    ld	$gp,8($sp)
    # Line 198
    sll	$a4,$a4,0x10
    or	$a2,$a2,$a4
    sw	$a2,4($a0)
    # Line 199
    lh	$a1,6($s8)
    # Line 201
    ld	$s8,0($sp)
    # Line 199
    sll	$a1,$a1,0x10
    sw	$a1,8($a0)
    # Line 200
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 201
    addiu	$sp,$sp,32
    # Line 200
    addiu	$v0,$v0,3
    # Line 201
    jr	$ra
    # Line 200
    sw	$v0,4148($zero)
.L0da68268:
    # Line 196
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da68208
    move	$a3,$v0
.end __glkonlc_Color4sv

# Function: __glkonlc_Color4ub
# Declared: Line 202 (Source lines: 202-207)
# Address: 0x0da68290 - 0x0da68340 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Color4ub
.ent __glkonlc_Color4ub
__glkonlc_Color4ub:
    # Line 203
    lw	$a6,4136($zero)
    # Line 202
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 203
    slti	$v0,$a6,2
    # Line 202
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-29368
    sd	$gp,8($sp)
    # Line 203
    bnez	$v0,.L0da6830c
    # Line 202
    addu	$gp,$t9,$at
.L0da682b8:
    # Line 207
    ld	$gp,8($sp)
    # Line 204
    sll	$a5,$a1,0x10
    # Line 203
    lw	$a0,4144($zero)
    # Line 204
    sll	$a4,$s8,0x18
    # Line 207
    ld	$s8,0($sp)
    # Line 205
    sll	$a1,$a2,0x18
    # Line 204
    or	$a4,$a4,$a5
    # Line 205
    sll	$a2,$a3,0x10
    # Line 204
    ori	$a4,$a4,0x6e
    sw	$a4,0($a0)
    # Line 205
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 206
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-2
    sw	$v1,4136($zero)
    # Line 207
    addiu	$sp,$sp,48
    # Line 206
    addiu	$v0,$v0,2
    # Line 207
    jr	$ra
    # Line 206
    sw	$v0,4148($zero)
.L0da6830c:
    sd	$a3,16($sp)
    # Line 203
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
    b	.L0da682b8
    move	$a6,$v0
.end __glkonlc_Color4ub

# Function: __glkonlc_Color4ubv
# Declared: Line 208 (Source lines: 208-213)
# Address: 0x0da68340 - 0x0da683e8 (Size: 168 bytes, Frame: 32)
.globl __glkonlc_Color4ubv
.ent __glkonlc_Color4ubv
__glkonlc_Color4ubv:
    # Line 209
    lw	$a3,4136($zero)
    # Line 208
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 209
    slti	$v0,$a3,2
    # Line 208
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-29544
    sd	$gp,8($sp)
    # Line 209
    bnez	$v0,.L0da683cc
    # Line 208
    addu	$gp,$t9,$at
.L0da68368:
    # Line 210
    lbu	$a4,1($s8)
    lbu	$a2,0($s8)
    sll	$a4,$a4,0x10
    # Line 209
    lw	$a0,4144($zero)
    # Line 210
    sll	$a2,$a2,0x18
    or	$a2,$a2,$a4
    ori	$a2,$a2,0x6e
    sw	$a2,0($a0)
    # Line 211
    lbu	$a2,3($s8)
    lbu	$a1,2($s8)
    # Line 213
    ld	$gp,8($sp)
    # Line 211
    sll	$a2,$a2,0x10
    # Line 213
    ld	$s8,0($sp)
    # Line 211
    sll	$a1,$a1,0x18
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 212
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 213
    addiu	$sp,$sp,32
    # Line 212
    addiu	$v0,$v0,2
    # Line 213
    jr	$ra
    # Line 212
    sw	$v0,4148($zero)
.L0da683cc:
    # Line 209
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da68368
    move	$a3,$v0
.end __glkonlc_Color4ubv

# Function: __glkonlc_Color4ui
# Declared: Line 214 (Source lines: 214-222)
# Address: 0x0da683f0 - 0x0da68494 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_Color4ui
.ent __glkonlc_Color4ui
__glkonlc_Color4ui:
    # Line 215
    lw	$a6,4136($zero)
    # Line 214
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 215
    slti	$v0,$a6,5
    # Line 214
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-29720
    sd	$gp,8($sp)
    # Line 215
    bnez	$v0,.L0da68460
    # Line 214
    addu	$gp,$t9,$at
.L0da68418:
    # Line 215
    lw	$a0,4144($zero)
    # Line 222
    ld	$gp,8($sp)
    # Line 216
    li	$a4,111
    sw	$a4,0($a0)
    # Line 217
    sw	$s8,4($a0)
    # Line 218
    sw	$a1,8($a0)
    # Line 219
    sw	$a2,12($a0)
    # Line 220
    sw	$a3,16($a0)
    # Line 221
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 222
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 221
    addiu	$v0,$v0,5
    # Line 222
    jr	$ra
    # Line 221
    sw	$v0,4148($zero)
.L0da68460:
    sd	$a3,16($sp)
    # Line 215
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
    b	.L0da68418
    move	$a6,$v0
.end __glkonlc_Color4ui

# Function: __glkonlc_Color4uiv
# Declared: Line 223 (Source lines: 223-231)
# Address: 0x0da684a0 - 0x0da6853c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Color4uiv
.ent __glkonlc_Color4uiv
__glkonlc_Color4uiv:
    # Line 224
    lw	$a3,4136($zero)
    # Line 223
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 224
    slti	$v0,$a3,5
    # Line 223
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-29896
    sd	$gp,8($sp)
    # Line 224
    bnez	$v0,.L0da68520
    # Line 223
    addu	$gp,$t9,$at
.L0da684c8:
    # Line 224
    lw	$a0,4144($zero)
    # Line 231
    ld	$gp,8($sp)
    # Line 225
    li	$a6,111
    sw	$a6,0($a0)
    # Line 226
    lw	$a5,0($s8)
    sw	$a5,4($a0)
    # Line 227
    lw	$a4,4($s8)
    sw	$a4,8($a0)
    # Line 228
    lw	$a2,8($s8)
    sw	$a2,12($a0)
    # Line 229
    lw	$a1,12($s8)
    # Line 231
    ld	$s8,0($sp)
    # Line 229
    sw	$a1,16($a0)
    # Line 230
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 231
    addiu	$sp,$sp,32
    # Line 230
    addiu	$v0,$v0,5
    # Line 231
    jr	$ra
    # Line 230
    sw	$v0,4148($zero)
.L0da68520:
    # Line 224
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da684c8
    move	$a3,$v0
.end __glkonlc_Color4uiv

# Function: __glkonlc_Color4us
# Declared: Line 232 (Source lines: 232-238)
# Address: 0x0da68540 - 0x0da685ec (Size: 172 bytes, Frame: 48)
.globl __glkonlc_Color4us
.ent __glkonlc_Color4us
__glkonlc_Color4us:
    # Line 233
    lw	$a6,4136($zero)
    # Line 232
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 233
    slti	$v0,$a6,3
    # Line 232
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-30056
    sd	$gp,8($sp)
    # Line 233
    bnez	$v0,.L0da685b8
    # Line 232
    addu	$gp,$t9,$at
.L0da68568:
    # Line 238
    ld	$gp,8($sp)
    # Line 233
    lw	$a0,4144($zero)
    # Line 234
    sll	$a5,$s8,0x10
    # Line 238
    ld	$s8,0($sp)
    # Line 235
    sll	$a4,$a1,0x10
    # Line 234
    ori	$a5,$a5,0x70
    sw	$a5,0($a0)
    # Line 235
    or	$a2,$a2,$a4
    sw	$a2,4($a0)
    # Line 236
    sll	$a1,$a3,0x10
    sw	$a1,8($a0)
    # Line 237
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-3
    sw	$v1,4136($zero)
    # Line 238
    addiu	$sp,$sp,48
    # Line 237
    addiu	$v0,$v0,3
    # Line 238
    jr	$ra
    # Line 237
    sw	$v0,4148($zero)
.L0da685b8:
    sd	$a3,16($sp)
    # Line 233
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
    b	.L0da68568
    move	$a6,$v0
.end __glkonlc_Color4us

# Function: __glkonlc_Color4usv
# Declared: Line 239 (Source lines: 239-245)
# Address: 0x0da685f0 - 0x0da68694 (Size: 164 bytes, Frame: 32)
.globl __glkonlc_Color4usv
.ent __glkonlc_Color4usv
__glkonlc_Color4usv:
    # Line 240
    lw	$a3,4136($zero)
    # Line 239
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 240
    slti	$v0,$a3,3
    # Line 239
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-30232
    sd	$gp,8($sp)
    # Line 240
    bnez	$v0,.L0da68678
    # Line 239
    addu	$gp,$t9,$at
.L0da68618:
    # Line 241
    lhu	$a5,0($s8)
    # Line 240
    lw	$a0,4144($zero)
    # Line 241
    sll	$a5,$a5,0x10
    ori	$a5,$a5,0x70
    sw	$a5,0($a0)
    # Line 242
    lhu	$a4,2($s8)
    lhu	$a2,4($s8)
    # Line 245
    ld	$gp,8($sp)
    # Line 242
    sll	$a4,$a4,0x10
    or	$a2,$a2,$a4
    sw	$a2,4($a0)
    # Line 243
    lhu	$a1,6($s8)
    # Line 245
    ld	$s8,0($sp)
    # Line 243
    sll	$a1,$a1,0x10
    sw	$a1,8($a0)
    # Line 244
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 245
    addiu	$sp,$sp,32
    # Line 244
    addiu	$v0,$v0,3
    # Line 245
    jr	$ra
    # Line 244
    sw	$v0,4148($zero)
.L0da68678:
    # Line 240
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da68618
    move	$a3,$v0
.end __glkonlc_Color4usv

# Function: __glkonlc_EdgeFlag
# Declared: Line 246 (Source lines: 246-251)
# Address: 0x0da686a0 - 0x0da68754 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_EdgeFlag
.ent __glkonlc_EdgeFlag
__glkonlc_EdgeFlag:
    # Line 246
    addiu	$sp,$sp,-32
    # Line 247
    lw	$a2,4136($zero)
    # Line 248
    li	$a1,167
    # Line 246
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x3
    # Line 247
    slti	$v0,$a2,2
    # Line 246
    addiu	$at,$at,-30408
    # Line 250
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 247
    bnez	$v0,.L0da68704
    # Line 246
    addu	$gp,$t9,$at
    # Line 247
    lw	$a0,4144($zero)
    # Line 251
    ld	$gp,8($sp)
    # Line 248
    sw	$a1,0($a0)
    # Line 249
    sw	$s8,4($a0)
    # Line 250
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 251
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 250
    addiu	$v0,$v0,2
    # Line 251
    jr	$ra
    # Line 250
    sw	$v0,4148($zero)
.L0da68704:
    # Line 247
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 251
    ld	$gp,8($sp)
    # Line 248
    li	$a5,167
    sw	$a5,0($a4)
    # Line 249
    sw	$s8,4($a4)
    # Line 250
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 251
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 250
    addiu	$a2,$a2,2
    # Line 251
    jr	$ra
    # Line 250
    sw	$a2,4148($zero)
.end __glkonlc_EdgeFlag

# Function: __glkonlc_EdgeFlagv
# Declared: Line 252 (Source lines: 252-257)
# Address: 0x0da68760 - 0x0da6881c (Size: 188 bytes, Frame: 32)
.globl __glkonlc_EdgeFlagv
.ent __glkonlc_EdgeFlagv
__glkonlc_EdgeFlagv:
    # Line 252
    addiu	$sp,$sp,-32
    # Line 253
    lw	$a2,4136($zero)
    # Line 254
    li	$a3,167
    # Line 252
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x3
    # Line 253
    slti	$v0,$a2,2
    # Line 252
    addiu	$at,$at,-30600
    # Line 256
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 253
    bnez	$v0,.L0da687c8
    # Line 252
    addu	$gp,$t9,$at
    # Line 253
    lw	$a0,4144($zero)
    # Line 257
    ld	$gp,8($sp)
    # Line 254
    sw	$a3,0($a0)
    # Line 255
    lbu	$a1,0($s8)
    # Line 257
    ld	$s8,0($sp)
    # Line 255
    sw	$a1,4($a0)
    # Line 256
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 257
    addiu	$sp,$sp,32
    # Line 256
    addiu	$v0,$v0,2
    # Line 257
    jr	$ra
    # Line 256
    sw	$v0,4148($zero)
.L0da687c8:
    # Line 253
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a6,4144($zero)
    # Line 257
    ld	$gp,8($sp)
    # Line 254
    li	$t0,167
    sw	$t0,0($a6)
    # Line 255
    lbu	$a7,0($s8)
    # Line 257
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    # Line 255
    sw	$a7,4($a6)
    # Line 256
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 257
    addiu	$sp,$sp,32
    # Line 256
    addiu	$a4,$a4,2
    # Line 257
    jr	$ra
    # Line 256
    sw	$a4,4148($zero)
.end __glkonlc_EdgeFlagv

# Function: __glkonlc_Indexd
# Declared: Line 258 (Source lines: 258-263)
# Address: 0x0da68820 - 0x0da688b0 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_Indexd
.ent __glkonlc_Indexd
__glkonlc_Indexd:
    # Line 259
    lw	$a2,4136($zero)
    # Line 258
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 259
    slti	$v0,$a2,3
    # Line 258
    sdc1	$f30,8($sp)
    addiu	$at,$at,-30792
    mov.d	$f30,$f12
    sd	$gp,16($sp)
    # Line 259
    bnez	$v0,.L0da68894
    # Line 258
    addu	$gp,$t9,$at
.L0da68848:
    # Line 263
    ld	$gp,16($sp)
    # Line 261
    sdc1	$f30,0($sp)
    # Line 263
    ldc1	$f30,8($sp)
    # Line 261
    lw	$a1,4($sp)
    # Line 259
    lw	$a0,4144($zero)
    # Line 261
    lw	$a3,0($sp)
    # Line 260
    li	$a4,114
    sw	$a4,0($a0)
    # Line 261
    sw	$a3,4($a0)
    sw	$a1,8($a0)
    # Line 262
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    # Line 263
    addiu	$sp,$sp,32
    # Line 262
    addiu	$v0,$v0,3
    # Line 263
    jr	$ra
    # Line 262
    sw	$v0,4148($zero)
.L0da68894:
    # Line 259
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0da68848
    move	$a2,$v0
.end __glkonlc_Indexd

# Function: __glkonlc_Indexdv
# Declared: Line 264 (Source lines: 264-269)
# Address: 0x0da688b0 - 0x0da68944 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Indexdv
.ent __glkonlc_Indexdv
__glkonlc_Indexdv:
    # Line 265
    lw	$a3,4136($zero)
    # Line 264
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 265
    slti	$v0,$a3,3
    # Line 264
    sd	$s8,8($sp)
    move	$s8,$a0
    addiu	$at,$at,-30936
    sd	$gp,16($sp)
    # Line 265
    bnez	$v0,.L0da68928
    # Line 264
    addu	$gp,$t9,$at
.L0da688d8:
    # Line 265
    lw	$a0,4144($zero)
    # Line 269
    ld	$gp,16($sp)
    # Line 266
    li	$a4,114
    sw	$a4,0($a0)
    # Line 267
    ldc1	$f0,0($s8)
    # Line 269
    ld	$s8,8($sp)
    # Line 267
    sdc1	$f0,0($sp)
    lw	$a1,4($sp)
    lw	$a2,0($sp)
    sw	$a2,4($a0)
    sw	$a1,8($a0)
    # Line 268
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 269
    addiu	$sp,$sp,32
    # Line 268
    addiu	$v0,$v0,3
    # Line 269
    jr	$ra
    # Line 268
    sw	$v0,4148($zero)
.L0da68928:
    # Line 265
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0da688d8
    move	$a3,$v0
.end __glkonlc_Indexdv

# Function: __glkonlc_Indexf
# Declared: Line 270 (Source lines: 270-275)
# Address: 0x0da68950 - 0x0da68a04 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_Indexf
.ent __glkonlc_Indexf
__glkonlc_Indexf:
    # Line 271
    lw	$a1,4136($zero)
    # Line 272
    li	$a2,115
    # Line 270
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 271
    slti	$v0,$a1,2
    # Line 270
    sdc1	$f30,0($sp)
    addiu	$at,$at,-31096
    # Line 274
    addiu	$v1,$a1,-2
    # Line 270
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 271
    bnez	$v0,.L0da689b4
    # Line 270
    addu	$gp,$t9,$at
    # Line 275
    ld	$gp,8($sp)
    # Line 271
    lw	$a0,4144($zero)
    # Line 275
    ldc1	$f30,0($sp)
    # Line 272
    sw	$a2,0($a0)
    # Line 273
    swc1	$f12,4($a0)
    # Line 274
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 275
    addiu	$sp,$sp,32
    # Line 274
    addiu	$v0,$v0,2
    # Line 275
    jr	$ra
    # Line 274
    sw	$v0,4148($zero)
.L0da689b4:
    # Line 271
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 275
    ld	$gp,8($sp)
    # Line 272
    li	$a6,115
    sw	$a6,0($a5)
    # Line 273
    swc1	$f30,4($a5)
    # Line 274
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    ld	$ra,16($sp)
    lw	$a3,4148($zero)
    # Line 275
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 274
    addiu	$a3,$a3,2
    # Line 275
    jr	$ra
    # Line 274
    sw	$a3,4148($zero)
.end __glkonlc_Indexf

# Function: __glkonlc_Indexfv
# Declared: Line 276 (Source lines: 276-281)
# Address: 0x0da68a10 - 0x0da68acc (Size: 188 bytes, Frame: 32)
.globl __glkonlc_Indexfv
.ent __glkonlc_Indexfv
__glkonlc_Indexfv:
    # Line 276
    addiu	$sp,$sp,-32
    # Line 277
    lw	$a2,4136($zero)
    # Line 278
    li	$a1,115
    # Line 276
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x3
    # Line 277
    slti	$v0,$a2,2
    # Line 276
    addiu	$at,$at,-31288
    # Line 280
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 277
    bnez	$v0,.L0da68a78
    # Line 276
    addu	$gp,$t9,$at
    # Line 277
    lw	$a0,4144($zero)
    # Line 281
    ld	$gp,8($sp)
    # Line 278
    sw	$a1,0($a0)
    # Line 279
    lwc1	$f0,0($s8)
    # Line 281
    ld	$s8,0($sp)
    # Line 279
    swc1	$f0,4($a0)
    # Line 280
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 281
    addiu	$sp,$sp,32
    # Line 280
    addiu	$v0,$v0,2
    # Line 281
    jr	$ra
    # Line 280
    sw	$v0,4148($zero)
.L0da68a78:
    # Line 277
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 281
    ld	$gp,8($sp)
    # Line 278
    li	$a5,115
    sw	$a5,0($a4)
    # Line 279
    lwc1	$f1,0($s8)
    # Line 281
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    # Line 279
    swc1	$f1,4($a4)
    # Line 280
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    # Line 281
    addiu	$sp,$sp,32
    # Line 280
    addiu	$a2,$a2,2
    # Line 281
    jr	$ra
    # Line 280
    sw	$a2,4148($zero)
.end __glkonlc_Indexfv

# Function: __glkonlc_Indexi
# Declared: Line 282 (Source lines: 282-287)
# Address: 0x0da68ad0 - 0x0da68b84 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_Indexi
.ent __glkonlc_Indexi
__glkonlc_Indexi:
    # Line 282
    addiu	$sp,$sp,-32
    # Line 283
    lw	$a2,4136($zero)
    # Line 284
    li	$a1,116
    # Line 282
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x3
    # Line 283
    slti	$v0,$a2,2
    # Line 282
    addiu	$at,$at,-31480
    # Line 286
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 283
    bnez	$v0,.L0da68b34
    # Line 282
    addu	$gp,$t9,$at
    # Line 283
    lw	$a0,4144($zero)
    # Line 287
    ld	$gp,8($sp)
    # Line 284
    sw	$a1,0($a0)
    # Line 285
    sw	$s8,4($a0)
    # Line 286
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 287
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 286
    addiu	$v0,$v0,2
    # Line 287
    jr	$ra
    # Line 286
    sw	$v0,4148($zero)
.L0da68b34:
    # Line 283
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 287
    ld	$gp,8($sp)
    # Line 284
    li	$a5,116
    sw	$a5,0($a4)
    # Line 285
    sw	$s8,4($a4)
    # Line 286
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 287
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 286
    addiu	$a2,$a2,2
    # Line 287
    jr	$ra
    # Line 286
    sw	$a2,4148($zero)
.end __glkonlc_Indexi

# Function: __glkonlc_Indexiv
# Declared: Line 288 (Source lines: 288-293)
# Address: 0x0da68b90 - 0x0da68c4c (Size: 188 bytes, Frame: 32)
.globl __glkonlc_Indexiv
.ent __glkonlc_Indexiv
__glkonlc_Indexiv:
    # Line 288
    addiu	$sp,$sp,-32
    # Line 289
    lw	$a2,4136($zero)
    # Line 290
    li	$a3,116
    # Line 288
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x3
    # Line 289
    slti	$v0,$a2,2
    # Line 288
    addiu	$at,$at,-31672
    # Line 292
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 289
    bnez	$v0,.L0da68bf8
    # Line 288
    addu	$gp,$t9,$at
    # Line 289
    lw	$a0,4144($zero)
    # Line 293
    ld	$gp,8($sp)
    # Line 290
    sw	$a3,0($a0)
    # Line 291
    lw	$a1,0($s8)
    # Line 293
    ld	$s8,0($sp)
    # Line 291
    sw	$a1,4($a0)
    # Line 292
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 293
    addiu	$sp,$sp,32
    # Line 292
    addiu	$v0,$v0,2
    # Line 293
    jr	$ra
    # Line 292
    sw	$v0,4148($zero)
.L0da68bf8:
    # Line 289
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a6,4144($zero)
    # Line 293
    ld	$gp,8($sp)
    # Line 290
    li	$t0,116
    sw	$t0,0($a6)
    # Line 291
    lw	$a7,0($s8)
    # Line 293
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    # Line 291
    sw	$a7,4($a6)
    # Line 292
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 293
    addiu	$sp,$sp,32
    # Line 292
    addiu	$a4,$a4,2
    # Line 293
    jr	$ra
    # Line 292
    sw	$a4,4148($zero)
.end __glkonlc_Indexiv

# Function: __glkonlc_Indexs
# Declared: Line 294 (Source lines: 294-299)
# Address: 0x0da68c50 - 0x0da68d0c (Size: 188 bytes, Frame: 32)
.globl __glkonlc_Indexs
.ent __glkonlc_Indexs
__glkonlc_Indexs:
    # Line 296
    li	$a3,117
    # Line 295
    lw	$a2,4136($zero)
    # Line 294
    lui	$at,0x3
    addiu	$sp,$sp,-32
    sd	$s8,0($sp)
    move	$s8,$a0
    # Line 295
    slti	$v0,$a2,2
    # Line 294
    addiu	$at,$at,-31864
    # Line 297
    sll	$a1,$s8,0x10
    sd	$gp,8($sp)
    # Line 295
    bnez	$v0,.L0da68cb8
    # Line 294
    addu	$gp,$t9,$at
    # Line 299
    ld	$gp,8($sp)
    # Line 295
    lw	$a0,4144($zero)
    # Line 299
    ld	$s8,0($sp)
    # Line 296
    sw	$a3,0($a0)
    # Line 297
    sw	$a1,4($a0)
    # Line 298
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-2
    sw	$v1,4136($zero)
    # Line 299
    addiu	$sp,$sp,32
    # Line 298
    addiu	$v0,$v0,2
    # Line 299
    jr	$ra
    # Line 298
    sw	$v0,4148($zero)
.L0da68cb8:
    # Line 295
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    # Line 299
    ld	$gp,8($sp)
    # Line 295
    lw	$a6,4144($zero)
    # Line 297
    sll	$a7,$s8,0x10
    # Line 299
    ld	$s8,0($sp)
    # Line 296
    li	$t0,117
    sw	$t0,0($a6)
    # Line 297
    sw	$a7,4($a6)
    # Line 298
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    ld	$ra,16($sp)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 299
    addiu	$sp,$sp,32
    # Line 298
    addiu	$a4,$a4,2
    # Line 299
    jr	$ra
    # Line 298
    sw	$a4,4148($zero)
.end __glkonlc_Indexs

# Function: __glkonlc_Indexsv
# Declared: Line 300 (Source lines: 300-305)
# Address: 0x0da68d10 - 0x0da68d98 (Size: 136 bytes, Frame: 32)
.globl __glkonlc_Indexsv
.ent __glkonlc_Indexsv
__glkonlc_Indexsv:
    # Line 301
    lw	$a3,4136($zero)
    # Line 300
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 301
    slti	$v0,$a3,2
    # Line 300
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-32056
    sd	$gp,8($sp)
    # Line 301
    bnez	$v0,.L0da68d7c
    # Line 300
    addu	$gp,$t9,$at
.L0da68d38:
    # Line 301
    lw	$a0,4144($zero)
    # Line 305
    ld	$gp,8($sp)
    # Line 302
    li	$a2,117
    sw	$a2,0($a0)
    # Line 303
    lh	$a1,0($s8)
    # Line 305
    ld	$s8,0($sp)
    # Line 303
    sll	$a1,$a1,0x10
    sw	$a1,4($a0)
    # Line 304
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 305
    addiu	$sp,$sp,32
    # Line 304
    addiu	$v0,$v0,2
    # Line 305
    jr	$ra
    # Line 304
    sw	$v0,4148($zero)
.L0da68d7c:
    # Line 301
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da68d38
    move	$a3,$v0
.end __glkonlc_Indexsv

# Function: __glkonlc_Normal3b
# Declared: Line 306 (Source lines: 306-311)
# Address: 0x0da68da0 - 0x0da68e44 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_Normal3b
.ent __glkonlc_Normal3b
__glkonlc_Normal3b:
    # Line 307
    lw	$a5,4136($zero)
    # Line 306
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 307
    slti	$v0,$a5,2
    # Line 306
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-32200
    sd	$gp,8($sp)
    # Line 307
    bnez	$v0,.L0da68e18
    # Line 306
    addu	$gp,$t9,$at
.L0da68dc8:
    # Line 311
    ld	$gp,8($sp)
    # Line 307
    lw	$a0,4144($zero)
    # Line 308
    sll	$a3,$s8,0x18
    andi	$a4,$a1,0xff
    # Line 311
    ld	$s8,0($sp)
    # Line 308
    sll	$a4,$a4,0x10
    # Line 309
    sll	$a1,$a2,0x18
    sw	$a1,4($a0)
    # Line 308
    or	$a3,$a3,$a4
    ori	$a3,$a3,0x76
    sw	$a3,0($a0)
    # Line 310
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 311
    addiu	$sp,$sp,48
    # Line 310
    addiu	$v0,$v0,2
    # Line 311
    jr	$ra
    # Line 310
    sw	$v0,4148($zero)
.L0da68e18:
    # Line 307
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da68dc8
    move	$a5,$v0
.end __glkonlc_Normal3b

# Function: __glkonlc_Normal3bv
# Declared: Line 312 (Source lines: 312-317)
# Address: 0x0da68e50 - 0x0da68eec (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Normal3bv
.ent __glkonlc_Normal3bv
__glkonlc_Normal3bv:
    # Line 313
    lw	$a3,4136($zero)
    # Line 312
    addiu	$sp,$sp,-32
    lui	$at,0x3
    # Line 313
    slti	$v0,$a3,2
    # Line 312
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,-32376
    sd	$gp,8($sp)
    # Line 313
    bnez	$v0,.L0da68ed0
    # Line 312
    addu	$gp,$t9,$at
.L0da68e78:
    # Line 314
    lbu	$a4,1($s8)
    lb	$a2,0($s8)
    sll	$a4,$a4,0x10
    # Line 313
    lw	$a0,4144($zero)
    # Line 314
    sll	$a2,$a2,0x18
    # Line 317
    ld	$gp,8($sp)
    # Line 314
    or	$a2,$a2,$a4
    ori	$a2,$a2,0x76
    sw	$a2,0($a0)
    # Line 315
    lb	$a1,2($s8)
    # Line 317
    ld	$s8,0($sp)
    # Line 315
    sll	$a1,$a1,0x18
    sw	$a1,4($a0)
    # Line 316
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 317
    addiu	$sp,$sp,32
    # Line 316
    addiu	$v0,$v0,2
    # Line 317
    jr	$ra
    # Line 316
    sw	$v0,4148($zero)
.L0da68ed0:
    # Line 313
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da68e78
    move	$a3,$v0
.end __glkonlc_Normal3bv

# Function: __glkonlc_Normal3d
# Declared: Line 318 (Source lines: 318-325)
# Address: 0x0da68ef0 - 0x0da68fc0 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_Normal3d
.ent __glkonlc_Normal3d
__glkonlc_Normal3d:
    # Line 319
    lw	$a2,4136($zero)
    # Line 318
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x3
    # Line 319
    slti	$v0,$a2,7
    # Line 318
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,-32536
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 319
    bnez	$v0,.L0da68f94
    # Line 318
    addu	$gp,$t9,$at
.L0da68f20:
    # Line 325
    ld	$gp,32($sp)
    # Line 321
    sdc1	$f30,0($sp)
    # Line 325
    ldc1	$f30,24($sp)
    # Line 323
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 322
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 321
    lw	$a6,4($sp)
    # Line 319
    lw	$a0,4144($zero)
    # Line 321
    lw	$a7,0($sp)
    # Line 320
    li	$t0,119
    sw	$t0,0($a0)
    # Line 321
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 322
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 323
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 324
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 325
    addiu	$sp,$sp,64
    # Line 324
    addiu	$v0,$v0,7
    # Line 325
    jr	$ra
    # Line 324
    sw	$v0,4148($zero)
.L0da68f94:
    # Line 319
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da68f20
    move	$a2,$v0
.end __glkonlc_Normal3d

# Function: __glkonlc_Normal3dv
# Declared: Line 326 (Source lines: 326-333)
# Address: 0x0da68fc0 - 0x0da69084 (Size: 196 bytes, Frame: 48)
.globl __glkonlc_Normal3dv
.ent __glkonlc_Normal3dv
__glkonlc_Normal3dv:
    # Line 327
    lw	$a3,4136($zero)
    # Line 326
    addiu	$sp,$sp,-48
    lui	$at,0x3
    # Line 327
    slti	$v0,$a3,7
    # Line 326
    sd	$s8,24($sp)
    move	$s8,$a0
    addiu	$at,$at,-32744
    sd	$gp,32($sp)
    # Line 327
    bnez	$v0,.L0da69068
    # Line 326
    addu	$gp,$t9,$at
.L0da68fe8:
    # Line 327
    lw	$a0,4144($zero)
    # Line 328
    li	$t0,119
    sw	$t0,0($a0)
    # Line 329
    ldc1	$f2,0($s8)
    sdc1	$f2,0($sp)
    lw	$a7,0($sp)
    lw	$a6,4($sp)
    sw	$a6,8($a0)
    sw	$a7,4($a0)
    # Line 330
    ldc1	$f1,8($s8)
    # Line 333
    ld	$gp,32($sp)
    # Line 330
    sdc1	$f1,8($sp)
    lw	$a5,8($sp)
    lw	$a4,12($sp)
    sw	$a4,16($a0)
    sw	$a5,12($a0)
    # Line 331
    ldc1	$f0,16($s8)
    # Line 333
    ld	$s8,24($sp)
    # Line 331
    sdc1	$f0,16($sp)
    lw	$a1,20($sp)
    lw	$a2,16($sp)
    sw	$a2,20($a0)
    sw	$a1,24($a0)
    # Line 332
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-7
    sw	$v1,4136($zero)
    # Line 333
    addiu	$sp,$sp,48
    # Line 332
    addiu	$v0,$v0,7
    # Line 333
    jr	$ra
    # Line 332
    sw	$v0,4148($zero)
.L0da69068:
    # Line 327
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    b	.L0da68fe8
    move	$a3,$v0
.end __glkonlc_Normal3dv

# Function: __glkonlc_Normal3f
# Declared: Line 334 (Source lines: 334-341)
# Address: 0x0da69090 - 0x0da69130 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Normal3f
.ent __glkonlc_Normal3f
__glkonlc_Normal3f:
    # Line 335
    lw	$a2,4136($zero)
    # Line 334
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 335
    slti	$v0,$a2,4
    # Line 334
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,32584
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 335
    bnez	$v0,.L0da69104
    # Line 334
    addu	$gp,$t9,$at
.L0da690c0:
    # Line 335
    lw	$a0,4144($zero)
    # Line 341
    ld	$gp,8($sp)
    # Line 336
    li	$a1,120
    sw	$a1,0($a0)
    # Line 337
    swc1	$f30,4($a0)
    # Line 338
    swc1	$f4,8($a0)
    # Line 339
    swc1	$f5,12($a0)
    # Line 340
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 341
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 340
    addiu	$v0,$v0,4
    # Line 341
    jr	$ra
    # Line 340
    sw	$v0,4148($zero)
.L0da69104:
    # Line 335
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da690c0
    move	$a2,$v0
.end __glkonlc_Normal3f

# Function: __glkonlc_Normal3fv
# Declared: Line 342 (Source lines: 342-349)
# Address: 0x0da69130 - 0x0da691c4 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Normal3fv
.ent __glkonlc_Normal3fv
__glkonlc_Normal3fv:
    # Line 343
    lw	$a3,4136($zero)
    # Line 342
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 343
    slti	$v0,$a3,4
    # Line 342
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,32424
    sd	$gp,8($sp)
    # Line 343
    bnez	$v0,.L0da691a8
    # Line 342
    addu	$gp,$t9,$at
.L0da69158:
    # Line 343
    lw	$a0,4144($zero)
    # Line 344
    li	$a1,120
    sw	$a1,0($a0)
    # Line 345
    lwc1	$f2,0($s8)
    swc1	$f2,4($a0)
    # Line 346
    lwc1	$f1,4($s8)
    # Line 349
    ld	$gp,8($sp)
    # Line 346
    swc1	$f1,8($a0)
    # Line 347
    lwc1	$f0,8($s8)
    # Line 349
    ld	$s8,0($sp)
    # Line 347
    swc1	$f0,12($a0)
    # Line 348
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 349
    addiu	$sp,$sp,32
    # Line 348
    addiu	$v0,$v0,4
    # Line 349
    jr	$ra
    # Line 348
    sw	$v0,4148($zero)
.L0da691a8:
    # Line 343
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69158
    move	$a3,$v0
.end __glkonlc_Normal3fv

# Function: __glkonlc_Normal3i
# Declared: Line 350 (Source lines: 350-357)
# Address: 0x0da691d0 - 0x0da69268 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_Normal3i
.ent __glkonlc_Normal3i
__glkonlc_Normal3i:
    # Line 351
    lw	$a5,4136($zero)
    # Line 350
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 351
    slti	$v0,$a5,4
    # Line 350
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,32264
    sd	$gp,8($sp)
    # Line 351
    bnez	$v0,.L0da6923c
    # Line 350
    addu	$gp,$t9,$at
.L0da691f8:
    # Line 351
    lw	$a0,4144($zero)
    # Line 357
    ld	$gp,8($sp)
    # Line 352
    li	$a3,121
    sw	$a3,0($a0)
    # Line 353
    sw	$s8,4($a0)
    # Line 354
    sw	$a1,8($a0)
    # Line 355
    sw	$a2,12($a0)
    # Line 356
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 357
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 356
    addiu	$v0,$v0,4
    # Line 357
    jr	$ra
    # Line 356
    sw	$v0,4148($zero)
.L0da6923c:
    # Line 351
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da691f8
    move	$a5,$v0
.end __glkonlc_Normal3i

# Function: __glkonlc_Normal3iv
# Declared: Line 358 (Source lines: 358-365)
# Address: 0x0da69270 - 0x0da69304 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Normal3iv
.ent __glkonlc_Normal3iv
__glkonlc_Normal3iv:
    # Line 359
    lw	$a3,4136($zero)
    # Line 358
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 359
    slti	$v0,$a3,4
    # Line 358
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,32104
    sd	$gp,8($sp)
    # Line 359
    bnez	$v0,.L0da692e8
    # Line 358
    addu	$gp,$t9,$at
.L0da69298:
    # Line 359
    lw	$a0,4144($zero)
    # Line 365
    ld	$gp,8($sp)
    # Line 360
    li	$a5,121
    sw	$a5,0($a0)
    # Line 361
    lw	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 362
    lw	$a2,4($s8)
    sw	$a2,8($a0)
    # Line 363
    lw	$a1,8($s8)
    # Line 365
    ld	$s8,0($sp)
    # Line 363
    sw	$a1,12($a0)
    # Line 364
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 365
    addiu	$sp,$sp,32
    # Line 364
    addiu	$v0,$v0,4
    # Line 365
    jr	$ra
    # Line 364
    sw	$v0,4148($zero)
.L0da692e8:
    # Line 359
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69298
    move	$a3,$v0
.end __glkonlc_Normal3iv

# Function: __glkonlc_Normal3s
# Declared: Line 366 (Source lines: 366-371)
# Address: 0x0da69310 - 0x0da693b0 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Normal3s
.ent __glkonlc_Normal3s
__glkonlc_Normal3s:
    # Line 367
    lw	$a5,4136($zero)
    # Line 366
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 367
    slti	$v0,$a5,2
    # Line 366
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,31944
    sd	$gp,8($sp)
    # Line 367
    bnez	$v0,.L0da69384
    # Line 366
    addu	$gp,$t9,$at
.L0da69338:
    # Line 371
    ld	$gp,8($sp)
    # Line 367
    lw	$a0,4144($zero)
    # Line 368
    sll	$a3,$s8,0x10
    # Line 371
    ld	$s8,0($sp)
    # Line 369
    andi	$a2,$a2,0xffff
    sll	$a1,$a1,0x10
    # Line 368
    ori	$a3,$a3,0x7a
    sw	$a3,0($a0)
    # Line 369
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 370
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 371
    addiu	$sp,$sp,48
    # Line 370
    addiu	$v0,$v0,2
    # Line 371
    jr	$ra
    # Line 370
    sw	$v0,4148($zero)
.L0da69384:
    # Line 367
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da69338
    move	$a5,$v0
.end __glkonlc_Normal3s

# Function: __glkonlc_Normal3sv
# Declared: Line 372 (Source lines: 372-377)
# Address: 0x0da693b0 - 0x0da69448 (Size: 152 bytes, Frame: 32)
.globl __glkonlc_Normal3sv
.ent __glkonlc_Normal3sv
__glkonlc_Normal3sv:
    # Line 373
    lw	$a3,4136($zero)
    # Line 372
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 373
    slti	$v0,$a3,2
    # Line 372
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,31784
    sd	$gp,8($sp)
    # Line 373
    bnez	$v0,.L0da6942c
    # Line 372
    addu	$gp,$t9,$at
.L0da693d8:
    # Line 374
    lh	$a4,0($s8)
    # Line 373
    lw	$a0,4144($zero)
    # Line 377
    ld	$gp,8($sp)
    # Line 374
    sll	$a4,$a4,0x10
    ori	$a4,$a4,0x7a
    sw	$a4,0($a0)
    # Line 375
    lh	$a2,2($s8)
    lhu	$a1,4($s8)
    # Line 377
    ld	$s8,0($sp)
    # Line 375
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 376
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 377
    addiu	$sp,$sp,32
    # Line 376
    addiu	$v0,$v0,2
    # Line 377
    jr	$ra
    # Line 376
    sw	$v0,4148($zero)
.L0da6942c:
    # Line 373
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da693d8
    move	$a3,$v0
.end __glkonlc_Normal3sv

# Function: __glkonlc_RasterPos2d
# Declared: Line 378 (Source lines: 378-384)
# Address: 0x0da69450 - 0x0da69500 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_RasterPos2d
.ent __glkonlc_RasterPos2d
__glkonlc_RasterPos2d:
    # Line 379
    lw	$a2,4136($zero)
    # Line 378
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 379
    slti	$v0,$a2,5
    # Line 378
    mov.d	$f4,$f13
    sdc1	$f30,16($sp)
    addiu	$at,$at,31624
    mov.d	$f30,$f12
    sd	$gp,24($sp)
    # Line 379
    bnez	$v0,.L0da694dc
    # Line 378
    addu	$gp,$t9,$at
.L0da6947c:
    # Line 384
    ld	$gp,24($sp)
    # Line 381
    sdc1	$f30,0($sp)
    # Line 384
    ldc1	$f30,16($sp)
    # Line 382
    sdc1	$f4,8($sp)
    lw	$a1,12($sp)
    lw	$a3,8($sp)
    # Line 381
    lw	$a4,4($sp)
    # Line 379
    lw	$a0,4144($zero)
    # Line 381
    lw	$a5,0($sp)
    # Line 380
    li	$a6,168
    sw	$a6,0($a0)
    # Line 381
    sw	$a5,4($a0)
    sw	$a4,8($a0)
    # Line 382
    sw	$a3,12($a0)
    sw	$a1,16($a0)
    # Line 383
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    # Line 384
    addiu	$sp,$sp,48
    # Line 383
    addiu	$v0,$v0,5
    # Line 384
    jr	$ra
    # Line 383
    sw	$v0,4148($zero)
.L0da694dc:
    # Line 379
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    b	.L0da6947c
    move	$a2,$v0
.end __glkonlc_RasterPos2d

# Function: __glkonlc_RasterPos2dv
# Declared: Line 385 (Source lines: 385-391)
# Address: 0x0da69500 - 0x0da695ac (Size: 172 bytes, Frame: 48)
.globl __glkonlc_RasterPos2dv
.ent __glkonlc_RasterPos2dv
__glkonlc_RasterPos2dv:
    # Line 386
    lw	$a3,4136($zero)
    # Line 385
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 386
    slti	$v0,$a3,5
    # Line 385
    sd	$s8,16($sp)
    move	$s8,$a0
    addiu	$at,$at,31448
    sd	$gp,24($sp)
    # Line 386
    bnez	$v0,.L0da69590
    # Line 385
    addu	$gp,$t9,$at
.L0da69528:
    # Line 386
    lw	$a0,4144($zero)
    # Line 387
    li	$a6,168
    sw	$a6,0($a0)
    # Line 388
    ldc1	$f1,0($s8)
    # Line 391
    ld	$gp,24($sp)
    # Line 388
    sdc1	$f1,0($sp)
    lw	$a5,0($sp)
    lw	$a4,4($sp)
    sw	$a4,8($a0)
    sw	$a5,4($a0)
    # Line 389
    ldc1	$f0,8($s8)
    # Line 391
    ld	$s8,16($sp)
    # Line 389
    sdc1	$f0,8($sp)
    lw	$a1,12($sp)
    lw	$a2,8($sp)
    sw	$a2,12($a0)
    sw	$a1,16($a0)
    # Line 390
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 391
    addiu	$sp,$sp,48
    # Line 390
    addiu	$v0,$v0,5
    # Line 391
    jr	$ra
    # Line 390
    sw	$v0,4148($zero)
.L0da69590:
    # Line 386
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    b	.L0da69528
    move	$a3,$v0
.end __glkonlc_RasterPos2dv

# Function: __glkonlc_RasterPos2f
# Declared: Line 392 (Source lines: 392-398)
# Address: 0x0da695b0 - 0x0da69640 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_RasterPos2f
.ent __glkonlc_RasterPos2f
__glkonlc_RasterPos2f:
    # Line 393
    lw	$a2,4136($zero)
    # Line 392
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 393
    slti	$v0,$a2,3
    # Line 392
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,31272
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 393
    bnez	$v0,.L0da6961c
    # Line 392
    addu	$gp,$t9,$at
.L0da695dc:
    # Line 393
    lw	$a0,4144($zero)
    # Line 398
    ld	$gp,8($sp)
    # Line 394
    li	$a1,169
    sw	$a1,0($a0)
    # Line 395
    swc1	$f30,4($a0)
    # Line 396
    swc1	$f4,8($a0)
    # Line 397
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 398
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 397
    addiu	$v0,$v0,3
    # Line 398
    jr	$ra
    # Line 397
    sw	$v0,4148($zero)
.L0da6961c:
    # Line 393
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ldc1	$f4,16($sp)
    b	.L0da695dc
    move	$a2,$v0
.end __glkonlc_RasterPos2f

# Function: __glkonlc_RasterPos2fv
# Declared: Line 399 (Source lines: 399-405)
# Address: 0x0da69640 - 0x0da696cc (Size: 140 bytes, Frame: 32)
.globl __glkonlc_RasterPos2fv
.ent __glkonlc_RasterPos2fv
__glkonlc_RasterPos2fv:
    # Line 400
    lw	$a3,4136($zero)
    # Line 399
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 400
    slti	$v0,$a3,3
    # Line 399
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,31128
    sd	$gp,8($sp)
    # Line 400
    bnez	$v0,.L0da696b0
    # Line 399
    addu	$gp,$t9,$at
.L0da69668:
    # Line 400
    lw	$a0,4144($zero)
    # Line 401
    li	$a1,169
    sw	$a1,0($a0)
    # Line 402
    lwc1	$f1,0($s8)
    # Line 405
    ld	$gp,8($sp)
    # Line 402
    swc1	$f1,4($a0)
    # Line 403
    lwc1	$f0,4($s8)
    # Line 405
    ld	$s8,0($sp)
    # Line 403
    swc1	$f0,8($a0)
    # Line 404
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 405
    addiu	$sp,$sp,32
    # Line 404
    addiu	$v0,$v0,3
    # Line 405
    jr	$ra
    # Line 404
    sw	$v0,4148($zero)
.L0da696b0:
    # Line 400
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69668
    move	$a3,$v0
.end __glkonlc_RasterPos2fv

# Function: __glkonlc_RasterPos2i
# Declared: Line 406 (Source lines: 406-412)
# Address: 0x0da696d0 - 0x0da6975c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_RasterPos2i
.ent __glkonlc_RasterPos2i
__glkonlc_RasterPos2i:
    # Line 407
    lw	$a4,4136($zero)
    # Line 406
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 407
    slti	$v0,$a4,3
    # Line 406
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,30984
    sd	$gp,8($sp)
    # Line 407
    bnez	$v0,.L0da69738
    # Line 406
    addu	$gp,$t9,$at
.L0da696f8:
    # Line 407
    lw	$a0,4144($zero)
    # Line 412
    ld	$gp,8($sp)
    # Line 408
    li	$a2,170
    sw	$a2,0($a0)
    # Line 409
    sw	$s8,4($a0)
    # Line 410
    sw	$a1,8($a0)
    # Line 411
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 412
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 411
    addiu	$v0,$v0,3
    # Line 412
    jr	$ra
    # Line 411
    sw	$v0,4148($zero)
.L0da69738:
    # Line 407
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da696f8
    move	$a4,$v0
.end __glkonlc_RasterPos2i

# Function: __glkonlc_RasterPos2iv
# Declared: Line 413 (Source lines: 413-419)
# Address: 0x0da69760 - 0x0da697ec (Size: 140 bytes, Frame: 32)
.globl __glkonlc_RasterPos2iv
.ent __glkonlc_RasterPos2iv
__glkonlc_RasterPos2iv:
    # Line 414
    lw	$a3,4136($zero)
    # Line 413
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 414
    slti	$v0,$a3,3
    # Line 413
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,30840
    sd	$gp,8($sp)
    # Line 414
    bnez	$v0,.L0da697d0
    # Line 413
    addu	$gp,$t9,$at
.L0da69788:
    # Line 414
    lw	$a0,4144($zero)
    # Line 419
    ld	$gp,8($sp)
    # Line 415
    li	$a4,170
    sw	$a4,0($a0)
    # Line 416
    lw	$a2,0($s8)
    sw	$a2,4($a0)
    # Line 417
    lw	$a1,4($s8)
    # Line 419
    ld	$s8,0($sp)
    # Line 417
    sw	$a1,8($a0)
    # Line 418
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 419
    addiu	$sp,$sp,32
    # Line 418
    addiu	$v0,$v0,3
    # Line 419
    jr	$ra
    # Line 418
    sw	$v0,4148($zero)
.L0da697d0:
    # Line 414
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69788
    move	$a3,$v0
.end __glkonlc_RasterPos2iv

# Function: __glkonlc_RasterPos2s
# Declared: Line 420 (Source lines: 420-426)
# Address: 0x0da697f0 - 0x0da6987c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_RasterPos2s
.ent __glkonlc_RasterPos2s
__glkonlc_RasterPos2s:
    # Line 421
    lw	$a4,4136($zero)
    # Line 420
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 421
    slti	$v0,$a4,3
    # Line 420
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,30696
    sd	$gp,8($sp)
    # Line 421
    bnez	$v0,.L0da69858
    # Line 420
    addu	$gp,$t9,$at
.L0da69818:
    # Line 421
    lw	$a0,4144($zero)
    # Line 426
    ld	$gp,8($sp)
    # Line 422
    li	$a2,171
    sw	$a2,0($a0)
    # Line 423
    sw	$s8,4($a0)
    # Line 424
    sw	$a1,8($a0)
    # Line 425
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 426
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 425
    addiu	$v0,$v0,3
    # Line 426
    jr	$ra
    # Line 425
    sw	$v0,4148($zero)
.L0da69858:
    # Line 421
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da69818
    move	$a4,$v0
.end __glkonlc_RasterPos2s

# Function: __glkonlc_RasterPos2sv
# Declared: Line 427 (Source lines: 427-433)
# Address: 0x0da69880 - 0x0da6990c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_RasterPos2sv
.ent __glkonlc_RasterPos2sv
__glkonlc_RasterPos2sv:
    # Line 428
    lw	$a3,4136($zero)
    # Line 427
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 428
    slti	$v0,$a3,3
    # Line 427
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,30552
    sd	$gp,8($sp)
    # Line 428
    bnez	$v0,.L0da698f0
    # Line 427
    addu	$gp,$t9,$at
.L0da698a8:
    # Line 428
    lw	$a0,4144($zero)
    # Line 433
    ld	$gp,8($sp)
    # Line 429
    li	$a4,171
    sw	$a4,0($a0)
    # Line 430
    lh	$a2,0($s8)
    sw	$a2,4($a0)
    # Line 431
    lh	$a1,2($s8)
    # Line 433
    ld	$s8,0($sp)
    # Line 431
    sw	$a1,8($a0)
    # Line 432
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 433
    addiu	$sp,$sp,32
    # Line 432
    addiu	$v0,$v0,3
    # Line 433
    jr	$ra
    # Line 432
    sw	$v0,4148($zero)
.L0da698f0:
    # Line 428
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da698a8
    move	$a3,$v0
.end __glkonlc_RasterPos2sv

# Function: __glkonlc_RasterPos3d
# Declared: Line 434 (Source lines: 434-441)
# Address: 0x0da69910 - 0x0da699e0 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_RasterPos3d
.ent __glkonlc_RasterPos3d
__glkonlc_RasterPos3d:
    # Line 435
    lw	$a2,4136($zero)
    # Line 434
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 435
    slti	$v0,$a2,7
    # Line 434
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,30408
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 435
    bnez	$v0,.L0da699b4
    # Line 434
    addu	$gp,$t9,$at
.L0da69940:
    # Line 441
    ld	$gp,32($sp)
    # Line 437
    sdc1	$f30,0($sp)
    # Line 441
    ldc1	$f30,24($sp)
    # Line 439
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 438
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 437
    lw	$a6,4($sp)
    # Line 435
    lw	$a0,4144($zero)
    # Line 437
    lw	$a7,0($sp)
    # Line 436
    li	$t0,172
    sw	$t0,0($a0)
    # Line 437
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 438
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 439
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 440
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 441
    addiu	$sp,$sp,64
    # Line 440
    addiu	$v0,$v0,7
    # Line 441
    jr	$ra
    # Line 440
    sw	$v0,4148($zero)
.L0da699b4:
    # Line 435
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da69940
    move	$a2,$v0
.end __glkonlc_RasterPos3d

# Function: __glkonlc_RasterPos3dv
# Declared: Line 442 (Source lines: 442-449)
# Address: 0x0da699e0 - 0x0da69aa4 (Size: 196 bytes, Frame: 48)
.globl __glkonlc_RasterPos3dv
.ent __glkonlc_RasterPos3dv
__glkonlc_RasterPos3dv:
    # Line 443
    lw	$a3,4136($zero)
    # Line 442
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 443
    slti	$v0,$a3,7
    # Line 442
    sd	$s8,24($sp)
    move	$s8,$a0
    addiu	$at,$at,30200
    sd	$gp,32($sp)
    # Line 443
    bnez	$v0,.L0da69a88
    # Line 442
    addu	$gp,$t9,$at
.L0da69a08:
    # Line 443
    lw	$a0,4144($zero)
    # Line 444
    li	$t0,172
    sw	$t0,0($a0)
    # Line 445
    ldc1	$f2,0($s8)
    sdc1	$f2,0($sp)
    lw	$a7,0($sp)
    lw	$a6,4($sp)
    sw	$a6,8($a0)
    sw	$a7,4($a0)
    # Line 446
    ldc1	$f1,8($s8)
    # Line 449
    ld	$gp,32($sp)
    # Line 446
    sdc1	$f1,8($sp)
    lw	$a5,8($sp)
    lw	$a4,12($sp)
    sw	$a4,16($a0)
    sw	$a5,12($a0)
    # Line 447
    ldc1	$f0,16($s8)
    # Line 449
    ld	$s8,24($sp)
    # Line 447
    sdc1	$f0,16($sp)
    lw	$a1,20($sp)
    lw	$a2,16($sp)
    sw	$a2,20($a0)
    sw	$a1,24($a0)
    # Line 448
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-7
    sw	$v1,4136($zero)
    # Line 449
    addiu	$sp,$sp,48
    # Line 448
    addiu	$v0,$v0,7
    # Line 449
    jr	$ra
    # Line 448
    sw	$v0,4148($zero)
.L0da69a88:
    # Line 443
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    b	.L0da69a08
    move	$a3,$v0
.end __glkonlc_RasterPos3dv

# Function: __glkonlc_RasterPos3f
# Declared: Line 450 (Source lines: 450-457)
# Address: 0x0da69ab0 - 0x0da69b50 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_RasterPos3f
.ent __glkonlc_RasterPos3f
__glkonlc_RasterPos3f:
    # Line 451
    lw	$a2,4136($zero)
    # Line 450
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 451
    slti	$v0,$a2,4
    # Line 450
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,29992
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 451
    bnez	$v0,.L0da69b24
    # Line 450
    addu	$gp,$t9,$at
.L0da69ae0:
    # Line 451
    lw	$a0,4144($zero)
    # Line 457
    ld	$gp,8($sp)
    # Line 452
    li	$a1,173
    sw	$a1,0($a0)
    # Line 453
    swc1	$f30,4($a0)
    # Line 454
    swc1	$f4,8($a0)
    # Line 455
    swc1	$f5,12($a0)
    # Line 456
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 457
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 456
    addiu	$v0,$v0,4
    # Line 457
    jr	$ra
    # Line 456
    sw	$v0,4148($zero)
.L0da69b24:
    # Line 451
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da69ae0
    move	$a2,$v0
.end __glkonlc_RasterPos3f

# Function: __glkonlc_RasterPos3fv
# Declared: Line 458 (Source lines: 458-465)
# Address: 0x0da69b50 - 0x0da69be4 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_RasterPos3fv
.ent __glkonlc_RasterPos3fv
__glkonlc_RasterPos3fv:
    # Line 459
    lw	$a3,4136($zero)
    # Line 458
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 459
    slti	$v0,$a3,4
    # Line 458
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,29832
    sd	$gp,8($sp)
    # Line 459
    bnez	$v0,.L0da69bc8
    # Line 458
    addu	$gp,$t9,$at
.L0da69b78:
    # Line 459
    lw	$a0,4144($zero)
    # Line 460
    li	$a1,173
    sw	$a1,0($a0)
    # Line 461
    lwc1	$f2,0($s8)
    swc1	$f2,4($a0)
    # Line 462
    lwc1	$f1,4($s8)
    # Line 465
    ld	$gp,8($sp)
    # Line 462
    swc1	$f1,8($a0)
    # Line 463
    lwc1	$f0,8($s8)
    # Line 465
    ld	$s8,0($sp)
    # Line 463
    swc1	$f0,12($a0)
    # Line 464
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 465
    addiu	$sp,$sp,32
    # Line 464
    addiu	$v0,$v0,4
    # Line 465
    jr	$ra
    # Line 464
    sw	$v0,4148($zero)
.L0da69bc8:
    # Line 459
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69b78
    move	$a3,$v0
.end __glkonlc_RasterPos3fv

# Function: __glkonlc_RasterPos3i
# Declared: Line 466 (Source lines: 466-473)
# Address: 0x0da69bf0 - 0x0da69c88 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_RasterPos3i
.ent __glkonlc_RasterPos3i
__glkonlc_RasterPos3i:
    # Line 467
    lw	$a5,4136($zero)
    # Line 466
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 467
    slti	$v0,$a5,4
    # Line 466
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,29672
    sd	$gp,8($sp)
    # Line 467
    bnez	$v0,.L0da69c5c
    # Line 466
    addu	$gp,$t9,$at
.L0da69c18:
    # Line 467
    lw	$a0,4144($zero)
    # Line 473
    ld	$gp,8($sp)
    # Line 468
    li	$a3,174
    sw	$a3,0($a0)
    # Line 469
    sw	$s8,4($a0)
    # Line 470
    sw	$a1,8($a0)
    # Line 471
    sw	$a2,12($a0)
    # Line 472
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 473
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 472
    addiu	$v0,$v0,4
    # Line 473
    jr	$ra
    # Line 472
    sw	$v0,4148($zero)
.L0da69c5c:
    # Line 467
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da69c18
    move	$a5,$v0
.end __glkonlc_RasterPos3i

# Function: __glkonlc_RasterPos3iv
# Declared: Line 474 (Source lines: 474-481)
# Address: 0x0da69c90 - 0x0da69d24 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_RasterPos3iv
.ent __glkonlc_RasterPos3iv
__glkonlc_RasterPos3iv:
    # Line 475
    lw	$a3,4136($zero)
    # Line 474
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 475
    slti	$v0,$a3,4
    # Line 474
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,29512
    sd	$gp,8($sp)
    # Line 475
    bnez	$v0,.L0da69d08
    # Line 474
    addu	$gp,$t9,$at
.L0da69cb8:
    # Line 475
    lw	$a0,4144($zero)
    # Line 481
    ld	$gp,8($sp)
    # Line 476
    li	$a5,174
    sw	$a5,0($a0)
    # Line 477
    lw	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 478
    lw	$a2,4($s8)
    sw	$a2,8($a0)
    # Line 479
    lw	$a1,8($s8)
    # Line 481
    ld	$s8,0($sp)
    # Line 479
    sw	$a1,12($a0)
    # Line 480
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 481
    addiu	$sp,$sp,32
    # Line 480
    addiu	$v0,$v0,4
    # Line 481
    jr	$ra
    # Line 480
    sw	$v0,4148($zero)
.L0da69d08:
    # Line 475
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69cb8
    move	$a3,$v0
.end __glkonlc_RasterPos3iv

# Function: __glkonlc_RasterPos3s
# Declared: Line 482 (Source lines: 482-489)
# Address: 0x0da69d30 - 0x0da69dc8 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_RasterPos3s
.ent __glkonlc_RasterPos3s
__glkonlc_RasterPos3s:
    # Line 483
    lw	$a5,4136($zero)
    # Line 482
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 483
    slti	$v0,$a5,4
    # Line 482
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,29352
    sd	$gp,8($sp)
    # Line 483
    bnez	$v0,.L0da69d9c
    # Line 482
    addu	$gp,$t9,$at
.L0da69d58:
    # Line 483
    lw	$a0,4144($zero)
    # Line 489
    ld	$gp,8($sp)
    # Line 484
    li	$a3,175
    sw	$a3,0($a0)
    # Line 485
    sw	$s8,4($a0)
    # Line 486
    sw	$a1,8($a0)
    # Line 487
    sw	$a2,12($a0)
    # Line 488
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 489
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 488
    addiu	$v0,$v0,4
    # Line 489
    jr	$ra
    # Line 488
    sw	$v0,4148($zero)
.L0da69d9c:
    # Line 483
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da69d58
    move	$a5,$v0
.end __glkonlc_RasterPos3s

# Function: __glkonlc_RasterPos3sv
# Declared: Line 490 (Source lines: 490-497)
# Address: 0x0da69dd0 - 0x0da69e64 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_RasterPos3sv
.ent __glkonlc_RasterPos3sv
__glkonlc_RasterPos3sv:
    # Line 491
    lw	$a3,4136($zero)
    # Line 490
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 491
    slti	$v0,$a3,4
    # Line 490
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,29192
    sd	$gp,8($sp)
    # Line 491
    bnez	$v0,.L0da69e48
    # Line 490
    addu	$gp,$t9,$at
.L0da69df8:
    # Line 491
    lw	$a0,4144($zero)
    # Line 497
    ld	$gp,8($sp)
    # Line 492
    li	$a5,175
    sw	$a5,0($a0)
    # Line 493
    lh	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 494
    lh	$a2,2($s8)
    sw	$a2,8($a0)
    # Line 495
    lh	$a1,4($s8)
    # Line 497
    ld	$s8,0($sp)
    # Line 495
    sw	$a1,12($a0)
    # Line 496
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 497
    addiu	$sp,$sp,32
    # Line 496
    addiu	$v0,$v0,4
    # Line 497
    jr	$ra
    # Line 496
    sw	$v0,4148($zero)
.L0da69e48:
    # Line 491
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da69df8
    move	$a3,$v0
.end __glkonlc_RasterPos3sv

# Function: __glkonlc_RasterPos4d
# Declared: Line 498 (Source lines: 498-506)
# Address: 0x0da69e70 - 0x0da69f60 (Size: 240 bytes, Frame: 208)
.globl __glkonlc_RasterPos4d
.ent __glkonlc_RasterPos4d
__glkonlc_RasterPos4d:
    # Line 499
    lw	$a2,4136($zero)
    # Line 498
    mov.d	$f6,$f15
    addiu	$sp,$sp,-80
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 499
    slti	$v0,$a2,9
    # Line 498
    mov.d	$f4,$f13
    sdc1	$f30,32($sp)
    addiu	$at,$at,29032
    mov.d	$f30,$f12
    sd	$gp,40($sp)
    # Line 499
    bnez	$v0,.L0da69f2c
    # Line 498
    addu	$gp,$t9,$at
.L0da69ea4:
    # Line 506
    ld	$gp,40($sp)
    # Line 501
    sdc1	$f30,0($sp)
    # Line 506
    ldc1	$f30,32($sp)
    # Line 504
    sdc1	$f6,24($sp)
    lw	$a1,28($sp)
    lw	$a3,24($sp)
    # Line 503
    sdc1	$f5,16($sp)
    lw	$a4,20($sp)
    lw	$a5,16($sp)
    # Line 502
    sdc1	$f4,8($sp)
    lw	$a6,12($sp)
    lw	$a7,8($sp)
    # Line 501
    lw	$t0,4($sp)
    # Line 499
    lw	$a0,4144($zero)
    # Line 501
    lw	$t1,0($sp)
    # Line 500
    li	$t2,176
    sw	$t2,0($a0)
    # Line 501
    sw	$t1,4($a0)
    sw	$t0,8($a0)
    # Line 502
    sw	$a7,12($a0)
    sw	$a6,16($a0)
    # Line 503
    sw	$a5,20($a0)
    sw	$a4,24($a0)
    # Line 504
    sw	$a3,28($a0)
    sw	$a1,32($a0)
    # Line 505
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-9
    sw	$v1,4136($zero)
    # Line 506
    addiu	$sp,$sp,80
    # Line 505
    addiu	$v0,$v0,9
    # Line 506
    jr	$ra
    # Line 505
    sw	$v0,4148($zero)
.L0da69f2c:
    sdc1	$f15,48($sp)
    # Line 499
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,56($sp)
    sdc1	$f13,64($sp)
    sd	$ra,72($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,72($sp)
    ldc1	$f4,64($sp)
    ldc1	$f5,56($sp)
    ldc1	$f6,48($sp)
    b	.L0da69ea4
    move	$a2,$v0
.end __glkonlc_RasterPos4d

# Function: __glkonlc_RasterPos4dv
# Declared: Line 507 (Source lines: 507-515)
# Address: 0x0da69f60 - 0x0da6a03c (Size: 220 bytes, Frame: 192)
.globl __glkonlc_RasterPos4dv
.ent __glkonlc_RasterPos4dv
__glkonlc_RasterPos4dv:
    # Line 508
    lw	$a3,4136($zero)
    # Line 507
    addiu	$sp,$sp,-64
    lui	$at,0x2
    # Line 508
    slti	$v0,$a3,9
    # Line 507
    sd	$s8,32($sp)
    move	$s8,$a0
    addiu	$at,$at,28792
    sd	$gp,40($sp)
    # Line 508
    bnez	$v0,.L0da6a020
    # Line 507
    addu	$gp,$t9,$at
.L0da69f88:
    # Line 508
    lw	$a0,4144($zero)
    # Line 509
    li	$t2,176
    sw	$t2,0($a0)
    # Line 510
    ldc1	$f3,0($s8)
    sdc1	$f3,0($sp)
    lw	$t1,0($sp)
    lw	$t0,4($sp)
    sw	$t0,8($a0)
    sw	$t1,4($a0)
    # Line 511
    ldc1	$f2,8($s8)
    sdc1	$f2,8($sp)
    lw	$a7,8($sp)
    lw	$a6,12($sp)
    sw	$a6,16($a0)
    sw	$a7,12($a0)
    # Line 512
    ldc1	$f1,16($s8)
    # Line 515
    ld	$gp,40($sp)
    # Line 512
    sdc1	$f1,16($sp)
    lw	$a5,16($sp)
    lw	$a4,20($sp)
    sw	$a4,24($a0)
    sw	$a5,20($a0)
    # Line 513
    ldc1	$f0,24($s8)
    # Line 515
    ld	$s8,32($sp)
    # Line 513
    sdc1	$f0,24($sp)
    lw	$a1,28($sp)
    lw	$a2,24($sp)
    sw	$a2,28($a0)
    sw	$a1,32($a0)
    # Line 514
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-9
    sw	$v1,4136($zero)
    # Line 515
    addiu	$sp,$sp,64
    # Line 514
    addiu	$v0,$v0,9
    # Line 515
    jr	$ra
    # Line 514
    sw	$v0,4148($zero)
.L0da6a020:
    # Line 508
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,48($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    b	.L0da69f88
    move	$a3,$v0
.end __glkonlc_RasterPos4dv

# Function: __glkonlc_RasterPos4f
# Declared: Line 516 (Source lines: 516-524)
# Address: 0x0da6a040 - 0x0da6a0f0 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_RasterPos4f
.ent __glkonlc_RasterPos4f
__glkonlc_RasterPos4f:
    # Line 517
    lw	$a2,4136($zero)
    # Line 516
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 517
    slti	$v0,$a2,5
    # Line 516
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,28568
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 517
    bnez	$v0,.L0da6a0bc
    # Line 516
    addu	$gp,$t9,$at
.L0da6a074:
    # Line 517
    lw	$a0,4144($zero)
    # Line 524
    ld	$gp,8($sp)
    # Line 518
    li	$a1,177
    sw	$a1,0($a0)
    # Line 519
    swc1	$f30,4($a0)
    # Line 520
    swc1	$f4,8($a0)
    # Line 521
    swc1	$f5,12($a0)
    # Line 522
    swc1	$f6,16($a0)
    # Line 523
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 524
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 523
    addiu	$v0,$v0,5
    # Line 524
    jr	$ra
    # Line 523
    sw	$v0,4148($zero)
.L0da6a0bc:
    sdc1	$f15,16($sp)
    # Line 517
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
    b	.L0da6a074
    move	$a2,$v0
.end __glkonlc_RasterPos4f

# Function: __glkonlc_RasterPos4fv
# Declared: Line 525 (Source lines: 525-533)
# Address: 0x0da6a0f0 - 0x0da6a18c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_RasterPos4fv
.ent __glkonlc_RasterPos4fv
__glkonlc_RasterPos4fv:
    # Line 526
    lw	$a3,4136($zero)
    # Line 525
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 526
    slti	$v0,$a3,5
    # Line 525
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,28392
    sd	$gp,8($sp)
    # Line 526
    bnez	$v0,.L0da6a170
    # Line 525
    addu	$gp,$t9,$at
.L0da6a118:
    # Line 526
    lw	$a0,4144($zero)
    # Line 527
    li	$a1,177
    sw	$a1,0($a0)
    # Line 528
    lwc1	$f3,0($s8)
    swc1	$f3,4($a0)
    # Line 529
    lwc1	$f2,4($s8)
    swc1	$f2,8($a0)
    # Line 530
    lwc1	$f1,8($s8)
    # Line 533
    ld	$gp,8($sp)
    # Line 530
    swc1	$f1,12($a0)
    # Line 531
    lwc1	$f0,12($s8)
    # Line 533
    ld	$s8,0($sp)
    # Line 531
    swc1	$f0,16($a0)
    # Line 532
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 533
    addiu	$sp,$sp,32
    # Line 532
    addiu	$v0,$v0,5
    # Line 533
    jr	$ra
    # Line 532
    sw	$v0,4148($zero)
.L0da6a170:
    # Line 526
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6a118
    move	$a3,$v0
.end __glkonlc_RasterPos4fv

# Function: __glkonlc_RasterPos4i
# Declared: Line 534 (Source lines: 534-542)
# Address: 0x0da6a190 - 0x0da6a234 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_RasterPos4i
.ent __glkonlc_RasterPos4i
__glkonlc_RasterPos4i:
    # Line 535
    lw	$a6,4136($zero)
    # Line 534
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 535
    slti	$v0,$a6,5
    # Line 534
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,28232
    sd	$gp,8($sp)
    # Line 535
    bnez	$v0,.L0da6a200
    # Line 534
    addu	$gp,$t9,$at
.L0da6a1b8:
    # Line 535
    lw	$a0,4144($zero)
    # Line 542
    ld	$gp,8($sp)
    # Line 536
    li	$a4,178
    sw	$a4,0($a0)
    # Line 537
    sw	$s8,4($a0)
    # Line 538
    sw	$a1,8($a0)
    # Line 539
    sw	$a2,12($a0)
    # Line 540
    sw	$a3,16($a0)
    # Line 541
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 542
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 541
    addiu	$v0,$v0,5
    # Line 542
    jr	$ra
    # Line 541
    sw	$v0,4148($zero)
.L0da6a200:
    sd	$a3,16($sp)
    # Line 535
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
    b	.L0da6a1b8
    move	$a6,$v0
.end __glkonlc_RasterPos4i

# Function: __glkonlc_RasterPos4iv
# Declared: Line 543 (Source lines: 543-551)
# Address: 0x0da6a240 - 0x0da6a2dc (Size: 156 bytes, Frame: 32)
.globl __glkonlc_RasterPos4iv
.ent __glkonlc_RasterPos4iv
__glkonlc_RasterPos4iv:
    # Line 544
    lw	$a3,4136($zero)
    # Line 543
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 544
    slti	$v0,$a3,5
    # Line 543
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,28056
    sd	$gp,8($sp)
    # Line 544
    bnez	$v0,.L0da6a2c0
    # Line 543
    addu	$gp,$t9,$at
.L0da6a268:
    # Line 544
    lw	$a0,4144($zero)
    # Line 551
    ld	$gp,8($sp)
    # Line 545
    li	$a6,178
    sw	$a6,0($a0)
    # Line 546
    lw	$a5,0($s8)
    sw	$a5,4($a0)
    # Line 547
    lw	$a4,4($s8)
    sw	$a4,8($a0)
    # Line 548
    lw	$a2,8($s8)
    sw	$a2,12($a0)
    # Line 549
    lw	$a1,12($s8)
    # Line 551
    ld	$s8,0($sp)
    # Line 549
    sw	$a1,16($a0)
    # Line 550
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 551
    addiu	$sp,$sp,32
    # Line 550
    addiu	$v0,$v0,5
    # Line 551
    jr	$ra
    # Line 550
    sw	$v0,4148($zero)
.L0da6a2c0:
    # Line 544
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6a268
    move	$a3,$v0
.end __glkonlc_RasterPos4iv

# Function: __glkonlc_RasterPos4s
# Declared: Line 552 (Source lines: 552-560)
# Address: 0x0da6a2e0 - 0x0da6a384 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_RasterPos4s
.ent __glkonlc_RasterPos4s
__glkonlc_RasterPos4s:
    # Line 553
    lw	$a6,4136($zero)
    # Line 552
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 553
    slti	$v0,$a6,5
    # Line 552
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,27896
    sd	$gp,8($sp)
    # Line 553
    bnez	$v0,.L0da6a350
    # Line 552
    addu	$gp,$t9,$at
.L0da6a308:
    # Line 553
    lw	$a0,4144($zero)
    # Line 560
    ld	$gp,8($sp)
    # Line 554
    li	$a4,179
    sw	$a4,0($a0)
    # Line 555
    sw	$s8,4($a0)
    # Line 556
    sw	$a1,8($a0)
    # Line 557
    sw	$a2,12($a0)
    # Line 558
    sw	$a3,16($a0)
    # Line 559
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 560
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 559
    addiu	$v0,$v0,5
    # Line 560
    jr	$ra
    # Line 559
    sw	$v0,4148($zero)
.L0da6a350:
    sd	$a3,16($sp)
    # Line 553
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
    b	.L0da6a308
    move	$a6,$v0
.end __glkonlc_RasterPos4s

# Function: __glkonlc_RasterPos4sv
# Declared: Line 561 (Source lines: 561-569)
# Address: 0x0da6a390 - 0x0da6a42c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_RasterPos4sv
.ent __glkonlc_RasterPos4sv
__glkonlc_RasterPos4sv:
    # Line 562
    lw	$a3,4136($zero)
    # Line 561
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 562
    slti	$v0,$a3,5
    # Line 561
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,27720
    sd	$gp,8($sp)
    # Line 562
    bnez	$v0,.L0da6a410
    # Line 561
    addu	$gp,$t9,$at
.L0da6a3b8:
    # Line 562
    lw	$a0,4144($zero)
    # Line 569
    ld	$gp,8($sp)
    # Line 563
    li	$a6,179
    sw	$a6,0($a0)
    # Line 564
    lh	$a5,0($s8)
    sw	$a5,4($a0)
    # Line 565
    lh	$a4,2($s8)
    sw	$a4,8($a0)
    # Line 566
    lh	$a2,4($s8)
    sw	$a2,12($a0)
    # Line 567
    lh	$a1,6($s8)
    # Line 569
    ld	$s8,0($sp)
    # Line 567
    sw	$a1,16($a0)
    # Line 568
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 569
    addiu	$sp,$sp,32
    # Line 568
    addiu	$v0,$v0,5
    # Line 569
    jr	$ra
    # Line 568
    sw	$v0,4148($zero)
.L0da6a410:
    # Line 562
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6a3b8
    move	$a3,$v0
.end __glkonlc_RasterPos4sv

# Function: __glkonlc_TexCoord1d
# Declared: Line 570 (Source lines: 570-575)
# Address: 0x0da6a430 - 0x0da6a4c0 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_TexCoord1d
.ent __glkonlc_TexCoord1d
__glkonlc_TexCoord1d:
    # Line 571
    lw	$a2,4136($zero)
    # Line 570
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 571
    slti	$v0,$a2,3
    # Line 570
    sdc1	$f30,8($sp)
    addiu	$at,$at,27560
    mov.d	$f30,$f12
    sd	$gp,16($sp)
    # Line 571
    bnez	$v0,.L0da6a4a4
    # Line 570
    addu	$gp,$t9,$at
.L0da6a458:
    # Line 575
    ld	$gp,16($sp)
    # Line 573
    sdc1	$f30,0($sp)
    # Line 575
    ldc1	$f30,8($sp)
    # Line 573
    lw	$a1,4($sp)
    # Line 571
    lw	$a0,4144($zero)
    # Line 573
    lw	$a3,0($sp)
    # Line 572
    li	$a4,123
    sw	$a4,0($a0)
    # Line 573
    sw	$a3,4($a0)
    sw	$a1,8($a0)
    # Line 574
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    # Line 575
    addiu	$sp,$sp,32
    # Line 574
    addiu	$v0,$v0,3
    # Line 575
    jr	$ra
    # Line 574
    sw	$v0,4148($zero)
.L0da6a4a4:
    # Line 571
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0da6a458
    move	$a2,$v0
.end __glkonlc_TexCoord1d

# Function: __glkonlc_TexCoord1dv
# Declared: Line 576 (Source lines: 576-581)
# Address: 0x0da6a4c0 - 0x0da6a554 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_TexCoord1dv
.ent __glkonlc_TexCoord1dv
__glkonlc_TexCoord1dv:
    # Line 577
    lw	$a3,4136($zero)
    # Line 576
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 577
    slti	$v0,$a3,3
    # Line 576
    sd	$s8,8($sp)
    move	$s8,$a0
    addiu	$at,$at,27416
    sd	$gp,16($sp)
    # Line 577
    bnez	$v0,.L0da6a538
    # Line 576
    addu	$gp,$t9,$at
.L0da6a4e8:
    # Line 577
    lw	$a0,4144($zero)
    # Line 581
    ld	$gp,16($sp)
    # Line 578
    li	$a4,123
    sw	$a4,0($a0)
    # Line 579
    ldc1	$f0,0($s8)
    # Line 581
    ld	$s8,8($sp)
    # Line 579
    sdc1	$f0,0($sp)
    lw	$a1,4($sp)
    lw	$a2,0($sp)
    sw	$a2,4($a0)
    sw	$a1,8($a0)
    # Line 580
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 581
    addiu	$sp,$sp,32
    # Line 580
    addiu	$v0,$v0,3
    # Line 581
    jr	$ra
    # Line 580
    sw	$v0,4148($zero)
.L0da6a538:
    # Line 577
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0da6a4e8
    move	$a3,$v0
.end __glkonlc_TexCoord1dv

# Function: __glkonlc_TexCoord1f
# Declared: Line 582 (Source lines: 582-587)
# Address: 0x0da6a560 - 0x0da6a614 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_TexCoord1f
.ent __glkonlc_TexCoord1f
__glkonlc_TexCoord1f:
    # Line 583
    lw	$a1,4136($zero)
    # Line 584
    li	$a2,124
    # Line 582
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 583
    slti	$v0,$a1,2
    # Line 582
    sdc1	$f30,0($sp)
    addiu	$at,$at,27256
    # Line 586
    addiu	$v1,$a1,-2
    # Line 582
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 583
    bnez	$v0,.L0da6a5c4
    # Line 582
    addu	$gp,$t9,$at
    # Line 587
    ld	$gp,8($sp)
    # Line 583
    lw	$a0,4144($zero)
    # Line 587
    ldc1	$f30,0($sp)
    # Line 584
    sw	$a2,0($a0)
    # Line 585
    swc1	$f12,4($a0)
    # Line 586
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 587
    addiu	$sp,$sp,32
    # Line 586
    addiu	$v0,$v0,2
    # Line 587
    jr	$ra
    # Line 586
    sw	$v0,4148($zero)
.L0da6a5c4:
    # Line 583
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 587
    ld	$gp,8($sp)
    # Line 584
    li	$a6,124
    sw	$a6,0($a5)
    # Line 585
    swc1	$f30,4($a5)
    # Line 586
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    ld	$ra,16($sp)
    lw	$a3,4148($zero)
    # Line 587
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 586
    addiu	$a3,$a3,2
    # Line 587
    jr	$ra
    # Line 586
    sw	$a3,4148($zero)
.end __glkonlc_TexCoord1f

# Function: __glkonlc_TexCoord1fv
# Declared: Line 588 (Source lines: 588-593)
# Address: 0x0da6a620 - 0x0da6a6dc (Size: 188 bytes, Frame: 32)
.globl __glkonlc_TexCoord1fv
.ent __glkonlc_TexCoord1fv
__glkonlc_TexCoord1fv:
    # Line 588
    addiu	$sp,$sp,-32
    # Line 589
    lw	$a2,4136($zero)
    # Line 590
    li	$a1,124
    # Line 588
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 589
    slti	$v0,$a2,2
    # Line 588
    addiu	$at,$at,27064
    # Line 592
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 589
    bnez	$v0,.L0da6a688
    # Line 588
    addu	$gp,$t9,$at
    # Line 589
    lw	$a0,4144($zero)
    # Line 593
    ld	$gp,8($sp)
    # Line 590
    sw	$a1,0($a0)
    # Line 591
    lwc1	$f0,0($s8)
    # Line 593
    ld	$s8,0($sp)
    # Line 591
    swc1	$f0,4($a0)
    # Line 592
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 593
    addiu	$sp,$sp,32
    # Line 592
    addiu	$v0,$v0,2
    # Line 593
    jr	$ra
    # Line 592
    sw	$v0,4148($zero)
.L0da6a688:
    # Line 589
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 593
    ld	$gp,8($sp)
    # Line 590
    li	$a5,124
    sw	$a5,0($a4)
    # Line 591
    lwc1	$f1,0($s8)
    # Line 593
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    # Line 591
    swc1	$f1,4($a4)
    # Line 592
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    # Line 593
    addiu	$sp,$sp,32
    # Line 592
    addiu	$a2,$a2,2
    # Line 593
    jr	$ra
    # Line 592
    sw	$a2,4148($zero)
.end __glkonlc_TexCoord1fv

# Function: __glkonlc_TexCoord1i
# Declared: Line 594 (Source lines: 594-599)
# Address: 0x0da6a6e0 - 0x0da6a794 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_TexCoord1i
.ent __glkonlc_TexCoord1i
__glkonlc_TexCoord1i:
    # Line 594
    addiu	$sp,$sp,-32
    # Line 595
    lw	$a2,4136($zero)
    # Line 596
    li	$a1,125
    # Line 594
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 595
    slti	$v0,$a2,2
    # Line 594
    addiu	$at,$at,26872
    # Line 598
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 595
    bnez	$v0,.L0da6a744
    # Line 594
    addu	$gp,$t9,$at
    # Line 595
    lw	$a0,4144($zero)
    # Line 599
    ld	$gp,8($sp)
    # Line 596
    sw	$a1,0($a0)
    # Line 597
    sw	$s8,4($a0)
    # Line 598
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 599
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 598
    addiu	$v0,$v0,2
    # Line 599
    jr	$ra
    # Line 598
    sw	$v0,4148($zero)
.L0da6a744:
    # Line 595
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 599
    ld	$gp,8($sp)
    # Line 596
    li	$a5,125
    sw	$a5,0($a4)
    # Line 597
    sw	$s8,4($a4)
    # Line 598
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 599
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 598
    addiu	$a2,$a2,2
    # Line 599
    jr	$ra
    # Line 598
    sw	$a2,4148($zero)
.end __glkonlc_TexCoord1i

# Function: __glkonlc_TexCoord1iv
# Declared: Line 600 (Source lines: 600-605)
# Address: 0x0da6a7a0 - 0x0da6a85c (Size: 188 bytes, Frame: 32)
.globl __glkonlc_TexCoord1iv
.ent __glkonlc_TexCoord1iv
__glkonlc_TexCoord1iv:
    # Line 600
    addiu	$sp,$sp,-32
    # Line 601
    lw	$a2,4136($zero)
    # Line 602
    li	$a3,125
    # Line 600
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 601
    slti	$v0,$a2,2
    # Line 600
    addiu	$at,$at,26680
    # Line 604
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 601
    bnez	$v0,.L0da6a808
    # Line 600
    addu	$gp,$t9,$at
    # Line 601
    lw	$a0,4144($zero)
    # Line 605
    ld	$gp,8($sp)
    # Line 602
    sw	$a3,0($a0)
    # Line 603
    lw	$a1,0($s8)
    # Line 605
    ld	$s8,0($sp)
    # Line 603
    sw	$a1,4($a0)
    # Line 604
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 605
    addiu	$sp,$sp,32
    # Line 604
    addiu	$v0,$v0,2
    # Line 605
    jr	$ra
    # Line 604
    sw	$v0,4148($zero)
.L0da6a808:
    # Line 601
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a6,4144($zero)
    # Line 605
    ld	$gp,8($sp)
    # Line 602
    li	$t0,125
    sw	$t0,0($a6)
    # Line 603
    lw	$a7,0($s8)
    # Line 605
    ld	$s8,0($sp)
    ld	$ra,16($sp)
    # Line 603
    sw	$a7,4($a6)
    # Line 604
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 605
    addiu	$sp,$sp,32
    # Line 604
    addiu	$a4,$a4,2
    # Line 605
    jr	$ra
    # Line 604
    sw	$a4,4148($zero)
.end __glkonlc_TexCoord1iv

# Function: __glkonlc_TexCoord1s
# Declared: Line 606 (Source lines: 606-611)
# Address: 0x0da6a860 - 0x0da6a91c (Size: 188 bytes, Frame: 32)
.globl __glkonlc_TexCoord1s
.ent __glkonlc_TexCoord1s
__glkonlc_TexCoord1s:
    # Line 608
    li	$a3,126
    # Line 607
    lw	$a2,4136($zero)
    # Line 606
    lui	$at,0x2
    addiu	$sp,$sp,-32
    sd	$s8,0($sp)
    move	$s8,$a0
    # Line 607
    slti	$v0,$a2,2
    # Line 606
    addiu	$at,$at,26488
    # Line 609
    sll	$a1,$s8,0x10
    sd	$gp,8($sp)
    # Line 607
    bnez	$v0,.L0da6a8c8
    # Line 606
    addu	$gp,$t9,$at
    # Line 611
    ld	$gp,8($sp)
    # Line 607
    lw	$a0,4144($zero)
    # Line 611
    ld	$s8,0($sp)
    # Line 608
    sw	$a3,0($a0)
    # Line 609
    sw	$a1,4($a0)
    # Line 610
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-2
    sw	$v1,4136($zero)
    # Line 611
    addiu	$sp,$sp,32
    # Line 610
    addiu	$v0,$v0,2
    # Line 611
    jr	$ra
    # Line 610
    sw	$v0,4148($zero)
.L0da6a8c8:
    # Line 607
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    # Line 611
    ld	$gp,8($sp)
    # Line 607
    lw	$a6,4144($zero)
    # Line 609
    sll	$a7,$s8,0x10
    # Line 611
    ld	$s8,0($sp)
    # Line 608
    li	$t0,126
    sw	$t0,0($a6)
    # Line 609
    sw	$a7,4($a6)
    # Line 610
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    ld	$ra,16($sp)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 611
    addiu	$sp,$sp,32
    # Line 610
    addiu	$a4,$a4,2
    # Line 611
    jr	$ra
    # Line 610
    sw	$a4,4148($zero)
.end __glkonlc_TexCoord1s

# Function: __glkonlc_TexCoord1sv
# Declared: Line 612 (Source lines: 612-617)
# Address: 0x0da6a920 - 0x0da6a9a8 (Size: 136 bytes, Frame: 32)
.globl __glkonlc_TexCoord1sv
.ent __glkonlc_TexCoord1sv
__glkonlc_TexCoord1sv:
    # Line 613
    lw	$a3,4136($zero)
    # Line 612
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 613
    slti	$v0,$a3,2
    # Line 612
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,26296
    sd	$gp,8($sp)
    # Line 613
    bnez	$v0,.L0da6a98c
    # Line 612
    addu	$gp,$t9,$at
.L0da6a948:
    # Line 613
    lw	$a0,4144($zero)
    # Line 617
    ld	$gp,8($sp)
    # Line 614
    li	$a2,126
    sw	$a2,0($a0)
    # Line 615
    lh	$a1,0($s8)
    # Line 617
    ld	$s8,0($sp)
    # Line 615
    sll	$a1,$a1,0x10
    sw	$a1,4($a0)
    # Line 616
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 617
    addiu	$sp,$sp,32
    # Line 616
    addiu	$v0,$v0,2
    # Line 617
    jr	$ra
    # Line 616
    sw	$v0,4148($zero)
.L0da6a98c:
    # Line 613
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6a948
    move	$a3,$v0
.end __glkonlc_TexCoord1sv

# Function: __glkonlc_TexCoord2d
# Declared: Line 618 (Source lines: 618-624)
# Address: 0x0da6a9b0 - 0x0da6aa60 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_TexCoord2d
.ent __glkonlc_TexCoord2d
__glkonlc_TexCoord2d:
    # Line 619
    lw	$a2,4136($zero)
    # Line 618
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 619
    slti	$v0,$a2,5
    # Line 618
    mov.d	$f4,$f13
    sdc1	$f30,16($sp)
    addiu	$at,$at,26152
    mov.d	$f30,$f12
    sd	$gp,24($sp)
    # Line 619
    bnez	$v0,.L0da6aa3c
    # Line 618
    addu	$gp,$t9,$at
.L0da6a9dc:
    # Line 624
    ld	$gp,24($sp)
    # Line 621
    sdc1	$f30,0($sp)
    # Line 624
    ldc1	$f30,16($sp)
    # Line 622
    sdc1	$f4,8($sp)
    lw	$a1,12($sp)
    lw	$a3,8($sp)
    # Line 621
    lw	$a4,4($sp)
    # Line 619
    lw	$a0,4144($zero)
    # Line 621
    lw	$a5,0($sp)
    # Line 620
    li	$a6,127
    sw	$a6,0($a0)
    # Line 621
    sw	$a5,4($a0)
    sw	$a4,8($a0)
    # Line 622
    sw	$a3,12($a0)
    sw	$a1,16($a0)
    # Line 623
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    # Line 624
    addiu	$sp,$sp,48
    # Line 623
    addiu	$v0,$v0,5
    # Line 624
    jr	$ra
    # Line 623
    sw	$v0,4148($zero)
.L0da6aa3c:
    # Line 619
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    b	.L0da6a9dc
    move	$a2,$v0
.end __glkonlc_TexCoord2d

# Function: __glkonlc_TexCoord2dv
# Declared: Line 625 (Source lines: 625-631)
# Address: 0x0da6aa60 - 0x0da6ab0c (Size: 172 bytes, Frame: 48)
.globl __glkonlc_TexCoord2dv
.ent __glkonlc_TexCoord2dv
__glkonlc_TexCoord2dv:
    # Line 626
    lw	$a3,4136($zero)
    # Line 625
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 626
    slti	$v0,$a3,5
    # Line 625
    sd	$s8,16($sp)
    move	$s8,$a0
    addiu	$at,$at,25976
    sd	$gp,24($sp)
    # Line 626
    bnez	$v0,.L0da6aaf0
    # Line 625
    addu	$gp,$t9,$at
.L0da6aa88:
    # Line 626
    lw	$a0,4144($zero)
    # Line 627
    li	$a6,127
    sw	$a6,0($a0)
    # Line 628
    ldc1	$f1,0($s8)
    # Line 631
    ld	$gp,24($sp)
    # Line 628
    sdc1	$f1,0($sp)
    lw	$a5,0($sp)
    lw	$a4,4($sp)
    sw	$a4,8($a0)
    sw	$a5,4($a0)
    # Line 629
    ldc1	$f0,8($s8)
    # Line 631
    ld	$s8,16($sp)
    # Line 629
    sdc1	$f0,8($sp)
    lw	$a1,12($sp)
    lw	$a2,8($sp)
    sw	$a2,12($a0)
    sw	$a1,16($a0)
    # Line 630
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 631
    addiu	$sp,$sp,48
    # Line 630
    addiu	$v0,$v0,5
    # Line 631
    jr	$ra
    # Line 630
    sw	$v0,4148($zero)
.L0da6aaf0:
    # Line 626
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    b	.L0da6aa88
    move	$a3,$v0
.end __glkonlc_TexCoord2dv

# Function: __glkonlc_TexCoord2f
# Declared: Line 632 (Source lines: 632-638)
# Address: 0x0da6ab10 - 0x0da6aba0 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_TexCoord2f
.ent __glkonlc_TexCoord2f
__glkonlc_TexCoord2f:
    # Line 633
    lw	$a2,4136($zero)
    # Line 632
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 633
    slti	$v0,$a2,3
    # Line 632
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,25800
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 633
    bnez	$v0,.L0da6ab7c
    # Line 632
    addu	$gp,$t9,$at
.L0da6ab3c:
    # Line 633
    lw	$a0,4144($zero)
    # Line 638
    ld	$gp,8($sp)
    # Line 634
    li	$a1,128
    sw	$a1,0($a0)
    # Line 635
    swc1	$f30,4($a0)
    # Line 636
    swc1	$f4,8($a0)
    # Line 637
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 638
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 637
    addiu	$v0,$v0,3
    # Line 638
    jr	$ra
    # Line 637
    sw	$v0,4148($zero)
.L0da6ab7c:
    # Line 633
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ldc1	$f4,16($sp)
    b	.L0da6ab3c
    move	$a2,$v0
.end __glkonlc_TexCoord2f

# Function: __glkonlc_TexCoord2fv
# Declared: Line 639 (Source lines: 639-645)
# Address: 0x0da6aba0 - 0x0da6ac2c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_TexCoord2fv
.ent __glkonlc_TexCoord2fv
__glkonlc_TexCoord2fv:
    # Line 640
    lw	$a3,4136($zero)
    # Line 639
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 640
    slti	$v0,$a3,3
    # Line 639
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,25656
    sd	$gp,8($sp)
    # Line 640
    bnez	$v0,.L0da6ac10
    # Line 639
    addu	$gp,$t9,$at
.L0da6abc8:
    # Line 640
    lw	$a0,4144($zero)
    # Line 641
    li	$a1,128
    sw	$a1,0($a0)
    # Line 642
    lwc1	$f1,0($s8)
    # Line 645
    ld	$gp,8($sp)
    # Line 642
    swc1	$f1,4($a0)
    # Line 643
    lwc1	$f0,4($s8)
    # Line 645
    ld	$s8,0($sp)
    # Line 643
    swc1	$f0,8($a0)
    # Line 644
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 645
    addiu	$sp,$sp,32
    # Line 644
    addiu	$v0,$v0,3
    # Line 645
    jr	$ra
    # Line 644
    sw	$v0,4148($zero)
.L0da6ac10:
    # Line 640
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6abc8
    move	$a3,$v0
.end __glkonlc_TexCoord2fv

# Function: __glkonlc_TexCoord2i
# Declared: Line 646 (Source lines: 646-652)
# Address: 0x0da6ac30 - 0x0da6acbc (Size: 140 bytes, Frame: 32)
.globl __glkonlc_TexCoord2i
.ent __glkonlc_TexCoord2i
__glkonlc_TexCoord2i:
    # Line 647
    lw	$a4,4136($zero)
    # Line 646
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 647
    slti	$v0,$a4,3
    # Line 646
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,25512
    sd	$gp,8($sp)
    # Line 647
    bnez	$v0,.L0da6ac98
    # Line 646
    addu	$gp,$t9,$at
.L0da6ac58:
    # Line 647
    lw	$a0,4144($zero)
    # Line 652
    ld	$gp,8($sp)
    # Line 648
    li	$a2,129
    sw	$a2,0($a0)
    # Line 649
    sw	$s8,4($a0)
    # Line 650
    sw	$a1,8($a0)
    # Line 651
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 652
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 651
    addiu	$v0,$v0,3
    # Line 652
    jr	$ra
    # Line 651
    sw	$v0,4148($zero)
.L0da6ac98:
    # Line 647
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6ac58
    move	$a4,$v0
.end __glkonlc_TexCoord2i

# Function: __glkonlc_TexCoord2iv
# Declared: Line 653 (Source lines: 653-659)
# Address: 0x0da6acc0 - 0x0da6ad4c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_TexCoord2iv
.ent __glkonlc_TexCoord2iv
__glkonlc_TexCoord2iv:
    # Line 654
    lw	$a3,4136($zero)
    # Line 653
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 654
    slti	$v0,$a3,3
    # Line 653
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,25368
    sd	$gp,8($sp)
    # Line 654
    bnez	$v0,.L0da6ad30
    # Line 653
    addu	$gp,$t9,$at
.L0da6ace8:
    # Line 654
    lw	$a0,4144($zero)
    # Line 659
    ld	$gp,8($sp)
    # Line 655
    li	$a4,129
    sw	$a4,0($a0)
    # Line 656
    lw	$a2,0($s8)
    sw	$a2,4($a0)
    # Line 657
    lw	$a1,4($s8)
    # Line 659
    ld	$s8,0($sp)
    # Line 657
    sw	$a1,8($a0)
    # Line 658
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 659
    addiu	$sp,$sp,32
    # Line 658
    addiu	$v0,$v0,3
    # Line 659
    jr	$ra
    # Line 658
    sw	$v0,4148($zero)
.L0da6ad30:
    # Line 654
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6ace8
    move	$a3,$v0
.end __glkonlc_TexCoord2iv

# Function: __glkonlc_TexCoord2s
# Declared: Line 660 (Source lines: 660-665)
# Address: 0x0da6ad50 - 0x0da6ade0 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_TexCoord2s
.ent __glkonlc_TexCoord2s
__glkonlc_TexCoord2s:
    # Line 661
    lw	$a4,4136($zero)
    # Line 660
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 661
    slti	$v0,$a4,2
    # Line 660
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,25224
    sd	$gp,8($sp)
    # Line 661
    bnez	$v0,.L0da6adbc
    # Line 660
    addu	$gp,$t9,$at
.L0da6ad78:
    # Line 665
    ld	$gp,8($sp)
    # Line 661
    lw	$a0,4144($zero)
    # Line 662
    sll	$a2,$s8,0x10
    # Line 665
    ld	$s8,0($sp)
    # Line 662
    ori	$a2,$a2,0x82
    sw	$a2,0($a0)
    # Line 663
    sll	$a1,$a1,0x10
    sw	$a1,4($a0)
    # Line 664
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-2
    sw	$v1,4136($zero)
    # Line 665
    addiu	$sp,$sp,32
    # Line 664
    addiu	$v0,$v0,2
    # Line 665
    jr	$ra
    # Line 664
    sw	$v0,4148($zero)
.L0da6adbc:
    # Line 661
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6ad78
    move	$a4,$v0
.end __glkonlc_TexCoord2s

# Function: __glkonlc_TexCoord2sv
# Declared: Line 666 (Source lines: 666-671)
# Address: 0x0da6ade0 - 0x0da6ae70 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_TexCoord2sv
.ent __glkonlc_TexCoord2sv
__glkonlc_TexCoord2sv:
    # Line 667
    lw	$a3,4136($zero)
    # Line 666
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 667
    slti	$v0,$a3,2
    # Line 666
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,25080
    sd	$gp,8($sp)
    # Line 667
    bnez	$v0,.L0da6ae54
    # Line 666
    addu	$gp,$t9,$at
.L0da6ae08:
    # Line 668
    lh	$a2,0($s8)
    # Line 667
    lw	$a0,4144($zero)
    # Line 671
    ld	$gp,8($sp)
    # Line 668
    sll	$a2,$a2,0x10
    ori	$a2,$a2,0x82
    sw	$a2,0($a0)
    # Line 669
    lh	$a1,2($s8)
    # Line 671
    ld	$s8,0($sp)
    # Line 669
    sll	$a1,$a1,0x10
    sw	$a1,4($a0)
    # Line 670
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 671
    addiu	$sp,$sp,32
    # Line 670
    addiu	$v0,$v0,2
    # Line 671
    jr	$ra
    # Line 670
    sw	$v0,4148($zero)
.L0da6ae54:
    # Line 667
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6ae08
    move	$a3,$v0
.end __glkonlc_TexCoord2sv

# Function: __glkonlc_TexCoord3d
# Declared: Line 672 (Source lines: 672-679)
# Address: 0x0da6ae70 - 0x0da6af40 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_TexCoord3d
.ent __glkonlc_TexCoord3d
__glkonlc_TexCoord3d:
    # Line 673
    lw	$a2,4136($zero)
    # Line 672
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 673
    slti	$v0,$a2,7
    # Line 672
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,24936
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 673
    bnez	$v0,.L0da6af14
    # Line 672
    addu	$gp,$t9,$at
.L0da6aea0:
    # Line 679
    ld	$gp,32($sp)
    # Line 675
    sdc1	$f30,0($sp)
    # Line 679
    ldc1	$f30,24($sp)
    # Line 677
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 676
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 675
    lw	$a6,4($sp)
    # Line 673
    lw	$a0,4144($zero)
    # Line 675
    lw	$a7,0($sp)
    # Line 674
    li	$t0,131
    sw	$t0,0($a0)
    # Line 675
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 676
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 677
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 678
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 679
    addiu	$sp,$sp,64
    # Line 678
    addiu	$v0,$v0,7
    # Line 679
    jr	$ra
    # Line 678
    sw	$v0,4148($zero)
.L0da6af14:
    # Line 673
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da6aea0
    move	$a2,$v0
.end __glkonlc_TexCoord3d

# Function: __glkonlc_TexCoord3dv
# Declared: Line 680 (Source lines: 680-687)
# Address: 0x0da6af40 - 0x0da6b004 (Size: 196 bytes, Frame: 48)
.globl __glkonlc_TexCoord3dv
.ent __glkonlc_TexCoord3dv
__glkonlc_TexCoord3dv:
    # Line 681
    lw	$a3,4136($zero)
    # Line 680
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 681
    slti	$v0,$a3,7
    # Line 680
    sd	$s8,24($sp)
    move	$s8,$a0
    addiu	$at,$at,24728
    sd	$gp,32($sp)
    # Line 681
    bnez	$v0,.L0da6afe8
    # Line 680
    addu	$gp,$t9,$at
.L0da6af68:
    # Line 681
    lw	$a0,4144($zero)
    # Line 682
    li	$t0,131
    sw	$t0,0($a0)
    # Line 683
    ldc1	$f2,0($s8)
    sdc1	$f2,0($sp)
    lw	$a7,0($sp)
    lw	$a6,4($sp)
    sw	$a6,8($a0)
    sw	$a7,4($a0)
    # Line 684
    ldc1	$f1,8($s8)
    # Line 687
    ld	$gp,32($sp)
    # Line 684
    sdc1	$f1,8($sp)
    lw	$a5,8($sp)
    lw	$a4,12($sp)
    sw	$a4,16($a0)
    sw	$a5,12($a0)
    # Line 685
    ldc1	$f0,16($s8)
    # Line 687
    ld	$s8,24($sp)
    # Line 685
    sdc1	$f0,16($sp)
    lw	$a1,20($sp)
    lw	$a2,16($sp)
    sw	$a2,20($a0)
    sw	$a1,24($a0)
    # Line 686
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-7
    sw	$v1,4136($zero)
    # Line 687
    addiu	$sp,$sp,48
    # Line 686
    addiu	$v0,$v0,7
    # Line 687
    jr	$ra
    # Line 686
    sw	$v0,4148($zero)
.L0da6afe8:
    # Line 681
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    b	.L0da6af68
    move	$a3,$v0
.end __glkonlc_TexCoord3dv

# Function: __glkonlc_TexCoord3f
# Declared: Line 688 (Source lines: 688-695)
# Address: 0x0da6b010 - 0x0da6b0b0 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_TexCoord3f
.ent __glkonlc_TexCoord3f
__glkonlc_TexCoord3f:
    # Line 689
    lw	$a2,4136($zero)
    # Line 688
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 689
    slti	$v0,$a2,4
    # Line 688
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,24520
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 689
    bnez	$v0,.L0da6b084
    # Line 688
    addu	$gp,$t9,$at
.L0da6b040:
    # Line 689
    lw	$a0,4144($zero)
    # Line 695
    ld	$gp,8($sp)
    # Line 690
    li	$a1,132
    sw	$a1,0($a0)
    # Line 691
    swc1	$f30,4($a0)
    # Line 692
    swc1	$f4,8($a0)
    # Line 693
    swc1	$f5,12($a0)
    # Line 694
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 695
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 694
    addiu	$v0,$v0,4
    # Line 695
    jr	$ra
    # Line 694
    sw	$v0,4148($zero)
.L0da6b084:
    # Line 689
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da6b040
    move	$a2,$v0
.end __glkonlc_TexCoord3f

# Function: __glkonlc_TexCoord3fv
# Declared: Line 696 (Source lines: 696-703)
# Address: 0x0da6b0b0 - 0x0da6b144 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_TexCoord3fv
.ent __glkonlc_TexCoord3fv
__glkonlc_TexCoord3fv:
    # Line 697
    lw	$a3,4136($zero)
    # Line 696
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 697
    slti	$v0,$a3,4
    # Line 696
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,24360
    sd	$gp,8($sp)
    # Line 697
    bnez	$v0,.L0da6b128
    # Line 696
    addu	$gp,$t9,$at
.L0da6b0d8:
    # Line 697
    lw	$a0,4144($zero)
    # Line 698
    li	$a1,132
    sw	$a1,0($a0)
    # Line 699
    lwc1	$f2,0($s8)
    swc1	$f2,4($a0)
    # Line 700
    lwc1	$f1,4($s8)
    # Line 703
    ld	$gp,8($sp)
    # Line 700
    swc1	$f1,8($a0)
    # Line 701
    lwc1	$f0,8($s8)
    # Line 703
    ld	$s8,0($sp)
    # Line 701
    swc1	$f0,12($a0)
    # Line 702
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 703
    addiu	$sp,$sp,32
    # Line 702
    addiu	$v0,$v0,4
    # Line 703
    jr	$ra
    # Line 702
    sw	$v0,4148($zero)
.L0da6b128:
    # Line 697
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6b0d8
    move	$a3,$v0
.end __glkonlc_TexCoord3fv

# Function: __glkonlc_TexCoord3i
# Declared: Line 704 (Source lines: 704-711)
# Address: 0x0da6b150 - 0x0da6b1e8 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_TexCoord3i
.ent __glkonlc_TexCoord3i
__glkonlc_TexCoord3i:
    # Line 705
    lw	$a5,4136($zero)
    # Line 704
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 705
    slti	$v0,$a5,4
    # Line 704
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,24200
    sd	$gp,8($sp)
    # Line 705
    bnez	$v0,.L0da6b1bc
    # Line 704
    addu	$gp,$t9,$at
.L0da6b178:
    # Line 705
    lw	$a0,4144($zero)
    # Line 711
    ld	$gp,8($sp)
    # Line 706
    li	$a3,133
    sw	$a3,0($a0)
    # Line 707
    sw	$s8,4($a0)
    # Line 708
    sw	$a1,8($a0)
    # Line 709
    sw	$a2,12($a0)
    # Line 710
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 711
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 710
    addiu	$v0,$v0,4
    # Line 711
    jr	$ra
    # Line 710
    sw	$v0,4148($zero)
.L0da6b1bc:
    # Line 705
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6b178
    move	$a5,$v0
.end __glkonlc_TexCoord3i

# Function: __glkonlc_TexCoord3iv
# Declared: Line 712 (Source lines: 712-719)
# Address: 0x0da6b1f0 - 0x0da6b284 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_TexCoord3iv
.ent __glkonlc_TexCoord3iv
__glkonlc_TexCoord3iv:
    # Line 713
    lw	$a3,4136($zero)
    # Line 712
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 713
    slti	$v0,$a3,4
    # Line 712
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,24040
    sd	$gp,8($sp)
    # Line 713
    bnez	$v0,.L0da6b268
    # Line 712
    addu	$gp,$t9,$at
.L0da6b218:
    # Line 713
    lw	$a0,4144($zero)
    # Line 719
    ld	$gp,8($sp)
    # Line 714
    li	$a5,133
    sw	$a5,0($a0)
    # Line 715
    lw	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 716
    lw	$a2,4($s8)
    sw	$a2,8($a0)
    # Line 717
    lw	$a1,8($s8)
    # Line 719
    ld	$s8,0($sp)
    # Line 717
    sw	$a1,12($a0)
    # Line 718
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 719
    addiu	$sp,$sp,32
    # Line 718
    addiu	$v0,$v0,4
    # Line 719
    jr	$ra
    # Line 718
    sw	$v0,4148($zero)
.L0da6b268:
    # Line 713
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6b218
    move	$a3,$v0
.end __glkonlc_TexCoord3iv

# Function: __glkonlc_TexCoord3s
# Declared: Line 720 (Source lines: 720-725)
# Address: 0x0da6b290 - 0x0da6b330 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_TexCoord3s
.ent __glkonlc_TexCoord3s
__glkonlc_TexCoord3s:
    # Line 721
    lw	$a5,4136($zero)
    # Line 720
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 721
    slti	$v0,$a5,2
    # Line 720
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,23880
    sd	$gp,8($sp)
    # Line 721
    bnez	$v0,.L0da6b304
    # Line 720
    addu	$gp,$t9,$at
.L0da6b2b8:
    # Line 725
    ld	$gp,8($sp)
    # Line 721
    lw	$a0,4144($zero)
    # Line 722
    sll	$a3,$s8,0x10
    # Line 725
    ld	$s8,0($sp)
    # Line 723
    andi	$a2,$a2,0xffff
    sll	$a1,$a1,0x10
    # Line 722
    ori	$a3,$a3,0x86
    sw	$a3,0($a0)
    # Line 723
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 724
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 725
    addiu	$sp,$sp,48
    # Line 724
    addiu	$v0,$v0,2
    # Line 725
    jr	$ra
    # Line 724
    sw	$v0,4148($zero)
.L0da6b304:
    # Line 721
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6b2b8
    move	$a5,$v0
.end __glkonlc_TexCoord3s

# Function: __glkonlc_TexCoord3sv
# Declared: Line 726 (Source lines: 726-731)
# Address: 0x0da6b330 - 0x0da6b3c8 (Size: 152 bytes, Frame: 32)
.globl __glkonlc_TexCoord3sv
.ent __glkonlc_TexCoord3sv
__glkonlc_TexCoord3sv:
    # Line 727
    lw	$a3,4136($zero)
    # Line 726
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 727
    slti	$v0,$a3,2
    # Line 726
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,23720
    sd	$gp,8($sp)
    # Line 727
    bnez	$v0,.L0da6b3ac
    # Line 726
    addu	$gp,$t9,$at
.L0da6b358:
    # Line 728
    lh	$a4,0($s8)
    # Line 727
    lw	$a0,4144($zero)
    # Line 731
    ld	$gp,8($sp)
    # Line 728
    sll	$a4,$a4,0x10
    ori	$a4,$a4,0x86
    sw	$a4,0($a0)
    # Line 729
    lh	$a2,2($s8)
    lhu	$a1,4($s8)
    # Line 731
    ld	$s8,0($sp)
    # Line 729
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 730
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 731
    addiu	$sp,$sp,32
    # Line 730
    addiu	$v0,$v0,2
    # Line 731
    jr	$ra
    # Line 730
    sw	$v0,4148($zero)
.L0da6b3ac:
    # Line 727
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6b358
    move	$a3,$v0
.end __glkonlc_TexCoord3sv

# Function: __glkonlc_TexCoord4d
# Declared: Line 732 (Source lines: 732-740)
# Address: 0x0da6b3d0 - 0x0da6b4c0 (Size: 240 bytes, Frame: 208)
.globl __glkonlc_TexCoord4d
.ent __glkonlc_TexCoord4d
__glkonlc_TexCoord4d:
    # Line 733
    lw	$a2,4136($zero)
    # Line 732
    mov.d	$f6,$f15
    addiu	$sp,$sp,-80
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 733
    slti	$v0,$a2,9
    # Line 732
    mov.d	$f4,$f13
    sdc1	$f30,32($sp)
    addiu	$at,$at,23560
    mov.d	$f30,$f12
    sd	$gp,40($sp)
    # Line 733
    bnez	$v0,.L0da6b48c
    # Line 732
    addu	$gp,$t9,$at
.L0da6b404:
    # Line 740
    ld	$gp,40($sp)
    # Line 735
    sdc1	$f30,0($sp)
    # Line 740
    ldc1	$f30,32($sp)
    # Line 738
    sdc1	$f6,24($sp)
    lw	$a1,28($sp)
    lw	$a3,24($sp)
    # Line 737
    sdc1	$f5,16($sp)
    lw	$a4,20($sp)
    lw	$a5,16($sp)
    # Line 736
    sdc1	$f4,8($sp)
    lw	$a6,12($sp)
    lw	$a7,8($sp)
    # Line 735
    lw	$t0,4($sp)
    # Line 733
    lw	$a0,4144($zero)
    # Line 735
    lw	$t1,0($sp)
    # Line 734
    li	$t2,135
    sw	$t2,0($a0)
    # Line 735
    sw	$t1,4($a0)
    sw	$t0,8($a0)
    # Line 736
    sw	$a7,12($a0)
    sw	$a6,16($a0)
    # Line 737
    sw	$a5,20($a0)
    sw	$a4,24($a0)
    # Line 738
    sw	$a3,28($a0)
    sw	$a1,32($a0)
    # Line 739
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-9
    sw	$v1,4136($zero)
    # Line 740
    addiu	$sp,$sp,80
    # Line 739
    addiu	$v0,$v0,9
    # Line 740
    jr	$ra
    # Line 739
    sw	$v0,4148($zero)
.L0da6b48c:
    sdc1	$f15,48($sp)
    # Line 733
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,56($sp)
    sdc1	$f13,64($sp)
    sd	$ra,72($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,72($sp)
    ldc1	$f4,64($sp)
    ldc1	$f5,56($sp)
    ldc1	$f6,48($sp)
    b	.L0da6b404
    move	$a2,$v0
.end __glkonlc_TexCoord4d

# Function: __glkonlc_TexCoord4dv
# Declared: Line 741 (Source lines: 741-749)
# Address: 0x0da6b4c0 - 0x0da6b59c (Size: 220 bytes, Frame: 192)
.globl __glkonlc_TexCoord4dv
.ent __glkonlc_TexCoord4dv
__glkonlc_TexCoord4dv:
    # Line 742
    lw	$a3,4136($zero)
    # Line 741
    addiu	$sp,$sp,-64
    lui	$at,0x2
    # Line 742
    slti	$v0,$a3,9
    # Line 741
    sd	$s8,32($sp)
    move	$s8,$a0
    addiu	$at,$at,23320
    sd	$gp,40($sp)
    # Line 742
    bnez	$v0,.L0da6b580
    # Line 741
    addu	$gp,$t9,$at
.L0da6b4e8:
    # Line 742
    lw	$a0,4144($zero)
    # Line 743
    li	$t2,135
    sw	$t2,0($a0)
    # Line 744
    ldc1	$f3,0($s8)
    sdc1	$f3,0($sp)
    lw	$t1,0($sp)
    lw	$t0,4($sp)
    sw	$t0,8($a0)
    sw	$t1,4($a0)
    # Line 745
    ldc1	$f2,8($s8)
    sdc1	$f2,8($sp)
    lw	$a7,8($sp)
    lw	$a6,12($sp)
    sw	$a6,16($a0)
    sw	$a7,12($a0)
    # Line 746
    ldc1	$f1,16($s8)
    # Line 749
    ld	$gp,40($sp)
    # Line 746
    sdc1	$f1,16($sp)
    lw	$a5,16($sp)
    lw	$a4,20($sp)
    sw	$a4,24($a0)
    sw	$a5,20($a0)
    # Line 747
    ldc1	$f0,24($s8)
    # Line 749
    ld	$s8,32($sp)
    # Line 747
    sdc1	$f0,24($sp)
    lw	$a1,28($sp)
    lw	$a2,24($sp)
    sw	$a2,28($a0)
    sw	$a1,32($a0)
    # Line 748
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-9
    sw	$v1,4136($zero)
    # Line 749
    addiu	$sp,$sp,64
    # Line 748
    addiu	$v0,$v0,9
    # Line 749
    jr	$ra
    # Line 748
    sw	$v0,4148($zero)
.L0da6b580:
    # Line 742
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,48($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    b	.L0da6b4e8
    move	$a3,$v0
.end __glkonlc_TexCoord4dv

# Function: __glkonlc_TexCoord4f
# Declared: Line 750 (Source lines: 750-758)
# Address: 0x0da6b5a0 - 0x0da6b650 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_TexCoord4f
.ent __glkonlc_TexCoord4f
__glkonlc_TexCoord4f:
    # Line 751
    lw	$a2,4136($zero)
    # Line 750
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 751
    slti	$v0,$a2,5
    # Line 750
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,23096
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 751
    bnez	$v0,.L0da6b61c
    # Line 750
    addu	$gp,$t9,$at
.L0da6b5d4:
    # Line 751
    lw	$a0,4144($zero)
    # Line 758
    ld	$gp,8($sp)
    # Line 752
    li	$a1,136
    sw	$a1,0($a0)
    # Line 753
    swc1	$f30,4($a0)
    # Line 754
    swc1	$f4,8($a0)
    # Line 755
    swc1	$f5,12($a0)
    # Line 756
    swc1	$f6,16($a0)
    # Line 757
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 758
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 757
    addiu	$v0,$v0,5
    # Line 758
    jr	$ra
    # Line 757
    sw	$v0,4148($zero)
.L0da6b61c:
    sdc1	$f15,16($sp)
    # Line 751
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
    b	.L0da6b5d4
    move	$a2,$v0
.end __glkonlc_TexCoord4f

# Function: __glkonlc_TexCoord4fv
# Declared: Line 759 (Source lines: 759-767)
# Address: 0x0da6b650 - 0x0da6b6ec (Size: 156 bytes, Frame: 32)
.globl __glkonlc_TexCoord4fv
.ent __glkonlc_TexCoord4fv
__glkonlc_TexCoord4fv:
    # Line 760
    lw	$a3,4136($zero)
    # Line 759
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 760
    slti	$v0,$a3,5
    # Line 759
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,22920
    sd	$gp,8($sp)
    # Line 760
    bnez	$v0,.L0da6b6d0
    # Line 759
    addu	$gp,$t9,$at
.L0da6b678:
    # Line 760
    lw	$a0,4144($zero)
    # Line 761
    li	$a1,136
    sw	$a1,0($a0)
    # Line 762
    lwc1	$f3,0($s8)
    swc1	$f3,4($a0)
    # Line 763
    lwc1	$f2,4($s8)
    swc1	$f2,8($a0)
    # Line 764
    lwc1	$f1,8($s8)
    # Line 767
    ld	$gp,8($sp)
    # Line 764
    swc1	$f1,12($a0)
    # Line 765
    lwc1	$f0,12($s8)
    # Line 767
    ld	$s8,0($sp)
    # Line 765
    swc1	$f0,16($a0)
    # Line 766
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 767
    addiu	$sp,$sp,32
    # Line 766
    addiu	$v0,$v0,5
    # Line 767
    jr	$ra
    # Line 766
    sw	$v0,4148($zero)
.L0da6b6d0:
    # Line 760
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6b678
    move	$a3,$v0
.end __glkonlc_TexCoord4fv

# Function: __glkonlc_TexCoord4i
# Declared: Line 768 (Source lines: 768-776)
# Address: 0x0da6b6f0 - 0x0da6b794 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_TexCoord4i
.ent __glkonlc_TexCoord4i
__glkonlc_TexCoord4i:
    # Line 769
    lw	$a6,4136($zero)
    # Line 768
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 769
    slti	$v0,$a6,5
    # Line 768
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,22760
    sd	$gp,8($sp)
    # Line 769
    bnez	$v0,.L0da6b760
    # Line 768
    addu	$gp,$t9,$at
.L0da6b718:
    # Line 769
    lw	$a0,4144($zero)
    # Line 776
    ld	$gp,8($sp)
    # Line 770
    li	$a4,137
    sw	$a4,0($a0)
    # Line 771
    sw	$s8,4($a0)
    # Line 772
    sw	$a1,8($a0)
    # Line 773
    sw	$a2,12($a0)
    # Line 774
    sw	$a3,16($a0)
    # Line 775
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 776
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 775
    addiu	$v0,$v0,5
    # Line 776
    jr	$ra
    # Line 775
    sw	$v0,4148($zero)
.L0da6b760:
    sd	$a3,16($sp)
    # Line 769
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
    b	.L0da6b718
    move	$a6,$v0
.end __glkonlc_TexCoord4i

# Function: __glkonlc_TexCoord4iv
# Declared: Line 777 (Source lines: 777-785)
# Address: 0x0da6b7a0 - 0x0da6b83c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_TexCoord4iv
.ent __glkonlc_TexCoord4iv
__glkonlc_TexCoord4iv:
    # Line 778
    lw	$a3,4136($zero)
    # Line 777
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 778
    slti	$v0,$a3,5
    # Line 777
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,22584
    sd	$gp,8($sp)
    # Line 778
    bnez	$v0,.L0da6b820
    # Line 777
    addu	$gp,$t9,$at
.L0da6b7c8:
    # Line 778
    lw	$a0,4144($zero)
    # Line 785
    ld	$gp,8($sp)
    # Line 779
    li	$a6,137
    sw	$a6,0($a0)
    # Line 780
    lw	$a5,0($s8)
    sw	$a5,4($a0)
    # Line 781
    lw	$a4,4($s8)
    sw	$a4,8($a0)
    # Line 782
    lw	$a2,8($s8)
    sw	$a2,12($a0)
    # Line 783
    lw	$a1,12($s8)
    # Line 785
    ld	$s8,0($sp)
    # Line 783
    sw	$a1,16($a0)
    # Line 784
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 785
    addiu	$sp,$sp,32
    # Line 784
    addiu	$v0,$v0,5
    # Line 785
    jr	$ra
    # Line 784
    sw	$v0,4148($zero)
.L0da6b820:
    # Line 778
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6b7c8
    move	$a3,$v0
.end __glkonlc_TexCoord4iv

# Function: __glkonlc_TexCoord4s
# Declared: Line 786 (Source lines: 786-792)
# Address: 0x0da6b840 - 0x0da6b8f0 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_TexCoord4s
.ent __glkonlc_TexCoord4s
__glkonlc_TexCoord4s:
    # Line 787
    lw	$a6,4136($zero)
    # Line 786
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 787
    slti	$v0,$a6,3
    # Line 786
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,22424
    sd	$gp,8($sp)
    # Line 787
    bnez	$v0,.L0da6b8bc
    # Line 786
    addu	$gp,$t9,$at
.L0da6b868:
    # Line 792
    ld	$gp,8($sp)
    # Line 787
    lw	$a0,4144($zero)
    # Line 788
    sll	$a4,$s8,0x10
    # Line 792
    ld	$s8,0($sp)
    # Line 788
    ori	$a4,$a4,0x8a
    sw	$a4,0($a0)
    # Line 789
    sll	$a4,$a1,0x10
    andi	$a2,$a2,0xffff
    # Line 790
    sll	$a1,$a3,0x10
    sw	$a1,8($a0)
    # Line 789
    or	$a2,$a4,$a2
    sw	$a2,4($a0)
    # Line 791
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-3
    sw	$v1,4136($zero)
    # Line 792
    addiu	$sp,$sp,48
    # Line 791
    addiu	$v0,$v0,3
    # Line 792
    jr	$ra
    # Line 791
    sw	$v0,4148($zero)
.L0da6b8bc:
    sd	$a3,16($sp)
    # Line 787
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
    b	.L0da6b868
    move	$a6,$v0
.end __glkonlc_TexCoord4s

# Function: __glkonlc_TexCoord4sv
# Declared: Line 793 (Source lines: 793-799)
# Address: 0x0da6b8f0 - 0x0da6b994 (Size: 164 bytes, Frame: 32)
.globl __glkonlc_TexCoord4sv
.ent __glkonlc_TexCoord4sv
__glkonlc_TexCoord4sv:
    # Line 794
    lw	$a3,4136($zero)
    # Line 793
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 794
    slti	$v0,$a3,3
    # Line 793
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,22248
    sd	$gp,8($sp)
    # Line 794
    bnez	$v0,.L0da6b978
    # Line 793
    addu	$gp,$t9,$at
.L0da6b918:
    # Line 795
    lh	$a5,0($s8)
    # Line 794
    lw	$a0,4144($zero)
    # Line 795
    sll	$a5,$a5,0x10
    ori	$a5,$a5,0x8a
    sw	$a5,0($a0)
    # Line 796
    lh	$a4,2($s8)
    lhu	$a2,4($s8)
    # Line 799
    ld	$gp,8($sp)
    # Line 796
    sll	$a4,$a4,0x10
    or	$a2,$a2,$a4
    sw	$a2,4($a0)
    # Line 797
    lh	$a1,6($s8)
    # Line 799
    ld	$s8,0($sp)
    # Line 797
    sll	$a1,$a1,0x10
    sw	$a1,8($a0)
    # Line 798
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 799
    addiu	$sp,$sp,32
    # Line 798
    addiu	$v0,$v0,3
    # Line 799
    jr	$ra
    # Line 798
    sw	$v0,4148($zero)
.L0da6b978:
    # Line 794
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6b918
    move	$a3,$v0
.end __glkonlc_TexCoord4sv

# Function: __glkonlc_Vertex2d
# Declared: Line 800 (Source lines: 800-806)
# Address: 0x0da6b9a0 - 0x0da6ba50 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Vertex2d
.ent __glkonlc_Vertex2d
__glkonlc_Vertex2d:
    # Line 801
    lw	$a2,4136($zero)
    # Line 800
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 801
    slti	$v0,$a2,5
    # Line 800
    mov.d	$f4,$f13
    sdc1	$f30,16($sp)
    addiu	$at,$at,22072
    mov.d	$f30,$f12
    sd	$gp,24($sp)
    # Line 801
    bnez	$v0,.L0da6ba2c
    # Line 800
    addu	$gp,$t9,$at
.L0da6b9cc:
    # Line 806
    ld	$gp,24($sp)
    # Line 803
    sdc1	$f30,0($sp)
    # Line 806
    ldc1	$f30,16($sp)
    # Line 804
    sdc1	$f4,8($sp)
    lw	$a1,12($sp)
    lw	$a3,8($sp)
    # Line 803
    lw	$a4,4($sp)
    # Line 801
    lw	$a0,4144($zero)
    # Line 803
    lw	$a5,0($sp)
    # Line 802
    li	$a6,139
    sw	$a6,0($a0)
    # Line 803
    sw	$a5,4($a0)
    sw	$a4,8($a0)
    # Line 804
    sw	$a3,12($a0)
    sw	$a1,16($a0)
    # Line 805
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    # Line 806
    addiu	$sp,$sp,48
    # Line 805
    addiu	$v0,$v0,5
    # Line 806
    jr	$ra
    # Line 805
    sw	$v0,4148($zero)
.L0da6ba2c:
    # Line 801
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    b	.L0da6b9cc
    move	$a2,$v0
.end __glkonlc_Vertex2d

# Function: __glkonlc_Vertex2dv
# Declared: Line 807 (Source lines: 807-813)
# Address: 0x0da6ba50 - 0x0da6bafc (Size: 172 bytes, Frame: 48)
.globl __glkonlc_Vertex2dv
.ent __glkonlc_Vertex2dv
__glkonlc_Vertex2dv:
    # Line 808
    lw	$a3,4136($zero)
    # Line 807
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 808
    slti	$v0,$a3,5
    # Line 807
    sd	$s8,16($sp)
    move	$s8,$a0
    addiu	$at,$at,21896
    sd	$gp,24($sp)
    # Line 808
    bnez	$v0,.L0da6bae0
    # Line 807
    addu	$gp,$t9,$at
.L0da6ba78:
    # Line 808
    lw	$a0,4144($zero)
    # Line 809
    li	$a6,139
    sw	$a6,0($a0)
    # Line 810
    ldc1	$f1,0($s8)
    # Line 813
    ld	$gp,24($sp)
    # Line 810
    sdc1	$f1,0($sp)
    lw	$a5,0($sp)
    lw	$a4,4($sp)
    sw	$a4,8($a0)
    sw	$a5,4($a0)
    # Line 811
    ldc1	$f0,8($s8)
    # Line 813
    ld	$s8,16($sp)
    # Line 811
    sdc1	$f0,8($sp)
    lw	$a1,12($sp)
    lw	$a2,8($sp)
    sw	$a2,12($a0)
    sw	$a1,16($a0)
    # Line 812
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 813
    addiu	$sp,$sp,48
    # Line 812
    addiu	$v0,$v0,5
    # Line 813
    jr	$ra
    # Line 812
    sw	$v0,4148($zero)
.L0da6bae0:
    # Line 808
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    b	.L0da6ba78
    move	$a3,$v0
.end __glkonlc_Vertex2dv

# Function: __glkonlc_Vertex2f
# Declared: Line 814 (Source lines: 814-820)
# Address: 0x0da6bb00 - 0x0da6bb90 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_Vertex2f
.ent __glkonlc_Vertex2f
__glkonlc_Vertex2f:
    # Line 815
    lw	$a2,4136($zero)
    # Line 814
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 815
    slti	$v0,$a2,3
    # Line 814
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,21720
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 815
    bnez	$v0,.L0da6bb6c
    # Line 814
    addu	$gp,$t9,$at
.L0da6bb2c:
    # Line 815
    lw	$a0,4144($zero)
    # Line 820
    ld	$gp,8($sp)
    # Line 816
    li	$a1,140
    sw	$a1,0($a0)
    # Line 817
    swc1	$f30,4($a0)
    # Line 818
    swc1	$f4,8($a0)
    # Line 819
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 820
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 819
    addiu	$v0,$v0,3
    # Line 820
    jr	$ra
    # Line 819
    sw	$v0,4148($zero)
.L0da6bb6c:
    # Line 815
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ldc1	$f4,16($sp)
    b	.L0da6bb2c
    move	$a2,$v0
.end __glkonlc_Vertex2f

# Function: __glkonlc_Vertex2fv
# Declared: Line 821 (Source lines: 821-827)
# Address: 0x0da6bb90 - 0x0da6bc1c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_Vertex2fv
.ent __glkonlc_Vertex2fv
__glkonlc_Vertex2fv:
    # Line 822
    lw	$a3,4136($zero)
    # Line 821
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 822
    slti	$v0,$a3,3
    # Line 821
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,21576
    sd	$gp,8($sp)
    # Line 822
    bnez	$v0,.L0da6bc00
    # Line 821
    addu	$gp,$t9,$at
.L0da6bbb8:
    # Line 822
    lw	$a0,4144($zero)
    # Line 823
    li	$a1,140
    sw	$a1,0($a0)
    # Line 824
    lwc1	$f1,0($s8)
    # Line 827
    ld	$gp,8($sp)
    # Line 824
    swc1	$f1,4($a0)
    # Line 825
    lwc1	$f0,4($s8)
    # Line 827
    ld	$s8,0($sp)
    # Line 825
    swc1	$f0,8($a0)
    # Line 826
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 827
    addiu	$sp,$sp,32
    # Line 826
    addiu	$v0,$v0,3
    # Line 827
    jr	$ra
    # Line 826
    sw	$v0,4148($zero)
.L0da6bc00:
    # Line 822
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6bbb8
    move	$a3,$v0
.end __glkonlc_Vertex2fv

# Function: __glkonlc_Vertex2i
# Declared: Line 828 (Source lines: 828-834)
# Address: 0x0da6bc20 - 0x0da6bcac (Size: 140 bytes, Frame: 32)
.globl __glkonlc_Vertex2i
.ent __glkonlc_Vertex2i
__glkonlc_Vertex2i:
    # Line 829
    lw	$a4,4136($zero)
    # Line 828
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 829
    slti	$v0,$a4,3
    # Line 828
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,21432
    sd	$gp,8($sp)
    # Line 829
    bnez	$v0,.L0da6bc88
    # Line 828
    addu	$gp,$t9,$at
.L0da6bc48:
    # Line 829
    lw	$a0,4144($zero)
    # Line 834
    ld	$gp,8($sp)
    # Line 830
    li	$a2,141
    sw	$a2,0($a0)
    # Line 831
    sw	$s8,4($a0)
    # Line 832
    sw	$a1,8($a0)
    # Line 833
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 834
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 833
    addiu	$v0,$v0,3
    # Line 834
    jr	$ra
    # Line 833
    sw	$v0,4148($zero)
.L0da6bc88:
    # Line 829
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6bc48
    move	$a4,$v0
.end __glkonlc_Vertex2i

# Function: __glkonlc_Vertex2iv
# Declared: Line 835 (Source lines: 835-841)
# Address: 0x0da6bcb0 - 0x0da6bd3c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_Vertex2iv
.ent __glkonlc_Vertex2iv
__glkonlc_Vertex2iv:
    # Line 836
    lw	$a3,4136($zero)
    # Line 835
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 836
    slti	$v0,$a3,3
    # Line 835
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,21288
    sd	$gp,8($sp)
    # Line 836
    bnez	$v0,.L0da6bd20
    # Line 835
    addu	$gp,$t9,$at
.L0da6bcd8:
    # Line 836
    lw	$a0,4144($zero)
    # Line 841
    ld	$gp,8($sp)
    # Line 837
    li	$a4,141
    sw	$a4,0($a0)
    # Line 838
    lw	$a2,0($s8)
    sw	$a2,4($a0)
    # Line 839
    lw	$a1,4($s8)
    # Line 841
    ld	$s8,0($sp)
    # Line 839
    sw	$a1,8($a0)
    # Line 840
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 841
    addiu	$sp,$sp,32
    # Line 840
    addiu	$v0,$v0,3
    # Line 841
    jr	$ra
    # Line 840
    sw	$v0,4148($zero)
.L0da6bd20:
    # Line 836
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6bcd8
    move	$a3,$v0
.end __glkonlc_Vertex2iv

# Function: __glkonlc_Vertex2s
# Declared: Line 842 (Source lines: 842-847)
# Address: 0x0da6bd40 - 0x0da6bdd0 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_Vertex2s
.ent __glkonlc_Vertex2s
__glkonlc_Vertex2s:
    # Line 843
    lw	$a4,4136($zero)
    # Line 842
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 843
    slti	$v0,$a4,2
    # Line 842
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,21144
    sd	$gp,8($sp)
    # Line 843
    bnez	$v0,.L0da6bdac
    # Line 842
    addu	$gp,$t9,$at
.L0da6bd68:
    # Line 847
    ld	$gp,8($sp)
    # Line 843
    lw	$a0,4144($zero)
    # Line 844
    sll	$a2,$s8,0x10
    # Line 847
    ld	$s8,0($sp)
    # Line 844
    ori	$a2,$a2,0x8e
    sw	$a2,0($a0)
    # Line 845
    sll	$a1,$a1,0x10
    sw	$a1,4($a0)
    # Line 846
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-2
    sw	$v1,4136($zero)
    # Line 847
    addiu	$sp,$sp,32
    # Line 846
    addiu	$v0,$v0,2
    # Line 847
    jr	$ra
    # Line 846
    sw	$v0,4148($zero)
.L0da6bdac:
    # Line 843
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6bd68
    move	$a4,$v0
.end __glkonlc_Vertex2s

# Function: __glkonlc_Vertex2sv
# Declared: Line 848 (Source lines: 848-853)
# Address: 0x0da6bdd0 - 0x0da6be60 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_Vertex2sv
.ent __glkonlc_Vertex2sv
__glkonlc_Vertex2sv:
    # Line 849
    lw	$a3,4136($zero)
    # Line 848
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 849
    slti	$v0,$a3,2
    # Line 848
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,21000
    sd	$gp,8($sp)
    # Line 849
    bnez	$v0,.L0da6be44
    # Line 848
    addu	$gp,$t9,$at
.L0da6bdf8:
    # Line 850
    lh	$a2,0($s8)
    # Line 849
    lw	$a0,4144($zero)
    # Line 853
    ld	$gp,8($sp)
    # Line 850
    sll	$a2,$a2,0x10
    ori	$a2,$a2,0x8e
    sw	$a2,0($a0)
    # Line 851
    lh	$a1,2($s8)
    # Line 853
    ld	$s8,0($sp)
    # Line 851
    sll	$a1,$a1,0x10
    sw	$a1,4($a0)
    # Line 852
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 853
    addiu	$sp,$sp,32
    # Line 852
    addiu	$v0,$v0,2
    # Line 853
    jr	$ra
    # Line 852
    sw	$v0,4148($zero)
.L0da6be44:
    # Line 849
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6bdf8
    move	$a3,$v0
.end __glkonlc_Vertex2sv

# Function: __glkonlc_Vertex3d
# Declared: Line 854 (Source lines: 854-861)
# Address: 0x0da6be60 - 0x0da6bf30 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_Vertex3d
.ent __glkonlc_Vertex3d
__glkonlc_Vertex3d:
    # Line 855
    lw	$a2,4136($zero)
    # Line 854
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 855
    slti	$v0,$a2,7
    # Line 854
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,20856
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 855
    bnez	$v0,.L0da6bf04
    # Line 854
    addu	$gp,$t9,$at
.L0da6be90:
    # Line 861
    ld	$gp,32($sp)
    # Line 857
    sdc1	$f30,0($sp)
    # Line 861
    ldc1	$f30,24($sp)
    # Line 859
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 858
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 857
    lw	$a6,4($sp)
    # Line 855
    lw	$a0,4144($zero)
    # Line 857
    lw	$a7,0($sp)
    # Line 856
    li	$t0,143
    sw	$t0,0($a0)
    # Line 857
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 858
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 859
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 860
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 861
    addiu	$sp,$sp,64
    # Line 860
    addiu	$v0,$v0,7
    # Line 861
    jr	$ra
    # Line 860
    sw	$v0,4148($zero)
.L0da6bf04:
    # Line 855
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da6be90
    move	$a2,$v0
.end __glkonlc_Vertex3d

# Function: __glkonlc_Vertex3dv
# Declared: Line 862 (Source lines: 862-869)
# Address: 0x0da6bf30 - 0x0da6bff4 (Size: 196 bytes, Frame: 48)
.globl __glkonlc_Vertex3dv
.ent __glkonlc_Vertex3dv
__glkonlc_Vertex3dv:
    # Line 863
    lw	$a3,4136($zero)
    # Line 862
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 863
    slti	$v0,$a3,7
    # Line 862
    sd	$s8,24($sp)
    move	$s8,$a0
    addiu	$at,$at,20648
    sd	$gp,32($sp)
    # Line 863
    bnez	$v0,.L0da6bfd8
    # Line 862
    addu	$gp,$t9,$at
.L0da6bf58:
    # Line 863
    lw	$a0,4144($zero)
    # Line 864
    li	$t0,143
    sw	$t0,0($a0)
    # Line 865
    ldc1	$f2,0($s8)
    sdc1	$f2,0($sp)
    lw	$a7,0($sp)
    lw	$a6,4($sp)
    sw	$a6,8($a0)
    sw	$a7,4($a0)
    # Line 866
    ldc1	$f1,8($s8)
    # Line 869
    ld	$gp,32($sp)
    # Line 866
    sdc1	$f1,8($sp)
    lw	$a5,8($sp)
    lw	$a4,12($sp)
    sw	$a4,16($a0)
    sw	$a5,12($a0)
    # Line 867
    ldc1	$f0,16($s8)
    # Line 869
    ld	$s8,24($sp)
    # Line 867
    sdc1	$f0,16($sp)
    lw	$a1,20($sp)
    lw	$a2,16($sp)
    sw	$a2,20($a0)
    sw	$a1,24($a0)
    # Line 868
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-7
    sw	$v1,4136($zero)
    # Line 869
    addiu	$sp,$sp,48
    # Line 868
    addiu	$v0,$v0,7
    # Line 869
    jr	$ra
    # Line 868
    sw	$v0,4148($zero)
.L0da6bfd8:
    # Line 863
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    b	.L0da6bf58
    move	$a3,$v0
.end __glkonlc_Vertex3dv

# Function: __glkonlc_Vertex3f
# Declared: Line 870 (Source lines: 870-877)
# Address: 0x0da6c000 - 0x0da6c0a0 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Vertex3f
.ent __glkonlc_Vertex3f
__glkonlc_Vertex3f:
    # Line 871
    lw	$a2,4136($zero)
    # Line 870
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 871
    slti	$v0,$a2,4
    # Line 870
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,20440
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 871
    bnez	$v0,.L0da6c074
    # Line 870
    addu	$gp,$t9,$at
.L0da6c030:
    # Line 871
    lw	$a0,4144($zero)
    # Line 877
    ld	$gp,8($sp)
    # Line 872
    li	$a1,144
    sw	$a1,0($a0)
    # Line 873
    swc1	$f30,4($a0)
    # Line 874
    swc1	$f4,8($a0)
    # Line 875
    swc1	$f5,12($a0)
    # Line 876
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 877
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 876
    addiu	$v0,$v0,4
    # Line 877
    jr	$ra
    # Line 876
    sw	$v0,4148($zero)
.L0da6c074:
    # Line 871
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da6c030
    move	$a2,$v0
.end __glkonlc_Vertex3f

# Function: __glkonlc_Vertex3fv
# Declared: Line 878 (Source lines: 878-885)
# Address: 0x0da6c0a0 - 0x0da6c134 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Vertex3fv
.ent __glkonlc_Vertex3fv
__glkonlc_Vertex3fv:
    # Line 879
    lw	$a3,4136($zero)
    # Line 878
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 879
    slti	$v0,$a3,4
    # Line 878
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,20280
    sd	$gp,8($sp)
    # Line 879
    bnez	$v0,.L0da6c118
    # Line 878
    addu	$gp,$t9,$at
.L0da6c0c8:
    # Line 879
    lw	$a0,4144($zero)
    # Line 880
    li	$a1,144
    sw	$a1,0($a0)
    # Line 881
    lwc1	$f2,0($s8)
    swc1	$f2,4($a0)
    # Line 882
    lwc1	$f1,4($s8)
    # Line 885
    ld	$gp,8($sp)
    # Line 882
    swc1	$f1,8($a0)
    # Line 883
    lwc1	$f0,8($s8)
    # Line 885
    ld	$s8,0($sp)
    # Line 883
    swc1	$f0,12($a0)
    # Line 884
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 885
    addiu	$sp,$sp,32
    # Line 884
    addiu	$v0,$v0,4
    # Line 885
    jr	$ra
    # Line 884
    sw	$v0,4148($zero)
.L0da6c118:
    # Line 879
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6c0c8
    move	$a3,$v0
.end __glkonlc_Vertex3fv

# Function: __glkonlc_Vertex3i
# Declared: Line 886 (Source lines: 886-893)
# Address: 0x0da6c140 - 0x0da6c1d8 (Size: 152 bytes, Frame: 48)
.globl __glkonlc_Vertex3i
.ent __glkonlc_Vertex3i
__glkonlc_Vertex3i:
    # Line 887
    lw	$a5,4136($zero)
    # Line 886
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 887
    slti	$v0,$a5,4
    # Line 886
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,20120
    sd	$gp,8($sp)
    # Line 887
    bnez	$v0,.L0da6c1ac
    # Line 886
    addu	$gp,$t9,$at
.L0da6c168:
    # Line 887
    lw	$a0,4144($zero)
    # Line 893
    ld	$gp,8($sp)
    # Line 888
    li	$a3,145
    sw	$a3,0($a0)
    # Line 889
    sw	$s8,4($a0)
    # Line 890
    sw	$a1,8($a0)
    # Line 891
    sw	$a2,12($a0)
    # Line 892
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 893
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 892
    addiu	$v0,$v0,4
    # Line 893
    jr	$ra
    # Line 892
    sw	$v0,4148($zero)
.L0da6c1ac:
    # Line 887
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6c168
    move	$a5,$v0
.end __glkonlc_Vertex3i

# Function: __glkonlc_Vertex3iv
# Declared: Line 894 (Source lines: 894-901)
# Address: 0x0da6c1e0 - 0x0da6c274 (Size: 148 bytes, Frame: 32)
.globl __glkonlc_Vertex3iv
.ent __glkonlc_Vertex3iv
__glkonlc_Vertex3iv:
    # Line 895
    lw	$a3,4136($zero)
    # Line 894
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 895
    slti	$v0,$a3,4
    # Line 894
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,19960
    sd	$gp,8($sp)
    # Line 895
    bnez	$v0,.L0da6c258
    # Line 894
    addu	$gp,$t9,$at
.L0da6c208:
    # Line 895
    lw	$a0,4144($zero)
    # Line 901
    ld	$gp,8($sp)
    # Line 896
    li	$a5,145
    sw	$a5,0($a0)
    # Line 897
    lw	$a4,0($s8)
    sw	$a4,4($a0)
    # Line 898
    lw	$a2,4($s8)
    sw	$a2,8($a0)
    # Line 899
    lw	$a1,8($s8)
    # Line 901
    ld	$s8,0($sp)
    # Line 899
    sw	$a1,12($a0)
    # Line 900
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-4
    sw	$v1,4136($zero)
    # Line 901
    addiu	$sp,$sp,32
    # Line 900
    addiu	$v0,$v0,4
    # Line 901
    jr	$ra
    # Line 900
    sw	$v0,4148($zero)
.L0da6c258:
    # Line 895
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6c208
    move	$a3,$v0
.end __glkonlc_Vertex3iv

# Function: __glkonlc_Vertex3s
# Declared: Line 902 (Source lines: 902-907)
# Address: 0x0da6c280 - 0x0da6c320 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Vertex3s
.ent __glkonlc_Vertex3s
__glkonlc_Vertex3s:
    # Line 903
    lw	$a5,4136($zero)
    # Line 902
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 903
    slti	$v0,$a5,2
    # Line 902
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,19800
    sd	$gp,8($sp)
    # Line 903
    bnez	$v0,.L0da6c2f4
    # Line 902
    addu	$gp,$t9,$at
.L0da6c2a8:
    # Line 907
    ld	$gp,8($sp)
    # Line 903
    lw	$a0,4144($zero)
    # Line 904
    sll	$a3,$s8,0x10
    # Line 907
    ld	$s8,0($sp)
    # Line 905
    andi	$a2,$a2,0xffff
    sll	$a1,$a1,0x10
    # Line 904
    ori	$a3,$a3,0x92
    sw	$a3,0($a0)
    # Line 905
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 906
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-2
    sw	$v1,4136($zero)
    # Line 907
    addiu	$sp,$sp,48
    # Line 906
    addiu	$v0,$v0,2
    # Line 907
    jr	$ra
    # Line 906
    sw	$v0,4148($zero)
.L0da6c2f4:
    # Line 903
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6c2a8
    move	$a5,$v0
.end __glkonlc_Vertex3s

# Function: __glkonlc_Vertex3sv
# Declared: Line 908 (Source lines: 908-913)
# Address: 0x0da6c320 - 0x0da6c3b8 (Size: 152 bytes, Frame: 32)
.globl __glkonlc_Vertex3sv
.ent __glkonlc_Vertex3sv
__glkonlc_Vertex3sv:
    # Line 909
    lw	$a3,4136($zero)
    # Line 908
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 909
    slti	$v0,$a3,2
    # Line 908
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,19640
    sd	$gp,8($sp)
    # Line 909
    bnez	$v0,.L0da6c39c
    # Line 908
    addu	$gp,$t9,$at
.L0da6c348:
    # Line 910
    lh	$a4,0($s8)
    # Line 909
    lw	$a0,4144($zero)
    # Line 913
    ld	$gp,8($sp)
    # Line 910
    sll	$a4,$a4,0x10
    ori	$a4,$a4,0x92
    sw	$a4,0($a0)
    # Line 911
    lh	$a2,2($s8)
    lhu	$a1,4($s8)
    # Line 913
    ld	$s8,0($sp)
    # Line 911
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    sw	$a1,4($a0)
    # Line 912
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 913
    addiu	$sp,$sp,32
    # Line 912
    addiu	$v0,$v0,2
    # Line 913
    jr	$ra
    # Line 912
    sw	$v0,4148($zero)
.L0da6c39c:
    # Line 909
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6c348
    move	$a3,$v0
.end __glkonlc_Vertex3sv

# Function: __glkonlc_Vertex4d
# Declared: Line 914 (Source lines: 914-922)
# Address: 0x0da6c3c0 - 0x0da6c4b0 (Size: 240 bytes, Frame: 208)
.globl __glkonlc_Vertex4d
.ent __glkonlc_Vertex4d
__glkonlc_Vertex4d:
    # Line 915
    lw	$a2,4136($zero)
    # Line 914
    mov.d	$f6,$f15
    addiu	$sp,$sp,-80
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 915
    slti	$v0,$a2,9
    # Line 914
    mov.d	$f4,$f13
    sdc1	$f30,32($sp)
    addiu	$at,$at,19480
    mov.d	$f30,$f12
    sd	$gp,40($sp)
    # Line 915
    bnez	$v0,.L0da6c47c
    # Line 914
    addu	$gp,$t9,$at
.L0da6c3f4:
    # Line 922
    ld	$gp,40($sp)
    # Line 917
    sdc1	$f30,0($sp)
    # Line 922
    ldc1	$f30,32($sp)
    # Line 920
    sdc1	$f6,24($sp)
    lw	$a1,28($sp)
    lw	$a3,24($sp)
    # Line 919
    sdc1	$f5,16($sp)
    lw	$a4,20($sp)
    lw	$a5,16($sp)
    # Line 918
    sdc1	$f4,8($sp)
    lw	$a6,12($sp)
    lw	$a7,8($sp)
    # Line 917
    lw	$t0,4($sp)
    # Line 915
    lw	$a0,4144($zero)
    # Line 917
    lw	$t1,0($sp)
    # Line 916
    li	$t2,147
    sw	$t2,0($a0)
    # Line 917
    sw	$t1,4($a0)
    sw	$t0,8($a0)
    # Line 918
    sw	$a7,12($a0)
    sw	$a6,16($a0)
    # Line 919
    sw	$a5,20($a0)
    sw	$a4,24($a0)
    # Line 920
    sw	$a3,28($a0)
    sw	$a1,32($a0)
    # Line 921
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-9
    sw	$v1,4136($zero)
    # Line 922
    addiu	$sp,$sp,80
    # Line 921
    addiu	$v0,$v0,9
    # Line 922
    jr	$ra
    # Line 921
    sw	$v0,4148($zero)
.L0da6c47c:
    sdc1	$f15,48($sp)
    # Line 915
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,56($sp)
    sdc1	$f13,64($sp)
    sd	$ra,72($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,72($sp)
    ldc1	$f4,64($sp)
    ldc1	$f5,56($sp)
    ldc1	$f6,48($sp)
    b	.L0da6c3f4
    move	$a2,$v0
.end __glkonlc_Vertex4d

# Function: __glkonlc_Vertex4dv
# Declared: Line 923 (Source lines: 923-931)
# Address: 0x0da6c4b0 - 0x0da6c58c (Size: 220 bytes, Frame: 192)
.globl __glkonlc_Vertex4dv
.ent __glkonlc_Vertex4dv
__glkonlc_Vertex4dv:
    # Line 924
    lw	$a3,4136($zero)
    # Line 923
    addiu	$sp,$sp,-64
    lui	$at,0x2
    # Line 924
    slti	$v0,$a3,9
    # Line 923
    sd	$s8,32($sp)
    move	$s8,$a0
    addiu	$at,$at,19240
    sd	$gp,40($sp)
    # Line 924
    bnez	$v0,.L0da6c570
    # Line 923
    addu	$gp,$t9,$at
.L0da6c4d8:
    # Line 924
    lw	$a0,4144($zero)
    # Line 925
    li	$t2,147
    sw	$t2,0($a0)
    # Line 926
    ldc1	$f3,0($s8)
    sdc1	$f3,0($sp)
    lw	$t1,0($sp)
    lw	$t0,4($sp)
    sw	$t0,8($a0)
    sw	$t1,4($a0)
    # Line 927
    ldc1	$f2,8($s8)
    sdc1	$f2,8($sp)
    lw	$a7,8($sp)
    lw	$a6,12($sp)
    sw	$a6,16($a0)
    sw	$a7,12($a0)
    # Line 928
    ldc1	$f1,16($s8)
    # Line 931
    ld	$gp,40($sp)
    # Line 928
    sdc1	$f1,16($sp)
    lw	$a5,16($sp)
    lw	$a4,20($sp)
    sw	$a4,24($a0)
    sw	$a5,20($a0)
    # Line 929
    ldc1	$f0,24($s8)
    # Line 931
    ld	$s8,32($sp)
    # Line 929
    sdc1	$f0,24($sp)
    lw	$a1,28($sp)
    lw	$a2,24($sp)
    sw	$a2,28($a0)
    sw	$a1,32($a0)
    # Line 930
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-9
    sw	$v1,4136($zero)
    # Line 931
    addiu	$sp,$sp,64
    # Line 930
    addiu	$v0,$v0,9
    # Line 931
    jr	$ra
    # Line 930
    sw	$v0,4148($zero)
.L0da6c570:
    # Line 924
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,48($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    b	.L0da6c4d8
    move	$a3,$v0
.end __glkonlc_Vertex4dv

# Function: __glkonlc_Vertex4f
# Declared: Line 932 (Source lines: 932-940)
# Address: 0x0da6c590 - 0x0da6c640 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Vertex4f
.ent __glkonlc_Vertex4f
__glkonlc_Vertex4f:
    # Line 933
    lw	$a2,4136($zero)
    # Line 932
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 933
    slti	$v0,$a2,5
    # Line 932
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,19016
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 933
    bnez	$v0,.L0da6c60c
    # Line 932
    addu	$gp,$t9,$at
.L0da6c5c4:
    # Line 933
    lw	$a0,4144($zero)
    # Line 940
    ld	$gp,8($sp)
    # Line 934
    li	$a1,148
    sw	$a1,0($a0)
    # Line 935
    swc1	$f30,4($a0)
    # Line 936
    swc1	$f4,8($a0)
    # Line 937
    swc1	$f5,12($a0)
    # Line 938
    swc1	$f6,16($a0)
    # Line 939
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 940
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 939
    addiu	$v0,$v0,5
    # Line 940
    jr	$ra
    # Line 939
    sw	$v0,4148($zero)
.L0da6c60c:
    sdc1	$f15,16($sp)
    # Line 933
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
    b	.L0da6c5c4
    move	$a2,$v0
.end __glkonlc_Vertex4f

# Function: __glkonlc_Vertex4fv
# Declared: Line 941 (Source lines: 941-949)
# Address: 0x0da6c640 - 0x0da6c6dc (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Vertex4fv
.ent __glkonlc_Vertex4fv
__glkonlc_Vertex4fv:
    # Line 942
    lw	$a3,4136($zero)
    # Line 941
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 942
    slti	$v0,$a3,5
    # Line 941
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,18840
    sd	$gp,8($sp)
    # Line 942
    bnez	$v0,.L0da6c6c0
    # Line 941
    addu	$gp,$t9,$at
.L0da6c668:
    # Line 942
    lw	$a0,4144($zero)
    # Line 943
    li	$a1,148
    sw	$a1,0($a0)
    # Line 944
    lwc1	$f3,0($s8)
    swc1	$f3,4($a0)
    # Line 945
    lwc1	$f2,4($s8)
    swc1	$f2,8($a0)
    # Line 946
    lwc1	$f1,8($s8)
    # Line 949
    ld	$gp,8($sp)
    # Line 946
    swc1	$f1,12($a0)
    # Line 947
    lwc1	$f0,12($s8)
    # Line 949
    ld	$s8,0($sp)
    # Line 947
    swc1	$f0,16($a0)
    # Line 948
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 949
    addiu	$sp,$sp,32
    # Line 948
    addiu	$v0,$v0,5
    # Line 949
    jr	$ra
    # Line 948
    sw	$v0,4148($zero)
.L0da6c6c0:
    # Line 942
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6c668
    move	$a3,$v0
.end __glkonlc_Vertex4fv

# Function: __glkonlc_Vertex4i
# Declared: Line 950 (Source lines: 950-958)
# Address: 0x0da6c6e0 - 0x0da6c784 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_Vertex4i
.ent __glkonlc_Vertex4i
__glkonlc_Vertex4i:
    # Line 951
    lw	$a6,4136($zero)
    # Line 950
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 951
    slti	$v0,$a6,5
    # Line 950
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,18680
    sd	$gp,8($sp)
    # Line 951
    bnez	$v0,.L0da6c750
    # Line 950
    addu	$gp,$t9,$at
.L0da6c708:
    # Line 951
    lw	$a0,4144($zero)
    # Line 958
    ld	$gp,8($sp)
    # Line 952
    li	$a4,149
    sw	$a4,0($a0)
    # Line 953
    sw	$s8,4($a0)
    # Line 954
    sw	$a1,8($a0)
    # Line 955
    sw	$a2,12($a0)
    # Line 956
    sw	$a3,16($a0)
    # Line 957
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 958
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 957
    addiu	$v0,$v0,5
    # Line 958
    jr	$ra
    # Line 957
    sw	$v0,4148($zero)
.L0da6c750:
    sd	$a3,16($sp)
    # Line 951
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
    b	.L0da6c708
    move	$a6,$v0
.end __glkonlc_Vertex4i

# Function: __glkonlc_Vertex4iv
# Declared: Line 959 (Source lines: 959-967)
# Address: 0x0da6c790 - 0x0da6c82c (Size: 156 bytes, Frame: 32)
.globl __glkonlc_Vertex4iv
.ent __glkonlc_Vertex4iv
__glkonlc_Vertex4iv:
    # Line 960
    lw	$a3,4136($zero)
    # Line 959
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 960
    slti	$v0,$a3,5
    # Line 959
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,18504
    sd	$gp,8($sp)
    # Line 960
    bnez	$v0,.L0da6c810
    # Line 959
    addu	$gp,$t9,$at
.L0da6c7b8:
    # Line 960
    lw	$a0,4144($zero)
    # Line 967
    ld	$gp,8($sp)
    # Line 961
    li	$a6,149
    sw	$a6,0($a0)
    # Line 962
    lw	$a5,0($s8)
    sw	$a5,4($a0)
    # Line 963
    lw	$a4,4($s8)
    sw	$a4,8($a0)
    # Line 964
    lw	$a2,8($s8)
    sw	$a2,12($a0)
    # Line 965
    lw	$a1,12($s8)
    # Line 967
    ld	$s8,0($sp)
    # Line 965
    sw	$a1,16($a0)
    # Line 966
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-5
    sw	$v1,4136($zero)
    # Line 967
    addiu	$sp,$sp,32
    # Line 966
    addiu	$v0,$v0,5
    # Line 967
    jr	$ra
    # Line 966
    sw	$v0,4148($zero)
.L0da6c810:
    # Line 960
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6c7b8
    move	$a3,$v0
.end __glkonlc_Vertex4iv

# Function: __glkonlc_Vertex4s
# Declared: Line 968 (Source lines: 968-974)
# Address: 0x0da6c830 - 0x0da6c8e0 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Vertex4s
.ent __glkonlc_Vertex4s
__glkonlc_Vertex4s:
    # Line 969
    lw	$a6,4136($zero)
    # Line 968
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 969
    slti	$v0,$a6,3
    # Line 968
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,18344
    sd	$gp,8($sp)
    # Line 969
    bnez	$v0,.L0da6c8ac
    # Line 968
    addu	$gp,$t9,$at
.L0da6c858:
    # Line 974
    ld	$gp,8($sp)
    # Line 969
    lw	$a0,4144($zero)
    # Line 970
    sll	$a4,$s8,0x10
    # Line 974
    ld	$s8,0($sp)
    # Line 970
    ori	$a4,$a4,0x96
    sw	$a4,0($a0)
    # Line 971
    sll	$a4,$a1,0x10
    andi	$a2,$a2,0xffff
    # Line 972
    sll	$a1,$a3,0x10
    sw	$a1,8($a0)
    # Line 971
    or	$a2,$a4,$a2
    sw	$a2,4($a0)
    # Line 973
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a6,-3
    sw	$v1,4136($zero)
    # Line 974
    addiu	$sp,$sp,48
    # Line 973
    addiu	$v0,$v0,3
    # Line 974
    jr	$ra
    # Line 973
    sw	$v0,4148($zero)
.L0da6c8ac:
    sd	$a3,16($sp)
    # Line 969
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
    b	.L0da6c858
    move	$a6,$v0
.end __glkonlc_Vertex4s

# Function: __glkonlc_Vertex4sv
# Declared: Line 975 (Source lines: 975-981)
# Address: 0x0da6c8e0 - 0x0da6c984 (Size: 164 bytes, Frame: 32)
.globl __glkonlc_Vertex4sv
.ent __glkonlc_Vertex4sv
__glkonlc_Vertex4sv:
    # Line 976
    lw	$a3,4136($zero)
    # Line 975
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 976
    slti	$v0,$a3,3
    # Line 975
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,18168
    sd	$gp,8($sp)
    # Line 976
    bnez	$v0,.L0da6c968
    # Line 975
    addu	$gp,$t9,$at
.L0da6c908:
    # Line 977
    lh	$a5,0($s8)
    # Line 976
    lw	$a0,4144($zero)
    # Line 977
    sll	$a5,$a5,0x10
    ori	$a5,$a5,0x96
    sw	$a5,0($a0)
    # Line 978
    lh	$a4,2($s8)
    lhu	$a2,4($s8)
    # Line 981
    ld	$gp,8($sp)
    # Line 978
    sll	$a4,$a4,0x10
    or	$a2,$a2,$a4
    sw	$a2,4($a0)
    # Line 979
    lh	$a1,6($s8)
    # Line 981
    ld	$s8,0($sp)
    # Line 979
    sll	$a1,$a1,0x10
    sw	$a1,8($a0)
    # Line 980
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 981
    addiu	$sp,$sp,32
    # Line 980
    addiu	$v0,$v0,3
    # Line 981
    jr	$ra
    # Line 980
    sw	$v0,4148($zero)
.L0da6c968:
    # Line 976
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6c908
    move	$a3,$v0
.end __glkonlc_Vertex4sv

# Function: __glkonlc_ClipPlane
# Declared: Line 982 (Source lines: 982-995)
# Address: 0x0da6c990 - 0x0da6caa4 (Size: 276 bytes, Frame: 192)
.globl __glkonlc_ClipPlane
.ent __glkonlc_ClipPlane
__glkonlc_ClipPlane:
    # Line 982
    addiu	$sp,$sp,-64
    # Line 983
    sltiu	$at,$a0,12288
    # Line 982
    lui	$v0,0x2
    sd	$ra,40($sp)
    addiu	$v0,$v0,17992
    sd	$gp,32($sp)
    # Line 983
    bnez	$at,.L0da6ca90
    # Line 982
    addu	$gp,$t9,$v0
    # Line 983
    sltiu	$v1,$a0,12294
    beqz	$v1,.L0da6ca94
    # Line 984
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 987
    lw	$a4,4136($zero)
    slti	$a2,$a4,10
    beqz	$a2,.L0da6c9e8
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,48($sp)
    sd	$a0,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,56($sp)
    ld	$a1,48($sp)
    move	$a4,$v0
.L0da6c9e8:
    lw	$a5,4144($zero)
    # Line 989
    sw	$a0,4($a5)
    # Line 988
    li	$at,180
    sw	$at,0($a5)
    # Line 990
    ldc1	$f3,0($a1)
    sdc1	$f3,0($sp)
    lw	$t9,0($sp)
    lw	$t8,4($sp)
    sw	$t8,12($a5)
    sw	$t9,8($a5)
    # Line 991
    ldc1	$f2,8($a1)
    sdc1	$f2,8($sp)
    lw	$t3,8($sp)
    lw	$t2,12($sp)
    sw	$t2,20($a5)
    sw	$t3,16($a5)
    # Line 992
    ldc1	$f1,16($a1)
    # Line 995
    ld	$gp,32($sp)
    # Line 992
    sdc1	$f1,16($sp)
    lw	$t1,16($sp)
    lw	$t0,20($sp)
    sw	$t0,28($a5)
    sw	$t1,24($a5)
    # Line 993
    ldc1	$f0,24($a1)
    ld	$ra,40($sp)
    sdc1	$f0,24($sp)
    lw	$a6,28($sp)
    lw	$a7,24($sp)
    sw	$a7,32($a5)
    sw	$a6,36($a5)
    # Line 994
    addiu	$a5,$a5,40
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    addiu	$a4,$a4,-10
    sw	$a4,4136($zero)
    # Line 995
    addiu	$sp,$sp,64
    # Line 994
    addiu	$a3,$a3,10
    # Line 995
    jr	$ra
    # Line 994
    sw	$a3,4148($zero)
.L0da6ca84:
    # Line 995
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6ca90:
    # Line 984
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ca94:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ca84
    ld	$ra,40($sp)
.end __glkonlc_ClipPlane

# Function: __glkonlc_ColorMaterial
# Declared: Line 996 (Source lines: 996-1002)
# Address: 0x0da6cab0 - 0x0da6cb3c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_ColorMaterial
.ent __glkonlc_ColorMaterial
__glkonlc_ColorMaterial:
    # Line 997
    lw	$a4,4136($zero)
    # Line 996
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 997
    slti	$v0,$a4,3
    # Line 996
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,17704
    sd	$gp,8($sp)
    # Line 997
    bnez	$v0,.L0da6cb18
    # Line 996
    addu	$gp,$t9,$at
.L0da6cad8:
    # Line 997
    lw	$a0,4144($zero)
    # Line 1002
    ld	$gp,8($sp)
    # Line 998
    li	$a2,181
    sw	$a2,0($a0)
    # Line 999
    sw	$s8,4($a0)
    # Line 1000
    sw	$a1,8($a0)
    # Line 1001
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1002
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1001
    addiu	$v0,$v0,3
    # Line 1002
    jr	$ra
    # Line 1001
    sw	$v0,4148($zero)
.L0da6cb18:
    # Line 997
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6cad8
    move	$a4,$v0
.end __glkonlc_ColorMaterial

# Function: __glkonlc_CullFace
# Declared: Line 1003 (Source lines: 1003-1014)
# Address: 0x0da6cb40 - 0x0da6cbf8 (Size: 184 bytes, Frame: 32)
.globl __glkonlc_CullFace
.ent __glkonlc_CullFace
__glkonlc_CullFace:
    # Line 1004
    li	$v1,1029
    # Line 1003
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 1004
    li	$at,1028
    # Line 1003
    lui	$v0,0x2
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,17560
    sd	$gp,0($sp)
    # Line 1004
    beq	$a0,$at,.L0da6cb90
    # Line 1003
    addu	$gp,$t9,$v0
    # Line 1004
    beq	$a0,$v1,.L0da6cb90
    li	$a0,1032
    beq	$s0,$a0,.L0da6cb90
    # Line 1007
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1014
    ld	$gp,0($sp)
    b	.L0da6cbec
    ld	$ra,16($sp)
.L0da6cb90:
    # Line 1010
    lw	$a0,4136($zero)
    slti	$a1,$a0,2
    beqz	$a1,.L0da6cbac
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a0,$v0
.L0da6cbac:
    lw	$a4,4144($zero)
    # Line 1014
    ld	$gp,0($sp)
    # Line 1011
    li	$a5,182
    sw	$a5,0($a4)
    # Line 1012
    sw	$s0,4($a4)
    # Line 1013
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$a0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1014
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    # Line 1013
    addiu	$a2,$a2,2
    # Line 1014
    jr	$ra
    # Line 1013
    sw	$a2,4148($zero)
.L0da6cbec:
    # Line 1014
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_CullFace

# Function: __glkonlc_Fogf
# Declared: Line 1015 (Source lines: 1015-1028)
# Address: 0x0da6cc00 - 0x0da6ccc8 (Size: 200 bytes, Frame: 32)
.globl __glkonlc_Fogf
.ent __glkonlc_Fogf
__glkonlc_Fogf:
    # Line 1015
    addiu	$sp,$sp,-32
    # Line 1016
    sltiu	$at,$a0,2913
    # Line 1015
    lui	$v0,0x2
    sd	$ra,16($sp)
    addiu	$v0,$v0,17368
    mov.s	$f4,$f13
    sd	$gp,0($sp)
    # Line 1016
    bnez	$at,.L0da6ccb4
    # Line 1015
    addu	$gp,$t9,$v0
    # Line 1016
    sltiu	$v1,$a0,2918
    beqz	$v1,.L0da6ccb8
    # Line 1017
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1020
    lw	$a3,4136($zero)
    slti	$a1,$a3,6
    beqz	$a1,.L0da6cc5c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,8($sp)
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    ldc1	$f4,8($sp)
    move	$a3,$v0
.L0da6cc5c:
    lw	$a4,4144($zero)
    # Line 1028
    ld	$gp,0($sp)
    # Line 1021
    li	$a5,183
    sw	$a5,0($a4)
    # Line 1022
    sw	$a0,4($a4)
    # Line 1023
    swc1	$f4,8($a4)
    # Line 1024
    sw	$zero,12($a4)
    # Line 1025
    sw	$zero,16($a4)
    # Line 1026
    sw	$zero,20($a4)
    # Line 1027
    addiu	$a4,$a4,24
    sw	$a4,4144($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    addiu	$a3,$a3,-6
    sw	$a3,4136($zero)
    # Line 1028
    addiu	$sp,$sp,32
    # Line 1027
    addiu	$a2,$a2,6
    # Line 1028
    jr	$ra
    # Line 1027
    sw	$a2,4148($zero)
.L0da6cca8:
    # Line 1028
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6ccb4:
    # Line 1017
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ccb8:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6cca8
    ld	$ra,16($sp)
.end __glkonlc_Fogf

# Function: __glkonlc_Fogfv
# Declared: Line 1029 (Source lines: 1029-1043)
# Address: 0x0da6ccd0 - 0x0da6cdac (Size: 220 bytes, Frame: 32)
.globl __glkonlc_Fogfv
.ent __glkonlc_Fogfv
__glkonlc_Fogfv:
    # Line 1030
    sltiu	$v1,$a0,2919
    # Line 1029
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1030
    sltiu	$at,$a0,2913
    # Line 1029
    lui	$v0,0x2
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,17160
    sd	$gp,8($sp)
    # Line 1030
    bnez	$at,.L0da6cd00
    # Line 1029
    addu	$gp,$t9,$v0
    # Line 1030
    bnez	$v1,.L0da6cd1c
.L0da6cd00:
    li	$a0,0x8199
    beq	$s0,$a0,.L0da6cd1c
    # Line 1032
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6cda0
    ld	$ra,16($sp)
.L0da6cd1c:
    # Line 1035
    lw	$a0,4136($zero)
    slti	$a2,$a0,6
    beqz	$a2,.L0da6cd40
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    move	$a0,$v0
.L0da6cd40:
    lw	$a5,4144($zero)
    # Line 1037
    sw	$s0,4($a5)
    # Line 1036
    li	$a6,183
    sw	$a6,0($a5)
    # Line 1038
    lwc1	$f3,0($a1)
    swc1	$f3,8($a5)
    # Line 1039
    lwc1	$f2,4($a1)
    # Line 1043
    ld	$gp,8($sp)
    # Line 1039
    swc1	$f2,12($a5)
    # Line 1040
    lwc1	$f1,8($a1)
    # Line 1043
    ld	$s0,0($sp)
    # Line 1040
    swc1	$f1,16($a5)
    # Line 1041
    lwc1	$f0,12($a1)
    ld	$ra,16($sp)
    swc1	$f0,20($a5)
    # Line 1042
    addiu	$a5,$a5,24
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    addiu	$a4,$a0,-6
    sw	$a4,4136($zero)
    # Line 1043
    addiu	$sp,$sp,32
    # Line 1042
    addiu	$a3,$a3,6
    # Line 1043
    jr	$ra
    # Line 1042
    sw	$a3,4148($zero)
.L0da6cda0:
    # Line 1043
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_Fogfv

# Function: __glkonlc_Fogi
# Declared: Line 1044 (Source lines: 1044-1057)
# Address: 0x0da6cdb0 - 0x0da6ce74 (Size: 196 bytes, Frame: 32)
.globl __glkonlc_Fogi
.ent __glkonlc_Fogi
__glkonlc_Fogi:
    # Line 1044
    addiu	$sp,$sp,-32
    # Line 1045
    sltiu	$at,$a0,2913
    # Line 1044
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,16936
    sd	$gp,0($sp)
    # Line 1045
    bnez	$at,.L0da6ce60
    # Line 1044
    addu	$gp,$t9,$v0
    # Line 1045
    sltiu	$v1,$a0,2918
    beqz	$v1,.L0da6ce64
    # Line 1046
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1049
    lw	$a4,4136($zero)
    slti	$a2,$a4,6
    beqz	$a2,.L0da6ce08
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    ld	$a1,16($sp)
    move	$a4,$v0
.L0da6ce08:
    lw	$a5,4144($zero)
    # Line 1057
    ld	$gp,0($sp)
    # Line 1050
    li	$a6,184
    sw	$a6,0($a5)
    # Line 1051
    sw	$a0,4($a5)
    # Line 1052
    sw	$a1,8($a5)
    # Line 1053
    sw	$zero,12($a5)
    # Line 1054
    sw	$zero,16($a5)
    # Line 1055
    sw	$zero,20($a5)
    # Line 1056
    addiu	$a5,$a5,24
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$a4,-6
    sw	$a4,4136($zero)
    # Line 1057
    addiu	$sp,$sp,32
    # Line 1056
    addiu	$a3,$a3,6
    # Line 1057
    jr	$ra
    # Line 1056
    sw	$a3,4148($zero)
.L0da6ce54:
    # Line 1057
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6ce60:
    # Line 1046
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ce64:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ce54
    ld	$ra,8($sp)
.end __glkonlc_Fogi

# Function: __glkonlc_Fogiv
# Declared: Line 1058 (Source lines: 1058-1072)
# Address: 0x0da6ce80 - 0x0da6cf5c (Size: 220 bytes, Frame: 32)
.globl __glkonlc_Fogiv
.ent __glkonlc_Fogiv
__glkonlc_Fogiv:
    # Line 1059
    sltiu	$v1,$a0,2919
    # Line 1058
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1059
    sltiu	$at,$a0,2913
    # Line 1058
    lui	$v0,0x2
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,16728
    sd	$gp,8($sp)
    # Line 1059
    bnez	$at,.L0da6ceb0
    # Line 1058
    addu	$gp,$t9,$v0
    # Line 1059
    bnez	$v1,.L0da6cecc
.L0da6ceb0:
    li	$a0,0x8199
    beq	$s0,$a0,.L0da6cecc
    # Line 1061
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6cf50
    ld	$ra,16($sp)
.L0da6cecc:
    # Line 1064
    lw	$a0,4136($zero)
    slti	$a2,$a0,6
    beqz	$a2,.L0da6cef0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    move	$a0,$v0
.L0da6cef0:
    lw	$a5,4144($zero)
    # Line 1072
    ld	$gp,8($sp)
    # Line 1066
    sw	$s0,4($a5)
    # Line 1072
    ld	$s0,0($sp)
    ld	$ra,16($sp)
    # Line 1065
    li	$t2,184
    sw	$t2,0($a5)
    # Line 1067
    lw	$t1,0($a1)
    sw	$t1,8($a5)
    # Line 1068
    lw	$t0,4($a1)
    sw	$t0,12($a5)
    # Line 1069
    lw	$a7,8($a1)
    sw	$a7,16($a5)
    # Line 1070
    lw	$a6,12($a1)
    sw	$a6,20($a5)
    # Line 1071
    addiu	$a5,$a5,24
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    addiu	$a4,$a0,-6
    sw	$a4,4136($zero)
    # Line 1072
    addiu	$sp,$sp,32
    # Line 1071
    addiu	$a3,$a3,6
    # Line 1072
    jr	$ra
    # Line 1071
    sw	$a3,4148($zero)
.L0da6cf50:
    # Line 1072
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_Fogiv

# Function: __glkonlc_FrontFace
# Declared: Line 1073 (Source lines: 1073-1083)
# Address: 0x0da6cf60 - 0x0da6d008 (Size: 168 bytes, Frame: 32)
.globl __glkonlc_FrontFace
.ent __glkonlc_FrontFace
__glkonlc_FrontFace:
    # Line 1073
    addiu	$sp,$sp,-32
    # Line 1074
    li	$at,2304
    # Line 1073
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,16504
    sd	$gp,0($sp)
    # Line 1074
    beq	$a0,$at,.L0da6cf9c
    # Line 1073
    addu	$gp,$t9,$v0
    # Line 1074
    li	$v1,2305
    beq	$a0,$v1,.L0da6cf9c
    # Line 1076
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6cffc
    ld	$ra,8($sp)
.L0da6cf9c:
    # Line 1079
    lw	$a3,4136($zero)
    slti	$a1,$a3,2
    beqz	$a1,.L0da6cfc0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    move	$a3,$v0
.L0da6cfc0:
    lw	$a4,4144($zero)
    # Line 1083
    ld	$gp,0($sp)
    # Line 1080
    li	$a5,186
    sw	$a5,0($a4)
    # Line 1081
    sw	$a0,4($a4)
    # Line 1082
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    ld	$ra,8($sp)
    lw	$a2,4148($zero)
    addiu	$a3,$a3,-2
    sw	$a3,4136($zero)
    # Line 1083
    addiu	$sp,$sp,32
    # Line 1082
    addiu	$a2,$a2,2
    # Line 1083
    jr	$ra
    # Line 1082
    sw	$a2,4148($zero)
.L0da6cffc:
    # Line 1083
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_FrontFace

# Function: __glkonlc_Hint
# Declared: Line 1084 (Source lines: 1084-1094)
# Address: 0x0da6d010 - 0x0da6d0c8 (Size: 184 bytes, Frame: 32)
.globl __glkonlc_Hint
.ent __glkonlc_Hint
__glkonlc_Hint:
    # Line 1084
    addiu	$sp,$sp,-32
    # Line 1085
    sltiu	$at,$a1,4352
    # Line 1084
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,16328
    sd	$gp,0($sp)
    # Line 1085
    bnez	$at,.L0da6d0b4
    # Line 1084
    addu	$gp,$t9,$v0
    # Line 1085
    sltiu	$v1,$a1,4355
    beqz	$v1,.L0da6d0b8
    # Line 1086
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1089
    lw	$a4,4136($zero)
    slti	$a2,$a4,3
    beqz	$a2,.L0da6d068
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    ld	$a0,16($sp)
    move	$a4,$v0
.L0da6d068:
    lw	$a5,4144($zero)
    # Line 1094
    ld	$gp,0($sp)
    # Line 1090
    li	$a6,187
    sw	$a6,0($a5)
    # Line 1091
    sw	$a0,4($a5)
    # Line 1092
    sw	$a1,8($a5)
    # Line 1093
    addiu	$a5,$a5,12
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$a4,-3
    sw	$a4,4136($zero)
    # Line 1094
    addiu	$sp,$sp,32
    # Line 1093
    addiu	$a3,$a3,3
    # Line 1094
    jr	$ra
    # Line 1093
    sw	$a3,4148($zero)
.L0da6d0a8:
    # Line 1094
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6d0b4:
    # Line 1086
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6d0b8:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6d0a8
    ld	$ra,8($sp)
.end __glkonlc_Hint

# Function: __glkonlc_Lightf
# Declared: Line 1095 (Source lines: 1095-1109)
# Address: 0x0da6d0d0 - 0x0da6d1a4 (Size: 212 bytes, Frame: 48)
.globl __glkonlc_Lightf
.ent __glkonlc_Lightf
__glkonlc_Lightf:
    # Line 1095
    addiu	$sp,$sp,-48
    # Line 1096
    sltiu	$at,$a1,4613
    # Line 1095
    lui	$v0,0x2
    sd	$ra,16($sp)
    addiu	$v0,$v0,16136
    mov.s	$f4,$f14
    sd	$gp,0($sp)
    # Line 1096
    bnez	$at,.L0da6d190
    # Line 1095
    addu	$gp,$t9,$v0
    # Line 1096
    sltiu	$v1,$a1,4618
    beqz	$v1,.L0da6d194
    # Line 1097
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1100
    lw	$a4,4136($zero)
    slti	$a2,$a4,7
    beqz	$a2,.L0da6d134
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,8($sp)
    sd	$a1,32($sp)
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,32($sp)
    ld	$a0,24($sp)
    ldc1	$f4,8($sp)
    move	$a4,$v0
.L0da6d134:
    lw	$a5,4144($zero)
    # Line 1109
    ld	$gp,0($sp)
    # Line 1101
    li	$a6,7
    sw	$a6,0($a5)
    # Line 1102
    sw	$a0,4($a5)
    # Line 1103
    sw	$a1,8($a5)
    # Line 1104
    swc1	$f4,12($a5)
    # Line 1105
    sw	$zero,16($a5)
    # Line 1106
    sw	$zero,20($a5)
    # Line 1107
    sw	$zero,24($a5)
    # Line 1108
    addiu	$a5,$a5,28
    sw	$a5,4144($zero)
    ld	$ra,16($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$a4,-7
    sw	$a4,4136($zero)
    # Line 1109
    addiu	$sp,$sp,48
    # Line 1108
    addiu	$a3,$a3,7
    # Line 1109
    jr	$ra
    # Line 1108
    sw	$a3,4148($zero)
.L0da6d184:
    # Line 1109
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d190:
    # Line 1097
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6d194:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6d184
    ld	$ra,16($sp)
.end __glkonlc_Lightf

# Function: __glkonlc_Lightfv
# Declared: Line 1110 (Source lines: 1110-1120)
# Address: 0x0da6d1b0 - 0x0da6d264 (Size: 180 bytes, Frame: 48)
.globl __glkonlc_Lightfv
.ent __glkonlc_Lightfv
__glkonlc_Lightfv:
    # Line 1111
    lw	$a5,4136($zero)
    # Line 1110
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1111
    slti	$v0,$a5,7
    # Line 1110
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,15912
    sd	$gp,8($sp)
    # Line 1111
    bnez	$v0,.L0da6d238
    # Line 1110
    addu	$gp,$t9,$at
.L0da6d1d8:
    # Line 1111
    lw	$a0,4144($zero)
    # Line 1114
    sw	$a1,8($a0)
    # Line 1113
    sw	$s8,4($a0)
    # Line 1112
    li	$a3,7
    sw	$a3,0($a0)
    # Line 1115
    lwc1	$f3,0($a2)
    swc1	$f3,12($a0)
    # Line 1116
    lwc1	$f2,4($a2)
    swc1	$f2,16($a0)
    # Line 1117
    lwc1	$f1,8($a2)
    # Line 1120
    ld	$gp,8($sp)
    # Line 1117
    swc1	$f1,20($a0)
    # Line 1118
    lwc1	$f0,12($a2)
    # Line 1120
    ld	$s8,0($sp)
    # Line 1118
    swc1	$f0,24($a0)
    # Line 1119
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-7
    sw	$v1,4136($zero)
    # Line 1120
    addiu	$sp,$sp,48
    # Line 1119
    addiu	$v0,$v0,7
    # Line 1120
    jr	$ra
    # Line 1119
    sw	$v0,4148($zero)
.L0da6d238:
    # Line 1111
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6d1d8
    move	$a5,$v0
.end __glkonlc_Lightfv

# Function: __glkonlc_Lighti
# Declared: Line 1121 (Source lines: 1121-1135)
# Address: 0x0da6d270 - 0x0da6d340 (Size: 208 bytes, Frame: 48)
.globl __glkonlc_Lighti
.ent __glkonlc_Lighti
__glkonlc_Lighti:
    # Line 1121
    addiu	$sp,$sp,-48
    # Line 1122
    sltiu	$at,$a1,4613
    # Line 1121
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,15720
    sd	$gp,0($sp)
    # Line 1122
    bnez	$at,.L0da6d32c
    # Line 1121
    addu	$gp,$t9,$v0
    # Line 1122
    sltiu	$v1,$a1,4618
    beqz	$v1,.L0da6d330
    # Line 1123
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1126
    lw	$a5,4136($zero)
    slti	$a3,$a5,7
    beqz	$a3,.L0da6d2d0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,32($sp)
    ld	$a2,24($sp)
    ld	$a0,16($sp)
    move	$a5,$v0
.L0da6d2d0:
    lw	$a6,4144($zero)
    # Line 1135
    ld	$gp,0($sp)
    # Line 1127
    li	$a7,8
    sw	$a7,0($a6)
    # Line 1128
    sw	$a0,4($a6)
    # Line 1129
    sw	$a1,8($a6)
    # Line 1130
    sw	$a2,12($a6)
    # Line 1131
    sw	$zero,16($a6)
    # Line 1132
    sw	$zero,20($a6)
    # Line 1133
    sw	$zero,24($a6)
    # Line 1134
    addiu	$a6,$a6,28
    sw	$a6,4144($zero)
    ld	$ra,8($sp)
    lw	$a4,4148($zero)
    addiu	$a5,$a5,-7
    sw	$a5,4136($zero)
    # Line 1135
    addiu	$sp,$sp,48
    # Line 1134
    addiu	$a4,$a4,7
    # Line 1135
    jr	$ra
    # Line 1134
    sw	$a4,4148($zero)
.L0da6d320:
    # Line 1135
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d32c:
    # Line 1123
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6d330:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6d320
    ld	$ra,8($sp)
.end __glkonlc_Lighti

# Function: __glkonlc_Lightiv
# Declared: Line 1136 (Source lines: 1136-1146)
# Address: 0x0da6d340 - 0x0da6d3f4 (Size: 180 bytes, Frame: 48)
.globl __glkonlc_Lightiv
.ent __glkonlc_Lightiv
__glkonlc_Lightiv:
    # Line 1137
    lw	$a5,4136($zero)
    # Line 1136
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1137
    slti	$v0,$a5,7
    # Line 1136
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,15512
    sd	$gp,8($sp)
    # Line 1137
    bnez	$v0,.L0da6d3c8
    # Line 1136
    addu	$gp,$t9,$at
.L0da6d368:
    # Line 1137
    lw	$a0,4144($zero)
    # Line 1146
    ld	$gp,8($sp)
    # Line 1139
    sw	$s8,4($a0)
    # Line 1146
    ld	$s8,0($sp)
    # Line 1140
    sw	$a1,8($a0)
    # Line 1138
    li	$a7,8
    sw	$a7,0($a0)
    # Line 1141
    lw	$a6,0($a2)
    sw	$a6,12($a0)
    # Line 1142
    lw	$a4,4($a2)
    sw	$a4,16($a0)
    # Line 1143
    lw	$a3,8($a2)
    sw	$a3,20($a0)
    # Line 1144
    lw	$a1,12($a2)
    sw	$a1,24($a0)
    # Line 1145
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-7
    sw	$v1,4136($zero)
    # Line 1146
    addiu	$sp,$sp,48
    # Line 1145
    addiu	$v0,$v0,7
    # Line 1146
    jr	$ra
    # Line 1145
    sw	$v0,4148($zero)
.L0da6d3c8:
    # Line 1137
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6d368
    move	$a5,$v0
.end __glkonlc_Lightiv

# Function: __glkonlc_LightModelf
# Declared: Line 1147 (Source lines: 1147-1160)
# Address: 0x0da6d400 - 0x0da6d4c8 (Size: 200 bytes, Frame: 32)
.globl __glkonlc_LightModelf
.ent __glkonlc_LightModelf
__glkonlc_LightModelf:
    # Line 1147
    addiu	$sp,$sp,-32
    # Line 1148
    sltiu	$at,$a0,2897
    # Line 1147
    lui	$v0,0x2
    sd	$ra,16($sp)
    addiu	$v0,$v0,15320
    mov.s	$f4,$f13
    sd	$gp,0($sp)
    # Line 1148
    bnez	$at,.L0da6d4b4
    # Line 1147
    addu	$gp,$t9,$v0
    # Line 1148
    sltiu	$v1,$a0,2899
    beqz	$v1,.L0da6d4b8
    # Line 1149
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1152
    lw	$a3,4136($zero)
    slti	$a1,$a3,6
    beqz	$a1,.L0da6d45c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,8($sp)
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    ldc1	$f4,8($sp)
    move	$a3,$v0
.L0da6d45c:
    lw	$a4,4144($zero)
    # Line 1160
    ld	$gp,0($sp)
    # Line 1153
    li	$a5,9
    sw	$a5,0($a4)
    # Line 1154
    sw	$a0,4($a4)
    # Line 1155
    swc1	$f4,8($a4)
    # Line 1156
    sw	$zero,12($a4)
    # Line 1157
    sw	$zero,16($a4)
    # Line 1158
    sw	$zero,20($a4)
    # Line 1159
    addiu	$a4,$a4,24
    sw	$a4,4144($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    addiu	$a3,$a3,-6
    sw	$a3,4136($zero)
    # Line 1160
    addiu	$sp,$sp,32
    # Line 1159
    addiu	$a2,$a2,6
    # Line 1160
    jr	$ra
    # Line 1159
    sw	$a2,4148($zero)
.L0da6d4a8:
    # Line 1160
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6d4b4:
    # Line 1149
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6d4b8:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6d4a8
    ld	$ra,16($sp)
.end __glkonlc_LightModelf

# Function: __glkonlc_LightModelfv
# Declared: Line 1161 (Source lines: 1161-1170)
# Address: 0x0da6d4d0 - 0x0da6d578 (Size: 168 bytes, Frame: 32)
.globl __glkonlc_LightModelfv
.ent __glkonlc_LightModelfv
__glkonlc_LightModelfv:
    # Line 1162
    lw	$a4,4136($zero)
    # Line 1161
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1162
    slti	$v0,$a4,6
    # Line 1161
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,15112
    sd	$gp,8($sp)
    # Line 1162
    bnez	$v0,.L0da6d554
    # Line 1161
    addu	$gp,$t9,$at
.L0da6d4f8:
    # Line 1162
    lw	$a0,4144($zero)
    # Line 1164
    sw	$s8,4($a0)
    # Line 1163
    li	$a2,9
    sw	$a2,0($a0)
    # Line 1165
    lwc1	$f3,0($a1)
    swc1	$f3,8($a0)
    # Line 1166
    lwc1	$f2,4($a1)
    swc1	$f2,12($a0)
    # Line 1167
    lwc1	$f1,8($a1)
    # Line 1170
    ld	$gp,8($sp)
    # Line 1167
    swc1	$f1,16($a0)
    # Line 1168
    lwc1	$f0,12($a1)
    # Line 1170
    ld	$s8,0($sp)
    # Line 1168
    swc1	$f0,20($a0)
    # Line 1169
    addiu	$a0,$a0,24
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-6
    sw	$v1,4136($zero)
    # Line 1170
    addiu	$sp,$sp,32
    # Line 1169
    addiu	$v0,$v0,6
    # Line 1170
    jr	$ra
    # Line 1169
    sw	$v0,4148($zero)
.L0da6d554:
    # Line 1162
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6d4f8
    move	$a4,$v0
.end __glkonlc_LightModelfv

# Function: __glkonlc_LightModeli
# Declared: Line 1171 (Source lines: 1171-1184)
# Address: 0x0da6d580 - 0x0da6d644 (Size: 196 bytes, Frame: 32)
.globl __glkonlc_LightModeli
.ent __glkonlc_LightModeli
__glkonlc_LightModeli:
    # Line 1171
    addiu	$sp,$sp,-32
    # Line 1172
    sltiu	$at,$a0,2897
    # Line 1171
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,14936
    sd	$gp,0($sp)
    # Line 1172
    bnez	$at,.L0da6d630
    # Line 1171
    addu	$gp,$t9,$v0
    # Line 1172
    sltiu	$v1,$a0,2899
    beqz	$v1,.L0da6d634
    # Line 1173
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1176
    lw	$a4,4136($zero)
    slti	$a2,$a4,6
    beqz	$a2,.L0da6d5d8
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    ld	$a1,16($sp)
    move	$a4,$v0
.L0da6d5d8:
    lw	$a5,4144($zero)
    # Line 1184
    ld	$gp,0($sp)
    # Line 1177
    li	$a6,10
    sw	$a6,0($a5)
    # Line 1178
    sw	$a0,4($a5)
    # Line 1179
    sw	$a1,8($a5)
    # Line 1180
    sw	$zero,12($a5)
    # Line 1181
    sw	$zero,16($a5)
    # Line 1182
    sw	$zero,20($a5)
    # Line 1183
    addiu	$a5,$a5,24
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$a4,-6
    sw	$a4,4136($zero)
    # Line 1184
    addiu	$sp,$sp,32
    # Line 1183
    addiu	$a3,$a3,6
    # Line 1184
    jr	$ra
    # Line 1183
    sw	$a3,4148($zero)
.L0da6d624:
    # Line 1184
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6d630:
    # Line 1173
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6d634:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6d624
    ld	$ra,8($sp)
.end __glkonlc_LightModeli

# Function: __glkonlc_LightModeliv
# Declared: Line 1185 (Source lines: 1185-1194)
# Address: 0x0da6d650 - 0x0da6d6f8 (Size: 168 bytes, Frame: 32)
.globl __glkonlc_LightModeliv
.ent __glkonlc_LightModeliv
__glkonlc_LightModeliv:
    # Line 1186
    lw	$a4,4136($zero)
    # Line 1185
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1186
    slti	$v0,$a4,6
    # Line 1185
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,14728
    sd	$gp,8($sp)
    # Line 1186
    bnez	$v0,.L0da6d6d4
    # Line 1185
    addu	$gp,$t9,$at
.L0da6d678:
    # Line 1186
    lw	$a0,4144($zero)
    # Line 1194
    ld	$gp,8($sp)
    # Line 1188
    sw	$s8,4($a0)
    # Line 1194
    ld	$s8,0($sp)
    # Line 1187
    li	$a6,10
    sw	$a6,0($a0)
    # Line 1189
    lw	$a5,0($a1)
    sw	$a5,8($a0)
    # Line 1190
    lw	$a3,4($a1)
    sw	$a3,12($a0)
    # Line 1191
    lw	$a2,8($a1)
    sw	$a2,16($a0)
    # Line 1192
    lw	$a1,12($a1)
    sw	$a1,20($a0)
    # Line 1193
    addiu	$a0,$a0,24
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a4,-6
    sw	$v1,4136($zero)
    # Line 1194
    addiu	$sp,$sp,32
    # Line 1193
    addiu	$v0,$v0,6
    # Line 1194
    jr	$ra
    # Line 1193
    sw	$v0,4148($zero)
.L0da6d6d4:
    # Line 1186
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6d678
    move	$a4,$v0
.end __glkonlc_LightModeliv

# Function: __glkonlc_LineStipple
# Declared: Line 1195 (Source lines: 1195-1201)
# Address: 0x0da6d700 - 0x0da6d78c (Size: 140 bytes, Frame: 32)
.globl __glkonlc_LineStipple
.ent __glkonlc_LineStipple
__glkonlc_LineStipple:
    # Line 1196
    lw	$a4,4136($zero)
    # Line 1195
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1196
    slti	$v0,$a4,3
    # Line 1195
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,14552
    sd	$gp,8($sp)
    # Line 1196
    bnez	$v0,.L0da6d768
    # Line 1195
    addu	$gp,$t9,$at
.L0da6d728:
    # Line 1196
    lw	$a0,4144($zero)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1197
    li	$a2,188
    sw	$a2,0($a0)
    # Line 1198
    sw	$s8,4($a0)
    # Line 1199
    sw	$a1,8($a0)
    # Line 1200
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1201
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1200
    addiu	$v0,$v0,3
    # Line 1201
    jr	$ra
    # Line 1200
    sw	$v0,4148($zero)
.L0da6d768:
    # Line 1196
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ld	$a1,16($sp)
    b	.L0da6d728
    move	$a4,$v0
.end __glkonlc_LineStipple

# Function: __glkonlc_Materialf
# Declared: Line 1202 (Source lines: 1202-1216)
# Address: 0x0da6d790 - 0x0da6d858 (Size: 200 bytes, Frame: 48)
.globl __glkonlc_Materialf
.ent __glkonlc_Materialf
__glkonlc_Materialf:
    # Line 1202
    addiu	$sp,$sp,-48
    li	$at,5633
    lui	$v0,0x2
    sd	$ra,16($sp)
    addiu	$v0,$v0,14408
    mov.s	$f4,$f14
    sd	$gp,0($sp)
    beq	$a1,$at,.L0da6d7c8
    addu	$gp,$t9,$v0
    # Line 1204
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6d84c
    ld	$ra,16($sp)
.L0da6d7c8:
    # Line 1207
    lw	$a4,4136($zero)
    slti	$v1,$a4,7
    beqz	$v1,.L0da6d7fc
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,8($sp)
    sd	$a1,32($sp)
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,32($sp)
    ld	$a0,24($sp)
    ldc1	$f4,8($sp)
    move	$a4,$v0
.L0da6d7fc:
    lw	$a2,4144($zero)
    # Line 1216
    ld	$gp,0($sp)
    # Line 1208
    li	$a3,151
    sw	$a3,0($a2)
    # Line 1209
    sw	$a0,4($a2)
    # Line 1210
    sw	$a1,8($a2)
    # Line 1211
    swc1	$f4,12($a2)
    # Line 1212
    sw	$zero,16($a2)
    # Line 1213
    sw	$zero,20($a2)
    # Line 1214
    sw	$zero,24($a2)
    # Line 1215
    addiu	$a2,$a2,28
    sw	$a2,4144($zero)
    ld	$ra,16($sp)
    lw	$a0,4148($zero)
    addiu	$a1,$a4,-7
    sw	$a1,4136($zero)
    # Line 1216
    addiu	$sp,$sp,48
    # Line 1215
    addiu	$a0,$a0,7
    # Line 1216
    jr	$ra
    # Line 1215
    sw	$a0,4148($zero)
.L0da6d84c:
    # Line 1216
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonlc_Materialf

# Function: __glkonlc_Materialfv
# Declared: Line 1217 (Source lines: 1217-1227)
# Address: 0x0da6d860 - 0x0da6d914 (Size: 180 bytes, Frame: 48)
.globl __glkonlc_Materialfv
.ent __glkonlc_Materialfv
__glkonlc_Materialfv:
    # Line 1218
    lw	$a5,4136($zero)
    # Line 1217
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1218
    slti	$v0,$a5,7
    # Line 1217
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,14200
    sd	$gp,8($sp)
    # Line 1218
    bnez	$v0,.L0da6d8e8
    # Line 1217
    addu	$gp,$t9,$at
.L0da6d888:
    # Line 1218
    lw	$a0,4144($zero)
    # Line 1221
    sw	$a1,8($a0)
    # Line 1220
    sw	$s8,4($a0)
    # Line 1219
    li	$a3,151
    sw	$a3,0($a0)
    # Line 1222
    lwc1	$f3,0($a2)
    swc1	$f3,12($a0)
    # Line 1223
    lwc1	$f2,4($a2)
    swc1	$f2,16($a0)
    # Line 1224
    lwc1	$f1,8($a2)
    # Line 1227
    ld	$gp,8($sp)
    # Line 1224
    swc1	$f1,20($a0)
    # Line 1225
    lwc1	$f0,12($a2)
    # Line 1227
    ld	$s8,0($sp)
    # Line 1225
    swc1	$f0,24($a0)
    # Line 1226
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-7
    sw	$v1,4136($zero)
    # Line 1227
    addiu	$sp,$sp,48
    # Line 1226
    addiu	$v0,$v0,7
    # Line 1227
    jr	$ra
    # Line 1226
    sw	$v0,4148($zero)
.L0da6d8e8:
    # Line 1218
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6d888
    move	$a5,$v0
.end __glkonlc_Materialfv

# Function: __glkonlc_PolygonMode
# Declared: Line 1228 (Source lines: 1228-1243)
# Address: 0x0da6d920 - 0x0da6da20 (Size: 256 bytes, Frame: 32)
.globl __glkonlc_PolygonMode
.ent __glkonlc_PolygonMode
__glkonlc_PolygonMode:
    # Line 1229
    sltiu	$v1,$a0,1030
    # Line 1228
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    move	$s1,$a0
    # Line 1229
    sltiu	$at,$a0,1028
    # Line 1228
    lui	$v0,0x2
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v0,$v0,14008
    # Line 1234
    sltiu	$a2,$s0,6915
    sd	$gp,16($sp)
    # Line 1229
    bnez	$at,.L0da6d960
    # Line 1228
    addu	$gp,$t9,$v0
    # Line 1229
    bnez	$v1,.L0da6d988
    # Line 1234
    sltiu	$a1,$s0,6912
.L0da6d960:
    # Line 1229
    li	$a0,1032
    beq	$s1,$a0,.L0da6d988
    # Line 1234
    sltiu	$a1,$s0,6912
    # Line 1231
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    ld	$s0,0($sp)
    jal	__glsplc_InvalidEnum
    ld	$s1,8($sp)
    b	.L0da6d9fc
    ld	$ra,24($sp)
    # Line 1234
    sltiu	$a1,$s0,6912
.L0da6d988:
    bnez	$a1,.L0da6da0c
    # Line 1235
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1234
    beqz	$a2,.L0da6da0c
    # Line 1235
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1238
    lw	$a0,4136($zero)
    slti	$a3,$a0,3
    beqz	$a3,.L0da6d9b4
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a0,$v0
.L0da6d9b4:
    lw	$a6,4144($zero)
    # Line 1243
    ld	$gp,16($sp)
    # Line 1239
    li	$a7,191
    sw	$a7,0($a6)
    # Line 1240
    sw	$s1,4($a6)
    # Line 1241
    sw	$s0,8($a6)
    # Line 1242
    addiu	$a6,$a6,12
    sw	$a6,4144($zero)
    addiu	$a5,$a0,-3
    sw	$a5,4136($zero)
    # Line 1243
    ld	$s0,0($sp)
    ld	$ra,24($sp)
    # Line 1242
    lw	$a4,4148($zero)
    # Line 1243
    ld	$s1,8($sp)
    addiu	$sp,$sp,32
    # Line 1242
    addiu	$a4,$a4,3
    # Line 1243
    jr	$ra
    # Line 1242
    sw	$a4,4148($zero)
.L0da6d9fc:
    # Line 1243
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 1235
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6da0c:
    ld	$s0,0($sp)
    jal	__glsplc_InvalidEnum
    ld	$s1,8($sp)
    b	.L0da6d9fc
    ld	$ra,24($sp)
.end __glkonlc_PolygonMode

# Function: __glkonlc_Scissor
# Declared: Line 1244 (Source lines: 1244-1260)
# Address: 0x0da6da20 - 0x0da6dafc (Size: 220 bytes, Frame: 48)
.globl __glkonlc_Scissor
.ent __glkonlc_Scissor
__glkonlc_Scissor:
    # Line 1244
    addiu	$sp,$sp,-48
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,13752
    sd	$gp,0($sp)
    bltz	$a2,.L0da6dad8
    addu	$gp,$t9,$at
    # Line 1247
    bltz	$a3,.L0da6daec
    # Line 1250
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 1253
    lw	$a6,4136($zero)
    slti	$v0,$a6,5
    beqz	$v0,.L0da6da84
    nop
    sd	$a1,24($sp)
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    ld	$a0,16($sp)
    move	$a6,$v0
.L0da6da84:
    lw	$a4,4144($zero)
    # Line 1260
    ld	$gp,0($sp)
    # Line 1258
    sw	$a3,16($a4)
    # Line 1257
    sw	$a2,12($a4)
    # Line 1255
    sw	$a0,4($a4)
    # Line 1254
    li	$a5,12
    sw	$a5,0($a4)
    # Line 1256
    sw	$a1,8($a4)
    # Line 1259
    addiu	$a1,$a4,20
    sw	$a1,4144($zero)
    ld	$ra,8($sp)
    lw	$v1,4148($zero)
    addiu	$a0,$a6,-5
    sw	$a0,4136($zero)
    # Line 1260
    addiu	$sp,$sp,48
    # Line 1259
    addiu	$v1,$v1,5
    # Line 1260
    jr	$ra
    # Line 1259
    sw	$v1,4148($zero)
.L0da6dacc:
    # Line 1260
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6dad8:
    # Line 1246
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da6dacc
    ld	$ra,8($sp)
.L0da6daec:
    # Line 1250
    jalr	$t9
    nop
    b	.L0da6dacc
    ld	$ra,8($sp)
.end __glkonlc_Scissor

# Function: __glkonlc_ShadeModel
# Declared: Line 1261 (Source lines: 1261-1266)
# Address: 0x0da6db00 - 0x0da6dbb4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ShadeModel
.ent __glkonlc_ShadeModel
__glkonlc_ShadeModel:
    # Line 1261
    addiu	$sp,$sp,-32
    # Line 1262
    lw	$a2,4136($zero)
    # Line 1263
    li	$a1,192
    # Line 1261
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1262
    slti	$v0,$a2,2
    # Line 1261
    addiu	$at,$at,13528
    # Line 1265
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1262
    bnez	$v0,.L0da6db64
    # Line 1261
    addu	$gp,$t9,$at
    # Line 1262
    lw	$a0,4144($zero)
    # Line 1266
    ld	$gp,8($sp)
    # Line 1263
    sw	$a1,0($a0)
    # Line 1264
    sw	$s8,4($a0)
    # Line 1265
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1266
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1265
    addiu	$v0,$v0,2
    # Line 1266
    jr	$ra
    # Line 1265
    sw	$v0,4148($zero)
.L0da6db64:
    # Line 1262
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1266
    ld	$gp,8($sp)
    # Line 1263
    li	$a5,192
    sw	$a5,0($a4)
    # Line 1264
    sw	$s8,4($a4)
    # Line 1265
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1266
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1265
    addiu	$a2,$a2,2
    # Line 1266
    jr	$ra
    # Line 1265
    sw	$a2,4148($zero)
.end __glkonlc_ShadeModel

# Function: __glkonlc_TexEnvf
# Declared: Line 1267 (Source lines: 1267-1284)
# Address: 0x0da6dbc0 - 0x0da6dc98 (Size: 216 bytes, Frame: 32)
.globl __glkonlc_TexEnvf
.ent __glkonlc_TexEnvf
__glkonlc_TexEnvf:
    # Line 1267
    addiu	$sp,$sp,-32
    li	$at,8960
    lui	$v0,0x2
    # Line 1270
    li	$v1,8704
    sd	$ra,16($sp)
    # Line 1267
    addiu	$v0,$v0,13336
    mov.s	$f4,$f14
    sd	$gp,0($sp)
    beq	$a0,$at,.L0da6dbfc
    addu	$gp,$t9,$v0
    # Line 1269
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6dc8c
    ld	$ra,16($sp)
.L0da6dbfc:
    # Line 1270
    beq	$a1,$v1,.L0da6dc14
    # Line 1273
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6dc8c
    ld	$ra,16($sp)
.L0da6dc14:
    # Line 1276
    lw	$a3,4136($zero)
    slti	$a0,$a3,6
    beqz	$a0,.L0da6dc40
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,8($sp)
    sd	$a1,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    ldc1	$f4,8($sp)
    move	$a3,$v0
.L0da6dc40:
    lw	$a4,4144($zero)
    # Line 1284
    ld	$gp,0($sp)
    # Line 1277
    li	$a5,17
    sw	$a5,0($a4)
    # Line 1278
    sw	$a1,4($a4)
    # Line 1279
    swc1	$f4,8($a4)
    # Line 1280
    sw	$zero,12($a4)
    # Line 1281
    sw	$zero,16($a4)
    # Line 1282
    sw	$zero,20($a4)
    # Line 1283
    addiu	$a4,$a4,24
    sw	$a4,4144($zero)
    ld	$ra,16($sp)
    lw	$a1,4148($zero)
    addiu	$a2,$a3,-6
    sw	$a2,4136($zero)
    # Line 1284
    addiu	$sp,$sp,32
    # Line 1283
    addiu	$a1,$a1,6
    # Line 1284
    jr	$ra
    # Line 1283
    sw	$a1,4148($zero)
.L0da6dc8c:
    # Line 1284
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_TexEnvf

# Function: __glkonlc_TexEnvfv
# Declared: Line 1285 (Source lines: 1285-1303)
# Address: 0x0da6dca0 - 0x0da6dd9c (Size: 252 bytes, Frame: 32)
.globl __glkonlc_TexEnvfv
.ent __glkonlc_TexEnvfv
__glkonlc_TexEnvfv:
    # Line 1290
    sltiu	$v1,$a1,8704
    # Line 1285
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    li	$at,8960
    lui	$v0,0x2
    move	$s0,$a1
    sd	$ra,16($sp)
    addiu	$v0,$v0,13112
    sd	$gp,8($sp)
    beq	$a0,$at,.L0da6dce0
    addu	$gp,$t9,$v0
    # Line 1287
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6dd90
    ld	$ra,16($sp)
.L0da6dce0:
    # Line 1290
    sltiu	$a0,$a1,8706
    bnez	$v1,.L0da6dcf4
    li	$a1,0x80be
    bnez	$a0,.L0da6dd0c
    nop
.L0da6dcf4:
    beq	$s0,$a1,.L0da6dd0c
    # Line 1292
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6dd90
    ld	$ra,16($sp)
.L0da6dd0c:
    # Line 1295
    lw	$a1,4136($zero)
    slti	$a3,$a1,6
    beqz	$a3,.L0da6dd30
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    move	$a1,$v0
.L0da6dd30:
    lw	$a6,4144($zero)
    # Line 1297
    sw	$s0,4($a6)
    # Line 1296
    li	$a7,17
    sw	$a7,0($a6)
    # Line 1298
    lwc1	$f3,0($a2)
    swc1	$f3,8($a6)
    # Line 1299
    lwc1	$f2,4($a2)
    # Line 1303
    ld	$gp,8($sp)
    # Line 1299
    swc1	$f2,12($a6)
    # Line 1300
    lwc1	$f1,8($a2)
    # Line 1303
    ld	$s0,0($sp)
    # Line 1300
    swc1	$f1,16($a6)
    # Line 1301
    lwc1	$f0,12($a2)
    ld	$ra,16($sp)
    swc1	$f0,20($a6)
    # Line 1302
    addiu	$a6,$a6,24
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    addiu	$a5,$a1,-6
    sw	$a5,4136($zero)
    # Line 1303
    addiu	$sp,$sp,32
    # Line 1302
    addiu	$a4,$a4,6
    # Line 1303
    jr	$ra
    # Line 1302
    sw	$a4,4148($zero)
.L0da6dd90:
    # Line 1303
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_TexEnvfv

# Function: __glkonlc_TexEnvi
# Declared: Line 1304 (Source lines: 1304-1321)
# Address: 0x0da6dda0 - 0x0da6de74 (Size: 212 bytes, Frame: 32)
.globl __glkonlc_TexEnvi
.ent __glkonlc_TexEnvi
__glkonlc_TexEnvi:
    # Line 1304
    addiu	$sp,$sp,-32
    li	$at,8960
    lui	$v0,0x2
    # Line 1307
    li	$v1,8704
    sd	$ra,8($sp)
    # Line 1304
    addiu	$v0,$v0,12856
    sd	$gp,0($sp)
    beq	$a0,$at,.L0da6ddd8
    addu	$gp,$t9,$v0
    # Line 1306
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6de68
    ld	$ra,8($sp)
.L0da6ddd8:
    # Line 1307
    beq	$a1,$v1,.L0da6ddf0
    # Line 1310
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6de68
    ld	$ra,8($sp)
.L0da6ddf0:
    # Line 1313
    lw	$a4,4136($zero)
    slti	$a0,$a4,6
    beqz	$a0,.L0da6de1c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    move	$a4,$v0
.L0da6de1c:
    lw	$a3,4144($zero)
    # Line 1321
    ld	$gp,0($sp)
    # Line 1314
    li	$a5,18
    sw	$a5,0($a3)
    # Line 1315
    sw	$a1,4($a3)
    # Line 1316
    sw	$a2,8($a3)
    # Line 1317
    sw	$zero,12($a3)
    # Line 1318
    sw	$zero,16($a3)
    # Line 1319
    sw	$zero,20($a3)
    # Line 1320
    addiu	$a3,$a3,24
    sw	$a3,4144($zero)
    ld	$ra,8($sp)
    lw	$a1,4148($zero)
    addiu	$a2,$a4,-6
    sw	$a2,4136($zero)
    # Line 1321
    addiu	$sp,$sp,32
    # Line 1320
    addiu	$a1,$a1,6
    # Line 1321
    jr	$ra
    # Line 1320
    sw	$a1,4148($zero)
.L0da6de68:
    # Line 1321
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_TexEnvi

# Function: __glkonlc_TexEnviv
# Declared: Line 1322 (Source lines: 1322-1340)
# Address: 0x0da6de80 - 0x0da6df7c (Size: 252 bytes, Frame: 32)
.globl __glkonlc_TexEnviv
.ent __glkonlc_TexEnviv
__glkonlc_TexEnviv:
    # Line 1327
    sltiu	$v1,$a1,8704
    # Line 1322
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    li	$at,8960
    lui	$v0,0x2
    move	$s0,$a1
    sd	$ra,16($sp)
    addiu	$v0,$v0,12632
    sd	$gp,8($sp)
    beq	$a0,$at,.L0da6dec0
    addu	$gp,$t9,$v0
    # Line 1324
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6df70
    ld	$ra,16($sp)
.L0da6dec0:
    # Line 1327
    sltiu	$a0,$a1,8706
    bnez	$v1,.L0da6ded4
    li	$a1,0x80be
    bnez	$a0,.L0da6deec
    nop
.L0da6ded4:
    beq	$s0,$a1,.L0da6deec
    # Line 1329
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6df70
    ld	$ra,16($sp)
.L0da6deec:
    # Line 1332
    lw	$a1,4136($zero)
    slti	$a3,$a1,6
    beqz	$a3,.L0da6df10
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    move	$a1,$v0
.L0da6df10:
    lw	$a6,4144($zero)
    # Line 1340
    ld	$gp,8($sp)
    # Line 1334
    sw	$s0,4($a6)
    # Line 1340
    ld	$s0,0($sp)
    ld	$ra,16($sp)
    # Line 1333
    li	$t3,18
    sw	$t3,0($a6)
    # Line 1335
    lw	$t2,0($a2)
    sw	$t2,8($a6)
    # Line 1336
    lw	$t1,4($a2)
    sw	$t1,12($a6)
    # Line 1337
    lw	$t0,8($a2)
    sw	$t0,16($a6)
    # Line 1338
    lw	$a7,12($a2)
    sw	$a7,20($a6)
    # Line 1339
    addiu	$a6,$a6,24
    sw	$a6,4144($zero)
    lw	$a4,4148($zero)
    addiu	$a5,$a1,-6
    sw	$a5,4136($zero)
    # Line 1340
    addiu	$sp,$sp,32
    # Line 1339
    addiu	$a4,$a4,6
    # Line 1340
    jr	$ra
    # Line 1339
    sw	$a4,4148($zero)
.L0da6df70:
    # Line 1340
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_TexEnviv

# Function: __glkonlc_TexGend
# Declared: Line 1341 (Source lines: 1341-1354)
# Address: 0x0da6df80 - 0x0da6e038 (Size: 184 bytes, Frame: 48)
.globl __glkonlc_TexGend
.ent __glkonlc_TexGend
__glkonlc_TexGend:
    # Line 1342
    lw	$a4,4136($zero)
    # Line 1341
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    lui	$at,0x2
    # Line 1342
    slti	$v0,$a4,10
    # Line 1341
    move	$s8,$a0
    sdc1	$f30,0($sp)
    addiu	$at,$at,12376
    mov.d	$f30,$f14
    sd	$gp,16($sp)
    # Line 1342
    bnez	$v0,.L0da6e014
    # Line 1341
    addu	$gp,$t9,$at
.L0da6dfb0:
    # Line 1354
    ld	$gp,16($sp)
    # Line 1342
    lw	$a0,4144($zero)
    # Line 1346
    trunc.w.d	$f0,$f30
    # Line 1354
    ldc1	$f30,0($sp)
    # Line 1343
    li	$a2,20
    sw	$a2,0($a0)
    # Line 1344
    sw	$s8,4($a0)
    # Line 1345
    sw	$a1,8($a0)
    # Line 1346
    swc1	$f0,12($a0)
    # Line 1347
    sw	$zero,16($a0)
    # Line 1348
    sw	$zero,20($a0)
    # Line 1349
    sw	$zero,24($a0)
    # Line 1350
    sw	$zero,28($a0)
    # Line 1351
    sw	$zero,32($a0)
    # Line 1352
    sw	$zero,36($a0)
    # Line 1353
    addiu	$a0,$a0,40
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-10
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1354
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    # Line 1353
    addiu	$v0,$v0,10
    # Line 1354
    jr	$ra
    # Line 1353
    sw	$v0,4148($zero)
.L0da6e014:
    # Line 1342
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    b	.L0da6dfb0
    move	$a4,$v0
.end __glkonlc_TexGend

# Function: __glkonlc_TexGenf
# Declared: Line 1355 (Source lines: 1355-1368)
# Address: 0x0da6e040 - 0x0da6e0f8 (Size: 184 bytes, Frame: 48)
.globl __glkonlc_TexGenf
.ent __glkonlc_TexGenf
__glkonlc_TexGenf:
    # Line 1356
    lw	$a4,4136($zero)
    # Line 1355
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    lui	$at,0x2
    # Line 1356
    slti	$v0,$a4,10
    # Line 1355
    move	$s8,$a0
    sdc1	$f30,0($sp)
    addiu	$at,$at,12184
    mov.s	$f30,$f14
    sd	$gp,16($sp)
    # Line 1356
    bnez	$v0,.L0da6e0d4
    # Line 1355
    addu	$gp,$t9,$at
.L0da6e070:
    # Line 1368
    ld	$gp,16($sp)
    # Line 1356
    lw	$a0,4144($zero)
    # Line 1360
    trunc.w.s	$f0,$f30
    # Line 1368
    ldc1	$f30,0($sp)
    # Line 1357
    li	$a2,20
    sw	$a2,0($a0)
    # Line 1358
    sw	$s8,4($a0)
    # Line 1359
    sw	$a1,8($a0)
    # Line 1360
    swc1	$f0,12($a0)
    # Line 1361
    sw	$zero,16($a0)
    # Line 1362
    sw	$zero,20($a0)
    # Line 1363
    sw	$zero,24($a0)
    # Line 1364
    sw	$zero,28($a0)
    # Line 1365
    sw	$zero,32($a0)
    # Line 1366
    sw	$zero,36($a0)
    # Line 1367
    addiu	$a0,$a0,40
    sw	$a0,4144($zero)
    addiu	$v1,$a4,-10
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1368
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    # Line 1367
    addiu	$v0,$v0,10
    # Line 1368
    jr	$ra
    # Line 1367
    sw	$v0,4148($zero)
.L0da6e0d4:
    # Line 1356
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    b	.L0da6e070
    move	$a4,$v0
.end __glkonlc_TexGenf

# Function: __glkonlc_TexGeni
# Declared: Line 1369 (Source lines: 1369-1382)
# Address: 0x0da6e100 - 0x0da6e1b0 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_TexGeni
.ent __glkonlc_TexGeni
__glkonlc_TexGeni:
    # Line 1370
    lw	$a5,4136($zero)
    # Line 1369
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1370
    slti	$v0,$a5,10
    # Line 1369
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,11992
    sd	$gp,8($sp)
    # Line 1370
    bnez	$v0,.L0da6e184
    # Line 1369
    addu	$gp,$t9,$at
.L0da6e128:
    # Line 1370
    lw	$a0,4144($zero)
    # Line 1382
    ld	$gp,8($sp)
    # Line 1371
    li	$a3,20
    sw	$a3,0($a0)
    # Line 1372
    sw	$s8,4($a0)
    # Line 1373
    sw	$a1,8($a0)
    # Line 1374
    sw	$a2,12($a0)
    # Line 1375
    sw	$zero,16($a0)
    # Line 1376
    sw	$zero,20($a0)
    # Line 1377
    sw	$zero,24($a0)
    # Line 1378
    sw	$zero,28($a0)
    # Line 1379
    sw	$zero,32($a0)
    # Line 1380
    sw	$zero,36($a0)
    # Line 1381
    addiu	$a0,$a0,40
    sw	$a0,4144($zero)
    addiu	$v1,$a5,-10
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1382
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 1381
    addiu	$v0,$v0,10
    # Line 1382
    jr	$ra
    # Line 1381
    sw	$v0,4148($zero)
.L0da6e184:
    # Line 1370
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da6e128
    move	$a5,$v0
.end __glkonlc_TexGeni

# Function: __glkonlc_InitNames
# Declared: Line 1383 (Source lines: 1383-1388)
# Address: 0x0da6e1b0 - 0x0da6e254 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_InitNames
.ent __glkonlc_InitNames
__glkonlc_InitNames:
    # Line 1384
    lw	$a1,4136($zero)
    # Line 1383
    lui	$at,0x2
    # Line 1384
    slti	$v0,$a1,2
    # Line 1383
    addiu	$sp,$sp,-16
    addiu	$at,$at,11816
    sd	$gp,0($sp)
    # Line 1384
    bnez	$v0,.L0da6e208
    # Line 1383
    addu	$gp,$t9,$at
    # Line 1384
    lw	$a0,4144($zero)
    # Line 1388
    ld	$gp,0($sp)
    # Line 1385
    li	$a2,268
    sw	$a2,0($a0)
    # Line 1386
    sw	$zero,4($a0)
    # Line 1387
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1388
    addiu	$sp,$sp,16
    # Line 1387
    addiu	$v0,$v0,2
    # Line 1388
    jr	$ra
    # Line 1387
    sw	$v0,4148($zero)
.L0da6e208:
    # Line 1384
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1388
    ld	$gp,0($sp)
    # Line 1385
    li	$a6,268
    sw	$a6,0($a5)
    # Line 1386
    sw	$zero,4($a5)
    # Line 1387
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1388
    addiu	$sp,$sp,16
    # Line 1387
    addiu	$a3,$a3,2
    # Line 1388
    jr	$ra
    # Line 1387
    sw	$a3,4148($zero)
.end __glkonlc_InitNames

# Function: __glkonlc_LoadName
# Declared: Line 1389 (Source lines: 1389-1394)
# Address: 0x0da6e260 - 0x0da6e314 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_LoadName
.ent __glkonlc_LoadName
__glkonlc_LoadName:
    # Line 1389
    addiu	$sp,$sp,-32
    # Line 1390
    lw	$a2,4136($zero)
    # Line 1391
    li	$a1,269
    # Line 1389
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1390
    slti	$v0,$a2,2
    # Line 1389
    addiu	$at,$at,11640
    # Line 1393
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1390
    bnez	$v0,.L0da6e2c4
    # Line 1389
    addu	$gp,$t9,$at
    # Line 1390
    lw	$a0,4144($zero)
    # Line 1394
    ld	$gp,8($sp)
    # Line 1391
    sw	$a1,0($a0)
    # Line 1392
    sw	$s8,4($a0)
    # Line 1393
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1394
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1393
    addiu	$v0,$v0,2
    # Line 1394
    jr	$ra
    # Line 1393
    sw	$v0,4148($zero)
.L0da6e2c4:
    # Line 1390
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1394
    ld	$gp,8($sp)
    # Line 1391
    li	$a5,269
    sw	$a5,0($a4)
    # Line 1392
    sw	$s8,4($a4)
    # Line 1393
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1394
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1393
    addiu	$a2,$a2,2
    # Line 1394
    jr	$ra
    # Line 1393
    sw	$a2,4148($zero)
.end __glkonlc_LoadName

# Function: __glkonlc_PassThrough
# Declared: Line 1395 (Source lines: 1395-1400)
# Address: 0x0da6e320 - 0x0da6e3d4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_PassThrough
.ent __glkonlc_PassThrough
__glkonlc_PassThrough:
    # Line 1396
    lw	$a1,4136($zero)
    # Line 1397
    li	$a2,193
    # Line 1395
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1396
    slti	$v0,$a1,2
    # Line 1395
    sdc1	$f30,0($sp)
    addiu	$at,$at,11448
    # Line 1399
    addiu	$v1,$a1,-2
    # Line 1395
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1396
    bnez	$v0,.L0da6e384
    # Line 1395
    addu	$gp,$t9,$at
    # Line 1400
    ld	$gp,8($sp)
    # Line 1396
    lw	$a0,4144($zero)
    # Line 1400
    ldc1	$f30,0($sp)
    # Line 1397
    sw	$a2,0($a0)
    # Line 1398
    swc1	$f12,4($a0)
    # Line 1399
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 1400
    addiu	$sp,$sp,32
    # Line 1399
    addiu	$v0,$v0,2
    # Line 1400
    jr	$ra
    # Line 1399
    sw	$v0,4148($zero)
.L0da6e384:
    # Line 1396
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1400
    ld	$gp,8($sp)
    # Line 1397
    li	$a6,193
    sw	$a6,0($a5)
    # Line 1398
    swc1	$f30,4($a5)
    # Line 1399
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    ld	$ra,16($sp)
    lw	$a3,4148($zero)
    # Line 1400
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 1399
    addiu	$a3,$a3,2
    # Line 1400
    jr	$ra
    # Line 1399
    sw	$a3,4148($zero)
.end __glkonlc_PassThrough

# Function: __glkonlc_PopName
# Declared: Line 1401 (Source lines: 1401-1406)
# Address: 0x0da6e3e0 - 0x0da6e484 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_PopName
.ent __glkonlc_PopName
__glkonlc_PopName:
    # Line 1402
    lw	$a1,4136($zero)
    # Line 1401
    lui	$at,0x2
    # Line 1402
    slti	$v0,$a1,2
    # Line 1401
    addiu	$sp,$sp,-16
    addiu	$at,$at,11256
    sd	$gp,0($sp)
    # Line 1402
    bnez	$v0,.L0da6e438
    # Line 1401
    addu	$gp,$t9,$at
    # Line 1402
    lw	$a0,4144($zero)
    # Line 1406
    ld	$gp,0($sp)
    # Line 1403
    li	$a2,194
    sw	$a2,0($a0)
    # Line 1404
    sw	$zero,4($a0)
    # Line 1405
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1406
    addiu	$sp,$sp,16
    # Line 1405
    addiu	$v0,$v0,2
    # Line 1406
    jr	$ra
    # Line 1405
    sw	$v0,4148($zero)
.L0da6e438:
    # Line 1402
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1406
    ld	$gp,0($sp)
    # Line 1403
    li	$a6,194
    sw	$a6,0($a5)
    # Line 1404
    sw	$zero,4($a5)
    # Line 1405
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1406
    addiu	$sp,$sp,16
    # Line 1405
    addiu	$a3,$a3,2
    # Line 1406
    jr	$ra
    # Line 1405
    sw	$a3,4148($zero)
.end __glkonlc_PopName

# Function: __glkonlc_PushName
# Declared: Line 1407 (Source lines: 1407-1412)
# Address: 0x0da6e490 - 0x0da6e544 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_PushName
.ent __glkonlc_PushName
__glkonlc_PushName:
    # Line 1407
    addiu	$sp,$sp,-32
    # Line 1408
    lw	$a2,4136($zero)
    # Line 1409
    li	$a1,195
    # Line 1407
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1408
    slti	$v0,$a2,2
    # Line 1407
    addiu	$at,$at,11080
    # Line 1411
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1408
    bnez	$v0,.L0da6e4f4
    # Line 1407
    addu	$gp,$t9,$at
    # Line 1408
    lw	$a0,4144($zero)
    # Line 1412
    ld	$gp,8($sp)
    # Line 1409
    sw	$a1,0($a0)
    # Line 1410
    sw	$s8,4($a0)
    # Line 1411
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1412
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1411
    addiu	$v0,$v0,2
    # Line 1412
    jr	$ra
    # Line 1411
    sw	$v0,4148($zero)
.L0da6e4f4:
    # Line 1408
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1412
    ld	$gp,8($sp)
    # Line 1409
    li	$a5,195
    sw	$a5,0($a4)
    # Line 1410
    sw	$s8,4($a4)
    # Line 1411
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1412
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1411
    addiu	$a2,$a2,2
    # Line 1412
    jr	$ra
    # Line 1411
    sw	$a2,4148($zero)
.end __glkonlc_PushName

# Function: __glkonlc_DrawBuffer
# Declared: Line 1413 (Source lines: 1413-1418)
# Address: 0x0da6e550 - 0x0da6e604 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_DrawBuffer
.ent __glkonlc_DrawBuffer
__glkonlc_DrawBuffer:
    # Line 1413
    addiu	$sp,$sp,-32
    # Line 1414
    lw	$a2,4136($zero)
    # Line 1415
    li	$a1,196
    # Line 1413
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1414
    slti	$v0,$a2,2
    # Line 1413
    addiu	$at,$at,10888
    # Line 1417
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1414
    bnez	$v0,.L0da6e5b4
    # Line 1413
    addu	$gp,$t9,$at
    # Line 1414
    lw	$a0,4144($zero)
    # Line 1418
    ld	$gp,8($sp)
    # Line 1415
    sw	$a1,0($a0)
    # Line 1416
    sw	$s8,4($a0)
    # Line 1417
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1418
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1417
    addiu	$v0,$v0,2
    # Line 1418
    jr	$ra
    # Line 1417
    sw	$v0,4148($zero)
.L0da6e5b4:
    # Line 1414
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1418
    ld	$gp,8($sp)
    # Line 1415
    li	$a5,196
    sw	$a5,0($a4)
    # Line 1416
    sw	$s8,4($a4)
    # Line 1417
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1418
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1417
    addiu	$a2,$a2,2
    # Line 1418
    jr	$ra
    # Line 1417
    sw	$a2,4148($zero)
.end __glkonlc_DrawBuffer

# Function: __glkonlc_ClearIndex
# Declared: Line 1419 (Source lines: 1419-1424)
# Address: 0x0da6e610 - 0x0da6e6c4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ClearIndex
.ent __glkonlc_ClearIndex
__glkonlc_ClearIndex:
    # Line 1420
    lw	$a1,4136($zero)
    # Line 1421
    li	$a2,28
    # Line 1419
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1420
    slti	$v0,$a1,2
    # Line 1419
    sdc1	$f30,0($sp)
    addiu	$at,$at,10696
    # Line 1423
    addiu	$v1,$a1,-2
    # Line 1419
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1420
    bnez	$v0,.L0da6e674
    # Line 1419
    addu	$gp,$t9,$at
    # Line 1424
    ld	$gp,8($sp)
    # Line 1420
    lw	$a0,4144($zero)
    # Line 1424
    ldc1	$f30,0($sp)
    # Line 1421
    sw	$a2,0($a0)
    # Line 1422
    swc1	$f12,4($a0)
    # Line 1423
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    sw	$v1,4136($zero)
    # Line 1424
    addiu	$sp,$sp,32
    # Line 1423
    addiu	$v0,$v0,2
    # Line 1424
    jr	$ra
    # Line 1423
    sw	$v0,4148($zero)
.L0da6e674:
    # Line 1420
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1424
    ld	$gp,8($sp)
    # Line 1421
    li	$a6,28
    sw	$a6,0($a5)
    # Line 1422
    swc1	$f30,4($a5)
    # Line 1423
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    ld	$ra,16($sp)
    lw	$a3,4148($zero)
    # Line 1424
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 1423
    addiu	$a3,$a3,2
    # Line 1424
    jr	$ra
    # Line 1423
    sw	$a3,4148($zero)
.end __glkonlc_ClearIndex

# Function: __glkonlc_ClearStencil
# Declared: Line 1425 (Source lines: 1425-1430)
# Address: 0x0da6e6d0 - 0x0da6e784 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ClearStencil
.ent __glkonlc_ClearStencil
__glkonlc_ClearStencil:
    # Line 1425
    addiu	$sp,$sp,-32
    # Line 1426
    lw	$a2,4136($zero)
    # Line 1427
    li	$a1,30
    # Line 1425
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1426
    slti	$v0,$a2,2
    # Line 1425
    addiu	$at,$at,10504
    # Line 1429
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1426
    bnez	$v0,.L0da6e734
    # Line 1425
    addu	$gp,$t9,$at
    # Line 1426
    lw	$a0,4144($zero)
    # Line 1430
    ld	$gp,8($sp)
    # Line 1427
    sw	$a1,0($a0)
    # Line 1428
    sw	$s8,4($a0)
    # Line 1429
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1430
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1429
    addiu	$v0,$v0,2
    # Line 1430
    jr	$ra
    # Line 1429
    sw	$v0,4148($zero)
.L0da6e734:
    # Line 1426
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1430
    ld	$gp,8($sp)
    # Line 1427
    li	$a5,30
    sw	$a5,0($a4)
    # Line 1428
    sw	$s8,4($a4)
    # Line 1429
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1430
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1429
    addiu	$a2,$a2,2
    # Line 1430
    jr	$ra
    # Line 1429
    sw	$a2,4148($zero)
.end __glkonlc_ClearStencil

# Function: __glkonlc_StencilMask
# Declared: Line 1431 (Source lines: 1431-1436)
# Address: 0x0da6e790 - 0x0da6e844 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_StencilMask
.ent __glkonlc_StencilMask
__glkonlc_StencilMask:
    # Line 1431
    addiu	$sp,$sp,-32
    # Line 1432
    lw	$a2,4136($zero)
    # Line 1433
    li	$a1,32
    # Line 1431
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1432
    slti	$v0,$a2,2
    # Line 1431
    addiu	$at,$at,10312
    # Line 1435
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1432
    bnez	$v0,.L0da6e7f4
    # Line 1431
    addu	$gp,$t9,$at
    # Line 1432
    lw	$a0,4144($zero)
    # Line 1436
    ld	$gp,8($sp)
    # Line 1433
    sw	$a1,0($a0)
    # Line 1434
    sw	$s8,4($a0)
    # Line 1435
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1436
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1435
    addiu	$v0,$v0,2
    # Line 1436
    jr	$ra
    # Line 1435
    sw	$v0,4148($zero)
.L0da6e7f4:
    # Line 1432
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1436
    ld	$gp,8($sp)
    # Line 1433
    li	$a5,32
    sw	$a5,0($a4)
    # Line 1434
    sw	$s8,4($a4)
    # Line 1435
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1436
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1435
    addiu	$a2,$a2,2
    # Line 1436
    jr	$ra
    # Line 1435
    sw	$a2,4148($zero)
.end __glkonlc_StencilMask

# Function: __glkonlc_ColorMask
# Declared: Line 1437 (Source lines: 1437-1445)
# Address: 0x0da6e850 - 0x0da6e8f4 (Size: 164 bytes, Frame: 48)
.globl __glkonlc_ColorMask
.ent __glkonlc_ColorMask
__glkonlc_ColorMask:
    # Line 1438
    lw	$a6,4136($zero)
    # Line 1437
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1438
    slti	$v0,$a6,5
    # Line 1437
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,10120
    sd	$gp,8($sp)
    # Line 1438
    bnez	$v0,.L0da6e8c0
    # Line 1437
    addu	$gp,$t9,$at
.L0da6e878:
    # Line 1438
    lw	$a0,4144($zero)
    # Line 1445
    ld	$gp,8($sp)
    # Line 1439
    li	$a4,33
    sw	$a4,0($a0)
    # Line 1440
    sw	$s8,4($a0)
    # Line 1441
    sw	$a1,8($a0)
    # Line 1442
    sw	$a2,12($a0)
    # Line 1443
    sw	$a3,16($a0)
    # Line 1444
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a6,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1445
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 1444
    addiu	$v0,$v0,5
    # Line 1445
    jr	$ra
    # Line 1444
    sw	$v0,4148($zero)
.L0da6e8c0:
    sd	$a3,16($sp)
    # Line 1438
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
    b	.L0da6e878
    move	$a6,$v0
.end __glkonlc_ColorMask

# Function: __glkonlc_DepthMask
# Declared: Line 1446 (Source lines: 1446-1451)
# Address: 0x0da6e900 - 0x0da6e9b4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_DepthMask
.ent __glkonlc_DepthMask
__glkonlc_DepthMask:
    # Line 1446
    addiu	$sp,$sp,-32
    # Line 1447
    lw	$a2,4136($zero)
    # Line 1448
    li	$a1,34
    # Line 1446
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1447
    slti	$v0,$a2,2
    # Line 1446
    addiu	$at,$at,9944
    # Line 1450
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1447
    bnez	$v0,.L0da6e964
    # Line 1446
    addu	$gp,$t9,$at
    # Line 1447
    lw	$a0,4144($zero)
    # Line 1451
    ld	$gp,8($sp)
    # Line 1448
    sw	$a1,0($a0)
    # Line 1449
    sw	$s8,4($a0)
    # Line 1450
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1451
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1450
    addiu	$v0,$v0,2
    # Line 1451
    jr	$ra
    # Line 1450
    sw	$v0,4148($zero)
.L0da6e964:
    # Line 1447
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1451
    ld	$gp,8($sp)
    # Line 1448
    li	$a5,34
    sw	$a5,0($a4)
    # Line 1449
    sw	$s8,4($a4)
    # Line 1450
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1451
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1450
    addiu	$a2,$a2,2
    # Line 1451
    jr	$ra
    # Line 1450
    sw	$a2,4148($zero)
.end __glkonlc_DepthMask

# Function: __glkonlc_IndexMask
# Declared: Line 1452 (Source lines: 1452-1457)
# Address: 0x0da6e9c0 - 0x0da6ea74 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_IndexMask
.ent __glkonlc_IndexMask
__glkonlc_IndexMask:
    # Line 1452
    addiu	$sp,$sp,-32
    # Line 1453
    lw	$a2,4136($zero)
    # Line 1454
    li	$a1,35
    # Line 1452
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1453
    slti	$v0,$a2,2
    # Line 1452
    addiu	$at,$at,9752
    # Line 1456
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1453
    bnez	$v0,.L0da6ea24
    # Line 1452
    addu	$gp,$t9,$at
    # Line 1453
    lw	$a0,4144($zero)
    # Line 1457
    ld	$gp,8($sp)
    # Line 1454
    sw	$a1,0($a0)
    # Line 1455
    sw	$s8,4($a0)
    # Line 1456
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1457
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1456
    addiu	$v0,$v0,2
    # Line 1457
    jr	$ra
    # Line 1456
    sw	$v0,4148($zero)
.L0da6ea24:
    # Line 1453
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1457
    ld	$gp,8($sp)
    # Line 1454
    li	$a5,35
    sw	$a5,0($a4)
    # Line 1455
    sw	$s8,4($a4)
    # Line 1456
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1457
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1456
    addiu	$a2,$a2,2
    # Line 1457
    jr	$ra
    # Line 1456
    sw	$a2,4148($zero)
.end __glkonlc_IndexMask

# Function: __glkonlc_Accum
# Declared: Line 1458 (Source lines: 1458-1464)
# Address: 0x0da6ea80 - 0x0da6eb10 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_Accum
.ent __glkonlc_Accum
__glkonlc_Accum:
    # Line 1459
    lw	$a3,4136($zero)
    # Line 1458
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0x2
    # Line 1459
    slti	$v0,$a3,3
    # Line 1458
    move	$s8,$a0
    sdc1	$f30,0($sp)
    addiu	$at,$at,9560
    mov.s	$f30,$f13
    sd	$gp,16($sp)
    # Line 1459
    bnez	$v0,.L0da6eaf4
    # Line 1458
    addu	$gp,$t9,$at
.L0da6eab0:
    # Line 1459
    lw	$a0,4144($zero)
    # Line 1464
    ld	$gp,16($sp)
    # Line 1460
    li	$a1,197
    sw	$a1,0($a0)
    # Line 1461
    sw	$s8,4($a0)
    # Line 1462
    swc1	$f30,8($a0)
    # Line 1463
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a3,-3
    sw	$v1,4136($zero)
    # Line 1464
    ld	$s8,8($sp)
    # Line 1463
    lw	$v0,4148($zero)
    # Line 1464
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 1463
    addiu	$v0,$v0,3
    # Line 1464
    jr	$ra
    # Line 1463
    sw	$v0,4148($zero)
.L0da6eaf4:
    # Line 1459
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0da6eab0
    move	$a3,$v0
.end __glkonlc_Accum

# Function: __glkonlc_BlendFunc
# Declared: Line 1465 (Source lines: 1465-1486)
# Address: 0x0da6eb10 - 0x0da6ec68 (Size: 344 bytes, Frame: 32)
.globl __glkonlc_BlendFunc
.ent __glkonlc_BlendFunc
__glkonlc_BlendFunc:
    # Line 1466
    li	$a3,0x8001
    # Line 1465
    addiu	$sp,$sp,-32
    # Line 1466
    li	$a4,0x8004
    # Line 1465
    sd	$s0,16($sp)
    move	$s0,$a1
    lui	$at,0x2
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,9416
    # Line 1466
    sltu	$a4,$a4,$s1
    sd	$gp,0($sp)
    beqz	$a0,.L0da6eb88
    # Line 1465
    addu	$gp,$t9,$at
    # Line 1466
    li	$v0,1
    beq	$a0,$v0,.L0da6eb88
    sltiu	$a2,$s1,774
    sltiu	$v1,$a0,774
    bnez	$v1,.L0da6eb64
    sltiu	$a0,$a0,777
    bnez	$a0,.L0da6eb88
.L0da6eb64:
    sltiu	$a1,$s1,770
    bnez	$a1,.L0da6eb74
    nop
    bnez	$a2,.L0da6eb88
.L0da6eb74:
    sltu	$a3,$s1,$a3
    bnez	$a3,.L0da6ec58
    # Line 1471
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1466
    bnez	$a4,.L0da6ec58
    # Line 1471
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6eb88:
    # Line 1474
    beqz	$s0,.L0da6ebc8
    li	$a5,1
    beq	$s0,$a5,.L0da6ebc8
    sltiu	$a6,$s0,768
    bnez	$a6,.L0da6ebac
    li	$t0,0x8001
    sltiu	$a7,$s0,774
    bnez	$a7,.L0da6ebc8
    li	$t0,0x8001
.L0da6ebac:
    sltu	$t0,$s0,$t0
    bnez	$t0,.L0da6ec44
    # Line 1478
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1474
    li	$t1,0x8004
    sltu	$t1,$t1,$s0
    bnez	$t1,.L0da6ec44
    # Line 1478
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ebc8:
    # Line 1481
    lw	$a0,4136($zero)
    slti	$t2,$a0,3
    beqz	$t2,.L0da6ebe4
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a0,$v0
.L0da6ebe4:
    lw	$t8,4144($zero)
    # Line 1486
    ld	$gp,0($sp)
    # Line 1483
    sw	$s1,4($t8)
    # Line 1482
    li	$t9,203
    sw	$t9,0($t8)
    # Line 1484
    sw	$s0,8($t8)
    # Line 1485
    addiu	$s0,$a0,-3
    sw	$s0,4136($zero)
    # Line 1486
    ld	$s0,16($sp)
    # Line 1485
    addiu	$s1,$t8,12
    sw	$s1,4144($zero)
    ld	$ra,24($sp)
    lw	$t3,4148($zero)
    # Line 1486
    ld	$s1,8($sp)
    addiu	$sp,$sp,32
    # Line 1485
    addiu	$t3,$t3,3
    # Line 1486
    jr	$ra
    # Line 1485
    sw	$t3,4148($zero)
.L0da6ec2c:
    # Line 1486
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 1478
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ec44:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ec2c
    ld	$ra,24($sp)
    # Line 1471
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ec58:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ec2c
    ld	$ra,24($sp)
.end __glkonlc_BlendFunc

# Function: __glkonlc_LogicOp
# Declared: Line 1487 (Source lines: 1487-1496)
# Address: 0x0da6ec70 - 0x0da6ed1c (Size: 172 bytes, Frame: 32)
.globl __glkonlc_LogicOp
.ent __glkonlc_LogicOp
__glkonlc_LogicOp:
    # Line 1487
    addiu	$sp,$sp,-32
    # Line 1488
    sltiu	$at,$a0,5376
    # Line 1487
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,9064
    sd	$gp,0($sp)
    # Line 1488
    bnez	$at,.L0da6ed08
    # Line 1487
    addu	$gp,$t9,$v0
    # Line 1488
    sltiu	$v1,$a0,5392
    beqz	$v1,.L0da6ed0c
    # Line 1489
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1492
    lw	$a3,4136($zero)
    slti	$a1,$a3,2
    beqz	$a1,.L0da6ecc0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    move	$a3,$v0
.L0da6ecc0:
    lw	$a4,4144($zero)
    # Line 1496
    ld	$gp,0($sp)
    # Line 1493
    li	$a5,46
    sw	$a5,0($a4)
    # Line 1494
    sw	$a0,4($a4)
    # Line 1495
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    ld	$ra,8($sp)
    lw	$a2,4148($zero)
    addiu	$a3,$a3,-2
    sw	$a3,4136($zero)
    # Line 1496
    addiu	$sp,$sp,32
    # Line 1495
    addiu	$a2,$a2,2
    # Line 1496
    jr	$ra
    # Line 1495
    sw	$a2,4148($zero)
.L0da6ecfc:
    # Line 1496
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6ed08:
    # Line 1489
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6ed0c:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ecfc
    ld	$ra,8($sp)
.end __glkonlc_LogicOp

# Function: __glkonlc_StencilFunc
# Declared: Line 1497 (Source lines: 1497-1508)
# Address: 0x0da6ed20 - 0x0da6ede4 (Size: 196 bytes, Frame: 48)
.globl __glkonlc_StencilFunc
.ent __glkonlc_StencilFunc
__glkonlc_StencilFunc:
    # Line 1497
    addiu	$sp,$sp,-48
    # Line 1498
    sltiu	$at,$a0,512
    # Line 1497
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,8888
    sd	$gp,0($sp)
    # Line 1498
    bnez	$at,.L0da6edd0
    # Line 1497
    addu	$gp,$t9,$v0
    # Line 1498
    sltiu	$v1,$a0,520
    beqz	$v1,.L0da6edd4
    # Line 1499
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1502
    lw	$a5,4136($zero)
    slti	$a3,$a5,4
    beqz	$a3,.L0da6ed80
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a0,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,32($sp)
    ld	$a2,24($sp)
    ld	$a1,16($sp)
    move	$a5,$v0
.L0da6ed80:
    lw	$a6,4144($zero)
    # Line 1508
    ld	$gp,0($sp)
    # Line 1503
    li	$a7,204
    sw	$a7,0($a6)
    # Line 1504
    sw	$a0,4($a6)
    # Line 1505
    sw	$a1,8($a6)
    # Line 1506
    sw	$a2,12($a6)
    # Line 1507
    addiu	$a6,$a6,16
    sw	$a6,4144($zero)
    ld	$ra,8($sp)
    lw	$a4,4148($zero)
    addiu	$a5,$a5,-4
    sw	$a5,4136($zero)
    # Line 1508
    addiu	$sp,$sp,48
    # Line 1507
    addiu	$a4,$a4,4
    # Line 1508
    jr	$ra
    # Line 1507
    sw	$a4,4148($zero)
.L0da6edc4:
    # Line 1508
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6edd0:
    # Line 1499
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6edd4:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6edc4
    ld	$ra,8($sp)
.end __glkonlc_StencilFunc

# Function: __glkonlc_StencilOp
# Declared: Line 1509 (Source lines: 1509-1534)
# Address: 0x0da6edf0 - 0x0da6ef44 (Size: 340 bytes, Frame: 48)
.globl __glkonlc_StencilOp
.ent __glkonlc_StencilOp
__glkonlc_StencilOp:
    # Line 1522
    li	$a6,5386
    # Line 1509
    addiu	$sp,$sp,-48
    # Line 1510
    sltiu	$v1,$a0,7684
    # Line 1516
    li	$a3,5386
    # Line 1509
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,16($sp)
    move	$s0,$a1
    lui	$at,0x2
    sd	$s2,24($sp)
    move	$s2,$a2
    sd	$ra,32($sp)
    addiu	$at,$at,8680
    # Line 1522
    sltiu	$a4,$s2,7680
    sd	$gp,0($sp)
    # Line 1510
    beqz	$a0,.L0da6ee60
    # Line 1509
    addu	$gp,$t9,$at
    # Line 1510
    sltiu	$v0,$a0,7680
    bnez	$v0,.L0da6ee48
    li	$a0,5386
    bnez	$v1,.L0da6ee60
    nop
.L0da6ee48:
    beq	$s1,$a0,.L0da6ee60
    # Line 1513
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ef2c
    ld	$ra,32($sp)
.L0da6ee60:
    # Line 1516
    beqz	$s0,.L0da6ee90
    sltiu	$a1,$s0,7680
    bnez	$a1,.L0da6ee78
    sltiu	$a2,$s0,7684
    bnez	$a2,.L0da6ee90
    nop
.L0da6ee78:
    beq	$s0,$a3,.L0da6ee90
    # Line 1519
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ef2c
    ld	$ra,32($sp)
.L0da6ee90:
    # Line 1522
    beqz	$s2,.L0da6eec0
    nop
    bnez	$a4,.L0da6eea8
    sltiu	$a5,$s2,7684
    bnez	$a5,.L0da6eec0
    nop
.L0da6eea8:
    beq	$s2,$a6,.L0da6eec0
    # Line 1525
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6ef2c
    ld	$ra,32($sp)
.L0da6eec0:
    # Line 1528
    lw	$a0,4136($zero)
    slti	$a7,$a0,4
    beqz	$a7,.L0da6eedc
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a0,$v0
.L0da6eedc:
    lw	$t2,4144($zero)
    # Line 1534
    ld	$gp,0($sp)
    # Line 1529
    li	$t3,205
    sw	$t3,0($t2)
    # Line 1530
    sw	$s1,4($t2)
    # Line 1531
    sw	$s0,8($t2)
    # Line 1532
    sw	$s2,12($t2)
    # Line 1533
    addiu	$t2,$t2,16
    sw	$t2,4144($zero)
    addiu	$t1,$a0,-4
    sw	$t1,4136($zero)
    # Line 1534
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    # Line 1533
    lw	$t0,4148($zero)
    # Line 1534
    ld	$s2,24($sp)
    addiu	$sp,$sp,48
    # Line 1533
    addiu	$t0,$t0,4
    # Line 1534
    jr	$ra
    # Line 1533
    sw	$t0,4148($zero)
.L0da6ef2c:
    # Line 1534
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonlc_StencilOp

# Function: __glkonlc_DepthFunc
# Declared: Line 1535 (Source lines: 1535-1544)
# Address: 0x0da6ef50 - 0x0da6effc (Size: 172 bytes, Frame: 32)
.globl __glkonlc_DepthFunc
.ent __glkonlc_DepthFunc
__glkonlc_DepthFunc:
    # Line 1535
    addiu	$sp,$sp,-32
    # Line 1536
    sltiu	$at,$a0,512
    # Line 1535
    lui	$v0,0x2
    sd	$ra,8($sp)
    addiu	$v0,$v0,8328
    sd	$gp,0($sp)
    # Line 1536
    bnez	$at,.L0da6efe8
    # Line 1535
    addu	$gp,$t9,$v0
    # Line 1536
    sltiu	$v1,$a0,520
    beqz	$v1,.L0da6efec
    # Line 1537
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1540
    lw	$a3,4136($zero)
    slti	$a1,$a3,2
    beqz	$a1,.L0da6efa0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    move	$a3,$v0
.L0da6efa0:
    lw	$a4,4144($zero)
    # Line 1544
    ld	$gp,0($sp)
    # Line 1541
    li	$a5,206
    sw	$a5,0($a4)
    # Line 1542
    sw	$a0,4($a4)
    # Line 1543
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    ld	$ra,8($sp)
    lw	$a2,4148($zero)
    addiu	$a3,$a3,-2
    sw	$a3,4136($zero)
    # Line 1544
    addiu	$sp,$sp,32
    # Line 1543
    addiu	$a2,$a2,2
    # Line 1544
    jr	$ra
    # Line 1543
    sw	$a2,4148($zero)
.L0da6efdc:
    # Line 1544
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da6efe8:
    # Line 1537
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da6efec:
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da6efdc
    ld	$ra,8($sp)
.end __glkonlc_DepthFunc

# Function: __glkonlc_ReadBuffer
# Declared: Line 1545 (Source lines: 1545-1550)
# Address: 0x0da6f000 - 0x0da6f0b4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ReadBuffer
.ent __glkonlc_ReadBuffer
__glkonlc_ReadBuffer:
    # Line 1545
    addiu	$sp,$sp,-32
    # Line 1546
    lw	$a2,4136($zero)
    # Line 1547
    li	$a1,55
    # Line 1545
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1546
    slti	$v0,$a2,2
    # Line 1545
    addiu	$at,$at,8152
    # Line 1549
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1546
    bnez	$v0,.L0da6f064
    # Line 1545
    addu	$gp,$t9,$at
    # Line 1546
    lw	$a0,4144($zero)
    # Line 1550
    ld	$gp,8($sp)
    # Line 1547
    sw	$a1,0($a0)
    # Line 1548
    sw	$s8,4($a0)
    # Line 1549
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1550
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1549
    addiu	$v0,$v0,2
    # Line 1550
    jr	$ra
    # Line 1549
    sw	$v0,4148($zero)
.L0da6f064:
    # Line 1546
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1550
    ld	$gp,8($sp)
    # Line 1547
    li	$a5,55
    sw	$a5,0($a4)
    # Line 1548
    sw	$s8,4($a4)
    # Line 1549
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1550
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1549
    addiu	$a2,$a2,2
    # Line 1550
    jr	$ra
    # Line 1549
    sw	$a2,4148($zero)
.end __glkonlc_ReadBuffer

# Function: __glkonlc_DepthRange
# Declared: Line 1551 (Source lines: 1551-1557)
# Address: 0x0da6f0c0 - 0x0da6f170 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_DepthRange
.ent __glkonlc_DepthRange
__glkonlc_DepthRange:
    # Line 1552
    lw	$a2,4136($zero)
    # Line 1551
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1552
    slti	$v0,$a2,5
    # Line 1551
    mov.d	$f4,$f13
    sdc1	$f30,16($sp)
    addiu	$at,$at,7960
    mov.d	$f30,$f12
    sd	$gp,24($sp)
    # Line 1552
    bnez	$v0,.L0da6f14c
    # Line 1551
    addu	$gp,$t9,$at
.L0da6f0ec:
    # Line 1557
    ld	$gp,24($sp)
    # Line 1554
    sdc1	$f30,0($sp)
    # Line 1557
    ldc1	$f30,16($sp)
    # Line 1555
    sdc1	$f4,8($sp)
    lw	$a1,12($sp)
    lw	$a3,8($sp)
    # Line 1554
    lw	$a4,4($sp)
    # Line 1552
    lw	$a0,4144($zero)
    # Line 1554
    lw	$a5,0($sp)
    # Line 1553
    li	$a6,207
    sw	$a6,0($a0)
    # Line 1554
    sw	$a5,4($a0)
    sw	$a4,8($a0)
    # Line 1555
    sw	$a3,12($a0)
    sw	$a1,16($a0)
    # Line 1556
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    # Line 1557
    addiu	$sp,$sp,48
    # Line 1556
    addiu	$v0,$v0,5
    # Line 1557
    jr	$ra
    # Line 1556
    sw	$v0,4148($zero)
.L0da6f14c:
    # Line 1552
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,40($sp)
    ldc1	$f4,32($sp)
    b	.L0da6f0ec
    move	$a2,$v0
.end __glkonlc_DepthRange

# Function: __glkonlc_Frustum
# Declared: Line 1558 (Source lines: 1558-1568)
# Address: 0x0da6f170 - 0x0da6f2a0 (Size: 304 bytes, Frame: 240)
.globl __glkonlc_Frustum
.ent __glkonlc_Frustum
__glkonlc_Frustum:
    # Line 1558
    mov.d	$f8,$f17
    mov.d	$f7,$f16
    # Line 1559
    lw	$a2,4136($zero)
    # Line 1558
    mov.d	$f6,$f15
    addiu	$sp,$sp,-112
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 1559
    slti	$v0,$a2,13
    # Line 1558
    mov.d	$f4,$f13
    sdc1	$f30,48($sp)
    addiu	$at,$at,7784
    mov.d	$f30,$f12
    sd	$gp,56($sp)
    # Line 1559
    bnez	$v0,.L0da6f25c
    # Line 1558
    addu	$gp,$t9,$at
.L0da6f1ac:
    # Line 1568
    ld	$gp,56($sp)
    # Line 1561
    sdc1	$f30,0($sp)
    # Line 1568
    ldc1	$f30,48($sp)
    # Line 1566
    sdc1	$f8,40($sp)
    lw	$a1,44($sp)
    lw	$a3,40($sp)
    # Line 1565
    sdc1	$f7,32($sp)
    lw	$a4,36($sp)
    lw	$a5,32($sp)
    # Line 1564
    sdc1	$f6,24($sp)
    lw	$a6,28($sp)
    lw	$a7,24($sp)
    # Line 1563
    sdc1	$f5,16($sp)
    lw	$t0,20($sp)
    lw	$t1,16($sp)
    # Line 1562
    sdc1	$f4,8($sp)
    lw	$t2,12($sp)
    lw	$t3,8($sp)
    # Line 1561
    lw	$t8,4($sp)
    # Line 1559
    lw	$a0,4144($zero)
    # Line 1561
    lw	$t9,0($sp)
    # Line 1560
    li	$at,209
    sw	$at,0($a0)
    # Line 1561
    sw	$t9,4($a0)
    sw	$t8,8($a0)
    # Line 1562
    sw	$t3,12($a0)
    sw	$t2,16($a0)
    # Line 1563
    sw	$t1,20($a0)
    sw	$t0,24($a0)
    # Line 1564
    sw	$a7,28($a0)
    sw	$a6,32($a0)
    # Line 1565
    sw	$a5,36($a0)
    sw	$a4,40($a0)
    # Line 1566
    sw	$a3,44($a0)
    sw	$a1,48($a0)
    # Line 1567
    addiu	$a0,$a0,52
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-13
    sw	$v1,4136($zero)
    # Line 1568
    addiu	$sp,$sp,112
    # Line 1567
    addiu	$v0,$v0,13
    # Line 1568
    jr	$ra
    # Line 1567
    sw	$v0,4148($zero)
.L0da6f25c:
    sdc1	$f17,64($sp)
    sdc1	$f16,72($sp)
    sdc1	$f15,80($sp)
    # Line 1559
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
    ldc1	$f7,72($sp)
    ldc1	$f8,64($sp)
    b	.L0da6f1ac
    move	$a2,$v0
.end __glkonlc_Frustum

# Function: __glkonlc_LoadIdentity
# Declared: Line 1569 (Source lines: 1569-1574)
# Address: 0x0da6f2a0 - 0x0da6f344 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_LoadIdentity
.ent __glkonlc_LoadIdentity
__glkonlc_LoadIdentity:
    # Line 1570
    lw	$a1,4136($zero)
    # Line 1569
    lui	$at,0x2
    # Line 1570
    slti	$v0,$a1,2
    # Line 1569
    addiu	$sp,$sp,-16
    addiu	$at,$at,7480
    sd	$gp,0($sp)
    # Line 1570
    bnez	$v0,.L0da6f2f8
    # Line 1569
    addu	$gp,$t9,$at
    # Line 1570
    lw	$a0,4144($zero)
    # Line 1574
    ld	$gp,0($sp)
    # Line 1571
    li	$a2,210
    sw	$a2,0($a0)
    # Line 1572
    sw	$zero,4($a0)
    # Line 1573
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1574
    addiu	$sp,$sp,16
    # Line 1573
    addiu	$v0,$v0,2
    # Line 1574
    jr	$ra
    # Line 1573
    sw	$v0,4148($zero)
.L0da6f2f8:
    # Line 1570
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1574
    ld	$gp,0($sp)
    # Line 1571
    li	$a6,210
    sw	$a6,0($a5)
    # Line 1572
    sw	$zero,4($a5)
    # Line 1573
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1574
    addiu	$sp,$sp,16
    # Line 1573
    addiu	$a3,$a3,2
    # Line 1574
    jr	$ra
    # Line 1573
    sw	$a3,4148($zero)
.end __glkonlc_LoadIdentity

# Function: __glkonlc_LoadMatrixf
# Declared: Line 1575 (Source lines: 1575-1595)
# Address: 0x0da6f350 - 0x0da6f44c (Size: 252 bytes, Frame: 32)
.globl __glkonlc_LoadMatrixf
.ent __glkonlc_LoadMatrixf
__glkonlc_LoadMatrixf:
    # Line 1576
    lw	$a3,4136($zero)
    # Line 1575
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1576
    slti	$v0,$a3,17
    # Line 1575
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,7304
    sd	$gp,8($sp)
    # Line 1576
    bnez	$v0,.L0da6f430
    # Line 1575
    addu	$gp,$t9,$at
.L0da6f378:
    # Line 1576
    lw	$a0,4144($zero)
    # Line 1577
    li	$a1,211
    sw	$a1,0($a0)
    # Line 1578
    lwc1	$f15,0($s8)
    swc1	$f15,4($a0)
    # Line 1579
    lwc1	$f14,4($s8)
    swc1	$f14,8($a0)
    # Line 1580
    lwc1	$f13,8($s8)
    swc1	$f13,12($a0)
    # Line 1581
    lwc1	$f12,12($s8)
    swc1	$f12,16($a0)
    # Line 1582
    lwc1	$f11,16($s8)
    swc1	$f11,20($a0)
    # Line 1583
    lwc1	$f10,20($s8)
    swc1	$f10,24($a0)
    # Line 1584
    lwc1	$f9,24($s8)
    swc1	$f9,28($a0)
    # Line 1585
    lwc1	$f8,28($s8)
    swc1	$f8,32($a0)
    # Line 1586
    lwc1	$f7,32($s8)
    swc1	$f7,36($a0)
    # Line 1587
    lwc1	$f6,36($s8)
    swc1	$f6,40($a0)
    # Line 1588
    lwc1	$f5,40($s8)
    swc1	$f5,44($a0)
    # Line 1589
    lwc1	$f4,44($s8)
    swc1	$f4,48($a0)
    # Line 1590
    lwc1	$f3,48($s8)
    swc1	$f3,52($a0)
    # Line 1591
    lwc1	$f2,52($s8)
    swc1	$f2,56($a0)
    # Line 1592
    lwc1	$f1,56($s8)
    # Line 1595
    ld	$gp,8($sp)
    # Line 1592
    swc1	$f1,60($a0)
    # Line 1593
    lwc1	$f0,60($s8)
    # Line 1595
    ld	$s8,0($sp)
    # Line 1593
    swc1	$f0,64($a0)
    # Line 1594
    addiu	$a0,$a0,68
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-17
    sw	$v1,4136($zero)
    # Line 1595
    addiu	$sp,$sp,32
    # Line 1594
    addiu	$v0,$v0,17
    # Line 1595
    jr	$ra
    # Line 1594
    sw	$v0,4148($zero)
.L0da6f430:
    # Line 1576
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6f378
    move	$a3,$v0
.end __glkonlc_LoadMatrixf

# Function: __glkonlc_LoadMatrixd
# Declared: Line 1596 (Source lines: 1596-1616)
# Address: 0x0da6f450 - 0x0da6f64c (Size: 508 bytes, Frame: 160)
.globl __glkonlc_LoadMatrixd
.ent __glkonlc_LoadMatrixd
__glkonlc_LoadMatrixd:
    # Line 1597
    lw	$a3,4136($zero)
    # Line 1596
    addiu	$sp,$sp,-160
    lui	$at,0x2
    # Line 1597
    slti	$v0,$a3,33
    # Line 1596
    sd	$s8,128($sp)
    move	$s8,$a0
    addiu	$at,$at,7048
    sd	$gp,136($sp)
    # Line 1597
    bnez	$v0,.L0da6f630
    # Line 1596
    addu	$gp,$t9,$at
.L0da6f478:
    # Line 1597
    lw	$a0,4144($zero)
    # Line 1598
    li	$a4,212
    sw	$a4,0($a0)
    # Line 1599
    ldc1	$f15,0($s8)
    sdc1	$f15,0($sp)
    lw	$a2,0($sp)
    lw	$a1,4($sp)
    sw	$a1,8($a0)
    sw	$a2,4($a0)
    # Line 1600
    ldc1	$f14,8($s8)
    sdc1	$f14,8($sp)
    lw	$v1,8($sp)
    lw	$v0,12($sp)
    sw	$v0,16($a0)
    sw	$v1,12($a0)
    # Line 1601
    ldc1	$f13,16($s8)
    sdc1	$f13,16($sp)
    lw	$at,16($sp)
    lw	$t9,20($sp)
    sw	$t9,24($a0)
    sw	$at,20($a0)
    # Line 1602
    ldc1	$f12,24($s8)
    sdc1	$f12,24($sp)
    lw	$t8,24($sp)
    lw	$t3,28($sp)
    sw	$t3,32($a0)
    sw	$t8,28($a0)
    # Line 1603
    ldc1	$f11,32($s8)
    sdc1	$f11,32($sp)
    lw	$t2,32($sp)
    lw	$t1,36($sp)
    sw	$t1,40($a0)
    sw	$t2,36($a0)
    # Line 1604
    ldc1	$f10,40($s8)
    sdc1	$f10,40($sp)
    lw	$t0,40($sp)
    lw	$a7,44($sp)
    sw	$a7,48($a0)
    sw	$t0,44($a0)
    # Line 1605
    ldc1	$f9,48($s8)
    sdc1	$f9,48($sp)
    lw	$a6,48($sp)
    lw	$a5,52($sp)
    sw	$a5,56($a0)
    sw	$a6,52($a0)
    # Line 1606
    ldc1	$f8,56($s8)
    sdc1	$f8,56($sp)
    lw	$a4,56($sp)
    lw	$a2,60($sp)
    sw	$a2,64($a0)
    sw	$a4,60($a0)
    # Line 1607
    ldc1	$f7,64($s8)
    sdc1	$f7,64($sp)
    lw	$a1,64($sp)
    lw	$v1,68($sp)
    sw	$v1,72($a0)
    sw	$a1,68($a0)
    # Line 1608
    ldc1	$f6,72($s8)
    sdc1	$f6,72($sp)
    lw	$v0,72($sp)
    lw	$at,76($sp)
    sw	$at,80($a0)
    sw	$v0,76($a0)
    # Line 1609
    ldc1	$f5,80($s8)
    sdc1	$f5,80($sp)
    lw	$t9,80($sp)
    lw	$t8,84($sp)
    sw	$t8,88($a0)
    sw	$t9,84($a0)
    # Line 1610
    ldc1	$f4,88($s8)
    sdc1	$f4,88($sp)
    lw	$t3,88($sp)
    lw	$t2,92($sp)
    sw	$t2,96($a0)
    sw	$t3,92($a0)
    # Line 1611
    ldc1	$f3,96($s8)
    sdc1	$f3,96($sp)
    lw	$t1,96($sp)
    lw	$t0,100($sp)
    sw	$t0,104($a0)
    sw	$t1,100($a0)
    # Line 1612
    ldc1	$f2,104($s8)
    sdc1	$f2,104($sp)
    lw	$a7,104($sp)
    lw	$a6,108($sp)
    sw	$a6,112($a0)
    sw	$a7,108($a0)
    # Line 1613
    ldc1	$f1,112($s8)
    # Line 1616
    ld	$gp,136($sp)
    # Line 1613
    sdc1	$f1,112($sp)
    lw	$a5,112($sp)
    lw	$a4,116($sp)
    sw	$a4,120($a0)
    sw	$a5,116($a0)
    # Line 1614
    ldc1	$f0,120($s8)
    # Line 1616
    ld	$s8,128($sp)
    # Line 1614
    sdc1	$f0,120($sp)
    lw	$a1,124($sp)
    lw	$a2,120($sp)
    sw	$a2,124($a0)
    sw	$a1,128($a0)
    # Line 1615
    addiu	$a0,$a0,132
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-33
    sw	$v1,4136($zero)
    # Line 1616
    addiu	$sp,$sp,160
    # Line 1615
    addiu	$v0,$v0,33
    # Line 1616
    jr	$ra
    # Line 1615
    sw	$v0,4148($zero)
.L0da6f630:
    # Line 1597
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,144($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,144($sp)
    b	.L0da6f478
    move	$a3,$v0
.end __glkonlc_LoadMatrixd

# Function: __glkonlc_MatrixMode
# Declared: Line 1617 (Source lines: 1617-1627)
# Address: 0x0da6f650 - 0x0da6f704 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_MatrixMode
.ent __glkonlc_MatrixMode
__glkonlc_MatrixMode:
    # Line 1618
    sltiu	$v1,$a0,5891
    # Line 1617
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1618
    sltiu	$at,$a0,5888
    # Line 1617
    lui	$v0,0x2
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,6536
    sd	$gp,8($sp)
    # Line 1618
    bnez	$at,.L0da6f680
    # Line 1617
    addu	$gp,$t9,$v0
    # Line 1618
    bnez	$v1,.L0da6f69c
.L0da6f680:
    li	$a0,6144
    beq	$s0,$a0,.L0da6f69c
    # Line 1620
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da6f6f8
    ld	$ra,16($sp)
.L0da6f69c:
    # Line 1623
    lw	$a0,4136($zero)
    slti	$a1,$a0,2
    beqz	$a1,.L0da6f6b8
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a0,$v0
.L0da6f6b8:
    lw	$a4,4144($zero)
    # Line 1627
    ld	$gp,8($sp)
    # Line 1624
    li	$a5,208
    sw	$a5,0($a4)
    # Line 1625
    sw	$s0,4($a4)
    # Line 1626
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$a0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1627
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 1626
    addiu	$a2,$a2,2
    # Line 1627
    jr	$ra
    # Line 1626
    sw	$a2,4148($zero)
.L0da6f6f8:
    # Line 1627
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_MatrixMode

# Function: __glkonlc_MultMatrixf
# Declared: Line 1628 (Source lines: 1628-1648)
# Address: 0x0da6f710 - 0x0da6f80c (Size: 252 bytes, Frame: 32)
.globl __glkonlc_MultMatrixf
.ent __glkonlc_MultMatrixf
__glkonlc_MultMatrixf:
    # Line 1629
    lw	$a3,4136($zero)
    # Line 1628
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1629
    slti	$v0,$a3,17
    # Line 1628
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,6344
    sd	$gp,8($sp)
    # Line 1629
    bnez	$v0,.L0da6f7f0
    # Line 1628
    addu	$gp,$t9,$at
.L0da6f738:
    # Line 1629
    lw	$a0,4144($zero)
    # Line 1630
    li	$a1,213
    sw	$a1,0($a0)
    # Line 1631
    lwc1	$f15,0($s8)
    swc1	$f15,4($a0)
    # Line 1632
    lwc1	$f14,4($s8)
    swc1	$f14,8($a0)
    # Line 1633
    lwc1	$f13,8($s8)
    swc1	$f13,12($a0)
    # Line 1634
    lwc1	$f12,12($s8)
    swc1	$f12,16($a0)
    # Line 1635
    lwc1	$f11,16($s8)
    swc1	$f11,20($a0)
    # Line 1636
    lwc1	$f10,20($s8)
    swc1	$f10,24($a0)
    # Line 1637
    lwc1	$f9,24($s8)
    swc1	$f9,28($a0)
    # Line 1638
    lwc1	$f8,28($s8)
    swc1	$f8,32($a0)
    # Line 1639
    lwc1	$f7,32($s8)
    swc1	$f7,36($a0)
    # Line 1640
    lwc1	$f6,36($s8)
    swc1	$f6,40($a0)
    # Line 1641
    lwc1	$f5,40($s8)
    swc1	$f5,44($a0)
    # Line 1642
    lwc1	$f4,44($s8)
    swc1	$f4,48($a0)
    # Line 1643
    lwc1	$f3,48($s8)
    swc1	$f3,52($a0)
    # Line 1644
    lwc1	$f2,52($s8)
    swc1	$f2,56($a0)
    # Line 1645
    lwc1	$f1,56($s8)
    # Line 1648
    ld	$gp,8($sp)
    # Line 1645
    swc1	$f1,60($a0)
    # Line 1646
    lwc1	$f0,60($s8)
    # Line 1648
    ld	$s8,0($sp)
    # Line 1646
    swc1	$f0,64($a0)
    # Line 1647
    addiu	$a0,$a0,68
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-17
    sw	$v1,4136($zero)
    # Line 1648
    addiu	$sp,$sp,32
    # Line 1647
    addiu	$v0,$v0,17
    # Line 1648
    jr	$ra
    # Line 1647
    sw	$v0,4148($zero)
.L0da6f7f0:
    # Line 1629
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da6f738
    move	$a3,$v0
.end __glkonlc_MultMatrixf

# Function: __glkonlc_MultMatrixd
# Declared: Line 1649 (Source lines: 1649-1669)
# Address: 0x0da6f810 - 0x0da6fa0c (Size: 508 bytes, Frame: 160)
.globl __glkonlc_MultMatrixd
.ent __glkonlc_MultMatrixd
__glkonlc_MultMatrixd:
    # Line 1650
    lw	$a3,4136($zero)
    # Line 1649
    addiu	$sp,$sp,-160
    lui	$at,0x2
    # Line 1650
    slti	$v0,$a3,33
    # Line 1649
    sd	$s8,128($sp)
    move	$s8,$a0
    addiu	$at,$at,6088
    sd	$gp,136($sp)
    # Line 1650
    bnez	$v0,.L0da6f9f0
    # Line 1649
    addu	$gp,$t9,$at
.L0da6f838:
    # Line 1650
    lw	$a0,4144($zero)
    # Line 1651
    li	$a4,214
    sw	$a4,0($a0)
    # Line 1652
    ldc1	$f15,0($s8)
    sdc1	$f15,0($sp)
    lw	$a2,0($sp)
    lw	$a1,4($sp)
    sw	$a1,8($a0)
    sw	$a2,4($a0)
    # Line 1653
    ldc1	$f14,8($s8)
    sdc1	$f14,8($sp)
    lw	$v1,8($sp)
    lw	$v0,12($sp)
    sw	$v0,16($a0)
    sw	$v1,12($a0)
    # Line 1654
    ldc1	$f13,16($s8)
    sdc1	$f13,16($sp)
    lw	$at,16($sp)
    lw	$t9,20($sp)
    sw	$t9,24($a0)
    sw	$at,20($a0)
    # Line 1655
    ldc1	$f12,24($s8)
    sdc1	$f12,24($sp)
    lw	$t8,24($sp)
    lw	$t3,28($sp)
    sw	$t3,32($a0)
    sw	$t8,28($a0)
    # Line 1656
    ldc1	$f11,32($s8)
    sdc1	$f11,32($sp)
    lw	$t2,32($sp)
    lw	$t1,36($sp)
    sw	$t1,40($a0)
    sw	$t2,36($a0)
    # Line 1657
    ldc1	$f10,40($s8)
    sdc1	$f10,40($sp)
    lw	$t0,40($sp)
    lw	$a7,44($sp)
    sw	$a7,48($a0)
    sw	$t0,44($a0)
    # Line 1658
    ldc1	$f9,48($s8)
    sdc1	$f9,48($sp)
    lw	$a6,48($sp)
    lw	$a5,52($sp)
    sw	$a5,56($a0)
    sw	$a6,52($a0)
    # Line 1659
    ldc1	$f8,56($s8)
    sdc1	$f8,56($sp)
    lw	$a4,56($sp)
    lw	$a2,60($sp)
    sw	$a2,64($a0)
    sw	$a4,60($a0)
    # Line 1660
    ldc1	$f7,64($s8)
    sdc1	$f7,64($sp)
    lw	$a1,64($sp)
    lw	$v1,68($sp)
    sw	$v1,72($a0)
    sw	$a1,68($a0)
    # Line 1661
    ldc1	$f6,72($s8)
    sdc1	$f6,72($sp)
    lw	$v0,72($sp)
    lw	$at,76($sp)
    sw	$at,80($a0)
    sw	$v0,76($a0)
    # Line 1662
    ldc1	$f5,80($s8)
    sdc1	$f5,80($sp)
    lw	$t9,80($sp)
    lw	$t8,84($sp)
    sw	$t8,88($a0)
    sw	$t9,84($a0)
    # Line 1663
    ldc1	$f4,88($s8)
    sdc1	$f4,88($sp)
    lw	$t3,88($sp)
    lw	$t2,92($sp)
    sw	$t2,96($a0)
    sw	$t3,92($a0)
    # Line 1664
    ldc1	$f3,96($s8)
    sdc1	$f3,96($sp)
    lw	$t1,96($sp)
    lw	$t0,100($sp)
    sw	$t0,104($a0)
    sw	$t1,100($a0)
    # Line 1665
    ldc1	$f2,104($s8)
    sdc1	$f2,104($sp)
    lw	$a7,104($sp)
    lw	$a6,108($sp)
    sw	$a6,112($a0)
    sw	$a7,108($a0)
    # Line 1666
    ldc1	$f1,112($s8)
    # Line 1669
    ld	$gp,136($sp)
    # Line 1666
    sdc1	$f1,112($sp)
    lw	$a5,112($sp)
    lw	$a4,116($sp)
    sw	$a4,120($a0)
    sw	$a5,116($a0)
    # Line 1667
    ldc1	$f0,120($s8)
    # Line 1669
    ld	$s8,128($sp)
    # Line 1667
    sdc1	$f0,120($sp)
    lw	$a1,124($sp)
    lw	$a2,120($sp)
    sw	$a2,124($a0)
    sw	$a1,128($a0)
    # Line 1668
    addiu	$a0,$a0,132
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-33
    sw	$v1,4136($zero)
    # Line 1669
    addiu	$sp,$sp,160
    # Line 1668
    addiu	$v0,$v0,33
    # Line 1669
    jr	$ra
    # Line 1668
    sw	$v0,4148($zero)
.L0da6f9f0:
    # Line 1650
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,144($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,144($sp)
    b	.L0da6f838
    move	$a3,$v0
.end __glkonlc_MultMatrixd

# Function: __glkonlc_Ortho
# Declared: Line 1670 (Source lines: 1670-1680)
# Address: 0x0da6fa10 - 0x0da6fb40 (Size: 304 bytes, Frame: 240)
.globl __glkonlc_Ortho
.ent __glkonlc_Ortho
__glkonlc_Ortho:
    # Line 1670
    mov.d	$f8,$f17
    mov.d	$f7,$f16
    # Line 1671
    lw	$a2,4136($zero)
    # Line 1670
    mov.d	$f6,$f15
    addiu	$sp,$sp,-112
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 1671
    slti	$v0,$a2,13
    # Line 1670
    mov.d	$f4,$f13
    sdc1	$f30,48($sp)
    addiu	$at,$at,5576
    mov.d	$f30,$f12
    sd	$gp,56($sp)
    # Line 1671
    bnez	$v0,.L0da6fafc
    # Line 1670
    addu	$gp,$t9,$at
.L0da6fa4c:
    # Line 1680
    ld	$gp,56($sp)
    # Line 1673
    sdc1	$f30,0($sp)
    # Line 1680
    ldc1	$f30,48($sp)
    # Line 1678
    sdc1	$f8,40($sp)
    lw	$a1,44($sp)
    lw	$a3,40($sp)
    # Line 1677
    sdc1	$f7,32($sp)
    lw	$a4,36($sp)
    lw	$a5,32($sp)
    # Line 1676
    sdc1	$f6,24($sp)
    lw	$a6,28($sp)
    lw	$a7,24($sp)
    # Line 1675
    sdc1	$f5,16($sp)
    lw	$t0,20($sp)
    lw	$t1,16($sp)
    # Line 1674
    sdc1	$f4,8($sp)
    lw	$t2,12($sp)
    lw	$t3,8($sp)
    # Line 1673
    lw	$t8,4($sp)
    # Line 1671
    lw	$a0,4144($zero)
    # Line 1673
    lw	$t9,0($sp)
    # Line 1672
    li	$at,215
    sw	$at,0($a0)
    # Line 1673
    sw	$t9,4($a0)
    sw	$t8,8($a0)
    # Line 1674
    sw	$t3,12($a0)
    sw	$t2,16($a0)
    # Line 1675
    sw	$t1,20($a0)
    sw	$t0,24($a0)
    # Line 1676
    sw	$a7,28($a0)
    sw	$a6,32($a0)
    # Line 1677
    sw	$a5,36($a0)
    sw	$a4,40($a0)
    # Line 1678
    sw	$a3,44($a0)
    sw	$a1,48($a0)
    # Line 1679
    addiu	$a0,$a0,52
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-13
    sw	$v1,4136($zero)
    # Line 1680
    addiu	$sp,$sp,112
    # Line 1679
    addiu	$v0,$v0,13
    # Line 1680
    jr	$ra
    # Line 1679
    sw	$v0,4148($zero)
.L0da6fafc:
    sdc1	$f17,64($sp)
    sdc1	$f16,72($sp)
    sdc1	$f15,80($sp)
    # Line 1671
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
    ldc1	$f7,72($sp)
    ldc1	$f8,64($sp)
    b	.L0da6fa4c
    move	$a2,$v0
.end __glkonlc_Ortho

# Function: __glkonlc_PopMatrix
# Declared: Line 1681 (Source lines: 1681-1686)
# Address: 0x0da6fb40 - 0x0da6fbe4 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_PopMatrix
.ent __glkonlc_PopMatrix
__glkonlc_PopMatrix:
    # Line 1682
    lw	$a1,4136($zero)
    # Line 1681
    lui	$at,0x2
    # Line 1682
    slti	$v0,$a1,2
    # Line 1681
    addiu	$sp,$sp,-16
    addiu	$at,$at,5272
    sd	$gp,0($sp)
    # Line 1682
    bnez	$v0,.L0da6fb98
    # Line 1681
    addu	$gp,$t9,$at
    # Line 1682
    lw	$a0,4144($zero)
    # Line 1686
    ld	$gp,0($sp)
    # Line 1683
    li	$a2,216
    sw	$a2,0($a0)
    # Line 1684
    sw	$zero,4($a0)
    # Line 1685
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1686
    addiu	$sp,$sp,16
    # Line 1685
    addiu	$v0,$v0,2
    # Line 1686
    jr	$ra
    # Line 1685
    sw	$v0,4148($zero)
.L0da6fb98:
    # Line 1682
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1686
    ld	$gp,0($sp)
    # Line 1683
    li	$a6,216
    sw	$a6,0($a5)
    # Line 1684
    sw	$zero,4($a5)
    # Line 1685
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1686
    addiu	$sp,$sp,16
    # Line 1685
    addiu	$a3,$a3,2
    # Line 1686
    jr	$ra
    # Line 1685
    sw	$a3,4148($zero)
.end __glkonlc_PopMatrix

# Function: __glkonlc_PushMatrix
# Declared: Line 1687 (Source lines: 1687-1692)
# Address: 0x0da6fbf0 - 0x0da6fc94 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_PushMatrix
.ent __glkonlc_PushMatrix
__glkonlc_PushMatrix:
    # Line 1688
    lw	$a1,4136($zero)
    # Line 1687
    lui	$at,0x2
    # Line 1688
    slti	$v0,$a1,2
    # Line 1687
    addiu	$sp,$sp,-16
    addiu	$at,$at,5096
    sd	$gp,0($sp)
    # Line 1688
    bnez	$v0,.L0da6fc48
    # Line 1687
    addu	$gp,$t9,$at
    # Line 1688
    lw	$a0,4144($zero)
    # Line 1692
    ld	$gp,0($sp)
    # Line 1689
    li	$a2,217
    sw	$a2,0($a0)
    # Line 1690
    sw	$zero,4($a0)
    # Line 1691
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1692
    addiu	$sp,$sp,16
    # Line 1691
    addiu	$v0,$v0,2
    # Line 1692
    jr	$ra
    # Line 1691
    sw	$v0,4148($zero)
.L0da6fc48:
    # Line 1688
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1692
    ld	$gp,0($sp)
    # Line 1689
    li	$a6,217
    sw	$a6,0($a5)
    # Line 1690
    sw	$zero,4($a5)
    # Line 1691
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1692
    addiu	$sp,$sp,16
    # Line 1691
    addiu	$a3,$a3,2
    # Line 1692
    jr	$ra
    # Line 1691
    sw	$a3,4148($zero)
.end __glkonlc_PushMatrix

# Function: __glkonlc_Rotated
# Declared: Line 1693 (Source lines: 1693-1701)
# Address: 0x0da6fca0 - 0x0da6fd90 (Size: 240 bytes, Frame: 208)
.globl __glkonlc_Rotated
.ent __glkonlc_Rotated
__glkonlc_Rotated:
    # Line 1694
    lw	$a2,4136($zero)
    # Line 1693
    mov.d	$f6,$f15
    addiu	$sp,$sp,-80
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 1694
    slti	$v0,$a2,9
    # Line 1693
    mov.d	$f4,$f13
    sdc1	$f30,32($sp)
    addiu	$at,$at,4920
    mov.d	$f30,$f12
    sd	$gp,40($sp)
    # Line 1694
    bnez	$v0,.L0da6fd5c
    # Line 1693
    addu	$gp,$t9,$at
.L0da6fcd4:
    # Line 1701
    ld	$gp,40($sp)
    # Line 1696
    sdc1	$f30,0($sp)
    # Line 1701
    ldc1	$f30,32($sp)
    # Line 1699
    sdc1	$f6,24($sp)
    lw	$a1,28($sp)
    lw	$a3,24($sp)
    # Line 1698
    sdc1	$f5,16($sp)
    lw	$a4,20($sp)
    lw	$a5,16($sp)
    # Line 1697
    sdc1	$f4,8($sp)
    lw	$a6,12($sp)
    lw	$a7,8($sp)
    # Line 1696
    lw	$t0,4($sp)
    # Line 1694
    lw	$a0,4144($zero)
    # Line 1696
    lw	$t1,0($sp)
    # Line 1695
    li	$t2,218
    sw	$t2,0($a0)
    # Line 1696
    sw	$t1,4($a0)
    sw	$t0,8($a0)
    # Line 1697
    sw	$a7,12($a0)
    sw	$a6,16($a0)
    # Line 1698
    sw	$a5,20($a0)
    sw	$a4,24($a0)
    # Line 1699
    sw	$a3,28($a0)
    sw	$a1,32($a0)
    # Line 1700
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-9
    sw	$v1,4136($zero)
    # Line 1701
    addiu	$sp,$sp,80
    # Line 1700
    addiu	$v0,$v0,9
    # Line 1701
    jr	$ra
    # Line 1700
    sw	$v0,4148($zero)
.L0da6fd5c:
    sdc1	$f15,48($sp)
    # Line 1694
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,56($sp)
    sdc1	$f13,64($sp)
    sd	$ra,72($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,72($sp)
    ldc1	$f4,64($sp)
    ldc1	$f5,56($sp)
    ldc1	$f6,48($sp)
    b	.L0da6fcd4
    move	$a2,$v0
.end __glkonlc_Rotated

# Function: __glkonlc_Rotatef
# Declared: Line 1702 (Source lines: 1702-1710)
# Address: 0x0da6fd90 - 0x0da6fe40 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_Rotatef
.ent __glkonlc_Rotatef
__glkonlc_Rotatef:
    # Line 1703
    lw	$a2,4136($zero)
    # Line 1702
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 1703
    slti	$v0,$a2,5
    # Line 1702
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,4680
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1703
    bnez	$v0,.L0da6fe0c
    # Line 1702
    addu	$gp,$t9,$at
.L0da6fdc4:
    # Line 1703
    lw	$a0,4144($zero)
    # Line 1710
    ld	$gp,8($sp)
    # Line 1704
    li	$a1,219
    sw	$a1,0($a0)
    # Line 1705
    swc1	$f30,4($a0)
    # Line 1706
    swc1	$f4,8($a0)
    # Line 1707
    swc1	$f5,12($a0)
    # Line 1708
    swc1	$f6,16($a0)
    # Line 1709
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1710
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 1709
    addiu	$v0,$v0,5
    # Line 1710
    jr	$ra
    # Line 1709
    sw	$v0,4148($zero)
.L0da6fe0c:
    sdc1	$f15,16($sp)
    # Line 1703
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
    b	.L0da6fdc4
    move	$a2,$v0
.end __glkonlc_Rotatef

# Function: __glkonlc_Scaled
# Declared: Line 1711 (Source lines: 1711-1718)
# Address: 0x0da6fe40 - 0x0da6ff10 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_Scaled
.ent __glkonlc_Scaled
__glkonlc_Scaled:
    # Line 1712
    lw	$a2,4136($zero)
    # Line 1711
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 1712
    slti	$v0,$a2,7
    # Line 1711
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,4504
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 1712
    bnez	$v0,.L0da6fee4
    # Line 1711
    addu	$gp,$t9,$at
.L0da6fe70:
    # Line 1718
    ld	$gp,32($sp)
    # Line 1714
    sdc1	$f30,0($sp)
    # Line 1718
    ldc1	$f30,24($sp)
    # Line 1716
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 1715
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 1714
    lw	$a6,4($sp)
    # Line 1712
    lw	$a0,4144($zero)
    # Line 1714
    lw	$a7,0($sp)
    # Line 1713
    li	$t0,220
    sw	$t0,0($a0)
    # Line 1714
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 1715
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 1716
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 1717
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 1718
    addiu	$sp,$sp,64
    # Line 1717
    addiu	$v0,$v0,7
    # Line 1718
    jr	$ra
    # Line 1717
    sw	$v0,4148($zero)
.L0da6fee4:
    # Line 1712
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da6fe70
    move	$a2,$v0
.end __glkonlc_Scaled

# Function: __glkonlc_Scalef
# Declared: Line 1719 (Source lines: 1719-1726)
# Address: 0x0da6ff10 - 0x0da6ffb0 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Scalef
.ent __glkonlc_Scalef
__glkonlc_Scalef:
    # Line 1720
    lw	$a2,4136($zero)
    # Line 1719
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 1720
    slti	$v0,$a2,4
    # Line 1719
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,4296
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1720
    bnez	$v0,.L0da6ff84
    # Line 1719
    addu	$gp,$t9,$at
.L0da6ff40:
    # Line 1720
    lw	$a0,4144($zero)
    # Line 1726
    ld	$gp,8($sp)
    # Line 1721
    li	$a1,221
    sw	$a1,0($a0)
    # Line 1722
    swc1	$f30,4($a0)
    # Line 1723
    swc1	$f4,8($a0)
    # Line 1724
    swc1	$f5,12($a0)
    # Line 1725
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1726
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 1725
    addiu	$v0,$v0,4
    # Line 1726
    jr	$ra
    # Line 1725
    sw	$v0,4148($zero)
.L0da6ff84:
    # Line 1720
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da6ff40
    move	$a2,$v0
.end __glkonlc_Scalef

# Function: __glkonlc_Translated
# Declared: Line 1727 (Source lines: 1727-1734)
# Address: 0x0da6ffb0 - 0x0da70080 (Size: 208 bytes, Frame: 192)
.globl __glkonlc_Translated
.ent __glkonlc_Translated
__glkonlc_Translated:
    # Line 1728
    lw	$a2,4136($zero)
    # Line 1727
    addiu	$sp,$sp,-64
    mov.d	$f5,$f14
    lui	$at,0x2
    # Line 1728
    slti	$v0,$a2,7
    # Line 1727
    mov.d	$f4,$f13
    sdc1	$f30,24($sp)
    addiu	$at,$at,4136
    mov.d	$f30,$f12
    sd	$gp,32($sp)
    # Line 1728
    bnez	$v0,.L0da70054
    # Line 1727
    addu	$gp,$t9,$at
.L0da6ffe0:
    # Line 1734
    ld	$gp,32($sp)
    # Line 1730
    sdc1	$f30,0($sp)
    # Line 1734
    ldc1	$f30,24($sp)
    # Line 1732
    sdc1	$f5,16($sp)
    lw	$a1,20($sp)
    lw	$a3,16($sp)
    # Line 1731
    sdc1	$f4,8($sp)
    lw	$a4,12($sp)
    lw	$a5,8($sp)
    # Line 1730
    lw	$a6,4($sp)
    # Line 1728
    lw	$a0,4144($zero)
    # Line 1730
    lw	$a7,0($sp)
    # Line 1729
    li	$t0,222
    sw	$t0,0($a0)
    # Line 1730
    sw	$a7,4($a0)
    sw	$a6,8($a0)
    # Line 1731
    sw	$a5,12($a0)
    sw	$a4,16($a0)
    # Line 1732
    sw	$a3,20($a0)
    sw	$a1,24($a0)
    # Line 1733
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-7
    sw	$v1,4136($zero)
    # Line 1734
    addiu	$sp,$sp,64
    # Line 1733
    addiu	$v0,$v0,7
    # Line 1734
    jr	$ra
    # Line 1733
    sw	$v0,4148($zero)
.L0da70054:
    # Line 1728
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,40($sp)
    sdc1	$f13,48($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,56($sp)
    ldc1	$f4,48($sp)
    ldc1	$f5,40($sp)
    b	.L0da6ffe0
    move	$a2,$v0
.end __glkonlc_Translated

# Function: __glkonlc_Translatef
# Declared: Line 1735 (Source lines: 1735-1742)
# Address: 0x0da70080 - 0x0da70120 (Size: 160 bytes, Frame: 48)
.globl __glkonlc_Translatef
.ent __glkonlc_Translatef
__glkonlc_Translatef:
    # Line 1736
    lw	$a2,4136($zero)
    # Line 1735
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 1736
    slti	$v0,$a2,4
    # Line 1735
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,3928
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1736
    bnez	$v0,.L0da700f4
    # Line 1735
    addu	$gp,$t9,$at
.L0da700b0:
    # Line 1736
    lw	$a0,4144($zero)
    # Line 1742
    ld	$gp,8($sp)
    # Line 1737
    li	$a1,223
    sw	$a1,0($a0)
    # Line 1738
    swc1	$f30,4($a0)
    # Line 1739
    swc1	$f4,8($a0)
    # Line 1740
    swc1	$f5,12($a0)
    # Line 1741
    addiu	$a0,$a0,16
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-4
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1742
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 1741
    addiu	$v0,$v0,4
    # Line 1742
    jr	$ra
    # Line 1741
    sw	$v0,4148($zero)
.L0da700f4:
    # Line 1736
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f4,24($sp)
    ldc1	$f5,16($sp)
    b	.L0da700b0
    move	$a2,$v0
.end __glkonlc_Translatef

# Function: __glkonlc_Viewport
# Declared: Line 1743 (Source lines: 1743-1759)
# Address: 0x0da70120 - 0x0da701fc (Size: 220 bytes, Frame: 48)
.globl __glkonlc_Viewport
.ent __glkonlc_Viewport
__glkonlc_Viewport:
    # Line 1743
    addiu	$sp,$sp,-48
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,3768
    sd	$gp,0($sp)
    bltz	$a2,.L0da701d8
    addu	$gp,$t9,$at
    # Line 1746
    bltz	$a3,.L0da701ec
    # Line 1749
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 1752
    lw	$a6,4136($zero)
    slti	$v0,$a6,5
    beqz	$v0,.L0da70184
    nop
    sd	$a1,24($sp)
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    ld	$a0,16($sp)
    move	$a6,$v0
.L0da70184:
    lw	$a4,4144($zero)
    # Line 1759
    ld	$gp,0($sp)
    # Line 1757
    sw	$a3,16($a4)
    # Line 1756
    sw	$a2,12($a4)
    # Line 1754
    sw	$a0,4($a4)
    # Line 1753
    li	$a5,227
    sw	$a5,0($a4)
    # Line 1755
    sw	$a1,8($a4)
    # Line 1758
    addiu	$a1,$a4,20
    sw	$a1,4144($zero)
    ld	$ra,8($sp)
    lw	$v1,4148($zero)
    addiu	$a0,$a6,-5
    sw	$a0,4136($zero)
    # Line 1759
    addiu	$sp,$sp,48
    # Line 1758
    addiu	$v1,$v1,5
    # Line 1759
    jr	$ra
    # Line 1758
    sw	$v1,4148($zero)
.L0da701cc:
    # Line 1759
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da701d8:
    # Line 1745
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da701cc
    ld	$ra,8($sp)
.L0da701ec:
    # Line 1749
    jalr	$t9
    nop
    b	.L0da701cc
    ld	$ra,8($sp)
.end __glkonlc_Viewport

# Function: __glkonlc_BlendColorEXT
# Declared: Line 1760 (Source lines: 1760-1768)
# Address: 0x0da70200 - 0x0da702b0 (Size: 176 bytes, Frame: 48)
.globl __glkonlc_BlendColorEXT
.ent __glkonlc_BlendColorEXT
__glkonlc_BlendColorEXT:
    # Line 1761
    lw	$a2,4136($zero)
    # Line 1760
    mov.s	$f6,$f15
    addiu	$sp,$sp,-48
    mov.s	$f5,$f14
    lui	$at,0x2
    # Line 1761
    slti	$v0,$a2,5
    # Line 1760
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,3544
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1761
    bnez	$v0,.L0da7027c
    # Line 1760
    addu	$gp,$t9,$at
.L0da70234:
    # Line 1761
    lw	$a0,4144($zero)
    # Line 1768
    ld	$gp,8($sp)
    # Line 1762
    li	$a1,230
    sw	$a1,0($a0)
    # Line 1763
    swc1	$f30,4($a0)
    # Line 1764
    swc1	$f4,8($a0)
    # Line 1765
    swc1	$f5,12($a0)
    # Line 1766
    swc1	$f6,16($a0)
    # Line 1767
    addiu	$a0,$a0,20
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-5
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1768
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    # Line 1767
    addiu	$v0,$v0,5
    # Line 1768
    jr	$ra
    # Line 1767
    sw	$v0,4148($zero)
.L0da7027c:
    sdc1	$f15,16($sp)
    # Line 1761
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
    b	.L0da70234
    move	$a2,$v0
.end __glkonlc_BlendColorEXT

# Function: __glkonlc_BlendEquationEXT
# Declared: Line 1769 (Source lines: 1769-1774)
# Address: 0x0da702b0 - 0x0da70364 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_BlendEquationEXT
.ent __glkonlc_BlendEquationEXT
__glkonlc_BlendEquationEXT:
    # Line 1769
    addiu	$sp,$sp,-32
    # Line 1770
    lw	$a2,4136($zero)
    # Line 1771
    li	$a1,231
    # Line 1769
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1770
    slti	$v0,$a2,2
    # Line 1769
    addiu	$at,$at,3368
    # Line 1773
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1770
    bnez	$v0,.L0da70314
    # Line 1769
    addu	$gp,$t9,$at
    # Line 1770
    lw	$a0,4144($zero)
    # Line 1774
    ld	$gp,8($sp)
    # Line 1771
    sw	$a1,0($a0)
    # Line 1772
    sw	$s8,4($a0)
    # Line 1773
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1774
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1773
    addiu	$v0,$v0,2
    # Line 1774
    jr	$ra
    # Line 1773
    sw	$v0,4148($zero)
.L0da70314:
    # Line 1770
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1774
    ld	$gp,8($sp)
    # Line 1771
    li	$a5,231
    sw	$a5,0($a4)
    # Line 1772
    sw	$s8,4($a4)
    # Line 1773
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1774
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1773
    addiu	$a2,$a2,2
    # Line 1774
    jr	$ra
    # Line 1773
    sw	$a2,4148($zero)
.end __glkonlc_BlendEquationEXT

# Function: __glkonlc_PolygonOffsetEXT
# Declared: Line 1775 (Source lines: 1775-1781)
# Address: 0x0da70370 - 0x0da70400 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_PolygonOffsetEXT
.ent __glkonlc_PolygonOffsetEXT
__glkonlc_PolygonOffsetEXT:
    # Line 1776
    lw	$a2,4136($zero)
    # Line 1775
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1776
    slti	$v0,$a2,3
    # Line 1775
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,3176
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1776
    bnez	$v0,.L0da703dc
    # Line 1775
    addu	$gp,$t9,$at
.L0da7039c:
    # Line 1776
    lw	$a0,4144($zero)
    # Line 1781
    ld	$gp,8($sp)
    # Line 1777
    li	$a1,283
    sw	$a1,0($a0)
    # Line 1778
    swc1	$f30,4($a0)
    # Line 1779
    swc1	$f4,8($a0)
    # Line 1780
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1781
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 1780
    addiu	$v0,$v0,3
    # Line 1781
    jr	$ra
    # Line 1780
    sw	$v0,4148($zero)
.L0da703dc:
    # Line 1776
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ldc1	$f4,16($sp)
    b	.L0da7039c
    move	$a2,$v0
.end __glkonlc_PolygonOffsetEXT

# Function: __glkonlc_ResetHistogramEXT
# Declared: Line 1782 (Source lines: 1782-1787)
# Address: 0x0da70400 - 0x0da704b4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ResetHistogramEXT
.ent __glkonlc_ResetHistogramEXT
__glkonlc_ResetHistogramEXT:
    # Line 1782
    addiu	$sp,$sp,-32
    # Line 1783
    lw	$a2,4136($zero)
    # Line 1784
    li	$a1,259
    # Line 1782
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1783
    slti	$v0,$a2,2
    # Line 1782
    addiu	$at,$at,3032
    # Line 1786
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1783
    bnez	$v0,.L0da70464
    # Line 1782
    addu	$gp,$t9,$at
    # Line 1783
    lw	$a0,4144($zero)
    # Line 1787
    ld	$gp,8($sp)
    # Line 1784
    sw	$a1,0($a0)
    # Line 1785
    sw	$s8,4($a0)
    # Line 1786
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1787
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1786
    addiu	$v0,$v0,2
    # Line 1787
    jr	$ra
    # Line 1786
    sw	$v0,4148($zero)
.L0da70464:
    # Line 1783
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1787
    ld	$gp,8($sp)
    # Line 1784
    li	$a5,259
    sw	$a5,0($a4)
    # Line 1785
    sw	$s8,4($a4)
    # Line 1786
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1787
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1786
    addiu	$a2,$a2,2
    # Line 1787
    jr	$ra
    # Line 1786
    sw	$a2,4148($zero)
.end __glkonlc_ResetHistogramEXT

# Function: __glkonlc_ResetMinmaxEXT
# Declared: Line 1788 (Source lines: 1788-1793)
# Address: 0x0da704c0 - 0x0da70574 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ResetMinmaxEXT
.ent __glkonlc_ResetMinmaxEXT
__glkonlc_ResetMinmaxEXT:
    # Line 1788
    addiu	$sp,$sp,-32
    # Line 1789
    lw	$a2,4136($zero)
    # Line 1790
    li	$a1,264
    # Line 1788
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1789
    slti	$v0,$a2,2
    # Line 1788
    addiu	$at,$at,2840
    # Line 1792
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1789
    bnez	$v0,.L0da70524
    # Line 1788
    addu	$gp,$t9,$at
    # Line 1789
    lw	$a0,4144($zero)
    # Line 1793
    ld	$gp,8($sp)
    # Line 1790
    sw	$a1,0($a0)
    # Line 1791
    sw	$s8,4($a0)
    # Line 1792
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1793
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1792
    addiu	$v0,$v0,2
    # Line 1793
    jr	$ra
    # Line 1792
    sw	$v0,4148($zero)
.L0da70524:
    # Line 1789
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1793
    ld	$gp,8($sp)
    # Line 1790
    li	$a5,264
    sw	$a5,0($a4)
    # Line 1791
    sw	$s8,4($a4)
    # Line 1792
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1793
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1792
    addiu	$a2,$a2,2
    # Line 1793
    jr	$ra
    # Line 1792
    sw	$a2,4148($zero)
.end __glkonlc_ResetMinmaxEXT

# Function: __glkonlc_PolygonOffset
# Declared: Line 1794 (Source lines: 1794-1800)
# Address: 0x0da70580 - 0x0da70610 (Size: 144 bytes, Frame: 32)
.globl __glkonlc_PolygonOffset
.ent __glkonlc_PolygonOffset
__glkonlc_PolygonOffset:
    # Line 1795
    lw	$a2,4136($zero)
    # Line 1794
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1795
    slti	$v0,$a2,3
    # Line 1794
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    addiu	$at,$at,2648
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1795
    bnez	$v0,.L0da705ec
    # Line 1794
    addu	$gp,$t9,$at
.L0da705ac:
    # Line 1795
    lw	$a0,4144($zero)
    # Line 1800
    ld	$gp,8($sp)
    # Line 1796
    li	$a1,360
    sw	$a1,0($a0)
    # Line 1797
    swc1	$f30,4($a0)
    # Line 1798
    swc1	$f4,8($a0)
    # Line 1799
    addiu	$a0,$a0,12
    sw	$a0,4144($zero)
    addiu	$v1,$a2,-3
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1800
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,32
    # Line 1799
    addiu	$v0,$v0,3
    # Line 1800
    jr	$ra
    # Line 1799
    sw	$v0,4148($zero)
.L0da705ec:
    # Line 1795
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    ldc1	$f4,16($sp)
    b	.L0da705ac
    move	$a2,$v0
.end __glkonlc_PolygonOffset

# Function: __glkonlc_Indexub
# Declared: Line 1801 (Source lines: 1801-1806)
# Address: 0x0da70610 - 0x0da706cc (Size: 188 bytes, Frame: 32)
.globl __glkonlc_Indexub
.ent __glkonlc_Indexub
__glkonlc_Indexub:
    # Line 1803
    li	$a3,117
    # Line 1802
    lw	$a2,4136($zero)
    # Line 1801
    lui	$at,0x2
    addiu	$sp,$sp,-32
    sd	$s8,0($sp)
    move	$s8,$a0
    # Line 1802
    slti	$v0,$a2,2
    # Line 1801
    addiu	$at,$at,2504
    # Line 1804
    sll	$a1,$s8,0x18
    sd	$gp,8($sp)
    # Line 1802
    bnez	$v0,.L0da70678
    # Line 1801
    addu	$gp,$t9,$at
    # Line 1806
    ld	$gp,8($sp)
    # Line 1802
    lw	$a0,4144($zero)
    # Line 1806
    ld	$s8,0($sp)
    # Line 1803
    sw	$a3,0($a0)
    # Line 1804
    sw	$a1,4($a0)
    # Line 1805
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-2
    sw	$v1,4136($zero)
    # Line 1806
    addiu	$sp,$sp,32
    # Line 1805
    addiu	$v0,$v0,2
    # Line 1806
    jr	$ra
    # Line 1805
    sw	$v0,4148($zero)
.L0da70678:
    # Line 1802
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    # Line 1806
    ld	$gp,8($sp)
    # Line 1802
    lw	$a6,4144($zero)
    # Line 1804
    sll	$a7,$s8,0x18
    # Line 1806
    ld	$s8,0($sp)
    # Line 1803
    li	$t0,117
    sw	$t0,0($a6)
    # Line 1804
    sw	$a7,4($a6)
    # Line 1805
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    ld	$ra,16($sp)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 1806
    addiu	$sp,$sp,32
    # Line 1805
    addiu	$a4,$a4,2
    # Line 1806
    jr	$ra
    # Line 1805
    sw	$a4,4148($zero)
.end __glkonlc_Indexub

# Function: __glkonlc_Indexubv
# Declared: Line 1807 (Source lines: 1807-1812)
# Address: 0x0da706d0 - 0x0da70758 (Size: 136 bytes, Frame: 32)
.globl __glkonlc_Indexubv
.ent __glkonlc_Indexubv
__glkonlc_Indexubv:
    # Line 1808
    lw	$a3,4136($zero)
    # Line 1807
    addiu	$sp,$sp,-32
    lui	$at,0x2
    # Line 1808
    slti	$v0,$a3,2
    # Line 1807
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,2312
    sd	$gp,8($sp)
    # Line 1808
    bnez	$v0,.L0da7073c
    # Line 1807
    addu	$gp,$t9,$at
.L0da706f8:
    # Line 1808
    lw	$a0,4144($zero)
    # Line 1812
    ld	$gp,8($sp)
    # Line 1809
    li	$a2,117
    sw	$a2,0($a0)
    # Line 1810
    lbu	$a1,0($s8)
    # Line 1812
    ld	$s8,0($sp)
    # Line 1810
    sll	$a1,$a1,0x18
    sw	$a1,4($a0)
    # Line 1811
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-2
    sw	$v1,4136($zero)
    # Line 1812
    addiu	$sp,$sp,32
    # Line 1811
    addiu	$v0,$v0,2
    # Line 1812
    jr	$ra
    # Line 1811
    sw	$v0,4148($zero)
.L0da7073c:
    # Line 1808
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    b	.L0da706f8
    move	$a3,$v0
.end __glkonlc_Indexubv

# Function: __glkonlc_SamplePatternSGIS
# Declared: Line 1813 (Source lines: 1813-1818)
# Address: 0x0da70760 - 0x0da70814 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_SamplePatternSGIS
.ent __glkonlc_SamplePatternSGIS
__glkonlc_SamplePatternSGIS:
    # Line 1813
    addiu	$sp,$sp,-32
    # Line 1814
    lw	$a2,4136($zero)
    # Line 1815
    li	$a1,279
    # Line 1813
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1814
    slti	$v0,$a2,2
    # Line 1813
    addiu	$at,$at,2168
    # Line 1817
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1814
    bnez	$v0,.L0da707c4
    # Line 1813
    addu	$gp,$t9,$at
    # Line 1814
    lw	$a0,4144($zero)
    # Line 1818
    ld	$gp,8($sp)
    # Line 1815
    sw	$a1,0($a0)
    # Line 1816
    sw	$s8,4($a0)
    # Line 1817
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1818
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1817
    addiu	$v0,$v0,2
    # Line 1818
    jr	$ra
    # Line 1817
    sw	$v0,4148($zero)
.L0da707c4:
    # Line 1814
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1818
    ld	$gp,8($sp)
    # Line 1815
    li	$a5,279
    sw	$a5,0($a4)
    # Line 1816
    sw	$s8,4($a4)
    # Line 1817
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1818
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1817
    addiu	$a2,$a2,2
    # Line 1818
    jr	$ra
    # Line 1817
    sw	$a2,4148($zero)
.end __glkonlc_SamplePatternSGIS

# Function: __glkonlc_TagSampleBufferSGIX
# Declared: Line 1820 (Source lines: 1821-1821)
# Address: 0x0da70820 - 0x0da70828 (Size: 8 bytes, Frame: 0)
.globl __glkonlc_TagSampleBufferSGIX
.ent __glkonlc_TagSampleBufferSGIX
__glkonlc_TagSampleBufferSGIX:
    # Line 1821
    jr	$ra
    nop
.end __glkonlc_TagSampleBufferSGIX

# Function: __glkonlc_ColorTableParameterfvSGI
# Declared: Line 1822 (Source lines: 1822-1832)
# Address: 0x0da70830 - 0x0da708e4 (Size: 180 bytes, Frame: 48)
.globl __glkonlc_ColorTableParameterfvSGI
.ent __glkonlc_ColorTableParameterfvSGI
__glkonlc_ColorTableParameterfvSGI:
    # Line 1823
    lw	$a5,4136($zero)
    # Line 1822
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1823
    slti	$v0,$a5,7
    # Line 1822
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,1960
    sd	$gp,8($sp)
    # Line 1823
    bnez	$v0,.L0da708b8
    # Line 1822
    addu	$gp,$t9,$at
.L0da70858:
    # Line 1823
    lw	$a0,4144($zero)
    # Line 1826
    sw	$a1,8($a0)
    # Line 1825
    sw	$s8,4($a0)
    # Line 1824
    li	$a3,235
    sw	$a3,0($a0)
    # Line 1827
    lwc1	$f3,0($a2)
    swc1	$f3,12($a0)
    # Line 1828
    lwc1	$f2,4($a2)
    swc1	$f2,16($a0)
    # Line 1829
    lwc1	$f1,8($a2)
    # Line 1832
    ld	$gp,8($sp)
    # Line 1829
    swc1	$f1,20($a0)
    # Line 1830
    lwc1	$f0,12($a2)
    # Line 1832
    ld	$s8,0($sp)
    # Line 1830
    swc1	$f0,24($a0)
    # Line 1831
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-7
    sw	$v1,4136($zero)
    # Line 1832
    addiu	$sp,$sp,48
    # Line 1831
    addiu	$v0,$v0,7
    # Line 1832
    jr	$ra
    # Line 1831
    sw	$v0,4148($zero)
.L0da708b8:
    # Line 1823
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da70858
    move	$a5,$v0
.end __glkonlc_ColorTableParameterfvSGI

# Function: __glkonlc_ColorTableParameterivSGI
# Declared: Line 1833 (Source lines: 1833-1843)
# Address: 0x0da708f0 - 0x0da709c4 (Size: 212 bytes, Frame: 48)
.globl __glkonlc_ColorTableParameterivSGI
.ent __glkonlc_ColorTableParameterivSGI
__glkonlc_ColorTableParameterivSGI:
    # Line 1834
    lw	$a5,4136($zero)
    # Line 1833
    addiu	$sp,$sp,-48
    lui	$at,0x2
    # Line 1834
    slti	$v0,$a5,7
    # Line 1833
    sd	$s8,0($sp)
    move	$s8,$a0
    addiu	$at,$at,1768
    sd	$gp,8($sp)
    # Line 1834
    bnez	$v0,.L0da70998
    # Line 1833
    addu	$gp,$t9,$at
.L0da70918:
    # Line 1834
    lw	$a0,4144($zero)
    # Line 1837
    sw	$a1,8($a0)
    # Line 1836
    sw	$s8,4($a0)
    # Line 1835
    li	$a7,235
    sw	$a7,0($a0)
    # Line 1838
    lw	$a6,0($a2)
    mtc1	$a6,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,12($a0)
    # Line 1839
    lw	$a4,4($a2)
    mtc1	$a4,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,16($a0)
    # Line 1840
    lw	$a3,8($a2)
    mtc1	$a3,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,20($a0)
    # Line 1841
    lw	$a1,12($a2)
    mtc1	$a1,$f0
    cvt.s.w	$f0,$f0
    # Line 1843
    ld	$gp,8($sp)
    ld	$s8,0($sp)
    # Line 1841
    swc1	$f0,24($a0)
    # Line 1842
    addiu	$a0,$a0,28
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a5,-7
    sw	$v1,4136($zero)
    # Line 1843
    addiu	$sp,$sp,48
    # Line 1842
    addiu	$v0,$v0,7
    # Line 1843
    jr	$ra
    # Line 1842
    sw	$v0,4148($zero)
.L0da70998:
    # Line 1834
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    ld	$a2,16($sp)
    b	.L0da70918
    move	$a5,$v0
.end __glkonlc_ColorTableParameterivSGI

# Function: __glkonlc_SpriteParameterfSGIX
# Declared: Line 1844 (Source lines: 1844-1860)
# Address: 0x0da709d0 - 0x0da70ac0 (Size: 240 bytes, Frame: 32)
.globl __glkonlc_SpriteParameterfSGIX
.ent __glkonlc_SpriteParameterfSGIX
__glkonlc_SpriteParameterfSGIX:
    # Line 1844
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    li	$at,0x8149
    lui	$v0,0x2
    sdc1	$f20,0($sp)
    addiu	$v0,$v0,1544
    mov.s	$f20,$f13
    sd	$gp,8($sp)
    beq	$a0,$at,.L0da70a0c
    addu	$gp,$t9,$v0
    # Line 1846
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ldc1	$f20,0($sp)
    b	.L0da70aa4
    ld	$ra,16($sp)
.L0da70a0c:
    # Line 1849
    lwc1	$f0,_lit_47014c00
    c.eq.s	$f13,$f0
    lwc1	$f2,_lit_47014e00
    bc1t	.L0da70a38
    lwc1	$f1,_lit_47014d00
    c.eq.s $f13,$f1
    bc1t .L0da70a38
    nop
    c.eq.s $f13,$f2
    bc1f .L0da70ab0
    # Line 1852
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0da70a38:
    # Line 1855
    lw	$a3,4136($zero)
    slti	$v1,$a3,3
    beqz	$v1,.L0da70a5c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    move	$a3,$v0
.L0da70a5c:
    # Line 1860
    ld	$gp,8($sp)
    # Line 1855
    lw	$a2,4144($zero)
    # Line 1858
    trunc.w.s	$f3,$f20
    # Line 1860
    ldc1	$f20,0($sp)
    # Line 1856
    li	$a4,420
    sw	$a4,0($a2)
    # Line 1857
    sw	$a0,4($a2)
    # Line 1858
    swc1	$f3,8($a2)
    # Line 1859
    addiu	$a2,$a2,12
    sw	$a2,4144($zero)
    ld	$ra,16($sp)
    lw	$a0,4148($zero)
    addiu	$a1,$a3,-3
    sw	$a1,4136($zero)
    # Line 1860
    addiu	$sp,$sp,32
    # Line 1859
    addiu	$a0,$a0,3
    # Line 1860
    jr	$ra
    # Line 1859
    sw	$a0,4148($zero)
.L0da70aa4:
    # Line 1860
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da70ab0:
    # Line 1852
    jalr	$t9
    ldc1	$f20,0($sp)
    b	.L0da70aa4
    ld	$ra,16($sp)
.end __glkonlc_SpriteParameterfSGIX

# Function: __glkonlc_SpriteParameteriSGIX
# Declared: Line 1861 (Source lines: 1861-1877)
# Address: 0x0da70ac0 - 0x0da70ba0 (Size: 224 bytes, Frame: 32)
.globl __glkonlc_SpriteParameteriSGIX
.ent __glkonlc_SpriteParameteriSGIX
__glkonlc_SpriteParameteriSGIX:
    # Line 1866
    li	$a2,0x814e
    # Line 1861
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    li	$at,0x8149
    lui	$v0,0x2
    move	$s0,$a1
    sd	$ra,16($sp)
    addiu	$v0,$v0,1304
    sd	$gp,8($sp)
    beq	$a0,$at,.L0da70b00
    addu	$gp,$t9,$v0
    # Line 1863
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da70b94
    ld	$ra,16($sp)
.L0da70b00:
    # Line 1866
    li	$v1,0x814c
    beq	$a1,$v1,.L0da70b2c
    li	$a1,0x814d
    beq	$s0,$a1,.L0da70b2c
    nop
    beq	$s0,$a2,.L0da70b2c
    # Line 1869
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0da70b94
    ld	$ra,16($sp)
.L0da70b2c:
    # Line 1872
    lw	$a1,4136($zero)
    slti	$a3,$a1,3
    beqz	$a3,.L0da70b50
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    move	$a1,$v0
.L0da70b50:
    lw	$a6,4144($zero)
    # Line 1877
    ld	$gp,8($sp)
    # Line 1873
    li	$a7,420
    sw	$a7,0($a6)
    # Line 1874
    sw	$a0,4($a6)
    # Line 1875
    sw	$s0,8($a6)
    # Line 1876
    addiu	$a6,$a6,12
    sw	$a6,4144($zero)
    addiu	$a5,$a1,-3
    sw	$a5,4136($zero)
    ld	$ra,16($sp)
    lw	$a4,4148($zero)
    # Line 1877
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 1876
    addiu	$a4,$a4,3
    # Line 1877
    jr	$ra
    # Line 1876
    sw	$a4,4148($zero)
.L0da70b94:
    # Line 1877
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_SpriteParameteriSGIX

# Function: __glkonlc_ReadInstrumentsSGIX
# Declared: Line 1878 (Source lines: 1878-1883)
# Address: 0x0da70ba0 - 0x0da70c54 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_ReadInstrumentsSGIX
.ent __glkonlc_ReadInstrumentsSGIX
__glkonlc_ReadInstrumentsSGIX:
    # Line 1878
    addiu	$sp,$sp,-32
    # Line 1879
    lw	$a2,4136($zero)
    # Line 1880
    li	$a1,461
    # Line 1878
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1879
    slti	$v0,$a2,2
    # Line 1878
    addiu	$at,$at,1080
    # Line 1882
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1879
    bnez	$v0,.L0da70c04
    # Line 1878
    addu	$gp,$t9,$at
    # Line 1879
    lw	$a0,4144($zero)
    # Line 1883
    ld	$gp,8($sp)
    # Line 1880
    sw	$a1,0($a0)
    # Line 1881
    sw	$s8,4($a0)
    # Line 1882
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1883
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1882
    addiu	$v0,$v0,2
    # Line 1883
    jr	$ra
    # Line 1882
    sw	$v0,4148($zero)
.L0da70c04:
    # Line 1879
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1883
    ld	$gp,8($sp)
    # Line 1880
    li	$a5,461
    sw	$a5,0($a4)
    # Line 1881
    sw	$s8,4($a4)
    # Line 1882
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1883
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1882
    addiu	$a2,$a2,2
    # Line 1883
    jr	$ra
    # Line 1882
    sw	$a2,4148($zero)
.end __glkonlc_ReadInstrumentsSGIX

# Function: __glkonlc_StartInstrumentsSGIX
# Declared: Line 1884 (Source lines: 1884-1889)
# Address: 0x0da70c60 - 0x0da70d04 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_StartInstrumentsSGIX
.ent __glkonlc_StartInstrumentsSGIX
__glkonlc_StartInstrumentsSGIX:
    # Line 1885
    lw	$a1,4136($zero)
    # Line 1884
    lui	$at,0x2
    # Line 1885
    slti	$v0,$a1,2
    # Line 1884
    addiu	$sp,$sp,-16
    addiu	$at,$at,888
    sd	$gp,0($sp)
    # Line 1885
    bnez	$v0,.L0da70cb8
    # Line 1884
    addu	$gp,$t9,$at
    # Line 1885
    lw	$a0,4144($zero)
    # Line 1889
    ld	$gp,0($sp)
    # Line 1886
    li	$a2,441
    sw	$a2,0($a0)
    # Line 1887
    sw	$zero,4($a0)
    # Line 1888
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1889
    addiu	$sp,$sp,16
    # Line 1888
    addiu	$v0,$v0,2
    # Line 1889
    jr	$ra
    # Line 1888
    sw	$v0,4148($zero)
.L0da70cb8:
    # Line 1885
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1889
    ld	$gp,0($sp)
    # Line 1886
    li	$a6,441
    sw	$a6,0($a5)
    # Line 1887
    sw	$zero,4($a5)
    # Line 1888
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1889
    addiu	$sp,$sp,16
    # Line 1888
    addiu	$a3,$a3,2
    # Line 1889
    jr	$ra
    # Line 1888
    sw	$a3,4148($zero)
.end __glkonlc_StartInstrumentsSGIX

# Function: __glkonlc_StopInstrumentsSGIX
# Declared: Line 1890 (Source lines: 1890-1895)
# Address: 0x0da70d10 - 0x0da70dc4 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_StopInstrumentsSGIX
.ent __glkonlc_StopInstrumentsSGIX
__glkonlc_StopInstrumentsSGIX:
    # Line 1890
    addiu	$sp,$sp,-32
    # Line 1891
    lw	$a2,4136($zero)
    # Line 1892
    li	$a1,442
    # Line 1890
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x2
    # Line 1891
    slti	$v0,$a2,2
    # Line 1890
    addiu	$at,$at,712
    # Line 1894
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1891
    bnez	$v0,.L0da70d74
    # Line 1890
    addu	$gp,$t9,$at
    # Line 1891
    lw	$a0,4144($zero)
    # Line 1895
    ld	$gp,8($sp)
    # Line 1892
    sw	$a1,0($a0)
    # Line 1893
    sw	$s8,4($a0)
    # Line 1894
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1895
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1894
    addiu	$v0,$v0,2
    # Line 1895
    jr	$ra
    # Line 1894
    sw	$v0,4148($zero)
.L0da70d74:
    # Line 1891
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1895
    ld	$gp,8($sp)
    # Line 1892
    li	$a5,442
    sw	$a5,0($a4)
    # Line 1893
    sw	$s8,4($a4)
    # Line 1894
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1895
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1894
    addiu	$a2,$a2,2
    # Line 1895
    jr	$ra
    # Line 1894
    sw	$a2,4148($zero)
.end __glkonlc_StopInstrumentsSGIX

# Function: __glkonlc_FlushRasterSGIX
# Declared: Line 1896 (Source lines: 1896-1901)
# Address: 0x0da70dd0 - 0x0da70e74 (Size: 164 bytes, Frame: 16)
.globl __glkonlc_FlushRasterSGIX
.ent __glkonlc_FlushRasterSGIX
__glkonlc_FlushRasterSGIX:
    # Line 1897
    lw	$a1,4136($zero)
    # Line 1896
    lui	$at,0x2
    # Line 1897
    slti	$v0,$a1,2
    # Line 1896
    addiu	$sp,$sp,-16
    addiu	$at,$at,520
    sd	$gp,0($sp)
    # Line 1897
    bnez	$v0,.L0da70e28
    # Line 1896
    addu	$gp,$t9,$at
    # Line 1897
    lw	$a0,4144($zero)
    # Line 1901
    ld	$gp,0($sp)
    # Line 1898
    li	$a2,460
    sw	$a2,0($a0)
    # Line 1899
    sw	$zero,4($a0)
    # Line 1900
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a1,-2
    sw	$v1,4136($zero)
    # Line 1901
    addiu	$sp,$sp,16
    # Line 1900
    addiu	$v0,$v0,2
    # Line 1901
    jr	$ra
    # Line 1900
    sw	$v0,4148($zero)
.L0da70e28:
    # Line 1897
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a5,4144($zero)
    # Line 1901
    ld	$gp,0($sp)
    # Line 1898
    li	$a6,460
    sw	$a6,0($a5)
    # Line 1899
    sw	$zero,4($a5)
    # Line 1900
    addiu	$a5,$a5,8
    sw	$a5,4144($zero)
    ld	$ra,8($sp)
    lw	$a3,4148($zero)
    addiu	$a4,$v0,-2
    sw	$a4,4136($zero)
    # Line 1901
    addiu	$sp,$sp,16
    # Line 1900
    addiu	$a3,$a3,2
    # Line 1901
    jr	$ra
    # Line 1900
    sw	$a3,4148($zero)
.end __glkonlc_FlushRasterSGIX

# Function: __glkonlc_ReferencePlaneSGIX
# Declared: Line 1902 (Source lines: 1902-1910)
# Address: 0x0da70e80 - 0x0da70f5c (Size: 220 bytes, Frame: 192)
.globl __glkonlc_ReferencePlaneSGIX
.ent __glkonlc_ReferencePlaneSGIX
__glkonlc_ReferencePlaneSGIX:
    # Line 1903
    lw	$a3,4136($zero)
    # Line 1902
    addiu	$sp,$sp,-64
    lui	$at,0x2
    # Line 1903
    slti	$v0,$a3,9
    # Line 1902
    sd	$s8,32($sp)
    move	$s8,$a0
    addiu	$at,$at,344
    sd	$gp,40($sp)
    # Line 1903
    bnez	$v0,.L0da70f40
    # Line 1902
    addu	$gp,$t9,$at
.L0da70ea8:
    # Line 1903
    lw	$a0,4144($zero)
    # Line 1904
    li	$t2,445
    sw	$t2,0($a0)
    # Line 1905
    ldc1	$f3,0($s8)
    sdc1	$f3,0($sp)
    lw	$t1,0($sp)
    lw	$t0,4($sp)
    sw	$t0,8($a0)
    sw	$t1,4($a0)
    # Line 1906
    ldc1	$f2,8($s8)
    sdc1	$f2,8($sp)
    lw	$a7,8($sp)
    lw	$a6,12($sp)
    sw	$a6,16($a0)
    sw	$a7,12($a0)
    # Line 1907
    ldc1	$f1,16($s8)
    # Line 1910
    ld	$gp,40($sp)
    # Line 1907
    sdc1	$f1,16($sp)
    lw	$a5,16($sp)
    lw	$a4,20($sp)
    sw	$a4,24($a0)
    sw	$a5,20($a0)
    # Line 1908
    ldc1	$f0,24($s8)
    # Line 1910
    ld	$s8,32($sp)
    # Line 1908
    sdc1	$f0,24($sp)
    lw	$a1,28($sp)
    lw	$a2,24($sp)
    sw	$a2,28($a0)
    sw	$a1,32($a0)
    # Line 1909
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a3,-9
    sw	$v1,4136($zero)
    # Line 1910
    addiu	$sp,$sp,64
    # Line 1909
    addiu	$v0,$v0,9
    # Line 1910
    jr	$ra
    # Line 1909
    sw	$v0,4148($zero)
.L0da70f40:
    # Line 1903
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,48($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,48($sp)
    b	.L0da70ea8
    move	$a3,$v0
.end __glkonlc_ReferencePlaneSGIX

.rdata
_lit_47014c00:
    .word 0x47014c00
_lit_47014d00:
    .word 0x47014d00
_lit_47014e00:
    .word 0x47014e00

