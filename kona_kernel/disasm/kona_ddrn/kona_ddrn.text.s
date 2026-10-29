.section .text
.set noat
.set noreorder


glabel KONAcreateddrn
    daddiu     $sp,$sp,-32
    sd         $s0,24($sp)
    sd         $s7,8($sp)
    move       $s7,$a1
    sd         $s8,16($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jal        kern_malloc
    li         $a0,256
    move       $s0,$v0
    move       $a0,$v0
    sd         $v0,112($s7)
    jal        bzero
    li         $a1,256
    ld         $s7,8($sp)
    li         $a3,-1
    sh         $a3,248($s0)
    daddiu     $a0,$s0,80
    move       $a1,$zero
    jal        init_sema
    ld         $a2,-30720($gp)
    li         $a0,1
    move       $a2,$zero
    lui        $a1,0x8
    jal        kvpalloc
    ori        $a1,$a1,0x8000
    move       $a0,$v0
    jal        kvtophys
    sd         $v0,0($s0)
    dsrl       $a2,$v0,0xc
    ld         $a0,0($s0)
    lui        $a3,0x1000
    sll        $a2,$a2,0x0
    or         $a2,$a2,$a3
    jal        kvtophys
    sw         $a2,8($s0)
    li         $a0,4
    lui        $a1,0x8
    move       $a2,$zero
    andi       $a3,$v0,0xfff
    ori        $a3,$a3,0x9000
    jal        kvpalloc
    sw         $a3,12($s0)
    move       $a1,$v0
    lui        $a2,0x1
    sd         $v0,16($s0)
    lw         $a0,2184($s8)
    jal        alloc_gfx_io_space
    li         $a3,14
    ld         $ra,0($sp)
    sd         $v0,24($s0)
    move       $v0,$zero
    ld         $s8,16($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel kona_mopup_complete
    daddiu     $sp,$sp,-32
    sd         $s7,8($sp)
    move       $s7,$a1
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $ra,0($sp)
    jal        vsema
    daddiu     $a0,$a0,5320
    beqz       $s7, .L00000144
    ld         $a2,-30720($gp)
    li         $a1,4
    li         $a0,2121
    daddiu     $a3,$a2,40
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a2,$a2,16
    move       $a0,$s0
    jal        kona_die
    li         $a1,17
    ld         $ra,0($sp)
.L00000130:
    ld         $s7,8($sp)
    sd         $zero,5336($s0)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000144:
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,5336($s0)
    b          .L00000130
    ld         $ra,0($sp)

glabel KONAdestroyddrn
    daddiu     $sp,$sp,-160
    sd         $s1,120($sp)
    ld         $s1,112($a2)
    sd         $s3,112($sp)
    ld         $at,8($a0)
    sd         $s0,128($sp)
    move       $s0,$a0
    move       $s3,$a1
    sd         $s2,136($sp)
    move       $s2,$a2
    bne        $at, $a2, .L00000194
    sd         $ra,144($sp)
    lw         $v0,2172($a0)
    beqz       $v0, .L000002c0
    nop
.L00000194:
    ld         $a0,0($s1)
.L00000198:
    beqz       $a0, .L000001a8
    nop
    jal        kvpfree
    li         $a1,1
.L000001a8:
    ld         $v1,16($s1)
    bnez       $v1, .L00000244
    nop
    ld         $a0,104($s1)
.L000001b8:
    bnez       $a0, .L00000264
    daddiu     $a0,$s0,2576
.L000001c0:
    jal        freesema
    daddiu     $a0,$s1,80
    move       $a0,$s0
    move       $a1,$s2
    jal        kona_dmapool_destroy
    move       $a2,$zero
    move       $a0,$s0
    jal        kona_video_cleanup
    move       $a1,$s2
    lh         $a1,248($s1)
    bltz       $a1, .L00000200
    ld         $s3,112($sp)
    move       $a0,$s0
    jal        kona_nclops_cleanup
    move       $a1,$s2
    ld         $s3,112($sp)
.L00000200:
    move       $a0,$s0
    move       $a1,$s2
    ld         $s1,120($sp)
    jal        kona_mem_destroy
    move       $a2,$zero
    move       $a0,$s0
    jal        kona_unshare
    move       $a1,$s2
    ld         $s0,128($sp)
    jal        kern_free
    ld         $a0,112($s2)
    ld         $ra,144($sp)
    move       $v0,$zero
    sd         $zero,112($s2)
    ld         $s2,136($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L00000244:
    ld         $a1,24($s1)
    jal        free_gfx_io_space
    lw         $a0,2184($s0)
    li         $a1,4
    jal        kvpfree
    ld         $a0,16($s1)
    b          .L000001b8
    ld         $a0,104($s1)
.L00000264:
    jal        mutex_spinlock
    sd         $a0,104($sp)
    ld         $a1,96($s1)
    beqz       $a1, .L00000284
    move       $s3,$v0
    jal        kona_untimeout
    move       $a0,$s0
    sd         $zero,96($s1)
.L00000284:
    ld         $a0,104($sp)
    jal        mutex_spinunlock
    move       $a1,$s3
    lw         $a2,60($s1)
    beqz       $a2, .L000002b8
    li         $a1,1
    jal        unlock_dmavec
    daddiu     $a0,$s1,32
    ld         $a1,72($s1)
    beqz       $a1, .L000002b8
    nop
    jal        free_gfx_io_space
    lw         $a0,2184($s0)
.L000002b8:
    b          .L000001c0
    sd         $zero,104($s1)
.L000002c0:
    ld         $a3,8($a1)
    ld         $a3,8($a3)
    beqz       $a3, .L00000194
    nop
    jal        clean_up_other_gfxp
    move       $a1,$a2
    ld         $a3,-30704($gp)
    li         $a4,1
    lwu        $a2,0($gp)
    move       $a1,$s0
    jal        kona_timeout
    ld         $a0,-30712($gp)
    ld         $a0,2272($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    sd         $v0,5336($s0)
    jal        splhi
    nop
    sd         $v0,56($sp)
    lw         $a4,4($s3)
    sd         $v0,96($sp)
    ori        $a4,$a4,0x2
    sw         $a4,4($s3)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000490
    lui        $a6,0x3
.L0000032c:
    sw         $a6,2360($s0)
    jal        splx
    ld         $a0,96($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,504
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,48($sp)
    sd         $v0,88($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000004f8
    lui        $a2,0x1
.L00000388:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,88($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,259
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,64($sp)
    sd         $v0,80($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000560
    nop
    sw         $zero,2360($s0)
.L000003e8:
    jal        splx
    ld         $a0,80($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,25
    jal        psema
    daddiu     $a0,$s0,5320
    jal        splhi
    nop
    sd         $v0,40($sp)
    sd         $v0,72($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000470
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    lw         $a2,2344($s0)
    beqz       $a2, .L000005c8
    nop
.L00000448:
    ld         $a0,2376($s0)
.L0000044c:
    li         $a1,1
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,124
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,124
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    move       $a1,$s3
.L00000470:
    lw         $a1,4($s3)
    ld         $a0,72($sp)
    li         $a2,-3
    and        $a1,$a1,$a2
    jal        splx
    sw         $a1,4($s3)
    b          .L00000198
    ld         $a0,0($s1)
.L00000490:
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
    sd         $v0,96($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,24($sp)
    b          .L0000032c
    lui        $a6,0x3
.L000004f8:
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
    sd         $v0,32($sp)
    jal        splx
    ld         $a0,48($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,88($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,32($sp)
    b          .L00000388
    lui        $a2,0x1
.L00000560:
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
    ld         $a0,64($sp)
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
    b          .L000003e8
    sw         $zero,2360($s0)
.L000005c8:
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    sd         $v0,8($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,2272($s0)
    ld         $a2,8($sp)
    sltu       $a2,$a2,$v0
    beqz       $a2, .L00000448
    nop
    jal        rt_pin_thread
    nop
    sd         $v0,0($sp)
    jal        splx
    ld         $a0,40($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,72($sp)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L0000044c
    ld         $a0,2376($s0)
