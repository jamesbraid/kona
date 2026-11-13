# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/kon_sdlfuncs.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 1

.text

# Function: __invalid_enum
# Declared: Line 18 (Source lines: 18-28)
# Address: 0x0da798c0 - 0x0da798e8 (Size: 40 bytes, Frame: 0)
.ent __invalid_enum
__invalid_enum:
    # Line 18
    li	$a1,228
    # Line 19
    sw	$a1,16384($zero)
    # Line 20
    li	$a0,1280
    # Line 21
    jr	$ra
    # Line 22
    sw	$a0,16384($zero)
    # Line 24
    li	$a1,228
    # Line 25
    sw	$a1,16384($zero)
    # Line 26
    li	$a0,1281
    # Line 27
    jr	$ra
    # Line 28
    sw	$a0,16384($zero)
.end __invalid_enum

