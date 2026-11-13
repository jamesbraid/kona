# Source: ../KONA/kon_materiali.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_materiali.c
# Total Functions: 4

.text

# Function: __glkonim_Materiali
# Declared: Line 33 (Source lines: 33-45)
# Address: 0x0d9844e0 - 0x0d984554 (Size: 116 bytes, Frame: 16)
.globl __glkonim_Materiali
.ent __glkonim_Materiali
__glkonim_Materiali:
    # Line 33
    li	$v0,5633
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13576
    sd	$gp,0($sp)
    beq	$a1,$v0,.L0d984514
    addu	$gp,$t9,$at
    # Line 35
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d984548
    ld	$ra,8($sp)
.L0d984514:
    # Line 40
    mtc1	$a2,$f0
    # Line 45
    ld	$gp,0($sp)
    # Line 38
    li	$v0,151
    sw	$v0,16384($zero)
    # Line 40
    cvt.s.w	$f0,$f0
    # Line 38
    sw	$a0,16384($zero)
    # Line 39
    sw	$a1,16384($zero)
    # Line 40
    swc1	$f0,16384($zero)
    # Line 41
    sw	$zero,16384($zero)
    # Line 42
    sw	$zero,16384($zero)
    # Line 45
    addiu	$sp,$sp,16
    jr	$ra
    # Line 43
    sw	$zero,16384($zero)
.L0d984548:
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_Materiali

# Function: __glkonim_Materialiv
# Declared: Line 47 (Source lines: 47-65)
# Address: 0x0d984560 - 0x0d98462c (Size: 204 bytes, Frame: 0)
.globl __glkonim_Materialiv
.ent __glkonim_Materialiv
__glkonim_Materialiv:
    # Line 48
    li	$v1,5633
    # Line 47
    lui	$v0,0x11
    addiu	$v0,$v0,-13704
    # Line 48
    beq	$a1,$v1,.L0d9845e4
    # Line 47
    addu	$at,$t9,$v0
    # Line 48
    li	$v1,5635
    beq	$a1,$v1,.L0d9845e4
    # Line 60
    lwc1	$f0,_lit_30000000
    lw	$a6,0($a2)
    # Line 61
    lw	$a5,4($a2)
    # Line 62
    lw	$a4,8($a2)
    # Line 60
    mtc1	$a6,$f4
    # Line 63
    lw	$a3,12($a2)
    # Line 61
    mtc1	$a5,$f3
    # Line 62
    mtc1	$a4,$f1
    # Line 63
    mtc1	$a3,$f2
    # Line 60
    cvt.s.w	$f4,$f4
    # Line 61
    cvt.s.w	$f3,$f3
    # Line 58
    li	$a2,151
    sw	$a2,16384($zero)
    # Line 62
    cvt.s.w	$f1,$f1
    # Line 58
    sw	$a0,16384($zero)
    # Line 63
    cvt.s.w	$f2,$f2
    # Line 59
    sw	$a1,16384($zero)
    # Line 60
    mul.s	$f4,$f0,$f4
    # Line 61
    mul.s	$f3,$f0,$f3
    # Line 60
    swc1	$f4,16384($zero)
    # Line 62
    mul.s	$f1,$f0,$f1
    # Line 61
    swc1	$f3,16384($zero)
    # Line 63
    mul.s	$f0,$f0,$f2
    # Line 62
    swc1	$f1,16384($zero)
    # Line 65
    jr	$ra
    # Line 63
    swc1	$f0,16384($zero)
.L0d9845e4:
    # Line 51
    lw	$t2,0($a2)
    # Line 52
    lw	$t1,4($a2)
    # Line 53
    lw	$t0,8($a2)
    # Line 51
    mtc1	$t2,$f7
    # Line 52
    mtc1	$t1,$f6
    # Line 53
    mtc1	$t0,$f5
    # Line 49
    li	$a7,151
    sw	$a7,16384($zero)
    # Line 51
    cvt.s.w	$f7,$f7
    # Line 49
    sw	$a0,16384($zero)
    # Line 52
    cvt.s.w	$f6,$f6
    # Line 50
    sw	$a1,16384($zero)
    # Line 53
    cvt.s.w	$f5,$f5
    # Line 51
    swc1	$f7,16384($zero)
    # Line 52
    swc1	$f6,16384($zero)
    # Line 53
    swc1	$f5,16384($zero)
    # Line 65
    jr	$ra
    # Line 54
    sw	$zero,16384($zero)
.end __glkonim_Materialiv

# Function: __glkonlc_Materiali
# Declared: Line 67 (Source lines: 67-81)
# Address: 0x0d984630 - 0x0d9846fc (Size: 204 bytes, Frame: 48)
.globl __glkonlc_Materiali
.ent __glkonlc_Materiali
__glkonlc_Materiali:
    # Line 67
    addiu	$sp,$sp,-48
    li	$at,5633
    lui	$v0,0x11
    sd	$ra,8($sp)
    addiu	$v0,$v0,-13912
    sd	$gp,0($sp)
    beq	$a1,$at,.L0d984664
    addu	$gp,$t9,$v0
    # Line 69
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0d9846f0
    ld	$ra,8($sp)
.L0d984664:
    # Line 72
    lw	$a5,4136($zero)
    slti	$v1,$a5,7
    beqz	$v1,.L0d984698
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    sd	$a2,32($sp)
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    ld	$a0,16($sp)
    move	$a5,$v0
.L0d984698:
    # Line 81
    ld	$gp,0($sp)
    # Line 76
    mtc1	$a2,$f0
    # Line 72
    lw	$a2,4144($zero)
    ld	$ra,8($sp)
    # Line 73
    li	$a3,151
    sw	$a3,0($a2)
    # Line 74
    sw	$a0,4($a2)
    # Line 75
    sw	$a1,8($a2)
    # Line 77
    sw	$zero,16($a2)
    # Line 76
    cvt.s.w	$f0,$f0
    # Line 78
    sw	$zero,20($a2)
    # Line 79
    sw	$zero,24($a2)
    # Line 76
    swc1	$f0,12($a2)
    # Line 80
    addiu	$a2,$a2,28
    sw	$a2,4144($zero)
    lw	$a0,4148($zero)
    addiu	$a1,$a5,-7
    sw	$a1,4136($zero)
    # Line 81
    addiu	$sp,$sp,48
    # Line 80
    addiu	$a0,$a0,7
    # Line 81
    jr	$ra
    # Line 80
    sw	$a0,4148($zero)
.L0d9846f0:
    # Line 81
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonlc_Materiali

# Function: __glkonlc_Materialiv
# Declared: Line 82 (Source lines: 82-103)
# Address: 0x0d984700 - 0x0d984870 (Size: 368 bytes, Frame: 48)
.globl __glkonlc_Materialiv
.ent __glkonlc_Materialiv
__glkonlc_Materialiv:
    # Line 82
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    # Line 83
    lw	$a5,4136($zero)
    # Line 82
    move	$s8,$a2
    sd	$s0,24($sp)
    move	$s0,$a1
    lui	$at,0x11
    # Line 83
    slti	$v0,$a5,7
    # Line 82
    sd	$s7,16($sp)
    move	$s7,$a0
    addiu	$at,$at,-14120
    sd	$gp,8($sp)
    # Line 83
    bnez	$v0,.L0d9847e8
    # Line 82
    addu	$gp,$t9,$at
.L0d984738:
    # Line 83
    lw	$a0,4144($zero)
    # Line 96
    lwc1	$f0,_lit_30000000
    # Line 102
    addiu	$a3,$a5,-7
    # Line 88
    li	$v1,5633
    # Line 86
    sw	$s0,8($a0)
    # Line 88
    li	$a1,5635
    # Line 84
    li	$v0,151
    # Line 85
    sw	$s7,4($a0)
    # Line 102
    addiu	$a4,$a0,28
    # Line 88
    beq	$s0,$v1,.L0d984804
    # Line 84
    sw	$v0,0($a0)
    # Line 88
    beq	$s0,$a1,.L0d984804
    nop
    # Line 96
    lw	$t1,0($s8)
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f0,$f4
    swc1	$f4,12($a0)
    # Line 97
    lw	$t0,4($s8)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f0,$f3
    swc1	$f3,16($a0)
    # Line 98
    lw	$a7,8($s8)
    mtc1	$a7,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f0,$f2
    swc1	$f2,20($a0)
    # Line 99
    lw	$a6,12($s8)
    mtc1	$a6,$f1
    cvt.s.w	$f1,$f1
    # Line 103
    ld	$s7,16($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s8,0($sp)
    # Line 99
    mul.s	$f0,$f0,$f1
    swc1	$f0,24($a0)
    # Line 102
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    sw	$a3,4136($zero)
    # Line 103
    addiu	$sp,$sp,48
    # Line 102
    addiu	$a2,$a2,7
    # Line 103
    jr	$ra
    # Line 102
    sw	$a2,4148($zero)
.L0d9847e8:
    # Line 83
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    b	.L0d984738
    move	$a5,$v0
.L0d984804:
    # Line 89
    lw	$t9,0($s8)
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,12($a0)
    # Line 90
    lw	$t8,4($s8)
    mtc1	$t8,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,16($a0)
    # Line 91
    lw	$s7,8($s8)
    mtc1	$s7,$f6
    # Line 103
    ld	$gp,8($sp)
    # Line 92
    mtc1	$zero,$f5
    # Line 103
    ld	$s8,0($sp)
    # Line 91
    cvt.s.w	$f6,$f6
    # Line 92
    swc1	$f5,24($a0)
    # Line 103
    ld	$s7,16($sp)
    # Line 91
    swc1	$f6,20($a0)
    # Line 102
    addiu	$t3,$a5,-7
    sw	$t3,4136($zero)
    addiu	$s0,$a0,28
    sw	$s0,4144($zero)
    lw	$t2,4148($zero)
    # Line 103
    ld	$s0,24($sp)
    addiu	$sp,$sp,48
    # Line 102
    addiu	$t2,$t2,7
    # Line 103
    jr	$ra
    # Line 102
    sw	$t2,4148($zero)
.end __glkonlc_Materialiv

.rdata
_lit_30000000:
    .word 0x30000000

