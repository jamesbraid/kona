# Source: ../KONA/kon_hyperpipe.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_hyperpipe.c
# Total Functions: 10

.text

# Function: __glkon_EnableHyperpipe
# Declared: Line 37 (Source lines: 40-40)
# Address: 0x0d9875a0 - 0x0d9875a8 (Size: 8 bytes, Frame: 0)
.globl __glkon_EnableHyperpipe
.ent __glkon_EnableHyperpipe
__glkon_EnableHyperpipe:
    # Line 40
    jr	$ra
    nop
.end __glkon_EnableHyperpipe

# Function: __glkon_DisableHyperpipe
# Declared: Line 43 (Source lines: 46-46)
# Address: 0x0d9875b0 - 0x0d9875b8 (Size: 8 bytes, Frame: 0)
.globl __glkon_DisableHyperpipe
.ent __glkon_DisableHyperpipe
__glkon_DisableHyperpipe:
    # Line 46
    jr	$ra
    nop
.end __glkon_DisableHyperpipe

# Function: __glkon_FinishHyperpipe
# Declared: Line 50 (Source lines: 53-53)
# Address: 0x0d9875c0 - 0x0d9875c8 (Size: 8 bytes, Frame: 0)
.globl __glkon_FinishHyperpipe
.ent __glkon_FinishHyperpipe
__glkon_FinishHyperpipe:
    # Line 53
    jr	$ra
    nop
.end __glkon_FinishHyperpipe

# Function: __glkon_InitHyperpipeState
# Declared: Line 57 (Source lines: 62-63)
# Address: 0x0d9875d0 - 0x0d9875d8 (Size: 8 bytes, Frame: 0)
.globl __glkon_InitHyperpipeState
.ent __glkon_InitHyperpipeState
__glkon_InitHyperpipeState:
    # Line 63
    jr	$ra
    # Line 62
    sw	$zero,4($a0)
.end __glkon_InitHyperpipeState

# Function: __glkon__QueryHyperpipeBestRect
# Declared: Line 67 (Source lines: 72-72)
# Address: 0x0d9875e0 - 0x0d9875e8 (Size: 8 bytes, Frame: 0)
.globl __glkon__QueryHyperpipeBestRect
.ent __glkon__QueryHyperpipeBestRect
__glkon__QueryHyperpipeBestRect:
    # Line 72
    jr	$ra
    move	$v0,$zero
.end __glkon__QueryHyperpipeBestRect

# Function: __glkon__QueryHyperpipeRect
# Declared: Line 77 (Source lines: 81-81)
# Address: 0x0d9875f0 - 0x0d9875f8 (Size: 8 bytes, Frame: 0)
.globl __glkon__QueryHyperpipeRect
.ent __glkon__QueryHyperpipeRect
__glkon__QueryHyperpipeRect:
    # Line 81
    jr	$ra
    move	$v0,$zero
.end __glkon__QueryHyperpipeRect

# Function: __glkon__QueryHyperpipeLimit
# Declared: Line 85 (Source lines: 89-89)
# Address: 0x0d987600 - 0x0d987608 (Size: 8 bytes, Frame: 0)
.globl __glkon__QueryHyperpipeLimit
.ent __glkon__QueryHyperpipeLimit
__glkon__QueryHyperpipeLimit:
    # Line 89
    jr	$ra
    move	$v0,$zero
.end __glkon__QueryHyperpipeLimit

# Function: __glkon__HyperpipeRect
# Declared: Line 93 (Source lines: 97-97)
# Address: 0x0d987610 - 0x0d987618 (Size: 8 bytes, Frame: 0)
.globl __glkon__HyperpipeRect
.ent __glkon__HyperpipeRect
__glkon__HyperpipeRect:
    # Line 97
    jr	$ra
    move	$v0,$zero
.end __glkon__HyperpipeRect

# Function: __glkon_BindHyperpipe
# Declared: Line 102 (Source lines: 103-116)
# Address: 0x0d987620 - 0x0d98768c (Size: 108 bytes, Frame: 32)
.globl __glkon_BindHyperpipe
.ent __glkon_BindHyperpipe
__glkon_BindHyperpipe:
    # Line 104
    lw	$a5,4112($zero)
    lbu	$v0,3222($a5)
    # Line 103
    move	$a4,$a1
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,-26184
    sd	$gp,8($sp)
    # Line 104
    beqz	$v0,.L0d98767c
    # Line 103
    addu	$gp,$t9,$at
    # Line 113
    # lw $t9, -18512($gp) # &ioctl
    sd	$ra,16($sp)
    addiu	$a2,$sp,0
    # Line 112
    sw	$a1,0($sp)
    # Line 113
    li	$a1,10022
    jal	ioctl
    lw	$a0,31560($a5)
    ld	$ra,16($sp)
    # Line 114
    li	$v1,1
    # Line 116
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.L0d98767c:
    # Line 109
    li	$v0,1
    # Line 116
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkon_BindHyperpipe

# Function: __glkon_UnbindHyperpipe
# Declared: Line 120 (Source lines: 121-129)
# Address: 0x0d987690 - 0x0d9876e0 (Size: 80 bytes, Frame: 32)
.globl __glkon_UnbindHyperpipe
.ent __glkon_UnbindHyperpipe
__glkon_UnbindHyperpipe:
    # Line 121
    lui	$a2,0x11
    # Line 122
    lw	$a0,4112($zero)
    # Line 121
    addiu	$sp,$sp,-32
    addiu	$a2,$a2,-26296
    sd	$gp,16($sp)
    addu	$gp,$t9,$a2
    # Line 126
    # lw $t9, -18512($gp) # &ioctl
    # Line 125
    sw	$a1,0($sp)
    # Line 126
    li	$a1,10023
    # Line 121
    sd	$ra,8($sp)
    # Line 126
    addiu	$a2,$sp,0
    jal	ioctl
    lw	$a0,31560($a0)
    ld	$ra,8($sp)
    # Line 127
    li	$a3,1
    # Line 129
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    movz	$a3,$zero,$v0
    jr	$ra
    move	$v0,$a3
.end __glkon_UnbindHyperpipe

