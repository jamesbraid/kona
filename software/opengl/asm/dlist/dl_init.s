# Source: ../dlist/dl_init.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_init.c
# Total Functions: 3

.text

# Function: __glShareDlist
# Declared: Line 31 (Source lines: 39-43)
# Address: 0x0d98e510 - 0x0d98e53c (Size: 44 bytes, Frame: 0)
.globl __glShareDlist
.ent __glShareDlist
__glShareDlist:
    # Line 39
    lw	$v1,4924($a1)
    sw	$v1,4924($a0)
    # Line 40
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 41
    lw	$v0,4928($a1)
    sw	$v0,4928($a0)
    # Line 42
    lw	$at,8($v0)
    addiu	$at,$at,1
    # Line 43
    jr	$ra
    # Line 42
    sw	$at,8($v0)
.end __glShareDlist

# Function: __glInitDlistState
# Declared: Line 45 (Source lines: 46-72)
# Address: 0x0d98e540 - 0x0d98e5e0 (Size: 160 bytes, Frame: 32)
.globl __glInitDlistState
.ent __glInitDlistState
__glInitDlistState:
    # Line 52
    sw	$zero,4988($a0)
    # Line 51
    sw	$zero,4980($a0)
    # Line 57
    lw	$a1,12($a0)
    # Line 46
    addiu	$sp,$sp,-32
    # Line 57
    sw	$a1,5024($a0)
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    # Line 46
    sd	$s0,0($sp)
    # Line 56
    lw	$v1,8($a0)
    # Line 57
    lw	$at,4924($a0)
    # Line 46
    lui	$v0,0x10
    # Line 56
    sw	$v1,5020($a0)
    # Line 46
    move	$s0,$a0
    addiu	$v0,$v0,10904
    # Line 55
    lw	$v1,0($a0)
    sw	$v1,5016($a0)
    # Line 57
    beqz	$at,.L0d98e5a4
    # Line 46
    addu	$gp,$t9,$v0
.L0d98e588:
    # Line 65
    lw	$a2,4928($s0)
    beqz	$a2,.L0d98e5b8
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 72
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e5a4:
    # Line 65
    # lw $t9, -30780($gp) # &__glDlistNewArray
    bal __glDlistNewArray
    nop
    b	.L0d98e588
    sw	$v0,4924($s0)
.L0d98e5b8:
    # Line 69
    # lw $t9, -27548($gp) # &__glNamesNewArray
    move	$a0,$s0
    jal	__glNamesNewArray
    move	$a1,$zero
    ld	$ra,16($sp)
    # Line 72
    ld	$gp,8($sp)
    # Line 69
    sw	$v0,4928($s0)
    # Line 72
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitDlistState

# Function: __glFreeDlistState
# Declared: Line 81 (Source lines: 82-106)
# Address: 0x0d98e5e0 - 0x0d98e690 (Size: 176 bytes, Frame: 32)
.globl __glFreeDlistState
.ent __glFreeDlistState
__glFreeDlistState:
    # Line 83
    lw	$a1,4928($a0)
    lw	$v1,8($a1)
    addiu	$v1,$v1,-1
    sw	$v1,8($a1)
    lw	$a1,4928($a0)
    # Line 82
    addiu	$sp,$sp,-32
    # Line 83
    lw	$at,8($a1)
    # Line 82
    sd	$s0,0($sp)
    lui	$v0,0x10
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,10744
    sd	$gp,8($sp)
    # Line 83
    beqz	$at,.L0d98e66c
    # Line 82
    addu	$gp,$t9,$v0
    # Line 96
    lw	$a2,4924($s0)
.L0d98e620:
    # Line 90
    sw	$zero,4928($s0)
    # Line 96
    lw	$a1,0($a2)
    addiu	$a1,$a1,-1
    sw	$a1,0($a2)
    lw	$a1,4924($s0)
    lw	$a0,0($a1)
    beqz	$a0,.L0d98e680
    # Line 99
    nop	# was lw $t9, -30776($gp) # &__glDlistFreeArray
    # Line 101
    lw	$a0,5012($s0)
.L0d98e644:
    beqz	$a0,.L0d98e658
    sw	$zero,4924($s0)
    # Line 105
    lw	$t9,12688($s0)
    jal	__glDlistFreeArray
    nop
.L0d98e658:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 106
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e66c:
    # Line 87
    # lw $t9, -27540($gp) # &__glNamesFreeArray
    jal	__glNamesFreeArray
    nop
    b	.L0d98e620
    # Line 96
    lw	$a2,4924($s0)
.L0d98e680:
    # Line 99
    bal __glDlistFreeArray
    move	$a0,$s0
    b	.L0d98e644
    # Line 101
    lw	$a0,5012($s0)
.end __glFreeDlistState

