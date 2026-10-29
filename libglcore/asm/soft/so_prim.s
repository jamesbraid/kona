# Source: ../soft/so_prim.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_prim.c
# Total Functions: 5

.text

# Function: __glim_Begin
# Declared: Line 24 (Source lines: 25-48)
# Address: 0x0da02070 - 0x0da0213c (Size: 204 bytes, Frame: 32)
.globl __glim_Begin
.ent __glim_Begin
__glim_Begin:
    # Line 25
    move	$a3,$a0
    # Line 38
    sltiu	$v1,$a0,10
    # Line 29
    lw	$a2,4120($zero)
    li	$v0,2
    # Line 25
    lui	$at,0x9
    # Line 26
    lw	$a4,4112($zero)
    # Line 25
    addiu	$sp,$sp,-32
    addiu	$at,$at,-4248
    sd	$gp,16($sp)
    # Line 29
    beqz	$a2,.L0da020c8
    # Line 25
    addu	$gp,$t9,$at
    sd	$a4,8($sp)
    sd	$a0,0($sp)
    # Line 29
    beq	$a2,$v0,.L0da020e4
    sd	$ra,24($sp)
    # Line 37
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
.L0da020bc:
    # Line 48
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da020c8:
    # Line 38
    bnez	$v1,.L0da02118
    sd	$ra,24($sp)
    # Line 43
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da020bc
    ld	$ra,24($sp)
.L0da020e4:
    # Line 32
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    # Line 34
    ld	$t9,8($sp)
    # Line 33
    sw	$zero,4120($zero)
    # Line 34
    lw	$t9,6132($t9)
    lw	$t9,28($t9)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0da020bc
    ld	$ra,24($sp)
.L0da02118:
    # Line 47
    sll	$t9,$a0,0x2
    # Line 46
    li	$ra,1
    sw	$ra,4120($zero)
    # Line 47
    addu	$t9,$a4,$t9
    lw	$t9,12084($t9)
    jalr	$t9
    move	$a0,$a4
    b	.L0da020bc
    ld	$ra,24($sp)
.end __glim_Begin

# Function: __glim_End
# Declared: Line 50 (Source lines: 51-63)
# Address: 0x0da02140 - 0x0da021b0 (Size: 112 bytes, Frame: 16)
.globl __glim_End
.ent __glim_End
__glim_End:
    # Line 55
    lw	$a2,4120($zero)
    # Line 52
    lw	$a0,4112($zero)
    # Line 51
    addiu	$sp,$sp,-16
    lui	$at,0x9
    sd	$ra,8($sp)
    addiu	$at,$at,-4456
    sd	$gp,0($sp)
    # Line 56
    beqz	$a2,.L0da0219c
    # Line 51
    addu	$gp,$t9,$at
    # Line 56
    li	$v0,2
    beq	$a2,$v0,.L0da021a0
    # Line 57
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 61
    lw	$t9,12124($a0)
    jal	__glSetError
    nop
    ld	$ra,8($sp)
    # Line 62
    sw	$zero,4120($zero)
    # Line 63
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da02190:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da0219c:
    # Line 57
    # lw $t9, -28616($gp) # &__glSetError
.L0da021a0:
    jal	__glSetError
    li	$a0,1282
    b	.L0da02190
    ld	$ra,8($sp)
.end __glim_End

# Function: __glNop
# Declared: Line 67 (Source lines: 67-67)
# Address: 0x0da021b0 - 0x0da021b8 (Size: 8 bytes, Frame: 0)
.globl __glNop
.ent __glNop
__glNop:
    # Line 67
    jr	$ra
    nop
.end __glNop

# Function: __glEndPrim
# Declared: Line 72 (Source lines: 73-76)
# Address: 0x0da021c0 - 0x0da021e0 (Size: 32 bytes, Frame: 0)
.globl __glEndPrim
.ent __glEndPrim
__glEndPrim:
    # Line 73
    lui	$a1,0x9
    addiu	$a1,$a1,-4584
    addu	$at,$t9,$a1
    # Line 74
    la	$v0,__glNop
    # Line 75
    la	$v1,__glEndPrim
    sw	$v1,12124($a0)
    # Line 76
    jr	$ra
    # Line 74
    sw	$v0,12004($a0)
.end __glEndPrim

# Function: __glim_UnimplementedExtension
# Declared: Line 79 (Source lines: 80-82)
# Address: 0x0da021e0 - 0x0da02214 (Size: 52 bytes, Frame: 16)
.globl __glim_UnimplementedExtension
.ent __glim_UnimplementedExtension
__glim_UnimplementedExtension:
    # Line 80
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-4616
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 81
    # lw $t9, -28616($gp) # &__glSetError
    # Line 80
    sd	$ra,0($sp)
    # Line 81
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 82
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_UnimplementedExtension

