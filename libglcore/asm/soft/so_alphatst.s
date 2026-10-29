# Source: ../soft/so_alphatst.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_alphatst.c
# Total Functions: 1

.text

# Function: __glValidateAlphaTest
# Declared: Line 29 (Source lines: 30-69)
# Address: 0x0d9bb500 - 0x0d9bb668 (Size: 360 bytes, Frame: 48)
.globl __glValidateAlphaTest
.ent __glValidateAlphaTest
__glValidateAlphaTest:
    # Line 37
    lwc1	$f2,30848($a0)
    lwc1	$f1,1824($a0)
    lwc1	$f0,3720($a0)
    # Line 34
    lw	$a6,1820($a0)
    # Line 30
    addiu	$sp,$sp,-48
    # Line 37
    mul.s	$f1,$f1,$f2
    # Line 30
    sd	$s0,8($sp)
    # Line 36
    lw	$s0,3716($a0)
    # Line 37
    mul.s	$f0,$f0,$f1
    # Line 45
    lw	$a1,30804($a0)
    # Line 30
    sd	$a0,0($sp)
    lui	$at,0xd
    # Line 37
    trunc.w.s	$f0,$f0
    # Line 30
    sd	$s1,16($sp)
    addiu	$at,$at,23256
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 45
    beqz	$a1,.L0d9bb624
    # Line 37
    mfc1	$s1,$f0
.L0d9bb54c:
    # Line 49
    blez	$s0,.L0d9bb610
    addiu	$a4,$a6,-512
    move	$a0,$zero
    b	.L0d9bb658
    li	$a5,1
.L0d9bb560:
    # Line 64
    addiu	$a1,$a1,1
    xor	$v1,$s1,$a0
    sltu	$v1,$zero,$v1
    sb	$v1,-1($a1)
.L0d9bb570:
    # Line 57
    addiu	$a0,$a0,1
    # Line 49
    sltiu	$a7,$a4,8
    # Line 57
    beq	$s0,$a0,.L0d9bb610
    # Line 49
    la	$a3,.rodata
    sll	$a6,$a4,0x2
.L0d9bb584:
    addiu	$a3,$a3,2136
    beqz	$a7,.L0d9bb570
    addu	$a3,$a3,$a6
    lw	$a6,0($a3)
    jr	$a6
    nop
.L0d9bb59c:
    # Line 59
    addiu	$a1,$a1,1
    b	.L0d9bb570
    sb	$zero,-1($a1)
.L0d9bb5a8:
    # Line 66
    addiu	$a1,$a1,1
    b	.L0d9bb570
    sb	$a5,-1($a1)
.L0d9bb5b4:
    # Line 65
    addiu	$a1,$a1,1
    slt	$a7,$a0,$s1
    xori	$a7,$a7,0x1
    b	.L0d9bb570
    sb	$a7,-1($a1)
.L0d9bb5c8:
    # Line 63
    addiu	$a1,$a1,1
    slt	$t0,$s1,$a0
    b	.L0d9bb570
    sb	$t0,-1($a1)
.L0d9bb5d8:
    # Line 62
    addiu	$a1,$a1,1
    slt	$t1,$s1,$a0
    xori	$t1,$t1,0x1
    b	.L0d9bb570
    sb	$t1,-1($a1)
.L0d9bb5ec:
    # Line 61
    addiu	$a1,$a1,1
    xor	$t2,$s1,$a0
    sltiu	$t2,$t2,1
    b	.L0d9bb570
    sb	$t2,-1($a1)
.L0d9bb600:
    # Line 60
    addiu	$a1,$a1,1
    slt	$t3,$a0,$s1
    b	.L0d9bb570
    sb	$t3,-1($a1)
.L0d9bb610:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 69
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bb624:
    # Line 47
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    sd	$a6,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,40($sp)
    ld	$at,0($sp)
    ld	$a6,32($sp)
    move	$a1,$v0
    b	.L0d9bb54c
    # Line 49
    sw	$v0,30804($at)
.L0d9bb658:
    la	$a3,.rodata
    sltiu	$a7,$a4,8
    b	.L0d9bb584
    sll	$a6,$a4,0x2
.end __glValidateAlphaTest

.late_rodata
jtbl_0da80858:
    .word .L0d9bb59c
    .word .L0d9bb600
    .word .L0d9bb5ec
    .word .L0d9bb5d8
    .word .L0d9bb5c8
    .word .L0d9bb560
    .word .L0d9bb5b4
    .word .L0d9bb5a8

