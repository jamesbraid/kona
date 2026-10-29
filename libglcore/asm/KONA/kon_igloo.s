# Source: ../KONA/kon_igloo.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_igloo.c
# Total Functions: 2

.text

# Function: __glkonim_IglooInterfaceSGIX
# Declared: Line 19 (Source lines: 20-68)
# Address: 0x0d9881a0 - 0x0d9882c8 (Size: 296 bytes, Frame: 16)
.globl __glkonim_IglooInterfaceSGIX
.ent __glkonim_IglooInterfaceSGIX
__glkonim_IglooInterfaceSGIX:
    # Line 20
    addiu	$sp,$sp,-16
    li	$at,0x81a4
    lui	$v0,0x11
    move	$a3,$a1
    sd	$ra,8($sp)
    addiu	$v0,$v0,-29128
    sd	$gp,0($sp)
    beq	$a0,$at,.L0d988230
    addu	$gp,$t9,$v0
    # Line 30
    li	$v1,0x81a0
    beq	$a0,$v1,.L0d988250
    # Line 34
    li	$a1,0x81a1
    beq	$a0,$a1,.L0d98826c
    # Line 43
    li	$a2,0x81a3
    beq	$a0,$a2,.L0d98828c
    # Line 49
    li	$a4,0x819e
    beq	$a0,$a4,.L0d9882ac
    move	$ra,$ra
    # Line 53
    li	$a5,0x819f
    beq	$a0,$a5,.L0d988220
    li	$a6,0x81a2
    bne	$a0,$a6,.L0d988214
    # Line 62
    li	$t0,274
    sw	$t0,16384($zero)
    # Line 68
    ld	$gp,0($sp)
    # Line 62
    lw	$a7,0($a3)
    # Line 68
    addiu	$sp,$sp,16
    jr	$ra
    # Line 62
    sw	$a7,16384($zero)
.L0d988214:
    # Line 66
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d988220:
    ld	$ra,8($sp)
.L0d988224:
    # Line 68
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d988230:
    # Line 30
    li	$t2,457
    sw	$t2,16384($zero)
    # Line 68
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 30
    lw	$t1,0($a1)
    # Line 68
    addiu	$sp,$sp,16
    jr	$ra
    # Line 30
    sw	$t1,16384($zero)
.L0d988250:
    # Line 34
    li	$t3,425
    sw	$t3,16384($zero)
    move	$ra,$ra
    sw	$zero,16384($zero)
    # Line 68
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98826c:
    # Line 43
    li	$t9,446
    sw	$t9,16384($zero)
    # Line 68
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 38
    lw	$t8,0($a3)
    # Line 68
    addiu	$sp,$sp,16
    jr	$ra
    # Line 43
    sw	$t8,16384($zero)
.L0d98828c:
    # Line 49
    li	$v0,275
    sw	$v0,16384($zero)
    # Line 68
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 49
    lw	$at,0($a3)
    # Line 68
    addiu	$sp,$sp,16
    jr	$ra
    # Line 49
    sw	$at,16384($zero)
.L0d9882ac:
    # Line 53
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-32048
    lbu	$a1,7($a3)
    bal __glkonim_IglooInterfaceSGIX
    lw	$a0,0($a3)
    b	.L0d988224
    ld	$ra,8($sp)
.end __glkonim_IglooInterfaceSGIX

# Function: fullscreen
# Declared: Line 70 (Source lines: 71-86)
# Address: 0x0d9882d0 - 0x0d98832c (Size: 92 bytes, Frame: 48)
.ent fullscreen
fullscreen:
    # Line 71
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 73
    lw	$v0,4112($zero)
    # Line 85
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 78
    lw	$a4,31564($v0)
    # Line 81
    li	$v1,3
    sw	$v1,12($sp)
    # Line 80
    li	$a2,6
    sb	$a2,8($sp)
    # Line 79
    li	$a3,2
    sw	$a3,4($sp)
    # Line 78
    sw	$a4,0($sp)
    # Line 82
    lw	$at,31564($v0)
    # Line 84
    sw	$a1,24($sp)
    # Line 85
    addiu	$a2,$sp,0
    li	$a1,1009
    # Line 83
    sw	$a0,16($sp)
    # Line 85
    move	$a0,$v0
    jal	__glKon_ioctl
    # Line 82
    sw	$at,20($sp)
    ld	$ra,32($sp)
    # Line 86
    jr	$ra
    addiu	$sp,$sp,48
.end fullscreen

