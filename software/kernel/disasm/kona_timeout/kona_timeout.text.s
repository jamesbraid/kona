.section .text
.set noat
.set noreorder


glabel kona_timeout_init
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $ra,0($sp)
    jal        spinlock_init
    daddiu     $a0,$a0,5368
    ld         $a1,-30720($gp)
    daddiu     $a0,$s0,5372
    jal        spinlock_init
    daddiu     $a1,$a1,16
    li         $a4,4
    sd         $a4,5416($s0)
    ld         $a2,-30712($gp)
    ld         $a3,-30720($gp)
    ld         $ra,0($sp)
    sd         $a2,5400($s0)
    daddiu     $a3,$a3,32
    sd         $a3,5424($s0)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_timeout_alloc
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    sd         $s0,16($sp)
    move       $s0,$zero
.L0000006c:
    li         $a1,1
    jal        kmem_alloc
    li         $a0,64
    bnez       $v0, .L00000094
    move       $s1,$v0
    jal        us_delay
    li         $a0,10
    addiu      $s0,$s0,1
    sltiu      $at,$s0,10
    bnez       $at, .L0000006c
.L00000094:
    ld         $ra,0($sp)
    ld         $s0,16($sp)
    move       $v0,$s1
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel kona_timeout_free
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        kmem_free
    li         $a1,64
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_timein
    daddiu     $sp,$sp,-48
    sd         $s0,40($sp)
    sd         $s4,16($sp)
    move       $s4,$a1
    sd         $s1,24($sp)
    move       $s1,$a0
    sd         $s2,0($sp)
    daddiu     $s2,$a0,5372
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $s0,5376($s1)
    move       $a1,$v0
    beqz       $s0, .L0000018c
    sd         $s3,32($sp)
    ld         $at,8($s0)
    daddiu     $at,$at,-1
    beqz       $at, .L0000011c
    sd         $at,8($s0)
    beqz       $s4, .L0000018c
    nop
.L0000011c:
    ld         $v0,0($s0)
    move       $a0,$s2
    jal        mutex_spinunlock
    sd         $v0,5376($s1)
    ld         $v1,32($s0)
    jalr       $v1
    nop
    ld         $a3,24($s0)
    ld         $a1,40($s0)
    move       $s3,$v0
    ld         $a2,48($s0)
    move       $a0,$s1
    move       $t9, $a3
    jalr       $t9
    ld         $a3,56($s0)
    jal        splx
    move       $a0,$s3
    jal        kona_timeout_free
    move       $a0,$s0
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $s0,5376($s1)
    beqz       $s0, .L0000018c
    move       $a1,$v0
    ld         $a4,8($s0)
    beqz       $a4, .L0000011c
    nop
    bnez       $s4, .L0000011c
    nop
.L0000018c:
    jal        mutex_spinunlock
    move       $a0,$s2
    ld         $s2,0($sp)
    ld         $s3,32($sp)
    ld         $ra,8($sp)
    ld         $s4,16($sp)
    ld         $s0,40($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_callout
    lh         $v0,-15328($zero)
    ld         $at,-30704($gp)
    dsll       $v0,$v0,0x2
    daddu      $at,$at,$v0
    lw         $at,0($at)
    lw         $a1,0($gp)
    li         $a3,1
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    beqz       $at, .L000001f0
    move       $s0,$a0
    sw         $a3,0($gp)
.L000001e4:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000001f0:
    beqz       $a1, .L00000200
    nop
    b          .L000001e4
    sw         $zero,0($gp)
.L00000200:
    lw         $v1,2172($a0)
    sd         $ra,8($sp)
    beqz       $v1, .L00000248
    sd         $s1,16($sp)
    move       $s1,$zero
.L00000214:
    ld         $a2,2376($s0)
    lui        $a0,0x80
    li         $a1,4
    ori        $a0,$a0,0x3a8
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    move       $a0,$s0
    sw         $zero,5464($s0)
    jal        kona_timein
    move       $a1,$s1
    ld         $s1,16($sp)
    b          .L000001e4
    ld         $ra,8($sp)
.L00000248:
    ld         $a1,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x3a8
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    andi       $a1,$v0,0x4
    beqz       $a1, .L00000270
    nop
    b          .L00000214
    move       $s1,$zero
.L00000270:
    lw         $a2,5464($s0)
    beqz       $a2, .L00000284
    lw         $a3,0($gp)
    b          .L00000214
    move       $s1,$zero
.L00000284:
    beqz       $a3, .L00000294
    ld         $a2,-30720($gp)
    b          .L00000214
    move       $s1,$zero
.L00000294:
    li         $a1,4
    li         $a0,2112
    daddiu     $a3,$a2,136
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a2,$a2,88
    b          .L00000214
    li         $s1,1

glabel kona_sched_tick
    sd         $a1,5456($a0)
    daddiu     $sp,$sp,-48
    sd         $s8,24($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    sd         $ra,16($sp)
    jal        drv_usectohz
    sll        $a0,$a1,0x0
    move       $a2,$v0
    ld         $a0,-30696($gp)
    ld         $a3,0($gp)
    move       $a1,$s0
    move       $a5,$zero
    ld         $a4,5472($s0)
    jal        itimeout
    move       $a6,$zero
    move       $s8,$v0
    sw         $v0,5440($s0)
    jal        microtime
    daddiu     $a0,$sp,0
    lw         $a0,4($sp)
    dsll       $v1,$a0,0x4
    dsubu      $v1,$v1,$a0
    dsll       $v1,$v1,0x2
    daddu      $v1,$v1,$a0
    dsll       $v1,$v1,0x5
    daddu      $v1,$v1,$a0
    ld         $at,8($sp)
    dsll       $v1,$v1,0x3
    ld         $ra,16($sp)
    daddu      $v1,$v1,$a0
    sltu       $v0,$zero,$s8
    ld         $s8,24($sp)
    dsll       $v1,$v1,0x6
    daddu      $at,$at,$v1
    sd         $at,5448($s0)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_itimeout_func
    ld         $at,5472($a0)
    daddiu     $sp,$sp,-48
    sltu       $at,$a1,$at
    sd         $s0,24($sp)
    move       $s0,$a0
    bnez       $at, .L000003d0
    sd         $ra,40($sp)
    daddiu     $a0,$a0,5368
    sd         $a0,0($sp)
    jal        mutex_spinlock_spl
    ld         $a1,0($gp)
    sd         $v0,8($sp)
    jal        kona_callout
    move       $a0,$s0
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    daddiu     $a0,$s0,5372
    jal        mutex_spinlock
    sd         $a0,16($sp)
    sd         $v0,32($sp)
    ld         $v0,5376($s0)
    beqz       $v0, .L000003c4
    move       $a0,$s0
    lui        $a1,0x7
    jal        kona_sched_tick
    ori        $a1,$a1,0xa120
    beqz       $v0, .L000003e0
    move       $a0,$s0
.L000003c4:
    ld         $a0,16($sp)
.L000003c8:
    jal        mutex_spinunlock
    ld         $a1,32($sp)
.L000003d0:
    ld         $ra,40($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000003e0:
    jal        kona_die
    li         $a1,9
    b          .L000003c8
    ld         $a0,16($sp)

glabel kona_timeout
    daddiu     $sp,$sp,-144
    sd         $a7,136($sp)
    sd         $a6,128($sp)
    sd         $a5,120($sp)
    sd         $a4,112($sp)
    sd         $a0,80($sp)
    sd         $a3,104($sp)
    sd         $s5,16($sp)
    sd         $s3,8($sp)
    move       $s3,$a1
    move       $s5,$a2
    sd         $ra,24($sp)
    move       $a0,$a1
    jal        kona_timeout_alloc
    sd         $s4,48($sp)
    sd         $v0,32($sp)
    sd         $s2,56($sp)
    sd         $s1,64($sp)
    move       $s4,$v0
    beqz       $v0, .L0000052c
    sd         $s0,72($sp)
    move       $s1,$s5
    daddiu     $a0,$s3,5372
    jal        mutex_spinlock
    sd         $a0,0($sp)
    move       $a1,$v0
    ld         $a0,5376($s3)
    daddiu     $s2,$s3,5376
    li         $t1,-8
    ld         $a3,104($sp)
    daddiu     $a2,$sp,119
    sltiu      $a7,$a0,1
    ld         $t0,80($sp)
    beqz       $a0, .L000004c4
    move       $s0,$a0
    b          .L00000498
    ld         $a6,8($s0)
.L00000484:
    move       $s2,$s0
    ld         $s0,0($s0)
    beqz       $s0, .L000004c4
    dsubu      $s1,$s1,$a6
    ld         $a6,8($s0)
.L00000498:
    slt        $a4,$s1,$a6
    bnez       $a4, .L000004c4
    nop
    move       $s2,$s0
    ld         $s0,0($s0)
    beqz       $s0, .L000004c4
    dsubu      $s1,$s1,$a6
    ld         $a6,8($s0)
    slt        $a5,$s1,$a6
    beqz       $a5, .L00000484
    nop
.L000004c4:
    sd         $s4,0($s2)
    sd         $a3,32($s4)
    sd         $t0,24($s4)
    sd         $s5,16($s4)
    sd         $s1,8($s4)
    sd         $s0,0($s4)
    and        $a6,$t1,$a2
    ld         $t2,0($a6)
    daddiu     $a6,$a6,15
    sd         $t2,40($s4)
    and        $a6,$t1,$a6
    ld         $t2,0($a6)
    daddiu     $a6,$a6,15
    sd         $t2,48($s4)
    and        $a6,$t1,$a6
    ld         $a6,0($a6)
    beqz       $s0, .L00000518
    sd         $a6,56($s4)
    ld         $t0,8($s0)
    dsubu      $t0,$t0,$s1
    sd         $t0,8($s0)
.L00000518:
    bnez       $a7, .L00000554
    sd         $a1,40($sp)
.L00000520:
    ld         $a0,0($sp)
.L00000524:
    jal        mutex_spinunlock
    ld         $a1,40($sp)
.L0000052c:
    ld         $s3,8($sp)
    ld         $s0,72($sp)
    ld         $s5,16($sp)
    ld         $s4,48($sp)
    ld         $ra,24($sp)
    ld         $s1,64($sp)
    ld         $s2,56($sp)
    ld         $v0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00000554:
    move       $a0,$s3
    lui        $a1,0x7
    jal        kona_sched_tick
    ori        $a1,$a1,0xa120
    bnez       $v0, .L00000524
    ld         $a0,0($sp)
    sd         $s0,0($s2)
    jal        kona_timeout_free
    move       $a0,$s4
    b          .L00000520
    sd         $zero,32($sp)

glabel kona_untimeout
    daddiu     $sp,$sp,-48
    sd         $s3,40($sp)
    sd         $s0,32($sp)
    move       $s0,$a1
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s2,24($sp)
    daddiu     $s2,$a0,5372
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $at,5376($s1)
    move       $s3,$v0
    daddiu     $a5,$s1,5376
    move       $a6,$at
    beqz       $at, .L000005dc
    move       $a4,$at
.L000005c4:
    beq        $a4, $s0, .L00000640
    nop
    ld         $v0,0($a4)
    move       $a5,$a4
    bnez       $v0, .L000005c4
    move       $a4,$v0
.L000005dc:
    move       $s0,$zero
.L000005e0:
    bnez       $a6, .L00000618
    move       $a0,$s2
    lw         $a4,5440($s1)
    beqz       $a4, .L00000618
    move       $a0,$s2
    ld         $v1,5472($s1)
    move       $a0,$a4
    daddiu     $v1,$v1,1
    jal        untimeout
    sd         $v1,5472($s1)
    beqz       $v0, .L00000670
    nop
    sw         $zero,5440($s1)
.L00000614:
    move       $a0,$s2
.L00000618:
    ld         $s1,8($sp)
    jal        mutex_spinunlock
    move       $a1,$s3
    ld         $ra,16($sp)
    ld         $s3,40($sp)
    ld         $s2,24($sp)
    move       $v0,$s0
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000640:
    ld         $v0,0($a4)
    beqz       $v0, .L0000065c
    nop
    ld         $a1,8($s0)
    ld         $a0,8($v0)
    daddu      $a0,$a0,$a1
    sd         $a0,8($v0)
.L0000065c:
    sd         $v0,0($a5)
    jal        kona_timeout_free
    move       $a0,$s0
    b          .L000005e0
    ld         $a6,5376($s1)
.L00000670:
    lw         $a4,5440($s1)
.L00000674:
    move       $a0,$s2
    sd         $a4,0($sp)
    jal        mutex_spinunlock
    move       $a1,$s3
    jal        untimeout_wait
    ld         $a0,0($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $a2,0($sp)
    lw         $a4,5440($s1)
    bne        $a4, $a2, .L00000674
    move       $s3,$v0
    b          .L00000614
    sw         $zero,5440($s1)

glabel kona_gfifo_spin
    daddiu     $sp,$sp,-80
    sd         $s7,24($sp)
    ld         $s7,5448($a0)
    sd         $ra,32($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    jal        gfx_waitf_on
    sd         $s1,64($sp)
    lw         $at,5260($s0)
    sd         $s2,48($sp)
    daddiu     $s1,$s0,5368
    addiu      $at,$at,1
    sw         $at,5260($s0)
    move       $a0,$s1
    jal        mutex_spinlock_spl
    ld         $a1,0($gp)
    move       $s2,$v0
    daddiu     $a0,$sp,0
    jal        microtime
    sd         $s8,56($sp)
    lw         $v0,4($sp)
    dsll       $ra,$v0,0x4
    dsubu      $ra,$ra,$v0
    dsll       $ra,$ra,0x2
    daddu      $ra,$ra,$v0
    dsll       $ra,$ra,0x5
    daddu      $ra,$ra,$v0
    move       $a0,$s1
    ld         $at,5472($s0)
    dsll       $ra,$ra,0x3
    move       $a1,$s2
    ld         $s8,8($sp)
    daddu      $ra,$ra,$v0
    daddiu     $at,$at,1
    dsll       $ra,$ra,0x6
    daddu      $s8,$s8,$ra
    jal        mutex_spinunlock
    sd         $at,5472($s0)
    jal        untimeout_wait
    lw         $a0,5440($s0)
    move       $a0,$s1
    jal        mutex_spinlock_spl
    ld         $a1,0($gp)
    ld         $s2,5456($s0)
    sd         $v0,40($sp)
    daddu      $s2,$s2,$s7
    sw         $zero,5440($s0)
    dsubu      $s2,$s2,$s8
.L0000076c:
    lw         $t8,2172($s0)
    beqz       $t8, .L000007bc
.L00000774:
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,2336($s0)
    lw         $t9,2172($s0)
    beqz       $t9, .L000007e4
    move       $a0,$s0
.L0000078c:
    ld         $s2,48($sp)
.L00000790:
    ld         $s0,16($sp)
    ld         $s7,24($sp)
    ld         $s8,56($sp)
    move       $a0,$s1
    jal        mutex_spinunlock
    ld         $a1,40($sp)
    jal        gfx_waitf_off
    ld         $s1,64($sp)
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000007bc:
    move       $a0,$s0
    jal        kona_delay_monitor_gfifo
    move       $a1,$s2
    bnez       $v0, .L00000774
    move       $s2,$v0
    jal        kona_callout
    move       $a0,$s0
    lui        $s2,0x7
    b          .L0000076c
    ori        $s2,$s2,0xa120
.L000007e4:
    jal        kona_sched_tick
    move       $a1,$s2
    bnez       $v0, .L0000078c
    move       $a0,$s0
    jal        kona_die
    li         $a1,9
    b          .L00000790
    ld         $s2,48($sp)
