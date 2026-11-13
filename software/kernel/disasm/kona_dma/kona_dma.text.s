.section .text
.set noat
.set noreorder


glabel lock_dmavec
    lw         $a5,12($a0)
    lw         $v0,8($a0)
    daddiu     $sp,$sp,-16
    move       $a2,$a1
    beqz       $a5, .L00000050
    sd         $s0,0($sp)
    beq        $a5, $v0, .L00000058
    nop
.L00000020:
    divu       $zero,$v0,$a5
    lw         $t8,16($a0)
    mflo       $t9
    addu       $t8,$a5,$t8
    addiu      $t9,$t9,-1
    multu      $t8,$t9
    mflo       $s0
    addu       $s0,$a5,$s0
    bnez       $s0, .L00000060
    teq        $a5,$zero,0x7
.L00000048:
    b          .L00000090
    li         $s0,-22
.L00000050:
    bne        $v0, $v0, .L00000020
    move       $a5,$v0
.L00000058:
    beqz       $v0, .L00000048
    move       $s0,$v0
.L00000060:
    bltz       $s0, .L0000008c
    nop
    ld         $v0,0($a0)
    andi       $t9,$v0,0x3fff
    daddu      $t9,$s0,$t9
    daddiu     $t9,$t9,16383
    dsrl       $t9,$t9,0xe
    sll        $t9,$t9,0x0
    sltiu      $t9,$t9,-1
    bnez       $t9, .L000000a0
    sd         $ra,8($sp)
.L0000008c:
    li         $s0,-7
.L00000090:
    move       $v0,$s0
.L00000094:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000000a0:
    move       $a0,$v0
    move       $a1,$s0
    jal        userdma
    move       $a3,$zero
    beqz       $v0, .L000000c0
    ld         $ra,8($sp)
    b          .L00000090
    negu       $s0,$v0
.L000000c0:
    b          .L00000094
    move       $v0,$s0

glabel unlock_dmavec
    lw         $a5,12($a0)
    move       $a6,$a0
    lw         $a4,8($a0)
    move       $a2,$a1
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    beqz       $a5, .L00000118
    move       $a1,$a4
    beq        $a5, $a4, .L0000011c
    nop
    divu       $zero,$a4,$a5
    lw         $a3,16($a6)
    mflo       $a7
    addu       $a3,$a5,$a3
    addiu      $a7,$a7,-1
    multu      $a3,$a7
    teq        $a5,$zero,0x7
    mflo       $a1
    b          .L0000011c
    addu       $a1,$a5,$a1
.L00000118:
    move       $a5,$a4
.L0000011c:
    jal        undma
    ld         $a0,0($a6)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_dmaread
    daddiu     $sp,$sp,-112
    sd         $a1,40($sp)
    sd         $ra,64($sp)
    sd         $s5,72($sp)
    sd         $s2,48($sp)
    ld         $s2,40($a0)
    sd         $s6,56($sp)
    move       $s6,$a0
    ld         $a0,0($a2)
    sd         $a0,0($sp)
    lw         $v1,8($a2)
    sw         $v1,8($sp)
    lw         $v0,12($a2)
    sw         $v0,12($sp)
    lw         $at,16($a2)
    move       $s5,$a2
    move       $a0,$s6
    sw         $zero,24($sp)
    daddiu     $a2,$sp,0
    jal        kona_start_selectfeed
    sw         $at,16($sp)
    sd         $s0,80($sp)
    beqz       $v0, .L000001a8
    sd         $s3,104($sp)
.L00000190:
    ld         $ra,64($sp)
    ld         $s2,48($sp)
    ld         $s6,56($sp)
    ld         $s5,72($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000001a8:
    ld         $a3,40($s6)
    lw         $a2,80($a3)
    addiu      $a2,$a2,1
    sw         $a2,80($a3)
    lw         $a1,152($s5)
    daddiu     $s0,$s5,24
    sd         $s1,88($sp)
    li         $s3,-1
    blez       $a1, .L00000224
    sd         $s4,96($sp)
    move       $s4,$zero
    sd         $s1,88($sp)
.L000001d8:
    lw         $a1,0($s0)
    lw         $s1,4($s0)
    daddiu     $s0,$s0,8
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    addiu      $s1,$s1,-1
    beq        $s1, $s3, .L00000210
    nop
.L000001f8:
    lw         $a1,0($s0)
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    addiu      $s1,$s1,-1
    bne        $s1, $s3, .L000001f8
    daddiu     $s0,$s0,4
.L00000210:
    lw         $a3,152($s5)
    addiu      $s4,$s4,1
    slt        $a3,$s4,$a3
    bnez       $a3, .L000001d8
    nop
.L00000224:
    ld         $s3,104($sp)
    ld         $s4,96($sp)
    ld         $s1,88($sp)
    ld         $s0,80($sp)
    move       $a0,$s6
    ld         $a1,40($sp)
    jal        kona_finish_selectfeed
    daddiu     $a2,$sp,32
    ld         $a0,40($s6)
    lw         $a1,80($a0)
    beqz       $v0, .L0000025c
    addiu      $a1,$a1,-1
    b          .L00000190
    sw         $a1,80($a0)
.L0000025c:
    sw         $a1,80($a0)
    b          .L00000190
    move       $v0,$zero

glabel kona_dmawrite
    daddiu     $sp,$sp,-96
    sd         $s2,16($sp)
    ld         $s2,40($a0)
    sd         $s5,32($sp)
    ld         $s5,0($a2)
    sd         $s3,48($sp)
    sd         $s6,56($sp)
    sd         $ra,64($sp)
    sd         $s0,72($sp)
    sd         $s4,24($sp)
    lw         $s4,8($a2)
    sd         $s1,80($sp)
    sd         $s8,40($sp)
    move       $s8,$a2
    blez       $s4, .L00000310
    sd         $s7,88($sp)
    move       $s1,$zero
.L000002ac:
    dsll       $s3,$s1,0x2
    dsubu      $s3,$s3,$s1
    dsll       $s3,$s3,0x3
    move       $a1,$zero
    daddu      $s3,$s5,$s3
    jal        lock_dmavec
    move       $a0,$s3
    bltz       $v0, .L00000438
    move       $s0,$v0
    ld         $s6,0($s3)
    move       $a1,$v0
    jal        kona_mapram_pagesizeshiftof
    move       $a0,$s6
    move       $a3,$v0
    move       $s3,$v0
    move       $a1,$s6
    lw         $a0,2184($s2)
    jal        alloc_gfx_io_space
    move       $a2,$s0
    addiu      $s1,$s1,1
    slt        $t8,$s1,$s4
    bnez       $t8, .L000002ac
    move       $s0,$v0
    sw         $s3,8($sp)
    sd         $v0,0($sp)
.L00000310:
    lw         $t9,140($s8)
    li         $s3,-1
    daddiu     $s0,$s8,12
    blez       $t9, .L00000370
    move       $s6,$zero
.L00000324:
    lw         $a1,0($s0)
    lw         $s7,4($s0)
    daddiu     $s0,$s0,8
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    addiu      $ra,$s7,-1
    beq        $ra, $s3, .L0000035c
    move       $s1,$ra
.L00000344:
    lw         $a1,0($s0)
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    addiu      $s1,$s1,-1
    bne        $s1, $s3, .L00000344
    daddiu     $s0,$s0,4
.L0000035c:
    lw         $at,140($s8)
    addiu      $s6,$s6,1
    slt        $at,$s6,$at
    bnez       $at, .L00000324
    nop
.L00000370:
    blez       $s4, .L000003ec
    move       $s1,$zero
    lw         $s3,8($sp)
    ld         $s0,0($sp)
    daddiu     $s7,$s2,5176
    dsll       $s6,$s1,0x2
.L00000388:
    dsubu      $s6,$s6,$s1
    dsll       $s6,$s6,0x3
    daddu      $s6,$s5,$s6
    lw         $a4,16($s6)
    li         $a6,1
    lw         $a3,12($s6)
    move       $a5,$s3
    move       $a1,$s0
    pref       0x0,264($s6)
    move       $a0,$s2
    jal        kona_idma
    lw         $a2,8($s6)
    move       $a0,$s7
    jal        psema
    li         $a1,25
    lw         $a0,2184($s2)
    jal        free_gfx_io_space
    move       $a1,$s0
    move       $a0,$s6
    jal        unlock_dmavec
    move       $a1,$zero
    addiu      $s1,$s1,1
    slt        $t8,$s1,$s4
    bnez       $t8, .L00000388
    dsll       $s6,$s1,0x2
.L000003ec:
    jal        valusema
    daddiu     $a0,$s2,56
    beqz       $v0, .L00000408
    move       $v0,$zero
    jal        force_resched
    nop
    move       $v0,$zero
.L00000408:
    ld         $s2,16($sp)
    ld         $s3,48($sp)
    ld         $s6,56($sp)
    ld         $s4,24($sp)
    ld         $s0,72($sp)
    ld         $s1,80($sp)
    ld         $ra,64($sp)
    ld         $s5,32($sp)
    ld         $s7,88($sp)
    ld         $s8,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000438:
    b          .L00000408
    negu       $v0,$v0

glabel kona_idma_timeout
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s8,16($sp)
    daddiu     $s8,$a0,2576
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    ld         $at,5192($s0)
    bnez       $at, .L0000048c
    sd         $v0,24($sp)
.L0000046c:
    move       $a0,$s8
    ld         $s0,0($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000048c:
    lw         $a6,5208($s0)
    ld         $a2,-30720($gp)
    ld         $a5,5200($s0)
    li         $a1,4
    li         $a0,2122
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a2,56
    move       $a0,$s0
    jal        kona_die
    li         $a1,4
    daddiu     $a0,$s0,5176
    jal        vsema
    sd         $zero,5192($s0)
    b          .L0000046c
    ld         $v0,24($sp)

glabel kona_idma
    daddiu     $sp,$sp,-160
    sd         $s7,40($sp)
    sd         $s3,16($sp)
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $s1,56($sp)
    move       $s1,$a1
    move       $s3,$a2
    sd         $s4,24($sp)
    move       $s4,$a3
    move       $s7,$a4
    sd         $s5,32($sp)
    move       $s5,$a6
    beqz       $a6, .L0000052c
    sd         $ra,72($sp)
    ld         $a3,-30704($gp)
    lwu        $a2,0($gp)
    move       $a1,$a0
    jal        kona_timeout
    ld         $a0,-30712($gp)
    sw         $s3,5208($s0)
    sd         $s1,5200($s0)
    li         $s5,256
    sd         $v0,5192($s0)
.L0000052c:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s2,64($sp)
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000688
    lui        $at,0x3
.L00000554:
    sw         $at,2360($s0)
    jal        splx
    move       $a0,$s2
    lui        $s2,0xc0
    ld         $a0,2376($s0)
    ori        $s2,$s2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    li         $a1,491
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s4,80($sp)
    move       $s4,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000006f0
    lui        $t8,0x1
.L000005ac:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s4
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    dsrl       $a1,$s1,0xc
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    andi       $a1,$s1,0xfff
    ld         $a0,2304($s0)
    ori        $a1,$a1,0x9000
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $s1,80($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s3
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s1
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s7
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s5
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000758
    ld         $s3,16($sp)
.L00000648:
    ld         $s4,24($sp)
    ld         $s5,32($sp)
    ld         $s7,40($sp)
    sw         $zero,2360($s0)
    jal        splx
    move       $a0,$s1
    ld         $a0,2376($s0)
    ld         $s1,56($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $ra,72($sp)
    ld         $s2,64($sp)
    ld         $s0,48($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L00000688:
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
    move       $a0,$s2
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,2272($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000554
    lui        $at,0x3
.L000006f0:
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
    sd         $v0,8($sp)
    jal        splx
    move       $a0,$s4
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,2272($s0)
    move       $s4,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L000005ac
    lui        $t8,0x1
.L00000758:
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
    move       $s3,$v0
    jal        splx
    move       $a0,$s1
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,2272($s0)
    move       $s1,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00000648
    ld         $s3,16($sp)

glabel kona_dmapool_update_pipe
    daddiu     $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s1,24($sp)
    move       $s1,$a1
    li         $a1,1
    sd         $s0,8($sp)
    move       $s0,$a0
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($a0)
    jal        splhi
    sd         $s2,40($sp)
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L0000090c
    sd         $s3,32($sp)
    lui        $at,0x3
.L00000804:
    sw         $at,2360($s0)
    jal        splx
    move       $a0,$s2
    lui        $s2,0xc0
    ld         $a0,2376($s0)
    ori        $s2,$s2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    li         $a1,493
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000974
    lui        $t8,0x1
.L0000085c:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s3
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,16($s1)
    dsrl       $a1,$a1,0xc
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a1,16($s1)
    andi       $a1,$a1,0xfff
    ld         $a0,2304($s0)
    ori        $a1,$a1,0x9000
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    lw         $a1,8($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000009dc
    ld         $s3,32($sp)
.L000008d8:
    sw         $zero,2360($s0)
    jal        splx
    move       $a0,$s1
    ld         $a0,2376($s0)
    ld         $s1,24($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s2,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000090c:
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
    move       $s3,$v0
    jal        splx
    move       $a0,$s2
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,2272($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00000804
    lui        $at,0x3
.L00000974:
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
    move       $a0,$s3
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,2272($s0)
    move       $s3,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L0000085c
    lui        $t8,0x1
.L000009dc:
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
    move       $s3,$v0
    jal        splx
    move       $a0,$s1
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,2272($s0)
    move       $s1,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L000008d8
    ld         $s3,32($sp)

glabel kona_dmapool
    ld         $a5,112($a1)
    daddiu     $sp,$sp,-80
    sd         $s1,48($sp)
    ld         $s1,40($a0)
    lw         $a6,12($a2)
    sd         $s0,56($sp)
    move       $v0,$a2
    sd         $s2,40($sp)
    move       $s2,$a0
    beqz       $a6, .L00000a8c
    sd         $ra,64($sp)
    li         $v0,2
.L00000a74:
    ld         $ra,64($sp)
    ld         $s2,40($sp)
    ld         $s0,56($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000a8c:
    ld         $a7,240($a5)
    dsll32     $a0,$a6,0x0
    dsrl       $a0,$a0,0x1b
    sd         $a2,32($sp)
    move       $v0,$zero
    daddu      $t0,$a0,$a5
    lw         $a1,16($a2)
    beqz       $a7, .L00000b80
    daddiu     $t1,$t0,208
    daddu      $a5,$a7,$a0
    beqz       $a1, .L00000b90
    daddiu     $v0,$a5,72
    ld         $a2,208($t0)
    bnez       $a2, .L00000b88
    nop
    beqz       $v0, .L00000b88
    move       $a0,$s2
.L00000ad0:
    move       $s0,$t1
    jal        RRM_CheckValidFault
    movn       $s0,$v0,$a1
    bltz       $v0, .L00000c1c
    nop
    ld         $a4,40($s2)
    lw         $a3,80($a4)
    addiu      $a3,$a3,1
    sw         $a3,80($a4)
    lw         $v0,8($s0)
    beqz       $v0, .L00000b28
    ld         $a5,32($sp)
    dsll32     $a1,$v0,0x0
    ld         $a0,0($s0)
    move       $a2,$zero
    jal        undma
    dsrl32     $a1,$a1,0x0
    ld         $a1,16($s0)
    jal        free_gfx_io_space
    lw         $a0,2184($s1)
    sw         $zero,8($s0)
    ld         $a5,32($sp)
.L00000b28:
    ld         $a0,0($a5)
    andi       $a2,$a0,0x3fff
    li         $v0,22
    beqz       $a2, .L00000bac
    lw         $a5,8($a5)
.L00000b3c:
    sd         $v0,24($sp)
.L00000b40:
    move       $a0,$s1
    jal        kona_dmapool_update_pipe
    move       $a1,$s0
    li         $a1,370
    jal        gfx_pio_write_32
    ld         $a0,2304($s1)
    ld         $s0,24($sp)
    ld         $a0,2304($s1)
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $a7,40($s2)
    lw         $a6,80($a7)
    move       $v0,$s0
    addiu      $a6,$a6,-1
    b          .L00000a74
    sw         $a6,80($a7)
.L00000b80:
    beqz       $a1, .L00000ad0
    move       $a0,$s2
.L00000b88:
    b          .L00000a74
    li         $v0,34
.L00000b90:
    beqz       $v0, .L00000ad0
    move       $a0,$s2
    ld         $a7,72($a5)
    bnez       $a7, .L00000b88
    nop
    b          .L00000ad0
    move       $a0,$s2
.L00000bac:
    dsll32     $a1,$a5,0x0
    dsrl32     $a1,$a1,0x0
    andi       $t0,$a1,0x3fff
    bnez       $t0, .L00000b3c
    nop
    sd         $a5,16($sp)
    sd         $a1,0($sp)
    beqz       $a5, .L00000c24
    sd         $a0,8($sp)
    move       $a2,$zero
    jal        userdma
    move       $a3,$zero
    bnez       $v0, .L00000b40
    sd         $v0,24($sp)
    ld         $a0,8($sp)
    jal        kona_mapram_pagesizeshiftof
    ld         $a1,0($sp)
    ld         $a2,0($sp)
    sw         $v0,24($s0)
    ld         $a1,8($sp)
    sd         $a1,0($s0)
    move       $a3,$v0
    jal        alloc_gfx_io_space
    lw         $a0,2184($s1)
    sd         $v0,16($s0)
    ld         $a3,16($sp)
    b          .L00000b40
    sw         $a3,8($s0)
.L00000c1c:
    b          .L00000a74
    li         $v0,14
.L00000c24:
    b          .L00000b40
    sd         $zero,24($sp)

glabel kona_dmapool_update
    ld         $a6,112($a1)
    ld         $a3,240($a6)
    li         $a4,-72
    daddiu     $sp,$sp,-16
    daddiu     $a1,$a6,208
    sd         $ra,0($sp)
    beqz       $a3, .L00000c64
    daddiu     $a5,$a3,72
    beq        $a3, $a4, .L00000c64
    nop
    lw         $at,80($a3)
    beqz       $at, .L00000c64
    nop
    move       $a1,$a5
.L00000c64:
    jal        kona_dmapool_update_pipe
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_dmapool_destroy
    ld         $a5,112($a1)
    ld         $a4,240($a5)
    daddiu     $sp,$sp,-32
    beqz       $a4, .L00000ce4
    sd         $s0,8($sp)
    beqz       $a2, .L00000cec
    daddiu     $s0,$a4,72
.L00000c94:
    beqz       $s0, .L00000cd8
    nop
    lw         $a4,8($s0)
    sd         $a0,0($sp)
    beqz       $a4, .L00000cd8
    sd         $ra,16($sp)
    dsll32     $a1,$a4,0x0
    ld         $a0,0($s0)
    move       $a2,$zero
    jal        undma
    dsrl32     $a1,$a1,0x0
    ld         $a0,0($sp)
    ld         $a1,16($s0)
    jal        free_gfx_io_space
    lw         $a0,2184($a0)
    ld         $ra,16($sp)
    sw         $zero,8($s0)
.L00000cd8:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000ce4:
    bnez       $a2, .L00000c94
    move       $s0,$zero
.L00000cec:
    b          .L00000c94
    daddiu     $s0,$a5,208

glabel kona_start_selectfeed
    daddiu     $sp,$sp,-96
    sd         $s0,56($sp)
    ld         $s0,40($a0)
    sd         $s1,72($sp)
    sd         $s2,64($sp)
    move       $s2,$a0
    beqz       $a1, .L00000f4c
    sd         $ra,80($sp)
    ld         $v0,112($a1)
    ld         $at,104($v0)
    beqz       $at, .L00000d2c
    daddiu     $s1,$v0,32
    b          .L00000f34
    li         $v0,16
.L00000d2c:
    ld         $a4,0($a2)
    sd         $a4,32($v0)
    lw         $a0,8($a2)
    sw         $a0,40($v0)
    lw         $a3,12($a2)
    sw         $a3,44($v0)
    lw         $a1,16($a2)
    sw         $a1,48($v0)
    lw         $v1,24($a2)
    sw         $zero,68($v0)
    beqz       $a0, .L00000d78
    sw         $v1,56($v0)
    move       $a0,$s1
    jal        lock_dmavec
    li         $a1,1
    bltz       $v0, .L00000f74
    move       $a0,$v0
    b          .L00000d7c
    sw         $v0,28($s1)
.L00000d78:
    sw         $zero,60($v0)
.L00000d7c:
    jal        RRM_CheckValidFault
    move       $a0,$s2
    bltz       $v0, .L00000f54
    lw         $a0,28($s1)
    beqz       $a0, .L00000dd8
    nop
    ld         $a6,40($s2)
    lw         $a5,80($a6)
    addiu      $a5,$a5,1
    sw         $a5,80($a6)
    lwu        $a1,28($s1)
    jal        kona_mapram_pagesizeshiftof
    ld         $a0,0($s1)
    lwu        $a2,28($s1)
    ld         $a1,0($s1)
    move       $a3,$v0
    jal        alloc_gfx_io_space
    lw         $a0,2184($s0)
    sd         $v0,40($s1)
    ld         $a7,40($s2)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
.L00000dd8:
    jal        curproc
    nop
    ld         $a7,40($s1)
    sd         $v0,72($s1)
    dsrl       $t0,$a7,0xc
    andi       $a7,$a7,0xfff
    ld         $a0,2272($s0)
    sll        $t0,$t0,0x0
    ori        $a7,$a7,0x9000
    sd         $t0,32($sp)
    sll        $a7,$a7,0x0
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    sd         $a7,40($sp)
    jal        splhi
    nop
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000f7c
    lui        $t1,0x3
.L00000e2c:
    sw         $t1,2360($s0)
    jal        splx
    move       $a0,$s2
    lui        $s2,0xc0
    ld         $a0,2376($s0)
    ori        $s2,$s2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    li         $a1,501
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,24($sp)
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000fe4
    lui        $t9,0x1
.L00000e88:
    sw         $t9,2360($s0)
    jal        splx
    ld         $a0,48($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,32($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,40($sp)
    lw         $a1,8($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,16($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,24($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L0000104c
    nop
    sw         $zero,2360($s0)
.L00000f18:
    jal        splx
    move       $a0,$s1
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    move       $v0,$zero
.L00000f34:
    ld         $ra,80($sp)
    ld         $s1,72($sp)
    ld         $s0,56($sp)
    ld         $s2,64($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000f4c:
    b          .L00000f34
    li         $v0,2
.L00000f54:
    beqz       $a0, .L00000f6c
    move       $a0,$s1
    jal        unlock_dmavec
    li         $a1,1
    sd         $zero,40($s1)
    sw         $zero,28($s1)
.L00000f6c:
    b          .L00000f34
    li         $v0,14
.L00000f74:
    b          .L00000f34
    negu       $v0,$v0
.L00000f7c:
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
    move       $a0,$s2
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a1,72($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000e2c
    lui        $t1,0x3
.L00000fe4:
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
    sd         $v0,8($sp)
    jal        splx
    ld         $a0,24($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,48($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000e88
    lui        $t9,0x1
.L0000104c:
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
    sd         $v0,16($sp)
    jal        splx
    move       $a0,$s1
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a1,72($s0)
    move       $s1,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L00000f18
    sw         $zero,2360($s0)

glabel kona_selectfeed_timeout
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    move       $s0,$a1
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s8,24($sp)
    daddiu     $s8,$a0,2576
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    ld         $at,64($s0)
    bnez       $at, .L0000110c
    sd         $v0,32($sp)
.L000010e8:
    ld         $s0,0($sp)
    move       $a0,$s8
    ld         $s1,8($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $ra,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000110c:
    ld         $a2,-30720($gp)
    lw         $a6,8($s0)
    li         $a1,4
    ld         $a5,40($s0)
    li         $a0,2123
    daddiu     $a3,$a2,56
    lw         $a4,2184($s1)
    jal        cmn_err_tag
    daddiu     $a2,$a2,64
    move       $a0,$s1
    jal        kona_die
    li         $a1,5
    li         $a3,-1
    sw         $a3,32($s0)
    daddiu     $a0,$s0,48
    jal        vsema
    sd         $zero,64($s0)
    b          .L000010e8
    ld         $v0,32($sp)

glabel kona_finish_selectfeed
    daddiu     $sp,$sp,-128
    sd         $s0,80($sp)
    ld         $s0,40($a0)
    sd         $ra,104($sp)
    sd         $s4,72($sp)
    sd         $s2,88($sp)
    move       $s2,$a0
    move       $s4,$a1
    sd         $s3,64($sp)
    move       $s3,$a2
    bnez       $a1, .L000011a8
    sd         $s1,112($sp)
    li         $v0,2
.L0000118c:
    ld         $s3,64($sp)
    ld         $ra,104($sp)
    ld         $s4,72($sp)
    ld         $s0,80($sp)
    ld         $s2,88($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000011a8:
    ld         $s1,112($a1)
    jal        curproc
    daddiu     $s1,$s1,32
    ld         $t8,72($s1)
    beq        $t8, $v0, .L000011cc
    nop
    ld         $s1,112($sp)
    b          .L0000118c
    li         $v0,22
.L000011cc:
    jal        RRM_CheckValidFault
    move       $a0,$s2
    bgez       $v0, .L000011e4
    ld         $a3,-30704($gp)
    b          .L0000137c
    li         $s4,14
.L000011e4:
    lwu        $a2,0($gp)
    move       $a1,$s0
    ld         $a0,-30696($gp)
    jal        kona_timeout
    move       $a4,$s1
    sd         $v0,64($s1)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000013e8
    lui        $ra,0x3
.L00001228:
    sw         $ra,2360($s0)
    jal        splx
    ld         $a0,48($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,502
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,24($sp)
    sd         $v0,56($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001450
    lui        $a2,0x1
.L00001284:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,56($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,256
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a2,-30688($gp)
    dsubu      $a2,$s4,$a2
    li         $a3,176
    ddiv       $zero,$a2,$a3
    ld         $a0,2304($s0)
    mflo       $a1
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,40($sp)
    move       $s4,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000014b8
    sd         $s4,96($sp)
.L00001300:
    sw         $zero,2360($s0)
    lui        $s4,0xc0
    ld         $a0,96($sp)
    jal        splx
    ori        $s4,$s4,0x108
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a3,40($s2)
    lw         $a2,80($a3)
    li         $a1,25
    daddiu     $a0,$s1,48
    addiu      $a2,$a2,1
    jal        psema
    sw         $a2,80($a3)
    lw         $v0,32($s1)
    li         $a0,-1
    beq        $v0, $a0, .L000013e0
    nop
    lw         $a3,8($s1)
    subu       $a3,$a3,$v0
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    dsrl       $a3,$a3,0x2
    sw         $a3,0($s3)
.L00001368:
    lw         $a4,36($s1)
    andi       $a4,$a4,0x800
    move       $s4,$zero
    sltu       $a4,$zero,$a4
    sw         $a4,4($s3)
.L0000137c:
    lw         $a5,28($s1)
    beqz       $a5, .L000013a8
    move       $a0,$s1
    jal        unlock_dmavec
    li         $a1,1
    ld         $a1,40($s1)
    jal        free_gfx_io_space
    lw         $a0,2184($s0)
    sw         $zero,28($s1)
    sw         $zero,8($s1)
    sd         $zero,40($s1)
.L000013a8:
    ld         $a7,40($s2)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
    daddiu     $a0,$s0,56
    jal        valusema
    sd         $zero,72($s1)
    beqz       $v0, .L000013d8
    ld         $s1,112($sp)
    jal        force_resched
    nop
    ld         $s1,112($sp)
.L000013d8:
    b          .L0000118c
    move       $v0,$s4
.L000013e0:
    b          .L00001368
    sw         $a0,0($s3)
.L000013e8:
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
    ld         $a0,32($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,48($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00001228
    lui        $ra,0x3
.L00001450:
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
    sd         $v0,16($sp)
    jal        splx
    ld         $a0,24($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,56($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L00001284
    lui        $a2,0x1
.L000014b8:
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
    ld         $s4,40($sp)
    sd         $v0,8($sp)
    jal        splx
    move       $a0,$s4
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a1,72($s0)
    move       $s4,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00001300
    sd         $s4,96($sp)

glabel kona_free_up_space
    move       $a4,$a0
    ld         $a3,-30720($gp)
    li         $a0,2124
    move       $a1,$zero
    daddiu     $sp,$sp,-16
    lw         $a4,2184($a4)
    daddiu     $a2,$a3,136
    sd         $ra,0($sp)
    jal        cmn_err_tag
    daddiu     $a3,$a3,56
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_diag_map_cleanup
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        curproc
    move       $s0,$a0
    ld         $at,5216($s0)
    bne        $at, $v0, .L000015ac
    ld         $ra,8($sp)
    ld         $a1,5224($s0)
    beqz       $a1, .L0000158c
    nop
    jal        free_gfx_io_space
    lw         $a0,2184($s0)
    sd         $zero,5224($s0)
.L0000158c:
    lw         $v0,5240($s0)
    beqz       $v0, .L000015a4
    li         $a1,1
    jal        unlock_dmavec
    daddiu     $a0,$s0,5232
    sw         $zero,5240($s0)
.L000015a4:
    sd         $zero,5216($s0)
    ld         $ra,8($sp)
.L000015ac:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_diag_map
    daddiu     $sp,$sp,-80
    lw         $v0,16($a2)
    sd         $s0,48($sp)
    ld         $s0,40($a0)
    li         $at,1
    andi       $v0,$v0,0x3
    sd         $s1,40($sp)
    move       $s1,$a2
    beq        $v0, $at, .L00001604
    sd         $ra,72($sp)
    li         $v1,2
    beq        $v0, $v1, .L000016b8
    li         $a1,22
.L000015ec:
    ld         $ra,72($sp)
    move       $v0,$a1
    ld         $s1,40($sp)
    ld         $s0,48($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001604:
    jal        curproc
    nop
    sd         $v0,64($sp)
    sd         $v0,32($sp)
    daddiu     $a0,$s0,2576
    jal        mutex_spinlock
    sd         $a0,56($sp)
    ld         $a5,5216($s0)
    ld         $a2,64($sp)
    ld         $a0,56($sp)
    beqz       $a5, .L00001644
    move       $a1,$v0
    beq        $a2, $a5, .L00001644
    nop
    b          .L00001648
    sd         $zero,32($sp)
.L00001644:
    sd         $a2,5216($s0)
.L00001648:
    jal        mutex_spinunlock
    nop
    lw         $a1,5240($s0)
    bnez       $a1, .L000016c8
    nop
    ld         $a2,5224($s0)
    bnez       $a2, .L000016c8
    ld         $a3,32($sp)
    beqz       $a3, .L000016c8
    nop
    lw         $a4,8($s1)
    beqz       $a4, .L000015ec
    li         $a1,22
    ld         $a0,0($s1)
    sd         $a0,0($sp)
    lw         $v1,8($s1)
    sw         $v1,12($sp)
    sw         $v1,8($sp)
    sw         $zero,16($sp)
    lw         $v0,16($s1)
    andi       $v0,$v0,0xc
    li         $a5,4
    beq        $v0, $a5, .L000016d0
    li         $a1,8
    beq        $v0, $a1, .L000016e8
    li         $a1,22
.L000016b0:
    b          .L000015ec
    sd         $zero,5216($s0)
.L000016b8:
    jal        kona_diag_map_cleanup
    move       $a0,$s0
    b          .L000015ec
    move       $a1,$zero
.L000016c8:
    b          .L000015ec
    li         $a1,16
.L000016d0:
    lw         $a2,8($s1)
    sltiu      $a2,$a2,4097
    bnez       $a2, .L00001704
    li         $a1,1
    b          .L000016b0
    li         $a1,7
.L000016e8:
    li         $a1,1
    jal        lock_dmavec
    daddiu     $a0,$sp,0
    bgez       $v0, .L00001728
    nop
    b          .L00001718
    negu       $a1,$v0
.L00001704:
    jal        lock_dmavec
    daddiu     $a0,$sp,0
    bgez       $v0, .L00001788
    li         $a3,4
    negu       $a1,$v0
.L00001718:
    bnez       $a1, .L000016b0
    nop
    b          .L00001768
    ld         $t0,0($sp)
.L00001728:
    lwu        $a1,8($s1)
    jal        kona_mapram_pagesizeshiftof
    ld         $a0,0($s1)
    lwu        $a2,8($s1)
    ld         $a1,0($s1)
    move       $a3,$v0
    jal        alloc_gfx_io_space
    lw         $a0,2184($s0)
    sd         $v0,5224($s0)
    dsrl       $a4,$v0,0xc
    sw         $a4,12($s1)
    andi       $a3,$v0,0xfff
    move       $a1,$zero
    ori        $a3,$a3,0x9000
    sw         $a3,20($s1)
.L00001764:
    ld         $t0,0($sp)
.L00001768:
    sd         $t0,5232($s0)
    lw         $a7,8($sp)
    sw         $a7,5240($s0)
    lw         $a6,12($sp)
    sw         $a6,5244($s0)
    lw         $a5,16($sp)
    b          .L000015ec
    sw         $a5,5248($s0)
.L00001788:
    lw         $a1,8($s1)
    daddiu     $a2,$sp,24
    jal        curproc_vtop
    ld         $a0,0($s1)
    lw         $t2,24($sp)
    dsll       $t2,$t2,0xe
    dsra       $t2,$t2,0xc
    lui        $t3,0x1000
    sll        $t2,$t2,0x0
    or         $t2,$t2,$t3
    sw         $t2,12($s1)
    lw         $t1,24($sp)
    dsll       $t1,$t1,0xe
    move       $a1,$zero
    andi       $t1,$t1,0xfff
    ori        $t1,$t1,0x9000
    b          .L00001764
    sw         $t1,20($s1)

glabel abi32_to_kona_dmaread_args
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    beqz       $a0, .L00001860
    move       $s0,$a3
    ld         $a4,16($a3)
    lwu        $a2,0($a4)
    sd         $a2,0($a1)
    lw         $a0,4($a4)
    sw         $a0,8($a1)
    lw         $v1,8($a4)
    sw         $v1,12($a1)
    lw         $v0,12($a4)
    sw         $v0,16($a1)
    lw         $at,144($a4)
    move       $v0,$zero
    sw         $at,152($a1)
.L00001810:
    dsll       $a6,$v0,0x2
    addiu      $v0,$v0,1
    slti       $a3,$v0,32
    daddu      $a5,$a6,$a4
    daddu      $a6,$a6,$a1
    lw         $a5,16($a5)
    sw         $a5,24($a6)
    beqz       $a3, .L00001850
    dsll       $t0,$v0,0x2
    addiu      $v0,$v0,1
    slti       $t1,$v0,32
    daddu      $a7,$t0,$a4
    daddu      $t0,$t0,$a1
    lw         $a7,16($a7)
    bnez       $t1, .L00001810
    sw         $a7,24($t0)
.L00001850:
    move       $v0,$zero
.L00001854:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001860:
    lw         $t1,0($a3)
    sltiu      $t1,$t1,148
    bnez       $t1, .L00001888
    sd         $ra,8($sp)
    ld         $t2,8($a3)
    sd         $t2,16($a3)
.L00001878:
    li         $t3,148
    sw         $t3,4($s0)
    b          .L00001854
    move       $v0,$zero
.L00001888:
    jal        kern_malloc
    li         $a0,148
    ld         $ra,8($sp)
    b          .L00001878
    sd         $v0,16($s0)

glabel abi32_to_kona_dmawrite_args
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    beqz       $a0, .L0000191c
    move       $s0,$a3
    ld         $a4,16($a3)
    lwu        $v1,0($a4)
    sd         $v1,0($a1)
    lw         $v0,4($a4)
    sw         $v0,8($a1)
    lw         $at,136($a4)
    move       $v0,$zero
    sw         $at,140($a1)
.L000018cc:
    dsll       $a3,$v0,0x2
    addiu      $v0,$v0,1
    slti       $a0,$v0,32
    daddu      $a2,$a3,$a4
    daddu      $a3,$a3,$a1
    lw         $a2,8($a2)
    sw         $a2,12($a3)
    beqz       $a0, .L0000190c
    dsll       $a6,$v0,0x2
    addiu      $v0,$v0,1
    slti       $a7,$v0,32
    daddu      $a5,$a6,$a4
    daddu      $a6,$a6,$a1
    lw         $a5,8($a5)
    bnez       $a7, .L000018cc
    sw         $a5,12($a6)
.L0000190c:
    move       $v0,$zero
.L00001910:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0000191c:
    lw         $a7,0($a3)
    sltiu      $a7,$a7,140
    bnez       $a7, .L00001944
    sd         $ra,8($sp)
    ld         $t0,8($a3)
    sd         $t0,16($a3)
.L00001934:
    li         $t1,140
    sw         $t1,4($s0)
    b          .L00001910
    move       $v0,$zero
.L00001944:
    jal        kern_malloc
    li         $a0,140
    ld         $ra,8($sp)
    b          .L00001934
    sd         $v0,16($s0)

glabel abi32_to_kona_dmapool_args
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00001994
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,16
    bnez       $at, .L000019c4
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00001984:
    li         $v1,16
    sw         $v1,4($s0)
    b          .L000019b8
    move       $v0,$zero
.L00001994:
    ld         $a0,16($a3)
    lwu        $a4,0($a0)
    sd         $a4,0($a1)
    lw         $a3,4($a0)
    sw         $a3,8($a1)
    lw         $a2,8($a0)
    sw         $a2,12($a1)
    lw         $a0,12($a0)
    sw         $a0,16($a1)
.L000019b8:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000019c4:
    jal        kern_malloc
    li         $a0,16
    ld         $ra,8($sp)
    b          .L00001984
    sd         $v0,16($s0)

glabel abi32_to_kona_dmavec
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00001a14
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,16
    bnez       $at, .L00001a44
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00001a04:
    li         $v1,16
    sw         $v1,4($s0)
    b          .L00001a38
    move       $v0,$zero
.L00001a14:
    ld         $a0,16($a3)
    lwu        $a4,0($a0)
    sd         $a4,0($a1)
    lw         $a3,4($a0)
    sw         $a3,8($a1)
    lw         $a2,8($a0)
    sw         $a2,12($a1)
    lw         $a0,12($a0)
    sw         $a0,16($a1)
.L00001a38:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001a44:
    jal        kern_malloc
    li         $a0,16
    ld         $ra,8($sp)
    b          .L00001a04
    sd         $v0,16($s0)

glabel abi32_to_kona_start_selectfeed_args
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00001a94
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,20
    bnez       $at, .L00001acc
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00001a84:
    li         $v1,20
    sw         $v1,4($s0)
    b          .L00001ac0
    move       $v0,$zero
.L00001a94:
    ld         $a0,16($a3)
    lwu        $a5,0($a0)
    sd         $a5,0($a1)
    lw         $a4,4($a0)
    sw         $a4,8($a1)
    lw         $a3,8($a0)
    sw         $a3,12($a1)
    lw         $a2,12($a0)
    sw         $a2,16($a1)
    lw         $a0,16($a0)
    sw         $a0,24($a1)
.L00001ac0:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001acc:
    jal        kern_malloc
    li         $a0,20
    ld         $ra,8($sp)
    b          .L00001a84
    sd         $v0,16($s0)

glabel abi32_to_kona_diag_map
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00001b1c
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,20
    bnez       $at, .L00001b44
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00001b0c:
    li         $v1,20
    sw         $v1,4($s0)
    b          .L00001b38
    move       $v0,$zero
.L00001b1c:
    ld         $a0,16($a3)
    lwu        $a3,0($a0)
    sd         $a3,0($a1)
    lw         $a2,4($a0)
    sw         $a2,8($a1)
    lw         $a0,12($a0)
    sw         $a0,16($a1)
.L00001b38:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001b44:
    jal        kern_malloc
    li         $a0,20
    ld         $ra,8($sp)
    b          .L00001b0c
    sd         $v0,16($s0)

glabel kona_diag_map_to_abi32
    lw         $at,0($a2)
    daddiu     $sp,$sp,-32
    sd         $s8,0($sp)
    sltiu      $at,$at,20
    move       $s8,$a0
    sd         $s0,8($sp)
    move       $s0,$a2
    bnez       $at, .L00001bc8
    sd         $ra,16($sp)
    ld         $a2,8($a2)
    sd         $a2,16($s0)
.L00001b84:
    li         $a4,20
    sw         $a4,4($s0)
    ld         $s0,8($sp)
    ld         $a3,0($s8)
    sw         $a3,0($a2)
    lw         $a1,8($s8)
    sw         $a1,4($a2)
    lw         $a0,16($s8)
    sw         $a0,12($a2)
    lw         $v1,12($s8)
    sw         $v1,8($a2)
    lw         $v0,20($s8)
    ld         $s8,0($sp)
    daddiu     $sp,$sp,32
    sw         $v0,16($a2)
    jr         $ra
    move       $v0,$zero
.L00001bc8:
    jal        kern_malloc
    li         $a0,20
    ld         $ra,16($sp)
    move       $a2,$v0
    b          .L00001b84
    sd         $v0,16($s0)
