.section .text
.set noat
.set noreorder


glabel KONAsuspend
    daddiu     $sp,$sp,-64
    sd         $a2,32($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    sd         $s1,48($sp)
    move       $s1,$a1
    bnez       $a0, .L00000028
    sd         $ra,56($sp)
    b          .L000000c8
    move       $v0,$zero
.L00000028:
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($a0)
    jal        splhi
    nop
    ld         $at,72($s0)
    bne        $at, $s1, .L000000a4
    sd         $v0,24($sp)
    lw         $a0,4($s1)
    andi       $a0,$a0,0x3
    beqz       $a0, .L000000a4
    ld         $a1,32($sp)
    ld         $a0,2272($s0)
    beqz       $a1, .L000000e0
    sd         $v0,16($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000000a4
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    ld         $a0,2376($s0)
    li         $a1,1
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,124
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,124
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    move       $a1,$s1
.L000000a4:
    jal        splx
    ld         $a0,24($sp)
    ld         $a1,32($sp)
    bnez       $a1, .L000000c4
    ld         $ra,56($sp)
    lw         $a2,104($s0)
    beqz       $a2, .L000000d8
.L000000c0:
    ld         $ra,56($sp)
.L000000c4:
    move       $v0,$zero
.L000000c8:
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000000d8:
    b          .L000000c0
    sw         $zero,120($s0)
.L000000e0:
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000000a4
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    lw         $a3,2344($s0)
    beqz       $a3, .L00000134
    nop
.L00000104:
    ld         $a0,2376($s0)
.L00000108:
    li         $a1,1
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,124
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,124
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    move       $a1,$s1
    b          .L000000a4
    nop
.L00000134:
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    sd         $v0,8($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,2272($s0)
    ld         $a1,8($sp)
    sltu       $a1,$a1,$v0
    beqz       $a1, .L00000104
    nop
    jal        rt_pin_thread
    nop
    sd         $v0,0($sp)
    jal        splx
    ld         $a0,16($sp)
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,24($sp)
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00000108
    ld         $a0,2376($s0)

glabel KONAresume
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s1,24($sp)
    move       $s1,$a1
    beqz       $a2, .L00000244
    sd         $ra,32($sp)
.L000001ac:
    jal        splhi
    nop
    lw         $a1,2172($s0)
    sd         $v0,8($sp)
    beqz       $a1, .L000001dc
    li         $a4,1
    beq        $a1, $a4, .L000001dc
    nop
    lw         $at,4($s1)
    andi       $at,$at,0x4
    beqz       $at, .L00000224
    nop
.L000001dc:
    ld         $v0,72($s0)
    bne        $v0, $s1, .L00000224
    nop
    lw         $v1,4($s1)
    andi       $v1,$v1,0x3
    beqz       $v1, .L00000224
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L00000260
    nop
.L0000021c:
    jal        splx
    move       $a0,$s1
.L00000224:
    jal        splx
    ld         $a0,8($sp)
    ld         $ra,32($sp)
    move       $v0,$zero
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000244:
    lw         $a0,120($a0)
    beqz       $a0, .L000001ac
    nop
    jal        force_resched
    sw         $zero,120($s0)
    b          .L000001ac
    nop
.L00000260:
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
    b          .L0000021c
    nop
