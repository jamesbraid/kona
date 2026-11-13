.section .text
.set noat
.set noreorder


glabel clean_up_other_gfxp
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    lw         $at,2280($a0)
    sd         $s1,0($sp)
    sd         $s2,24($sp)
    beqz       $at, .L00000084
    sd         $ra,8($sp)
    jal        curthreadhandle
    ld         $s1,64($a1)
    jal        gthread_find_gfxp
    move       $a0,$v0
    bnez       $v0, .L00000048
    move       $s0,$v0
    b          .L00000088
    ld         $ra,8($sp)
.L0000003c:
    ld         $s0,24($s0)
    beqz       $s0, .L00000088
    ld         $ra,8($sp)
.L00000048:
    beq        $s1, $s0, .L0000003c
    nop
    jal        splhi
    nop
    move       $s2,$v0
    lw         $v0,4($s0)
    andi       $v0,$v0,0x1
    beqz       $v0, .L00000074
    nop
    jal        KONAunmapgfx
    move       $a0,$s0
.L00000074:
    jal        splx
    move       $a0,$s2
    ld         $s0,24($s0)
    bnez       $s0, .L00000048
.L00000084:
    ld         $ra,8($sp)
.L00000088:
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel kona_deact_timeout
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s8,16($sp)
    daddiu     $s8,$a0,2576
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    ld         $at,5288($s0)
    bnez       $at, .L000000e8
    sd         $v0,24($sp)
.L000000c8:
    move       $a0,$s8
    ld         $s0,0($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000000e8:
    ld         $a2,-30720($gp)
    ld         $a5,8($s0)
    li         $a1,4
    li         $a0,2125
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a2,56
    move       $a0,$s0
    jal        kona_die
    li         $a1,2
    daddiu     $a0,$s0,5272
    jal        vsema
    sd         $zero,5288($s0)
    b          .L000000c8
    ld         $v0,24($sp)

glabel kona_act_pcx
    daddiu     $sp,$sp,-144
    sd         $s1,96($sp)
    sd         $s0,88($sp)
    move       $s0,$a0
    move       $s1,$a1
    sd         $s6,80($sp)
    sd         $ra,104($sp)
    jal        kona_mem_update
    move       $s6,$a2
    move       $a0,$s0
    jal        kona_dmapool_update
    move       $a1,$s1
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s2,120($sp)
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000478
    sd         $s3,112($sp)
    lui        $at,0x3
.L00000180:
    sw         $at,2360($s0)
    jal        splx
    move       $a0,$s2
    lui        $s2,0xc0
    ld         $a0,2376($s0)
    ori        $s2,$s2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    lhu        $t8,4($s1)
    andi       $t8,$t8,0x2
    beqz       $t8, .L000002e8
    nop
    ld         $v0,120($s1)
    lw         $t9,136($s1)
    lw         $a2,8($v0)
    sd         $s5,128($sp)
    lui        $s3,0x1
    bne        $t9, $a2, .L000002f0
    sd         $s4,136($sp)
.L000001d0:
    ld         $a2,128($s1)
    lw         $ra,140($s1)
    lw         $v0,8($a2)
    bne        $ra, $v0, .L000003e0
    nop
    ld         $v0,64($s1)
.L000001e8:
    ld         $at,8($v0)
    ld         $at,8($at)
    bne        $at, $v0, .L00000270
    li         $a1,500
.L000001f8:
    ld         $a0,2304($s0)
.L000001fc:
    jal        gfx_pio_write_32
    move       $a1,$s6
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000004e0
    ld         $s6,80($sp)
.L0000022c:
    sw         $s3,2360($s0)
    jal        splx
    move       $a0,$s1
    ld         $s3,112($sp)
    ld         $a0,2376($s0)
    ld         $s1,96($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $s2,120($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $ra,104($sp)
    ld         $s0,88($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00000270:
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,40($sp)
    sd         $v0,64($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000548
    nop
    sw         $s3,2360($s0)
.L000002a8:
    jal        splx
    ld         $a0,64($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,120($s1)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lh         $a1,18($a1)
    ld         $a1,128($s1)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lh         $a1,18($a1)
    b          .L000001fc
    ld         $a0,2304($s0)
.L000002e8:
    b          .L000001f8
    lui        $s3,0x1
.L000002f0:
    ld         $s5,128($v0)
    li         $a1,499
    sw         $a2,136($s1)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    daddiu     $s4,$v0,96
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,24($sp)
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000005b0
    nop
    sw         $s3,2360($s0)
.L00000338:
    jal        splx
    ld         $a0,48($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    lw         $a1,8($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,16($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,20($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,0($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,4($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,8($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $s5,128($sp)
    lw         $a1,60($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,40($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,44($s4)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    b          .L000001d0
    ld         $s4,136($sp)
.L000003e0:
    sw         $v0,140($s1)
    li         $a1,494
    ld         $a0,2304($s0)
    daddiu     $a2,$a2,96
    jal        gfx_pio_write_32
    sd         $a2,72($sp)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,56($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000618
    nop
    sw         $s3,2360($s0)
.L00000428:
    jal        splx
    ld         $a0,56($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,72($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lw         $a1,8($a1)
    ld         $a1,72($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lw         $a1,12($a1)
    ld         $a1,72($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lw         $a1,60($a1)
    b          .L000001e8
    ld         $v0,64($s1)
.L00000478:
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
    ld         $a1,72($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00000180
    lui        $at,0x3
.L000004e0:
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
    move       $s6,$v0
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
    move       $a0,$s6
    b          .L0000022c
    ld         $s6,80($sp)
.L00000548:
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
    ld         $a0,40($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,64($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L000002a8
    sw         $s3,2360($s0)
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
    sd         $v0,0($sp)
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
    ld         $a0,0($sp)
    b          .L00000338
    sw         $s3,2360($s0)
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
    sd         $v0,8($sp)
    jal        splx
    ld         $a0,32($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,56($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000428
    sw         $s3,2360($s0)

glabel KONApcxswap
    daddiu     $sp,$sp,-240
    sd         $a1,168($sp)
    sd         $ra,176($sp)
    sd         $s0,184($sp)
    move       $s0,$a0
    sd         $s1,192($sp)
    move       $s1,$a2
    jal        gfx_waitc_on
    sd         $s4,216($sp)
    lw         $at,2172($s0)
    ld         $s4,64($s1)
    beqz       $at, .L000006d4
    sd         $s3,224($sp)
    move       $v0,$zero
.L000006b8:
    ld         $s4,216($sp)
    ld         $ra,176($sp)
    ld         $s0,184($sp)
    ld         $s3,224($sp)
    ld         $s1,192($sp)
    jr         $ra
    daddiu     $sp,$sp,240
.L000006d4:
    move       $a0,$s0
    ld         $s3,112($s1)
    jal        clean_up_other_gfxp
    move       $a1,$s1
    ld         $v0,168($sp)
    bnez       $v0, .L000008f4
    sd         $s2,232($sp)
    lui        $s2,0xc0
    ori        $s2,$s2,0x108
.L000006f8:
    lw         $t8,16($s1)
    beqz       $t8, .L00000918
    move       $a0,$s0
    ld         $t9,16($s3)
    move       $a1,$s1
    jal        kona_mem_validate
    sd         $t9,160($sp)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,96($sp)
    lw         $ra,4($s4)
    sd         $v0,152($sp)
    ori        $ra,$ra,0x2
    sw         $ra,4($s4)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000b00
    lui        $v0,0x3
.L0000074c:
    sw         $v0,2360($s0)
    jal        splx
    ld         $a0,152($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    li         $a1,505
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,88($sp)
    sd         $v0,144($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000b68
    lui        $a2,0x1
.L000007a0:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,144($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,160($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lw         $a1,0($a1)
    ld         $a1,24($s3)
    dsrl       $a1,$a1,0xc
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a1,24($s3)
    andi       $a1,$a1,0xfff
    ld         $a0,2304($s0)
    ori        $a1,$a1,0x9000
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    lui        $a1,0xeded
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ori        $a1,$a1,0xeded
    ld         $s3,160($sp)
    ld         $a0,2272($s0)
    jal        gfx_flow_flush_my_wg
    move       $a1,$zero
    move       $a0,$s0
    move       $a1,$s1
    jal        kona_act_pcx
    lw         $a2,8($s3)
.L00000828:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s3,$v0
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000a94
    nop
    sw         $zero,2360($s0)
.L00000858:
    jal        splx
    move       $a0,$s1
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    jal        splhi
    ld         $s2,232($sp)
    move       $s3,$v0
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000008cc
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    lw         $a1,2344($s0)
    beqz       $a1, .L00000a34
    nop
.L000008a4:
    ld         $a0,2376($s0)
.L000008a8:
    li         $a1,1
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,124
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,124
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    move       $a1,$s4
.L000008cc:
    lw         $a1,4($s4)
    move       $a0,$s1
    li         $a2,-3
    and        $a1,$a1,$a2
    jal        splx
    sw         $a1,4($s4)
    jal        gfx_waitc_off
    nop
    b          .L000006b8
    move       $v0,$zero
.L000008f4:
    li         $a1,25
    daddiu     $a0,$s0,5272
    jal        psema
    sd         $a0,136($sp)
    lw         $a3,2172($s0)
    beqz       $a3, .L00000bd0
    ld         $a3,-30704($gp)
    b          .L000006b8
    move       $v0,$zero
.L00000918:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,72($sp)
    lw         $a4,4($s4)
    sd         $v0,120($sp)
    ori        $a4,$a4,0x2
    sw         $a4,4($s4)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000cf4
    lui        $a6,0x3
.L00000950:
    sw         $a6,2360($s0)
    jal        splx
    ld         $a0,120($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    li         $a1,509
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,64($sp)
    sd         $v0,128($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000d5c
    lui        $a2,0x1
.L000009a4:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,128($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a1,24($s3)
    dsrl       $a1,$a1,0xc
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a1,24($s3)
    andi       $a1,$a1,0xfff
    ld         $a0,2304($s0)
    ori        $a1,$a1,0x9000
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    lui        $a1,0x1
    li         $a1,498
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,8($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,16384
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a2,1
    b          .L00000828
    sw         $a2,16($s1)
.L00000a34:
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    sd         $v0,80($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,2272($s0)
    ld         $a3,80($sp)
    sltu       $a3,$a3,$v0
    beqz       $a3, .L000008a4
    nop
    jal        rt_pin_thread
    nop
    move       $s1,$v0
    jal        splx
    move       $a0,$s3
    move       $a0,$s0
    jal        kona_flow_await_returned_credits
    sd         $s1,200($sp)
    jal        splhi
    ld         $s3,200($sp)
    move       $s1,$v0
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L000008a8
    ld         $a0,2376($s0)
.L00000a94:
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
    move       $s1,$v0
    jal        splx
    move       $a0,$s3
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    sd         $s1,208($sp)
    ld         $s3,208($sp)
    ld         $a1,72($s0)
    move       $s1,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00000858
    sw         $zero,2360($s0)
.L00000b00:
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
    sd         $v0,56($sp)
    jal        splx
    ld         $a0,96($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,152($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,56($sp)
    b          .L0000074c
    lui        $v0,0x3
.L00000b68:
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
    sd         $v0,48($sp)
    jal        splx
    ld         $a0,88($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,144($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,48($sp)
    b          .L000007a0
    lui        $a2,0x1
.L00000bd0:
    lwu        $a2,0($gp)
    move       $a1,$s0
    jal        kona_timeout
    ld         $a0,-30712($gp)
    ld         $a0,2272($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    sd         $v0,5288($s0)
    jal        splhi
    nop
    sd         $v0,40($sp)
    lw         $a2,4($s4)
    sd         $v0,112($sp)
    ori        $a2,$a2,0x2
    sw         $a2,4($s4)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000dc4
    lui        $a4,0x3
.L00000c1c:
    sw         $a4,2360($s0)
    ld         $a0,112($sp)
    jal        splx
    sd         $s2,232($sp)
    lui        $s2,0xc0
    ld         $a0,2376($s0)
    ori        $s2,$s2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    li         $a1,508
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,104($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000e2c
    lui        $t9,0x1
.L00000c7c:
    sw         $t9,2360($s0)
    jal        splx
    ld         $a0,104($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a3,-30696($gp)
    ld         $a2,168($sp)
    dsubu      $a2,$a2,$a3
    li         $a3,176
    ddiv       $zero,$a2,$a3
    ld         $a0,2304($s0)
    mflo       $a1
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a0,2272($s0)
    jal        gfx_flow_flush_my_wg
    move       $a1,$zero
    ld         $a0,136($sp)
    jal        psema
    li         $a1,25
    jal        vsema
    ld         $a0,136($sp)
    lw         $a4,2172($s0)
    beqz       $a4, .L000006f8
    nop
    ld         $s2,232($sp)
    b          .L000006b8
    move       $v0,$zero
.L00000cf4:
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
    ld         $a0,72($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,120($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L00000950
    lui        $a6,0x3
.L00000d5c:
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
    sd         $v0,24($sp)
    jal        splx
    ld         $a0,64($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,128($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,24($sp)
    b          .L000009a4
    lui        $a2,0x1
.L00000dc4:
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
    ld         $a0,40($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,112($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000c1c
    lui        $a4,0x3
.L00000e2c:
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
    sd         $v0,104($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000c7c
    lui        $t9,0x1

glabel KONApcxswitch
    ld         $a2,-30720($gp)
    move       $a3,$a0
    li         $a0,4
    daddiu     $sp,$sp,-16
    lw         $a3,2184($a3)
    daddiu     $a1,$a2,64
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a2,$a2,56
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel KONAvalidateclip
    daddiu     $sp,$sp,-112
    sd         $ra,56($sp)
    sd         $s0,64($sp)
    ld         $s0,40($a0)
    sd         $s1,72($sp)
    move       $s1,$a1
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    sd         $s2,96($sp)
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    sd         $s3,80($sp)
    beqz       $v0, .L000011c8
    sd         $s4,88($sp)
    lui        $at,0x3
.L00000f10:
    sw         $at,2360($s0)
    jal        splx
    move       $a0,$s2
    lui        $s2,0xc0
    ld         $a0,2376($s0)
    ori        $s2,$s2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $v0,120($s1)
    lw         $t9,136($s1)
    lw         $t8,8($v0)
    lui        $s4,0x1
    bne        $t8, $t9, .L00001048
    sd         $s5,104($sp)
.L00000f4c:
    ld         $v0,128($s1)
    lw         $ra,8($v0)
    lw         $at,140($s1)
    bne        $ra, $at, .L0000113c
.L00000f5c:
    li         $a1,500
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
    beqz       $v0, .L00001230
    nop
    sw         $s4,2360($s0)
.L00000f94:
    jal        splx
    move       $a0,$s3
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
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
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001298
    ld         $s3,80($sp)
.L0000100c:
    ld         $s4,88($sp)
    sw         $zero,2360($s0)
    jal        splx
    move       $a0,$s1
    ld         $a0,2376($s0)
    ld         $s1,72($sp)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $ra,56($sp)
    move       $v0,$zero
    ld         $s2,96($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00001048:
    li         $a1,499
    ld         $a0,2304($s0)
    ld         $s5,128($v0)
    jal        gfx_pio_write_32
    daddiu     $s3,$v0,96
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,24($sp)
    sd         $v0,40($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001300
    nop
    sw         $s4,2360($s0)
.L0000108c:
    jal        splx
    ld         $a0,40($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    lw         $a1,8($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,16($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,20($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,0($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,4($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,8($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s5)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $s5,104($sp)
    lw         $a1,60($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,40($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,44($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a1,120($s1)
    lw         $a1,8($a1)
    b          .L00000f4c
    sw         $a1,136($s1)
.L0000113c:
    li         $a1,494
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    daddiu     $s3,$v0,96
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00001368
    nop
    sw         $s4,2360($s0)
.L0000117c:
    jal        splx
    ld         $a0,48($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    lw         $a1,8($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,12($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    lw         $a1,60($s3)
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    ld         $a1,128($s1)
    lw         $a1,8($a1)
    b          .L00000f5c
    sw         $a1,140($s1)
.L000011c8:
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
    ld         $a1,72($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00000f10
    lui        $at,0x3
.L00001230:
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
    ld         $a0,16($sp)
    b          .L00000f94
    sw         $s4,2360($s0)
.L00001298:
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
    ld         $a1,72($s0)
    move       $s1,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L0000100c
    ld         $s3,80($sp)
.L00001300:
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
    ld         $a0,24($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,40($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L0000108c
    sw         $s4,2360($s0)
.L00001368:
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
    ld         $a0,8($sp)
    b          .L0000117c
    sw         $s4,2360($s0)

glabel KONAsetnullclip
    sw         $zero,60($a0)
    sw         $zero,48($a0)
    li         $at,-1
    sw         $at,40($a0)
    sw         $zero,24($a0)
    sw         $zero,20($a0)
    sw         $zero,16($a0)
    sw         $zero,12($a0)
    sw         $zero,8($a0)
    li         $v0,1
    sw         $v0,52($a0)
    sw         $v0,44($a0)
    jr         $ra
    move       $v0,$zero
