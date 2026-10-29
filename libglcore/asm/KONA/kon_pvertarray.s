# Source: ../KONA/kon_pvertarray.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_pvertarray.c
# Total Functions: 2

.text

# Function: __glKonSendPackedVertex
# Declared: Line 23 (Source lines: 25-45)
# Address: 0x0d95c960 - 0x0d95ca00 (Size: 160 bytes, Frame: 48)
.globl __glKonSendPackedVertex
.ent __glKonSendPackedVertex
__glKonSendPackedVertex:
    # Line 31
    li	$v0,439
    sw	$v0,16384($zero)
    sw	$a3,16384($zero)
    # Line 25
    addiu	$sp,$sp,-48
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    lui	$v1,0x13
    sd	$a1,40($sp)
    addiu	$v1,$v1,18040
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 34
    # lw $t9, -18404($gp) # &glBegin
    # Line 25
    sd	$s8,8($sp)
    # Line 31
    sra	$at,$a3,0x10
    # Line 25
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 31
    andi	$at,$at,0xff
    # Line 34
    jal	glBegin
    # Line 31
    sw	$at,16384($zero)
    # Line 37
    ld	$ra,24($sp)
    sra	$ra,$ra,0x18
    # lw $t9, -18632($gp) # &__glkon_pvarray_funcs
    andi	$ra,$ra,0xf
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    ld	$a1,40($sp)
    move	$a0,$s8
    jal	__glkon_pvarray_funcs
    ld	$a2,32($sp)
    # Line 40
    # lw $t9, -18260($gp) # &glEnd
    jal	glEnd
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    # Line 43
    li	$at,463
    sw	$at,16384($zero)
    sw	$zero,16384($zero)
    # Line 45
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonSendPackedVertex

# Function: __glKonlSendPackedVertex
# Declared: Line 49 (Source lines: 51-78)
# Address: 0x0d95ca00 - 0x0d95cb30 (Size: 304 bytes, Frame: 48)
.globl __glKonlSendPackedVertex
.ent __glKonlSendPackedVertex
__glKonlSendPackedVertex:
    # Line 51
    addiu	$sp,$sp,-48
    sd	$a2,32($sp)
    sd	$s0,0($sp)
    # Line 57
    lw	$a6,4136($zero)
    # Line 51
    move	$s0,$a3
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s1,8($sp)
    lui	$v0,0x13
    # Line 57
    slti	$at,$a6,3
    # Line 51
    move	$s1,$a0
    sd	$ra,40($sp)
    addiu	$v0,$v0,17880
    sd	$gp,24($sp)
    # Line 57
    bnez	$at,.L0d95cb0c
    # Line 51
    addu	$gp,$t9,$v0
.L0d95ca40:
    # Line 57
    lw	$a2,4144($zero)
    # Line 58
    li	$a4,439
    sw	$a4,0($a2)
    # Line 60
    sra	$a3,$s0,0x10
    # Line 59
    sw	$s0,4($a2)
    # Line 60
    andi	$a3,$a3,0xff
    sw	$a3,8($a2)
    # Line 61
    addiu	$a2,$a2,12
    sw	$a2,4144($zero)
    # Line 64
    # lw $t9, -18404($gp) # &glBegin
    # Line 61
    lw	$v1,4148($zero)
    # Line 64
    move	$a0,$s1
    # Line 61
    addiu	$a1,$a6,-3
    sw	$a1,4136($zero)
    addiu	$v1,$v1,3
    # Line 64
    jal	glBegin
    # Line 61
    sw	$v1,4148($zero)
    # Line 67
    sra	$ra,$s0,0x18
    # lw $t9, -18628($gp) # &__glkon_pvarray_lfuncs
    andi	$ra,$ra,0xf
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a1,$s8
    jal	__glkon_pvarray_lfuncs
    ld	$a2,32($sp)
    # Line 70
    # lw $t9, -18260($gp) # &glEnd
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jal	glEnd
    ld	$s8,16($sp)
    # Line 73
    lw	$a0,4136($zero)
    slti	$at,$a0,2
    bnez	$at,.L0d95cb20
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d95cad0:
    lw	$a1,4144($zero)
    # Line 78
    ld	$gp,24($sp)
    # Line 74
    li	$a2,463
    sw	$a2,0($a1)
    # Line 75
    sw	$zero,4($a1)
    # Line 76
    addiu	$a1,$a1,8
    sw	$a1,4144($zero)
    ld	$ra,40($sp)
    lw	$v0,4148($zero)
    addiu	$v1,$a0,-2
    sw	$v1,4136($zero)
    # Line 78
    addiu	$sp,$sp,48
    # Line 76
    addiu	$v0,$v0,2
    # Line 78
    jr	$ra
    # Line 76
    sw	$v0,4148($zero)
.L0d95cb0c:
    # Line 57
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0d95ca40
    move	$a6,$v0
.L0d95cb20:
    # Line 73
    jalr	$t9
    move	$a0,$zero
    b	.L0d95cad0
    move	$a0,$v0
.end __glKonlSendPackedVertex

