# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27/kon_sdlist.s
# Category: KONA.IP27
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glkonle_Push
# Declared: Line 25 (Source lines: 25-52)
# Address: 0x0da772a0 - 0x0da77304 (Size: 100 bytes, Frame: 0)
.globl __glkonle_Push
.ent __glkonle_Push
__glkonle_Push:
    # Line 25
    andi	$t0,$a0,0x4
    # Line 26
    bne	$zero,$t0,.L0da772bc
    # Line 27
    lw	$a1,0($a0)
    # Line 28
    lwc1	$f0,4($a0)
    # Line 29
    addi	$a1,$a1,-1
    # Line 30
    addiu	$a0,$a0,4
    # Line 31
    swc1	$f0,16384($zero)
.L0da772bc:
    # Line 33
    li	$at,1
    beq	$a1,$at,.L0da772ec
    # Line 34
    addiu	$v0,$a0,4
    # Line 36
    li	$t2,2
.L0da772cc:
    # Line 38
    ldc1	$f0,0($v0)
    # Line 39
    addiu	$v0,$v0,8
    # Line 40
    addi	$a1,$a1,-2
    # Line 41
    slt	$at,$a1,$t2
    beqz	$at,.L0da772cc
    # Line 42
    sdc1	$f0,16384($zero)
    # Line 44
    beq	$zero,$a1,.L0da772fc
    # Line 45
    nop
.L0da772ec:
    # Line 47
    lwc1	$f0,0($v0)
    # Line 48
    addiu	$v0,$v0,4
    # Line 49
    jr	$ra
    # Line 50
    swc1	$f0,16384($zero)
.L0da772fc:
    # Line 51
    jr	$ra
    # Line 52
    nop
.end __glkonle_Push

# Function: __glkon_datavn
# Declared: Line 62 (Source lines: 62-71)
# Address: 0x0da77304 - 0x0da7732c (Size: 40 bytes, Frame: 0)
.globl __glkon_datavn
.ent __glkon_datavn
__glkon_datavn:
    # Line 62
    andi	$t0,$a0,0x4
    # Line 63
    beq	$zero,$t0,__glkonle_Push
    # Line 64
    addiu	$a0,$a0,-4
    # Line 65
    lwc1	$f0,4($a0)
    # Line 66
    addi	$a1,$a1,-1
    # Line 67
    addiu	$a0,$a0,4
    # Line 68
    bne	$zero,$a1,__glkonle_Push
    # Line 69
    swc1	$f0,16384($zero)
    # Line 70
    jr	$ra
    # Line 71
    nop
.end __glkon_datavn

