# DDX module kona: group vfmt
# Functions: 19

.text
.set noat
.set noreorder

glabel vfmtResolvePixelDepth
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    lui	$a4,0x17
    addiu	$a4,$a4,-15592
    addu	$at,$t9,$a4
    sw	$a0,52($sp)
    sw	$a1,60($sp)
    lw	$a3,52($sp)
    addiu	$a3,$a3,260
    lw	$a3,0($a3)
    addiu	$a3,$a3,159
    li	$a4,160
    div	$zero,$a3,$a4
    mflo	$a2
    sw	$a2,0($sp)
    lw	$a1,52($sp)
    addiu	$a1,$a1,264
    lw	$a1,0($a1)
    lw	$a2,0($sp)
    multu	$a1,$a2
    mflo	$a0
    sll	$v1,$a0,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x5
    sw	$v1,4($sp)
    lw	$v0,4($sp)
    bnez	$v0,42793c
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t1,60($sp)
    lw	$t1,4($t1)
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x16
    lw	$a7,4($sp)
    divu	$zero,$t0,$a7
    teq	$a7,$zero,0x7
    mflo	$a6
    sw	$a6,8($sp)
    lw	$a5,60($sp)
    lw	$a5,0($a5)
    li	$a6,2
    bne	$a5,$a6,427984
    nop
    lw	$t2,8($sp)
    srl	$t2,$t2,0x1
    sw	$t2,8($sp)
    lw	$t3,60($sp)
    lw	$t3,0($t3)
    li	$t8,3
    bne	$t3,$t8,4279c4
    nop
    lw	$v0,60($sp)
    lw	$v0,4($v0)
    sll	$ra,$v0,0x2
    addu	$ra,$ra,$v0
    sll	$ra,$ra,0x1b
    lw	$t9,4($sp)
    divu	$zero,$ra,$t9
    teq	$t9,$zero,0x7
    mflo	$t8
    nop
    sw	$t8,8($sp)
    lw	$v1,52($sp)
    lw	$v1,268($v1)
    la	$a0,_rodata
    addiu	$a0,$a0,19456
    sll	$a1,$v1,0x2
    addu	$a0,$a0,$a1
    sd	$a0,32($sp)
    sltiu	$v1,$v1,8
    beqz	$v1,427cb0
    nop
    ld	$a0,32($sp)
    lw	$a0,0($a0)
    jr	$a0
    nop
    lw	$a1,60($sp)
    lw	$a1,0($a1)
    li	$a2,2
    beq	$a1,$a2,427a54
    nop
    lw	$a2,8($sp)
    sltiu	$a2,$a2,16
    bnez	$a2,427a30
    nop
    li	$a3,4
    sw	$a3,12($sp)
    b	427a54
    nop
    lw	$a4,8($sp)
    sltiu	$a4,$a4,8
    bnez	$a4,427a50
    nop
    li	$a5,3
    sw	$a5,12($sp)
    b	427a54
    nop
    sw	$zero,12($sp)
    lw	$a6,60($sp)
    lw	$a6,0($a6)
    li	$a7,2
    bne	$a6,$a7,427aac
    nop
    lw	$a7,8($sp)
    sltiu	$a7,$a7,8
    bnez	$a7,427a88
    nop
    li	$t0,3
    sw	$t0,12($sp)
    b	427aac
    nop
    lw	$t1,8($sp)
    sltiu	$t1,$t1,4
    bnez	$t1,427aa8
    nop
    li	$t2,7
    sw	$t2,12($sp)
    b	427aac
    nop
    sw	$zero,12($sp)
    b	427cbc
    nop
    lw	$t3,8($sp)
    sltiu	$t3,$t3,64
    bnez	$t3,427ae8
    nop
    lw	$t8,60($sp)
    lw	$t8,0($t8)
    li	$t9,2
    beq	$t8,$t9,427ae8
    nop
    li	$t9,6
    sw	$t9,12($sp)
    b	427b94
    nop
    lw	$ra,8($sp)
    sltiu	$ra,$ra,32
    bnez	$ra,427b1c
    nop
    lw	$v0,60($sp)
    lw	$v0,0($v0)
    li	$v1,2
    beq	$v0,$v1,427b1c
    nop
    li	$v1,5
    sw	$v1,12($sp)
    b	427b94
    nop
    lw	$a0,8($sp)
    sltiu	$a0,$a0,16
    bnez	$a0,427b3c
    nop
    li	$a1,4
    sw	$a1,12($sp)
    b	427b94
    nop
    lw	$a2,8($sp)
    sltiu	$a2,$a2,8
    bnez	$a2,427b5c
    nop
    li	$a3,3
    sw	$a3,12($sp)
    b	427b94
    nop
    lw	$a4,8($sp)
    sltiu	$a4,$a4,4
    bnez	$a4,427b90
    nop
    lw	$a5,60($sp)
    lw	$a5,0($a5)
    li	$a6,2
    bne	$a5,$a6,427b90
    nop
    li	$a6,7
    sw	$a6,12($sp)
    b	427b94
    nop
    sw	$zero,12($sp)
    b	427cbc
    nop
    lw	$a7,60($sp)
    lw	$a7,0($a7)
    li	$t0,2
    bne	$a7,$t0,427bbc
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t0,8($sp)
    sltiu	$t0,$t0,64
    beqz	$t0,427bd8
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t1,60($sp)
    lw	$t1,0($t1)
    li	$t2,2
    bne	$t1,$t2,427bf8
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t2,8($sp)
    sltiu	$t2,$t2,32
    beqz	$t2,427c14
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t3,8($sp)
    sltiu	$t3,$t3,16
    beqz	$t3,427c30
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t8,8($sp)
    sltiu	$t8,$t8,8
    beqz	$t8,427c4c
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$t9,8($sp)
    sltiu	$t9,$t9,4
    beqz	$t9,427c68
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$ra,52($sp)
    lw	$ra,268($ra)
    li	$v0,7
    bne	$ra,$v0,427c9c
    nop
    lw	$v0,60($sp)
    lw	$v0,0($v0)
    li	$v1,2
    beq	$v0,$v1,427c9c
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$v1,52($sp)
    lw	$v1,268($v1)
    sw	$v1,12($sp)
    b	427cbc
    nop
    sd	$zero,16($sp)
    b	427cc8
    nop
    lw	$a0,12($sp)
    sd	$a0,16($sp)
    sd	$a0,16($sp)
    ld	$v0,16($sp)
    ld	$ra,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtMinimalKonaTarget
    addiu	$sp,$sp,-16
    sw	$a0,4($sp)
    li	$a4,1
    lw	$a5,4($sp)
    sw	$a4,4($a5)
    lw	$a3,4($sp)
    sw	$zero,0($a3)
    li	$a1,8
    lw	$a2,4($sp)
    sw	$a1,16($a2)
    lw	$a0,4($sp)
    sw	$zero,20($a0)
    lw	$v1,4($sp)
    sw	$zero,8($v1)
    lw	$v0,4($sp)
    sw	$zero,24($v0)
    lw	$at,4($sp)
    sw	$zero,28($at)
    addiu	$sp,$sp,16
    jr	$ra
    nop

glabel vfmtActualHWToKonaTarget
    addiu	$sp,$sp,-2032
    sd	$gp,1992($sp)
    sd	$ra,1984($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-17560
    addu	$gp,$t9,$v0
    sw	$a0,2020($sp)
    sw	$a1,2028($sp)
    li	$at,-1
    sw	$at,0($sp)
    sw	$zero,4($sp)
    lw	$a0,2028($sp)
    lw	$t9,-32512($gp)
    bal 428010
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19488
    li	$a1,2050
    lw	$t9,-28140($gp)
    jalr	$t9
    nop
    sd	$v0,2000($sp)
    sw	$v0,0($sp)
    lw	$a1,0($sp)
    bgez	$a1,428124
    nop
    li	$a1,441
    sw	$a1,-27808($gp)
    la	$a0,errno
    lw	$a0,0($a0)
    lw	$t9,-28136($gp)
    jalr	$t9
    nop
    move	$a2,$v0
    sd	$a2,2000($sp)
    la	$a0,_rodata
    addiu	$a0,$a0,19504
    la	$a1,_rodata
    addiu	$a1,$a1,19488
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	42855c
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19536
    la	$a1,_rodata
    addiu	$a1,$a1,19488
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    lw	$a0,0($sp)
    li	$a1,2
    li	$a2,5
    lw	$t9,-28132($gp)
    jalr	$t9
    nop
    lw	$a0,0($sp)
    li	$a1,101
    addiu	$a2,$sp,2020
    lw	$t9,-28548($gp)
    jalr	$t9
    nop
    sd	$v0,2000($sp)
    sw	$v0,8($sp)
    lw	$a1,8($sp)
    bgez	$a1,4281cc
    nop
    li	$a1,447
    sw	$a1,-27808($gp)
    la	$a0,errno
    lw	$a0,0($a0)
    lw	$t9,-28136($gp)
    jalr	$t9
    nop
    move	$a1,$v0
    sd	$a1,2000($sp)
    la	$a0,_rodata
    addiu	$a0,$a0,19552
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	42855c
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19600
    lw	$a1,8($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    lw	$a2,2020($sp)
    lw	$a1,8($sp)
    addiu	$a1,$a1,-1
    slt	$a1,$a1,$a2
    beqz	$a1,42822c
    nop
    li	$a1,449
    sw	$a1,-27808($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,19632
    lw	$a1,2020($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	42855c
    nop
    addiu	$a0,$sp,16
    li	$a1,1952
    lw	$t9,-28468($gp)
    jalr	$t9
    nop
    lw	$a4,2020($sp)
    sw	$a4,1968($sp)
    addiu	$a3,$sp,16
    sw	$a3,1972($sp)
    li	$a2,1952
    sw	$a2,1976($sp)
    lw	$a0,0($sp)
    li	$a1,102
    addiu	$a2,$sp,1968
    lw	$t9,-28548($gp)
    jalr	$t9
    nop
    sd	$v0,2000($sp)
    bgez	$v0,4282a8
    nop
    li	$a1,456
    sw	$a1,-27808($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,19664
    lw	$a1,2020($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	42855c
    nop
    addiu	$a0,$sp,16
    addiu	$a1,$gp,-27312
    li	$a2,4
    lw	$t9,-28128($gp)
    jalr	$t9
    nop
    sd	$v0,2000($sp)
    beqz	$v0,4282f8
    nop
    li	$a1,459
    sw	$a1,-27808($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,19712
    addiu	$a1,$sp,16
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	42855c
    nop
    lw	$a2,144($sp)
    sd	$a2,2000($sp)
    li	$a3,1
    beq	$a2,$a3,428334
    nop
    li	$a5,2
    ld	$a4,2000($sp)
    beq	$a4,$a5,428348
    nop
    li	$a7,4
    ld	$a6,2000($sp)
    beq	$a6,$a7,42835c
    nop
    b	428370
    nop
    li	$t0,1
    lw	$t1,2028($sp)
    sw	$t0,4($t1)
    b	4283b4
    nop
    li	$t2,2
    lw	$t3,2028($sp)
    sw	$t2,4($t3)
    b	4283b4
    nop
    li	$t8,4
    lw	$t9,2028($sp)
    sw	$t8,4($t9)
    b	4283b4
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19736
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    li	$a1,1
    lw	$a2,2028($sp)
    sw	$a1,4($a2)
    la	$a0,_rodata
    addiu	$a0,$a0,19776
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	428334
    nop
    lw	$a3,196($sp)
    sd	$a3,2000($sp)
    beqz	$a3,4283fc
    nop
    li	$a5,1
    ld	$a4,2000($sp)
    beq	$a4,$a5,42840c
    nop
    li	$a7,2
    ld	$a6,2000($sp)
    beq	$a6,$a7,428420
    nop
    li	$t1,3
    ld	$t0,2000($sp)
    beq	$t0,$t1,428434
    nop
    b	428448
    nop
    lw	$t2,2028($sp)
    sw	$zero,8($t2)
    b	428468
    nop
    li	$t3,1
    lw	$t8,2028($sp)
    sw	$t3,8($t8)
    b	428468
    nop
    li	$t9,2
    lw	$ra,2028($sp)
    sw	$t9,8($ra)
    b	428468
    nop
    li	$at,3
    lw	$v0,2028($sp)
    sw	$at,8($v0)
    b	428468
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19816
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	4283fc
    nop
    lw	$t0,124($sp)
    lw	$t1,2028($sp)
    sw	$t0,16($t1)
    lw	$a6,128($sp)
    lw	$a7,2028($sp)
    sw	$a6,20($a7)
    lw	$a4,132($sp)
    lw	$a5,2028($sp)
    sw	$a4,24($a5)
    lw	$a2,136($sp)
    lw	$a3,2028($sp)
    sw	$a2,28($a3)
    lw	$a1,56($sp)
    sd	$a1,2000($sp)
    beqz	$a1,4284d0
    nop
    li	$t3,2
    ld	$t2,2000($sp)
    beq	$t2,$t3,4284e0
    nop
    li	$t9,6
    ld	$t8,2000($sp)
    beq	$t8,$t9,4284f4
    nop
    b	428508
    nop
    lw	$ra,2028($sp)
    sw	$zero,0($ra)
    b	42851c
    nop
    li	$at,2
    lw	$v0,2028($sp)
    sw	$at,0($v0)
    b	42851c
    nop
    li	$v1,3
    lw	$a0,2028($sp)
    sw	$v1,0($a0)
    b	42851c
    nop
    li	$a1,1
    lw	$a2,2028($sp)
    sw	$a1,0($a2)
    b	42851c
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19864
    lw	$a1,2028($sp)
    lw	$a1,16($a1)
    lw	$a2,2028($sp)
    lw	$a2,20($a2)
    lw	$a3,2028($sp)
    lw	$a3,24($a3)
    lw	$a4,2028($sp)
    lw	$a4,28($a4)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    li	$a1,1
    sw	$a1,4($sp)
    lw	$a2,0($sp)
    bltz	$a2,428578
    nop
    lw	$a0,0($sp)
    lw	$t9,-28124($gp)
    jalr	$t9
    nop
    lw	$v0,4($sp)
    ld	$gp,1992($sp)
    ld	$ra,1984($sp)
    addiu	$sp,$sp,2032
    jr	$ra
    nop

glabel vfmtIsKonaCombinationValidForTarget
    addiu	$sp,$sp,-336
    sd	$gp,256($sp)
    sd	$ra,248($sp)
    lui	$a5,0x17
    addiu	$a5,$a5,-18872
    addu	$gp,$t9,$a5
    sw	$a0,292($sp)
    sw	$a1,300($sp)
    sw	$a2,308($sp)
    sw	$a3,316($sp)
    sw	$a4,324($sp)
    sw	$zero,16($sp)
    sw	$zero,20($sp)
    ldc1	$f10,-26408($gp)
    sdc1	$f10,24($sp)
    dmtc1	$zero,$f9
    nop
    sdc1	$f9,32($sp)
    dmtc1	$zero,$f8
    nop
    sdc1	$f8,40($sp)
    dmtc1	$zero,$f7
    nop
    sdc1	$f7,48($sp)
    dmtc1	$zero,$f6
    nop
    sdc1	$f6,56($sp)
    dmtc1	$zero,$f5
    nop
    sdc1	$f5,64($sp)
    dmtc1	$zero,$f4
    nop
    sdc1	$f4,72($sp)
    dmtc1	$zero,$f3
    nop
    sdc1	$f3,80($sp)
    dmtc1	$zero,$f2
    nop
    sdc1	$f2,88($sp)
    dmtc1	$zero,$f1
    nop
    sdc1	$f1,96($sp)
    dmtc1	$zero,$f0
    nop
    sdc1	$f0,104($sp)
    sw	$zero,112($sp)
    sw	$zero,116($sp)
    la	$a0,_rodata
    addiu	$a0,$a0,19928
    lw	$t9,-28500($gp)
    jalr	$t9
    nop
    move	$a1,$v0
    sd	$a1,264($sp)
    li	$a0,5
    lw	$t9,-28120($gp)
    jalr	$t9
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,19944
    lw	$t9,-28116($gp)
    jalr	$t9
    nop
    mtc1	$zero,$f12
    lw	$at,308($sp)
    swc1	$f12,0($at)
    mtc1	$zero,$f11
    lw	$ra,308($sp)
    swc1	$f11,4($ra)
    lw	$a0,292($sp)
    lw	$a1,300($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27472
    bal 4294b0
    nop
    sd	$v0,264($sp)
    beqz	$v0,428f70
    nop
    sw	$zero,120($sp)
    lw	$v0,120($sp)
    slti	$v0,$v0,15
    beqz	$v0,428c90
    nop
    lw	$v1,292($sp)
    lw	$a1,120($sp)
    li	$a2,2736
    multu	$a1,$a2
    mflo	$a0
    addu	$v1,$v1,$a0
    addiu	$v1,$v1,596
    lw	$v1,676($v1)
    beqz	$v1,428c74
    nop
    lw	$t0,292($sp)
    lw	$t2,120($sp)
    li	$t3,2736
    multu	$t2,$t3
    mflo	$t1
    addu	$t0,$t0,$t1
    addiu	$t0,$t0,596
    sw	$t0,124($sp)
    lw	$a7,124($sp)
    addiu	$a7,$a7,288
    lw	$a7,0($a7)
    sw	$a7,128($sp)
    lw	$a6,124($sp)
    addiu	$a6,$a6,292
    lw	$a6,0($a6)
    lw	$a5,124($sp)
    addiu	$a5,$a5,2508
    lw	$a5,0($a5)
    addiu	$a5,$a5,1
    div	$zero,$a6,$a5
    teq	$a5,$zero,0x7
    mflo	$a4
    sw	$a4,132($sp)
    lw	$a3,124($sp)
    lw	$a3,1160($a3)
    beqz	$a3,42878c
    nop
    lw	$t9,124($sp)
    addiu	$t9,$t9,292
    lw	$t9,0($t9)
    srl	$t8,$t9,0x1f
    addu	$t8,$t8,$t9
    sra	$t8,$t8,0x1
    sw	$t8,132($sp)
    lw	$a7,124($sp)
    lw	$a7,1156($a7)
    mtc1	$a7,$f17
    nop
    cvt.s.w	$f17,$f17
    lw	$a6,124($sp)
    lwc1	$f18,304($a6)
    mul.s	$f17,$f17,$f18
    cvt.d.s	$f17,$f17
    sdc1	$f17,136($sp)
    ldc1	$f15,136($sp)
    lw	$a5,124($sp)
    lwc1	$f16,304($a5)
    cvt.d.s	$f16,$f16
    div.d	$f15,$f15,$f16
    trunc.w.d	$f15,$f15
    mfc1	$a4,$f15
    nop
    sw	$a4,144($sp)
    lw	$a3,124($sp)
    lw	$a3,1248($a3)
    lw	$a2,144($sp)
    div	$zero,$a3,$a2
    teq	$a2,$zero,0x7
    mflo	$a1
    sw	$a1,148($sp)
    la	$a0,_rodata
    addiu	$a0,$a0,19960
    lw	$a1,120($sp)
    lw	$ra,124($sp)
    lwc1	$f14,304($ra)
    cvt.d.s	$f14,$f14
    dmfc1	$a2,$f14
    ldc1	$f13,136($sp)
    cvt.s.d	$f13,$f13
    cvt.d.s	$f13,$f13
    dmfc1	$a3,$f13
    lw	$a4,148($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    lw	$t0,124($sp)
    lw	$t0,308($t0)
    sd	$t0,264($sp)
    li	$t1,4
    beq	$t0,$t1,428890
    nop
    ld	$t1,264($sp)
    beqz	$t1,4288a8
    nop
    li	$t3,1
    ld	$t2,264($sp)
    beq	$t2,$t3,4288b8
    nop
    li	$t9,2
    ld	$t8,264($sp)
    beq	$t8,$t9,4288b8
    nop
    li	$at,3
    ld	$ra,264($sp)
    beq	$ra,$at,4288b8
    nop
    b	4288c8
    nop
    li	$v1,1
    sw	$v1,20($sp)
    li	$v0,32
    sw	$v0,152($sp)
    b	4288f4
    nop
    li	$a0,32
    sw	$a0,152($sp)
    b	4288f4
    nop
    li	$a1,42
    sw	$a1,152($sp)
    b	4288f4
    nop
    li	$a2,657
    sw	$a2,-27804($gp)
    li	$a0,28
    la	$a1,_rodata
    addiu	$a1,$a1,20016
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30640
    bal 4277b0
    nop
    b	428f70
    nop
    lw	$a7,128($sp)
    lw	$t1,124($sp)
    addiu	$t1,$t1,264
    lw	$t1,0($t1)
    li	$t2,160
    div	$zero,$t1,$t2
    mfhi	$t0
    addu	$a7,$a7,$t0
    addiu	$a7,$a7,159
    li	$t0,160
    div	$zero,$a7,$t0
    mflo	$a6
    sw	$a6,156($sp)
    lw	$a5,128($sp)
    addiu	$a5,$a5,159
    li	$a6,160
    div	$zero,$a5,$a6
    mflo	$a4
    sw	$a4,160($sp)
    lw	$a3,124($sp)
    addiu	$a3,$a3,328
    lw	$a3,0($a3)
    li	$a4,1
    beq	$a3,$a4,428968
    nop
    lw	$t2,156($sp)
    lw	$t3,160($sp)
    beq	$t2,$t3,428974
    nop
    lw	$t8,156($sp)
    addiu	$t8,$t8,1
    sw	$t8,156($sp)
    lw	$t9,300($sp)
    lw	$t9,0($t9)
    li	$ra,2
    bne	$t9,$ra,428994
    nop
    li	$ra,4
    lw	$at,124($sp)
    sw	$ra,696($at)
    lw	$v0,124($sp)
    lw	$v0,696($v0)
    bgtz	$v0,4289d0
    nop
    li	$a2,678
    sw	$a2,-27804($gp)
    li	$a0,1
    la	$a1,_rodata
    addiu	$a1,$a1,20040
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30640
    bal 4277b0
    nop
    b	428f70
    nop
    lw	$a6,124($sp)
    lw	$a6,696($a6)
    lw	$a7,156($sp)
    addu	$a6,$a6,$a7
    addiu	$a6,$a6,-1
    lw	$a5,124($sp)
    lw	$a5,696($a5)
    div	$zero,$a6,$a5
    teq	$a5,$zero,0x7
    mflo	$a4
    sw	$a4,164($sp)
    lw	$a0,292($sp)
    lw	$a1,300($sp)
    lw	$a2,20($sp)
    lw	$a3,124($sp)
    lw	$a3,696($a3)
    lw	$a4,156($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,31968
    bal 427ce0
    nop
    sd	$v0,264($sp)
    sw	$v0,168($sp)
    lw	$ra,164($sp)
    lw	$at,132($sp)
    mult	$ra,$at
    mflo	$t9
    sw	$t9,172($sp)
    lw	$t3,168($sp)
    lw	$t8,132($sp)
    mult	$t3,$t8
    mflo	$t2
    sw	$t2,176($sp)
    lw	$a6,152($sp)
    lw	$t0,156($sp)
    lw	$t1,132($sp)
    mult	$t0,$t1
    mflo	$a7
    nop
    nop
    mult	$a6,$a7
    mflo	$a5
    sll	$a4,$a5,0x2
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x5
    sw	$a4,180($sp)
    lw	$a2,128($sp)
    lw	$a3,132($sp)
    mult	$a2,$a3
    mflo	$a1
    sw	$a1,184($sp)
    la	$a0,_rodata
    addiu	$a0,$a0,20080
    lw	$a1,120($sp)
    lw	$a2,124($sp)
    lw	$a2,260($a2)
    lw	$a3,128($sp)
    lw	$a4,132($sp)
    lw	$a5,172($sp)
    lw	$a6,180($sp)
    lw	$a7,184($sp)
    lw	$ra,176($sp)
    sw	$ra,4($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    lw	$a3,184($sp)
    mtc1	$a3,$f19
    nop
    cvt.d.w	$f19,$f19
    lw	$a2,292($sp)
    lwc1	$f21,548($a2)
    cvt.d.s	$f21,$f21
    ldc1	$f23,-26400($gp)
    div.d	$f21,$f21,$f23
    ldc1	$f23,-26656($gp)
    mul.d	$f21,$f21,$f23
    ldc1	$f23,-26392($gp)
    add.d	$f21,$f21,$f23
    mul.d	$f19,$f19,$f21
    ldc1	$f21,-26856($gp)
    div.d	$f19,$f19,$f21
    trunc.w.d	$f19,$f19
    mfc1	$a1,$f19
    nop
    sw	$a1,184($sp)
    lw	$a0,124($sp)
    lw	$a0,1156($a0)
    mtc1	$a0,$f18
    nop
    cvt.s.w	$f18,$f18
    lw	$v1,124($sp)
    lwc1	$f19,304($v1)
    mul.s	$f18,$f18,$f19
    cvt.d.s	$f18,$f18
    sdc1	$f18,192($sp)
    lw	$v0,124($sp)
    lw	$v0,676($v0)
    beqz	$v0,428c24
    nop
    lw	$a4,124($sp)
    lw	$a4,260($a4)
    lw	$a5,120($sp)
    bne	$a4,$a5,428c24
    nop
    ldc1	$f29,40($sp)
    lw	$v0,148($sp)
    lw	$v1,172($sp)
    mult	$v0,$v1
    mflo	$at
    mtc1	$at,$f31
    nop
    cvt.d.w	$f31,$f31
    ldc1	$f0,192($sp)
    mul.d	$f31,$f31,$f0
    add.d	$f29,$f29,$f31
    sdc1	$f29,40($sp)
    ldc1	$f25,48($sp)
    lw	$t9,148($sp)
    lw	$ra,180($sp)
    mult	$t9,$ra
    mflo	$t8
    mtc1	$t8,$f27
    nop
    cvt.d.w	$f27,$f27
    ldc1	$f29,192($sp)
    mul.d	$f27,$f27,$f29
    add.d	$f25,$f25,$f27
    sdc1	$f25,48($sp)
    ldc1	$f21,56($sp)
    lw	$t2,148($sp)
    lw	$t3,184($sp)
    mult	$t2,$t3
    mflo	$t1
    mtc1	$t1,$f23
    nop
    cvt.d.w	$f23,$f23
    ldc1	$f25,192($sp)
    mul.d	$f23,$f23,$f25
    add.d	$f21,$f21,$f23
    sdc1	$f21,56($sp)
    lw	$a5,112($sp)
    lw	$a7,148($sp)
    lw	$t0,176($sp)
    mult	$a7,$t0
    mflo	$a6
    addu	$a5,$a5,$a6
    sw	$a5,112($sp)
    lw	$a1,124($sp)
    addiu	$a1,$a1,272
    lw	$a1,0($a1)
    lw	$a0,124($sp)
    addiu	$a0,$a0,296
    lw	$a0,0($a0)
    slt	$a0,$a0,$a1
    bnez	$a0,428c6c
    nop
    lw	$a3,124($sp)
    addiu	$a3,$a3,276
    lw	$a3,0($a3)
    lw	$a2,124($sp)
    addiu	$a2,$a2,300
    lw	$a2,0($a2)
    slt	$a2,$a2,$a3
    beqz	$a2,428c74
    nop
    li	$a4,1
    sw	$a4,116($sp)
    lw	$a6,120($sp)
    addiu	$a6,$a6,1
    sw	$a6,120($sp)
    lw	$a5,120($sp)
    slti	$a5,$a5,15
    bnez	$a5,4286dc
    nop
    lw	$a7,116($sp)
    beqz	$a7,428cac
    nop
    ldc1	$f0,-26384($gp)
    sdc1	$f0,200($sp)
    b	428cb4
    nop
    ldc1	$f1,-26376($gp)
    sdc1	$f1,200($sp)
    ldc1	$f5,200($sp)
    ldc1	$f6,-26584($gp)
    mul.d	$f5,$f5,$f6
    ldc1	$f6,-26368($gp)
    div.d	$f5,$f5,$f6
    sdc1	$f5,208($sp)
    ldc1	$f4,208($sp)
    sdc1	$f4,216($sp)
    ldc1	$f2,208($sp)
    ldc1	$f3,136($sp)
    div.d	$f2,$f2,$f3
    sdc1	$f2,224($sp)
    lw	$t0,300($sp)
    lw	$t0,0($t0)
    li	$t1,2
    bne	$t0,$t1,428d08
    nop
    ldc1	$f7,-26360($gp)
    sdc1	$f7,272($sp)
    b	428d10
    nop
    ldc1	$f8,-26696($gp)
    sdc1	$f8,272($sp)
    ldc1	$f15,272($sp)
    sdc1	$f15,232($sp)
    ldc1	$f13,208($sp)
    ldc1	$f14,232($sp)
    mul.d	$f13,$f13,$f14
    sdc1	$f13,64($sp)
    ldc1	$f11,216($sp)
    ldc1	$f12,-26352($gp)
    mul.d	$f11,$f11,$f12
    sdc1	$f11,72($sp)
    ldc1	$f9,200($sp)
    ldc1	$f10,-26584($gp)
    mul.d	$f9,$f9,$f10
    sdc1	$f9,80($sp)
    addiu	$a0,$sp,64
    ldc1	$f13,24($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32720
    bal 427fd0
    nop
    addiu	$a0,$sp,72
    ldc1	$f13,24($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32720
    bal 427fd0
    nop
    addiu	$a0,$sp,80
    ldc1	$f13,24($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32720
    bal 427fd0
    nop
    ldc1	$f12,40($sp)
    ldc1	$f13,64($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32672
    bal 427fa0
    nop
    sdc1	$f0,280($sp)
    sdc1	$f0,88($sp)
    ldc1	$f12,48($sp)
    ldc1	$f13,72($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32672
    bal 427fa0
    nop
    sdc1	$f0,280($sp)
    sdc1	$f0,96($sp)
    ldc1	$f12,56($sp)
    ldc1	$f13,80($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32672
    bal 427fa0
    nop
    sdc1	$f0,280($sp)
    sdc1	$f0,104($sp)
    lw	$ra,112($sp)
    mtc1	$ra,$f12
    nop
    cvt.d.w	$f12,$f12
    ldc1	$f13,224($sp)
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,32672
    bal 427fa0
    nop
    sdc1	$f0,280($sp)
    sdc1	$f0,240($sp)
    ldc1	$f15,208($sp)
    ldc1	$f16,240($sp)
    mul.d	$f15,$f15,$f16
    ldc1	$f16,-26344($gp)
    div.d	$f15,$f15,$f16
    cvt.s.d	$f15,$f15
    lw	$a1,308($sp)
    swc1	$f15,4($a1)
    la	$a0,_rodata
    addiu	$a0,$a0,20184
    lw	$a1,112($sp)
    ldc1	$f14,224($sp)
    dmfc1	$a2,$f14
    ldc1	$f13,240($sp)
    dmfc1	$a3,$f13
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,20248
    lw	$a1,116($sp)
    ldc1	$f19,88($sp)
    dmfc1	$a2,$f19
    ldc1	$f18,96($sp)
    dmfc1	$a3,$f18
    ldc1	$f17,104($sp)
    dmfc1	$a4,$f17
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    dmtc1	$zero,$f25
    nop
    sdc1	$f25,32($sp)
    ldc1	$f21,32($sp)
    ldc1	$f23,88($sp)
    c.lt.d	$f21,$f23
    nop
    bc1f	428ec8
    nop
    ldc1	$f27,88($sp)
    sdc1	$f27,32($sp)
    ldc1	$f29,32($sp)
    ldc1	$f31,96($sp)
    c.lt.d	$f29,$f31
    nop
    bc1f	428ee8
    nop
    ldc1	$f0,96($sp)
    sdc1	$f0,32($sp)
    ldc1	$f1,32($sp)
    ldc1	$f2,104($sp)
    c.lt.d	$f1,$f2
    nop
    bc1f	428f08
    nop
    ldc1	$f3,104($sp)
    sdc1	$f3,32($sp)
    ldc1	$f6,32($sp)
    cvt.s.d	$f6,$f6
    lw	$a1,308($sp)
    swc1	$f6,0($a1)
    ldc1	$f5,32($sp)
    ldc1	$f4,-26856($gp)
    c.lt.d	$f4,$f5
    nop
    bc1f	428f5c
    nop
    li	$a2,823
    sw	$a2,-27804($gp)
    li	$a0,2
    la	$a1,_rodata
    addiu	$a1,$a1,20352
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30640
    bal 4277b0
    nop
    b	428f70
    nop
    sw	$zero,324($sp)
    lw	$a4,316($sp)
    sb	$zero,0($a4)
    li	$a3,1
    sw	$a3,16($sp)
    lw	$a5,16($sp)
    bnez	$a5,428f98
    nop
    addiu	$a0,$gp,-27304
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-7280
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    lw	$a2,324($sp)
    blez	$a2,428fd8
    nop
    lw	$a0,316($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-7280
    lw	$a2,324($sp)
    addiu	$a2,$a2,-1
    lw	$t9,-28664($gp)
    jalr	$t9
    nop
    lw	$a2,316($sp)
    lw	$a3,324($sp)
    addiu	$a3,$a3,-1
    addu	$a2,$a2,$a3
    sb	$zero,0($a2)
    lw	$v0,16($sp)
    ld	$gp,256($sp)
    ld	$ra,248($sp)
    addiu	$sp,$sp,336
    jr	$ra
    nop

glabel vfmtIsKonaCombinationValidForActualHW
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$v1,0x17
    addiu	$v1,$v1,-21528
    addu	$gp,$t9,$v1
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    sw	$a2,36($sp)
    sw	$a3,44($sp)
    sw	$a4,52($sp)
    lw	$at,20($sp)
    lw	$v0,-27800($gp)
    beq	$at,$v0,42904c
    nop
    lw	$a2,20($sp)
    sw	$a2,-27800($gp)
    lw	$a0,20($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-7024
    lw	$t9,-32508($gp)
    bal 428070
    nop
    lw	$a0,28($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-7024
    lw	$a2,36($sp)
    lw	$a3,44($sp)
    lw	$a4,52($sp)
    lw	$t9,-32504($gp)
    bal 428590
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtSwapRateCloseEnough
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-21688
    addu	$at,$t9,$v0
    swc1	$f12,16($sp)
    swc1	$f13,24($sp)
    lwc1	$f1,16($sp)
    lwc1	$f2,24($sp)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($sp)
    lwc1	$f0,0($sp)
    cvt.d.s	$f0,$f0
    dmtc1	$zero,$f1
    nop
    c.lt.d	$f0,$f1
    nop
    bc1f	4290e8
    nop
    lwc1	$f3,0($sp)
    neg.s	$f3,$f3
    swc1	$f3,0($sp)
    lwc1	$f4,0($sp)
    lwc1	$f5,16($sp)
    div.s	$f4,$f4,$f5
    cvt.d.s	$f4,$f4
    ldc1	$f5,-26696($at)
    c.lt.d	$f4,$f5
    li	$v0,1
    bc1t	429110
    nop
    move	$v0,$zero
    ld	$ra,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtSyncFormatFrameRatesCompatible
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    sd	$ra,24($sp)
    lui	$at,0x17
    addiu	$at,$at,-21832
    addu	$gp,$t9,$at
    swc1	$f12,48($sp)
    swc1	$f13,56($sp)
    lwc1	$f0,48($sp)
    cvt.d.s	$f0,$f0
    dmtc1	$zero,$f1
    nop
    c.eq.d	$f0,$f1
    nop
    bc1t	429180
    nop
    lwc1	$f1,56($sp)
    cvt.d.s	$f1,$f1
    dmtc1	$zero,$f2
    nop
    c.eq.d	$f1,$f2
    nop
    bc1f	42918c
    nop
    sd	$zero,16($sp)
    b	429254
    nop
    lwc1	$f3,48($sp)
    lwc1	$f2,56($sp)
    c.le.s	$f2,$f3
    nop
    bc1f	4291bc
    nop
    lwc1	$f4,48($sp)
    lwc1	$f5,56($sp)
    div.s	$f4,$f4,$f5
    swc1	$f4,0($sp)
    b	4291cc
    nop
    lwc1	$f6,56($sp)
    lwc1	$f7,48($sp)
    div.s	$f6,$f6,$f7
    swc1	$f6,0($sp)
    lwc1	$f9,0($sp)
    cvt.d.s	$f9,$f9
    ldc1	$f8,-26336($gp)
    c.lt.d	$f8,$f9
    nop
    bc1f	4291f4
    nop
    sd	$zero,16($sp)
    b	429254
    nop
    lwc1	$f12,0($sp)
    lw	$t9,-28456($gp)
    jalr	$t9
    nop
    lwc1	$f14,0($sp)
    sub.s	$f14,$f14,$f0
    swc1	$f14,4($sp)
    ldc1	$f12,-26848($gp)
    lwc1	$f13,4($sp)
    cvt.d.s	$f13,$f13
    sub.d	$f12,$f12,$f13
    abs.d	$f12,$f12
    cvt.s.d	$f12,$f12
    swc1	$f12,8($sp)
    lwc1	$f11,8($sp)
    cvt.d.s	$f11,$f11
    ldc1	$f10,-26328($gp)
    c.lt.d	$f10,$f11
    li	$v0,1
    bc1t	42924c
    nop
    move	$v0,$zero
    sd	$v0,16($sp)
    sd	$v0,16($sp)
    ld	$v0,16($sp)
    ld	$gp,32($sp)
    ld	$ra,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtUpdateFormatInfoInCombination
    addiu	$sp,$sp,-3136
    sd	$gp,3072($sp)
    sd	$ra,3064($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-22344
    addu	$gp,$t9,$v0
    sw	$a0,3124($sp)
    sw	$zero,0($sp)
    sw	$zero,4($sp)
    lw	$at,4($sp)
    slti	$at,$at,15
    beqz	$at,429488
    nop
    lw	$v1,3124($sp)
    lw	$a1,4($sp)
    li	$a2,2736
    multu	$a1,$a2
    mflo	$a0
    addu	$v1,$v1,$a0
    addiu	$v1,$v1,596
    lw	$v1,712($v1)
    beqz	$v1,42946c
    nop
    lw	$a4,3124($sp)
    lw	$a6,4($sp)
    li	$a7,2736
    multu	$a6,$a7
    mflo	$a5
    addu	$a4,$a4,$a5
    addiu	$a4,$a4,596
    sw	$a4,8($sp)
    li	$a3,1
    beqz	$a3,42946c
    nop
    addiu	$a0,$sp,16
    lw	$a1,8($sp)
    addiu	$a1,$a1,340
    lw	$t9,-32480($gp)
    bal 42ba20
    nop
    addiu	$a0,$sp,16
    addiu	$a1,$sp,1040
    lw	$t9,-32464($gp)
    jalr	$t9
    nop
    beqz	$v0,429408
    nop
    li	$a1,953
    sw	$a1,-27808($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,20384
    addiu	$a1,$sp,16
    lw	$t9,-32748($gp)
    addiu	$t9,$t9,30384
    bal 4276b0
    nop
    b	429490
    nop
    lw	$a5,1300($sp)
    lw	$a6,8($sp)
    sw	$a5,256($a6)
    addiu	$a4,$sp,1040
    sd	$a4,3080($sp)
    lw	$a3,8($sp)
    addiu	$a3,$a3,716
    sd	$a3,3088($sp)
    sd	$zero,3096($sp)
    li	$a2,505
    sd	$a2,3104($sp)
    ld	$t0,3096($sp)
    ld	$t1,3080($sp)
    addu	$t1,$t0,$t1
    lw	$t1,0($t1)
    ld	$t2,3088($sp)
    addu	$t2,$t0,$t2
    sw	$t1,0($t2)
    addiu	$t0,$t0,4
    sd	$t0,3096($sp)
    ld	$a7,3104($sp)
    addiu	$a7,$a7,-1
    sd	$a7,3104($sp)
    bgtz	$a7,429434
    nop
    lw	$t3,4($sp)
    addiu	$t3,$t3,1
    sw	$t3,4($sp)
    lw	$t2,4($sp)
    slti	$t2,$t2,15
    bnez	$t2,429354
    nop
    li	$t8,1
    sw	$t8,0($sp)
    lw	$v0,0($sp)
    ld	$gp,3072($sp)
    ld	$ra,3064($sp)
    addiu	$sp,$sp,3136
    jr	$ra
    nop

glabel vfmtFindFormatFile
    addiu	$sp,$sp,-3168
    sd	$gp,3112($sp)
    sd	$ra,3104($sp)
    lui	$a3,0x17
    addiu	$a3,$a3,-31736
    addu	$gp,$t9,$a3
    sw	$a0,3140($sp)
    sw	$a1,3148($sp)
    sw	$a2,3156($sp)
    la	$a0,_rodata
    addiu	$a0,$a0,-11352
    lw	$t9,-28500($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    sw	$v0,0($sp)
    lw	$a4,0($sp)
    bnez	$a4,42b824
    nop
    addiu	$a5,$gp,-27216
    sw	$a5,0($sp)
    addiu	$a0,$sp,8
    lw	$a1,3148($sp)
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,8
    addiu	$a1,$gp,-27208
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-18656
    bal 42b720
    nop
    addiu	$a0,$sp,8
    li	$a1,47
    lw	$t9,-28108($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    sw	$v0,1032($sp)
    lw	$ra,1032($sp)
    bnez	$ra,42b8a0
    nop
    lw	$a0,3140($sp)
    addiu	$a1,$gp,-27200
    lw	$a2,0($sp)
    lw	$a3,3156($sp)
    addiu	$a4,$sp,8
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    b	42b938
    nop
    lw	$at,1032($sp)
    addiu	$v0,$sp,8
    subu	$at,$at,$v0
    sw	$at,1036($sp)
    addiu	$a0,$sp,1040
    addiu	$a1,$sp,8
    lw	$a2,1036($sp)
    lw	$t9,-28664($gp)
    jalr	$t9
    nop
    lw	$v1,1036($sp)
    addiu	$a0,$sp,1040
    addu	$v1,$v1,$a0
    sb	$zero,0($v1)
    addiu	$a0,$sp,2064
    addiu	$a1,$gp,-27192
    lw	$a2,0($sp)
    lw	$a3,3156($sp)
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,1040
    addiu	$a1,$sp,2064
    lw	$t9,-28696($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    beqz	$v0,42b924
    nop
    li	$a1,3
    sd	$a1,3096($sp)
    b	42ba08
    nop
    lw	$a0,3140($sp)
    addiu	$a1,$sp,8
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    lw	$a0,3140($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    bnez	$v0,42b968
    nop
    sd	$zero,3096($sp)
    b	42ba08
    nop
    addiu	$a0,$gp,-27184
    lw	$t9,-28500($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    sw	$v0,3088($sp)
    lw	$a2,3088($sp)
    bnez	$a2,42b99c
    nop
    li	$a3,1
    sd	$a3,3096($sp)
    b	42ba08
    nop
    lw	$a0,3140($sp)
    addiu	$a1,$gp,-27176
    lw	$a2,3088($sp)
    addiu	$a3,$sp,8
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,3140($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    bnez	$v0,42b9e8
    nop
    sd	$zero,3096($sp)
    b	42ba08
    nop
    lw	$a0,3140($sp)
    addiu	$a1,$sp,8
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    li	$a2,1
    sd	$a2,3096($sp)
    sd	$a2,3096($sp)
    ld	$v0,3096($sp)
    ld	$gp,3112($sp)
    ld	$ra,3104($sp)
    addiu	$sp,$sp,3168
    jr	$ra
    nop

glabel vfmtFindKonaFormatFile
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$at,0x17
    addiu	$at,$at,-32328
    addu	$gp,$t9,$at
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    lw	$a0,20($sp)
    lw	$a1,28($sp)
    lw	$a2,-27792($gp)
    lw	$t9,-32484($gp)
    bal 42b7d0
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtFindCmpFormatFile
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    sd	$ra,16($sp)
    lui	$at,0x17
    addiu	$at,$at,-32408
    addu	$gp,$t9,$at
    sw	$a0,52($sp)
    sw	$a1,60($sp)
    lw	$a0,52($sp)
    lw	$a1,60($sp)
    lw	$a2,-27784($gp)
    lw	$t9,-32484($gp)
    bal 42b7d0
    nop
    sd	$v0,32($sp)
    sw	$v0,0($sp)
    lw	$v0,0($sp)
    bnez	$v0,42bacc
    nop
    lw	$v1,0($sp)
    sd	$v1,8($sp)
    b	42baf4
    nop
    lw	$a0,52($sp)
    lw	$a1,60($sp)
    lw	$a2,-27788($gp)
    lw	$t9,-32484($gp)
    bal 42b7d0
    nop
    sd	$v0,32($sp)
    move	$a0,$v0
    sd	$a0,8($sp)
    sd	$a0,8($sp)
    ld	$v0,8($sp)
    ld	$gp,24($sp)
    ld	$ra,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtFindOdyFormatFile
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$at,0x17
    addiu	$at,$at,-32568
    addu	$gp,$t9,$at
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    lw	$a0,20($sp)
    lw	$a1,28($sp)
    lw	$a2,-27780($gp)
    lw	$t9,-32484($gp)
    bal 42b7d0
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtFindSG2FormatFile
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$at,0x17
    addiu	$at,$at,-32648
    addu	$gp,$t9,$at
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    lw	$a0,20($sp)
    lw	$a1,28($sp)
    lw	$a2,-27776($gp)
    lw	$t9,-32484($gp)
    bal 42b7d0
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtFindKonaCombinationFile
    addiu	$sp,$sp,-1088
    sd	$gp,1048($sp)
    sd	$ra,1040($sp)
    lui	$at,0x17
    addiu	$at,$at,-32728
    addu	$gp,$t9,$at
    sw	$a0,1076($sp)
    sw	$a1,1084($sp)
    addiu	$a0,$sp,0
    lw	$a1,1084($sp)
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,0
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,1056($sp)
    bnez	$v0,42bc2c
    nop
    lw	$a0,1076($sp)
    addiu	$a1,$sp,0
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    li	$a2,1
    sd	$a2,1032($sp)
    b	42bccc
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,-11352
    lw	$t9,-28500($gp)
    jalr	$t9
    nop
    sd	$v0,1056($sp)
    sw	$v0,1024($sp)
    lw	$a1,1024($sp)
    bnez	$a1,42bc5c
    nop
    addiu	$a2,$gp,-27216
    sw	$a2,1024($sp)
    lw	$a0,1076($sp)
    la	$a1,_rodata
    addiu	$a1,$a1,-11336
    lw	$a2,1024($sp)
    addiu	$a3,$sp,0
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,1056($sp)
    bnez	$v0,42bcb0
    nop
    li	$a2,1
    sd	$a2,1032($sp)
    b	42bccc
    nop
    lw	$a0,1076($sp)
    addiu	$a1,$sp,0
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    sd	$zero,1032($sp)
    sd	$zero,1032($sp)
    ld	$v0,1032($sp)
    ld	$gp,1048($sp)
    ld	$ra,1040($sp)
    addiu	$sp,$sp,1088
    jr	$ra
    nop

glabel vfmtFindCmpCombinationFile
    addiu	$sp,$sp,-1088
    sd	$gp,1056($sp)
    sd	$ra,1048($sp)
    lui	$at,0x16
    addiu	$at,$at,32488
    addu	$gp,$t9,$at
    sw	$a0,1076($sp)
    sw	$a1,1084($sp)
    sw	$zero,0($sp)
    addiu	$a0,$sp,8
    lw	$a1,1084($sp)
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,8
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    bnez	$v0,42bd68
    nop
    lw	$a0,1076($sp)
    addiu	$a1,$sp,8
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    b	42bf38
    nop
    la	$a0,_rodata
    addiu	$a0,$a0,-11352
    lw	$t9,-28500($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    sw	$v0,1032($sp)
    lw	$a1,1032($sp)
    bnez	$a1,42bd98
    nop
    addiu	$a2,$gp,-27216
    sw	$a2,1032($sp)
    lw	$a0,1076($sp)
    li	$a1,4
    la	$a2,_rodata
    addiu	$a2,$a2,-11296
    lw	$a3,1032($sp)
    addiu	$a4,$sp,8
    lw	$t9,-28104($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    beqz	$v0,42bf38
    nop
    lw	$a0,1076($sp)
    li	$a1,4
    la	$a2,_rodata
    addiu	$a2,$a2,-11264
    lw	$a3,1032($sp)
    addiu	$a4,$sp,8
    lw	$t9,-28104($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    beqz	$v0,42bf38
    nop
    lw	$a0,1076($sp)
    li	$a1,4
    la	$a2,_rodata
    addiu	$a2,$a2,-11224
    lw	$a3,1032($sp)
    addiu	$a4,$sp,8
    lw	$t9,-28104($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_005a0000
    addiu	$a1,$a1,-6992
    lw	$t9,-28480($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    beqz	$v0,42bf38
    nop
    lw	$a2,0($sp)
    bnez	$a2,42bec4
    nop
    addiu	$a0,$sp,8
    addiu	$a1,$gp,-27168
    lw	$t9,-28100($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    bnez	$v0,42bec4
    nop
    addiu	$a0,$sp,8
    addiu	$a1,$gp,-27168
    li	$a2,1024
    lw	$t9,-28096($gp)
    jalr	$t9
    nop
    li	$a3,1
    sw	$a3,0($sp)
    b	42bd28
    nop
    lw	$a0,1084($sp)
    li	$a1,47
    lw	$t9,-28092($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    bnez	$v0,42bf10
    nop
    lw	$a0,1076($sp)
    li	$a1,1024
    la	$a2,_rodata
    addiu	$a2,$a2,-11264
    lw	$a3,1032($sp)
    lw	$a4,1084($sp)
    lw	$t9,-28104($gp)
    jalr	$t9
    nop
    b	42bf28
    nop
    lw	$a0,1076($sp)
    lw	$a1,1084($sp)
    li	$a2,1024
    lw	$t9,-28664($gp)
    jalr	$t9
    nop
    li	$a3,1
    sd	$a3,1040($sp)
    b	42bf40
    nop
    sd	$zero,1040($sp)
    sd	$zero,1040($sp)
    ld	$v0,1040($sp)
    ld	$gp,1056($sp)
    ld	$ra,1048($sp)
    addiu	$sp,$sp,1088
    jr	$ra
    nop

glabel vfmtGetLastKonaFileStat
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    lui	$a1,0x16
    addiu	$a1,$a1,31864
    addu	$at,$t9,$a1
    sw	$a0,52($sp)
    la	$a0,sub_005a0000
    addiu	$a0,$a0,-6992
    sd	$a0,8($sp)
    lw	$v1,52($sp)
    sd	$v1,16($sp)
    sd	$zero,24($sp)
    li	$v0,19
    sd	$v0,32($sp)
    ld	$a3,24($sp)
    ld	$a4,8($sp)
    addu	$a4,$a3,$a4
    ld	$a4,0($a4)
    ld	$a5,16($sp)
    addu	$a5,$a3,$a5
    sd	$a4,0($a5)
    addiu	$a3,$a3,8
    sd	$a3,24($sp)
    ld	$a2,32($sp)
    addiu	$a2,$a2,-1
    sd	$a2,32($sp)
    bgtz	$a2,42bf98
    nop
    li	$v0,1
    ld	$ra,0($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtReadKonaCombination
    addiu	$sp,$sp,-1104
    sd	$gp,1056($sp)
    sd	$ra,1048($sp)
    lui	$v1,0x16
    addiu	$v1,$v1,26088
    addu	$gp,$t9,$v1
    sw	$a0,1092($sp)
    sw	$a1,1100($sp)
    sw	$zero,0($sp)
    li	$v0,2
    sw	$v0,4($sp)
    lw	$at,1100($sp)
    beqz	$at,42d7b0
    nop
    lw	$a0,1100($sp)
    li	$a1,0xa2a4
    lw	$t9,-28468($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,8
    lw	$a1,1092($sp)
    lw	$t9,-32476($gp)
    bal 42bbb0
    nop
    addiu	$a0,$sp,8
    lw	$t9,-32424($gp)
    bal 432768
    nop
    sd	$v0,1064($sp)
    sw	$v0,0($sp)
    lw	$a0,0($sp)
    bnez	$a0,42d684
    nop
    li	$a1,1
    sw	$a1,4($sp)
    b	42d7b0
    nop
    lw	$a0,0($sp)
    la	$a1,_rodata
    addiu	$a1,$a1,-10232
    addiu	$a2,$sp,1032
    lw	$t9,-32432($gp)
    bal 432678
    nop
    sd	$v0,1064($sp)
    beqz	$v0,42d6e0
    nop
    lw	$a0,0($sp)
    la	$a1,_rodata
    addiu	$a1,$a1,-10216
    addiu	$a2,$sp,1034
    lw	$t9,-32432($gp)
    bal 432678
    nop
    beqz	$v0,42d6e0
    nop
    li	$a2,1
    sd	$a2,1072($sp)
    b	42d6e4
    nop
    sd	$zero,1072($sp)
    ld	$v1,1072($sp)
    sw	$v1,1036($sp)
    lw	$v0,1036($sp)
    sltiu	$v0,$v0,1
    lhu	$at,1032($sp)
    li	$ra,1
    slt	$ra,$ra,$at
    lw	$a0,0($sp)
    lw	$a1,1100($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-12592
    bal 42ced0
    nop
    sd	$v0,1064($sp)
    sw	$v0,4($sp)
    lw	$a0,4($sp)
    bnez	$a0,42d7b0
    nop
    sw	$zero,1040($sp)
    lw	$a1,1040($sp)
    slti	$a1,$a1,15
    beqz	$a1,42d7ac
    nop
    lw	$a0,0($sp)
    lw	$a1,1100($sp)
    lw	$a3,1040($sp)
    li	$a4,2736
    multu	$a3,$a4
    mflo	$a2
    addu	$a1,$a1,$a2
    addiu	$a1,$a1,596
    lw	$a2,1040($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-16400
    bal 42bff0
    nop
    sd	$v0,1064($sp)
    beqz	$v0,42d790
    nop
    li	$a5,2
    sw	$a5,4($sp)
    b	42d7b0
    nop
    lw	$a7,1040($sp)
    addiu	$a7,$a7,1
    sw	$a7,1040($sp)
    lw	$a6,1040($sp)
    slti	$a6,$a6,15
    bnez	$a6,42d740
    nop
    sw	$zero,4($sp)
    lw	$t0,0($sp)
    beqz	$t0,42d7cc
    nop
    lw	$a0,0($sp)
    lw	$t9,-32428($gp)
    bal 4326b0
    nop
    lw	$v0,4($sp)
    ld	$gp,1056($sp)
    ld	$ra,1048($sp)
    addiu	$sp,$sp,1104
    jr	$ra
    nop

glabel vfmtWriteKonaCombination
    addiu	$sp,$sp,-1248
    sd	$gp,1216($sp)
    sd	$ra,1208($sp)
    lui	$at,0x16
    addiu	$at,$at,21400
    addu	$gp,$t9,$at
    sw	$a0,1236($sp)
    sw	$a1,1244($sp)
    addiu	$a0,$sp,0
    addiu	$a1,$gp,-27080
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    li	$a2,1
    sh	$a2,16($sp)
    sh	$zero,18($sp)
    addiu	$a0,$sp,24
    la	$a1,_rodata
    addiu	$a1,$a1,-10200
    li	$a2,100
    lw	$t9,-28664($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,128
    lw	$a1,1236($sp)
    lw	$t9,-32476($gp)
    bal 42bbb0
    nop
    addiu	$a0,$sp,128
    addiu	$a1,$sp,16
    addiu	$a2,$sp,24
    lw	$t9,-32448($gp)
    bal 432190
    nop
    sd	$v0,1224($sp)
    sw	$v0,1152($sp)
    lw	$a3,1152($sp)
    bnez	$a3,42e8ec
    nop
    li	$a4,1
    sd	$a4,1200($sp)
    b	42f128
    nop
    lw	$a0,1152($sp)
    la	$a1,_rodata
    addiu	$a1,$a1,-10232
    li	$a2,7
    addiu	$a3,$sp,16
    la	$a4,xdr_u_short
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a0,1152($sp)
    la	$a1,_rodata
    addiu	$a1,$a1,-10216
    li	$a2,7
    addiu	$a3,$sp,18
    la	$a4,xdr_u_short
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    li	$a2,1
    sw	$a2,1156($sp)
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    addiu	$a3,$gp,-27072
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a3,1244($sp)
    sw	$a3,1192($sp)
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,15
    addiu	$a3,$sp,1192
    la	$a4,xdr_string
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42e9b4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10528
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,576
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ea1c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10512
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,256
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ea84
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10496
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    li	$a3,2
    lw	$a4,1244($sp)
    addiu	$a4,$a4,260
    la	$a5,xdr_int
    lw	$t9,-32460($gp)
    bal 431f84
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,42eaf0
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10480
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    li	$a3,2
    lw	$a4,1244($sp)
    addiu	$a4,$a4,588
    la	$a5,xdr_int
    lw	$t9,-32460($gp)
    bal 431f84
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,42eb5c
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10464
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,268
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ebc4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10448
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,272
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ec2c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10432
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a4,1244($sp)
    addiu	$a4,$a4,276
    sw	$a4,1192($sp)
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,15
    addiu	$a3,$sp,1192
    la	$a4,xdr_string
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,42ec9c
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10416
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,536
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ed04
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10400
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,16
    lw	$a3,1244($sp)
    addiu	$a3,$a3,540
    la	$a4,xdr_float
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ed6c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10376
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,532
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42edd4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10352
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,544
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ee3c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10336
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,16
    lw	$a3,1244($sp)
    addiu	$a3,$a3,548
    la	$a4,xdr_float
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42eea4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10312
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,580
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ef0c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    addiu	$a3,$gp,-27064
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,584
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42ef70
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10296
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,552
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42efd8
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10272
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,16
    li	$a3,3
    lw	$a4,1244($sp)
    addiu	$a4,$a4,556
    la	$a5,xdr_float
    lw	$t9,-32460($gp)
    bal 431f84
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,42f044
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	42f128
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,-27152
    addiu	$a2,$sp,0
    la	$a3,_rodata
    addiu	$a3,$a3,-10256
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,568
    la	$a4,xdr_int
    lw	$t9,-32456($gp)
    bal 431fbc
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,42f0ac
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	42f128
    nop
    sw	$zero,1196($sp)
    lw	$a6,1196($sp)
    slti	$a6,$a6,15
    beqz	$a6,42f110
    nop
    lw	$a0,1152($sp)
    lw	$a1,1244($sp)
    lw	$a3,1196($sp)
    li	$a4,2736
    multu	$a3,$a4
    mflo	$a2
    addu	$a1,$a1,$a2
    addiu	$a1,$a1,596
    lw	$a2,1196($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-10256
    bal 42d7f0
    nop
    lw	$a6,1196($sp)
    addiu	$a6,$a6,1
    sw	$a6,1196($sp)
    lw	$a5,1196($sp)
    slti	$a5,$a5,15
    bnez	$a5,42f0c0
    nop
    lw	$a0,1152($sp)
    lw	$t9,-32452($gp)
    bal 431ffc
    nop
    sd	$zero,1200($sp)
    sd	$zero,1200($sp)
    ld	$v0,1200($sp)
    ld	$gp,1216($sp)
    ld	$ra,1208($sp)
    addiu	$sp,$sp,1248
    jr	$ra
    nop

glabel vfmtReadKonaVideoFormat
    addiu	$sp,$sp,-1232
    sd	$gp,1200($sp)
    sd	$ra,1192($sp)
    lui	$v0,0x16
    addiu	$v0,$v0,8728
    addu	$gp,$t9,$v0
    sw	$a0,1220($sp)
    sw	$a1,1228($sp)
    sw	$zero,0($sp)
    li	$at,1
    sw	$at,4($sp)
    addiu	$a0,$sp,8
    lw	$a1,1220($sp)
    lw	$t9,-32480($gp)
    bal 42ba20
    nop
    sd	$v0,1208($sp)
    move	$v1,$v0
    sw	$v1,4($sp)
    beqz	$v1,431a40
    nop
    li	$a1,646
    sw	$a1,-27588($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,-9800
    lw	$a1,1220($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-3760
    bal 42f150
    nop
    b	431c88
    nop
    addiu	$a0,$sp,8
    lw	$t9,-32424($gp)
    bal 432768
    nop
    sd	$v0,1208($sp)
    sw	$v0,0($sp)
    lw	$a2,0($sp)
    bnez	$a2,431a90
    nop
    li	$a1,649
    sw	$a1,-27588($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,-9776
    addiu	$a1,$sp,8
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-3760
    bal 42f150
    nop
    b	431c88
    nop
    lw	$a0,1228($sp)
    li	$a1,2020
    lw	$t9,-28468($gp)
    jalr	$t9
    nop
    addiu	$a3,$sp,8
    sd	$a3,1208($sp)
    sw	$a3,1032($sp)
    sw	$a3,1036($sp)
    lw	$a2,1036($sp)
    lbu	$a2,0($a2)
    beqz	$a2,431afc
    nop
    lw	$a5,1036($sp)
    addiu	$a5,$a5,1
    sw	$a5,1036($sp)
    lw	$a4,1036($sp)
    lbu	$a4,-1($a4)
    li	$a5,47
    bne	$a4,$a5,431aec
    nop
    lw	$a6,1036($sp)
    sw	$a6,1032($sp)
    lw	$a7,1036($sp)
    lbu	$a7,0($a7)
    bnez	$a7,431ac4
    nop
    lw	$a0,1228($sp)
    addiu	$a0,$a0,460
    lw	$a1,1032($sp)
    li	$a2,64
    lw	$t9,-28664($gp)
    jalr	$t9
    nop
    lw	$a1,1228($sp)
    sb	$zero,523($a1)
    addiu	$a0,$sp,1040
    lw	$t9,-32472($gp)
    bal 42bf60
    nop
    sd	$v0,1208($sp)
    bnez	$v0,431b68
    nop
    li	$a1,662
    sw	$a1,-27588($gp)
    la	$a0,_rodata
    addiu	$a0,$a0,-9800
    lw	$a1,1220($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-3760
    bal 42f150
    nop
    b	431c88
    nop
    lw	$at,1116($sp)
    sd	$at,1208($sp)
    lw	$v1,1228($sp)
    sw	$at,524($v1)
    lw	$v0,1228($sp)
    sw	$at,260($v0)
    li	$ra,2
    sw	$ra,4($sp)
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-3456
    bal 42f280
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-848
    bal 42fcb0
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,528
    bal 430210
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,1408
    bal 430580
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,2240
    bal 4308c0
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,4576
    bal 4311e0
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,5328
    bal 4314d0
    nop
    sd	$v0,1208($sp)
    beqz	$v0,431c88
    nop
    sw	$zero,4($sp)
    lw	$ra,0($sp)
    beqz	$ra,431cac
    nop
    lw	$a0,0($sp)
    lw	$t9,-32428($gp)
    bal 4326b0
    nop
    sd	$zero,1208($sp)
    sw	$zero,0($sp)
    lw	$v0,4($sp)
    ld	$gp,1200($sp)
    ld	$ra,1192($sp)
    addiu	$sp,$sp,1232
    jr	$ra
    nop

