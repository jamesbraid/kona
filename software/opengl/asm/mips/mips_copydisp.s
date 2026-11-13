# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_copydisp.s
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glMipsCopyDispatch
# Declared: Line 35 (Source lines: 35-173)
# Address: 0x0da77b60 - 0x0da77c60 (Size: 256 bytes, Frame: 0)
.globl __glMipsCopyDispatch
.ent __glMipsCopyDispatch
__glMipsCopyDispatch:
    # Line 35
    li	$v0,0x1c5
.L0da77b64:
    # Line 63
    ldc1	$f0,0($a0)
    # Line 64
    ldc1	$f2,8($a0)
    # Line 65
    ldc1	$f4,16($a0)
    # Line 66
    ldc1	$f6,24($a0)
    # Line 67
    ldc1	$f8,32($a0)
    # Line 68
    ldc1	$f10,40($a0)
    # Line 69
    ldc1	$f12,48($a0)
    # Line 70
    ldc1	$f14,56($a0)
    # Line 71
    ldc1	$f16,64($a0)
    # Line 72
    ldc1	$f18,72($a0)
    # Line 74
    addiu	$v0,$v0,-20
    # Line 97
    sdc1	$f0,0($a1)
    # Line 98
    sdc1	$f2,8($a1)
    # Line 99
    sdc1	$f4,16($a1)
    # Line 100
    sdc1	$f6,24($a1)
    # Line 101
    sdc1	$f8,32($a1)
    # Line 102
    sdc1	$f10,40($a1)
    # Line 103
    sdc1	$f12,48($a1)
    # Line 104
    sdc1	$f14,56($a1)
    # Line 105
    sdc1	$f16,64($a1)
    # Line 106
    sdc1	$f18,72($a1)
    # Line 114
    addiu	$a0,$a0,80
    # Line 115
    bgtz	$v0,.L0da77b64
    # Line 116
    addiu	$a1,$a1,80
    # Line 122
    addi	$v0,$v0,19
    # Line 137
    li	$at,2
    beq	$v0,$at,.L0da77c54
    ldc1	$f0,0($a0)
    # Line 138
    li	$at,4
    beq	$v0,$at,.L0da77c50
    ldc1	$f2,8($a0)
    # Line 139
    li	$at,6
    beq	$v0,$at,.L0da77c4c
    ldc1	$f4,16($a0)
    # Line 140
    li	$at,8
    beq	$v0,$at,.L0da77c48
    ldc1	$f6,24($a0)
    # Line 141
    li	$at,10
    beq	$v0,$at,.L0da77c44
    ldc1	$f8,32($a0)
    # Line 142
    li	$at,12
    beq	$v0,$at,.L0da77c40
    ldc1	$f10,40($a0)
    # Line 143
    li	$at,14
    beq	$v0,$at,.L0da77c3c
    ldc1	$f12,48($a0)
    # Line 144
    li	$at,16
    beq	$v0,$at,.L0da77c38
    ldc1	$f14,56($a0)
    # Line 145
    li	$at,18
    beq	$v0,$at,.L0da77c34
    ldc1	$f16,64($a0)
.L0da77c34:
    # Line 161
    sdc1	$f16,64($a1)
.L0da77c38:
    # Line 162
    sdc1	$f14,56($a1)
.L0da77c3c:
    # Line 163
    sdc1	$f12,48($a1)
.L0da77c40:
    # Line 164
    sdc1	$f10,40($a1)
.L0da77c44:
    # Line 165
    sdc1	$f8,32($a1)
.L0da77c48:
    # Line 166
    sdc1	$f6,24($a1)
.L0da77c4c:
    # Line 167
    sdc1	$f4,16($a1)
.L0da77c50:
    # Line 168
    sdc1	$f2,8($a1)
.L0da77c54:
    # Line 169
    sdc1	$f0,0($a1)
    # Line 172
    jr	$ra
    # Line 173
    nop
.end __glMipsCopyDispatch

