.section .text
.set noat
.set noreorder


glabel kona_flow_init
    sw         $zero,2328($a0)
    li         $v1,768
    sw         $v1,2332($a0)
    li         $a1,1792
    sw         $v1,2348($a0)
    daddiu     $sp,$sp,-16
    ld         $at,2376($a0)
    lui        $v0,0x80
    sd         $s8,8($sp)
    move       $s8,$a0
    ori        $v0,$v0,0x210
    sd         $ra,0($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$at,$v0
    ld         $ra,0($sp)
    sd         $zero,2336($s8)
    sw         $zero,2344($s8)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_flow_cleanup
    ld         $a1,2336($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a1, .L00000078
    sd         $ra,8($sp)
    jal        kona_untimeout
    nop
    ld         $ra,8($sp)
    sd         $zero,2336($s0)
.L00000078:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_hiwater_timeout
    ld         $at,2336($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L0000010c
    sd         $ra,8($sp)
    ld         $a1,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x208
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    lw         $a1,2332($s0)
    sltu       $a1,$a1,$v0
    beqz       $a1, .L0000012c
    ld         $a1,-30720($gp)
    ld         $a1,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x208
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a3,-30720($gp)
    move       $a5,$v0
    li         $a0,2102
    li         $a1,4
    daddiu     $a2,$a3,56
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a3,120
    lw         $a4,108($s0)
    beqz       $a4, .L0000011c
    sd         $zero,2336($s0)
.L00000100:
    move       $a0,$s0
    jal        kona_die
    li         $a1,6
.L0000010c:
    ld         $ra,8($sp)
.L00000110:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0000011c:
    lw         $a5,80($s0)
    addiu      $a5,$a5,-1
    b          .L00000100
    sw         $a5,80($s0)
.L0000012c:
    jal        cmn_err
    li         $a0,4
    jal        kona_lowater_intr
    move       $a0,$s0
    b          .L00000110
    ld         $ra,8($sp)

glabel kona_delay_monitor_gfifo
    daddiu     $sp,$sp,-32
    sd         $s1,0($sp)
    daddiu     $s1,$a1,3
    sd         $s2,24($sp)
    slt        $s2,$a1,$zero
    movz       $s1,$a1,$s2
    dsra       $s1,$s1,0x2
    dsll       $s1,$s1,0x2
    sd         $s0,16($sp)
    move       $s0,$a0
    lui        $s2,0x80
    sd         $ra,8($sp)
    beqz       $s1, .L000001a8
    ori        $s2,$s2,0x208
.L0000017c:
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s2,$a0
    lw         $a1,2348($s0)
    sltu       $a1,$a1,$v0
    beqz       $a1, .L000001c4
    nop
    jal        us_delay
    li         $a0,4
    daddiu     $s1,$s1,-4
    bnez       $s1, .L0000017c
.L000001a8:
    ld         $ra,8($sp)
.L000001ac:
    ld         $s0,16($sp)
    move       $v0,$s1
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000001c4:
    ld         $a0,2376($s0)
    lui        $a2,0x80
    li         $a1,3
    ori        $a2,$a2,0x238
    sw         $zero,2344($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L000001ac
    ld         $ra,8($sp)

glabel kona_hiwater_intr
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    sd         $ra,24($sp)
    jal        gfx_waitf_on
    move       $s0,$a0
    lw         $at,2172($s0)
    lw         $v0,5256($s0)
    sd         $s1,32($sp)
    addiu      $v0,$v0,1
    bnez       $at, .L00000220
    sw         $v0,5256($s0)
    lw         $v1,2344($s0)
    beqz       $v1, .L0000023c
    nop
.L00000220:
    jal        gfx_waitf_off
    nop
    ld         $ra,24($sp)
.L0000022c:
    ld         $s0,16($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000023c:
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $a2,2328($s0)
    sd         $v0,0($sp)
    li         $a1,1
    sw         $a1,2344($s0)
    lui        $a0,0x80
    beqz       $a2, .L00000468
    sd         $s2,40($sp)
    move       $s1,$zero
    ori        $s2,$a0,0x208
.L00000270:
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s2,$a0
    lw         $a1,2332($s0)
    sltu       $a1,$a1,$v0
    beqz       $a1, .L00000418
    nop
    jal        us_delay
    li         $a0,4
    lw         $a2,2328($s0)
    addiu      $s1,$s1,4
    sltu       $a2,$s1,$a2
    bnez       $a2, .L00000270
    nop
.L000002a8:
    daddiu     $s1,$s0,2352
    jal        mutex_spinlock
    move       $a0,$s1
    ld         $a3,0($sp)
    lw         $a3,8($a3)
    andi       $a3,$a3,0x8
    li         $a4,1
    beqz       $a3, .L00000470
    sd         $v0,8($sp)
    sw         $a4,108($s0)
.L000002d0:
    li         $a1,3
    ld         $a2,2376($s0)
    lui        $a0,0x80
    li         $a3,1
    sw         $a3,120($s0)
    ori        $a0,$a0,0x238
    sw         $a3,104($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    lw         $a1,2368($s0)
    ld         $a2,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x230
    ori        $a1,$a1,0x2
    sw         $a1,2368($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s2,$a0
    lw         $a1,2332($s0)
    sltu       $a1,$a1,$v0
    bnez       $a1, .L000003c0
    ld         $s2,40($sp)
    lw         $a1,2368($s0)
    li         $a3,-3
    ld         $a2,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x230
    and        $a1,$a1,$a3
    sw         $a1,2368($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a2,2376($s0)
    lui        $a0,0x80
    li         $a1,3
    ori        $a0,$a0,0x238
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    lw         $a1,108($s0)
    beqz       $a1, .L00000480
    sw         $zero,120($s0)
.L00000378:
    sw         $zero,108($s0)
    sw         $zero,2344($s0)
    sw         $zero,104($s0)
    move       $a0,$s1
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    lh         $a4,-15328($zero)
    ld         $a3,0($gp)
    dsll       $a4,$a4,0x5
    daddu      $a3,$a3,$a4
    lw         $a2,28($a3)
    addiu      $a2,$a2,1
    jal        gfx_waitf_off
    sw         $a2,28($a3)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    b          .L0000022c
    ld         $ra,24($sp)
.L000003c0:
    ld         $a3,-30704($gp)
    lwu        $a2,0($gp)
    move       $a1,$s0
    jal        kona_timeout
    ld         $a0,-30712($gp)
    beqz       $v0, .L00000490
    sd         $v0,2336($s0)
    move       $a0,$s1
.L000003e0:
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    lh         $a7,-15328($zero)
    ld         $a6,0($gp)
    dsll       $a7,$a7,0x5
    daddu      $a6,$a6,$a7
    lw         $a5,24($a6)
    addiu      $a5,$a5,1
    jal        force_resched
    sw         $a5,24($a6)
    jal        gfx_waitf_off
    nop
    b          .L0000022c
    ld         $ra,24($sp)
.L00000418:
    sw         $zero,2344($s0)
    lh         $t2,-15328($zero)
    ld         $t1,0($gp)
    dsll       $t2,$t2,0x5
    daddu      $t1,$t1,$t2
    lw         $t0,28($t1)
    addiu      $t0,$t0,1
    jal        gfx_waitf_off
    sw         $t0,28($t1)
    ld         $a0,2376($s0)
    lui        $a2,0x80
    li         $a1,3
    ori        $a2,$a2,0x238
    ld         $s2,40($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    b          .L0000022c
    ld         $ra,24($sp)
.L00000468:
    b          .L000002a8
    ori        $s2,$a0,0x208
.L00000470:
    lw         $a3,80($s0)
    addiu      $a3,$a3,1
    b          .L000002d0
    sw         $a3,80($s0)
.L00000480:
    lw         $a4,80($s0)
    addiu      $a4,$a4,-1
    b          .L00000378
    sw         $a4,80($s0)
.L00000490:
    ld         $a1,-30720($gp)
    li         $a0,4
    daddiu     $a2,$a1,120
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a1,$a1,128
    ld         $a1,-30720($gp)
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,176
    move       $a0,$s0
    jal        kona_die
    li         $a1,9
    b          .L000003e0
    move       $a0,$s1

glabel kona_lowater_intr
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        gfx_waitf_on
    move       $s0,$a0
    lw         $v0,104($s0)
    lw         $at,5264($s0)
    addiu      $at,$at,1
    beqz       $v0, .L00000560
    sw         $at,5264($s0)
    ld         $a1,2336($s0)
    beqz       $a1, .L00000584
    nop
    jal        kona_untimeout
    move       $a0,$s0
    sd         $zero,2336($s0)
    lw         $a1,2368($s0)
.L00000510:
    li         $a3,-3
    ld         $a0,2376($s0)
    lui        $a2,0x80
    ori        $a2,$a2,0x230
    and        $a1,$a1,$a3
    sw         $a1,2368($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2376($s0)
    lui        $a2,0x80
    li         $a1,3
    ori        $a2,$a2,0x238
    sw         $zero,2344($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    lw         $a3,108($s0)
    beqz       $a3, .L00000574
    nop
.L00000558:
    sw         $zero,104($s0)
    sw         $zero,108($s0)
.L00000560:
    jal        gfx_waitf_off
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000574:
    lw         $a4,80($s0)
    addiu      $a4,$a4,-1
    b          .L00000558
    sw         $a4,80($s0)
.L00000584:
    ld         $a1,-30720($gp)
    li         $a0,4
    daddiu     $a2,$a1,120
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a1,$a1,224
    b          .L00000510
    lw         $a1,2368($s0)

glabel kona_diag_flow
    daddiu     $sp,$sp,-48
    li         $at,1
    sd         $s0,24($sp)
    move       $s0,$a0
    beq        $a1, $at, .L000005d4
    sd         $ra,32($sp)
    beqz       $a1, .L000005e8
    li         $v0,22
.L000005c4:
    ld         $ra,32($sp)
.L000005c8:
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000005d4:
    lw         $v0,2172($a0)
    beqz       $v0, .L00000614
    li         $v0,13
    b          .L000005c8
    ld         $ra,32($sp)
.L000005e8:
    lw         $a1,2368($a0)
    li         $a3,-8
    ld         $a0,2376($a0)
    lui        $a2,0x80
    ori        $a2,$a2,0x230
    and        $a1,$a1,$a3
    sw         $a1,2368($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L000005c4
    move       $v0,$zero
.L00000614:
    ld         $a0,2376($a0)
    lui        $a2,0x80
    lw         $a1,2368($s0)
    ori        $a2,$a2,0x230
    daddu      $a0,$a0,$a2
    ori        $a1,$a1,0x4
    jal        gfx_pio_write_32
    sw         $a1,2368($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,8($sp)
    sd         $v0,16($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L0000068c
    nop
    sw         $zero,2360($s0)
.L00000664:
    jal        splx
    ld         $a0,16($sp)
    ld         $a0,2376($s0)
    lui        $a2,0xc0
    ori        $a2,$a2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L000005c4
    move       $v0,$zero
.L0000068c:
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me
    ld         $a0,2272($s0)
    ld         $a0,2376($s0)
    lw         $a1,2248($s0)
    daddiu     $a0,$a0,124
    sll        $a1,$a1,0x1
    jal        gfx_pio_write_32
    andi       $a1,$a1,0x3e
    jal        rt_pin_thread
    nop
    sd         $v0,0($sp)
    jal        splx
    ld         $a0,8($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,16($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000664
    sw         $zero,2360($s0)

glabel kona_diag_credits
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,16($sp)
    move       $s0,$a1
    sd         $s1,0($sp)
    move       $s1,$a0
    jal        gfx_flow_credit_total_get
    ld         $a0,2272($a0)
    sw         $v0,0($s0)
    jal        gfx_flow_credit_bias_get
    ld         $a0,2272($s1)
    sw         $v0,4($s0)
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s1)
    ld         $s1,0($sp)
    ld         $ra,8($sp)
    sw         $v0,8($s0)
    lui        $at,0x1
    move       $v0,$zero
    ori        $at,$at,0x86a0
    sw         $at,12($s0)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel kona_flow_await_returned_credits
    daddiu     $sp,$sp,-32
    sd         $s0,24($sp)
    move       $s0,$a0
    ld         $a0,2272($a0)
    sd         $ra,16($sp)
    jal        gfx_flow_credit_bias_get
    sd         $s2,8($sp)
    move       $s2,$v0
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    sltu       $at,$v0,$s2
    beqz       $at, .L000007e0
    sd         $s1,0($sp)
    li         $s1,1000
.L0000078c:
    lw         $v0,2344($s0)
    bnez       $v0, .L000008d0
    ld         $ra,16($sp)
    lw         $v1,2172($s0)
    beqz       $v1, .L000007b8
    nop
    ld         $a0,72($s0)
    lw         $a0,4($a0)
    andi       $a0,$a0,0x4
    bnez       $a0, .L0000080c
    nop
.L000007b8:
    blez       $s1, .L000008e4
    nop
    jal        us_delay
    li         $a0,1
    ld         $a0,2272($s0)
    jal        gfx_flow_credit_count_get
    addiu      $s1,$s1,-1
    sltu       $a1,$v0,$s2
    bnez       $a1, .L0000078c
    nop
.L000007e0:
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    move       $s1,$v0
    jal        gfx_flow_credit_total_get
    ld         $a0,2272($s0)
    sltu       $a2,$v0,$s1
    beqz       $a2, .L000008d0
    ld         $ra,16($sp)
    move       $a0,$s0
    jal        kona_die
    li         $a1,25
.L0000080c:
    jal        kona_reset_adaptor
    move       $a0,$s0
    ld         $a0,2376($s0)
    lui        $s1,0x80
    li         $a1,1
    ori        $s1,$s1,0x300
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s1,$a0
    jal        splhi
    nop
    move       $s2,$v0
    ld         $s1,72($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L0000088c
    nop
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    move       $a1,$s1
.L0000088c:
    jal        gfx_flow_reset
    ld         $a0,2272($s0)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me
    ld         $a0,2272($s0)
    ld         $a0,2376($s0)
    lw         $a1,2248($s0)
    daddiu     $a0,$a0,124
    sll        $a1,$a1,0x1
    jal        gfx_pio_write_32
    andi       $a1,$a1,0x3e
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        splx
    move       $a0,$s2
    ld         $ra,16($sp)
.L000008d0:
    ld         $s0,24($sp)
    ld         $s1,0($sp)
    ld         $s2,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000008e4:
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x208
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    lw         $a2,2332($s0)
    sltu       $a2,$a2,$v0
    beqz       $a2, .L000008d0
    ld         $ra,16($sp)
    jal        curproc
    nop
    ld         $a3,2320($s0)
    beq        $a3, $v0, .L00000928
    nop
    jal        curproc
    nop
    sd         $v0,2320($s0)
.L00000928:
    jal        force_resched
    nop
    b          .L000008d0
    ld         $ra,16($sp)

glabel KONAreleasegfxsema
    daddiu     $sp,$sp,-48
    sd         $a0,24($sp)
    sd         $s0,8($sp)
    sd         $ra,32($sp)
    jal        splhi
    ld         $s0,40($a0)
    sd         $v0,16($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000009a0
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    lw         $v0,2344($s0)
    beqz       $v0, .L000009bc
    nop
.L00000978:
    ld         $a0,2376($s0)
.L0000097c:
    li         $a1,1
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,124
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,124
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    ld         $a1,24($sp)
.L000009a0:
    ld         $s0,8($sp)
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,32($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,48
.L000009bc:
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    sd         $v0,0($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,2272($s0)
    ld         $a1,0($sp)
    sltu       $a1,$a1,$v0
    beqz       $a1, .L00000978
    nop
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    b          .L0000097c
    ld         $a0,2376($s0)

glabel gfx_pio_write_32
    sw         $a1,0($a0)
    sync
    jr         $ra
    nop

glabel gfx_pio_write_64
    sd         $a1,0($a0)
    sync
    jr         $ra
    nop

glabel gfx_pio_read_32
    jr         $ra
    lw         $v0,0($a0)

glabel gfx_pio_read_64
    jr         $ra
    ld         $v0,0($a0)
