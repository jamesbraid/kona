.section .text
.set noat
.set noreorder


glabel kona_select_cursor
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    ld         $a0,40($a0)
    move       $s8,$a2
    sd         $a0,24($sp)
    daddiu     $a0,$a0,3520
    jal        mutex_spinlock
    sd         $a0,16($sp)
    ld         $a0,16($sp)
    ld         $a3,24($sp)
    lw         $a7,0($s8)
    sb         $a7,3555($a3)
    lw         $a6,4($s8)
    sw         $a6,3560($a3)
    lw         $a5,8($s8)
    sh         $a5,3568($a3)
    lw         $a2,12($s8)
    li         $a4,1
    sb         $a4,3553($a3)
    sb         $a4,3552($a3)
    move       $a1,$v0
    jal        mutex_spinunlock
    sh         $a2,3570($a3)
    ld         $ra,0($sp)
    move       $v0,$zero
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel KONApositioncursor
    daddiu     $sp,$sp,-48
    sd         $a1,32($sp)
    sd         $a2,24($sp)
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,3520
    jal        mutex_spinlock
    sd         $a0,16($sp)
    li         $at,1
    sb         $at,3553($s8)
    ld         $a0,16($sp)
    move       $a1,$v0
    ld         $v0,24($sp)
    ld         $v1,32($sp)
    sh         $v1,3564($s8)
    jal        mutex_spinunlock
    sh         $v0,3566($s8)
    ld         $ra,0($sp)
    move       $v0,$zero
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_video_rundown
    daddiu     $sp,$sp,-48
    sd         $s3,32($sp)
    sd         $s2,24($sp)
    sd         $s0,8($sp)
    ld         $v0,3544($a0)
    sd         $s4,0($sp)
    move       $s4,$a0
    move       $s0,$a1
    sd         $s1,16($sp)
    daddiu     $s1,$a0,3544
    beqz       $v0, .L00000120
    sd         $ra,40($sp)
    move       $s2,$zero
.L00000104:
    ld         $a4,112($v0)
    beq        $s0, $v0, .L00000144
    daddiu     $s3,$a4,112
    move       $s2,$v0
    ld         $v0,136($a4)
    bnez       $v0, .L00000104
    daddiu     $s1,$a4,136
.L00000120:
    move       $v0,$zero
    ld         $s2,24($sp)
.L00000128:
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    ld         $s4,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000144:
    move       $a0,$s4
    jal        kona_untimeout
    ld         $a1,120($a4)
    sd         $zero,8($s3)
    ld         $v0,24($s3)
    sd         $v0,0($s1)
    sd         $zero,24($s3)
    ld         $at,3536($s4)
    bne        $at, $s0, .L00000170
    li         $v0,1
    sd         $s2,3536($s4)
.L00000170:
    b          .L00000128
    ld         $s2,24($sp)

glabel kona_video_cleanup
    daddiu     $sp,$sp,-48
    sd         $a1,32($sp)
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,3520
    jal        mutex_spinlock
    sd         $a0,24($sp)
    sd         $v0,16($sp)
    move       $a0,$s8
    jal        kona_video_rundown
    ld         $a1,32($sp)
    ld         $a0,24($sp)
    move       $s8,$v0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,0($sp)
    move       $v0,$s8
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_swap_complete
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s2,0($sp)
    move       $s2,$a1
    beqz       $a2, .L00000204
    sd         $ra,24($sp)
    li         $a0,2103
    ld         $a2,-30720($gp)
    li         $a1,4
    move       $a5,$s2
    lw         $a4,2184($s1)
    jal        cmn_err_tag
    daddiu     $a3,$a2,40
.L00000204:
    ld         $at,120($s2)
    ld         $at,160($at)
    beqz       $at, .L0000024c
    sd         $s0,16($sp)
    lw         $a6,176($s1)
    beqz       $a6, .L0000024c
    move       $s0,$zero
.L00000220:
    ld         $a7,120($s2)
    ld         $t0,184($s1)
    ld         $a7,160($a7)
.L0000022c:
    dsll       $t1,$s0,0x3
    daddu      $t1,$t0,$t1
    ld         $t1,0($t1)
    addiu      $a3,$s0,1
    beq        $t1, $a7, .L0000026c
    sltu       $a4,$a3,$a6
    bnez       $a4, .L0000022c
    move       $s0,$a3
.L0000024c:
    jal        rrmValidateBuffer
    move       $a0,$s2
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000026c:
    ld         $a2,2376($s1)
    lui        $a0,0x80
    li         $a1,128
    ori        $a0,$a0,0x3c0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a2,2376($s1)
    lui        $a0,0x80
    li         $a1,2
    ori        $a0,$a0,0x3d0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    lw         $a6,176($s1)
    addiu      $s0,$s0,1
    sltu       $a1,$s0,$a6
    bnez       $a1, .L00000220
    nop
    b          .L0000024c
    nop

glabel kona_gsync_complete
    daddiu     $sp,$sp,-16
    move       $a7,$a0
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $a2, .L000002f0
    sd         $ra,8($sp)
    ld         $a3,-30720($gp)
    li         $a0,2104
    li         $a1,4
    move       $a5,$s0
    daddiu     $a2,$a3,48
    lw         $a4,2184($a7)
    jal        cmn_err_tag
    daddiu     $a3,$a3,40
.L000002f0:
    jal        rrmValidateRetrace
    move       $a0,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_retrace_timeout
    daddiu     $sp,$sp,-48
    sd         $s3,32($sp)
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s4,16($sp)
    move       $s4,$a0
    sd         $s2,0($sp)
    daddiu     $s2,$a0,3520
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    move       $s3,$v0
    beqz       $s0, .L000003b4
    sd         $s1,40($sp)
    ld         $a4,112($s0)
    beqz       $a4, .L000003b4
    daddiu     $s1,$a4,112
    beqz       $s1, .L000003b8
    move       $a0,$s2
    ld         $at,120($a4)
    beqz       $at, .L0000038c
    move       $a0,$s2
    move       $a0,$s4
    sd         $zero,120($a4)
    jal        kona_video_rundown
    move       $a1,$s0
    ld         $v0,16($s1)
    move       $a0,$s4
    move       $a1,$s0
    jalr       $v0
    li         $a2,1
    sd         $zero,16($s1)
    move       $a0,$s2
.L0000038c:
    jal        mutex_spinunlock
    move       $a1,$s3
    ld         $s2,0($sp)
.L00000398:
    ld         $s3,32($sp)
    ld         $ra,8($sp)
    ld         $s4,16($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000003b4:
    move       $a0,$s2
.L000003b8:
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L00000398
    ld         $s2,0($sp)

glabel kona_retrace_setup
    daddiu     $sp,$sp,-64
    sd         $s0,0($sp)
    sd         $s7,16($sp)
    sd         $s1,8($sp)
    sd         $s8,40($sp)
    move       $s1,$a1
    move       $s7,$a2
    ld         $s8,112($a1)
    move       $s0,$a0
    daddiu     $a0,$a0,3520
    sd         $a0,48($sp)
    sd         $ra,32($sp)
    jal        mutex_spinlock
    daddiu     $s8,$s8,112
    lw         $ra,3528($s0)
    addiu      $at,$ra,1
    sw         $at,3528($s0)
    sd         $s7,16($s8)
    sw         $ra,0($s8)
    ld         $a2,3536($s0)
    ld         $a0,48($sp)
    move       $a1,$v0
    beqz       $a2, .L00000430
    sd         $ra,24($sp)
    ld         $v0,112($a2)
    sd         $s1,136($v0)
.L00000430:
    ld         $v1,3544($s0)
    bnez       $v1, .L00000440
    sd         $s1,3536($s0)
    sd         $s1,3544($s0)
.L00000440:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    ld         $s7,16($sp)
    jal        mutex_spinunlock
    ld         $s8,24($sp)
    ld         $ra,32($sp)
    move       $v0,$s8
    ld         $s8,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel kona_retrace_activate
    ld         $a3,-30704($gp)
    daddiu     $sp,$sp,-64
    sd         $a2,16($sp)
    lwu        $a2,0($gp)
    sd         $s0,24($sp)
    sd         $s1,40($sp)
    move       $a4,$a1
    ld         $s1,112($a1)
    move       $s0,$a0
    move       $a1,$a0
    ld         $a0,-30712($gp)
    sd         $ra,32($sp)
    jal        kona_timeout
    daddiu     $s1,$s1,112
    sd         $v0,8($s1)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000005b0
    sd         $s2,48($sp)
    lui        $t8,0x3
.L000004d0:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s1
    lui        $s1,0xc0
    ld         $a0,2376($s0)
    ori        $s1,$s1,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    li         $a1,487
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000618
    lui        $t8,0x1
.L00000528:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s2
    ld         $a0,2376($s0)
    ld         $s2,16($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s2
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000680
    nop
    sw         $zero,2360($s0)
.L00000580:
    jal        splx
    move       $a0,$s2
    ld         $a0,2376($s0)
    ld         $s2,48($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000005b0:
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
    move       $s2,$v0
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
    move       $a0,$s2
    b          .L000004d0
    lui        $t8,0x3
.L00000618:
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
    b          .L00000528
    lui        $t8,0x1
.L00000680:
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
    ld         $a0,8($sp)
    b          .L00000580
    sw         $zero,2360($s0)

glabel KONAschedswapbuf
    ld         $v0,112($a1)
    daddiu     $sp,$sp,-80
    sd         $a2,16($sp)
    sd         $s5,64($sp)
    sd         $ra,72($sp)
    sd         $v0,8($sp)
    sd         $s4,32($sp)
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $s1,40($sp)
    slti       $at,$a2,64
    move       $s1,$a1
    sd         $s2,24($sp)
    daddu      $s2,$a2,$a0
    move       $s4,$a3
    beqz       $at, .L0000074c
    lbu        $v0,4360($s2)
    li         $a1,-2
    and        $a1,$v0,$a1
    sb         $a1,4360($s2)
    ld         $a0,120($s1)
    lh         $a0,18($a0)
    or         $a0,$a0,$a1
    b          .L0000076c
    sb         $a0,4360($s2)
.L0000074c:
    li         $a2,-3
    and        $a2,$v0,$a2
    sb         $a2,4360($s2)
    ld         $a3,120($a1)
    lh         $a3,18($a3)
    sll        $a3,$a3,0x1
    or         $a2,$a2,$a3
    sb         $a2,4360($s2)
.L0000076c:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s3,56($sp)
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000a5c
    lui        $a3,0x3
.L00000794:
    sw         $a3,2360($s0)
    jal        splx
    move       $a0,$s3
    lui        $s3,0xc0
    ld         $a0,2376($s0)
    ori        $s3,$s3,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    li         $a1,500
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s5,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000ac4
    lui        $t8,0x1
.L000007ec:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s5
    ld         $a0,2376($s0)
    ld         $s5,64($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    ld         $a1,120($s1)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lh         $a1,18($a1)
    ld         $a1,128($s1)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lh         $a1,18($a1)
    li         $a1,370
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $a2,5488($s0)
    beqz       $a2, .L00000870
    li         $a0,1
    lw         $v0,5500($s0)
    li         $a3,-1
    beq        $v0, $a3, .L00000870
    li         $a0,1
    ld         $a4,8($sp)
    lh         $a4,248($a4)
    beq        $a4, $v0, .L00000958
    li         $a0,1
.L00000870:
    beq        $s4, $a0, .L00000a00
    li         $a1,486
    ld         $a6,120($s1)
    ld         $v0,160($a6)
    beqz       $v0, .L00000a00
    li         $a1,486
    lw         $a5,4($v0)
    bnez       $a5, .L000008ec
    nop
    lw         $a6,0($v0)
    sw         $a6,4($v0)
    ld         $a0,120($s1)
.L000008a0:
    sb         $zero,176($a0)
    ld         $a6,120($s1)
    ld         $a0,168($a0)
    bne        $a6, $a0, .L000008a0
    nop
    lw         $a0,176($s0)
    beqz       $a0, .L000008ec
    move       $s2,$zero
.L000008c0:
    ld         $a6,120($s1)
    ld         $a7,184($s0)
    ld         $v0,160($a6)
.L000008cc:
    dsll       $t0,$s2,0x3
    daddu      $t0,$a7,$t0
    ld         $t0,0($t0)
    addiu      $a1,$s2,1
    beq        $t0, $v0, .L000009c8
    sltu       $a2,$a1,$a0
    bnez       $a2, .L000008cc
    move       $s2,$a1
.L000008ec:
    lbu        $t1,176($a6)
    beqz       $t1, .L00000b94
.L000008f4:
    li         $a1,1
.L000008f8:
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000b2c
    ld         $s2,24($sp)
.L0000091c:
    ld         $s4,32($sp)
    sw         $zero,2360($s0)
    jal        splx
    move       $a0,$s1
    ld         $a0,2376($s0)
    ld         $s1,40($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    ld         $ra,72($sp)
    move       $v0,$zero
    ld         $s3,56($sp)
    ld         $s0,48($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000958:
    li         $a1,358
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,486
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,20($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,16($sp)
    lbu        $a1,4360($s2)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    move       $a0,$s0
    move       $a1,$s1
    jal        kona_retrace_setup
    ld         $a2,-30696($gp)
    move       $a2,$v0
    move       $a0,$s0
    jal        kona_retrace_activate
    move       $a1,$s1
    b          .L000008f8
    li         $a1,1
.L000009c8:
    li         $a1,475
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$zero
    lw         $a0,176($s0)
    addiu      $s2,$s2,1
    sltu       $a1,$s2,$a0
    bnez       $a1, .L000008c0
    nop
    b          .L000008ec
    ld         $a6,120($s1)
    li         $a1,486
.L00000a00:
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,20($s1)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,16($sp)
    lbu        $a1,4360($s2)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a2,1
    beq        $s4, $a2, .L00000cb8
    move       $a0,$s0
    move       $a1,$s1
    jal        kona_retrace_setup
    ld         $a2,-30696($gp)
    move       $a2,$v0
    move       $a0,$s0
    jal        kona_retrace_activate
    move       $a1,$s1
    b          .L000008f8
    li         $a1,1
.L00000a5c:
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
    move       $s5,$v0
    jal        splx
    move       $a0,$s3
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a1,72($s0)
    move       $s3,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    move       $a0,$s5
    b          .L00000794
    lui        $a3,0x3
.L00000ac4:
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
    move       $a0,$s5
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a1,72($s0)
    move       $s5,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L000007ec
    lui        $t8,0x1
.L00000b2c:
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
    move       $s2,$v0
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
    move       $a0,$s2
    b          .L0000091c
    ld         $s2,24($sp)
.L00000b94:
    ld         $a2,-30696($gp)
    move       $a1,$s1
    move       $a0,$s0
    li         $a3,1
    jal        kona_retrace_setup
    sb         $a3,176($a6)
    ld         $a7,120($s1)
    ld         $a7,160($a7)
    sw         $v0,8($a7)
    ld         $a6,120($s1)
    ld         $a6,160($a6)
    lw         $a5,4($a6)
    addiu      $a5,$a5,-1
    sw         $a5,4($a6)
    ld         $a6,120($s1)
    ld         $a4,160($a6)
    lw         $a4,4($a4)
    bnez       $a4, .L000008f4
    move       $s2,$a6
    li         $a1,486
.L00000be4:
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,4($s2)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,20($s2)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,20($s2)
    ld         $a0,2304($s0)
    daddu      $a1,$a1,$s0
    jal        gfx_pio_write_32
    lbu        $a1,4360($a1)
    sb         $zero,176($s2)
    ld         $s2,168($s2)
    ld         $a6,120($s1)
    bne        $a6, $s2, .L00000be4
    li         $a1,486
    lw         $a0,176($s0)
    beqz       $a0, .L00000d08
    move       $s2,$zero
.L00000c38:
    ld         $v0,120($s1)
    ld         $a7,184($s0)
    ld         $v0,160($v0)
.L00000c44:
    dsll       $v1,$s2,0x3
    daddu      $v1,$a7,$v1
    ld         $v1,0($v1)
    addiu      $a2,$s2,1
    beq        $v1, $v0, .L00000cd0
    sltu       $a1,$a2,$a0
    bnez       $a1, .L00000c44
    move       $s2,$a2
.L00000c64:
    move       $a0,$s0
    move       $a1,$s1
    jal        kona_retrace_activate
    lw         $a2,8($v0)
    li         $a0,2
    bne        $s4, $a0, .L000008f4
    li         $a1,226
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lui        $s2,0x478
    ori        $s2,$s2,0x478
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s2
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s2
    jal        rrmValidateBuffer
    move       $a0,$s1
    b          .L000008f8
    li         $a1,1
.L00000cb8:
    move       $a0,$s0
    move       $a1,$s1
    jal        kona_swap_complete
    move       $a2,$zero
    b          .L000008f8
    li         $a1,1
.L00000cd0:
    li         $a1,475
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a0,176($s0)
    addiu      $s2,$s2,1
    sltu       $t8,$s2,$a0
    bnez       $t8, .L00000c38
    nop
    ld         $v0,120($s1)
    b          .L00000c64
    ld         $v0,160($v0)
.L00000d08:
    b          .L00000c64
    ld         $v0,160($a6)

glabel KONAunschedswapbuf
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        kona_video_cleanup
    ld         $a0,40($a0)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel KONAschedretraceevent
    ld         $a2,-30688($gp)
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        kona_retrace_setup
    sd         $a1,16($sp)
    move       $a2,$v0
    move       $a0,$s8
    jal        kona_retrace_activate
    ld         $a1,16($sp)
    ld         $ra,0($sp)
    move       $v0,$zero
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel KONAsetdisplaymode
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    sd         $ra,24($sp)
    sd         $s2,32($sp)
    move       $s2,$a1
    sd         $s3,16($sp)
    move       $s3,$a2
    jal        RRM_CheckValidFault
    ld         $s0,40($a0)
    bltz       $v0, .L00000ec4
    daddu      $v0,$s2,$s0
    sb         $s3,4360($v0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s1,48($sp)
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000ecc
    lui        $v1,0x3
.L00000dc4:
    sw         $v1,2360($s0)
    jal        splx
    move       $a0,$s1
    lui        $s1,0xc0
    ld         $a0,2376($s0)
    ori        $s1,$s1,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    li         $a1,486
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s4,56($sp)
    move       $s4,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000f34
    lui        $t8,0x1
.L00000e1c:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s4
    ld         $a0,2376($s0)
    ld         $s4,56($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s2
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s3
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000f9c
    nop
    sw         $zero,2360($s0)
.L00000e8c:
    jal        splx
    move       $a0,$s2
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $s1,48($sp)
    move       $v0,$zero
.L00000eac:
    ld         $ra,24($sp)
    ld         $s3,16($sp)
    ld         $s2,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000ec4:
    b          .L00000eac
    li         $v0,-14
.L00000ecc:
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
    ld         $a0,0($sp)
    b          .L00000dc4
    lui        $v1,0x3
.L00000f34:
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
    b          .L00000e1c
    lui        $t8,0x1
.L00000f9c:
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
    b          .L00000e8c
    sw         $zero,2360($s0)

glabel kona_mswap_complete
    daddiu     $sp,$sp,-64
    sd         $s5,56($sp)
    sd         $ra,48($sp)
    sd         $s3,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s4,16($sp)
    move       $s4,$a2
    beqz       $a1, .L0000103c
    sd         $s2,40($sp)
    jal        mutex_spinlock
    daddiu     $a0,$a0,3520
    sw         $v0,0($sp)
.L0000103c:
    lw         $a0,3576($s1)
    li         $s5,-1
    beqz       $a0, .L000010c8
    sd         $s0,32($sp)
    b          .L00001084
    move       $s0,$zero
.L00001054:
    jal        rrmValidateMGRSwapBuf
    ld         $a0,0($s1)
    lw         $at,3576($s1)
    addiu      $at,$at,-1
    sw         $at,3576($s1)
    sw         $s5,3592($s2)
    sw         $zero,3976($s2)
    lw         $a0,3576($s1)
    addiu      $s0,$s0,1
    beqz       $a0, .L000010c8
    slti       $a1,$s0,96
    beqz       $a1, .L000010c8
.L00001084:
    dsll       $s2,$s0,0x2
.L00001088:
    daddu      $s2,$s1,$s2
    lw         $a1,3976($s2)
    beqz       $a1, .L000010a8
    nop
    lw         $t8,3592($s2)
    sltu       $t8,$s4,$t8
    beqz       $t8, .L00001054
    nop
.L000010a8:
    bnez       $s3, .L00001054
    nop
    addiu      $a1,$s0,1
    beqz       $a0, .L000010c8
    move       $s0,$a1
    slti       $t9,$a1,96
    bnez       $t9, .L00001088
    dsll       $s2,$s0,0x2
.L000010c8:
    beqz       $s3, .L000010fc
    lw         $a1,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$s1,3520
    ld         $a2,-30720($gp)
    li         $a1,4
    li         $a0,2105
    daddiu     $a3,$a2,40
    lw         $a4,2184($s1)
    jal        cmn_err_tag
    daddiu     $a2,$a2,80
    b          .L00001104
    ld         $s5,56($sp)
.L000010fc:
    beqz       $a0, .L00001124
.L00001100:
    ld         $s5,56($sp)
.L00001104:
    ld         $s2,40($sp)
    ld         $s0,32($sp)
    ld         $ra,48($sp)
    ld         $s1,8($sp)
    ld         $s3,24($sp)
    ld         $s4,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001124:
    move       $a0,$s1
    jal        kona_untimeout
    ld         $a1,3584($s1)
    b          .L00001100
    sd         $zero,3584($s1)

glabel KONAschedmgrswapbuf
    daddiu     $sp,$sp,-96
    sd         $a4,24($sp)
    sd         $s0,64($sp)
    sd         $ra,48($sp)
    sd         $s2,56($sp)
    move       $s2,$a1
    sd         $s3,40($sp)
    move       $s3,$a2
    jal        RRM_CheckValidFault
    ld         $s0,40($a0)
    bltz       $v0, .L00001328
    daddiu     $a0,$s0,3520
    jal        mutex_spinlock
    sd         $a0,16($sp)
    sd         $v0,32($sp)
    lw         $v0,3576($s0)
    beqz       $v0, .L00001188
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,3584($s0)
.L00001188:
    ld         $a3,-30704($gp)
    lwu        $a2,0($gp)
    li         $a4,1
    ld         $a0,-30680($gp)
    move       $a1,$s0
    jal        kona_timeout
    sd         $s1,80($sp)
    ld         $a1,32($sp)
    sd         $v0,3584($s0)
    lw         $v1,3528($s0)
    lw         $t8,3576($s0)
    dsll       $s1,$s3,0x2
    addiu      $a0,$v1,1
    sw         $a0,3528($s0)
    daddu      $s1,$s0,$s1
    addiu      $t8,$t8,1
    sw         $t8,3576($s0)
    sw         $s2,3976($s1)
    sw         $v1,3592($s1)
    jal        mutex_spinunlock
    ld         $a0,16($sp)
    ld         $a0,2272($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    sd         $s1,72($sp)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001330
    lui        $t9,0x3
.L00001208:
    sw         $t9,2360($s0)
    jal        splx
    move       $a0,$s1
    lui        $s1,0xc0
    ld         $a0,2376($s0)
    ori        $s1,$s1,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    li         $a1,486
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s4,88($sp)
    move       $s4,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001398
    lui        $t8,0x1
.L00001260:
    sw         $t8,2360($s0)
    jal        splx
    move       $a0,$s4
    ld         $a0,2376($s0)
    ld         $s4,88($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s2
    ld         $s2,24($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s3
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$s2
    ld         $s2,72($sp)
    li         $a1,487
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,3592($s2)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001400
    nop
    sw         $zero,2360($s0)
.L000012f0:
    jal        splx
    move       $a0,$s2
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $s1,80($sp)
    move       $v0,$zero
.L00001310:
    ld         $ra,48($sp)
    ld         $s3,40($sp)
    ld         $s2,56($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00001328:
    b          .L00001310
    li         $v0,-14
.L00001330:
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
    ld         $a0,0($sp)
    b          .L00001208
    lui        $t9,0x3
.L00001398:
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
    b          .L00001260
    lui        $t8,0x1
.L00001400:
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
    b          .L000012f0
    sw         $zero,2360($s0)

glabel kona_video_tick
    lw         $at,144($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00001488
    sd         $ra,8($sp)
    jal        sendgroupintr
    ld         $a0,152($a0)
.L00001488:
    lw         $v0,164($s0)
    lw         $a0,124($s0)
    lw         $a1,128($s0)
    ld         $v1,136($s0)
    addiu      $a1,$a1,1
    sw         $a1,128($s0)
    addiu      $a0,$a0,1
    sw         $a0,124($s0)
    addiu      $v0,$v0,1
    bnez       $v1, .L000014c0
    sw         $v0,164($s0)
    ld         $a2,168($s0)
    beqz       $a2, .L000014cc
    ld         $ra,8($sp)
.L000014c0:
    jal        rrmValidateVideoSync
    move       $a0,$s0
    ld         $ra,8($sp)
.L000014cc:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_determine_cursor_channel
    li         $a3,31
    lbu        $t2,28($a0)
    li         $t1,32
    move       $t0,$zero
    lh         $a6,36($a0)
    li         $t8,1
    lui        $a4,0xf
    lh         $a7,38($a0)
    b          .L0000150c
    ori        $a4,$a4,0x423f
.L00001500:
    addiu      $a3,$a3,-1
    bltz       $a3, .L00001604
    dsll       $v0,$t1,0x4
.L0000150c:
    dsll       $v0,$a3,0x4
    daddu      $v0,$a0,$v0
    lbu        $a5,928($v0)
    beqz       $a5, .L00001580
    nop
    lb         $a5,929($v0)
    slt        $v1,$a4,$a5
    bnez       $v1, .L00001580
    nop
    lh         $a1,930($v0)
    slt        $a1,$a6,$a1
    bnez       $a1, .L00001580
    nop
    lh         $a2,934($v0)
    slt        $a2,$a6,$a2
    beqz       $a2, .L00001580
    nop
    lh         $t3,932($v0)
    slt        $t3,$a7,$t3
    bnez       $t3, .L00001580
    nop
    lh         $t9,936($v0)
    slt        $t9,$a7,$t9
    xor        $t3,$a3,$t2
    beqz       $t9, .L00001580
    sltiu      $t3,$t3,1
    movn       $t0,$t8,$t3
    move       $a4,$a5
    move       $t1,$a3
.L00001580:
    addiu      $a3,$a3,-1
    dsll       $v0,$a3,0x4
    bltz       $a3, .L00001600
    daddu      $v0,$a0,$v0
    lbu        $v1,928($v0)
    beqz       $v1, .L00001500
    nop
    lb         $a5,929($v0)
    slt        $a1,$a4,$a5
    bnez       $a1, .L00001500
    nop
    lh         $a2,930($v0)
    slt        $a2,$a6,$a2
    bnez       $a2, .L00001500
    nop
    lh         $t3,934($v0)
    slt        $t3,$a6,$t3
    beqz       $t3, .L00001500
    nop
    lh         $t9,932($v0)
    slt        $t9,$a7,$t9
    xor        $t3,$a3,$t2
    bnez       $t9, .L00001500
    sltiu      $t3,$t3,1
    lh         $t9,936($v0)
    slt        $t9,$a7,$t9
    beqz       $t9, .L00001500
    nop
    movn       $t0,$t8,$t3
    move       $a4,$a5
    b          .L00001500
    move       $t1,$a3
.L00001600:
    dsll       $v0,$t1,0x4
.L00001604:
    slti       $a5,$t1,8
    dsll       $a3,$t2,0x4
    bnez       $a5, .L00001648
    daddu      $a3,$a0,$a3
    lbu        $a6,26($a0)
    beqz       $a6, .L00001628
    move       $v0,$zero
    li         $v0,1
    sb         $zero,26($a0)
.L00001628:
    lb         $a7,929($a3)
    bne        $a7, $a4, .L0000163c
    nop
    bnez       $t0, .L00001680
    nop
.L0000163c:
    li         $v0,1
    jr         $ra
    sb         $t1,28($a0)
.L00001648:
    lb         $a6,929($a3)
    daddu      $a5,$a0,$v0
    lbu        $a5,928($a5)
    move       $v0,$zero
    xori       $a5,$a5,0x2
    bne        $a6, $a4, .L00001688
    sltiu      $a5,$a5,1
    beqz       $t0, .L00001688
    nop
.L0000166c:
    lbu        $a6,26($a0)
    beq        $a5, $a6, .L00001680
    nop
    li         $v0,1
    sb         $a5,26($a0)
.L00001680:
    jr         $ra
    nop
.L00001688:
    li         $v0,1
    b          .L0000166c
    sb         $t1,28($a0)

glabel kona_enable_dac_cursor
    daddiu     $sp,$sp,-64
    sd         $s4,24($sp)
    sd         $s5,0($sp)
    sd         $s6,40($sp)
    sd         $s0,16($sp)
    sd         $s3,48($sp)
    lbu        $s3,3554($a0)
    sd         $s1,8($sp)
    lui        $s1,0x80
    move       $s0,$a0
    sd         $s2,56($sp)
    ori        $s2,$s1,0x3c0
    sd         $ra,32($sp)
    beqz       $s3, .L000016f0
    ori        $s1,$s1,0x3d0
    ld         $a0,2376($a0)
    li         $a1,259
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
.L000016f0:
    li         $s4,2816
    li         $s5,2818
    b          .L00001738
    move       $s3,$zero
.L00001700:
    move       $s6,$zero
.L00001704:
    ld         $a0,2376($s0)
.L00001708:
    move       $a1,$s5
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    move       $a1,$s6
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    addiu      $s3,$s3,1
    slti       $a1,$s3,8
    addiu      $s4,$s4,256
    beqz       $a1, .L00001788
    addiu      $s5,$s5,256
.L00001738:
    ld         $a0,2376($s0)
    move       $a1,$s4
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    li         $a1,4
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    li         $a1,2
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    lbu        $a1,3556($s0)
    bne        $s3, $a1, .L00001700
    move       $s6,$zero
    lbu        $a2,3554($s0)
    beqz       $a2, .L000017b0
    nop
    b          .L00001704
    li         $s6,5
.L00001788:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,56($sp)
    ld         $s3,48($sp)
    ld         $ra,32($sp)
    ld         $s4,24($sp)
    ld         $s5,0($sp)
    ld         $s6,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000017b0:
    b          .L00001708
    ld         $a0,2376($s0)

glabel kona_video_intr
    daddiu     $sp,$sp,-80
    sd         $ra,32($sp)
    sd         $s0,24($sp)
    move       $s0,$a0
    jal        kona_video_tick
    sd         $s5,72($sp)
    daddiu     $s5,$s0,3520
    sd         $s4,64($sp)
    jal        mutex_spinlock
    move       $a0,$s5
    ld         $a0,2376($s0)
    lui        $a1,0x80
    move       $s4,$v0
    ori        $a1,$a1,0x248
    sd         $s2,40($sp)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    move       $s2,$v0
    move       $a0,$s0
    jal        kona_nclops_swapped
    move       $a1,$v0
    ld         $a2,184($s0)
    ld         $a2,0($a2)
    bnez       $a2, .L0000182c
    sd         $s3,56($sp)
    lw         $a3,5500($s0)
    li         $a4,-1
    beq        $a3, $a4, .L00001bf4
    nop
.L0000182c:
    ld         $a0,2376($s0)
.L00001830:
    lui        $a2,0x80
    li         $a1,1
    ori        $a2,$a2,0x3a8
    sd         $s1,48($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $s1,3544($s0)
    beqz       $s1, .L0000189c
    nop
.L00001854:
    ld         $a2,112($s1)
    lw         $a3,112($a2)
    sltu       $a3,$s2,$a3
    bnez       $a3, .L0000189c
    daddiu     $s3,$a2,112
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,120($a2)
    ld         $a4,16($s3)
    move       $a2,$zero
    move       $a1,$s1
    move       $a0,$s0
    jalr       $a4
    sd         $zero,8($s3)
    ld         $s1,24($s3)
    sd         $zero,24($s3)
    bnez       $s1, .L00001854
    sd         $zero,16($s3)
.L0000189c:
    bnez       $s1, .L000018a8
    sd         $s1,3544($s0)
    sd         $zero,3536($s0)
.L000018a8:
    lw         $a5,3576($s0)
    beqz       $a5, .L000018c0
    move       $a0,$s0
    move       $a1,$zero
    jal        kona_mswap_complete
    move       $a2,$s2
.L000018c0:
    lbu        $a6,3552($s0)
    beqz       $a6, .L0000190c
    nop
    lbu        $t8,3554($s0)
    lui        $s2,0x80
    ori        $s1,$s2,0x3d0
    beqz       $t8, .L00001bcc
    ori        $s2,$s2,0x3c0
.L000018e0:
    jal        kona_enable_dac_cursor
    move       $a0,$s0
    ld         $a0,2376($s0)
    li         $a1,257
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    lw         $a1,3560($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    sb         $zero,3552($s0)
.L0000190c:
    lbu        $a1,3553($s0)
    beqz       $a1, .L00001b34
    ld         $s2,40($sp)
    jal        kona_determine_cursor_channel
    daddiu     $a0,$s0,3528
    beqz       $v0, .L00001b60
    li         $s3,32
    lbu        $a2,3554($s0)
    beqz       $a2, .L00001b68
    li         $s3,32
.L00001934:
    jal        kona_enable_dac_cursor
    move       $a0,$s0
    lbu        $a7,3556($s0)
.L00001940:
    beq        $s3, $a7, .L00001b2c
    nop
    lh         $a2,3566($s0)
    lh         $a6,3564($s0)
    li         $a1,-4
    lui        $ra,0xf000
    dsll       $t0,$a7,0x4
    lbu        $a3,3554($s0)
    ld         $a0,2376($s0)
    lui        $s1,0x80
    daddu      $t0,$s0,$t0
    ori        $s2,$s1,0x3c0
    ori        $s1,$s1,0x3d0
    lh         $v0,4460($t0)
    nop
    daddu      $a0,$s2,$a0
    bnez       $a3, .L000019ec
    lh         $a5,4458($t0)
    lw         $t9,1088($s0)
    lh         $t8,3570($s0)
    and        $t9,$t9,$ra
    lui        $ra,0x3ff
    lh         $s2,3568($s0)
    ori        $ra,$ra,0xe000
    subu       $t8,$a2,$t8
    subu       $s2,$a6,$s2
    subu       $t8,$t8,$v0
    subu       $s2,$s2,$a5
    addiu      $t8,$t8,32
    addiu      $s2,$s2,32
    sll        $t8,$t8,0xd
    andi       $s2,$s2,0x1fff
    and        $t8,$t8,$ra
    beqz       $t9, .L00001bc4
    or         $s2,$s2,$t8
.L000019cc:
    jal        gfx_pio_write_32
    li         $a1,258
    ld         $a0,2376($s0)
    move       $a1,$s2
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    b          .L00001b30
    sb         $zero,3553($s0)
.L000019ec:
    lh         $t2,4468($t0)
    subu       $t3,$a6,$a5
    mult       $t2,$t3
    lh         $t1,4462($t0)
    subu       $t1,$t1,$a5
    mflo       $t8
    div        $zero,$t8,$t1
    lh         $t2,4470($t0)
    subu       $t3,$a2,$v0
    mflo       $a4
    mult       $t2,$t3
    lh         $a6,4464($t0)
    subu       $a6,$a6,$v0
    mflo       $a2
    div        $zero,$a2,$a6
    sll        $a1,$a7,0x8
    addiu      $a1,$a1,2816
    sd         $a1,0($sp)
    lb         $a5,4466($t0)
    teq        $t1,$zero,0x7
    lb         $a3,4467($t0)
    teq        $a6,$zero,0x7
    subu       $a4,$a4,$a5
    sd         $a4,8($sp)
    mflo       $a2
    subu       $a2,$a2,$a3
    jal        gfx_pio_write_32
    sd         $a2,16($sp)
    ld         $a0,2376($s0)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    li         $a1,2
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    ld         $s3,0($sp)
    daddu      $a0,$s2,$a0
    addiu      $s3,$s3,2
    jal        gfx_pio_write_32
    move       $a1,$s3
    ld         $a1,8($sp)
    ld         $a0,2376($s0)
    andi       $a1,$a1,0xff
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    move       $a1,$s3
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,8($sp)
    ld         $a0,2376($s0)
    sra        $a1,$a1,0x8
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    move       $a1,$s3
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,16($sp)
    ld         $a0,2376($s0)
    andi       $a1,$a1,0xff
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    move       $a1,$s3
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,16($sp)
    ld         $a0,2376($s0)
    sra        $a1,$a1,0x8
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
.L00001b2c:
    sb         $zero,3553($s0)
.L00001b30:
    ld         $s2,40($sp)
.L00001b34:
    ld         $s1,48($sp)
    ld         $s0,24($sp)
    move       $a0,$s5
    ld         $s3,56($sp)
    jal        mutex_spinunlock
    move       $a1,$s4
    ld         $ra,32($sp)
    ld         $s4,64($sp)
    ld         $s5,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001b60:
    b          .L00001940
    lbu        $a7,3556($s0)
.L00001b68:
    lbu        $a1,3556($s0)
    ld         $a0,2376($s0)
    lui        $s2,0x80
    ori        $s1,$s2,0x3d0
    ori        $s2,$s2,0x3c0
    beq        $s3, $a1, .L00001c2c
    daddu      $a0,$s2,$a0
    jal        gfx_pio_write_32
    li         $a1,256
    ld         $a0,2376($s0)
    lbu        $a1,3556($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2376($s0)
    li         $a1,259
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    lbu        $a1,3555($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    b          .L00001934
    nop
.L00001bc4:
    b          .L000019cc
    and        $s2,$s2,$a1
.L00001bcc:
    ld         $a0,2376($s0)
    li         $a1,259
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    lbu        $a1,3555($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    b          .L000018e0
    nop
.L00001bf4:
    ld         $a0,2376($s0)
    lui        $a2,0x80
    li         $a1,128
    ori        $a2,$a2,0x3c0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2376($s0)
    lui        $a2,0x80
    li         $a1,2
    ori        $a2,$a2,0x3d0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L00001830
    ld         $a0,2376($s0)
.L00001c2c:
    jal        gfx_pio_write_32
    li         $a1,259
    ld         $a0,2376($s0)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    b          .L00001934
    nop

glabel kona_set_channel_rect
    lbu        $at,0($a1)
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-32
    sd         $a1,8($sp)
    slti       $at,$at,32
    sd         $v0,16($sp)
    li         $v0,22
    bnez       $at, .L00001c78
    sd         $ra,24($sp)
.L00001c70:
    jr         $ra
    daddiu     $sp,$sp,32
.L00001c78:
    ld         $a0,16($sp)
    daddiu     $a0,$a0,3520
    jal        mutex_spinlock
    sd         $a0,0($sp)
    ld         $a5,8($sp)
    lbu        $a6,0($a5)
    ld         $a3,16($sp)
    ld         $a0,0($sp)
    dsll       $a6,$a6,0x4
    lbu        $at,1($a5)
    daddu      $a6,$a3,$a6
    sb         $at,4456($a6)
    lb         $ra,2($a5)
    sb         $ra,4457($a6)
    lh         $t9,4($a5)
    sh         $t9,4458($a6)
    lh         $t8,6($a5)
    sh         $t8,4460($a6)
    lh         $t3,8($a5)
    sh         $t3,4462($a6)
    lh         $t2,10($a5)
    sh         $t2,4464($a6)
    lb         $t1,12($a5)
    sb         $t1,4466($a6)
    lb         $t0,13($a5)
    sb         $t0,4467($a6)
    lh         $a7,14($a5)
    sh         $a7,4468($a6)
    lh         $a5,16($a5)
    sh         $a5,4470($a6)
    li         $a4,32
    sb         $a4,3556($a3)
    li         $a2,1
    sb         $a2,3553($a3)
    move       $a1,$v0
    jal        mutex_spinunlock
    sb         $a2,3552($a3)
    ld         $ra,24($sp)
    b          .L00001c70
    move       $v0,$zero

glabel kona_get_xy_channel
    daddiu     $sp,$sp,-48
    sd         $s1,8($sp)
    lh         $s1,0($a1)
    sd         $s2,16($sp)
    lh         $s2,2($a1)
    sd         $s3,24($sp)
    sd         $s0,0($sp)
    ld         $s0,40($a0)
    move       $s3,$a1
    sd         $ra,32($sp)
    daddiu     $a0,$s0,3520
    jal        mutex_spinlock
    sd         $a0,40($sp)
    move       $a1,$v0
    li         $a5,31
    li         $t1,32
    lui        $a6,0xf
    move       $t0,$t1
    ld         $a0,40($sp)
    b          .L00001d78
    ori        $a6,$a6,0x423f
.L00001d6c:
    addiu      $a5,$a5,-1
    bltz       $a5, .L00001e60
    andi       $v1,$t0,0xff
.L00001d78:
    dsll       $a4,$a5,0x4
    daddu      $a4,$s0,$a4
    lbu        $a7,4456($a4)
    beqz       $a7, .L00001de4
    nop
    lb         $a7,4457($a4)
    slt        $t2,$a6,$a7
    bnez       $t2, .L00001de4
    nop
    lh         $t3,4458($a4)
    slt        $t3,$s1,$t3
    bnez       $t3, .L00001de4
    nop
    lh         $t8,4462($a4)
    slt        $t8,$s1,$t8
    beqz       $t8, .L00001de4
    nop
    lh         $t9,4460($a4)
    slt        $t9,$s2,$t9
    bnez       $t9, .L00001de4
    nop
    lh         $ra,4464($a4)
    slt        $ra,$s2,$ra
    beqz       $ra, .L00001de4
    nop
    move       $a6,$a7
    move       $t0,$a5
.L00001de4:
    addiu      $a5,$a5,-1
    dsll       $a4,$a5,0x4
    bltz       $a5, .L00001e5c
    daddu      $a4,$s0,$a4
    lbu        $a7,4456($a4)
    beqz       $a7, .L00001d6c
    nop
    lb         $a7,4457($a4)
    slt        $t2,$a6,$a7
    bnez       $t2, .L00001d6c
    nop
    lh         $t3,4458($a4)
    slt        $t3,$s1,$t3
    bnez       $t3, .L00001d6c
    nop
    lh         $t8,4462($a4)
    slt        $t8,$s1,$t8
    beqz       $t8, .L00001d6c
    nop
    lh         $t9,4460($a4)
    slt        $t9,$s2,$t9
    bnez       $t9, .L00001d6c
    nop
    lh         $ra,4464($a4)
    slt        $ra,$s2,$ra
    beqz       $ra, .L00001d6c
    nop
    move       $a6,$a7
    b          .L00001d6c
    move       $t0,$a5
.L00001e5c:
    andi       $v1,$t0,0xff
.L00001e60:
    dsll       $v0,$t0,0x4
    sb         $t0,4($s3)
    beq        $t1, $v1, .L00001e90
    daddu      $v0,$s0,$v0
    lh         $a5,4458($v0)
    sh         $a5,6($s3)
    lh         $a4,4460($v0)
    sh         $a4,8($s3)
    lh         $a3,4462($v0)
    sh         $a3,10($s3)
    lh         $a2,4464($v0)
    sh         $a2,12($s3)
.L00001e90:
    ld         $s3,24($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jal        mutex_spinunlock
    ld         $s2,16($sp)
    ld         $ra,32($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,48
