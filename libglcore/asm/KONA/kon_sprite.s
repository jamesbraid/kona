# Source: ../KONA/kon_sprite.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_sprite.c
# Total Functions: 4

.text

# Function: __glkonim_SpriteParameterfvSGIX
# Declared: Line 35 (Source lines: 35-61)
# Address: 0x0d963d30 - 0x0d963e18 (Size: 232 bytes, Frame: 16)
.globl __glkonim_SpriteParameterfvSGIX
.ent __glkonim_SpriteParameterfvSGIX
__glkonim_SpriteParameterfvSGIX:
    # Line 36
    li	$v0,0x8149
    # Line 35
    lui	$at,0x13
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11608
    sd	$gp,0($sp)
    # Line 36
    beq	$a0,$v0,.L0d963dac
    # Line 35
    addu	$gp,$t9,$at
    # Line 36
    li	$v0,0x814a
    beq	$a0,$v0,.L0d963d7c
    li	$v1,0x814b
    beq	$a0,$v1,.L0d963d7c
    # Line 39
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d963d70:
    # Line 61
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d963d7c:
    ld	$gp,0($sp)
    # Line 59
    lwc1	$f0,8($a1)
    # Line 58
    lwc1	$f1,4($a1)
    # Line 57
    lwc1	$f2,0($a1)
    # Line 56
    li	$a1,421
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    # Line 57
    swc1	$f2,16384($zero)
    # Line 58
    swc1	$f1,16384($zero)
    # Line 61
    addiu	$sp,$sp,16
    jr	$ra
    # Line 59
    swc1	$f0,16384($zero)
.L0d963dac:
    # Line 44
    lwc1	$f3,_lit_47014c00
    lwc1	$f4,0($a1)
    c.eq.s	$f4,$f3
    lwc1	$f5,_lit_47014d00
    # Line 50
    li	$a2,421
    # Line 44
    bc1t	.L0d963de0
    lwc1	$f6,_lit_47014e00
    c.eq.s $f4,$f5
    bc1t .L0d963de0
    nop
    c.eq.s $f4,$f6
    bc1f .L0d963e04
    # Line 47
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d963de0:
    # Line 61
    ld	$gp,0($sp)
    # Line 50
    sw	$a2,16384($zero)
    sw	$a0,16384($zero)
    # Line 51
    trunc.w.s	$f7,$f4
    swc1	$f7,16384($zero)
    # Line 52
    swc1	$f7,16384($zero)
    # Line 61
    addiu	$sp,$sp,16
    jr	$ra
    # Line 53
    swc1	$f7,16384($zero)
.L0d963e04:
    sd	$ra,8($sp)
    # Line 47
    jal	__glSetError
    li	$a0,1280
    b	.L0d963d70
    ld	$ra,8($sp)
.end __glkonim_SpriteParameterfvSGIX

# Function: __glkonim_SpriteParameterivSGIX
# Declared: Line 64 (Source lines: 65-80)
# Address: 0x0d963e20 - 0x0d963ea8 (Size: 136 bytes, Frame: 32)
.globl __glkonim_SpriteParameterivSGIX
.ent __glkonim_SpriteParameterivSGIX
__glkonim_SpriteParameterivSGIX:
    # Line 65
    li	$v0,0x8149
    lui	$at,0x13
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11848
    sd	$gp,16($sp)
    beq	$a0,$v0,.L0d963e90
    addu	$gp,$t9,$at
    # Line 71
    addiu	$a3,$sp,0
    # Line 74
    lw	$a2,0($a1)
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($sp)
    lw	$v1,4($a1)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,4($sp)
    lw	$v0,8($a1)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,8($sp)
    sd	$ra,24($sp)
.L0d963e74:
    # Line 78
    # lw $t9, -31912($gp) # &__glkonim_SpriteParameterfvSGIX
    bal __glkonim_SpriteParameterfvSGIX
    addiu	$a1,$sp,0
    ld	$ra,24($sp)
    # Line 80
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d963e90:
    # Line 71
    lw	$a3,0($a1)
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    sd	$ra,24($sp)
    b	.L0d963e74
    swc1	$f3,0($sp)
.end __glkonim_SpriteParameterivSGIX

# Function: __glkonlc_SpriteParameterfvSGIX
# Declared: Line 85 (Source lines: 85-116)
# Address: 0x0d963eb0 - 0x0d964050 (Size: 416 bytes, Frame: 32)
.globl __glkonlc_SpriteParameterfvSGIX
.ent __glkonlc_SpriteParameterfvSGIX
__glkonlc_SpriteParameterfvSGIX:
    # Line 86
    li	$v1,0x814a
    # Line 85
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 86
    li	$at,0x8149
    # Line 85
    lui	$v0,0x13
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-11992
    sd	$gp,8($sp)
    # Line 86
    beq	$a0,$at,.L0d963f84
    # Line 85
    addu	$gp,$t9,$v0
    # Line 86
    beq	$a0,$v1,.L0d963efc
    li	$a0,0x814b
    beq	$s0,$a0,.L0d963efc
    # Line 89
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0d963f78
    ld	$ra,16($sp)
.L0d963efc:
    # Line 108
    lw	$a0,4136($zero)
    slti	$a2,$a0,5
    beqz	$a2,.L0d963f20
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    move	$a0,$v0
.L0d963f20:
    lw	$a5,4144($zero)
    # Line 110
    sw	$s0,4($a5)
    # Line 109
    li	$a6,421
    sw	$a6,0($a5)
    # Line 111
    lwc1	$f2,0($a1)
    # Line 116
    ld	$gp,8($sp)
    # Line 111
    swc1	$f2,8($a5)
    # Line 112
    lwc1	$f1,4($a1)
    # Line 116
    ld	$s0,0($sp)
    # Line 112
    swc1	$f1,12($a5)
    # Line 113
    lwc1	$f0,8($a1)
    ld	$ra,16($sp)
    swc1	$f0,16($a5)
    # Line 114
    addiu	$a5,$a5,20
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    addiu	$a4,$a0,-5
    sw	$a4,4136($zero)
    # Line 116
    addiu	$sp,$sp,32
    # Line 114
    addiu	$a3,$a3,5
    # Line 116
    jr	$ra
    # Line 114
    sw	$a3,4148($zero)
.L0d963f78:
    # Line 116
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d963f84:
    # Line 93
    lwc1	$f3,_lit_47014c00
    lwc1	$f4,0($a1)
    c.eq.s	$f4,$f3
    lwc1	$f6,_lit_47014e00
    bc1t	.L0d963fb4
    lwc1	$f5,_lit_47014d00
    c.eq.s $f4,$f5
    bc1t .L0d963fb4
    nop
    c.eq.s $f4,$f6
    bc1f .L0d96403c
    # Line 96
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d963fb4:
    # Line 99
    lw	$a0,4136($zero)
    slti	$a7,$a0,5
    beqz	$a7,.L0d963fd8
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,24($sp)
    move	$a0,$v0
.L0d963fd8:
    lw	$t2,4144($zero)
    # Line 101
    sw	$s0,4($t2)
    # Line 100
    li	$t3,421
    sw	$t3,0($t2)
    # Line 102
    lwc1	$f9,0($a1)
    trunc.w.s	$f9,$f9
    swc1	$f9,8($t2)
    # Line 103
    lwc1	$f8,0($a1)
    trunc.w.s	$f8,$f8
    swc1	$f8,12($t2)
    # Line 104
    lwc1	$f7,0($a1)
    # Line 116
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    ld	$ra,16($sp)
    # Line 104
    trunc.w.s	$f7,$f7
    swc1	$f7,16($t2)
    # Line 105
    addiu	$t2,$t2,20
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    addiu	$t1,$a0,-5
    sw	$t1,4136($zero)
    # Line 116
    addiu	$sp,$sp,32
    # Line 105
    addiu	$t0,$t0,5
    # Line 116
    jr	$ra
    # Line 105
    sw	$t0,4148($zero)
.L0d96403c:
    ld	$s0,0($sp)
    # Line 96
    jalr	$t9
    li	$a0,1280
    b	.L0d963f78
    ld	$ra,16($sp)
.end __glkonlc_SpriteParameterfvSGIX

# Function: __glkonlc_SpriteParameterivSGIX
# Declared: Line 119 (Source lines: 120-135)
# Address: 0x0d964050 - 0x0d9640d8 (Size: 136 bytes, Frame: 32)
.globl __glkonlc_SpriteParameterivSGIX
.ent __glkonlc_SpriteParameterivSGIX
__glkonlc_SpriteParameterivSGIX:
    # Line 120
    li	$v0,0x8149
    lui	$at,0x13
    addiu	$sp,$sp,-32
    addiu	$at,$at,-12408
    sd	$gp,16($sp)
    beq	$a0,$v0,.L0d9640c0
    addu	$gp,$t9,$at
    # Line 126
    addiu	$a3,$sp,0
    # Line 129
    lw	$a2,0($a1)
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($sp)
    lw	$v1,4($a1)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,4($sp)
    lw	$v0,8($a1)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,8($sp)
    sd	$ra,24($sp)
.L0d9640a4:
    # Line 133
    # lw $t9, -31904($gp) # &__glkonlc_SpriteParameterfvSGIX
    bal __glkonlc_SpriteParameterfvSGIX
    addiu	$a1,$sp,0
    ld	$ra,24($sp)
    # Line 135
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9640c0:
    # Line 126
    lw	$a3,0($a1)
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    sd	$ra,24($sp)
    b	.L0d9640a4
    swc1	$f3,0($sp)
.end __glkonlc_SpriteParameterivSGIX

.rdata
_lit_47014c00:
    .word 0x47014c00
_lit_47014d00:
    .word 0x47014d00
_lit_47014e00:
    .word 0x47014e00

