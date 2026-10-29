# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/dlist/dl_interp.s
# Category: dlist
# Compiler Options: 
# Total Functions: 4

.text

# Function: __glDoInterpret
# Declared: Line 57 (Source lines: 57-78)
# Address: 0x0da77a10 - 0x0da77a94 (Size: 132 bytes, Frame: 192)
.globl __glDoInterpret
.ent __glDoInterpret
__glDoInterpret:
    # Line 57
    addiu	$sp,$sp,-64
    # Line 64
    addiu	$a0,$a0,4
    # Line 58
    sd	$ra,56($sp)
    # Line 63
    lw	$t9,-4($a0)
.L0da77a20:
    # Line 67
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 68
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 69
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 70
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 72
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 73
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 75
    jalr	$t9
    nop
    # Line 76
    addiu	$a0,$v0,4
    # Line 78
    b	.L0da77a20
    # Line 77
    lw	$t9,0($v0)
.end __glDoInterpret

# Function: __glle_Sentinel
# Declared: Line 92 (Source lines: 92-94)
# Address: 0x0da77a94 - 0x0da77aa4 (Size: 16 bytes, Frame: 0)
.globl __glle_Sentinel
.ent __glle_Sentinel
__glle_Sentinel:
    # Line 92
    ld	$ra,56($sp)
    # Line 93
    addiu	$sp,$sp,64
    # Line 94
    jr	$ra
    nop
.end __glle_Sentinel

# Function: __glSPInterpret
# Declared: Line 116 (Source lines: 116-134)
# Address: 0x0da77aa4 - 0x0da77b4c (Size: 168 bytes, Frame: 192)
.globl __glSPInterpret
.ent __glSPInterpret
__glSPInterpret:
    # Line 116
    addiu	$sp,$sp,-64
    # Line 118
    sd	$s0,48($sp)
    # Line 121
    move	$s0,$a0
    # Line 117
    sd	$ra,56($sp)
    # Line 120
    lw	$t9,0($a0)
    # Line 122
    lw	$a0,4($s0)
.L0da77abc:
    # Line 125
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    lw	$a0,4($s0)
    # Line 126
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    lw	$a0,4($s0)
    # Line 127
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    lw	$a0,4($s0)
    # Line 128
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    lw	$a0,4($s0)
    # Line 130
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    lw	$a0,4($s0)
    # Line 131
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    lw	$a0,4($s0)
    # Line 133
    jalr	$t9
    nop
    lw	$t9,8($s0)
    addiu	$s0,$s0,8
    # Line 134
    b	.L0da77abc
    # Line 133
    lw	$a0,4($s0)
.end __glSPInterpret

# Function: __glsple_Sentinel
# Declared: Line 144 (Source lines: 144-147)
# Address: 0x0da77b4c - 0x0da77b60 (Size: 20 bytes, Frame: 0)
.globl __glsple_Sentinel
.ent __glsple_Sentinel
__glsple_Sentinel:
    # Line 144
    ld	$ra,56($sp)
    # Line 145
    ld	$s0,48($sp)
    # Line 146
    addiu	$sp,$sp,64
    # Line 147
    jr	$ra
    nop
.end __glsple_Sentinel

