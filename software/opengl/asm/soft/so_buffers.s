# Source: ../soft/so_buffers.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_buffers.c
# Total Functions: 6

.text

# Function: __glInitBuffer
# Declared: Line 31 (Source lines: 32-43)
# Address: 0x0d9c6f20 - 0x0d9c6f54 (Size: 52 bytes, Frame: 0)
.globl __glInitBuffer
.ent __glInitBuffer
__glInitBuffer:
    # Line 32
    lui	$a3,0xd
    addiu	$a3,$a3,-24392
    addu	$at,$t9,$a3
    # Line 35
    la	$v0,__glMakeCurrentBuffer
    # Line 36
    la	$v1,__glLoseCurrentBuffer
    # Line 32
    la	$a1,__glResizeBuffer
    # Line 40
    la	$a2,__glMoveBuffer
    sw	$a2,60($a0)
    # Line 39
    sw	$a1,56($a0)
    # Line 38
    sw	$a1,52($a0)
    # Line 36
    sw	$v1,48($a0)
    # Line 43
    jr	$ra
    # Line 35
    sw	$v0,44($a0)
.end __glInitBuffer

# Function: __glMakeCurrentBuffer
# Declared: Line 48 (Source lines: 51-61)
# Address: 0x0d9c6f60 - 0x0d9c6f9c (Size: 60 bytes, Frame: 0)
.globl __glMakeCurrentBuffer
.ent __glMakeCurrentBuffer
__glMakeCurrentBuffer:
    # Line 51
    lw	$a5,0($a1)
    sw	$a5,16($a0)
    # Line 52
    lw	$a4,4($a1)
    sw	$a4,20($a0)
    # Line 53
    lw	$a3,8($a1)
    sw	$a3,28($a0)
    # Line 54
    lw	$v1,12($a1)
    sw	$v1,40($a0)
    # Line 55
    lw	$v0,3704($a2)
    sw	$v0,8($a0)
    # Line 56
    lw	$at,3700($a2)
    # Line 60
    sw	$a1,68($a0)
    # Line 59
    sw	$a2,0($a0)
    # Line 61
    jr	$ra
    # Line 56
    sw	$at,4($a0)
.end __glMakeCurrentBuffer

# Function: __glLoseCurrentBuffer
# Declared: Line 67 (Source lines: 69-83)
# Address: 0x0d9c6fa0 - 0x0d9c6fdc (Size: 60 bytes, Frame: 0)
.globl __glLoseCurrentBuffer
.ent __glLoseCurrentBuffer
__glLoseCurrentBuffer:
    # Line 69
    lw	$at,0($a0)
    beqz	$at,.L0d9c6fd4
    lw	$a2,68($a0)
    # Line 76
    sw	$zero,0($a0)
    # Line 79
    lw	$a3,16($a0)
    sw	$a3,0($a2)
    # Line 80
    lw	$a1,20($a0)
    sw	$a1,4($a2)
    # Line 81
    lw	$v1,28($a0)
    sw	$v1,8($a2)
    # Line 82
    lw	$v0,40($a0)
    # Line 83
    jr	$ra
    # Line 82
    sw	$v0,12($a2)
.L0d9c6fd4:
    # Line 83
    jr	$ra
    nop
.end __glLoseCurrentBuffer

# Function: __glResizeBuffer
# Declared: Line 88 (Source lines: 89-107)
# Address: 0x0d9c6fe0 - 0x0d9c70dc (Size: 252 bytes, Frame: 48)
.globl __glResizeBuffer
.ent __glResizeBuffer
__glResizeBuffer:
    # Line 92
    mult	$a1,$a2
    lw	$v1,24($a0)
    mflo	$a3
    nop
    nop
    multu	$v1,$a3
    # Line 94
    lw	$a4,16($a0)
    # Line 89
    addiu	$sp,$sp,-48
    # Line 94
    lw	$v0,20($a0)
    # Line 89
    sd	$s0,16($sp)
    # Line 92
    mflo	$a5
    # Line 90
    lw	$a6,0($a0)
    # Line 89
    lui	$at,0xd
    # Line 94
    sltu	$v0,$v0,$a5
    # Line 89
    move	$s0,$a0
    sd	$gp,8($sp)
    addiu	$at,$at,-24584
    # Line 90
    lw	$a6,31552($a6)
    # Line 94
    bnez	$v0,.L0d9c70a0
    # Line 89
    addu	$gp,$t9,$at
    # Line 94
    bnez	$a4,.L0d9c7084
    sd	$a5,0($sp)
.L0d9c7038:
    sd	$a2,40($sp)
    # Line 98
    lw	$t9,8($a6)
    sd	$a1,32($sp)
    sd	$ra,24($sp)
    jalr	$t9
    ld	$a0,0($sp)
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    ld	$ra,24($sp)
    ld	$a2,0($sp)
    sw	$v0,16($s0)
.L0d9c7064:
    # Line 107
    ld	$gp,8($sp)
    # Line 106
    sw	$a0,8($s0)
    # Line 105
    sw	$a1,28($s0)
    # Line 104
    sw	$a1,4($s0)
    # Line 101
    sw	$a2,20($s0)
    # Line 107
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c7084:
    # Line 106
    sw	$a2,8($a0)
    # Line 105
    sw	$a1,28($a0)
    # Line 104
    sw	$a1,4($a0)
    # Line 107
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c70a0:
    sd	$a5,0($sp)
    sd	$a2,40($sp)
    sd	$a1,32($sp)
    # Line 94
    beqz	$a4,.L0d9c7038
    sd	$ra,24($sp)
    # Line 96
    lw	$t9,16($a6)
    move	$a0,$a4
    jalr	$t9
    ld	$a1,0($sp)
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    ld	$ra,24($sp)
    ld	$a2,0($sp)
    b	.L0d9c7064
    sw	$v0,16($s0)
.end __glResizeBuffer

# Function: __glMoveBuffer
# Declared: Line 112 (Source lines: 114-116)
# Address: 0x0d9c70e0 - 0x0d9c70ec (Size: 12 bytes, Frame: 0)
.globl __glMoveBuffer
.ent __glMoveBuffer
__glMoveBuffer:
    # Line 115
    sw	$a2,36($a0)
    # Line 116
    jr	$ra
    # Line 114
    sw	$a1,32($a0)
.end __glMoveBuffer

# Function: __glFreeBuffer
# Declared: Line 125 (Source lines: 126-132)
# Address: 0x0d9c70f0 - 0x0d9c7138 (Size: 72 bytes, Frame: 32)
.globl __glFreeBuffer
.ent __glFreeBuffer
__glFreeBuffer:
    # Line 126
    lw	$a3,0($a0)
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$ra,8($sp)
    addiu	$at,$at,-24856
    sd	$gp,0($sp)
    beqz	$a3,.L0d9c7124
    addu	$gp,$t9,$at
    # Line 128
    lw	$t9,20($a1)
    sd	$a0,16($sp)
    jalr	$t9
    move	$a0,$a3
    ld	$a0,16($sp)
.L0d9c7124:
    ld	$ra,8($sp)
    # Line 131
    sw	$zero,0($a0)
    # Line 132
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFreeBuffer

