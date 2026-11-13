.section .text
.set noat
.set noreorder


glabel kona_die
    daddiu     $sp,$sp,-64
    sd         $a1,24($sp)
    sd         $s2,56($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    sd         $s1,40($sp)
    daddiu     $s1,$a0,2168
    sd         $ra,48($sp)
    jal        mutex_spinlock
    move       $a0,$s1
    lw         $at,2172($s0)
    beqz       $at, .L00000058
    move       $s2,$v0
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $ra,48($sp)
.L00000044:
    ld         $s2,56($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000058:
    li         $a1,1
    sw         $a1,0($gp)
    ld         $a1,2376($s0)
    lui        $a0,0x80
    ld         $a2,24($sp)
    ori        $a0,$a0,0x220
    sw         $a2,2172($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a1,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x3a8
    sw         $v0,2176($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    lw         $a1,2364($s0)
    li         $a3,0x8000
    ld         $a2,2376($s0)
    lui        $a0,0x80
    nor        $a3,$a3,$zero
    ori        $a0,$a0,0x220
    and        $a1,$a1,$a3
    sw         $v0,2180($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a2,2376($s0)
    lui        $a0,0x80
    li         $a1,8
    ori        $a0,$a0,0x3a8
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    lui        $a1,0xbadc
    ld         $a0,2376($s0)
    lui        $a2,0x80
    ori        $a1,$a1,0xffe
    ori        $a2,$a2,0x298
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,4
    ld         $a2,-30720($gp)
    li         $a0,2114
    lw         $a4,2184($s0)
    move       $a5,$s0
    ld         $a6,24($sp)
    jal        cmn_err_tag
    daddiu     $a3,$a2,96
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x208
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a1,-30720($gp)
    move       $a2,$v0
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,56
    ld         $a0,-30712($gp)
    sw         $zero,104($s0)
    sw         $zero,108($s0)
    sw         $zero,120($s0)
    sd         $zero,16($sp)
    daddiu     $a1,$sp,0
    sd         $s0,8($sp)
    li         $a2,9
    jal        gthread_scan
    sw         $a2,0($sp)
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L00000044
    ld         $ra,48($sp)

glabel kona_checkpipe_complete
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a1, .L000001c8
    sd         $ra,8($sp)
    ld         $a2,-30720($gp)
    li         $a1,4
    li         $a0,2115
    daddiu     $a3,$a2,96
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a2,$a2,104
    move       $a0,$s0
    jal        kona_die
    li         $a1,18
.L000001b0:
    jal        vsema
    daddiu     $a0,$s0,5344
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000001c8:
    jal        kona_untimeout
    ld         $a1,5360($s0)
    b          .L000001b0
    sd         $zero,5360($s0)

glabel kona_checkpipe
    daddiu     $sp,$sp,-128
    sd         $a1,96($sp)
    sd         $ra,112($sp)
    sd         $s0,104($sp)
    move       $s0,$a0
    jal        RRM_CheckValidFault
    ld         $a0,64($a1)
    beqz       $v0, .L00000204
    nop
    b          .L00000210
    li         $v0,14
.L00000204:
    ld         $v0,5360($s0)
    beqz       $v0, .L00000220
    move       $v0,$zero
.L00000210:
    ld         $ra,112($sp)
    ld         $s0,104($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00000220:
    ld         $a3,-30696($gp)
    lwu        $a2,0($gp)
    li         $a4,1
    ld         $a0,-30704($gp)
    move       $a1,$s0
    jal        kona_timeout
    sd         $s1,120($sp)
    ld         $t9,96($sp)
    sd         $v0,5360($s0)
    ld         $t9,64($t9)
    ld         $t8,8($t9)
    ld         $t8,8($t8)
    lui        $s1,0xc0
    ld         $a0,2272($s0)
    bne        $t8, $t9, .L000002ac
    ori        $s1,$s1,0x108
    jal        gfx_flow_flush_my_wg
    li         $a1,1
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,64($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000004e8
    lui        $at,0x1
.L00000288:
    sw         $at,2360($s0)
    jal        splx
    ld         $a0,64($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    b          .L000002f0
    nop
.L000002ac:
    jal        gfx_flow_flush_my_wg
    li         $a1,1
    jal        splhi
    nop
    sd         $v0,40($sp)
    sd         $v0,72($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000480
    lui        $a2,0x3
.L000002d4:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,72($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
.L000002f0:
    li         $a1,477
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,48($sp)
    sd         $v0,80($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000003b0
    lui        $a2,0x1
.L00000328:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,80($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    li         $a1,261
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,56($sp)
    sd         $v0,88($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000418
    nop
    sw         $zero,2360($s0)
.L00000380:
    jal        splx
    ld         $a0,88($sp)
    ld         $a0,2376($s0)
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    li         $a1,25
    ld         $s1,120($sp)
    jal        psema
    daddiu     $a0,$s0,5344
    b          .L00000210
    move       $v0,$zero
.L000003b0:
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
    ld         $a0,48($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,80($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L00000328
    lui        $a2,0x1
.L00000418:
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
    ld         $a0,56($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,88($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,24($sp)
    b          .L00000380
    sw         $zero,2360($s0)
.L00000480:
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
    sd         $v0,72($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L000002d4
    lui        $a2,0x3
.L000004e8:
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
    sd         $v0,64($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000288
    lui        $at,0x1
