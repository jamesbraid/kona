.section .text
.set noat
.set noreorder


glabel pane_gc
    lw         $a5,0($gp)
    lw         $a4,-30712($gp)
    slt        $at,$a4,$a5
    li         $t0,8
    move       $a6,$zero
    ld         $a2,-30712($gp)
    beqz       $at, .L00000078
    move       $a1,$a4
    ld         $a7,-30720($gp)
    b          .L0000015c
    dsll       $v1,$a1,0x2
.L0000002c:
    addiu      $a1,$a1,1
    slt        $v0,$a1,$a5
    dsll       $v1,$a1,0x2
    beqz       $v0, .L00000084
    dsubu      $v1,$v1,$a1
    dsll       $v1,$v1,0x3
.L00000044:
    dsubu      $v1,$v1,$a1
    dsll       $v1,$v1,0x3
    daddu      $v1,$a2,$v1
    lh         $v1,16($v1)
    bnez       $v1, .L0000002c
    nop
    addiu      $a6,$a6,1
    daddu      $a0,$a6,$a6
    daddu      $a0,$a7,$a0
    bne        $a6, $t0, .L0000002c
    sh         $a1,-2($a0)
    b          .L0000012c
    addiu      $t9,$a5,-2
.L00000078:
    ld         $a7,-30720($gp)
    move       $a6,$zero
    ld         $a2,-30712($gp)
.L00000084:
    blez       $a4, .L00000148
    move       $a1,$zero
    li         $t0,8
    b          .L00000168
    move       $a1,$zero
.L00000098:
    addiu      $a1,$a1,1
    slt        $a3,$a1,$a4
    dsll       $t1,$a1,0x2
    beqz       $a3, .L00000128
    dsubu      $t1,$t1,$a1
    dsll       $t1,$t1,0x3
.L000000b0:
    dsubu      $t1,$t1,$a1
    dsll       $t1,$t1,0x3
    daddu      $t1,$a2,$t1
    lh         $t1,16($t1)
    beqz       $t1, .L00000114
    nop
.L000000c8:
    addiu      $a1,$a1,1
    slt        $t1,$a1,$a4
    dsll       $a3,$a1,0x2
    beqz       $t1, .L00000128
    dsubu      $a3,$a3,$a1
    dsll       $t2,$a3,0x3
    dsubu      $t2,$t2,$a1
    dsll       $t2,$t2,0x3
    daddu      $t2,$a2,$t2
    lh         $t2,16($t2)
    bnez       $t2, .L00000098
    nop
    addiu      $a6,$a6,1
    daddu      $t3,$a6,$a6
    daddu      $t3,$a7,$t3
    bne        $a6, $t0, .L00000098
    sh         $a1,-2($t3)
    b          .L00000128
    nop
.L00000114:
    addiu      $a6,$a6,1
    daddu      $t8,$a6,$a6
    daddu      $t8,$a7,$t8
    bne        $a6, $t0, .L000000c8
    sh         $a1,-2($t8)
.L00000128:
    addiu      $t9,$a5,-2
.L0000012c:
    slt        $t9,$a1,$t9
    beqz       $t9, .L0000013c
    move       $a2,$zero
.L00000138:
    addiu      $a2,$a1,1
.L0000013c:
    sw         $a2,-30712($gp)
    jr         $ra
    sh         $a6,-30716($gp)
.L00000148:
    slti       $at,$a5,3
    beqz       $at, .L00000138
    move       $a2,$zero
    b          .L0000013c
    nop
.L0000015c:
    dsubu      $v1,$v1,$a1
    b          .L00000044
    dsll       $v1,$v1,0x3
.L00000168:
    dsll       $t1,$a1,0x2
    dsubu      $t1,$t1,$a1
    b          .L000000b0
    dsll       $t1,$t1,0x3

glabel bind_pane
    daddiu     $sp,$sp,-48
    sd         $s1,32($sp)
    sd         $s2,0($sp)
    sd         $s4,24($sp)
    move       $s2,$a1
    ld         $s4,-30720($gp)
    li         $a1,25
    sd         $s3,8($sp)
    move       $s3,$a0
    sd         $ra,16($sp)
    jal        psema
    daddiu     $a0,$s4,16
    lw         $v0,0($gp)
    ld         $a1,-30712($gp)
    blez       $v0, .L00000208
    sd         $s0,40($sp)
    b          .L0000033c
    move       $s0,$zero
.L000001c0:
    addiu      $s0,$s0,1
.L000001c4:
    slt        $at,$s0,$v0
    dsll       $s1,$s0,0x2
    beqz       $at, .L00000208
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
.L000001d8:
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    daddu      $s1,$a1,$s1
    lw         $v1,4($s1)
    bne        $v1, $s2, .L000001c0
    nop
    ld         $t9,88($s1)
    ld         $t8,40($s3)
    bnel       $t8, $t9, .L000001c4
    addiu      $s0,$s0,1
    b          .L00000274
    lh         $v0,-30716($gp)
.L00000208:
    lh         $v0,-30716($gp)
    beqz       $v0, .L00000328
    ld         $a1,-30712($gp)
.L00000214:
    addiu      $v0,$v0,-1
    dsll32     $v0,$v0,0x10
    dsra32     $v0,$v0,0x10
    daddu      $s0,$v0,$v0
    daddu      $s0,$s4,$s0
    lh         $s0,0($s0)
    dsll       $s1,$s0,0x2
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    sh         $v0,-30716($gp)
    daddu      $s1,$a1,$s1
    lh         $v1,0($s1)
    sh         $s0,2($s1)
    addiu      $v1,$v1,1
    sh         $v1,0($s1)
    ld         $ra,40($s3)
    sh         $zero,18($s1)
    sh         $zero,12($s1)
    li         $at,1
    sw         $at,8($s1)
    sw         $s2,4($s1)
    sd         $ra,88($s1)
.L00000274:
    move       $s2,$zero
    blez       $v0, .L000002d8
    ld         $s3,8($sp)
    b          .L000002b8
    daddu      $a1,$s2,$s2
.L00000288:
    dsll32     $a3,$a3,0x10
    dsra32     $a3,$a3,0x10
    daddiu     $a0,$a1,2
    subu       $a2,$a3,$s2
    sh         $a3,-30716($gp)
    jal        bcopy
    addu       $a2,$a2,$a2
    lh         $v0,-30716($gp)
    addiu      $s2,$s2,1
    slt        $a4,$s2,$v0
    beqz       $a4, .L000002d8
    daddu      $a1,$s2,$s2
.L000002b8:
    daddu      $a1,$s4,$a1
    lh         $a5,0($a1)
    beq        $a5, $s0, .L00000288
    addiu      $a3,$v0,-1
    addiu      $s2,$s2,1
    slt        $a2,$s2,$v0
    bnez       $a2, .L000002b8
    daddu      $a1,$s2,$s2
.L000002d8:
    lh         $a1,16($s1)
    beqz       $a1, .L0000031c
    lh         $v0,12($s1)
.L000002e4:
    ld         $s2,0($sp)
    ld         $s0,40($sp)
    daddiu     $a0,$s4,16
    addiu      $a4,$a1,1
    sh         $a4,16($s1)
    ori        $a3,$v0,0x80
    jal        vsema
    sh         $a3,12($s1)
    ld         $ra,16($sp)
    ld         $s4,24($sp)
    move       $v0,$s1
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000031c:
    ori        $v0,$v0,0x4
    b          .L000002e4
    sh         $v0,12($s1)
.L00000328:
    jal        pane_gc
    nop
    ld         $a1,-30712($gp)
    b          .L00000214
    lh         $v0,-30716($gp)
.L0000033c:
    dsll       $s1,$s0,0x2
    dsubu      $s1,$s1,$s0
    b          .L000001d8
    dsll       $s1,$s1,0x3

glabel unbind_pane
    daddiu     $sp,$sp,-16
    sd         $s3,8($sp)
    move       $s3,$a0
    ld         $a0,-30720($gp)
    li         $a1,25
    sd         $ra,0($sp)
    jal        psema
    daddiu     $a0,$a0,16
    ld         $a0,-30720($gp)
    lh         $a1,16($s3)
    daddiu     $a0,$a0,16
    addiu      $a1,$a1,-1
    jal        vsema
    sh         $a1,16($s3)
    ld         $ra,0($sp)
    ld         $s3,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel clip2pane
    lw         $a5,0($gp)
    move       $a4,$zero
    blez       $a5, .L000003ec
    ld         $a6,-30712($gp)
    b          .L000003f8
    ld         $a7,40($a1)
.L000003ac:
    slt        $at,$a4,$a5
.L000003b0:
    dsll       $v0,$a4,0x2
    beqz       $at, .L000003ec
    dsubu      $v0,$v0,$a4
    dsll       $v0,$v0,0x3
.L000003c0:
    dsubu      $v0,$v0,$a4
    dsll       $v0,$v0,0x3
    daddu      $v0,$a6,$v0
    lw         $v1,4($v0)
    bne        $v1, $a0, .L000003ac
    addiu      $a4,$a4,1
    ld         $v1,88($v0)
    bne        $v1, $a7, .L000003b0
    slt        $at,$a4,$a5
    b          .L000003f0
    nop
.L000003ec:
    move       $v0,$zero
.L000003f0:
    jr         $ra
    nop
.L000003f8:
    dsll       $v0,$a4,0x2
    dsubu      $v0,$v0,$a4
    b          .L000003c0
    dsll       $v0,$v0,0x3

glabel pane_cleanup
    daddiu     $sp,$sp,-48
    sd         $a1,8($sp)
    sd         $ra,16($sp)
    jal        clip2pane
    sd         $s0,32($sp)
    beqz       $v0, .L0000049c
    move       $s0,$v0
    ld         $a0,-30720($gp)
    li         $a1,25
    jal        psema
    daddiu     $a0,$a0,16
    daddiu     $a0,$s0,80
    jal        mutex_spinlock
    sd         $a0,0($sp)
    sd         $v0,24($sp)
    lh         $a2,14($s0)
    lh         $a1,12($s0)
    sw         $zero,4($s0)
    li         $a3,-75
    and        $a1,$a1,$a3
    beqz       $a2, .L00000478
    sh         $a1,12($s0)
    sd         $zero,56($s0)
    daddiu     $a0,$s0,40
    jal        vsema
    sh         $zero,14($s0)
    jal        sv_signal
    daddiu     $a0,$s0,64
.L00000478:
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    ld         $a1,24($sp)
    ld         $a4,160($s0)
    bnez       $a4, .L000004ac
    ld         $a0,8($sp)
    ld         $a0,-30720($gp)
.L00000494:
    jal        vsema
    daddiu     $a0,$a0,16
.L0000049c:
    ld         $ra,16($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000004ac:
    jal        rrmSwapUnGroup
    move       $a1,$s0
    b          .L00000494
    ld         $a0,-30720($gp)

glabel pane_setnullclip
    ld         $at,32($a1)
    ld         $at,88($at)
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jalr       $at
    daddiu     $a0,$a0,96
    lw         $v0,8($s8)
    lh         $v1,12($s8)
    ld         $ra,0($sp)
    ori        $v1,$v1,0xca
    sh         $v1,12($s8)
    addiu      $v0,$v0,1
    sw         $v0,8($s8)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel pane_validmask
    jr         $ra
    lh         $v0,12($a0)

glabel invalidate_pane
    daddiu     $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    move       $a0,$a1
    move       $a1,$a2
    jal        clip2pane
    sd         $s1,32($sp)
    andi       $at,$s0,0x2
    move       $s2,$zero
    beqz       $at, .L00000564
    move       $s1,$v0
    bnez       $v0, .L00000568
    ori        $s0,$s0,0x40
.L00000548:
    ld         $ra,16($sp)
.L0000054c:
    ld         $s0,8($sp)
    ld         $s1,32($sp)
    move       $v0,$s2
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000564:
    beqz       $v0, .L00000548
.L00000568:
    daddiu     $a0,$s1,80
    jal        mutex_spinlock
    sd         $a0,0($sp)
    lh         $s2,12($s1)
    ld         $a0,0($sp)
    move       $a1,$v0
    nor        $v0,$s0,$zero
    and        $v0,$s2,$v0
    jal        mutex_spinunlock
    sh         $v0,12($s1)
    b          .L0000054c
    ld         $ra,16($sp)

glabel invalidate_pane_buffer
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    move       $a0,$a1
    move       $a1,$a2
    jal        clip2pane
    sd         $s1,24($sp)
    andi       $at,$s0,0x2
    beqz       $at, .L000005c8
    move       $s1,$v0
    ori        $s0,$s0,0x40
.L000005c8:
    bnez       $s1, .L000005e8
    daddiu     $a0,$s1,80
    ld         $ra,16($sp)
.L000005d4:
    move       $v0,$zero
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000005e8:
    jal        mutex_spinlock
    sd         $a0,0($sp)
    move       $a1,$v0
    lh         $v0,12($s1)
    ld         $a0,0($sp)
    nor        $v1,$s0,$zero
    and        $v0,$v0,$v1
    jal        mutex_spinunlock
    sh         $v0,12($s1)
    b          .L000005d4
    ld         $ra,16($sp)

glabel validate_pane_clip
    daddiu     $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s1,8($sp)
    move       $s1,$a2
    jal        clip2pane
    sd         $s0,32($sp)
    move       $s0,$v0
    beqz       $v0, .L00000750
    sd         $s2,24($sp)
    ld         $a1,128($v0)
    beqz       $a1, .L00000794
    nop
.L00000644:
    ld         $a0,32($s1)
    beqz       $a0, .L0000067c
    li         $v0,14
    lw         $s2,24($s1)
    sll        $s2,$s2,0x4
    sltiu      $at,$s2,225
    bnez       $at, .L00000670
    nop
    sw         $v0,24($s1)
    li         $s2,224
    ld         $a1,128($s0)
.L00000670:
    jal        copyin
    move       $a2,$s2
    bnez       $v0, .L000007bc
.L0000067c:
    daddiu     $a0,$s0,80
    jal        mutex_spinlock
    sd         $a0,0($sp)
    lh         $t8,12($s0)
    andi       $t8,$t8,0x8
    move       $s2,$v0
    lw         $a2,56($s1)
    beqz       $t8, .L00000778
    li         $a1,-3
    lh         $t9,18($s0)
    beqz       $t9, .L0000076c
    li         $a6,-5
    ori        $a2,$a2,0x4
    sw         $a2,56($s1)
.L000006b4:
    sw         $a2,32($s0)
.L000006b8:
    daddiu     $a7,$s0,96
    ld         $ra,128($s0)
    move       $a6,$zero
    li         $a3,8
    sd         $ra,32($s1)
.L000006cc:
    addiu      $a3,$a3,-1
    daddu      $at,$a6,$s1
    daddu      $v0,$a6,$a7
    ld         $at,0($at)
    addiu      $a6,$a6,8
    bgtz       $a3, .L000006cc
    sd         $at,0($v0)
    lh         $v0,12($s0)
    lw         $v1,8($s0)
    andi       $a0,$v0,0x2
    ori        $a4,$v0,0x42
    addiu      $v1,$v1,1
    beqz       $a0, .L00000718
    sw         $v1,8($s0)
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L00000754
    move       $v0,$zero
.L00000718:
    lh         $a2,14($s0)
    andi       $a3,$a2,0x2
    sh         $a4,12($s0)
    and        $a2,$a2,$a1
    beqz       $a3, .L00000744
    dsll32     $a2,$a2,0x10
    dsra32     $a5,$a2,0x10
    beqz       $a5, .L000007a8
    sh         $a5,14($s0)
.L0000073c:
    jal        sv_signal
    daddiu     $a0,$s0,64
.L00000744:
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    move       $a1,$s2
.L00000750:
    move       $v0,$zero
.L00000754:
    ld         $ra,16($sp)
    ld         $s0,32($sp)
    ld         $s2,24($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000076c:
    and        $a2,$a2,$a6
    b          .L000006b4
    sw         $a2,56($s1)
.L00000778:
    sw         $a2,32($s0)
    lw         $a7,56($s1)
    andi       $a7,$a7,0x4
    xori       $a7,$a7,0x4
    sltiu      $a7,$a7,1
    b          .L000006b8
    sh         $a7,18($s0)
.L00000794:
    jal        kern_malloc
    li         $a0,224
    move       $a1,$v0
    b          .L00000644
    sd         $v0,128($s0)
.L000007a8:
    daddiu     $a0,$s0,40
    jal        vsema
    sd         $zero,56($s0)
    b          .L0000073c
    nop
.L000007bc:
    li         $a0,4
    move       $a2,$s0
    ld         $a1,-30704($gp)
    jal        cmn_err
    move       $a3,$s2
    b          .L00000754
    li         $v0,14

glabel validate_pane_swapbuf
    daddiu     $sp,$sp,-48
    sd         $a2,16($sp)
    sd         $ra,24($sp)
    jal        clip2pane
    sd         $s0,32($sp)
    beqz       $v0, .L00000850
    move       $s0,$v0
    daddiu     $a0,$v0,80
    jal        mutex_spinlock
    sd         $a0,0($sp)
    sd         $v0,8($sp)
    lh         $a5,14($s0)
    lh         $t0,12($s0)
    ld         $t1,16($sp)
    andi       $a6,$a5,0x8
    sw         $t1,20($s0)
    li         $a7,-9
    ori        $t0,$t0,0x8
    sh         $t0,12($s0)
    and        $a5,$a5,$a7
    beqz       $a6, .L00000844
    dsll32     $a5,$a5,0x10
    dsra32     $t2,$a5,0x10
    beqz       $t2, .L00000864
    sh         $t2,14($s0)
.L0000083c:
    jal        sv_signal
    daddiu     $a0,$s0,64
.L00000844:
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    ld         $a1,8($sp)
.L00000850:
    ld         $ra,24($sp)
    move       $v0,$zero
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000864:
    daddiu     $a0,$s0,40
    jal        vsema
    sd         $zero,56($s0)
    b          .L0000083c
    nop

glabel validate_pane_buffer
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,80
    jal        mutex_spinlock
    sd         $a0,24($sp)
    lh         $at,12($s8)
    sd         $v0,16($sp)
    daddiu     $a0,$s8,72
    ori        $at,$at,0x4
    jal        sv_broadcast
    sh         $at,12($s8)
    ld         $s8,8($sp)
    ld         $a0,24($sp)
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel validate_my_pane_buffer
    daddiu     $sp,$sp,-48
    sd         $s2,40($sp)
    sd         $s5,32($sp)
    move       $s5,$a2
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s1,24($sp)
    daddiu     $s1,$a0,80
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $a0,$s1
    lh         $at,12($s0)
    xor        $at,$at,$s5
    and        $at,$s5,$at
    andi       $at,$at,0x4
    beqz       $at, .L00000968
    move       $s2,$v0
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    daddiu     $a0,$s0,72
    li         $a1,542
    move       $a2,$s1
    jal        sv_wait_sig
    move       $a3,$s2
    bltz       $v0, .L00000958
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    move       $v0,$zero
.L0000093c:
    ld         $s2,40($sp)
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    ld         $s5,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000958:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    b          .L0000093c
    li         $v0,-1
.L00000968:
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L0000093c
    move       $v0,$zero

glabel validate_my_pane_resources
    daddiu     $sp,$sp,-144
    sd         $s5,128($sp)
    sd         $ra,120($sp)
    sd         $s3,112($sp)
    sd         $s1,80($sp)
    sd         $s0,88($sp)
    andi       $at,$a2,0x8e
    move       $s0,$a0
    move       $s1,$a1
    sd         $s4,96($sp)
    move       $s4,$a2
    beqz       $at, .L00000b34
    sd         $s2,104($sp)
    jal        validate_my_pane_buffer
    nop
    bltz       $v0, .L00000bbc
    daddiu     $s2,$s0,80
    jal        mutex_spinlock
    move       $a0,$s2
    move       $s3,$v0
    lh         $v0,12($s0)
    ori        $v0,$v0,0x80
    xor        $s5,$v0,$s4
    and        $s5,$s4,$s5
    andi       $s5,$s5,0xa
    beqz       $s5, .L00000d24
    sh         $v0,12($s0)
    ld         $v1,56($s0)
    beq        $v1, $s1, .L00000c74
    move       $a0,$s2
    lw         $a0,4($s0)
    bnez       $a0, .L00000a48
    daddiu     $a0,$s0,40
    ld         $a1,8($s1)
    ld         $a1,8($a1)
    beq        $a1, $s1, .L00000a44
    andi       $a2,$s4,0x2
    beqz       $a2, .L00000a48
    daddiu     $a0,$s0,40
    lw         $a3,4($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00000cd4
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    move       $v0,$zero
.L00000a44:
    daddiu     $a0,$s0,40
.L00000a48:
    jal        cpsema
    sd         $a0,72($sp)
    beqz       $v0, .L00000bcc
    move       $a0,$s2
.L00000a58:
    sh         $s5,14($s0)
    move       $a0,$s2
    sd         $s1,56($s0)
    jal        mutex_spinunlock
    move       $a1,$s3
    ld         $a4,8($s1)
    ld         $a4,8($a4)
    beqz       $a4, .L00000bc4
    li         $v0,2
    andi       $a6,$s5,0x8
    andi       $a5,$s5,0x2
    movz       $v0,$zero,$a6
    beqz       $a5, .L00000a98
    sb         $v0,16($sp)
    ori        $a7,$v0,0x1
    sb         $a7,16($sp)
.L00000a98:
    ld         $t2,8($s1)
    sd         $t2,8($sp)
    li         $t1,1
    sw         $t1,20($sp)
    lw         $t0,4($s0)
    daddiu     $a0,$sp,8
    jal        GfxMessage
    sw         $t0,24($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    lh         $t3,14($s0)
    andi       $t3,$t3,0xa
    beqz       $t3, .L00000ba8
    move       $s3,$v0
    ld         $t8,56($s0)
    bne        $t8, $s1, .L00000ba8
    daddiu     $s5,$s0,64
    andi       $t9,$s4,0x2
    sd         $t9,64($sp)
.L00000ae4:
    lw         $ra,4($s0)
    bnez       $ra, .L00000b5c
    ld         $v0,64($sp)
    ld         $at,8($s1)
    ld         $at,8($at)
    beq        $at, $s1, .L00000b5c
    nop
    beqz       $v0, .L00000b5c
    nop
    lw         $v1,4($s1)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00000c84
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    move       $v0,$zero
.L00000b34:
    move       $v0,$zero
.L00000b38:
    ld         $s5,128($sp)
    ld         $s3,112($sp)
    ld         $s2,104($sp)
    ld         $ra,120($sp)
    ld         $s0,88($sp)
    ld         $s1,80($sp)
    ld         $s4,96($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00000b5c:
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    move       $a0,$s5
    li         $a1,542
    move       $a2,$s2
    jal        sv_wait_sig
    move       $a3,$s3
    bltz       $v0, .L00000d38
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    jal        mutex_spinlock
    move       $a0,$s2
    lh         $a0,14($s0)
    andi       $a0,$a0,0xa
    beqz       $a0, .L00000ba8
    move       $s3,$v0
    ld         $a1,56($s0)
    beq        $a1, $s1, .L00000ae4
.L00000ba8:
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    move       $v0,$zero
.L00000bbc:
    b          .L00000b38
    li         $v0,-1
.L00000bc4:
    b          .L00000b38
    li         $v0,-2
.L00000bcc:
    jal        mutex_spinunlock
    move       $a1,$s3
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $a0,72($sp)
    jal        psema
    li         $a1,798
    bltz       $v0, .L00000d48
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    jal        mutex_spinlock
    move       $a0,$s2
    lh         $s5,12($s0)
    xor        $s5,$s5,$s4
    and        $s5,$s4,$s5
    andi       $s5,$s5,0xa
    move       $s3,$v0
    beqz       $s5, .L00000da8
    andi       $a1,$s4,0x2
    lw         $t8,4($s0)
    bnez       $t8, .L00000a58
    nop
    ld         $t9,8($s1)
    ld         $t9,8($t9)
    beq        $t9, $s1, .L00000a58
    nop
    beqz       $a1, .L00000a58
    nop
    jal        vsema
    ld         $a0,72($sp)
    lw         $ra,4($s1)
    andi       $ra,$ra,0x8
    beqz       $ra, .L00000d58
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    move       $v0,$zero
.L00000c74:
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    li         $v0,-1
.L00000c84:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    ld         $a2,-30704($gp)
    li         $a1,4
    li         $a0,2131
    jal        cmn_err_tag
    daddiu     $a2,$a2,192
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    li         $v0,-1
.L00000cd4:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    ld         $a2,-30704($gp)
    li         $a0,2129
    li         $a1,4
    jal        cmn_err_tag
    daddiu     $a2,$a2,48
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    li         $v0,-1
.L00000d24:
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    move       $v0,$zero
.L00000d38:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    b          .L00000b38
    li         $v0,-1
.L00000d48:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    b          .L00000b38
    li         $v0,-1
.L00000d58:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    ld         $a2,-30704($gp)
    li         $a1,4
    li         $a0,2130
    jal        cmn_err_tag
    daddiu     $a2,$a2,120
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    li         $v0,-1
.L00000da8:
    jal        vsema
    ld         $a0,72($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000b38
    move       $v0,$zero

glabel init_panes
    ld         $a0,-30720($gp)
    daddiu     $sp,$sp,-48
    sd         $s3,8($sp)
    li         $a1,1
    ld         $s3,-30704($gp)
    li         $a3,-1
    sd         $s2,16($sp)
    daddiu     $a0,$a0,16
    sd         $ra,0($sp)
    jal        init_sema
    daddiu     $a2,$s3,264
    lw         $a1,0($gp)
    ld         $s2,-30712($gp)
    sd         $s1,24($sp)
    move       $s1,$zero
    blez       $a1, .L00000e88
    sd         $s0,32($sp)
    dsll       $s0,$s1,0x2
.L00000e0c:
    dsubu      $s0,$s0,$s1
    dsll       $s0,$s0,0x3
    li         $a3,-1
    ld         $a2,-30704($gp)
    dsubu      $s0,$s0,$s1
    li         $a1,1
    dsll       $s0,$s0,0x3
    daddiu     $a2,$a2,296
    daddu      $s0,$s2,$s0
    jal        init_sema
    daddiu     $a0,$s0,40
    li         $a3,-1
    ld         $a2,-30704($gp)
    move       $a1,$zero
    daddiu     $a0,$s0,64
    jal        init_sv
    daddiu     $a2,$a2,304
    li         $a3,-1
    daddiu     $a2,$s3,280
    move       $a1,$zero
    jal        init_sv
    daddiu     $a0,$s0,72
    ld         $a1,-30704($gp)
    daddiu     $a0,$s0,80
    jal        spinlock_init
    daddiu     $a1,$a1,312
    lw         $a2,0($gp)
    addiu      $s1,$s1,1
    slt        $a2,$s1,$a2
    bnez       $a2, .L00000e0c
    dsll       $s0,$s1,0x2
.L00000e88:
    ld         $s2,16($sp)
    ld         $ra,0($sp)
    ld         $s3,8($sp)
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_init_panes
    daddiu     $sp,$sp,-48
    sd         $s1,0($sp)
    sd         $ra,16($sp)
    sd         $s3,24($sp)
    lw         $a1,0($gp)
    sd         $s2,32($sp)
    move       $s2,$a0
    sd         $s0,8($sp)
    move       $s0,$zero
    blez       $a1, .L00000f60
    ld         $s3,-30712($gp)
    b          .L00000ef4
    dsll       $s1,$s0,0x2
.L00000ed8:
    ld         $at,160($s1)
    bnez       $at, .L00000f44
    move       $a0,$s2
.L00000ee4:
    addiu      $s0,$s0,1
    slt        $v0,$s0,$a1
    beqz       $v0, .L00000f60
    dsll       $s1,$s0,0x2
.L00000ef4:
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    dsubu      $s1,$s1,$s0
    dsll       $s1,$s1,0x3
    ld         $v1,40($s2)
    daddu      $s1,$s3,$s1
    ld         $a0,88($s1)
    bne        $v1, $a0, .L00000ee4
    nop
    lh         $t8,14($s1)
    beqz       $t8, .L00000ed8
    sh         $zero,12($s1)
    sd         $zero,56($s1)
    daddiu     $a0,$s1,40
    jal        vsema
    sh         $zero,14($s1)
    ld         $t9,160($s1)
    beqz       $t9, .L00000f50
    lw         $a1,0($gp)
    move       $a0,$s2
.L00000f44:
    jal        rrmSwapUnGroup
    move       $a1,$s1
    lw         $a1,0($gp)
.L00000f50:
    addiu      $s0,$s0,1
    slt        $ra,$s0,$a1
    bnez       $ra, .L00000ef4
    dsll       $s1,$s0,0x2
.L00000f60:
    ld         $s0,8($sp)
    ld         $ra,16($sp)
    ld         $s1,0($sp)
    ld         $s2,32($sp)
    ld         $s3,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_init
    daddiu     $sp,$sp,-48
    sd         $s2,0($sp)
    ld         $s2,-30704($gp)
    sd         $s3,8($sp)
    ld         $s3,-30696($gp)
    sd         $s4,16($sp)
    lw         $a1,0($gp)
    ld         $s4,-30688($gp)
    sd         $ra,32($sp)
    slti       $at,$a1,2
    sd         $s1,24($sp)
    li         $s1,1
    bnez       $at, .L00001000
    sd         $s0,40($sp)
    move       $s0,$s1
    dsll       $v0,$s0,0x2
.L00000fbc:
    dsubu      $v0,$v0,$s0
    li         $a3,-1
    dsll       $v0,$v0,0x2
    daddiu     $a2,$s2,320
    dsubu      $v0,$v0,$s0
    li         $a1,1
    dsll       $v0,$v0,0x4
    dsll       $a0,$s0,0x4
    daddu      $v0,$s4,$v0
    daddu      $a0,$s3,$a0
    jal        init_sema
    sb         $s1,82($v0)
    lw         $a1,0($gp)
    addiu      $s0,$s0,1
    slt        $v1,$s0,$a1
    bnez       $v1, .L00000fbc
    dsll       $v0,$s0,0x2
.L00001000:
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $s4,16($sp)
    ld         $s0,40($sp)
    ld         $s1,24($sp)
    jal        init_panes
    sw         $a1,0($gp)
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_Init
    daddiu     $sp,$sp,-16
    ld         $a1,-30704($gp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,48
    sd         $ra,0($sp)
    jal        spinlock_init
    daddiu     $a1,$a1,336
    li         $a3,-1
    ld         $a2,-30704($gp)
    li         $a1,1
    daddiu     $a0,$s8,56
    jal        init_sema
    daddiu     $a2,$a2,352
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel rrmDoUnMapGfx
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s8,16($sp)
    move       $s8,$v0
    lw         $v0,4($s0)
    ld         $at,32($s0)
    ori        $v0,$v0,0x10
    sw         $v0,4($s0)
    ld         $at,104($at)
    jalr       $at
    move       $a0,$s0
    lw         $v1,4($s0)
    li         $a0,-17
    and        $v1,$v1,$a0
    sw         $v1,4($s0)
    jal        splx
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel rrmUnMapGfx
    ld         $at,96($a0)
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    move       $s0,$a0
    beqz       $at, .L00001150
    sd         $ra,24($sp)
    lw         $v0,4($a0)
    andi       $v0,$v0,0x8
    bnez       $v0, .L00001150
    nop
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L0000115c
    ld         $ra,24($sp)
    ld         $a1,16($v0)
    beqz       $a1, .L00001158
    sd         $v0,8($sp)
    jal        mutex_spinlock
    daddiu     $a0,$a1,16
    sd         $v0,0($sp)
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    ld         $a0,8($sp)
    ld         $a0,16($a0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$a0,16
    b          .L0000115c
    ld         $ra,24($sp)
.L00001150:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
.L00001158:
    ld         $ra,24($sp)
.L0000115c:
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel rrmInvalidateRN
    daddiu     $sp,$sp,-48
    ld         $v0,40($a0)
    sd         $s1,8($sp)
    ld         $at,72($v0)
    sd         $s0,0($sp)
    move       $s0,$a0
    move       $s1,$a1
    sd         $s8,16($sp)
    move       $s8,$a2
    beq        $at, $a0, .L000011d0
    sd         $ra,40($sp)
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $v1,40($s0)
    sd         $s0,72($v1)
    ld         $v0,40($s0)
    lw         $v0,104($v0)
    beqz       $v0, .L000011d0
    nop
.L000011b8:
    jal        us_delay
    li         $a0,2
    ld         $a0,40($s0)
    lw         $a0,104($a0)
    bnez       $a0, .L000011b8
    nop
.L000011d0:
    ld         $s0,0($sp)
    daddiu     $a0,$s1,104
    jal        mutex_spinlock
    sd         $a0,32($sp)
    lhu        $a4,6($s1)
    li         $a2,-2
    and        $a3,$a4,$s8
    ld         $a0,32($sp)
    nor        $a5,$s8,$zero
    xor        $a3,$s8,$a3
    and        $a4,$a4,$a5
    sh         $a4,6($s1)
    movz       $a2,$zero,$a3
    move       $a1,$v0
    jal        mutex_spinunlock
    sd         $a2,24($sp)
    ld         $ra,40($sp)
    ld         $s1,8($sp)
    ld         $s8,16($sp)
    ld         $v0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel RRM_InvalidateRN
    lw         $v0,8($a2)
    daddiu     $sp,$sp,-64
    li         $a6,255
    sd         $s0,24($sp)
    or         $at,$a6,$v0
    move       $a1,$a3
    move       $s0,$a0
    sd         $s1,32($sp)
    move       $s1,$a2
    beq        $a6, $at, .L0000126c
    sd         $ra,48($sp)
    li         $v0,22
.L00001258:
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000126c:
    li         $v1,-203
    and        $v1,$v0,$v1
    beqz       $v1, .L00001284
    sd         $a3,16($sp)
    b          .L00001258
    li         $v0,22
.L00001284:
    move       $a0,$v0
    lw         $a1,4($a2)
    jal        invalidate_pane
    move       $a2,$s0
    lw         $a0,8($s1)
    andi       $a0,$a0,0x8
    move       $a6,$v0
    beqz       $a0, .L00001334
    sd         $v0,40($sp)
    lw         $a0,4($s1)
    jal        clip2pane
    move       $a1,$s0
    beqz       $v0, .L00001358
    nop
    ld         $a1,72($s0)
    beqz       $a1, .L000013a4
    li         $a3,255
    lw         $a2,20($v0)
    and        $a4,$a2,$a3
    beq        $a3, $a4, .L00001324
    sd         $v0,8($sp)
    ld         $a5,32($s0)
    ld         $a5,144($a5)
    jalr       $a5
    move       $a0,$s0
    bltz       $v0, .L000013ac
    move       $a2,$v0
    blez       $v0, .L00001324
    li         $a6,2
    bne        $v0, $a6, .L00001314
    ld         $a0,8($sp)
    ld         $a7,72($s0)
    bnez       $a7, .L00001368
    sd         $a7,0($sp)
    b          .L00001258
    li         $v0,14
.L00001314:
    jal        validate_pane_buffer
    move       $a1,$s0
    li         $t0,1
    sw         $t0,16($s1)
.L00001324:
    ld         $t1,8($sp)
.L00001328:
    ld         $a6,40($sp)
    lw         $t1,32($t1)
    sw         $t1,12($s1)
.L00001334:
    li         $a2,20
    ld         $a1,16($sp)
    move       $a0,$s1
    jal        copyout
    sw         $a6,8($s1)
    beqz       $v0, .L00001360
    nop
    b          .L00001258
    li         $v0,14
.L00001358:
    b          .L00001258
    li         $v0,22
.L00001360:
    b          .L00001258
    move       $v0,$zero
.L00001368:
    move       $a0,$s0
    move       $a1,$a7
    jal        rrmInvalidateRN
    li         $a2,16
    bnez       $v0, .L00001328
    ld         $t1,8($sp)
    ld         $t2,32($s0)
    ld         $t2,152($t2)
    ld         $a1,0($sp)
    jalr       $t2
    ld         $a0,40($s0)
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00001328
    ld         $t1,8($sp)
.L000013a4:
    b          .L00001258
    li         $v0,14
.L000013ac:
    b          .L00001258
    negu       $v0,$v0

glabel rrmUnbindProcFromRN
    daddiu     $sp,$sp,-32
    ld         $at,72($a0)
    sd         $s1,16($sp)
    li         $v0,-1
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $at, .L0000141c
    sd         $ra,24($sp)
    ld         $v0,96($a0)
    move       $s1,$zero
    beqz       $v0, .L000013f4
    nop
    lw         $v1,4($a0)
    andi       $v1,$v1,0x8
    beqz       $v1, .L00001430
    move       $s1,$zero
.L000013f4:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    beqz       $s1, .L00001418
    sd         $zero,72($s0)
    ld         $a0,16($s1)
    beqz       $a0, .L0000141c
    move       $v0,$zero
    jal        GfxListWriterUnlock
    lw         $a1,0($sp)
.L00001418:
    move       $v0,$zero
.L0000141c:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001430:
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L000013f4
    move       $s1,$v0
    ld         $a0,16($v0)
    beqz       $a0, .L000013f4
    nop
    jal        GfxListWriterLock
    nop
    b          .L000013f4
    sw         $v0,0($sp)

glabel RRM_BindProcToRN
    daddiu     $sp,$sp,-48
    lw         $at,4($a0)
    sd         $ra,24($sp)
    sd         $s0,8($sp)
    andi       $at,$at,0x8
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a1
    beqz       $at, .L00001544
    sd         $s2,32($sp)
    ld         $s2,72($a0)
    beqz       $s2, .L000014a0
    nop
    bne        $a1, $s2, .L000014f0
    nop
.L000014a0:
    beqz       $s1, .L000014b4
    nop
    sd         $s0,64($s1)
    li         $v0,1
    sb         $v0,84($s1)
.L000014b4:
    ld         $a0,40($s0)
.L000014b8:
    sd         $s1,72($s0)
    jal        valusema
    daddiu     $a0,$a0,56
    beqz       $v0, .L000014d8
    ld         $ra,24($sp)
    jal        force_resched
    nop
    ld         $ra,24($sp)
.L000014d8:
    ld         $s0,8($sp)
    move       $v0,$zero
    ld         $s1,16($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000014f0:
    lh         $a2,2($s2)
    ld         $a0,-30696($gp)
    li         $a1,25
    dsll       $a2,$a2,0x4
    daddu      $a0,$a0,$a2
    jal        psema
    sd         $a0,0($sp)
    ld         $a3,56($s2)
    bnez       $a3, .L0000152c
    sb         $zero,84($s2)
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s2
    b          .L00001534
    nop
.L0000152c:
    jal        rrmUnbindProcFromRN
    move       $a0,$s0
.L00001534:
    jal        vsema
    ld         $a0,0($sp)
    b          .L000014a0
    nop
.L00001544:
    jal        rrmUnbindProcFromRN
    nop
    b          .L000014b8
    ld         $a0,40($s0)

glabel RRM_BindRNToReadAndClip
    daddiu     $sp,$sp,-112
    sd         $s3,88($sp)
    sd         $s2,56($sp)
    sd         $s1,80($sp)
    lw         $a6,4($a2)
    li         $v0,22
    move       $s1,$a0
    sd         $s0,72($sp)
    move       $s0,$a1
    move       $s2,$a2
    sd         $s4,64($sp)
    move       $s4,$a3
    beqz       $a6, .L0000174c
    sd         $ra,96($sp)
    ld         $a0,120($a1)
    beqz       $a0, .L000015e8
    move       $a1,$s1
    jal        validate_my_pane_buffer
    lhu        $a2,4($s0)
    ld         $a0,120($s0)
    jal        unbind_pane
    move       $a1,$s1
    lhu        $a2,4($s0)
    andi       $at,$a2,0x40
    beqz       $at, .L000015dc
    li         $v0,-9
    ld         $a0,128($s0)
    jal        validate_my_pane_buffer
    move       $a1,$s1
    ld         $a0,128($s0)
    jal        unbind_pane
    move       $a1,$s1
    lhu        $a2,4($s0)
    li         $v0,-9
.L000015dc:
    and        $v0,$a2,$v0
    sh         $v0,4($s0)
    lw         $a6,4($s2)
.L000015e8:
    move       $a0,$s1
    jal        bind_pane
    move       $a1,$a6
    sw         $zero,136($s0)
    sd         $v0,120($s0)
    lw         $a1,8($s2)
    lw         $v1,4($s2)
    bne        $v1, $a1, .L0000179c
    move       $a0,$v0
    sw         $zero,140($s0)
    lhu        $a2,4($s0)
    sd         $v0,128($s0)
    li         $a3,-65
    move       $a1,$v0
    and        $a2,$a2,$a3
    sh         $a2,4($s0)
.L00001628:
    lh         $a4,12($a0)
    andi       $a4,$a4,0x2
    beqz       $a4, .L00001824
    move       $s3,$zero
    lh         $a5,12($a1)
    andi       $a5,$a5,0x40
    beqz       $a5, .L00001824
    move       $s3,$zero
    ld         $a6,40($s1)
    ld         $a6,8($a6)
    beq        $a6, $s0, .L000017c4
    li         $s3,1
.L00001658:
    ld         $a0,8($s1)
.L0000165c:
    ld         $a7,8($a0)
    beqz       $a7, .L00001794
    li         $v0,14
    sd         $a0,0($sp)
    lw         $t3,4($s1)
    li         $t1,3
    li         $t8,4
    sw         $t1,12($sp)
    li         $t2,132
    andi       $t3,$t3,0x8
    movz       $t2,$t8,$t3
    sb         $t2,8($sp)
    lw         $a1,8($s2)
    lw         $t0,4($s2)
    beq        $t0, $a1, .L000016e8
    nop
    sw         $a1,16($sp)
    lw         $t9,0($s2)
    sw         $t9,20($sp)
    lw         $t8,24($s0)
    beqz       $s3, .L0000183c
    sw         $t8,24($sp)
    lw         $v1,8($s2)
.L000016b8:
    sw         $v1,24($s0)
    lw         $v0,4($s2)
    sw         $v0,16($sp)
    lw         $at,0($s2)
    sw         $at,20($sp)
    lw         $ra,20($s0)
    bnez       $s3, .L00001708
    sw         $ra,24($sp)
.L000016d8:
    jal        GfxMessage
    daddiu     $a0,$sp,0
    b          .L0000170c
    lw         $a5,4($s2)
.L000016e8:
    sw         $a1,24($s0)
    lw         $a3,4($s2)
    sw         $a3,16($sp)
    lw         $a2,0($s2)
    sw         $a2,20($sp)
    lw         $a0,20($s0)
    beqz       $s3, .L000016d8
    sw         $a0,24($sp)
.L00001708:
    lw         $a5,4($s2)
.L0000170c:
    sw         $a5,20($s0)
    lw         $a4,4($s1)
    andi       $a4,$a4,0x8
    beqz       $a4, .L0000174c
    move       $v0,$zero
    lw         $a7,8($s2)
    lw         $a6,4($s2)
    ld         $v0,120($s0)
    lw         $v0,0($v0)
    beq        $a6, $a7, .L0000176c
    sw         $v0,12($s2)
    ld         $v1,128($s0)
    lw         $v1,0($v1)
    bnez       $s4, .L00001774
    sw         $v1,16($s2)
.L00001748:
    move       $v0,$zero
.L0000174c:
    ld         $s2,56($sp)
.L00001750:
    ld         $s3,88($sp)
    ld         $ra,96($sp)
    ld         $s4,64($sp)
    ld         $s0,72($sp)
    ld         $s1,80($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L0000176c:
    beqz       $s4, .L00001748
    sw         $v0,16($s2)
.L00001774:
    move       $a0,$s2
    move       $a1,$s4
    jal        copyout
    li         $a2,20
    beqz       $v0, .L0000174c
    move       $v0,$zero
    b          .L0000174c
    li         $v0,14
.L00001794:
    b          .L00001750
    ld         $s2,56($sp)
.L0000179c:
    jal        bind_pane
    move       $a0,$s1
    sd         $v0,128($s0)
    sw         $zero,140($s0)
    lhu        $a2,4($s0)
    move       $a1,$v0
    ld         $a0,120($s0)
    ori        $a2,$a2,0x40
    b          .L00001628
    sh         $a2,4($s0)
.L000017c4:
    jal        RRM_CheckValidFault
    move       $a0,$s1
    bltz       $v0, .L00001834
    nop
    ld         $a4,32($s1)
    ld         $a3,120($s0)
    ld         $a4,80($a4)
    ld         $a2,40($s1)
    move       $a0,$s1
    move       $a1,$s0
    ld         $a2,8($a2)
    jalr       $a4
    daddiu     $a3,$a3,96
    li         $a5,-1
    beq        $v0, $a5, .L0000184c
    nop
    ld         $a7,120($s0)
    ld         $a6,128($s0)
    lw         $a7,8($a7)
    sw         $a7,136($s0)
    lw         $a6,8($a6)
    b          .L00001658
    sw         $a6,140($s0)
    move       $s3,$zero
.L00001824:
    jal        rrmUnMapGfx
    move       $a0,$s1
    b          .L0000165c
    ld         $a0,8($s1)
.L00001834:
    b          .L0000174c
    li         $v0,14
.L0000183c:
    jal        GfxMessage
    daddiu     $a0,$sp,0
    b          .L000016b8
    lw         $v1,8($s2)
.L0000184c:
    b          .L0000174c
    li         $v0,14

glabel RRM_BindRNToClip
    daddiu     $sp,$sp,-64
    sd         $s0,56($sp)
    sd         $ra,40($sp)
    sd         $a2,24($sp)
    sd         $a3,32($sp)
    sd         $s3,48($sp)
    lw         $v1,0($a2)
    sw         $v1,0($sp)
    lw         $v0,4($a2)
    move       $s3,$a0
    sw         $v0,4($sp)
    move       $a3,$zero
    move       $a0,$s3
    lw         $at,4($a2)
    daddiu     $a2,$sp,0
    jal        RRM_BindRNToReadAndClip
    sw         $at,8($sp)
    lw         $a1,4($s3)
    andi       $a1,$a1,0x8
    beqz       $a1, .L000018b0
    move       $s0,$v0
    beqz       $v0, .L000018c8
    ld         $a1,32($sp)
.L000018b0:
    move       $v0,$s0
.L000018b4:
    ld         $ra,40($sp)
    ld         $s0,56($sp)
    ld         $s3,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000018c8:
    ld         $a4,24($sp)
    li         $a2,12
    lw         $a3,12($sp)
    move       $a0,$a4
    jal        copyout
    sw         $a3,8($a4)
    beqz       $v0, .L000018b4
    move       $v0,$s0
    b          .L000018b4
    li         $v0,14

glabel RRM_UnbindRNFromClip
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    move       $a1,$a0
    jal        pane_cleanup
    lw         $a0,4($a2)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel RRM_OpenRN
    daddiu     $sp,$sp,-80
    sd         $a4,16($sp)
    sd         $s3,40($sp)
    sd         $ra,48($sp)
    ld         $v0,40($a0)
    sd         $s0,56($sp)
    ld         $at,72($v0)
    sd         $s1,32($sp)
    move       $s1,$a0
    sd         $s4,24($sp)
    move       $s4,$a2
    bne        $at, $a0, .L00001994
    sd         $s2,64($sp)
.L00001948:
    lw         $a0,80($v0)
.L0000194c:
    addiu      $a0,$a0,1
    sw         $a0,80($v0)
    lw         $v1,0($s4)
    li         $a2,-1
    beq        $v1, $a2, .L000019d8
    li         $v0,22
.L00001964:
    ld         $s4,24($sp)
    ld         $s3,40($sp)
    ld         $s0,56($sp)
    ld         $s2,64($sp)
    ld         $a2,40($s1)
    ld         $ra,48($sp)
    lw         $a1,80($a2)
    ld         $s1,32($sp)
    daddiu     $sp,$sp,80
    addiu      $a1,$a1,-1
    jr         $ra
    sw         $a1,80($a2)
.L00001994:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a3,40($s1)
    sd         $s1,72($a3)
    ld         $v0,40($s1)
    lw         $a2,104($v0)
    beqz       $a2, .L00001948
    nop
.L000019b8:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s1)
    lw         $a4,104($v0)
    bnez       $a4, .L000019b8
    nop
    b          .L0000194c
    lw         $a0,80($v0)
.L000019d8:
    ld         $s2,-30720($gp)
    li         $a1,25
    ld         $s0,40($s1)
    jal        psema
    daddiu     $a0,$s2,16
    lw         $a1,0($gp)
    slti       $a5,$a1,2
    ld         $a6,-30688($gp)
    li         $s3,1
    bnez       $a5, .L00001a64
    sd         $s0,0($sp)
    move       $s0,$s3
    dsll       $v1,$s0,0x2
    addiu      $v0,$s0,1
    dsubu      $v1,$v1,$s0
.L00001a14:
    dsll32     $v0,$v0,0x10
    dsll       $v1,$v1,0x2
    dsubu      $v1,$v1,$s0
    dsll       $v1,$v1,0x4
    daddu      $v1,$a6,$v1
    lbu        $v1,82($v1)
    beq        $s3, $v1, .L00001a4c
    nop
    dsra32     $s0,$v0,0x10
    slt        $a0,$s0,$a1
    addiu      $v0,$s0,1
    dsll       $v1,$s0,0x2
    bnez       $a0, .L00001a14
    dsubu      $v1,$v1,$s0
.L00001a4c:
    bne        $a1, $s0, .L00001a6c
    nop
.L00001a54:
    jal        vsema
    daddiu     $a0,$s2,16
    b          .L00001964
    li         $v0,12
.L00001a64:
    beq        $a1, $s3, .L00001a54
    move       $s0,$s3
.L00001a6c:
    dsll       $s2,$s0,0x2
    dsubu      $s2,$s2,$s0
    dsll       $s2,$s2,0x2
    dsubu      $s2,$s2,$s0
    dsll       $s2,$s2,0x4
    daddu      $s2,$a6,$s2
    li         $a1,176
    lh         $a2,0($s2)
    move       $a0,$s2
    jal        bzero
    sd         $a2,8($sp)
    ld         $a0,-30720($gp)
    sb         $zero,82($s2)
    jal        vsema
    daddiu     $a0,$a0,16
    ld         $a5,8($sp)
    sd         $s1,64($s2)
    sd         $s1,56($s2)
    sll        $a5,$a5,0x10
    or         $a5,$s0,$a5
    sw         $a5,0($s2)
    ld         $a4,40($s1)
    sd         $a4,72($s2)
    lw         $a3,4($s4)
    li         $a2,52
    sh         $a2,6($s2)
    ori        $a3,$a3,0xb5
    sh         $a3,4($s2)
    ld         $a1,8($s1)
    ld         $a1,8($a1)
    li         $a7,-5
    li         $t1,-129
    move       $v0,$a2
    beq        $a1, $s1, .L00001bbc
    lhu        $a1,4($s2)
    andi       $a6,$a1,0x2
    beqz       $a6, .L00001bbc
    nop
    li         $a7,-5
.L00001b08:
    li         $a5,-1
    sh         $a5,80($s2)
    sd         $zero,112($s2)
    move       $a1,$zero
    and        $a4,$a7,$v0
    daddiu     $s4,$s2,48
    ld         $a2,-30704($gp)
    sd         $zero,8($s2)
    move       $a3,$a5
    move       $a0,$s4
    sh         $a4,6($s2)
    jal        init_sv
    daddiu     $a2,$a2,360
    daddiu     $s0,$s2,104
    ld         $a1,-30704($gp)
    move       $a0,$s0
    jal        spinlock_init
    daddiu     $a1,$a1,368
    ld         $a2,32($s1)
    ld         $a2,64($a2)
    ld         $a0,0($sp)
    jalr       $a2
    move       $a1,$s2
    beqz       $v0, .L00001b88
    ld         $a5,0($sp)
    jal        sv_destroy
    move       $a0,$s4
    jal        spinlock_destroy
    move       $a0,$s0
    li         $v0,12
    b          .L00001964
    sb         $s3,82($s2)
.L00001b88:
    lw         $a4,16($a5)
    addiu      $a4,$a4,1
    sw         $a4,16($a5)
    lw         $a3,4($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00001bd0
    nop
    sb         $zero,84($s2)
.L00001ba8:
    ld         $a6,16($sp)
    lw         $a5,0($s2)
    move       $v0,$zero
    b          .L00001964
    sw         $a5,0($a6)
.L00001bbc:
    lhu        $v0,6($s2)
    and        $t0,$a7,$a1
    and        $t0,$t0,$t1
    b          .L00001b08
    sh         $t0,4($s2)
.L00001bd0:
    jal        kern_malloc
    li         $a0,16
    sd         $s2,0($v0)
    ld         $t2,64($s1)
    sd         $t2,8($v0)
    sd         $v0,64($s1)
    b          .L00001ba8
    sb         $s3,84($s2)

glabel rrmCloseRN
    daddiu     $sp,$sp,-48
    sd         $s2,24($sp)
    ld         $s2,40($a0)
    sd         $zero,56($a1)
    lw         $at,4($a0)
    andi       $at,$at,0x8
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s0,8($sp)
    beqz       $at, .L00001c40
    move       $s0,$a1
    lbu        $v0,84($a1)
    beqz       $v0, .L00001c3c
    nop
    ld         $v1,64($a1)
    beq        $v1, $a0, .L00001c3c
    nop
    b          .L00001df4
    move       $v0,$zero
.L00001c3c:
    sd         $s1,64($s0)
.L00001c40:
    ld         $v0,40($s1)
    ld         $a0,72($v0)
    bne        $a0, $s1, .L00001e18
    sd         $ra,32($sp)
.L00001c50:
    lw         $a4,80($v0)
.L00001c54:
    addiu      $a4,$a4,1
    sw         $a4,80($v0)
    ld         $a3,32($s1)
    ld         $a3,72($a3)
    move       $a2,$s0
    move       $a1,$s1
    jalr       $a3
    move       $a0,$s2
    ld         $a5,72($s1)
    beq        $a5, $s0, .L00001e94
    daddiu     $a0,$s2,48
.L00001c80:
    jal        mutex_spinlock
    sd         $a0,0($sp)
    ld         $a6,168($s2)
    move       $a1,$v0
    move       $a2,$a6
    beqz       $a6, .L00001cd4
    move       $a5,$a6
.L00001c9c:
    beq        $s0, $a2, .L00001cbc
    nop
    ld         $a7,168($a2)
    move       $a5,$a2
    bnez       $a7, .L00001c9c
    move       $a2,$a7
    b          .L00001cd8
    ld         $a6,136($s2)
.L00001cbc:
    bne        $a6, $a2, .L00001ccc
    ld         $v0,168($a2)
    b          .L00001cd0
    sd         $v0,168($s2)
.L00001ccc:
    sd         $v0,168($a5)
.L00001cd0:
    sd         $zero,168($a2)
.L00001cd4:
    ld         $a6,136($s2)
.L00001cd8:
    move       $a2,$a6
    beqz       $a6, .L00001d0c
    move       $a5,$a6
.L00001ce4:
    beq        $s0, $a2, .L00001e08
    nop
    ld         $t0,160($a2)
    move       $a5,$a2
    bnez       $t0, .L00001ce4
    move       $a2,$t0
    b          .L00001d0c
    nop
.L00001d04:
    sd         $v0,160($a5)
.L00001d08:
    sd         $zero,160($a2)
.L00001d0c:
    jal        mutex_spinunlock
    ld         $a0,0($sp)
    lw         $t1,4($s1)
    andi       $t1,$t1,0x8
    beqz       $t1, .L00001e6c
    nop
    ld         $a0,120($s0)
.L00001d28:
    lh         $t2,0($s0)
    addiu      $t2,$t2,1
    andi       $t2,$t2,0x7fff
    beqz       $a0, .L00001d5c
    sh         $t2,0($s0)
    jal        unbind_pane
    move       $a1,$s1
    ld         $t3,120($s0)
    ld         $a0,128($s0)
    bne        $t3, $a0, .L00001e5c
    nop
    sd         $zero,120($s0)
.L00001d58:
    sd         $zero,128($s0)
.L00001d5c:
    jal        sv_destroy
    daddiu     $a0,$s0,48
    jal        spinlock_destroy
    daddiu     $a0,$s0,104
    li         $t9,1
    sb         $t9,82($s0)
    ld         $t8,8($s2)
    bne        $t8, $s0, .L00001d84
    ld         $ra,32($sp)
    sd         $zero,8($s2)
.L00001d84:
    lh         $v0,80($s0)
    li         $at,-1
    beq        $v0, $at, .L00001dd4
    nop
    ld         $a0,24($s2)
    dsll       $a1,$v0,0x3
    daddu      $a0,$a0,$a1
    sd         $zero,0($a0)
    ld         $v1,8($s1)
    ld         $v1,8($v1)
    beq        $v1, $s1, .L00001dd4
    nop
    ld         $a0,96($s0)
    beqz       $a0, .L00001eac
    ld         $v0,88($s0)
    sd         $v0,88($a0)
.L00001dc4:
    ld         $v0,88($s0)
    beqz       $v0, .L00001eb4
    ld         $a0,96($s0)
    sd         $a0,96($v0)
.L00001dd4:
    lw         $a3,16($s2)
    addiu      $a3,$a3,-1
    sw         $a3,16($s2)
    ld         $a3,40($s1)
    lw         $a2,80($a3)
    move       $v0,$zero
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
.L00001df4:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001e08:
    bne        $a6, $a2, .L00001d04
    ld         $v0,160($a2)
    b          .L00001d08
    sd         $v0,136($s2)
.L00001e18:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a5,40($s1)
    sd         $s1,72($a5)
    ld         $v0,40($s1)
    lw         $a4,104($v0)
    beqz       $a4, .L00001c50
    nop
.L00001e3c:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s1)
    lw         $a6,104($v0)
    bnez       $a6, .L00001e3c
    nop
    b          .L00001c54
    lw         $a4,80($v0)
.L00001e5c:
    jal        unbind_pane
    move       $a1,$s1
    b          .L00001d58
    sd         $zero,120($s0)
.L00001e6c:
    ld         $v0,64($s1)
    ld         $a7,0($v0)
    bne        $a7, $s0, .L00001ebc
    move       $a0,$v0
    ld         $t0,8($v0)
    sd         $t0,64($s1)
.L00001e84:
    jal        kern_free
    nop
    b          .L00001d28
    ld         $a0,120($s0)
.L00001e94:
    jal        rrmUnbindProcFromRN
    move       $a0,$s1
    beqz       $v0, .L00001c80
    daddiu     $a0,$s2,48
    b          .L00001ef8
    ld         $a1,-30704($gp)
.L00001eac:
    b          .L00001dc4
    sd         $v0,32($s2)
.L00001eb4:
    b          .L00001dd4
    sd         $a0,40($s2)
.L00001ebc:
    ld         $t1,8($v0)
    beqz       $t1, .L00001e84
    move       $a0,$t1
.L00001ec8:
    ld         $t2,0($a0)
    beq        $t2, $s0, .L00001eec
    nop
    ld         $t3,8($a0)
    move       $v0,$a0
    bnez       $t3, .L00001ec8
    move       $a0,$t3
    b          .L00001e84
    nop
.L00001eec:
    ld         $t8,8($a0)
    b          .L00001e84
    sd         $t8,8($v0)
.L00001ef8:
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,376
    b          .L00001c80
    daddiu     $a0,$s2,48

glabel RRM_CloseRN
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        rrmCloseRN
    nop
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel RRM_Exit
    daddiu     $sp,$sp,-48
    sd         $s2,8($sp)
    sd         $s3,16($sp)
    lw         $at,4($a0)
    sd         $ra,24($sp)
    sd         $s4,32($sp)
    andi       $at,$at,0x8
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00002090
    sd         $s1,40($sp)
    ld         $s1,72($a0)
    beqz       $s1, .L00001f70
    lw         $v0,0($gp)
    ld         $v0,56($s1)
    bne        $v0, $a0, .L000020f0
    lw         $v0,0($gp)
.L00001f70:
    slti       $v1,$v0,2
    li         $s1,1
    bnez       $v1, .L0000200c
    ld         $s4,-30688($gp)
    b          .L00001fd4
    dsll       $s2,$s1,0x2
.L00001f88:
    dsll       $t8,$s1,0x4
    li         $a1,25
    daddu      $s3,$s3,$t8
    jal        psema
    move       $a0,$s3
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s2
    bnez       $v0, .L00002154
    ld         $a1,-30704($gp)
.L00001fb0:
    jal        vsema
    move       $a0,$s3
    addiu      $s1,$s1,1
    lw         $v0,0($gp)
    dsll32     $s1,$s1,0x10
    dsra32     $s1,$s1,0x10
    slt        $t9,$s1,$v0
    beqz       $t9, .L0000200c
    dsll       $s2,$s1,0x2
.L00001fd4:
    dsubu      $s2,$s2,$s1
    dsll       $s2,$s2,0x2
    dsubu      $s2,$s2,$s1
    dsll       $s2,$s2,0x4
    daddu      $s2,$s4,$s2
    ld         $t8,56($s2)
    beq        $t8, $s0, .L00001f88
    ld         $s3,-30696($gp)
    addiu      $s1,$s1,1
    dsll32     $s1,$s1,0x10
    dsra32     $s1,$s1,0x10
    slt        $t8,$s1,$v0
    bnez       $t8, .L00001fd4
    dsll       $s2,$s1,0x2
.L0000200c:
    ld         $v0,40($s0)
.L00002010:
    beqz       $v0, .L00002024
    ld         $s2,8($sp)
    ld         $t8,72($v0)
    beq        $t8, $s0, .L00002044
    ld         $s2,8($sp)
.L00002024:
    ld         $s3,16($sp)
    ld         $ra,24($sp)
    ld         $s4,32($sp)
    move       $v0,$zero
    ld         $s1,40($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00002044:
    sw         $zero,84($v0)
    ld         $t9,40($s0)
    jal        splhi
    sw         $zero,80($t9)
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L0000206c
    move       $s1,$v0
    jalr       $a1
    move       $a0,$s0
.L0000206c:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s1
    b          .L00002024
    ld         $s2,8($sp)
.L00002090:
    ld         $v0,64($a0)
    beqz       $v0, .L0000200c
    nop
.L0000209c:
    ld         $s1,0($v0)
    lh         $t8,2($s1)
    ld         $s3,-30696($gp)
    dsll       $t8,$t8,0x4
    li         $a1,25
    daddu      $s3,$s3,$t8
    ld         $s2,-30704($gp)
    jal        psema
    move       $a0,$s3
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s1
    bnez       $v0, .L00002144
    move       $a0,$zero
.L000020d4:
    jal        vsema
    move       $a0,$s3
    ld         $v0,64($s0)
    bnez       $v0, .L0000209c
    nop
    b          .L00002010
    ld         $v0,40($s0)
.L000020f0:
    lh         $t8,2($s1)
    ld         $s3,-30696($gp)
    dsll       $t8,$t8,0x4
    li         $a1,25
    daddu      $s3,$s3,$t8
    jal        psema
    move       $a0,$s3
    ld         $t9,56($s1)
    bnez       $t9, .L0000212c
    sb         $zero,84($s1)
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s1
    b          .L00002134
    nop
.L0000212c:
    jal        rrmUnbindProcFromRN
    move       $a0,$s0
.L00002134:
    jal        vsema
    move       $a0,$s3
    b          .L00001f70
    lw         $v0,0($gp)
.L00002144:
    jal        cmn_err
    daddiu     $a1,$s2,416
    b          .L000020d4
    nop
.L00002154:
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,416
    b          .L00001fb0
    nop

glabel rrmGetResourceMask
    jr         $ra
    lhu        $v0,4($a0)

glabel rrmSuspend
    daddiu     $sp,$sp,-80
    sd         $s1,64($sp)
    sd         $ra,16($sp)
    sd         $s2,24($sp)
    move       $s2,$a1
    jal        gthread_find
    sd         $s4,56($sp)
    lw         $a2,8($v0)
    sd         $s0,48($sp)
    andi       $at,$a2,0x1
    move       $s1,$v0
    li         $s4,1
    sd         $s5,40($sp)
    move       $s5,$zero
    bnez       $at, .L000024fc
    sd         $s3,32($sp)
    beqz       $v0, .L000022d0
    nop
    ld         $a0,16($v0)
    beqz       $a0, .L000022d0
    nop
    ld         $v0,24($v0)
    bnez       $v0, .L000023b8
    nop
    ld         $s0,24($a0)
.L000021d4:
    ori        $a2,$a2,0x8
    sw         $a2,8($s1)
    andi       $s3,$s2,0x100
    beqz       $s0, .L000022a4
    movn       $s4,$zero,$s3
    andi       $v1,$s2,0x80
    b          .L00002250
    sd         $v1,8($sp)
.L000021f4:
    ld         $a1,24($s1)
    lw         $a0,12($a1)
    addiu      $a0,$a0,1
    sw         $a0,12($a1)
.L00002204:
    beqz       $s4, .L000022f4
    nop
    ld         $s2,40($s0)
    beqz       $s2, .L00002224
    nop
    ld         $a1,72($s2)
    beq        $a1, $s0, .L0000231c
    nop
.L00002224:
    ld         $v0,32($s0)
    beqz       $v0, .L00002244
    nop
    ld         $a3,176($v0)
    move       $a0,$s2
    move       $a1,$s0
    jalr       $a3
    move       $a2,$s3
.L00002244:
    ld         $s0,24($s0)
.L00002248:
    beqz       $s0, .L000022a0
    nop
.L00002250:
    beqz       $s3, .L00002204
    nop
    ld         $v0,40($s0)
    beqz       $v0, .L00002204
    nop
    ld         $a4,72($v0)
    bne        $a4, $s0, .L00002204
    nop
    lw         $a2,8($s1)
    ori        $a2,$a2,0x1
    beqz       $s5, .L00002204
    sw         $a2,8($s1)
    andi       $a3,$a2,0x4
    bnez       $a3, .L000021f4
    nop
    ld         $a5,40($s0)
    lw         $a4,80($a5)
    addiu      $a4,$a4,1
    b          .L000021f4
    sw         $a4,80($a5)
.L000022a0:
    lw         $a2,8($s1)
.L000022a4:
    ld         $v0,24($s1)
    li         $a5,-9
    and        $a5,$a2,$a5
    beqz       $v0, .L000022d0
    sw         $a5,8($s1)
    beqz       $s5, .L000022c8
    lw         $a1,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$v0,16
.L000022c8:
    jal        GfxListReaderUnlock
    ld         $a0,16($s1)
.L000022d0:
    ld         $s1,64($sp)
.L000022d4:
    ld         $s4,56($sp)
    ld         $s0,48($sp)
    ld         $ra,16($sp)
    ld         $s5,40($sp)
    ld         $s3,32($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000022f4:
    ld         $v0,32($s0)
    beqz       $v0, .L00002244
    nop
    ld         $a6,176($v0)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $a6
    ld         $a0,40($s0)
    b          .L00002248
    ld         $s0,24($s0)
.L0000231c:
    ld         $a7,32($s0)
    ld         $a7,176($a7)
    move       $a0,$s2
    move       $a1,$s0
    jalr       $a7
    move       $a2,$s3
    lw         $t0,80($s2)
    beqz       $t0, .L000023ec
    ld         $t3,8($sp)
    lw         $t1,84($s2)
    beqz       $t1, .L00002354
    nop
    beqz       $v0, .L0000240c
    nop
.L00002354:
    lw         $t2,104($s2)
    beqz       $t2, .L00002244
    nop
    beqz       $t3, .L00002244
    nop
    ld         $t9,40($s0)
    lw         $t8,80($t9)
    addiu      $t8,$t8,-1
    jal        splhi
    sw         $t8,80($t9)
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L00002394
    move       $s2,$v0
    jalr       $a1
    move       $a0,$s0
.L00002394:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s2
    b          .L00002248
    ld         $s0,24($s0)
.L000023b8:
    jal        GfxListReaderLock
    nop
    ld         $a0,16($s1)
    ld         $s0,24($a0)
    move       $s5,$zero
    beqz       $s0, .L00002460
    li         $s4,1
    lw         $a2,4($s0)
    andi       $a2,$a2,0x8
    beqz       $a2, .L00002470
    nop
    b          .L000021d4
    lw         $a2,8($s1)
.L000023ec:
    beqz       $v0, .L000024a0
    nop
    ld         $a4,40($s0)
    lw         $a3,80($a4)
    addiu      $a3,$a3,1
    sw         $a3,80($a4)
    b          .L00002244
    sw         $v0,84($s2)
.L0000240c:
    sw         $zero,84($s2)
    ld         $a5,40($s0)
    lw         $a4,80($a5)
    addiu      $a4,$a4,-1
    jal        splhi
    sw         $a4,80($a5)
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L0000243c
    move       $s2,$v0
    jalr       $a1
    move       $a0,$s0
.L0000243c:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s2
    b          .L00002248
    ld         $s0,24($s0)
.L00002460:
    jal        GfxListReaderUnlock
    nop
    b          .L000022d4
    ld         $s1,64($sp)
.L00002470:
    ld         $a0,24($s1)
    jal        mutex_spinlock
    daddiu     $a0,$a0,16
    lw         $a2,8($s1)
    andi       $a1,$a2,0x2
    beqz       $a1, .L000024e4
    sw         $v0,0($sp)
.L0000248c:
    ld         $s4,24($s1)
    lw         $s4,12($s4)
    li         $s5,1
    b          .L000021d4
    sltiu      $s4,$s4,1
.L000024a0:
    jal        splhi
    nop
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L000024c0
    move       $s2,$v0
    jalr       $a1
    move       $a0,$s0
.L000024c0:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s2
    b          .L00002248
    ld         $s0,24($s0)
.L000024e4:
    ld         $a3,24($s1)
    lw         $a2,12($a3)
    addiu      $a2,$a2,-1
    sw         $a2,12($a3)
    b          .L0000248c
    lw         $a2,8($s1)
.L000024fc:
    ld         $a1,-30704($gp)
    li         $a0,5
    move       $a2,$v0
    jal        cmn_err
    daddiu     $a1,$a1,448
    b          .L000022d4
    ld         $s1,64($sp)

glabel rrmResume
    daddiu     $sp,$sp,-144
    sd         $a1,24($sp)
    sd         $ra,64($sp)
    sd         $s1,56($sp)
    move       $s1,$a0
    jal        rt_pin_thread
    sd         $s0,112($sp)
    move       $s0,$v0
    lh         $at,-15328($zero)
    move       $a0,$s1
    jal        gthread_find
    sd         $at,32($sp)
    sd         $s6,72($sp)
    sd         $s2,80($sp)
    sd         $s3,88($sp)
    sd         $s4,104($sp)
    sd         $s5,120($sp)
    sd         $s7,128($sp)
    move       $s1,$v0
    sd         $s8,96($sp)
    move       $s8,$zero
    beqz       $v0, .L000027e8
    sd         $s0,16($sp)
    ld         $a0,16($v0)
    beqz       $a0, .L000027e8
    nop
    ld         $v0,24($v0)
    bnez       $v0, .L00002780
    nop
    ld         $s0,24($a0)
.L00002590:
    beqz       $s0, .L00002680
    ld         $s4,24($sp)
    ld         $t8,32($sp)
    li         $s6,1
    dsllv      $s6,$s6,$t8
    sra        $s5,$t8,0x6
    andi       $s4,$s4,0x100
    b          .L00002600
    dsll       $s5,$s5,0x3
.L000025b4:
    ld         $a5,32($s0)
    beqz       $a5, .L000025e8
    li         $s2,1
    lw         $t8,4($s0)
    andi       $t8,$t8,0x3
    beqz       $t8, .L000025e8
    li         $s2,1
    ld         $t9,184($a5)
    move       $a2,$s4
    move       $a1,$s0
    jalr       $t9
    ld         $a0,40($s0)
    li         $s2,1
.L000025e8:
    ld         $s0,24($s0)
.L000025ec:
    bnez       $s2, .L000025f8
    nop
.L000025f4:
    ld         $s0,24($s0)
.L000025f8:
    beqz       $s0, .L00002680
    nop
.L00002600:
    ld         $ra,40($s0)
    move       $s2,$zero
    beqz       $ra, .L000025f4
    daddu      $s3,$s5,$s0
    lw         $at,4($s0)
    andi       $at,$at,0x8
    beqz       $at, .L000026dc
    nop
.L00002620:
    ld         $v0,104($s3)
    and        $v0,$v0,$s6
    beqz       $v0, .L00002754
    nop
.L00002630:
    beqz       $s4, .L0000270c
    nop
    lw         $a1,8($s1)
    andi       $v1,$a1,0x1
    beqz       $v1, .L000025b4
    li         $a0,-2
    ld         $a2,40($s0)
    ld         $a2,72($a2)
    bne        $a2, $s0, .L000025b4
    and        $a1,$a0,$a1
    beqz       $s8, .L000025b4
    sw         $a1,8($s1)
    andi       $a3,$a1,0x4
    bnez       $a3, .L000025b4
    nop
    ld         $a5,40($s0)
    lw         $a4,80($a5)
    addiu      $a4,$a4,-1
    b          .L000025b4
    sw         $a4,80($a5)
.L00002680:
    ld         $a2,24($s1)
    beqz       $a2, .L000026a4
    nop
    beqz       $s8, .L0000269c
    lw         $a1,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$a2,16
.L0000269c:
    jal        GfxListReaderUnlock
    ld         $a0,16($s1)
.L000026a4:
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    ld         $s6,72($sp)
.L000026b0:
    ld         $s2,80($sp)
    ld         $s1,56($sp)
    ld         $s3,88($sp)
    ld         $s8,96($sp)
    ld         $s4,104($sp)
    ld         $ra,64($sp)
    ld         $s0,112($sp)
    ld         $s5,120($sp)
    ld         $s7,128($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L000026dc:
    ld         $a5,24($s1)
    beqz       $a5, .L00002620
    nop
    ld         $a6,48($s0)
    beqz       $a6, .L00002620
    nop
    ld         $a7,32($s0)
    ld         $a7,112($a7)
    jalr       $a7
    move       $a0,$s0
    b          .L00002630
    nop
.L0000270c:
    lw         $a1,4($s0)
    andi       $a3,$a1,0x1
    andi       $a2,$a1,0x2
    beqz       $a3, .L000027c0
    andi       $a1,$a1,0x20
    beqz       $a1, .L000027f8
    nop
    ld         $a5,40($s0)
    ld         $a4,72($a5)
    bne        $a4, $s0, .L000027b0
.L00002734:
    move       $a0,$a5
    ld         $a5,32($s0)
    ld         $a5,184($a5)
    move       $a1,$s0
    jalr       $a5
    move       $a2,$s4
    b          .L000025ec
    nop
.L00002754:
    ld         $a6,48($s0)
    beqz       $a6, .L00002630
    nop
    ld         $a7,32($s0)
    ld         $a7,112($a7)
    jalr       $a7
    move       $a0,$s0
    ld         $t0,104($s3)
    or         $t0,$t0,$s6
    b          .L00002630
    sd         $t0,104($s3)
.L00002780:
    jal        GfxListReaderLock
    nop
    ld         $a0,16($s1)
    ld         $s0,24($a0)
    beqz       $s0, .L00002978
    move       $s8,$zero
    lw         $t1,4($s0)
    andi       $t1,$t1,0x8
    bnez       $t1, .L00002590
    nop
    b          .L00002938
    nop
.L000027b0:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L00002734
    ld         $a5,40($s0)
.L000027c0:
    beqz       $a2, .L000025ec
    nop
    ld         $t2,32($s0)
    ld         $t2,184($t2)
    move       $a2,$s4
    move       $a1,$s0
    jalr       $t2
    ld         $a0,40($s0)
    b          .L000025ec
    nop
.L000027e8:
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L000026b0
    ld         $s6,72($sp)
.L000027f8:
    ld         $t3,72($s0)
    sd         $t3,8($sp)
    daddiu     $t8,$t3,104
    beqz       $t3, .L000029a4
    sd         $t8,48($sp)
    b          .L00002848
    sd         $zero,40($sp)
.L00002814:
    lw         $t9,80($a5)
    beqz       $t9, .L000028e4
    and        $a1,$s7,$s3
.L00002820:
    ld         $at,32($s0)
    ld         $at,184($at)
    move       $a0,$a5
    move       $a1,$s0
    jalr       $at
    move       $a2,$s4
.L00002838:
    ld         $v0,40($sp)
.L0000283c:
    beqz       $v0, .L000025ec
    nop
    sd         $zero,40($sp)
.L00002848:
    jal        mutex_spinlock
    ld         $a0,48($sp)
    ld         $s3,8($sp)
    ld         $a2,120($s3)
    lhu        $s7,4($s3)
    ld         $ra,8($sp)
    move       $a1,$v0
    lhu        $s3,6($s3)
    beqz       $a2, .L00002894
    andi       $t9,$s7,0x40
    lh         $t8,12($a2)
    beqz       $t9, .L00002894
    or         $s3,$t8,$s3
    ld         $ra,128($ra)
    lh         $ra,12($ra)
    li         $t8,-65
    and        $s3,$s3,$t8
    andi       $ra,$ra,0x40
    or         $s3,$ra,$s3
.L00002894:
    jal        mutex_spinunlock
    ld         $a0,48($sp)
    ld         $a5,40($s0)
    ld         $at,72($a5)
    beq        $at, $s0, .L00002814
    and        $a1,$s7,$s3
    bne        $s7, $a1, .L000028d4
    nop
    jal        cpsema
    daddiu     $a0,$a5,56
    beqz       $v0, .L000028d4
    li         $v1,1
    ld         $v0,40($s0)
    sd         $v1,40($sp)
    b          .L00002838
    sd         $s0,72($v0)
.L000028d4:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L0000283c
    ld         $v0,40($sp)
.L000028e4:
    beq        $s7, $a1, .L00002820
    nop
    jal        splhi
    nop
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L0000290c
    move       $s3,$v0
    jalr       $a1
    move       $a0,$s0
.L0000290c:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s3
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L0000283c
    ld         $v0,40($sp)
.L00002938:
    lw         $a2,8($s1)
    andi       $a4,$a2,0x2
    li         $a3,-3
    beqz       $a4, .L00002950
    and        $a2,$a2,$a3
    sw         $a2,8($s1)
.L00002950:
    ld         $a0,24($s1)
    jal        mutex_spinlock
    daddiu     $a0,$a0,16
    lw         $a1,8($s1)
    andi       $a1,$a1,0x1
    sw         $v0,0($sp)
    bnez       $a1, .L00002590
    li         $s8,1
    b          .L00002990
    nop
.L00002978:
    jal        GfxListReaderUnlock
    nop
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L000026b0
    ld         $s6,72($sp)
.L00002990:
    ld         $a3,24($s1)
    lw         $a2,12($a3)
    addiu      $a2,$a2,1
    b          .L00002590
    sw         $a2,12($a3)
.L000029a4:
    ld         $a3,32($s0)
    ld         $a3,184($a3)
    move       $a2,$s4
    move       $a1,$s0
    jalr       $a3
    ld         $a0,40($s0)
    b          .L000025ec
    nop

glabel rrmSetResourceMask
    daddiu     $sp,$sp,-64
    sd         $s2,48($sp)
    sd         $s8,56($sp)
    sd         $a0,0($sp)
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s3,8($sp)
    move       $s3,$a2
    sd         $s1,32($sp)
    daddiu     $s1,$a1,104
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $a0,$s1
    lhu        $at,4($s0)
    sd         $at,40($sp)
    andi       $at,$at,0x2
    move       $s8,$v0
    beqz       $at, .L00002a1c
    lhu        $s2,6($s0)
    jal        pane_validmask
    ld         $a0,120($s0)
    or         $s2,$v0,$s2
.L00002a1c:
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$s8
    ld         $v0,40($sp)
    xor        $v0,$v0,$s3
    and        $v0,$s3,$v0
    xor        $v1,$s2,$v0
    and        $v0,$v0,$v1
    beqz       $v0, .L00002a50
    ld         $s2,48($sp)
    jal        rrmUnMapGfx
    ld         $a0,0($sp)
    ld         $s2,48($sp)
.L00002a50:
    ld         $s8,56($sp)
    jal        mutex_spinlock
    move       $a0,$s1
    move       $a1,$v0
    sh         $s3,4($s0)
    jal        mutex_spinunlock
    move       $a0,$s1
    ld         $ra,16($sp)
    ld         $s3,8($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel RRM_ValidateSwapBuf
    daddiu     $sp,$sp,-32
    sd         $a0,0($sp)
    sd         $ra,16($sp)
    jal        RRM_CheckValidFault
    sd         $a2,8($sp)
    bgez       $v0, .L00002aa8
    ld         $a0,8($sp)
    b          .L00002abc
    li         $a1,14
.L00002aa8:
    ld         $a1,0($sp)
    lw         $a2,8($a0)
    jal        validate_pane_swapbuf
    lw         $a0,4($a0)
    move       $a1,$v0
.L00002abc:
    ld         $ra,16($sp)
    move       $v0,$a1
    jr         $ra
    daddiu     $sp,$sp,32

glabel rrmValidateBuffer
    ld         $a2,72($a0)
    lw         $at,160($a2)
    daddiu     $sp,$sp,-16
    move       $a3,$a0
    beqz       $at, .L00002af8
    sd         $ra,0($sp)
    ld         $v1,120($a0)
    lw         $a0,164($a2)
    lw         $v0,24($v1)
    addu       $v0,$v0,$a0
    sw         $v0,28($v1)
.L00002af8:
    ld         $a1,64($a3)
    jal        validate_pane_buffer
    ld         $a0,120($a3)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel RRM_ValidateMessage
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a1
    sd         $s8,16($sp)
    daddiu     $s8,$a1,104
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    move       $a1,$v0
    lhu        $at,6($s0)
    move       $a0,$s8
    jal        mutex_spinunlock
    sd         $at,24($sp)
    ld         $v0,24($sp)
    andi       $v0,$v0,0x20
    ld         $s8,16($sp)
    beqz       $v0, .L00002b68
    li         $v0,22
.L00002b58:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002b68:
    jal        rrmValidateBuffer
    move       $a0,$s0
    b          .L00002b58
    move       $v0,$zero

glabel RRM_SetDisplayMode
    daddiu     $sp,$sp,-96
    sd         $a1,64($sp)
    sd         $ra,80($sp)
    sd         $s0,72($sp)
    move       $s0,$a0
    jal        RRM_CheckValidFault
    sd         $a2,56($sp)
    bltz       $v0, .L00002c34
    nop
    ld         $a5,8($s0)
    ld         $at,8($a5)
    bnez       $at, .L00002bbc
    li         $v0,14
.L00002bac:
    ld         $ra,80($sp)
    ld         $s0,72($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00002bbc:
    li         $a4,11
    sb         $a4,8($sp)
    sd         $a5,0($sp)
    lw         $a3,4($s0)
    li         $a1,3
    sw         $a1,12($sp)
    ld         $v0,56($sp)
    li         $a2,139
    ld         $a0,64($sp)
    andi       $a3,$a3,0x8
    movz       $a2,$a4,$a3
    sb         $a2,8($sp)
    lw         $a0,20($a0)
    sw         $a0,16($sp)
    lw         $v1,8($v0)
    sw         $v1,20($sp)
    lw         $v0,4($v0)
    daddiu     $a0,$sp,0
    jal        GfxMessage
    sw         $v0,24($sp)
    ld         $a1,64($sp)
    ld         $a1,120($a1)
    li         $a0,8
    move       $a2,$s0
    jal        invalidate_pane
    lw         $a1,4($a1)
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00002bac
    move       $v0,$zero
.L00002c34:
    b          .L00002bac
    li         $v0,14

glabel RRM_LoadDisplayMode
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    lw         $a0,4($a2)
    sd         $s1,16($sp)
    move       $s1,$a2
    sd         $s2,24($sp)
    sd         $ra,8($sp)
    jal        clip2pane
    move       $a1,$s0
    beqz       $v0, .L00002c94
    move       $s2,$v0
    lh         $at,12($v0)
    andi       $at,$at,0x8
    beqz       $at, .L00002c94
    li         $v0,22
.L00002c7c:
    ld         $ra,8($sp)
.L00002c80:
    ld         $s2,24($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002c94:
    lw         $a1,8($s1)
    bltz       $a1, .L00002cb4
    li         $v0,22
    ld         $v1,40($s0)
    lw         $v1,88($v1)
    slt        $v1,$a1,$v1
    bnez       $v1, .L00002cbc
    nop
.L00002cb4:
    b          .L00002c80
    ld         $ra,8($sp)
.L00002cbc:
    ld         $a2,32($s0)
    ld         $a2,160($a2)
    move       $a0,$s0
    move       $t9, $a2
    jalr       $t9
    lw         $a2,12($s1)
    bltz       $v0, .L00002d58
    move       $a0,$v0
    beqz       $s2, .L00002cfc
    nop
    lw         $a4,16($s1)
    sw         $a4,32($s2)
    lw         $a3,16($s1)
    andi       $a3,$a3,0x4
    xori       $a3,$a3,0x4
    sltiu      $a3,$a3,1
    sh         $a3,18($s2)
.L00002cfc:
    ld         $v0,40($s0)
    lw         $a1,8($s1)
    lw         $a5,88($v0)
    slt        $a5,$a1,$a5
    beqz       $a5, .L00002d24
    dsll       $t0,$a1,0x2
    ld         $a7,96($v0)
    lw         $a6,16($s1)
    daddu      $a7,$a7,$t0
    sw         $a6,0($a7)
.L00002d24:
    li         $t1,1
    bne        $a0, $t1, .L00002d50
    nop
    ld         $s1,72($s0)
    beqz       $s1, .L00002d60
    move       $a0,$s0
    move       $a1,$s1
    jal        rrmInvalidateRN
    li         $a2,16
    beqz       $v0, .L00002d68
    nop
.L00002d50:
    b          .L00002c7c
    move       $v0,$zero
.L00002d58:
    b          .L00002c7c
    negu       $v0,$v0
.L00002d60:
    b          .L00002c7c
    li         $v0,14
.L00002d68:
    ld         $t2,32($s0)
    ld         $t2,152($t2)
    move       $a1,$s1
    jalr       $t2
    ld         $a0,40($s0)
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00002d50
    nop

glabel RRM_GetDisplayModes
    ld         $a7,40($a0)
    lw         $a5,88($a7)
    lw         $at,16($a2)
    sll        $a5,$a5,0x2
    sltu       $at,$at,$a5
    move       $a6,$a2
    daddiu     $sp,$sp,-16
    li         $v0,22
    beqz       $at, .L00002dbc
    sd         $ra,0($sp)
.L00002db4:
    jr         $ra
    daddiu     $sp,$sp,16
.L00002dbc:
    ld         $a0,96($a7)
    ld         $a1,8($a2)
    jal        copyout
    move       $a2,$a5
    beqz       $v0, .L00002ddc
    ld         $ra,0($sp)
    b          .L00002db4
    li         $v0,14
.L00002ddc:
    b          .L00002db4
    move       $v0,$zero

glabel rrmValidateMyRetrace
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a1
    sd         $s1,8($sp)
    daddiu     $s1,$a1,104
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $a0,$s1
    lhu        $at,4($s0)
    lhu        $v1,6($s0)
    xor        $v1,$v1,$at
    and        $at,$at,$v1
    andi       $at,$at,0x10
    beqz       $at, .L00002e4c
    move       $a0,$s1
    daddiu     $a0,$s0,48
    li         $a1,25
    move       $a2,$s1
    jal        sv_wait
    move       $a3,$v0
    move       $v0,$zero
.L00002e38:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002e4c:
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L00002e38
    move       $v0,$zero

glabel rrmValidateRetrace
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,104
    jal        mutex_spinlock
    sd         $a0,24($sp)
    lhu        $at,6($s8)
    sd         $v0,16($sp)
    daddiu     $a0,$s8,48
    ori        $at,$at,0x10
    jal        sv_signal
    sh         $at,6($s8)
    ld         $s8,8($sp)
    ld         $a0,24($sp)
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel rrmAllocPcxid
    ld         $a6,40($a0)
    lw         $a4,20($a6)
    li         $at,1
    beq        $a4, $at, .L00002fb4
    li         $t0,-1
    lh         $a7,80($a1)
    beq        $a7, $t0, .L00002ef8
    nop
    ld         $a4,8($a0)
    ld         $a4,8($a4)
    xor        $a4,$a4,$a0
    sltiu      $a4,$a4,1
    sltiu      $a4,$a4,1
    bnez       $a4, .L00002f84
.L00002ee4:
    move       $v0,$zero
    jr         $ra
    nop
.L00002ef0:
    jr         $ra
    nop
.L00002ef8:
    blez       $a4, .L00002f44
    nop
    ld         $a5,24($a6)
    move       $v0,$zero
    dsll       $t1,$v0,0x3
    daddu      $t1,$a5,$t1
.L00002f10:
    ld         $t1,0($t1)
    beqz       $t1, .L00002f38
    nop
    addiu      $v0,$v0,1
    slt        $t2,$v0,$a4
    dsll       $t1,$v0,0x3
    bnez       $t2, .L00002f10
    daddu      $t1,$a5,$t1
    b          .L00002f48
    ld         $a4,8($a0)
.L00002f38:
    dsll32     $a7,$v0,0x10
    dsra32     $a7,$a7,0x10
    sh         $a7,80($a1)
.L00002f44:
    ld         $a4,8($a0)
.L00002f48:
    ld         $a4,8($a4)
    xor        $a4,$a4,$a0
    sltiu      $a4,$a4,1
    sltiu      $a4,$a4,1
    bnez       $a4, .L00002fbc
    move       $v0,$zero
.L00002f60:
    beqz       $a4, .L00002ef0
    nop
.L00002f68:
    ld         $a7,32($a6)
    sd         $a1,96($a7)
    ld         $a5,32($a6)
    sd         $zero,96($a1)
    sd         $a5,88($a1)
    jr         $ra
    sd         $a1,32($a6)
.L00002f84:
    ld         $v0,96($a1)
    beqz       $v0, .L00002fe8
    nop
    ld         $t0,88($a1)
    sd         $t0,88($v0)
    ld         $a0,88($a1)
    beqz       $a0, .L00002fd8
    ld         $v0,96($a1)
    beqz       $a4, .L00002ee4
    sd         $v0,96($a0)
.L00002fac:
    b          .L00002f68
    move       $v0,$zero
.L00002fb4:
    jr         $ra
    ld         $v0,8($a6)
.L00002fbc:
    beq        $a7, $t0, .L00003008
    nop
    ld         $t1,32($a6)
    beqz       $t1, .L00002ff0
    nop
    b          .L00002f60
    move       $v0,$zero
.L00002fd8:
    beqz       $a4, .L00002ee4
    sd         $v0,40($a6)
    b          .L00002fac
    nop
.L00002fe8:
    jr         $ra
    move       $v0,$zero
.L00002ff0:
    sd         $a1,40($a6)
    sd         $a1,32($a6)
    sd         $zero,88($a1)
    sd         $zero,96($a1)
    jr         $ra
    move       $v0,$zero
.L00003008:
    ld         $v0,40($a6)
    ld         $t3,96($v0)
    sd         $t3,40($a6)
    sd         $zero,88($t3)
    lh         $t2,80($v0)
    b          .L00002f60
    sh         $t2,80($a1)

glabel rrmValidateMyPcx
    daddiu     $sp,$sp,-64
    sd         $s4,32($sp)
    sd         $s3,48($sp)
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s2,0($sp)
    daddiu     $s2,$a1,104
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    move       $a1,$v0
    lhu        $s3,4($s0)
    lhu        $s4,6($s0)
    jal        mutex_spinunlock
    move       $a0,$s2
    xor        $at,$s3,$s4
    and        $at,$s3,$at
    andi       $at,$at,0x1
    beqz       $at, .L0000317c
    move       $s4,$zero
    ld         $a5,40($s1)
    lw         $a4,80($a5)
    addiu      $a4,$a4,1
    sw         $a4,80($a5)
    ld         $a3,40($s1)
    ld         $a3,8($a3)
    beqz       $a3, .L000030a4
    nop
    bne        $a3, $s0, .L00003230
    move       $a0,$s1
.L000030a4:
    lh         $a5,80($s0)
.L000030a8:
    li         $v0,-1
    beq        $a5, $v0, .L000031a0
    move       $a0,$s1
    jal        rrmAllocPcxid
    move       $a1,$s0
    ld         $a6,32($s1)
    ld         $a6,128($a6)
    ld         $a0,40($s1)
    move       $a1,$s0
    jalr       $a6
    ld         $a2,8($a0)
    li         $s4,-1
    slti       $a7,$v0,0
    move       $s3,$zero
    movz       $s4,$zero,$a7
.L000030e4:
    lh         $t3,-15328($zero)
    ld         $t2,0($gp)
    dsll       $t3,$t3,0x5
    daddu      $t2,$t2,$t3
    lw         $t1,8($t2)
    addiu      $t1,$t1,1
    sw         $t1,8($t2)
    ld         $t0,40($s1)
    move       $a0,$s2
    jal        mutex_spinlock
    sd         $s0,8($t0)
    lhu        $t8,6($s0)
    move       $a1,$v0
    move       $a0,$s2
    ori        $t8,$t8,0x1
    jal        mutex_spinunlock
    sh         $t8,6($s0)
    ld         $ra,40($s1)
    lw         $t9,80($ra)
    addiu      $t9,$t9,-1
    beqz       $s3, .L0000317c
    sw         $t9,80($ra)
    li         $at,1
    jal        splhi
    sb         $at,83($s0)
    ld         $a1,32($s1)
    ld         $a1,192($a1)
    beqz       $a1, .L00003160
    move       $s0,$v0
    jalr       $a1
    move       $a0,$s1
.L00003160:
    ld         $a1,40($s1)
    sd         $zero,72($a1)
    ld         $a0,40($s1)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s0
.L0000317c:
    ld         $s2,0($sp)
    ld         $s3,48($sp)
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    ld         $s0,24($sp)
    move       $v0,$s4
    ld         $s4,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000031a0:
    lbu        $a2,83($s0)
    beqz       $a2, .L00003244
    move       $s3,$zero
.L000031ac:
    move       $a0,$s1
.L000031b0:
    jal        rrmAllocPcxid
    move       $a1,$s0
    ld         $a0,40($s1)
    ld         $a6,32($s1)
    ld         $a3,8($a0)
    beqz       $v0, .L000031f4
    ld         $a6,120($a6)
    move       $a1,$v0
    sd         $v0,40($sp)
    jalr       $a6
    move       $a2,$s0
    ld         $t0,40($sp)
    slti       $a7,$v0,0
    li         $s4,-1
    sh         $s4,80($t0)
    b          .L0000320c
    movz       $s4,$zero,$a7
.L000031f4:
    move       $a1,$zero
    jalr       $a6
    move       $a2,$s0
    li         $s4,-1
    slti       $t1,$v0,0
    movz       $s4,$zero,$t1
.L0000320c:
    lh         $v0,80($s0)
    li         $t2,-1
    beq        $v0, $t2, .L000030e4
    dsll       $t8,$v0,0x3
    ld         $t3,40($s1)
    ld         $t3,24($t3)
    daddu      $t3,$t3,$t8
    b          .L000030e4
    sd         $s0,0($t3)
.L00003230:
    move       $a1,$a3
    jal        rrmInvalidateRN
    li         $a2,1
    b          .L000030a8
    lh         $a5,80($s0)
.L00003244:
    lhu        $t8,4($s0)
    andi       $t8,$t8,0x2
    beqz       $t8, .L00003270
    move       $s3,$zero
    ld         $a1,120($s0)
    li         $a0,2
    move       $a2,$s1
    jal        invalidate_pane
    lw         $a1,4($a1)
    b          .L000031ac
    li         $s3,1
.L00003270:
    b          .L000031b0
    move       $a0,$s1

glabel RRM_ValidateClip
    daddiu     $sp,$sp,-48
    ld         $v0,40($a0)
    sd         $s1,16($sp)
    ld         $at,72($v0)
    sd         $s0,24($sp)
    move       $s0,$a0
    move       $s1,$a2
    sd         $s2,8($sp)
    move       $s2,$zero
    bne        $at, $a0, .L00003324
    sd         $ra,32($sp)
.L000032a4:
    lw         $a2,80($v0)
.L000032a8:
    addiu      $a2,$a2,1
    sw         $a2,80($v0)
    ld         $a1,40($s0)
    ld         $a1,8($a1)
    beqz       $a1, .L000032e8
    lw         $a0,4($s1)
    lw         $a3,20($a1)
    bne        $a3, $a0, .L000032ec
    move       $a1,$s0
    jal        RRM_CheckValidFault
    move       $a0,$s0
    bltz       $v0, .L00003368
    nop
.L000032dc:
    bnez       $s2, .L000032f8
    lw         $a0,0($sp)
    lw         $a0,4($s1)
.L000032e8:
    move       $a1,$s0
.L000032ec:
    jal        validate_pane_clip
    move       $a2,$s1
    move       $a0,$v0
.L000032f8:
    ld         $s2,8($sp)
    ld         $s1,16($sp)
    ld         $a5,40($s0)
    ld         $ra,32($sp)
    lw         $a4,80($a5)
    move       $v0,$a0
    ld         $s0,24($sp)
    daddiu     $sp,$sp,48
    addiu      $a4,$a4,-1
    jr         $ra
    sw         $a4,80($a5)
.L00003324:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a6,40($s0)
    sd         $s0,72($a6)
    ld         $v0,40($s0)
    lw         $a5,104($v0)
    beqz       $a5, .L000032a4
    nop
.L00003348:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $a7,104($v0)
    bnez       $a7, .L00003348
    nop
    b          .L000032a8
    lw         $a2,80($v0)
.L00003368:
    li         $s2,1
    li         $t0,14
    b          .L000032dc
    sw         $t0,0($sp)

glabel RRM_ValidFault
    daddiu     $sp,$sp,-80
    sd         $ra,64($sp)
    sd         $s1,56($sp)
    lw         $a2,4($a0)
    sd         $s2,48($sp)
    sd         $s0,16($sp)
    andi       $a2,$a2,0x20
    move       $s0,$a0
    sd         $s4,24($sp)
    move       $s4,$a1
    beqz       $a2, .L00003470
    sd         $s3,40($sp)
.L000033a8:
    ld         $v0,40($s0)
    ld         $a3,72($v0)
    bne        $a3, $s0, .L00003444
    li         $a1,537
.L000033b8:
    bnez       $a2, .L0000341c
    nop
    ld         $v0,8($s0)
    ld         $v0,8($v0)
    bnez       $v0, .L000034e4
    ld         $s1,0($sp)
    b          .L000034c4
    li         $v0,-1
.L000033d8:
    bnez       $v1, .L000035b8
    move       $a1,$s0
.L000033e0:
    ld         $v0,40($s0)
    ld         $a0,72($v0)
    bne        $a0, $s0, .L00003440
    andi       $a1,$s2,0x1
    bnez       $a1, .L00003414
    nop
    move       $a0,$s0
    jal        rrmValidateMyPcx
    move       $a1,$s1
    bltz       $v0, .L000035d4
    nop
    ld         $v0,40($s0)
    ld         $a0,72($v0)
.L00003414:
    bne        $a0, $s0, .L00003444
    li         $a1,537
.L0000341c:
    jal        ddv_lock
    ld         $a0,48($s0)
    ld         $a2,40($s0)
    ld         $a2,72($a2)
    beq        $a2, $s0, .L000035fc
    nop
    jal        ddv_unlock
    ld         $a0,48($s0)
    ld         $v0,40($s0)
.L00003440:
    li         $a1,537
.L00003444:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s0)
    sd         $s0,72($a4)
    ld         $a3,40($s0)
    lw         $a3,104($a3)
    bnez       $a3, .L000035dc
    nop
    lw         $a2,4($s0)
.L00003468:
    b          .L000033b8
    andi       $a2,$a2,0x20
.L00003470:
    ld         $s1,72($a0)
    beqz       $s1, .L00003484
    nop
    b          .L000033a8
    sd         $s1,0($sp)
.L00003484:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    ld         $a2,-30704($gp)
    li         $a1,4
    li         $a0,2132
    jal        cmn_err_tag
    daddiu     $a2,$a2,496
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    li         $v0,-1
.L000034c4:
    ld         $s1,56($sp)
    ld         $s2,48($sp)
    ld         $ra,64($sp)
    ld         $s3,40($sp)
    ld         $s0,16($sp)
    ld         $s4,24($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000034e4:
    lw         $a3,20($s1)
    bnez       $a3, .L00003508
    daddiu     $a0,$s1,104
    beq        $v0, $s0, .L00003508
    daddiu     $a0,$s1,104
    lhu        $a4,4($s1)
    andi       $a4,$a4,0x2
    bnez       $a4, .L000036a8
    daddiu     $a0,$s1,104
.L00003508:
    jal        mutex_spinlock
    sd         $a0,8($sp)
    ld         $a5,8($s0)
    ld         $a5,8($a5)
    sd         $v0,32($sp)
    lhu        $s2,6($s1)
    beq        $a5, $s0, .L00003548
    lhu        $s3,4($s1)
    andi       $a6,$s3,0x2
    beqz       $a6, .L0000354c
    ld         $a0,8($sp)
    jal        pane_validmask
    ld         $a0,120($s1)
    andi       $a7,$s3,0x40
    bnez       $a7, .L0000359c
    or         $s2,$v0,$s2
.L00003548:
    ld         $a0,8($sp)
.L0000354c:
    jal        mutex_spinunlock
    ld         $a1,32($sp)
    and        $t0,$s3,$s2
    beq        $s3, $t0, .L0000341c
    andi       $t1,$s2,0x10
    bnez       $t1, .L00003570
    move       $a0,$s0
    jal        rrmValidateMyRetrace
    move       $a1,$s1
.L00003570:
    ld         $v0,40($s0)
    ld         $t2,72($v0)
    bne        $t2, $s0, .L00003440
    move       $a1,$s0
    ld         $a0,120($s1)
    jal        validate_my_pane_resources
    move       $a2,$s3
    bgez       $v0, .L000033d8
    andi       $v1,$s3,0x40
    b          .L000034c4
    li         $v0,-1
.L0000359c:
    jal        pane_validmask
    ld         $a0,128($s1)
    li         $t8,-65
    andi       $t3,$v0,0x40
    and        $s2,$s2,$t8
    b          .L00003548
    or         $s2,$t3,$s2
.L000035b8:
    ld         $a0,128($s1)
    jal        validate_my_pane_resources
    move       $a2,$s3
    bgez       $v0, .L000033e0
    nop
    b          .L000034c4
    li         $v0,-1
.L000035d4:
    b          .L000034c4
    li         $v0,-1
.L000035dc:
    jal        us_delay
    li         $a0,2
    ld         $t9,40($s0)
    lw         $t9,104($t9)
    bnez       $t9, .L000035dc
    nop
    b          .L00003468
    lw         $a2,4($s0)
.L000035fc:
    ld         $a1,96($s0)
    beqz       $a1, .L00003674
    lw         $v0,4($s0)
    andi       $ra,$v0,0x8
    bnez       $ra, .L00003674
    nop
    jal        mutex_spinlock
    daddiu     $a0,$a1,16
    lw         $at,4($s0)
    andi       $at,$at,0x20
    beqz       $at, .L00003634
    move       $s2,$v0
    b          .L0000363c
    li         $a2,-1
.L00003634:
    ld         $a2,0($sp)
    lh         $a2,80($a2)
.L0000363c:
    ld         $a3,32($s0)
    ld         $a3,96($a3)
    move       $a0,$s0
    jalr       $a3
    move       $a1,$s4
    ld         $a0,96($s0)
    move       $s1,$v0
    move       $a1,$s2
    jal        mutex_spinunlock
    daddiu     $a0,$a0,16
.L00003664:
    jal        ddv_unlock
    ld         $a0,48($s0)
    b          .L000034c4
    move       $v0,$s1
.L00003674:
    andi       $a1,$v0,0x20
    beqz       $a1, .L000036a0
    ld         $a2,0($sp)
    li         $a2,-1
.L00003684:
    ld         $a3,32($s0)
    ld         $a3,96($a3)
    move       $a0,$s0
    jalr       $a3
    move       $a1,$s4
    b          .L00003664
    move       $s1,$v0
.L000036a0:
    b          .L00003684
    lh         $a2,80($a2)
.L000036a8:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    ld         $a1,-30704($gp)
    move       $a2,$v0
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,560
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L000034c4
    li         $v0,-1

glabel RRM_CheckValidFault
    lw         $a4,4($a0)
    andi       $at,$a4,0x4
    daddiu     $sp,$sp,-16
    beqz       $at, .L00003710
    andi       $a3,$a4,0x1
.L000036fc:
    move       $v0,$zero
    beqz       $a3, .L00003728
    sd         $ra,0($sp)
.L00003708:
    jr         $ra
    daddiu     $sp,$sp,16
.L00003710:
    ld         $v0,8($a0)
    ld         $v0,8($v0)
    bnez       $v0, .L000036fc
    li         $v0,-1
    b          .L00003708
    nop
.L00003728:
    jal        RRM_ValidFault
    move       $a1,$zero
    bltz       $v0, .L00003740
    ld         $ra,0($sp)
    b          .L00003708
    move       $v0,$zero
.L00003740:
    b          .L00003708
    li         $v0,-1

glabel rrmSwapWait
    daddiu     $sp,$sp,-48
    sd         $ra,40($sp)
    sd         $s1,8($sp)
    ld         $s1,72($a0)
    sd         $s0,32($sp)
    move       $s0,$a0
    daddiu     $a0,$s1,48
    jal        mutex_spinlock
    sd         $a0,16($sp)
    ld         $t0,120($s0)
    lw         $at,164($s1)
    lw         $t0,28($t0)
    addiu      $at,$at,1
    sltu       $at,$at,$t0
    sd         $v0,24($sp)
    beqz       $at, .L00003810
    daddiu     $a7,$s1,168
    ld         $a6,168($s1)
    beqz       $a6, .L000037c4
    nop
    b          .L000037b4
    ld         $t1,120($a6)
.L000037a0:
    daddiu     $a7,$a6,168
    ld         $a6,168($a6)
    beqz       $a6, .L000037c4
    nop
    ld         $t1,120($a6)
.L000037b4:
    lw         $t1,28($t1)
    sltu       $t1,$t1,$t0
    bnez       $t1, .L000037a0
    nop
.L000037c4:
    sd         $a6,168($s0)
    daddiu     $a0,$sp,0
    jal        hold_nonfatalsig
    sd         $s0,0($a7)
    ld         $s1,8($sp)
    daddiu     $a0,$s0,48
    ld         $a2,16($sp)
    li         $a1,30
    jal        sv_wait_sig
    ld         $a3,24($sp)
    bltz       $v0, .L00003828
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    move       $v0,$zero
.L00003800:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003810:
    ld         $s1,8($sp)
    ld         $a0,16($sp)
    jal        mutex_spinunlock
    ld         $a1,24($sp)
    b          .L00003800
    move       $v0,$zero
.L00003828:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    b          .L00003800
    li         $v0,-1

glabel RRM_SwapBuf
    daddiu     $sp,$sp,-48
    sd         $s3,0($sp)
    sd         $s1,24($sp)
    sd         $s0,16($sp)
    move       $s0,$a1
    sd         $s2,32($sp)
    move       $s2,$a2
    move       $s1,$a0
    ld         $s3,40($a0)
    sd         $ra,8($sp)
    jal        rrmGetResourceMask
    move       $a0,$a1
    andi       $at,$v0,0x8
    beqz       $at, .L00003ab8
    move       $a0,$s1
    lw         $v0,160($s3)
.L00003878:
    beqz       $v0, .L000038d4
    nop
    ld         $v0,120($s0)
    lw         $v1,24($v0)
    beqz       $v1, .L000038d4
    nop
    lw         $a0,164($s3)
    lw         $a1,28($v0)
    addiu      $a0,$a0,1
    sltu       $a0,$a0,$a1
    beqz       $a0, .L000038d4
    nop
    jal        rrmSwapWait
    move       $a0,$s0
    beqz       $v0, .L000038d4
    li         $v0,4
.L000038b8:
    ld         $s3,0($sp)
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000038d4:
    jal        RRM_CheckValidFault
    move       $a0,$s1
    bltz       $v0, .L00003acc
    nop
    ld         $v0,120($s0)
    lw         $a1,4($v0)
    beqz       $a1, .L00003a50
    nop
.L000038f4:
    lw         $a3,20($v0)
    sw         $a3,28($s0)
    lw         $a2,4($s1)
    andi       $a2,$a2,0x8
    beqz       $a2, .L00003a68
    nop
    lh         $a5,18($v0)
    xori       $a5,$a5,0x1
    sh         $a5,18($v0)
    ld         $a4,120($s0)
    lh         $a4,18($a4)
    beqz       $a4, .L00003a98
    lw         $a0,8($s2)
    ori        $a0,$a0,0x4
    sw         $a0,8($s2)
.L00003930:
    ld         $v0,120($s0)
.L00003934:
    sw         $a0,32($v0)
    lw         $a1,28($s0)
    li         $a6,255
    andi       $a1,$a1,0xff
    beq        $a1, $a6, .L00003a80
    nop
.L0000394c:
    ld         $a2,40($s1)
    lw         $a3,88($a2)
    slt        $a3,$a1,$a3
    beqz       $a3, .L00003974
    dsll       $a6,$a1,0x2
    ld         $a5,96($a2)
    lw         $a4,8($s2)
    daddu      $a5,$a5,$a6
    sw         $a4,0($a5)
    ld         $a2,40($s1)
.L00003974:
    lw         $t0,80($a2)
    addiu      $t0,$t0,1
    sw         $t0,80($a2)
    ld         $a7,120($s0)
    ld         $a7,160($a7)
    bnez       $a7, .L00003a3c
    ld         $a0,-30720($gp)
    ld         $s3,-30720($gp)
.L00003994:
    li         $a0,4
    lw         $a1,20($s0)
    jal        invalidate_pane
    move       $a2,$s1
    ld         $t1,32($s1)
    ld         $t1,136($t1)
    lw         $a3,4($s2)
    lw         $a2,28($s0)
    move       $a1,$s0
    jalr       $t1
    ld         $a0,40($s1)
    ld         $a2,40($s1)
    lw         $a5,80($a2)
    move       $s2,$v0
    beqz       $v0, .L000039fc
    addiu      $a5,$a5,-1
    sw         $a5,80($a2)
    ld         $a0,120($s0)
    jal        validate_pane_buffer
    move       $a1,$s1
    ld         $a6,120($s0)
    ld         $a6,160($a6)
    bnez       $a6, .L00003a70
    nop
.L000039f4:
    b          .L000038b8
    move       $v0,$s2
.L000039fc:
    sw         $a5,80($a2)
    ld         $a7,120($s0)
    ld         $a7,160($a7)
    bnez       $a7, .L00003aa8
    nop
.L00003a10:
    jal        rrmUnMapGfx
    move       $a0,$s1
    lh         $t2,-15328($zero)
    ld         $t1,0($gp)
    dsll       $t2,$t2,0x5
    daddu      $t1,$t1,$t2
    lw         $t0,20($t1)
    move       $v0,$zero
    addiu      $t0,$t0,1
    b          .L000038b8
    sw         $t0,20($t1)
.L00003a3c:
    li         $a1,25
    jal        psema
    daddiu     $a0,$a0,16
    b          .L00003994
    ld         $s3,-30720($gp)
.L00003a50:
    lw         $a1,4($s1)
    andi       $a1,$a1,0x8
    beqz       $a1, .L000038f4
    nop
    b          .L000038b8
    move       $v0,$zero
.L00003a68:
    b          .L00003934
    lw         $a0,8($s2)
.L00003a70:
    jal        vsema
    daddiu     $a0,$s3,16
    b          .L000039f4
    nop
.L00003a80:
    ld         $a2,120($s0)
    ld         $a2,160($a2)
    bnez       $a2, .L0000394c
    nop
    b          .L000038b8
    move       $v0,$zero
.L00003a98:
    li         $a3,-5
    and        $a0,$a0,$a3
    b          .L00003930
    sw         $a0,8($s2)
.L00003aa8:
    jal        vsema
    daddiu     $a0,$s3,16
    b          .L00003a10
    nop
.L00003ab8:
    move       $a1,$s0
    jal        rrmSetResourceMask
    ori        $a2,$v0,0x8
    b          .L00003878
    lw         $v0,160($s3)
.L00003acc:
    b          .L000038b8
    li         $v0,14

glabel rrmSwapUnGroup
    ld         $a6,160($a1)
    lw         $a5,4($a6)
    ld         $a3,40($a0)
    daddiu     $sp,$sp,-16
    move       $a4,$a1
    beqz       $a5, .L00003afc
    sd         $ra,0($sp)
    lbu        $at,176($a1)
    beqz       $at, .L00003bb8
    addiu      $a0,$a5,-1
.L00003afc:
    ld         $a5,168($a1)
    sd         $zero,160($a1)
    beq        $a5, $a1, .L00003b1c
    move       $a0,$a5
.L00003b0c:
    move       $a4,$a0
    ld         $a0,168($a0)
    bne        $a0, $a1, .L00003b0c
    nop
.L00003b1c:
    sd         $a5,168($a4)
    lw         $v0,0($a6)
    addiu      $v0,$v0,-1
    move       $a1,$zero
    bnez       $v0, .L00003b50
    sw         $v0,0($a6)
    lw         $a4,176($a3)
    beqz       $a4, .L00003b48
    nop
    b          .L00003bc0
    dsll       $a7,$a1,0x3
.L00003b48:
    jal        kern_free
    move       $a0,$a6
.L00003b50:
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00003b5c:
    sltu       $v1,$a1,$a4
.L00003b60:
    dsll       $a7,$a1,0x3
    beqz       $v1, .L00003b48
    addiu      $a1,$a1,1
    ld         $a5,184($a3)
.L00003b70:
    daddu      $a5,$a5,$a7
    ld         $a0,0($a5)
    bne        $a0, $a6, .L00003b8c
    sltu       $t0,$a1,$a4
    sd         $zero,0($a5)
    lw         $a4,176($a3)
    sltu       $t0,$a1,$a4
.L00003b8c:
    dsll       $a7,$a1,0x3
    beqz       $t0, .L00003b48
    addiu      $a1,$a1,1
    ld         $a5,184($a3)
    daddu      $a5,$a5,$a7
    ld         $t1,0($a5)
    bne        $t1, $a6, .L00003b60
    sltu       $v1,$a1,$a4
    sd         $zero,0($a5)
    b          .L00003b5c
    lw         $a4,176($a3)
.L00003bb8:
    b          .L00003afc
    sw         $a0,4($a6)
.L00003bc0:
    addiu      $a1,$a1,1
    b          .L00003b70
    ld         $a5,184($a3)

glabel RRM_SwapUnGroup
    daddiu     $sp,$sp,-32
    sd         $s1,0($sp)
    move       $s1,$a0
    ld         $a0,-30720($gp)
    li         $a1,25
    sd         $s0,16($sp)
    move       $s0,$a2
    sd         $ra,8($sp)
    jal        psema
    daddiu     $a0,$a0,16
    lw         $a0,0($s0)
    jal        clip2pane
    move       $a1,$s1
    beqz       $v0, .L00003c14
    li         $s0,2
    ld         $a1,160($v0)
    bnez       $a1, .L00003c38
    li         $s0,15
.L00003c14:
    ld         $a0,-30720($gp)
    ld         $s1,0($sp)
    jal        vsema
    daddiu     $a0,$a0,16
    ld         $ra,8($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003c38:
    move       $a0,$s1
    jal        rrmSwapUnGroup
    move       $a1,$v0
    b          .L00003c14
    move       $s0,$zero

glabel RRM_SwapGroup
    daddiu     $sp,$sp,-48
    sd         $a2,8($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    lw         $a0,0($a2)
    sd         $s0,32($sp)
    sd         $ra,16($sp)
    jal        clip2pane
    move       $a1,$s1
    li         $a5,2
    beqz       $v0, .L00003d40
    move       $s0,$v0
    ld         $v0,160($v0)
    bnez       $v0, .L00003d2c
    ld         $a0,8($sp)
.L00003c88:
    lw         $a0,4($a0)
    beqz       $a0, .L00003d54
    nop
    jal        clip2pane
    move       $a1,$s1
    beqz       $v0, .L00003d48
    move       $s1,$v0
    li         $a5,15
    ld         $a0,160($v0)
    beqz       $a0, .L00003d7c
    nop
    ld         $a2,88($v0)
    ld         $a1,88($s0)
    beq        $a1, $a2, .L00003ccc
    li         $a5,6
    b          .L00003d18
    ld         $ra,16($sp)
.L00003ccc:
    sd         $a0,0($sp)
    ld         $a0,-30720($gp)
.L00003cd4:
    li         $a1,25
    jal        psema
    daddiu     $a0,$a0,16
    ld         $a0,-30720($gp)
    ld         $a2,0($sp)
    sd         $a2,160($s0)
    ld         $a1,168($s1)
    sb         $zero,176($s0)
    sd         $a1,168($s0)
    sd         $s0,168($s1)
    lw         $a1,0($a2)
    daddiu     $a0,$a0,16
    addiu      $a1,$a1,1
    jal        vsema
    sw         $a1,0($a2)
    move       $a5,$zero
    ld         $ra,16($sp)
.L00003d18:
    move       $v0,$a5
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003d2c:
    move       $a0,$s1
    jal        rrmSwapUnGroup
    move       $a1,$s0
    b          .L00003c88
    ld         $a0,8($sp)
.L00003d40:
    b          .L00003d18
    ld         $ra,16($sp)
.L00003d48:
    li         $a5,9
    b          .L00003d18
    ld         $ra,16($sp)
.L00003d54:
    move       $s1,$s0
    sd         $s0,168($s0)
    jal        kern_malloc
    li         $a0,12
    move       $a0,$v0
    sd         $v0,0($sp)
    jal        bzero
    li         $a1,12
    b          .L00003cd4
    ld         $a0,-30720($gp)
.L00003d7c:
    b          .L00003d18
    ld         $ra,16($sp)

glabel RRM_SwapReady
    daddiu     $sp,$sp,-48
    sd         $s2,0($sp)
    ld         $s2,40($a0)
    lw         $at,4($a2)
    lw         $v0,176($s2)
    sd         $s3,24($sp)
    sd         $s0,8($sp)
    sltu       $at,$at,$v0
    li         $a5,37
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a2
    bnez       $at, .L00003ddc
    sd         $ra,32($sp)
.L00003dbc:
    ld         $s3,24($sp)
.L00003dc0:
    ld         $ra,32($sp)
    ld         $s2,0($sp)
    move       $v0,$a5
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003ddc:
    lw         $a0,0($a2)
    jal        clip2pane
    move       $a1,$s0
    li         $a5,2
    beqz       $v0, .L00003e60
    move       $s3,$v0
    ld         $v1,88($v0)
    beq        $v1, $s2, .L00003e08
    li         $a5,6
    b          .L00003dc0
    ld         $s3,24($sp)
.L00003e08:
    ld         $v0,160($v0)
    beqz       $v0, .L00003ee4
    nop
    ld         $a2,40($s0)
    ld         $a0,72($a2)
    bne        $a0, $s0, .L00003e7c
    li         $a1,537
.L00003e24:
    lw         $a1,8($s1)
    ld         $a0,184($s2)
    beqz       $a1, .L00003ebc
    lw         $a1,4($s1)
    dsll32     $a5,$a1,0x0
    dsrl       $a5,$a5,0x1d
    daddu      $a5,$a0,$a5
    ld         $a2,0($a5)
    beqz       $a2, .L00003e70
    nop
    bne        $a2, $v0, .L00003e68
    li         $a5,16
    li         $a5,17
    b          .L00003dc0
    ld         $s3,24($sp)
.L00003e60:
    b          .L00003dc0
    ld         $s3,24($sp)
.L00003e68:
    b          .L00003dc0
    ld         $s3,24($sp)
.L00003e70:
    sd         $v0,0($a5)
.L00003e74:
    b          .L00003dbc
    move       $a5,$zero
.L00003e7c:
    jal        psema
    daddiu     $a0,$a2,56
    ld         $a7,40($s0)
    sd         $s0,72($a7)
    ld         $a6,40($s0)
    lw         $a6,104($a6)
    beqz       $a6, .L00003eb4
    nop
.L00003e9c:
    jal        us_delay
    li         $a0,2
    ld         $t0,40($s0)
    lw         $t0,104($t0)
    bnez       $t0, .L00003e9c
    nop
.L00003eb4:
    b          .L00003e24
    ld         $v0,160($s3)
.L00003ebc:
    dsll32     $a2,$a1,0x0
    dsrl       $a2,$a2,0x1d
    daddu      $a2,$a0,$a2
    ld         $t1,0($a2)
    beq        $t1, $v0, .L00003edc
    nop
    b          .L00003dbc
    li         $a5,9
.L00003edc:
    b          .L00003e74
    sd         $zero,0($a2)
.L00003ee4:
    b          .L00003dbc
    li         $a5,15

glabel RRM_CushionBuffer
    daddiu     $sp,$sp,-32
    sd         $a2,0($sp)
    sd         $s0,8($sp)
    ld         $s0,40($a0)
    sd         $ra,16($sp)
    move       $a1,$a0
    jal        clip2pane
    lw         $a0,0($a2)
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    beqz       $v0, .L00003f28
    li         $a3,2
    ld         $v1,88($v0)
    beq        $v1, $s0, .L00003f38
    li         $a3,6
.L00003f28:
    move       $v0,$a3
.L00003f2c:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003f38:
    lw         $a5,192($s0)
    beqz       $a5, .L00003f80
    li         $a3,19
    lw         $a0,4($a0)
    lbu        $a4,177($v0)
    beqz       $a0, .L00003f70
    li         $a3,16
    beqz       $a4, .L00003f64
    nop
    b          .L00003f2c
    move       $v0,$a3
.L00003f64:
    sb         $a5,177($v0)
.L00003f68:
    b          .L00003f28
    move       $a3,$zero
.L00003f70:
    beqz       $a4, .L00003f88
    nop
    b          .L00003f28
    li         $a3,2
.L00003f80:
    b          .L00003f2c
    move       $v0,$a3
.L00003f88:
    b          .L00003f68
    sb         $zero,177($v0)

glabel RRM_MGR_SwapBuf
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    sd         $ra,16($sp)
    jal        RRM_CheckValidFault
    move       $s0,$a2
    bltz       $v0, .L0000404c
    nop
    ld         $v0,40($s1)
    lw         $a2,4($s0)
    lw         $at,88($v0)
    slt        $at,$a2,$at
    beqz       $at, .L00003fe0
    dsll       $a1,$a2,0x2
    ld         $a0,96($v0)
    lw         $v1,16($s0)
    daddu      $a0,$a0,$a1
    sw         $v1,0($a0)
    lw         $a2,4($s0)
.L00003fe0:
    ld         $a4,32($s1)
    ld         $a4,168($a4)
    lw         $a1,8($s0)
    lw         $a3,16($s0)
    move       $a0,$s1
    move       $t9, $a4
    jalr       $t9
    lw         $a4,12($s0)
    beqz       $v0, .L0000401c
    move       $a0,$v0
    negu       $v0,$v0
.L00004008:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000401c:
    lw         $a0,8($s0)
    jal        clip2pane
    move       $a1,$s1
    beqz       $v0, .L00004044
    nop
    lw         $a5,16($s0)
    andi       $a5,$a5,0x4
    xori       $a5,$a5,0x4
    sltiu      $a5,$a5,1
    sh         $a5,18($v0)
.L00004044:
    b          .L00004008
    move       $v0,$zero
.L0000404c:
    b          .L00004008
    li         $v0,14

glabel rrmValidateMGRSwapBufSTREAM
    daddiu     $sp,$sp,-64
    beqz       $a0, .L00004094
    sd         $ra,56($sp)
    ld         $a3,8($a0)
    beqz       $a3, .L00004098
    ld         $ra,56($sp)
    sw         $zero,24($sp)
    sw         $zero,20($sp)
    sw         $a1,16($sp)
    li         $v0,3
    sw         $v0,12($sp)
    li         $at,9
    sb         $at,8($sp)
    daddiu     $a0,$sp,0
    jal        GfxIntrMessage
    sd         $a3,0($sp)
.L00004094:
    ld         $ra,56($sp)
.L00004098:
    jr         $ra
    daddiu     $sp,$sp,64

glabel rrmValidateMGRSwapBuf
    daddiu     $sp,$sp,-16
    move       $a3,$a0
    beqz       $a0, .L000040bc
    move       $a7,$a1
    ld         $at,8($a0)
    bnez       $at, .L000040c4
    sd         $ra,0($sp)
.L000040bc:
    jr         $ra
    daddiu     $sp,$sp,16
.L000040c4:
    daddiu     $a0,$gp,0
    li         $a2,-100
    dsll32     $a4,$a1,0x0
    ld         $a1,-30680($gp)
    move       $a5,$zero
    jal        streams_timeout
    dsrl32     $a4,$a4,0x0
    b          .L000040bc
    ld         $ra,0($sp)

glabel rrmGenlockNotifySTREAM
    daddiu     $sp,$sp,-64
    beqz       $a0, .L00004124
    sd         $ra,56($sp)
    ld         $a3,8($a0)
    beqz       $a3, .L00004128
    ld         $ra,56($sp)
    sw         $a1,20($sp)
    sw         $zero,16($sp)
    li         $v0,2
    sw         $v0,12($sp)
    li         $at,12
    sb         $at,8($sp)
    daddiu     $a0,$sp,0
    jal        GfxIntrMessage
    sd         $a3,0($sp)
.L00004124:
    ld         $ra,56($sp)
.L00004128:
    jr         $ra
    daddiu     $sp,$sp,64

glabel rrmGenlockNotify
    daddiu     $sp,$sp,-16
    move       $a3,$a0
    beqz       $a0, .L0000414c
    move       $a7,$a1
    ld         $at,8($a0)
    bnez       $at, .L00004154
    sd         $ra,0($sp)
.L0000414c:
    jr         $ra
    daddiu     $sp,$sp,16
.L00004154:
    daddiu     $a0,$gp,0
    li         $a2,-100
    dsll32     $a4,$a1,0x0
    ld         $a1,-30672($gp)
    move       $a5,$zero
    jal        streams_timeout
    dsrl32     $a4,$a4,0x0
    b          .L0000414c
    ld         $ra,0($sp)

glabel RRM_WaitForRetrace
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    jal        RRM_CheckValidFault
    move       $s1,$a1
    bgez       $v0, .L000041a4
    move       $a0,$s0
    b          .L000041d0
    li         $v0,14
.L000041a4:
    move       $a1,$s1
    jal        rrmInvalidateRN
    li         $a2,16
    ld         $at,32($s0)
    ld         $at,152($at)
    move       $a1,$s1
    jalr       $at
    ld         $a0,40($s0)
    jal        rrmUnMapGfx
    move       $a0,$s0
    move       $v0,$zero
.L000041d0:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel RRM_SetSwapInterval
    lw         $a4,4($a2)
    bltz       $a4, .L00004204
    li         $v0,22
    sw         $a4,32($a1)
    ld         $v0,120($a1)
    lw         $at,4($a2)
    sw         $at,24($v0)
    move       $v0,$zero
.L00004204:
    jr         $ra
    nop

glabel RRM_Message
    daddiu     $sp,$sp,-112
    sd         $s7,96($sp)
    sd         $s1,80($sp)
    sd         $s0,64($sp)
    move       $s0,$a1
    move       $s1,$a2
    sd         $s2,56($sp)
    move       $s2,$a0
    sd         $s5,88($sp)
    daddiu     $s5,$a1,104
    sd         $ra,72($sp)
    jal        mutex_spinlock
    move       $a0,$s5
    ld         $a0,120($s0)
    move       $s7,$v0
    jal        pane_validmask
    sd         $s8,104($sp)
    lhu        $s8,6($s0)
    move       $a0,$s5
    move       $a1,$s7
    jal        mutex_spinunlock
    or         $s8,$v0,$s8
    lw         $a2,4($s1)
    ld         $s5,88($sp)
    and        $a2,$s8,$a2
    ld         $s7,96($sp)
    beqz       $a2, .L000042a4
    sw         $a2,4($s1)
    move       $a0,$s2
    jal        rrmInvalidateRN
    move       $a1,$s0
    ld         $a1,120($s0)
    lw         $a0,4($s1)
    move       $a2,$s2
    jal        invalidate_pane
    lw         $a1,4($a1)
    jal        rrmUnMapGfx
    move       $a0,$s2
.L000042a4:
    ld         $a0,8($s2)
    ld         $a2,8($a0)
    beqz       $a2, .L00004310
    li         $v0,14
    sd         $a0,0($sp)
    lbu        $a4,8($s1)
    sb         $a4,8($sp)
    lw         $v0,12($s1)
    slti       $a3,$v0,11
    bnez       $a3, .L000042d4
    nop
    li         $v0,10
.L000042d4:
    sll        $a2,$v0,0x2
    daddiu     $a1,$sp,16
    daddiu     $a0,$s1,16
    jal        bcopy
    sw         $v0,12($sp)
    jal        GfxMessage
    daddiu     $a0,$sp,0
    move       $v0,$zero
    ld         $s2,56($sp)
.L000042f8:
    ld         $ra,72($sp)
    ld         $s0,64($sp)
    ld         $s1,80($sp)
    ld         $s8,104($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00004310:
    b          .L000042f8
    ld         $s2,56($sp)

glabel RRM_SetVideoSync
    ld         $v0,40($a0)
    lw         $at,4($a2)
    sw         $at,128($v0)
    jr         $ra
    move       $v0,$zero

glabel RRM_GetVideoSync
    daddiu     $sp,$sp,-16
    ld         $at,40($a0)
    move       $a1,$a3
    sd         $ra,0($sp)
    move       $v0,$a2
    move       $a0,$a2
    lw         $at,128($at)
    sw         $at,4($a2)
    jal        copyout
    li         $a2,8
    beqz       $v0, .L00004368
    ld         $ra,0($sp)
    li         $v0,14
.L00004360:
    jr         $ra
    daddiu     $sp,$sp,16
.L00004368:
    b          .L00004360
    move       $v0,$zero

glabel RRM_WaitVideoSync
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $a2,8($sp)
    move       $at,$a2
    lw         $a2,4($a2)
    sd         $a3,16($sp)
    sd         $ra,24($sp)
    jal        rrmWaitVideoSync
    lw         $a3,8($at)
    beqz       $v0, .L000043a8
    ld         $a1,16($sp)
.L0000439c:
    ld         $ra,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000043a8:
    ld         $v0,0($sp)
    ld         $v1,8($sp)
    li         $a2,16
    lw         $v0,152($v0)
    move       $a0,$v1
    jal        copyout
    sw         $v0,12($v1)
    beqz       $v0, .L000043d4
    nop
    b          .L0000439c
    li         $v0,14
.L000043d4:
    b          .L0000439c
    move       $v0,$zero

glabel rrmWaitVideoSync
    daddiu     $sp,$sp,-64
    sd         $s2,48($sp)
    sd         $s3,24($sp)
    li         $v0,22
    sd         $s1,40($sp)
    move       $s1,$a1
    move       $s3,$a2
    sd         $s0,32($sp)
    move       $s0,$a3
    blez       $a2, .L00004418
    ld         $s2,40($a0)
    bltz       $a3, .L00004418
    slt        $at,$a3,$a2
    bnez       $at, .L00004430
    sd         $ra,56($sp)
.L00004418:
    ld         $s3,24($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    ld         $s2,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00004430:
    daddiu     $a0,$s2,48
    jal        mutex_spinlock
    sd         $a0,16($sp)
    sd         $zero,160($s1)
    sw         $s0,148($s1)
    sw         $s3,144($s1)
    ld         $a1,136($s2)
    beqz       $a1, .L0000449c
    sd         $v0,8($sp)
    sd         $a1,160($s1)
    sd         $s1,136($s2)
.L0000445c:
    ld         $s0,8($sp)
    ld         $s2,16($sp)
    jal        hold_nonfatalsig
    daddiu     $a0,$sp,0
    daddiu     $a0,$s1,48
    li         $a1,30
    move       $a2,$s2
    jal        sv_wait_sig
    move       $a3,$s0
    bltz       $v0, .L000044a4
    nop
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $ra,56($sp)
    b          .L00004418
    move       $v0,$zero
.L0000449c:
    b          .L0000445c
    sd         $s1,136($s2)
.L000044a4:
    jal        release_nonfatalsig
    daddiu     $a0,$sp,0
    ld         $ra,56($sp)
    b          .L00004418
    li         $v0,-1

glabel rrmValidateVideoSync
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    sd         $s2,48($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s8,16($sp)
    daddiu     $s8,$a0,48
    sd         $ra,0($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    ld         $at,136($s1)
    sd         $v0,24($sp)
    move       $s0,$at
    sd         $s3,32($sp)
    bnez       $at, .L00004510
    move       $s2,$at
    b          .L00004578
    nop
.L00004500:
    ld         $v0,160($a4)
    move       $s2,$a4
    beqz       $v0, .L00004578
    move       $s0,$v0
.L00004510:
    ld         $v1,64($s0)
    lw         $v1,4($v1)
    andi       $v1,$v1,0x8
    lw         $a6,144($s0)
    move       $a4,$s0
    beqz       $v1, .L00004594
    lw         $a7,148($s0)
    lw         $a5,128($s1)
.L00004530:
    divu       $zero,$a5,$a6
    mfhi       $a0
    bne        $a7, $a0, .L00004500
    teq        $a6,$zero,0x7
    ld         $a1,136($s1)
    bne        $a1, $a4, .L0000455c
    ld         $a6,160($a4)
    move       $s0,$a6
    sd         $a6,136($s1)
    b          .L00004564
    move       $s2,$a6
.L0000455c:
    sd         $a6,160($s2)
    ld         $s0,160($a4)
.L00004564:
    daddiu     $a0,$a4,48
    jal        sv_signal
    sw         $a5,152($a4)
    bnez       $s0, .L00004510
    nop
.L00004578:
    lw         $s3,164($s1)
    ld         $s0,168($s1)
    addiu      $s3,$s3,1
    beqz       $s0, .L000045c8
    move       $s2,$s0
    b          .L000045b4
    ld         $t8,120($s0)
.L00004594:
    b          .L00004530
    lw         $a5,124($s1)
.L0000459c:
    daddiu     $a0,$s2,48
    jal        sv_signal
    sd         $zero,168($s2)
    beqz       $s0, .L000045c8
    move       $s2,$s0
    ld         $t8,120($s0)
.L000045b4:
    lw         $t8,28($t8)
    sltu       $t8,$s3,$t8
    move       $s2,$s0
    beqz       $t8, .L0000459c
    ld         $s0,168($s0)
.L000045c8:
    ld         $s3,32($sp)
    ld         $s0,40($sp)
    sd         $s2,168($s1)
    move       $a0,$s8
    jal        mutex_spinunlock
    ld         $a1,24($sp)
    ld         $ra,0($sp)
    ld         $s2,48($sp)
    ld         $s1,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel RRM_MapClipToSwapbufID
    move       $a1,$a0
    lw         $a0,4($a2)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a2
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    jal        clip2pane
    move       $s1,$a3
    beqz       $v0, .L00004648
    li         $a0,-1
    lw         $at,20($v0)
    bnez       $s1, .L00004650
    sw         $at,8($s0)
.L00004630:
    move       $v0,$zero
.L00004634:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00004648:
    beqz       $s1, .L00004630
    sw         $a0,8($s0)
.L00004650:
    move       $a0,$s0
    move       $a1,$s1
    jal        copyout
    li         $a2,12
    beqz       $v0, .L00004634
    move       $v0,$zero
    b          .L00004634
    li         $v0,14

glabel RRM_Dispatch
    daddiu     $sp,$sp,-144
    sd         $s2,96($sp)
    sd         $s3,104($sp)
    sd         $s6,112($sp)
    sd         $ra,120($sp)
    sd         $s0,88($sp)
    move       $v0,$a3
    sd         $s1,72($sp)
    slti       $at,$a1,1000
    move       $s1,$a0
    move       $s0,$a1
    sd         $s5,80($sp)
    move       $s5,$a2
    bnez       $at, .L00004708
    sd         $s4,128($sp)
    slti       $v1,$a1,1100
    beqz       $v1, .L00004708
    dsll       $t8,$a1,0x2
    ld         $s4,-30664($gp)
    dsubu      $t8,$t8,$a1
    dsll       $t8,$t8,0x3
    daddu      $s4,$s4,$t8
    ld         $a0,-24000($s4)
    beqz       $a0, .L0000470c
    li         $v0,22
    li         $s3,1011
    beq        $a1, $s3, .L00004908
    sd         $a3,64($sp)
    li         $t9,1016
    beq        $a1, $t9, .L00004884
    move       $a0,$a2
    lw         $a2,-23992($s4)
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00004734
    nop
    b          .L0000470c
    li         $v0,14
.L00004708:
    li         $v0,22
.L0000470c:
    ld         $s2,96($sp)
    ld         $s3,104($sp)
    ld         $s6,112($sp)
    ld         $s4,128($sp)
    ld         $ra,120($sp)
    ld         $s1,72($sp)
    ld         $s5,80($sp)
    ld         $s0,88($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00004734:
    ld         $ra,8($s1)
    ld         $ra,8($ra)
    bne        $ra, $s1, .L0000475c
    lw         $s2,-23988($s4)
    beqz       $s2, .L00004760
    li         $v0,1000
    ld         $v0,40($s1)
    ld         $at,72($v0)
    bne        $at, $s1, .L00004980
    li         $a1,537
.L0000475c:
    li         $v0,1000
.L00004760:
    lw         $a0,0($sp)
    beq        $s0, $v0, .L000048bc
    andi       $s6,$a0,0xffff
    li         $v1,1002
    beq        $s0, $v1, .L00004940
    li         $a1,1020
.L00004778:
    beq        $s0, $a1, .L00004968
    li         $a2,1010
    beq        $s0, $a2, .L00004830
    nop
    beq        $s0, $s3, .L00004830
    li         $a3,1004
    beq        $s0, $a3, .L00004830
    li         $a4,1012
    beq        $s0, $a4, .L00004830
    li         $a5,1017
    beq        $s0, $a5, .L00004830
    li         $a6,1013
    beq        $s0, $a6, .L00004830
    li         $a7,1014
    beq        $s0, $a7, .L00004830
    li         $t0,1019
    beq        $s0, $t0, .L00004830
    li         $t1,1018
    beq        $s0, $t1, .L00004830
    andi       $v0,$a0,0xffff
    beqz       $v0, .L000049c0
    lw         $t2,0($gp)
    slt        $t2,$v0,$t2
    beqz       $t2, .L000049c0
    dsll       $t8,$v0,0x2
    dsubu      $t8,$t8,$v0
    dsll       $t8,$t8,0x2
    ld         $s3,-30688($gp)
    dsubu      $t8,$t8,$v0
    dsll       $t8,$t8,0x4
    daddu      $s3,$s3,$t8
    lbu        $t3,82($s3)
    li         $a1,1
    beq        $a1, $t3, .L000049d0
    move       $s0,$s3
    lw         $t9,0($s3)
    bne        $t9, $a0, .L000049d0
    nop
    ld         $ra,8($s1)
    ld         $ra,8($ra)
    beq        $ra, $s1, .L000049e0
    nop
    beqz       $s2, .L00004a44
    nop
    b          .L0000470c
    li         $v0,13
.L00004830:
    beqz       $s2, .L00004978
    move       $s0,$zero
.L00004838:
    ld         $v0,40($s1)
    lw         $at,80($v0)
    addiu      $at,$at,1
    sw         $at,80($v0)
.L00004848:
    ld         $v0,-24000($s4)
    move       $a0,$s1
    move       $a1,$s0
    move       $a3,$s5
    ld         $a4,64($sp)
    jalr       $v0
    daddiu     $a2,$sp,0
    beqz       $s2, .L000048ec
    move       $s3,$v0
    ld         $a0,40($s1)
    lw         $v1,80($a0)
    addiu      $v1,$v1,-1
    sw         $v1,80($a0)
.L0000487c:
    b          .L0000470c
    move       $v0,$s3
.L00004884:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s5
    li         $a6,1
    li         $a5,4
    ld         $a3,-30656($gp)
    lw         $a2,-23992($s4)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L00004734
    nop
    b          .L0000470c
    li         $v0,14
.L000048bc:
    li         $a1,-1
    beq        $a0, $a1, .L000048dc
    nop
    beqz       $s6, .L000049c8
    lw         $a2,0($gp)
    slt        $a2,$s6,$a2
    beqz       $a2, .L000049c8
    nop
.L000048dc:
    beqz       $s2, .L00004a3c
    nop
    b          .L00004838
    move       $s0,$zero
.L000048ec:
    beqz       $s0, .L0000487c
    ld         $a0,-30696($gp)
    dsll       $a1,$s6,0x4
    jal        vsema
    daddu      $a0,$a0,$a1
    b          .L0000487c
    nop
.L00004908:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s5
    li         $a6,1
    li         $a5,4
    ld         $a3,-30648($gp)
    lw         $a2,-23992($s4)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L00004734
    nop
    b          .L0000470c
    li         $v0,14
.L00004940:
    bnez       $s6, .L00004778
    li         $a1,1020
    lw         $a2,4($s1)
    andi       $a2,$a2,0x8
    beqz       $a2, .L00004adc
    nop
    beqz       $s2, .L00004aa8
    nop
    b          .L00004838
    move       $s0,$zero
.L00004968:
    beqz       $s2, .L00004a34
    nop
    b          .L00004838
    move       $s0,$zero
.L00004978:
    b          .L00004848
    move       $s0,$zero
.L00004980:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s1)
    sd         $s1,72($a4)
    ld         $a3,40($s1)
    lw         $a3,104($a3)
    beqz       $a3, .L00004760
    li         $v0,1000
.L000049a0:
    jal        us_delay
    li         $a0,2
    ld         $a5,40($s1)
    lw         $a5,104($a5)
    bnez       $a5, .L000049a0
    nop
    b          .L00004760
    li         $v0,1000
.L000049c0:
    b          .L0000470c
    li         $v0,22
.L000049c8:
    b          .L0000470c
    li         $v0,22
.L000049d0:
    b          .L0000470c
    li         $v0,22
.L000049d8:
    beqz       $a0, .L00004ad4
    nop
.L000049e0:
    bnez       $s2, .L00004838
    nop
    beqz       $s3, .L00004848
    ld         $a0,-30696($gp)
    li         $a1,25
    dsll       $a2,$v0,0x4
    jal        psema
    daddu      $a0,$a0,$a2
    lbu        $a4,82($s3)
    li         $a3,1
    beq        $a3, $a4, .L00004a20
    ld         $a0,-30696($gp)
    lw         $a5,0($s3)
    lw         $a6,0($sp)
    beq        $a5, $a6, .L00004848
    ld         $a0,-30696($gp)
.L00004a20:
    dsll       $a1,$s6,0x4
    jal        vsema
    daddu      $a0,$a0,$a1
    b          .L0000470c
    li         $v0,22
.L00004a34:
    b          .L00004848
    move       $s0,$zero
.L00004a3c:
    b          .L00004848
    move       $s0,$zero
.L00004a44:
    lw         $a2,4($s1)
    andi       $a2,$a2,0x8
    beqz       $a2, .L00004ab0
    nop
    ld         $a0,56($s3)
    beqz       $a0, .L00004ae4
    nop
    lw         $a3,4($a0)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00004a80
    nop
    ld         $a4,40($a0)
    ld         $a5,40($s1)
    beq        $a4, $a5, .L00004a88
    nop
.L00004a80:
    b          .L0000470c
    li         $v0,13
.L00004a88:
    lbu        $a6,84($s3)
    beqz       $a6, .L000049e0
    nop
    ld         $a7,64($s3)
    beq        $a7, $s1, .L000049e0
    nop
    b          .L0000470c
    li         $v0,13
.L00004aa8:
    b          .L00004848
    move       $s0,$zero
.L00004ab0:
    ld         $a0,64($s1)
    beqz       $a0, .L00004ad4
    nop
.L00004abc:
    ld         $t0,0($a0)
    beq        $t0, $s3, .L000049d8
    nop
    ld         $a0,8($a0)
    bnez       $a0, .L00004abc
    nop
.L00004ad4:
    b          .L0000470c
    li         $v0,13
.L00004adc:
    b          .L0000470c
    li         $v0,22
.L00004ae4:
    b          .L0000470c
    li         $v0,22

glabel irix5_to_RRM_ValidateClip
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00004b28
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,56
    bnez       $at, .L00004ba8
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00004b18:
    li         $v1,56
    sw         $v1,4($s0)
    b          .L00004b9c
    move       $v0,$zero
.L00004b28:
    ld         $a0,16($a3)
    lw         $at,0($a0)
    sw         $at,0($a1)
    lw         $t9,4($a0)
    sw         $t9,4($a1)
    lw         $t8,8($a0)
    sw         $t8,8($a1)
    lw         $t3,12($a0)
    sw         $t3,12($a1)
    lw         $t2,16($a0)
    sw         $t2,16($a1)
    lw         $t1,20($a0)
    sw         $t1,20($a1)
    lw         $t0,24($a0)
    sw         $t0,24($a1)
    lwu        $a7,28($a0)
    sd         $a7,32($a1)
    lw         $a6,32($a0)
    sw         $a6,40($a1)
    lw         $a5,36($a0)
    sw         $a5,44($a1)
    lw         $a4,40($a0)
    sw         $a4,48($a1)
    lw         $a3,44($a0)
    sw         $a3,52($a1)
    lw         $a2,48($a0)
    sw         $a2,56($a1)
    lw         $a0,52($a0)
    sw         $a0,60($a1)
.L00004b9c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004ba8:
    jal        kern_malloc
    li         $a0,56
    ld         $ra,8($sp)
    b          .L00004b18
    sd         $v0,16($s0)

glabel irix5_to_RRM_GetDisplayModes
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00004bf8
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,12
    bnez       $at, .L00004c20
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00004be8:
    li         $v1,12
    sw         $v1,4($s0)
    b          .L00004c14
    move       $v0,$zero
.L00004bf8:
    ld         $a0,16($a3)
    lw         $a3,0($a0)
    sw         $a3,0($a1)
    lwu        $a2,4($a0)
    sd         $a2,8($a1)
    lw         $a0,8($a0)
    sw         $a0,16($a1)
.L00004c14:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004c20:
    jal        kern_malloc
    li         $a0,12
    ld         $ra,8($sp)
    b          .L00004be8
    sd         $v0,16($s0)
