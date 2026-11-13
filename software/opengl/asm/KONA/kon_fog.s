# Source: ../KONA/kon_fog.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_fog.c
# Total Functions: 2

.text

# Function: __glkonim_FogFuncSGIS
# Declared: Line 31 (Source lines: 32-64)
# Address: 0x0d9833f0 - 0x0d983510 (Size: 288 bytes, Frame: 16)
.globl __glkonim_FogFuncSGIS
.ent __glkonim_FogFuncSGIS
__glkonim_FogFuncSGIS:
    # Line 32
    move	$a7,$a0
    addiu	$sp,$sp,-16
    lui	$at,0x11
    move	$a6,$a1
    sd	$ra,8($sp)
    addiu	$at,$at,-9240
    sd	$gp,0($sp)
    # Line 35
    blez	$a0,.L0d9834fc
    # Line 32
    addu	$gp,$t9,$at
    # Line 35
    slti	$v0,$a0,33
    beqz	$v0,.L0d983500
    # Line 36
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 44
    lwc1	$f0,0($a1)
    dmtc1	$zero,$f5
    cvt.d.s	$f0,$f0
    c.lt.d	$f0,$f5
    # Line 41
    addiu	$a4,$a1,4
    # Line 40
    move	$a3,$a1
    # Line 44
    bc1t	.L0d9834ec
    # Line 45
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 44
    lwc1	$f1,4($a1)
    cvt.d.s	$f1,$f1
    # Line 46
    addu	$a1,$a0,$a0
    # Line 44
    c.lt.d $f1,$f5
    # Line 46
    sll	$a5,$a1,0x2
    addu	$a5,$a6,$a5
    # Line 44
    bc1t .L0d9834e8
    # Line 46
    addiu	$a5,$a5,-8
    beq	$a5,$a6,.L0d9834b0
    # Line 63
    nop	# was lw $t9, -19580($gp) # &__glkon_datavn
    nop
    # Line 52
    lwc1	$f3,0($a3)
.L0d983470:
    lwc1	$f2,8($a3)
    c.lt.s $f2,$f3
    bc1t .L0d9834d0
    # Line 53
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 52
    lwc1	$f4,8($a4)
    lwc1	$f6,0($a4)
    c.lt.s $f6,$f4
    bc1t .L0d9834cc
    # Line 57
    addiu	$a4,$a4,8
    # Line 52
    cvt.d.s	$f7,$f4
    c.lt.d $f7,$f5
    bc1t .L0d9834cc
    # Line 56
    addiu	$a3,$a3,8
    # Line 57
    bnel	$a5,$a3,.L0d983470
    # Line 52
    lwc1	$f3,0($a3)
    # Line 63
    # lw $t9, -19580($gp) # &__glkon_datavn
.L0d9834b0:
    # Line 61
    li	$t0,271
    sw	$t0,16384($zero)
    # Line 63
    move	$a0,$a6
    jal	__glkon_datavn
    # Line 61
    sw	$a7,16384($zero)
    b	.L0d9834dc
    ld	$ra,8($sp)
.L0d9834cc:
    # Line 53
    # lw $t9, -28616($gp) # &__glSetError
.L0d9834d0:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,8($sp)
.L0d9834dc:
    # Line 64
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9834e8:
    # Line 45
    # lw $t9, -28616($gp) # &__glSetError
.L0d9834ec:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9834dc
    ld	$ra,8($sp)
.L0d9834fc:
    # Line 36
    # lw $t9, -28616($gp) # &__glSetError
.L0d983500:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9834dc
    ld	$ra,8($sp)
.end __glkonim_FogFuncSGIS

# Function: __glkonlc_FogFuncSGIS
# Declared: Line 66 (Source lines: 67-105)
# Address: 0x0d983510 - 0x0d98371c (Size: 524 bytes, Frame: 192)
.globl __glkonlc_FogFuncSGIS
.ent __glkonlc_FogFuncSGIS
__glkonlc_FogFuncSGIS:
    # Line 67
    addiu	$sp,$sp,-64
    # Line 82
    addu	$a6,$a0,$a0
    # Line 67
    sd	$s1,0($sp)
    move	$s1,$a0
    sd	$s0,8($sp)
    lui	$at,0x11
    move	$s0,$a1
    sd	$ra,48($sp)
    addiu	$at,$at,-9528
    sd	$gp,16($sp)
    # Line 71
    blez	$a0,.L0d9836e0
    # Line 67
    addu	$gp,$t9,$at
    # Line 71
    slti	$v0,$a0,33
    beqz	$v0,.L0d9836e4
    # Line 72
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 80
    lwc1	$f0,0($a1)
    dmtc1	$zero,$f5
    cvt.d.s	$f0,$f0
    c.lt.d	$f0,$f5
    # Line 77
    addiu	$a4,$a1,4
    # Line 76
    move	$a3,$a1
    # Line 80
    bc1t	.L0d9836d0
    # Line 81
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 80
    lwc1	$f1,4($a1)
    cvt.d.s	$f1,$f1
    c.lt.d $f1,$f5
    bc1t .L0d9836d0
    # Line 81
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 82
    sll	$a7,$a6,0x2
    addu	$a5,$a7,$a1
    addiu	$a5,$a5,-8
    # Line 97
    addiu	$t0,$a6,2
    # Line 82
    beq	$a5,$a1,.L0d9835e0
    nop
    nop
    # Line 88
    lwc1	$f3,0($a3)
.L0d9835a0:
    lwc1	$f2,8($a3)
    c.lt.s $f2,$f3
    bc1t .L0d9836ac
    # Line 89
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 88
    lwc1	$f4,8($a4)
    lwc1	$f6,0($a4)
    c.lt.s $f6,$f4
    bc1t .L0d9836a8
    # Line 93
    addiu	$a4,$a4,8
    # Line 88
    cvt.d.s	$f7,$f4
    c.lt.d $f7,$f5
    bc1t .L0d9836ac
    # Line 89
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 92
    addiu	$a3,$a3,8
    # Line 93
    bnel	$a5,$a3,.L0d9835a0
    # Line 88
    lwc1	$f3,0($a3)
.L0d9835e0:
    # Line 97
    lw	$a4,4136($zero)
    slt	$t1,$a4,$t0
    bnez	$t1,.L0d9836f4
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d9835f0:
    # Line 105
    ld	$gp,16($sp)
    # Line 99
    sll	$a3,$t0,0x2
    # Line 98
    li	$t2,271
    # Line 97
    lw	$a5,4144($zero)
    ld	$ra,48($sp)
    subu	$a4,$a4,$a6
    # Line 99
    slti	$t3,$t0,3
    # Line 97
    addiu	$a4,$a4,-2
    # Line 99
    addiu	$a1,$a5,8
    sw	$s1,4($a5)
    # Line 104
    addu	$s1,$a7,$a5
    # Line 99
    bnez	$t3,.L0d98367c
    # Line 98
    sw	$t2,0($a5)
    # Line 99
    move	$t1,$a6
    andi	$t2,$a6,0x1
    addu	$a3,$s0,$a3
    addiu	$a0,$s0,8
    beqz	$t2,.L0d98364c
    sra	$t3,$t1,0x1
    # Line 102
    lwc1	$f8,0($s0)
    # Line 101
    addiu	$a0,$s0,12
    addiu	$a1,$a5,12
    # Line 102
    swc1	$f8,8($a5)
.L0d98364c:
    beqz	$t3,.L0d98367c
    nop
    nop
    nop
    nop
.L0d983660:
    lwc1	$f10,-8($a0)
    # Line 101
    addiu	$a0,$a0,8
    # Line 102
    swc1	$f10,0($a1)
    lwc1	$f9,-12($a0)
    # Line 101
    addiu	$a1,$a1,8
    bne	$a0,$a3,.L0d983660
    # Line 102
    swc1	$f9,-4($a1)
.L0d98367c:
    # Line 104
    sw	$a4,4136($zero)
    lw	$s0,4148($zero)
    addiu	$s1,$s1,8
    sw	$s1,4144($zero)
    # Line 105
    ld	$s1,0($sp)
    # Line 104
    addu	$s0,$s0,$a6
    addiu	$s0,$s0,2
    sw	$s0,4148($zero)
    # Line 105
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9836a8:
    # Line 89
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d9836ac:
    jal	__glsplc_InvalidValue
    nop
    ld	$ra,48($sp)
.L0d9836b8:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 105
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 81
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d9836d0:
    jal	__glsplc_InvalidValue
    nop
    b	.L0d9836b8
    ld	$ra,48($sp)
.L0d9836e0:
    # Line 72
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d9836e4:
    jal	__glsplc_InvalidValue
    nop
    b	.L0d9836b8
    ld	$ra,48($sp)
.L0d9836f4:
    sd	$t0,24($sp)
    sd	$a7,32($sp)
    sd	$a6,40($sp)
    # Line 97
    jalr	$t9
    move	$a0,$zero
    ld	$a6,40($sp)
    ld	$a7,32($sp)
    ld	$t0,24($sp)
    b	.L0d9835f0
    move	$a4,$v0
.end __glkonlc_FogFuncSGIS

