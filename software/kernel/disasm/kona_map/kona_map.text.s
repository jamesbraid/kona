.section .text
.set noat
.set noreorder


glabel KONAmapgfx
    daddiu     $sp,$sp,-96
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $s4,80($sp)
    sd         $s6,72($sp)
    sd         $s0,24($sp)
    sd         $s2,48($sp)
    sd         $s3,40($sp)
    ld         $s3,48($a0)
    move       $s2,$a0
    ld         $s0,40($a0)
    sd         $ra,32($sp)
    jal        ddv_getaddr
    move       $a0,$s3
    lw         $at,0($gp)
    move       $s4,$v0
    sd         $s1,64($sp)
    li         $s6,-1
    beqz       $at, .L00000298
    sd         $s5,56($sp)
    lw         $v0,0($gp)
    bnez       $v0, .L00000068
    li         $s1,1000
    li         $v1,1
    b          .L00000350
    sw         $v1,0($gp)
.L00000068:
    lw         $a0,2280($s0)
.L0000006c:
    beqz       $a0, .L000000e4
    nop
    jal        curthreadhandle
    nop
    jal        gthread_find_gfxp
    move       $a0,$v0
    bnez       $v0, .L000000a0
    move       $s1,$v0
    b          .L000000e8
    lw         $a3,2284($s0)
.L00000094:
    ld         $s1,24($s1)
    beqz       $s1, .L000000e4
    nop
.L000000a0:
    beq        $s2, $s1, .L00000094
    nop
    jal        splhi
    nop
    lw         $a1,4($s1)
    andi       $a1,$a1,0x1
    beqz       $a1, .L000000d0
    move       $s5,$v0
    ld         $a2,32($s1)
    ld         $a2,104($a2)
    jalr       $a2
    move       $a0,$s1
.L000000d0:
    jal        splx
    move       $a0,$s5
    ld         $s1,24($s1)
    bnez       $s1, .L000000a0
    nop
.L000000e4:
    lw         $a3,2284($s0)
.L000000e8:
    beqz       $a3, .L000002a0
    nop
    ld         $a2,2376($s0)
    lui        $a3,0xc1
    daddu      $a2,$a2,$a3
.L000000fc:
    move       $a0,$s3
    ld         $s5,8($sp)
    move       $a1,$s4
    li         $t8,-16384
    li         $a3,1
    and        $s5,$s5,$t8
    lw         $a4,2292($s0)
    jal        v_mapkvsegment
    move       $a5,$s5
    lw         $a5,4($s2)
    move       $a0,$s3
    daddiu     $a1,$s4,16384
    ld         $a2,2376($s0)
    lui        $a4,0x1
    andi       $a5,$a5,0x4
    li         $a3,1
    movn       $a4,$zero,$a5
    lui        $a5,0x80
    daddu      $a2,$a2,$a4
    li         $a4,16
    daddu      $a2,$a2,$a5
    sd         $v0,0($sp)
    jal        v_mapkvsegment
    move       $a5,$s5
    lw         $t8,4($s2)
    ld         $s1,0($sp)
    sltiu      $t9,$s5,1
    andi       $t8,$t8,0x4
    or         $s1,$s1,$t9
    beqz       $t8, .L0000019c
    or         $s1,$v0,$s1
    move       $a0,$s3
    li         $a3,128
    li         $a4,16
    move       $a5,$s5
    li         $a1,0xc000
    ld         $a2,2376($s0)
    jal        v_mapkvsegment
    daddu      $a1,$s4,$a1
    or         $s1,$v0,$s1
.L0000019c:
    ld         $v0,40($s2)
    ld         $v0,8($v0)
    beqz       $v0, .L000001e4
    ld         $a2,16($sp)
    ld         $a0,112($v0)
    beqz       $a0, .L000001e4
    ld         $a2,16($sp)
    ld         $a2,0($a0)
    beqz       $a2, .L000001e0
    move       $a0,$s3
    li         $a3,1
    li         $a4,40
    move       $a5,$s5
    li         $a1,0x8000
    jal        v_mapkvsegment
    daddu      $a1,$s4,$a1
    or         $s1,$v0,$s1
.L000001e0:
    ld         $a2,16($sp)
.L000001e4:
    bne        $a2, $s6, .L0000032c
    li         $a1,1
.L000001ec:
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    jal        splhi
    nop
    lw         $a3,4($s2)
    ori        $a3,$a3,0x1
    sw         $a3,4($s2)
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000002c4
    nop
    sw         $zero,2360($s0)
.L00000220:
    jal        splx
    move       $a0,$s3
    ld         $a0,2376($s0)
    lui        $a2,0xc0
    ori        $a2,$a2,0x108
    lw         $a1,2360($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    move       $v0,$s6
    movn       $v0,$zero,$s1
.L00000248:
    ld         $s4,80($sp)
    ld         $s6,72($sp)
    ld         $s1,64($sp)
    ld         $s5,56($sp)
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    ld         $s2,48($sp)
    ld         $s3,40($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000270:
    beq        $s1, $s6, .L000002a8
    ld         $a2,-30720($gp)
    jal        us_delay
    li         $a0,10
    lw         $a3,0($gp)
.L00000284:
    addiu      $s1,$s1,-1
    bnez       $a3, .L00000270
    nop
    b          .L0000006c
    lw         $a0,2280($s0)
.L00000298:
    b          .L0000006c
    lw         $a0,2280($s0)
.L000002a0:
    b          .L000000fc
    ld         $a2,2304($s0)
.L000002a8:
    li         $a1,4
    li         $a0,2110
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a2,144
    b          .L00000248
    li         $v0,-1
.L000002c4:
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
    move       $a0,$s2
    b          .L00000220
    sw         $zero,2360($s0)
.L0000032c:
    ld         $a1,-30720($gp)
    li         $a0,4
    daddiu     $a2,$a1,144
    daddiu     $a1,$a1,64
    lw         $a3,2184($s0)
    jal        cmn_err
    move       $a4,$a2
    b          .L000001ec
    li         $a1,1
.L00000350:
    lw         $a3,0($gp)
    b          .L00000284
    nop

glabel KONAunmapgfx
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    ld         $s0,40($a0)
    ld         $at,72($s0)
    lw         $v0,4($a0)
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $ra,24($sp)
    bne        $at, $a0, .L000003dc
    andi       $v1,$v0,0x1
    beqz       $v1, .L000003dc
    nop
    jal        gfx_flow_am_i_attached
    ld         $a0,2272($s0)
    beqz       $v0, .L000003d8
    li         $a1,1
    jal        gfx_flow_flush_my_wg
    ld         $a0,2272($s0)
    lw         $a0,2344($s0)
    beqz       $a0, .L0000042c
    nop
.L000003b0:
    ld         $a0,2376($s0)
.L000003b4:
    li         $a1,1
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,124
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,124
    ld         $a0,2272($s0)
    jal        gfx_flow_detach_me
    move       $a1,$s1
.L000003d8:
    lw         $v0,4($s1)
.L000003dc:
    ld         $a0,48($s1)
    sd         $zero,112($s1)
    sd         $zero,104($s1)
    li         $a1,-2
    and        $a1,$v0,$a1
    beqz       $a0, .L00000408
    sw         $a1,4($s1)
    move       $a1,$zero
    jal        ddv_invalphys_fal
    li         $a2,-1
    beqz       $v0, .L0000041c
.L00000408:
    ld         $ra,24($sp)
.L0000040c:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000041c:
    jal        KONAinvaltlb
    move       $a0,$s1
    b          .L0000040c
    ld         $ra,24($sp)
.L0000042c:
    jal        gfx_flow_credit_count_get
    ld         $a0,2272($s0)
    sd         $v0,0($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,2272($s0)
    ld         $a2,0($sp)
    sltu       $a2,$a2,$v0
    beqz       $a2, .L000003b0
    nop
    jal        kona_flow_await_returned_credits
    move       $a0,$s0
    b          .L000003b4
    ld         $a0,2376($s0)

glabel KONAinvaltlb
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    move       $a1,$zero
    li         $a2,-1
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        ddv_invaltlb
    ld         $a0,48($a0)
    lh         $a0,-15328($zero)
    sra        $v0,$a0,0x6
    dsll       $v0,$v0,0x3
    ld         $ra,0($sp)
    daddu      $v0,$s8,$v0
    li         $v1,1
    ld         $at,104($v0)
    dsllv      $v1,$v1,$a0
    ld         $s8,8($sp)
    daddiu     $sp,$sp,16
    or         $at,$at,$v1
    jr         $ra
    sd         $at,104($v0)
