.section .text
.set noat
.set noreorder


glabel kona_mem_init
    move       $a2,$zero
.L00000004:
    dsll       $at,$a2,0x3
    dsll       $v0,$a2,0x2
    dsubu      $at,$at,$a2
    dsubu      $v0,$v0,$a2
    addiu      $a2,$a2,1
    dsll       $at,$at,0x2
    slti       $v1,$a2,4
    dsll       $v0,$v0,0x3
    daddu      $at,$a0,$at
    daddu      $v0,$a0,$v0
    daddiu     $at,$at,388
    bnez       $v1, .L00000004
    sd         $at,4976($v0)
    jr         $ra
    nop

glabel kona_mem_swapout_func
    daddiu     $sp,$sp,-160
    sd         $a1,96($sp)
    sd         $a2,104($sp)
    sd         $a3,112($sp)
    sd         $a4,120($sp)
    sd         $a5,128($sp)
    lw         $at,2172($a0)
    sd         $a6,136($sp)
    sd         $s0,144($sp)
    move       $s0,$a0
    beqz       $at, .L0000007c
    sd         $ra,152($sp)
.L00000070:
    ld         $s0,144($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L0000007c:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($a0)
    jal        splhi
    nop
    sd         $v0,40($sp)
    sd         $v0,80($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000200
    lui        $v1,0x3
.L000000a8:
    sw         $v1,2360($s0)
    jal        splx
    ld         $a0,80($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    lw         $a1,5112($s0)
    li         $a2,1
    beq        $a1, $a2, .L00000338
    li         $a1,483
.L000000dc:
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,48($sp)
    sd         $v0,72($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000268
    lui        $a4,0x1
.L00000110:
    sw         $a4,2360($s0)
    jal        splx
    ld         $a0,72($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,96($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,104($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,112($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,120($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,128($sp)
    ld         $a1,136($sp)
    dsrl       $a1,$a1,0xc
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a1,136($sp)
    andi       $a1,$a1,0xfff
    ld         $a0,2304($s0)
    ori        $a1,$a1,0x9000
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    li         $a1,258
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
    beqz       $v0, .L000002d0
    nop
    sw         $zero,2360($s0)
.L000001d8:
    jal        splx
    ld         $a0,88($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L00000070
    ld         $ra,152($sp)
.L00000200:
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
    sd         $v0,80($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L000000a8
    lui        $v1,0x3
.L00000268:
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
    ld         $a0,48($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,72($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,24($sp)
    b          .L00000110
    lui        $a4,0x1
.L000002d0:
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
    ld         $a0,32($sp)
    b          .L000001d8
    sw         $zero,2360($s0)
.L00000338:
    ld         $a3,-30712($gp)
    li         $a4,1
    lwu        $a2,0($gp)
    move       $a1,$s0
    jal        kona_timeout
    ld         $a0,-30720($gp)
    ld         $a0,2304($s0)
    li         $a2,2
    sw         $a2,5112($s0)
    li         $a1,479
    jal        gfx_pio_write_32
    sd         $v0,5168($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,8($sp)
    sd         $v0,64($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000003cc
    lui        $a4,0x1
.L00000394:
    sw         $a4,2360($s0)
    jal        splx
    ld         $a0,64($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,260
    jal        gfx_pio_write_32
    ld         $a0,2304($s0)
    b          .L000000dc
    li         $a1,483
.L000003cc:
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
    sd         $v0,64($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000394
    lui        $a4,0x1

glabel kona_mem_swapin_func
    lw         $v0,0($gp)
    daddiu     $sp,$sp,-128
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $a4,40($sp)
    sd         $a6,32($sp)
    sd         $v0,24($sp)
    sd         $s5,64($sp)
    sd         $s2,48($sp)
    lw         $at,2172($a0)
    move       $s2,$a0
    sd         $s7,72($sp)
    move       $s7,$a3
    move       $s5,$a5
    sd         $s0,56($sp)
    move       $s0,$a7
    beqz       $at, .L00000494
    sd         $ra,104($sp)
.L0000047c:
    ld         $s2,48($sp)
    ld         $s0,56($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00000494:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($a0)
    jal        splhi
    nop
    sd         $v0,0($sp)
    sd         $v0,80($sp)
    ld         $a0,2272($s2)
    sd         $s1,88($sp)
    sd         $s4,96($sp)
    sd         $s6,112($sp)
    jal        gfx_flow_am_i_attached
    sd         $s3,120($sp)
    beqz       $v0, .L000006a0
    ld         $s1,80($sp)
    lui        $a0,0x3
.L000004d4:
    sw         $a0,2360($s2)
    jal        splx
    move       $a0,$s1
    lui        $s1,0xc0
    ld         $a0,2376($s2)
    ori        $s1,$s1,0x108
    lw         $a1,2360($s2)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    li         $a1,482
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s2)
    jal        splhi
    nop
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s2)
    beqz       $v0, .L00000708
    lui        $t8,0x1
.L0000052c:
    sw         $t8,2360($s2)
    jal        splx
    move       $a0,$s3
    ld         $a0,2376($s2)
    lw         $a1,2360($s2)
    jal        gfx_pio_write_32
    daddu      $a0,$s1,$a0
    ld         $a0,2304($s2)
    jal        gfx_pio_write_32
    ld         $a1,8($sp)
    ld         $a0,2304($s2)
    jal        gfx_pio_write_32
    ld         $a1,16($sp)
    ld         $a0,2304($s2)
    jal        gfx_pio_write_32
    move       $a1,$s7
    ld         $a0,2304($s2)
    jal        gfx_pio_write_32
    ld         $a1,40($sp)
    ld         $a0,2304($s2)
    jal        gfx_pio_write_32
    move       $a1,$s5
    ld         $a1,32($sp)
    dsrl       $a1,$a1,0xc
    ld         $a0,2304($s2)
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a2,24($sp)
    beqz       $a2, .L00000624
    ld         $a0,2304($s2)
    ld         $a1,32($sp)
    andi       $a1,$a1,0xfff
    ori        $a1,$a1,0x9000
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    li         $a1,258
.L000005bc:
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s2)
    jal        splhi
    nop
    move       $s5,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s2)
    beqz       $v0, .L00000770
    ld         $s3,120($sp)
.L000005ec:
    ld         $s6,112($sp)
    ld         $s4,96($sp)
    ld         $s1,88($sp)
    move       $a0,$s5
    lui        $s0,0xc0
    sw         $zero,2360($s2)
    jal        splx
    ori        $s0,$s0,0x108
    ld         $a0,2376($s2)
    lw         $a1,2360($s2)
    jal        gfx_pio_write_32
    daddu      $a0,$s0,$a0
    b          .L0000047c
    ld         $ra,104($sp)
.L00000624:
    jal        gfx_pio_write_32
    li         $a1,-1
    li         $a1,-1
    addiu      $s7,$s7,-1
    beq        $s7, $a1, .L000005bc
    li         $a1,258
.L0000063c:
    blez       $s5, .L0000068c
    li         $ra,-1
    move       $s4,$zero
    ld         $s6,40($sp)
    dsrl       $s6,$s6,0x2
    daddiu     $s3,$s6,-1
.L00000654:
    beqz       $s6, .L00000678
    move       $s1,$zero
.L0000065c:
    lw         $a1,0($s0)
    jal        gfx_pio_write_32
    ld         $a0,2304($s2)
    addiu      $s1,$s1,1
    sltu       $t8,$s3,$s1
    beqz       $t8, .L0000065c
    daddiu     $s0,$s0,4
.L00000678:
    addiu      $s4,$s4,1
    slt        $t9,$s4,$s5
    bnez       $t9, .L00000654
    nop
    li         $ra,-1
.L0000068c:
    addiu      $s7,$s7,-1
    bne        $s7, $ra, .L0000063c
    nop
    b          .L000005bc
    li         $a1,258
.L000006a0:
    ld         $a1,72($s2)
    jal        gfx_flow_attach_me
    ld         $a0,2272($s2)
    ld         $a0,2376($s2)
    lw         $a1,2248($s2)
    daddiu     $a0,$a0,124
    sll        $a1,$a1,0x1
    jal        gfx_pio_write_32
    andi       $a1,$a1,0x3e
    jal        rt_pin_thread
    ld         $s1,0($sp)
    move       $s3,$v0
    jal        splx
    move       $a0,$s1
    jal        kona_flow_await_returned_credits
    move       $a0,$s2
    jal        splhi
    nop
    ld         $a1,72($s2)
    move       $s1,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s2)
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L000004d4
    lui        $a0,0x3
.L00000708:
    ld         $a1,72($s2)
    jal        gfx_flow_attach_me
    ld         $a0,2272($s2)
    ld         $a0,2376($s2)
    lw         $a1,2248($s2)
    daddiu     $a0,$a0,124
    sll        $a1,$a1,0x1
    jal        gfx_pio_write_32
    andi       $a1,$a1,0x3e
    jal        rt_pin_thread
    nop
    move       $s4,$v0
    jal        splx
    move       $a0,$s3
    jal        kona_flow_await_returned_credits
    move       $a0,$s2
    jal        splhi
    nop
    ld         $a1,72($s2)
    move       $s3,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s2)
    jal        rt_unpin_thread
    move       $a0,$s4
    b          .L0000052c
    lui        $t8,0x1
.L00000770:
    ld         $a1,72($s2)
    jal        gfx_flow_attach_me
    ld         $a0,2272($s2)
    ld         $a0,2376($s2)
    lw         $a1,2248($s2)
    daddiu     $a0,$a0,124
    sll        $a1,$a1,0x1
    jal        gfx_pio_write_32
    andi       $a1,$a1,0x3e
    jal        rt_pin_thread
    nop
    move       $s0,$v0
    jal        splx
    move       $a0,$s5
    jal        kona_flow_await_returned_credits
    move       $a0,$s2
    jal        splhi
    nop
    ld         $a1,72($s2)
    move       $s5,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s2)
    jal        rt_unpin_thread
    move       $a0,$s0
    b          .L000005ec
    ld         $s3,120($sp)

glabel kona_mem_copydown_func
    daddiu     $sp,$sp,-128
    sd         $a1,72($sp)
    sd         $a2,80($sp)
    sd         $a3,96($sp)
    lw         $at,2172($a0)
    sd         $a4,88($sp)
    sd         $s0,104($sp)
    move       $s0,$a0
    beqz       $at, .L0000080c
    sd         $ra,112($sp)
.L00000800:
    ld         $s0,104($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L0000080c:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($a0)
    jal        splhi
    nop
    sd         $v0,24($sp)
    sd         $v0,56($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000940
    lui        $v1,0x3
.L00000838:
    sw         $v1,2360($s0)
    jal        splx
    ld         $a0,56($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,481
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
    beqz       $v0, .L000009a8
    lui        $a2,0x1
.L00000894:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,64($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,72($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,80($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,96($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,88($sp)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000a10
    nop
    sw         $zero,2360($s0)
.L00000918:
    jal        splx
    ld         $a0,48($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L00000800
    ld         $ra,112($sp)
.L00000940:
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
    sd         $v0,56($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000838
    lui        $v1,0x3
.L000009a8:
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
    sd         $v0,64($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000894
    lui        $a2,0x1
.L00000a10:
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
    ld         $a0,16($sp)
    b          .L00000918
    sw         $zero,2360($s0)

glabel kona_mem_suspend
    ld         $at,104($a1)
    sltu       $at,$zero,$at
    jr         $ra
    sw         $at,5112($a0)

glabel kona_mem_resume
    lw         $at,5112($a0)
    slti       $at,$at,2
    daddiu     $sp,$sp,-112
    sd         $s0,80($sp)
    bnez       $at, .L00000aac
    move       $s0,$a0
    lw         $v0,2172($a0)
    beqz       $v0, .L00000abc
    sd         $ra,88($sp)
.L00000aac:
    sw         $zero,5112($s0)
    ld         $s0,80($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000abc:
    li         $a1,25
    jal        psema
    daddiu     $a0,$a0,5152
    ld         $a0,2272($s0)
    lw         $v1,5112($s0)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    sd         $v1,72($sp)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,64($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000c10
    lui        $a1,0x3
.L00000afc:
    sw         $a1,2360($s0)
    jal        splx
    ld         $a0,64($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,478
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
    beqz       $v0, .L00000c78
    lui        $a2,0x1
.L00000b58:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,48($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a1,72($sp)
    blez       $a1, .L00000bb4
    sd         $s1,96($sp)
    li         $s1,1
    dsll       $a1,$s1,0x2
.L00000b90:
    ld         $a0,2304($s0)
    daddu      $a1,$s0,$a1
    jal        gfx_pio_write_32
    lw         $a1,5112($a1)
    ld         $a2,72($sp)
    addiu      $s1,$s1,1
    slt        $a2,$a2,$s1
    beqz       $a2, .L00000b90
    dsll       $a1,$s1,0x2
.L00000bb4:
    ld         $s1,96($sp)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,40($sp)
    sd         $v0,56($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000ce0
    nop
    sw         $zero,2360($s0)
.L00000be8:
    jal        splx
    ld         $a0,56($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L00000aac
    ld         $ra,88($sp)
.L00000c10:
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
    b          .L00000afc
    lui        $a1,0x3
.L00000c78:
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
    b          .L00000b58
    lui        $a2,0x1
.L00000ce0:
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
    sd         $v0,56($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,16($sp)
    b          .L00000be8
    sw         $zero,2360($s0)

glabel kona_mem_reserve_func
    daddiu     $sp,$sp,-128
    sd         $a1,72($sp)
    sd         $a2,80($sp)
    sd         $a3,96($sp)
    lw         $at,2172($a0)
    sd         $a4,88($sp)
    sd         $s0,104($sp)
    move       $s0,$a0
    beqz       $at, .L00000d7c
    sd         $ra,112($sp)
.L00000d70:
    ld         $s0,104($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00000d7c:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($a0)
    jal        splhi
    nop
    sd         $v0,24($sp)
    sd         $v0,56($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000eb0
    lui        $v1,0x3
.L00000da8:
    sw         $v1,2360($s0)
    jal        splx
    ld         $a0,56($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    li         $a1,484
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
    beqz       $v0, .L00000f18
    lui        $a2,0x1
.L00000e04:
    sw         $a2,2360($s0)
    jal        splx
    ld         $a0,64($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,72($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,80($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,96($sp)
    ld         $a0,2304($s0)
    jal        gfx_pio_write_32
    ld         $a1,88($sp)
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    sd         $v0,32($sp)
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000f80
    nop
    sw         $zero,2360($s0)
.L00000e88:
    jal        splx
    ld         $a0,48($sp)
    ld         $a2,2376($s0)
    lui        $a0,0xc0
    ori        $a0,$a0,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    b          .L00000d70
    ld         $ra,112($sp)
.L00000eb0:
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
    sd         $v0,56($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000da8
    lui        $v1,0x3
.L00000f18:
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
    sd         $v0,64($sp)
    ld         $a1,72($s0)
    jal        gfx_flow_attach_me_finish
    ld         $a0,2272($s0)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000e04
    lui        $a2,0x1
.L00000f80:
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
    ld         $a0,16($sp)
    b          .L00000e88
    sw         $zero,2360($s0)

glabel kona_mem_cleanup
    daddiu     $sp,$sp,-64
    sd         $s1,8($sp)
    sd         $s3,40($sp)
    sd         $s4,24($sp)
    sd         $s5,0($sp)
    sd         $s2,48($sp)
    move       $s2,$a0
    sd         $s0,16($sp)
    daddiu     $s0,$a0,2576
    sd         $ra,32($sp)
    jal        mutex_spinlock
    move       $a0,$s0
    move       $a1,$v0
    ld         $s1,5104($s2)
    sd         $zero,5104($s2)
    jal        mutex_spinunlock
    move       $a0,$s0
    beqz       $s1, .L000010bc
    li         $s5,1
    li         $s3,219
    b          .L00001068
    li         $s4,2
.L00001040:
    ld         $a4,0($a3)
    lw         $a4,8($a4)
.L00001048:
    beq        $a0, $s4, .L000010e0
    nop
    beq        $a0, $s5, .L0000109c
    nop
    ld         $s1,56($s0)
    sd         $zero,56($s0)
    beqz       $s1, .L000010bc
    sb         $s3,3($s0)
.L00001068:
    lbu        $a5,1($s1)
    lhu        $a4,6($s1)
    dsll       $a3,$a5,0x2
    dsubu      $a3,$a3,$a5
    andi       $a4,$a4,0x1
    dsll       $a3,$a3,0x3
    move       $s0,$s1
    daddu      $a3,$s2,$a3
    lbu        $a0,3($s1)
    bnez       $a4, .L00001040
    daddiu     $a3,$a3,4976
    b          .L00001048
    li         $a4,1
.L0000109c:
    ld         $a1,24($s0)
    jal        free_gfx_io_space
    lw         $a0,2184($s2)
    sd         $zero,24($s0)
.L000010ac:
    ld         $s1,56($s0)
    sd         $zero,56($s0)
    bnez       $s1, .L00001068
    sb         $s3,3($s0)
.L000010bc:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,48($sp)
    ld         $ra,32($sp)
    ld         $s3,40($sp)
    ld         $s4,24($sp)
    ld         $s5,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000010e0:
    ld         $a3,0($a3)
    lw         $a5,32($s0)
    lw         $a3,20($a3)
    multu      $a3,$a5
    mflo       $a2
    multu      $a4,$a2
    mflo       $a1
    daddiu     $a1,$a1,16383
    dsrl       $a1,$a1,0xe
    ld         $a0,16($s0)
    jal        kvpfree
    sll        $a1,$a1,0x0
    ld         $a1,24($s0)
    sw         $zero,32($s0)
    sd         $zero,16($s0)
    jal        free_gfx_io_space
    lw         $a0,2184($s2)
    b          .L000010ac
    sd         $zero,24($s0)

glabel kona_mem_swapout
    ld         $v0,0($a1)
    daddiu     $sp,$sp,-64
    sd         $s7,24($sp)
    lw         $s7,0($gp)
    sd         $ra,40($sp)
    sd         $s4,48($sp)
    sd         $s0,8($sp)
    lhu        $at,6($a2)
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s3,0($sp)
    andi       $at,$at,0x1
    move       $s3,$a1
    move       $s0,$a2
    sd         $s2,32($sp)
    li         $s2,1
    beqz       $at, .L00001180
    sd         $s5,56($sp)
    lw         $s2,8($v0)
.L00001180:
    lw         $v1,8($s0)
    lw         $a1,20($v0)
    multu      $a1,$v1
    mflo       $a0
    multu      $s2,$a0
    lw         $v0,8($s3)
    daddiu     $s5,$s0,72
    li         $a1,25
    subu       $v0,$v0,$v1
    mflo       $s4
    sw         $v0,8($s3)
    jal        psema
    move       $a0,$s5
    jal        kona_mem_cleanup
    move       $a0,$s1
    daddiu     $a0,$s4,16383
    lui        $a1,0x8
    dsrl       $a0,$a0,0xe
    move       $a2,$zero
    jal        kvpalloc
    sll        $a0,$a0,0x0
    move       $a1,$v0
    move       $a2,$s4
    sd         $v0,16($s0)
    lw         $a0,2184($s1)
    jal        alloc_gfx_io_space
    li         $a3,14
    sd         $v0,24($s0)
    daddiu     $s4,$s1,2576
    lw         $a1,8($s0)
    sw         $a1,32($s0)
    jal        mutex_spinlock
    move       $a0,$s4
    ld         $a0,5072($s1)
    beqz       $a0, .L000012d8
    move       $a1,$v0
    sd         $s0,56($a0)
.L0000121c:
    sd         $s0,5072($s1)
    jal        mutex_spinunlock
    move       $a0,$s4
    ld         $a0,-30704($gp)
    lwu        $a2,0($gp)
    move       $a1,$s1
    li         $a4,1
    ld         $a3,-30712($gp)
    jal        kona_timeout
    move       $a5,$s0
    dsubu      $a5,$s3,$s1
    li         $a6,24
    daddiu     $a5,$a5,-4976
    ddiv       $zero,$a5,$a6
    lw         $a3,32($s0)
    lw         $a2,12($s0)
    sd         $v0,88($s0)
    move       $a0,$s1
    ld         $a4,0($s3)
    ld         $a6,24($s0)
    move       $a5,$s2
    mflo       $a1
    lw         $a4,20($a4)
    jal        kona_mem_swapout_func
    andi       $a1,$a1,0xff
    ld         $t0,40($s0)
    lbu        $a7,0($t0)
    addiu      $a7,$a7,1
    sb         $a7,0($t0)
    li         $a6,1
    beqz       $s7, .L000012b0
    sb         $a6,2($s0)
    move       $a0,$s5
    jal        psema
    li         $a1,25
    jal        vsema
    move       $a0,$s5
.L000012b0:
    ld         $s2,32($sp)
    ld         $s3,0($sp)
    ld         $s4,48($sp)
    ld         $s0,8($sp)
    ld         $ra,40($sp)
    ld         $s1,16($sp)
    ld         $s5,56($sp)
    ld         $s7,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000012d8:
    b          .L0000121c
    sd         $s0,5080($s1)

glabel kona_mem_compress
    daddiu     $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s0,24($sp)
    sd         $s1,16($sp)
    ld         $s1,16($a1)
    sd         $s2,8($sp)
    move       $s2,$a0
    sd         $s3,40($sp)
    dsubu      $s3,$a1,$a0
    ld         $v0,0($sp)
    beqz       $s1, .L0000138c
    daddiu     $s3,$s3,-4976
    move       $s0,$zero
    b          .L00001358
    lbu        $a3,4($s1)
.L0000131c:
    ddiv       $zero,$s3,$a3
    move       $a0,$s2
    mflo       $a1
    move       $a3,$s0
    sll        $a1,$a1,0x0
    lw         $a4,8($s1)
    jal        kona_mem_copydown_func
    andi       $a1,$a1,0xff
    lw         $a4,8($s1)
    sw         $s0,12($s1)
    move       $v0,$s1
    ld         $s1,48($s1)
    beqz       $s1, .L0000138c
    addu       $s0,$a4,$s0
.L00001354:
    lbu        $a3,4($s1)
.L00001358:
    divu       $zero,$s0,$a3
    mfhi       $v0
    lw         $a2,12($s1)
    beqz       $v0, .L00001374
    teq        $a3,$zero,0x7
    subu       $a5,$a3,$v0
    addu       $s0,$s0,$a5
.L00001374:
    bne        $a2, $s0, .L0000131c
    li         $a3,24
    move       $v0,$s1
    ld         $s1,48($s1)
    bnez       $s1, .L00001354
    nop
.L0000138c:
    ld         $s0,24($sp)
    ld         $ra,32($sp)
    ld         $s1,16($sp)
    ld         $s2,8($sp)
    ld         $s3,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_mem_grow
    ld         $a6,48($a2)
    lw         $t8,12($a2)
    ld         $at,0($a1)
    daddiu     $sp,$sp,-48
    sd         $s4,8($sp)
    lw         $s4,8($a2)
    lw         $at,24($at)
    sd         $s2,32($sp)
    addu       $s4,$s4,$t8
    daddiu     $a5,$a1,16
    sd         $s3,0($sp)
    subu       $at,$at,$s4
    move       $s3,$a0
    sd         $s1,16($sp)
    sltu       $at,$at,$a3
    move       $s1,$a1
    move       $s2,$a3
    sd         $s0,24($sp)
    move       $s0,$a2
    bnez       $at, .L00001484
    sd         $ra,40($sp)
    move       $a2,$a6
    bnez       $a6, .L00001444
    nop
.L00001408:
    ld         $a1,0($s1)
    lw         $a1,24($a1)
.L00001410:
    subu       $a3,$a1,$s4
    sltu       $a3,$a3,$s2
    beqz       $a3, .L0000144c
    nop
    ld         $a4,48($a2)
    move       $a0,$s3
    sd         $a4,48($s0)
    move       $a1,$s1
    jal        kona_mem_swapout
    sd         $zero,48($a2)
    ld         $a2,48($s0)
    beqz       $a2, .L00001408
    nop
.L00001444:
    b          .L00001410
    lw         $a1,12($a2)
.L0000144c:
    lw         $a5,8($s1)
    addu       $a5,$s2,$a5
    sw         $a5,8($s1)
    ld         $s3,0($sp)
.L0000145c:
    ld         $s4,8($sp)
    ld         $s1,16($sp)
    lw         $a6,8($s0)
    ld         $ra,40($sp)
    addu       $a6,$s2,$a6
    sw         $a6,8($s0)
    ld         $s0,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001484:
    ld         $a2,16($a1)
    beq        $s0, $a2, .L000014a4
    move       $a0,$s3
.L00001490:
    daddiu     $a5,$a2,48
    ld         $a2,48($a2)
    bne        $s0, $a2, .L00001490
    nop
    move       $a0,$s3
.L000014a4:
    move       $a1,$s1
    sd         $a6,0($a5)
    sd         $zero,48($s0)
    jal        kona_mem_swapout
    move       $a2,$s0
    b          .L0000145c
    ld         $s3,0($sp)

glabel kona_mem_reserve
    lw         $t0,8($a4)
    daddiu     $sp,$sp,-64
    sd         $s5,0($sp)
    sd         $s3,32($sp)
    sd         $s4,24($sp)
    move       $s4,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    move       $s3,$a2
    ld         $at,16($a1)
    move       $s5,$a3
    sd         $s1,8($sp)
    move       $s1,$a4
    sd         $s2,40($sp)
    daddiu     $s2,$a1,16
    move       $a7,$at
    sd         $ra,48($sp)
    beqz       $at, .L000015b4
    move       $v0,$at
    ld         $a1,0($a1)
    lw         $a2,8($s0)
    lw         $a1,24($a1)
    subu       $a1,$a1,$a2
    sltu       $a1,$a1,$t0
    bnez       $a1, .L00001548
    nop
    b          .L000015b4
    nop
.L00001530:
    daddiu     $s2,$a7,48
    ld         $a7,48($a7)
    beqz       $a7, .L000015b0
    nop
    beqz       $a1, .L000015b0
    nop
.L00001548:
    ld         $v0,40($a7)
    beq        $v0, $s3, .L00001530
    nop
    beq        $v0, $s5, .L00001530
    nop
    ld         $a2,48($a7)
    move       $a0,$s4
    move       $a1,$s0
    sd         $a2,0($s2)
    sd         $zero,48($a7)
    jal        kona_mem_swapout
    move       $a2,$a7
    ld         $a7,0($s2)
    beqz       $a7, .L000015ac
    nop
    ld         $a1,0($s0)
    lw         $a2,8($s0)
    lw         $a1,24($a1)
    lw         $t0,8($s1)
    subu       $a1,$a1,$a2
    sltu       $a1,$a1,$t0
    bnez       $a1, .L00001548
    nop
    b          .L000015b4
    ld         $v0,16($s0)
.L000015ac:
    lw         $t0,8($s1)
.L000015b0:
    ld         $v0,16($s0)
.L000015b4:
    beqz       $v0, .L000016dc
    move       $a7,$v0
    lw         $a0,12($v0)
.L000015c0:
    sltu       $a2,$a0,$t0
    move       $s2,$zero
    beqz       $a2, .L00001650
    move       $a1,$zero
    beqz       $v0, .L00001694
    nop
    lbu        $a2,4($s1)
.L000015dc:
    b          .L000015f8
    lw         $a5,12($a7)
.L000015e4:
    beqz       $t0, .L00001644
    nop
.L000015ec:
    beqz       $v0, .L00001698
    move       $a7,$v0
    lw         $a5,12($a7)
.L000015f8:
    lw         $a4,8($a7)
    addu       $a4,$a4,$a5
    addu       $a4,$a2,$a4
    addiu      $a4,$a4,-1
    divu       $zero,$a4,$a2
    mflo       $a3
    multu      $a2,$a3
    ld         $v0,48($a7)
    mflo       $a1
    beqz       $v0, .L000016e8
    teq        $a2,$zero,0x7
    lw         $a0,12($v0)
.L00001630:
    subu       $a3,$a0,$a1
    bltz       $a3, .L000015e4
    sltu       $a3,$a3,$t0
    bnez       $a3, .L000015ec
    nop
.L00001644:
    sd         $v0,48($s1)
    b          .L00001658
    sd         $s1,48($a7)
.L00001650:
    sd         $v0,48($s1)
    sd         $s1,16($s0)
.L00001658:
    lw         $a5,8($s1)
    lw         $a4,8($s0)
    addu       $a4,$a4,$a5
    sw         $a4,8($s0)
    move       $v0,$zero
    sw         $a1,12($s1)
.L00001670:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,40($sp)
    ld         $ra,48($sp)
    ld         $s3,32($sp)
    ld         $s4,24($sp)
    ld         $s5,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001694:
    move       $s2,$zero
.L00001698:
    beqz       $s2, .L000016f4
    nop
.L000016a0:
    ld         $a7,16($s0)
    beqz       $a7, .L000016d4
    nop
.L000016ac:
    ld         $a6,48($a7)
    move       $a0,$s4
    move       $a1,$s0
    sd         $a6,16($s0)
    move       $a2,$a7
    jal        kona_mem_swapout
    sd         $zero,48($a7)
    ld         $a7,16($s0)
    bnez       $a7, .L000016ac
    nop
.L000016d4:
    b          .L00001670
    li         $v0,1
.L000016dc:
    ld         $a0,0($s0)
    b          .L000015c0
    lw         $a0,24($a0)
.L000016e8:
    ld         $a0,0($s0)
    b          .L00001630
    lw         $a0,24($a0)
.L000016f4:
    ld         $a1,0($s0)
    lw         $a1,16($a1)
    beqz       $a1, .L000016a0
    move       $a0,$s4
    jal        kona_mem_compress
    move       $a1,$s0
    move       $a7,$v0
    lbu        $a2,4($s1)
    lw         $t0,8($s1)
    b          .L000015dc
    addiu      $s2,$s2,1

glabel kona_mem_swapin_complete
    daddiu     $sp,$sp,-64
    sd         $a2,8($sp)
    sd         $s2,16($sp)
    move       $s2,$a1
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s1,32($sp)
    daddiu     $s1,$a0,2576
    sd         $ra,48($sp)
    jal        mutex_spinlock
    move       $a0,$s1
    sd         $v0,40($sp)
    beqz       $s2, .L00001764
    sd         $s1,0($sp)
    lw         $at,2172($s0)
    beqz       $at, .L00001814
    nop
.L00001764:
    ld         $s1,5096($s0)
    beqz       $s1, .L000017f8
    ld         $a6,-30696($gp)
    beqz       $s2, .L000017c8
    nop
.L00001778:
    ld         $v0,56($s1)
    sd         $zero,88($s1)
    beqz       $v0, .L000017f0
    sd         $v0,5096($s0)
.L00001788:
    li         $a0,2
    sb         $a0,3($s1)
    ld         $v1,5104($s0)
    sd         $v1,56($s1)
    daddiu     $a0,$s1,72
    jal        vsema
    sd         $s1,5104($s0)
    ld         $s2,16($sp)
.L000017a8:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    ld         $a1,40($sp)
    ld         $ra,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000017c8:
    lw         $a1,2172($s0)
    bnez       $a1, .L000017a8
    ld         $s2,16($sp)
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,88($s1)
    bnez       $v0, .L00001778
    nop
    b          .L000017a8
    ld         $s2,16($sp)
.L000017f0:
    b          .L00001788
    sd         $zero,5088($s0)
.L000017f8:
    daddiu     $a2,$a6,96
    daddiu     $a1,$a6,64
    lw         $a3,2184($s0)
    jal        cmn_err
    li         $a0,7
    b          .L000017a8
    ld         $s2,16($sp)
.L00001814:
    lw         $a3,2184($s0)
    ld         $a4,8($sp)
    ld         $a1,-30696($gp)
    lw         $a6,8($a4)
    li         $a0,4
    lbu        $a5,0($a4)
    lbu        $a4,1($a4)
    jal        cmn_err
    daddiu     $a2,$a1,96
    move       $a0,$s0
    jal        kona_die
    li         $a1,15
    b          .L00001764
    nop

glabel kona_mem_swapout_complete
    daddiu     $sp,$sp,-64
    sd         $a2,8($sp)
    sd         $s1,32($sp)
    move       $s1,$a1
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s2,16($sp)
    daddiu     $s2,$a0,2576
    sd         $ra,48($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    sd         $v0,40($sp)
    beqz       $s1, .L00001890
    sd         $s2,0($sp)
    lw         $at,2172($s0)
    beqz       $at, .L00001944
    nop
.L00001890:
    ld         $s2,5080($s0)
    beqz       $s2, .L00001928
    ld         $a6,-30696($gp)
    beqz       $s1, .L000018fc
    nop
.L000018a4:
    ld         $v0,56($s2)
    sd         $zero,88($s2)
    beqz       $v0, .L00001920
    sd         $v0,5080($s0)
.L000018b4:
    li         $a1,1
    li         $a0,2
    movz       $a0,$a1,$s1
    sb         $a0,3($s2)
    ld         $v1,5104($s0)
    sd         $v1,56($s2)
    daddiu     $a0,$s2,72
    jal        vsema
    sd         $s2,5104($s0)
.L000018d8:
    ld         $s2,16($sp)
.L000018dc:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    ld         $a1,40($sp)
    ld         $ra,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000018fc:
    lw         $a2,2172($s0)
    bnez       $a2, .L000018d8
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,88($s2)
    bnez       $v0, .L000018a4
    nop
    b          .L000018dc
    ld         $s2,16($sp)
.L00001920:
    b          .L000018b4
    sd         $zero,5072($s0)
.L00001928:
    daddiu     $a2,$a6,96
    daddiu     $a1,$a6,168
    lw         $a3,2184($s0)
    jal        cmn_err
    li         $a0,7
    b          .L000018dc
    ld         $s2,16($sp)
.L00001944:
    lw         $a3,2184($s0)
    ld         $a4,8($sp)
    ld         $a1,-30696($gp)
    lw         $a6,8($a4)
    li         $a0,4
    daddiu     $a2,$a1,96
    lbu        $a5,0($a4)
    lbu        $a4,1($a4)
    jal        cmn_err
    daddiu     $a1,$a1,104
    move       $a0,$s0
    jal        kona_die
    li         $a1,16
    b          .L00001890
    nop

glabel kona_mem_suspend_complete
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a1, .L000019d4
    sd         $ra,8($sp)
    ld         $a2,-30696($gp)
    li         $a1,4
    li         $a0,2109
    daddiu     $a3,$a2,96
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a2,$a2,208
    move       $a0,$s0
    jal        kona_die
    li         $a1,16
.L000019bc:
    jal        vsema
    daddiu     $a0,$s0,5152
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000019d4:
    lw         $a3,0($a2)
    bltz       $a3, .L000019bc
    sd         $zero,5168($a0)
    move       $a0,$zero
.L000019e4:
    dsll       $a6,$a0,0x2
    addiu      $a0,$a0,1
    slt        $a4,$a3,$a0
    lw         $a5,0($a2)
    daddu      $a6,$s0,$a6
    sw         $a5,5112($a6)
    bnez       $a4, .L000019bc
    dsll       $t0,$a0,0x2
    addiu      $a0,$a0,1
    slt        $t1,$a3,$a0
    lw         $a7,4($a2)
    daddu      $t0,$s0,$t0
    daddiu     $a2,$a2,8
    beqz       $t1, .L000019e4
    sw         $a7,5112($t0)
    b          .L000019bc
    nop

glabel kona_mem_swapin
    lw         $a5,32($a2)
    lw         $a7,0($gp)
    daddiu     $sp,$sp,-80
    sd         $s0,32($sp)
    lhu        $at,6($a2)
    sd         $s1,24($sp)
    ld         $a6,0($a1)
    andi       $at,$at,0x1
    move       $s1,$a0
    move       $s0,$a2
    sd         $s2,48($sp)
    li         $s2,1
    beqz       $at, .L00001a64
    lw         $v0,20($a6)
    lw         $s2,8($a6)
.L00001a64:
    multu      $v0,$a5
    mflo       $a0
    multu      $s2,$a0
    sd         $a1,8($sp)
    sd         $a7,0($sp)
    sd         $ra,56($sp)
    sd         $s3,64($sp)
    mflo       $v1
    beqz       $a5, .L00001b68
    sd         $v1,16($sp)
    li         $a1,25
    daddiu     $s3,$s0,72
    jal        psema
    move       $a0,$s3
    jal        kona_mem_cleanup
    move       $a0,$s1
    ld         $a1,16($s0)
    ld         $a2,16($sp)
    li         $a3,14
    jal        alloc_gfx_io_space
    lw         $a0,2184($s1)
    sd         $v0,24($s0)
    daddiu     $a0,$s1,2576
    jal        mutex_spinlock
    sd         $a0,40($sp)
    ld         $a2,5088($s1)
    ld         $a0,40($sp)
    beqz       $a2, .L00001b98
    move       $a1,$v0
    sd         $s0,56($a2)
.L00001ae4:
    jal        mutex_spinunlock
    sd         $s0,5088($s1)
    ld         $a0,-30688($gp)
    lwu        $a2,0($gp)
    move       $a1,$s1
    li         $a4,1
    ld         $a3,-30712($gp)
    jal        kona_timeout
    move       $a5,$s0
    ld         $a4,8($sp)
    dsubu      $a5,$a4,$s1
    li         $a6,24
    daddiu     $a5,$a5,-4976
    ddiv       $zero,$a5,$a6
    ld         $a7,16($s0)
    lw         $a3,32($s0)
    lw         $a2,12($s0)
    sd         $v0,88($s0)
    move       $a0,$s1
    ld         $a4,0($a4)
    ld         $a6,24($s0)
    move       $a5,$s2
    mflo       $a1
    lw         $a4,20($a4)
    jal        kona_mem_swapin_func
    andi       $a1,$a1,0xff
    ld         $a6,0($sp)
    beqz       $a6, .L00001b68
    move       $a0,$s3
    jal        psema
    li         $a1,25
    jal        vsema
    move       $a0,$s3
.L00001b68:
    ld         $s3,64($sp)
    ld         $s1,24($sp)
    ld         $t0,40($s0)
    ld         $s2,48($sp)
    lbu        $a7,0($t0)
    ld         $ra,56($sp)
    addiu      $a7,$a7,-1
    sb         $a7,0($t0)
    sb         $zero,2($s0)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001b98:
    b          .L00001ae4
    sd         $s0,5096($s1)

glabel kona_mem_update_driver
    daddiu     $sp,$sp,-48
    sd         $s3,0($sp)
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    li         $a6,24
    ld         $s0,8($a2)
    dsubu      $a5,$a1,$a0
    move       $s1,$a0
    sd         $s5,24($sp)
    move       $s5,$a1
    move       $s3,$a3
    sd         $s2,32($sp)
    daddiu     $a5,$a5,-4976
    beqz       $s0, .L00001c10
    sd         $ra,40($sp)
    ddiv       $zero,$a5,$a6
    mflo       $s2
    nop
    andi       $s2,$s2,0xff
.L00001bec:
    lbu        $a2,0($s0)
    move       $a0,$s1
    lw         $a3,12($s0)
    move       $a1,$s2
    jal        kona_mem_reserve_func
    lw         $a4,8($s0)
    ld         $s0,64($s0)
    bnez       $s0, .L00001bec
    nop
.L00001c10:
    beqz       $s3, .L00001c1c
    move       $s0,$zero
    ld         $s0,8($s3)
.L00001c1c:
    dsubu      $a0,$s5,$s1
    beqz       $s0, .L00001c64
    ld         $s3,0($sp)
    li         $t9,24
    daddiu     $t8,$a0,-4976
    ddiv       $zero,$t8,$t9
    mflo       $s2
    nop
    andi       $s2,$s2,0xff
.L00001c40:
    lbu        $a2,0($s0)
    move       $a0,$s1
    lw         $a3,12($s0)
    move       $a1,$s2
    jal        kona_mem_reserve_func
    lw         $a4,8($s0)
    ld         $s0,64($s0)
    bnez       $s0, .L00001c40
    nop
.L00001c64:
    ld         $s2,32($sp)
    ld         $ra,40($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s5,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_mem_update
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s1,0($sp)
    sd         $s2,24($sp)
    move       $s2,$a0
    ld         $s1,112($a1)
    sd         $s0,16($sp)
    b          .L00001d0c
    move       $s0,$zero
.L00001ca4:
    daddu      $a3,$a2,$a5
    daddiu     $a3,$a3,8
.L00001cac:
    dsll       $a1,$s0,0x2
    move       $a0,$s2
    dsubu      $a1,$a1,$s0
    daddu      $a2,$a5,$s1
    dsll       $a1,$a1,0x3
    daddiu     $a2,$a2,144
    daddu      $a1,$s2,$a1
    jal        kona_mem_update_driver
    daddiu     $a1,$a1,4976
    addiu      $s0,$s0,1
    slti       $a2,$s0,4
    beqz       $a2, .L00001cf4
    dsll       $a5,$s0,0x4
    ld         $a2,240($s1)
.L00001ce4:
    bnez       $a2, .L00001ca4
    move       $a3,$zero
    b          .L00001cac
    nop
.L00001cf4:
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001d0c:
    dsll       $a5,$s0,0x4
    b          .L00001ce4
    ld         $a2,240($s1)

glabel kona_mem_validate_driver
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    sd         $s2,40($sp)
    sd         $s4,16($sp)
    move       $s4,$a0
    sd         $s3,32($sp)
    move       $s3,$a1
    move       $s2,$a2
    sd         $s1,0($sp)
    sd         $ra,24($sp)
    jal        kona_mem_cleanup
    move       $s1,$a3
    ld         $s0,8($s2)
    bnez       $s0, .L00001d84
    nop
    b          .L00001d9c
    nop
.L00001d5c:
    move       $a1,$s3
    move       $a2,$s2
    move       $a3,$s1
    jal        kona_mem_reserve
    move       $a4,$s0
    beqz       $v0, .L00001e2c
    move       $a0,$s4
    ld         $s0,64($s0)
.L00001d7c:
    beqz       $s0, .L00001d9c
    nop
.L00001d84:
    lbu        $at,2($s0)
    bnez       $at, .L00001d5c
    move       $a0,$s4
    ld         $s0,64($s0)
    bnez       $s0, .L00001d84
    nop
.L00001d9c:
    beqz       $s1, .L00001da8
    move       $s0,$zero
    ld         $s0,8($s1)
.L00001da8:
    bnezl      $s0, .L00001de4
    lbu        $v0,2($s0)
    b          .L00001df8
    nop
.L00001db8:
    move       $a1,$s3
    move       $a2,$s2
    move       $a3,$s1
    jal        kona_mem_reserve
    move       $a4,$s0
    beqz       $v0, .L00001e18
    move       $a0,$s4
    ld         $s0,64($s0)
.L00001dd8:
    beqz       $s0, .L00001df8
    nop
.L00001de0:
    lbu        $v0,2($s0)
.L00001de4:
    bnez       $v0, .L00001db8
    move       $a0,$s4
    ld         $s0,64($s0)
    bnez       $s0, .L00001de0
    nop
.L00001df8:
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    ld         $ra,24($sp)
    ld         $s2,40($sp)
    ld         $s3,32($sp)
    ld         $s4,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001e18:
    move       $a1,$s3
    jal        kona_mem_swapin
    move       $a2,$s0
    b          .L00001dd8
    ld         $s0,64($s0)
.L00001e2c:
    move       $a1,$s3
    jal        kona_mem_swapin
    move       $a2,$s0
    b          .L00001d7c
    ld         $s0,64($s0)

glabel kona_mem_validate
    daddiu     $sp,$sp,-64
    sd         $s6,56($sp)
    ld         $s6,112($a1)
    sd         $ra,48($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    jal        kona_mem_cleanup
    sd         $s5,32($sp)
    sd         $s0,24($sp)
    sd         $s4,16($sp)
    sd         $s3,8($sp)
    move       $s5,$zero
    sd         $s2,0($sp)
    dsll       $a5,$s5,0x2
    dsll       $a1,$s5,0x4
    daddu      $s2,$a1,$s6
    dsubu      $a3,$a5,$s5
.L00001e84:
    dsll       $a6,$a3,0x3
    ld         $at,240($s6)
    move       $s0,$zero
    daddiu     $s3,$s2,144
    daddu      $a2,$s1,$a6
    lbu        $a0,144($s2)
    beqz       $at, .L00001f28
    daddu      $a1,$at,$a1
    beqz       $a0, .L00001f38
    daddiu     $s0,$a1,8
    daddiu     $s4,$a2,4976
.L00001eb0:
    move       $a0,$s1
.L00001eb4:
    move       $a1,$s4
    move       $a2,$s3
    jal        kona_mem_validate_driver
    move       $a3,$s0
    lbu        $a2,144($s2)
    bnez       $a2, .L00001eb4
    move       $a0,$s1
    beqz       $s0, .L00001ee4
    nop
    lbu        $a3,0($s0)
    bnez       $a3, .L00001eb4
    move       $a0,$s1
.L00001ee4:
    addiu      $s5,$s5,1
.L00001ee8:
    dsll       $a5,$s5,0x2
    slti       $a4,$s5,4
    dsll       $a1,$s5,0x4
    dsubu      $a3,$a5,$s5
    bnez       $a4, .L00001e84
    daddu      $s2,$a1,$s6
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $ra,48($sp)
    ld         $s4,16($sp)
    ld         $s5,32($sp)
    ld         $s6,56($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001f28:
    bnez       $a0, .L00001eb0
    daddiu     $s4,$a2,4976
    b          .L00001ee8
    addiu      $s5,$s5,1
.L00001f38:
    beqz       $s0, .L00001ee4
    nop
    lbu        $a7,8($a1)
    bnez       $a7, .L00001eb0
    daddiu     $s4,$a2,4976
    b          .L00001ee8
    addiu      $s5,$s5,1

glabel kona_mem_destroy
    daddiu     $sp,$sp,-80
    sd         $s0,24($sp)
    sd         $s1,16($sp)
    sd         $s2,64($sp)
    sd         $s5,8($sp)
    sd         $ra,40($sp)
    sd         $s6,48($sp)
    sd         $s7,0($sp)
    sd         $s3,56($sp)
    move       $s3,$a0
    move       $s7,$a2
    ld         $s6,112($a1)
    sd         $s4,32($sp)
    b          .L00002130
    move       $s4,$zero
.L00001f90:
    addiu      $s4,$s4,1
    slti       $at,$s4,4
    beqz       $at, .L000020fc
    dsll       $a0,$s4,0x4
.L00001fa0:
    beqz       $s7, .L00002128
    daddu      $a6,$a0,$s6
    ld         $a6,240($s6)
    daddu      $a6,$a6,$a0
    daddiu     $a6,$a6,8
.L00001fb4:
    ld         $s1,8($a6)
    dsll       $s2,$s4,0x2
    dsubu      $s2,$s2,$s4
    dsll       $s2,$s2,0x3
    beqz       $s1, .L00001f90
    daddu      $s2,$s3,$s2
    ld         $a4,4992($s2)
    daddiu     $a7,$s2,4992
    beqz       $a4, .L0000205c
    nop
    b          .L00001ff4
    ld         $t8,40($a4)
.L00001fe4:
    daddiu     $a7,$a5,48
.L00001fe8:
    beqz       $a3, .L00002058
    nop
    ld         $t8,40($a4)
.L00001ff4:
    ld         $a3,48($a4)
    move       $a5,$a4
    bne        $t8, $a6, .L00002020
    move       $a4,$a3
    sd         $a3,0($a7)
    lw         $ra,8($a5)
    sd         $zero,48($a5)
    lw         $t9,4984($s2)
    subu       $t9,$t9,$ra
    b          .L00002024
    sw         $t9,4984($s2)
.L00002020:
    daddiu     $a7,$a5,48
.L00002024:
    beqz       $a3, .L00002058
    move       $a5,$a4
    ld         $at,40($a4)
    ld         $a3,48($a4)
    bne        $at, $a6, .L00001fe4
    move       $a4,$a3
    sd         $a3,0($a7)
    lw         $v1,8($a5)
    sd         $zero,48($a5)
    lw         $v0,4984($s2)
    subu       $v0,$v0,$v1
    b          .L00001fe8
    sw         $v0,4984($s2)
.L00002058:
    ld         $s1,8($a6)
.L0000205c:
    beqz       $s1, .L00001f90
    sd         $zero,8($a6)
    b          .L000020b8
    move       $s0,$s1
.L0000206c:
    lw         $a5,8($a4)
.L00002070:
    lw         $a3,20($a4)
    lw         $a4,32($s0)
    multu      $a3,$a4
    mflo       $a2
    multu      $a5,$a2
    mflo       $a1
    daddiu     $a1,$a1,16383
    dsrl       $a1,$a1,0xe
    jal        kvpfree
    sll        $a1,$a1,0x0
.L000020a0:
    jal        freesema
    move       $a0,$s5
    jal        kern_free
    move       $a0,$s0
    beqz       $s1, .L00001f90
    move       $s0,$s1
.L000020b8:
    li         $a1,25
    ld         $s1,64($s1)
    daddiu     $s5,$s0,72
    sd         $zero,64($s0)
    jal        psema
    move       $a0,$s5
    jal        kona_mem_cleanup
    move       $a0,$s3
    ld         $a0,16($s0)
    beqz       $a0, .L000020a0
    nop
    lhu        $a5,6($s0)
    andi       $a5,$a5,0x1
    bnez       $a5, .L0000206c
    ld         $a4,4976($s2)
    b          .L00002070
    li         $a5,1
.L000020fc:
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    ld         $s2,64($sp)
    ld         $s3,56($sp)
    ld         $s4,32($sp)
    ld         $ra,40($sp)
    ld         $s5,8($sp)
    ld         $s6,48($sp)
    ld         $s7,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00002128:
    b          .L00001fb4
    daddiu     $a6,$a6,144
.L00002130:
    dsll       $a0,$s4,0x4
    b          .L00001fa0
    nop

glabel kona_mem_alloc
    lw         $v0,8($a2)
    lhu        $t2,2($a2)
    daddiu     $sp,$sp,-192
    sd         $s4,80($sp)
    lbu        $s4,1($a2)
    sd         $s2,104($sp)
    lbu        $s2,0($a2)
    sd         $s3,88($sp)
    ld         $s3,112($a1)
    sd         $s1,96($sp)
    lw         $a4,4($a2)
    ld         $s1,40($a0)
    move       $t1,$zero
    move       $a7,$zero
    sd         $s6,136($sp)
    move       $t0,$zero
    beqz       $a4, .L00002210
    sd         $s7,144($sp)
    slti       $at,$s2,4
    beqz       $at, .L00002210
    nop
    beqz       $v0, .L00002218
    dsll       $s6,$s2,0x2
    divu       $zero,$a4,$v0
    mfhi       $v1
    bnez       $v1, .L000021ec
    teq        $v0,$zero,0x7
    dsll       $s6,$s2,0x2
    dsubu      $s6,$s6,$s2
    dsll       $s6,$s6,0x3
    daddu      $s6,$s1,$s6
    ld         $a2,4976($s6)
    lw         $t3,20($a2)
    divu       $zero,$v0,$t3
    mfhi       $a5
    mflo       $t8
    bnez       $a5, .L000021ec
    teq        $t3,$zero,0x7
    lw         $t9,4($a2)
    sltu       $t9,$t9,$v0
    bnez       $t9, .L000021f0
    li         $v0,34
    lw         $at,12($a2)
    beqz       $at, .L00002310
.L000021ec:
    li         $v0,34
.L000021f0:
    ld         $s6,136($sp)
    ld         $s4,80($sp)
    ld         $s3,88($sp)
    ld         $s1,96($sp)
    ld         $s2,104($sp)
    ld         $s7,144($sp)
    jr         $ra
    daddiu     $sp,$sp,192
.L00002210:
    b          .L000021f0
    li         $v0,22
.L00002218:
    dsubu      $s6,$s6,$s2
    dsll       $s6,$s6,0x3
    daddu      $s6,$s1,$s6
    ld         $a2,4976($s6)
    sd         $s8,168($sp)
    li         $s7,1
    lw         $t3,20($a2)
.L00002234:
    addu       $t9,$t3,$a4
    addiu      $t9,$t9,-1
    divu       $zero,$t9,$t3
    sd         $t2,72($sp)
    sd         $t1,128($sp)
    sd         $t0,120($sp)
    lw         $t8,0($a2)
    sd         $a7,112($sp)
    sd         $a3,64($sp)
    slt        $t8,$t8,$s4
    teq        $t3,$zero,0x7
    sd         $a0,56($sp)
    mflo       $s8
    beqz       $t8, .L0000227c
    sd         $ra,176($sp)
    ld         $s8,168($sp)
    b          .L000021f0
    li         $v0,6
.L0000227c:
    jal        RRM_CheckValidFault
    ld         $a0,64($a1)
    ld         $ra,176($sp)
    ld         $a0,128($sp)
    ld         $a1,120($sp)
    beqz       $v0, .L000022a4
    ld         $a2,112($sp)
    ld         $s8,168($sp)
    b          .L000021f0
    li         $v0,14
.L000022a4:
    ld         $v0,56($sp)
    ld         $v0,40($v0)
    sd         $s6,32($sp)
    lw         $at,80($v0)
    sd         $s0,152($sp)
    addiu      $at,$at,1
    sw         $at,80($v0)
    ld         $a4,240($s3)
    ld         $a7,4976($s6)
    sd         $s5,160($sp)
    beqz       $a4, .L00002424
    lw         $v0,12($a7)
    dsll       $s5,$s2,0x4
    daddu      $v1,$a4,$s5
    daddiu     $a3,$v1,8
    sd         $a3,0($sp)
    lw         $v1,12($v1)
    daddu      $s5,$s5,$s3
    beqz       $v0, .L00002458
    sw         $v1,8($sp)
.L000022f4:
    sd         $a3,16($sp)
    move       $s6,$zero
.L000022fc:
    ld         $s0,152($s5)
    beqz       $s0, .L0000233c
    ld         $a3,0($sp)
    b          .L0000232c
    lbu        $a0,0($s0)
.L00002310:
    move       $s7,$t8
    b          .L00002234
    sd         $s8,168($sp)
.L0000231c:
    ld         $s0,64($s0)
    beqz       $s0, .L0000233c
    ld         $a3,0($sp)
    lbu        $a0,0($s0)
.L0000232c:
    bne        $a0, $s4, .L0000231c
    nop
    bnez       $s0, .L00002388
    ld         $a3,0($sp)
.L0000233c:
    beqz       $a3, .L0000238c
    ld         $a5,64($sp)
    ld         $s0,8($a3)
    beqz       $s0, .L0000238c
    ld         $a5,64($sp)
    b          .L00002368
    lbu        $a3,0($s0)
.L00002358:
    ld         $s0,64($s0)
    beqz       $s0, .L00002388
    nop
    lbu        $a3,0($s0)
.L00002368:
    beq        $a3, $s4, .L00002388
    nop
    ld         $s0,64($s0)
    beqz       $s0, .L00002388
    nop
    lbu        $a4,0($s0)
    bne        $a4, $s4, .L00002358
    nop
.L00002388:
    ld         $a5,64($sp)
.L0000238c:
    beqz       $a5, .L00002444
    nop
    bnez       $s0, .L000023cc
    nop
    li         $s6,2
.L000023a0:
    ld         $ra,176($sp)
.L000023a4:
    ld         $a7,56($sp)
    ld         $s8,168($sp)
    ld         $a7,40($a7)
    ld         $s5,160($sp)
    lw         $a6,80($a7)
    ld         $s0,152($sp)
    move       $v0,$s6
    addiu      $a6,$a6,-1
    b          .L000021f0
    sw         $a6,80($a7)
.L000023cc:
    lbu        $t0,4($s0)
    bne        $t0, $s7, .L000023e4
    ld         $t2,72($sp)
    lhu        $t1,6($s0)
    beq        $t1, $t2, .L00002460
    nop
.L000023e4:
    li         $s6,17
    li         $a2,1
.L000023ec:
    bnez       $a2, .L000023a4
    ld         $ra,176($sp)
.L000023f4:
    bnez       $a1, .L000023a4
    ld         $ra,176($sp)
    lw         $t8,8($sp)
    lw         $t9,148($s5)
    lw         $t3,24($a7)
    addu       $t8,$t8,$t9
    addu       $t8,$s8,$t8
    sltu       $t3,$t3,$t8
    beqz       $t3, .L000024e0
    move       $a0,$s1
    b          .L000023a0
    li         $s6,12
.L00002424:
    beqz       $v0, .L000024c0
    li         $s6,19
    li         $a0,1
.L00002430:
    bnez       $a0, .L000023a4
    ld         $ra,176($sp)
    dsll       $s5,$s2,0x4
    b          .L000022fc
    daddu      $s5,$s3,$s5
.L00002444:
    beqz       $s0, .L0000246c
    ld         $v0,16($sp)
    li         $s6,16
    b          .L000023f4
    li         $a1,1
.L00002458:
    b          .L000022f4
    daddiu     $a3,$s5,144
.L00002460:
    lw         $t8,8($s0)
    b          .L000023ec
    subu       $s8,$s8,$t8
.L0000246c:
    ld         $s0,8($v0)
    beqz       $s0, .L000025b0
    daddiu     $v0,$v0,8
.L00002478:
    lbu        $v1,4($s0)
    sltu       $v1,$v1,$s7
    bnez       $v1, .L0000248c
    nop
    daddiu     $v0,$s0,64
.L0000248c:
    ld         $s0,64($s0)
    beqz       $s0, .L000024b8
    nop
    lbu        $a0,4($s0)
    sltu       $a0,$a0,$s7
    bnez       $a0, .L000024ac
    nop
    daddiu     $v0,$s0,64
.L000024ac:
    ld         $s0,64($s0)
    bnez       $s0, .L00002478
    nop
.L000024b8:
    b          .L000023f4
    sd         $v0,24($sp)
.L000024c0:
    sw         $zero,8($sp)
    dsll       $a3,$s2,0x4
    sd         $zero,0($sp)
    move       $s6,$zero
    daddu      $a3,$s3,$a3
    daddiu     $a3,$a3,144
    b          .L00002430
    sd         $a3,16($sp)
.L000024e0:
    jal        kona_mem_suspend
    move       $a1,$s3
    ld         $s3,0($sp)
    ld         $a6,32($sp)
    ld         $a5,16($sp)
    daddiu     $a6,$a6,4976
    sd         $a6,48($sp)
    ld         $a6,64($sp)
    lw         $a4,4($a5)
    daddiu     $a7,$s5,144
    sd         $a7,40($sp)
    addu       $a4,$s8,$a4
    beqz       $a6, .L000025d4
    sw         $a4,4($a5)
    move       $s4,$a7
    move       $a0,$s1
    ld         $s2,48($sp)
    move       $a2,$s0
    move       $a3,$s8
    jal        kona_mem_grow
    move       $a1,$s2
.L00002534:
    lbu        $t0,144($s5)
    beqz       $t0, .L000025b8
.L0000253c:
    move       $a0,$s1
.L00002540:
    move       $a1,$s2
    move       $a2,$s4
    jal        kona_mem_validate_driver
    move       $a3,$s3
    lbu        $t1,144($s5)
    bnez       $t1, .L00002540
    move       $a0,$s1
    beqz       $s3, .L00002570
    move       $a0,$s1
    lbu        $t2,0($s3)
    bnez       $t2, .L0000253c
    move       $a0,$s1
.L00002570:
    move       $a1,$s2
    move       $a2,$s4
    jal        kona_mem_update_driver
    move       $a3,$s3
    jal        kona_mem_resume
    move       $a0,$s1
    lw         $t3,2172($s1)
    bnez       $t3, .L000023a0
    li         $a1,370
    jal        gfx_pio_write_32
    ld         $a0,2304($s1)
    ld         $a0,2304($s1)
    jal        gfx_pio_write_32
    move       $a1,$zero
    b          .L000023a4
    ld         $ra,176($sp)
.L000025b0:
    b          .L000023f4
    sd         $v0,24($sp)
.L000025b8:
    beqz       $s3, .L00002570
    move       $a0,$s1
    lbu        $t8,0($s3)
    bnez       $t8, .L00002540
    move       $a0,$s1
    b          .L00002570
    move       $a0,$s1
.L000025d4:
    jal        kern_malloc
    li         $a0,96
    move       $s0,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,96
    li         $a3,-1
    ld         $a2,-30696($gp)
    li         $a1,1
    daddiu     $a0,$s0,72
    jal        init_sema
    daddiu     $a2,$a2,240
    ld         $a1,48($sp)
    sb         $s7,4($s0)
    sw         $s8,8($s0)
    sb         $s4,0($s0)
    sb         $s2,1($s0)
    ld         $a3,24($sp)
    ld         $a6,72($sp)
    sh         $a6,6($s0)
    ld         $a5,16($sp)
    sd         $a5,40($s0)
    ld         $a4,0($a3)
    sd         $a4,64($s0)
    move       $a0,$s1
    sd         $s0,0($a3)
    move       $a3,$s3
    ld         $a2,40($sp)
    jal        kona_mem_reserve
    move       $a4,$s0
    ld         $s2,48($sp)
    beqz       $v0, .L00002534
    ld         $s4,40($sp)
    ld         $t1,40($s0)
    lbu        $t0,0($t1)
    addiu      $t0,$t0,1
    sb         $t0,0($t1)
    li         $a7,1
    b          .L00002534
    sb         $a7,2($s0)

glabel kona_mem_free
    ld         $v0,112($a1)
    daddiu     $sp,$sp,-64
    sd         $s2,8($sp)
    lbu        $s2,1($a2)
    sd         $v0,0($sp)
    sd         $s3,16($sp)
    lbu        $s3,0($a2)
    sd         $s1,32($sp)
    ld         $s1,40($a0)
    slti       $at,$s3,4
    sd         $s4,24($sp)
    move       $s4,$a0
    bnez       $at, .L000026cc
    sd         $ra,40($sp)
    li         $v0,22
.L000026b0:
    ld         $s2,8($sp)
    ld         $ra,40($sp)
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000026cc:
    jal        RRM_CheckValidFault
    ld         $a0,64($a1)
    beqz       $v0, .L000026e4
    nop
    b          .L000026b0
    li         $v0,14
.L000026e4:
    ld         $a0,40($s4)
    lw         $v1,80($a0)
    ld         $v0,0($sp)
    addiu      $v1,$v1,1
    sw         $v1,80($a0)
    ld         $v0,240($v0)
    beqz       $v0, .L00002894
    dsll       $a1,$s3,0x4
    daddu      $a0,$v0,$a1
    sd         $s0,48($sp)
    daddiu     $a0,$a0,8
.L00002710:
    ld         $v0,0($sp)
    daddu      $v0,$a1,$v0
    ld         $s0,152($v0)
    beqz       $s0, .L00002750
    daddiu     $v0,$v0,152
    b          .L00002740
    lbu        $v1,0($s0)
.L0000272c:
    daddiu     $v0,$s0,64
    ld         $s0,64($s0)
    beqz       $s0, .L00002750
    nop
    lbu        $v1,0($s0)
.L00002740:
    bne        $v1, $s2, .L0000272c
    nop
    bnez       $s0, .L000027a4
    nop
.L00002750:
    beqz       $a0, .L000027a4
    nop
    ld         $s0,8($a0)
    beqz       $s0, .L000027a4
    daddiu     $v0,$a0,8
    b          .L00002780
    lbu        $a0,0($s0)
.L0000276c:
    daddiu     $v0,$s0,64
    ld         $s0,64($s0)
    beqz       $s0, .L000027a4
    nop
    lbu        $a0,0($s0)
.L00002780:
    beq        $a0, $s2, .L000027a4
    nop
    daddiu     $v0,$s0,64
    ld         $s0,64($s0)
    beqz       $s0, .L000027a4
    nop
    lbu        $a1,0($s0)
    bne        $a1, $s2, .L0000276c
    nop
.L000027a4:
    beqz       $s0, .L000028a0
    move       $s2,$s0
    dsll       $a7,$s3,0x2
    ld         $t0,64($s0)
    sd         $t0,0($v0)
    lw         $a4,8($s0)
    ld         $a3,40($s0)
    sd         $zero,64($s0)
    dsubu      $a7,$a7,$s3
    lw         $a2,4($a3)
    dsll       $a7,$a7,0x3
    daddu      $a7,$s1,$a7
    subu       $a2,$a2,$a4
    sw         $a2,4($a3)
    ld         $s0,4992($a7)
    beqz       $s0, .L00002818
    daddiu     $v0,$a7,4992
.L000027e8:
    beq        $s2, $s0, .L00002818
    nop
    daddiu     $v0,$s0,48
    ld         $s0,48($s0)
    beqz       $s0, .L00002818
    nop
    beq        $s2, $s0, .L00002818
    nop
    daddiu     $v0,$s0,48
    ld         $s0,48($s0)
    bnez       $s0, .L000027e8
    nop
.L00002818:
    ld         $t3,48($s0)
    sd         $t3,0($v0)
    lw         $t2,8($s0)
    sd         $zero,48($s0)
    lw         $t1,4984($a7)
    move       $a0,$s1
    move       $a1,$s3
    move       $a3,$zero
    subu       $t1,$t1,$t2
    sw         $t1,4984($a7)
    move       $a4,$zero
    jal        kona_mem_reserve_func
    lbu        $a2,0($s0)
    lw         $t8,2172($s1)
    beqz       $t8, .L000028bc
    li         $a1,25
.L00002858:
    jal        psema
    daddiu     $a0,$s0,72
    ld         $s0,48($sp)
    jal        kona_mem_cleanup
    move       $a0,$s1
    jal        freesema
    daddiu     $a0,$s2,72
    jal        kern_free
    move       $a0,$s2
    ld         $ra,40($s4)
    lw         $t9,80($ra)
    move       $v0,$zero
    addiu      $t9,$t9,-1
    b          .L000026b0
    sw         $t9,80($ra)
.L00002894:
    move       $a0,$zero
    b          .L00002710
    sd         $s0,48($sp)
.L000028a0:
    ld         $at,40($s4)
    lw         $ra,80($at)
    ld         $s0,48($sp)
    li         $v0,2
    addiu      $ra,$ra,-1
    b          .L000026b0
    sw         $ra,80($at)
.L000028bc:
    li         $a1,370
    jal        gfx_pio_write_32
    ld         $a0,2304($s1)
    ld         $a0,2304($s1)
    jal        gfx_pio_write_32
    move       $a1,$zero
    b          .L00002858
    li         $a1,25
