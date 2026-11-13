.section .text
.set noat
.set noreorder


glabel kona_init
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    jal        kona_debug_init
    nop
    ld         $a0,-30720($gp)
    jal        psema
    li         $a1,25
    lw         $at,0($gp)
    blez       $at, .L0000007c
    sd         $s0,16($sp)
    move       $s0,$zero
    move       $a0,$s0
.L00000030:
    daddiu     $a1,$sp,0
    jal        find_konapipe
    daddiu     $a2,$sp,2
    beqz       $v0, .L0000006c
    lw         $a0,0($gp)
    bltz       $v0, .L0000007c
    nop
    jal        kona_alloc_bdata
    nop
    beqz       $v0, .L000000ac
    lbu        $a3,2($sp)
    sb         $a3,2208($v0)
    lh         $v1,0($sp)
    sh         $v1,2210($v0)
    lw         $a0,0($gp)
.L0000006c:
    addiu      $s0,$s0,1
    slt        $a0,$s0,$a0
    bnez       $a0, .L00000030
    move       $a0,$s0
.L0000007c:
    jal        vsema
    ld         $a0,-30720($gp)
    li         $a0,0xc102
    ld         $a2,-30712($gp)
    li         $a1,682
    move       $a3,$zero
    ld         $s0,16($sp)
    jal        xwidget_driver_register
    daddiu     $a2,$a2,56
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000000ac:
    ld         $a1,-30712($gp)
    li         $a0,4
    move       $a3,$s0
    jal        cmn_err
    daddiu     $a2,$a1,48
    b          .L0000007c
    nop

glabel kona_intr_set
    jr         $ra
    move       $v0,$zero

glabel kona_report_errs
    daddiu     $sp,$sp,-48
    sd         $s1,8($sp)
    move       $s1,$a0
    ld         $a0,2376($a0)
    sd         $s0,32($sp)
    sd         $ra,16($sp)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,108
    andi       $a1,$v0,0x1
    move       $s0,$v0
    bnez       $a1, .L0000021c
    sd         $s2,24($sp)
    sll        $a2,$s0,0x1e
.L00000104:
    bltz       $a2, .L0000023c
    ld         $s2,-30712($gp)
    sll        $a3,$s0,0x1d
.L00000110:
    bltz       $a3, .L00000258
    sll        $a4,$s0,0x1c
.L00000118:
    bltz       $a4, .L00000278
    ld         $a2,-30712($gp)
    sll        $a5,$s0,0x1b
.L00000124:
    bltz       $a5, .L00000294
    ld         $a2,-30712($gp)
    sll        $a6,$s0,0x1a
.L00000130:
    bltz       $a6, .L000002b0
    ld         $a2,-30712($gp)
    sll        $a7,$s0,0x19
.L0000013c:
    bltz       $a7, .L000002cc
    sll        $t0,$s0,0x18
.L00000144:
    bltz       $t0, .L000002ec
    sll        $t1,$s0,0x17
.L0000014c:
    bltz       $t1, .L0000030c
    sll        $t2,$s0,0x16
.L00000154:
    bltz       $t2, .L0000032c
    sll        $t3,$s0,0x15
.L0000015c:
    bltz       $t3, .L0000034c
    sll        $t8,$s0,0x14
.L00000164:
    bltz       $t8, .L0000036c
    sll        $t9,$s0,0x13
.L0000016c:
    bltz       $t9, .L0000038c
    sll        $ra,$s0,0x12
.L00000174:
    bltz       $ra, .L000003ac
    sll        $at,$s0,0x11
.L0000017c:
    bltz       $at, .L000003cc
    sll        $v0,$s0,0x10
.L00000184:
    bltz       $v0, .L000003ec
    sll        $v1,$s0,0xf
.L0000018c:
    bltz       $v1, .L0000040c
    sll        $a0,$s0,0xe
.L00000194:
    bltz       $a0, .L0000042c
    sll        $a1,$s0,0xd
.L0000019c:
    bltz       $a1, .L0000044c
    sll        $a2,$s0,0xc
.L000001a4:
    bltz       $a2, .L0000046c
    sll        $a3,$s0,0xb
.L000001ac:
    bltz       $a3, .L0000048c
    sll        $a4,$s0,0xa
.L000001b4:
    bltz       $a4, .L000004ac
    sll        $a5,$s0,0x9
.L000001bc:
    bltz       $a5, .L000004cc
    sd         $a5,0($sp)
    sll        $a6,$s0,0x8
.L000001c8:
    bltz       $a6, .L000004ec
    ld         $a7,0($sp)
.L000001d0:
    bltz       $a7, .L0000050c
    sll        $t0,$s0,0x6
.L000001d8:
    bltz       $t0, .L0000052c
    sll        $t1,$s0,0x5
.L000001e0:
    bltz       $t1, .L0000054c
    sll        $t2,$s0,0x4
.L000001e8:
    bltz       $t2, .L0000056c
    sll        $t3,$s0,0x3
.L000001f0:
    bltz       $t3, .L0000058c
    sll        $t8,$s0,0x2
.L000001f8:
    bltz       $t8, .L000005ac
    sll        $t9,$s0,0x1
.L00000200:
    bltz       $t9, .L000005cc
    ld         $ra,16($sp)
.L00000208:
    ld         $s1,8($sp)
    ld         $s2,24($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000021c:
    ld         $a1,-30712($gp)
    li         $a0,4
    daddiu     $a2,$a1,48
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a1,$a1,64
    b          .L00000104
    sll        $a2,$s0,0x1e
.L0000023c:
    daddiu     $a2,$s2,48
    daddiu     $a1,$s2,96
    lw         $a3,2184($s1)
    jal        cmn_err
    li         $a0,4
    b          .L00000110
    sll        $a3,$s0,0x1d
.L00000258:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,152
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000118
    sll        $a4,$s0,0x1c
.L00000278:
    daddiu     $a1,$s2,208
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000124
    sll        $a5,$s0,0x1b
.L00000294:
    daddiu     $a1,$s2,248
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000130
    sll        $a6,$s0,0x1a
.L000002b0:
    daddiu     $a1,$s2,288
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000013c
    sll        $a7,$s0,0x19
.L000002cc:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,328
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000144
    sll        $t0,$s0,0x18
.L000002ec:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,360
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000014c
    sll        $t1,$s0,0x17
.L0000030c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,400
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000154
    sll        $t2,$s0,0x16
.L0000032c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,448
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000015c
    sll        $t3,$s0,0x15
.L0000034c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,480
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000164
    sll        $t8,$s0,0x14
.L0000036c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,512
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000016c
    sll        $t9,$s0,0x13
.L0000038c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,552
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000174
    sll        $ra,$s0,0x12
.L000003ac:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,584
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000017c
    sll        $at,$s0,0x11
.L000003cc:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,624
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000184
    sll        $v0,$s0,0x10
.L000003ec:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,672
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000018c
    sll        $v1,$s0,0xf
.L0000040c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,712
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000194
    sll        $a0,$s0,0xe
.L0000042c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,752
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L0000019c
    sll        $a1,$s0,0xd
.L0000044c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,800
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001a4
    sll        $a2,$s0,0xc
.L0000046c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,848
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001ac
    sll        $a3,$s0,0xb
.L0000048c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,896
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001b4
    sll        $a4,$s0,0xa
.L000004ac:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,952
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001bc
    sll        $a5,$s0,0x9
.L000004cc:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1008
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001c8
    sll        $a6,$s0,0x8
.L000004ec:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1064
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001d0
    ld         $a7,0($sp)
.L0000050c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1120
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001d8
    sll        $t0,$s0,0x6
.L0000052c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1176
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001e0
    sll        $t1,$s0,0x5
.L0000054c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1216
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001e8
    sll        $t2,$s0,0x4
.L0000056c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1256
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001f0
    sll        $t3,$s0,0x3
.L0000058c:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1296
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L000001f8
    sll        $t8,$s0,0x2
.L000005ac:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1344
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000200
    sll        $t9,$s0,0x1
.L000005cc:
    ld         $a2,-30712($gp)
    daddiu     $a1,$s2,1384
    li         $a0,4
    lw         $a3,2184($s1)
    jal        cmn_err
    daddiu     $a2,$a2,48
    b          .L00000208
    ld         $ra,16($sp)

glabel nic_xg_vertex_info
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    move       $a2,$a0
    jal        nic_vertex_info_set
    ld         $a0,-30704($gp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel hexstrtol
    lbu        $a5,0($a0)
    ld         $t0,-30712($gp)
    beqz       $a5, .L00000684
    lbu        $a6,1432($t0)
    move       $v0,$zero
    b          .L00000694
    daddiu     $a7,$t0,1432
.L00000628:
    lbu        $a4,1($a3)
    beqz       $a4, .L0000068c
    daddiu     $a3,$a3,1
    bne        $a5, $a4, .L00000628
    nop
.L0000063c:
    beqz       $a4, .L0000068c
    nop
    lbu        $a5,1($a0)
    daddiu     $a0,$a0,1
    dsubu      $v1,$a3,$a7
    daddiu     $a7,$t0,1432
    dsll       $v0,$v0,0x4
    beqz       $a5, .L0000068c
    daddu      $v0,$v0,$v1
.L00000660:
    beqz       $a6, .L0000067c
    move       $a4,$a6
    bne        $a5, $a6, .L00000628
    daddiu     $a3,$t0,1432
    daddiu     $a3,$t0,1432
    b          .L0000063c
    move       $a4,$a6
.L0000067c:
    b          .L0000063c
    move       $a3,$a7
.L00000684:
    jr         $ra
    move       $v0,$zero
.L0000068c:
    jr         $ra
    nop
.L00000694:
    b          .L00000660
    nop

glabel kona_extract_nic_info
    daddiu     $sp,$sp,-160
    sd         $s5,104($sp)
    sd         $s1,96($sp)
    sd         $s8,88($sp)
    sd         $s7,80($sp)
    sd         $s2,72($sp)
    sd         $ra,64($sp)
    sd         $s4,56($sp)
    sd         $s3,48($sp)
    sd         $s0,112($sp)
    move       $s0,$a1
    beqz       $a1, .L00000dd8
    sd         $s6,40($sp)
    lbu        $a3,0($a1)
    beqz       $a3, .L00000dd8
    li         $s5,32
    daddiu     $v0,$a0,1928
    sd         $v0,32($sp)
    li         $s1,59
    li         $s2,58
    ld         $s3,0($sp)
    daddiu     $at,$a0,1168
    b          .L00000738
    sd         $at,24($sp)
.L000006fc:
    move       $a0,$s6
    li         $a2,2
    jal        strncmp
    daddiu     $a1,$a1,1552
    beqz       $v0, .L00000e74
    li         $a2,1
    sd         $a2,16($sp)
.L00000718:
    ld         $a3,16($sp)
    beqz       $a3, .L00000874
    nop
.L00000724:
    beqz       $s0, .L00000dd8
    nop
    lbu        $a3,0($s0)
    beqz       $a3, .L00000dd8
    nop
.L00000738:
    beqz       $a3, .L00000724
    move       $a0,$zero
    move       $s8,$zero
    sd         $zero,152($sp)
    sd         $zero,128($sp)
    sd         $zero,144($sp)
    sd         $zero,120($sp)
    move       $s6,$zero
    sd         $zero,136($sp)
    move       $s7,$zero
    b          .L00000790
    sd         $zero,16($sp)
.L00000768:
    ld         $a1,-30712($gp)
.L0000076c:
    move       $a0,$s4
    li         $a2,6
    jal        strncmp
    daddiu     $a1,$a1,1504
    beqz       $v0, .L00000850
    nop
    lbu        $a3,0($s0)
.L00000788:
    beqz       $a3, .L00000850
    nop
.L00000790:
    beqz       $a3, .L000007c4
    move       $s4,$s0
    beq        $s2, $a3, .L000007e0
    ld         $a1,-30712($gp)
    beq        $s1, $a3, .L000007c4
    nop
.L000007a8:
    lbu        $a3,1($s0)
    beqz       $a3, .L000007c4
    daddiu     $s0,$s0,1
    beq        $s2, $a3, .L000007e0
    ld         $a1,-30712($gp)
    bne        $s1, $a3, .L000007a8
    nop
.L000007c4:
    beq        $s2, $a3, .L000007e0
    ld         $a1,-30712($gp)
    bne        $s1, $a3, .L0000076c
    ld         $a1,-30712($gp)
    b          .L00000768
    daddiu     $s0,$s0,1
    ld         $a1,-30712($gp)
.L000007e0:
    move       $a0,$s4
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,1512
    bnez       $v0, .L00000d98
    ld         $a1,-30712($gp)
    daddiu     $s7,$s0,1
.L000007fc:
    daddiu     $s0,$s0,1
    lbu        $a3,0($s0)
    beqz       $a3, .L00000838
    ld         $a1,-30712($gp)
    beq        $s1, $a3, .L00000828
    nop
.L00000814:
    lbu        $a3,1($s0)
    beqz       $a3, .L00000834
    daddiu     $s0,$s0,1
    bne        $s1, $a3, .L00000814
    nop
.L00000828:
    beqz       $a3, .L00000838
    ld         $a1,-30712($gp)
    daddiu     $s0,$s0,1
.L00000834:
    ld         $a1,-30712($gp)
.L00000838:
    move       $a0,$s4
    li         $a2,6
    jal        strncmp
    daddiu     $a1,$a1,1504
    bnezl      $v0, .L00000788
    lbu        $a3,0($s0)
.L00000850:
    beqz       $s6, .L00000724
    ld         $a1,-30712($gp)
    move       $a0,$s6
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,1544
    bnez       $v0, .L000006fc
    ld         $a1,-30712($gp)
    ld         $s3,32($sp)
.L00000874:
    lbu        $a3,0($s6)
    beqz       $a3, .L00000e7c
    li         $a1,14
    beq        $s1, $a3, .L00000ec8
    li         $a1,14
    move       $a3,$zero
    addiu      $a3,$a3,1
.L00000890:
    addiu      $a1,$a1,-1
    blez       $a1, .L00000900
    li         $a5,10
    daddu      $a4,$a3,$s6
    lbu        $a4,0($a4)
    beqz       $a4, .L000008b4
    nop
    bne        $s1, $a4, .L00000890
    addiu      $a3,$a3,1
.L000008b4:
    blez       $a1, .L00000900
    li         $a5,10
    move       $a3,$zero
.L000008c0:
    daddu      $a6,$a3,$s3
    addiu      $a3,$a3,1
    slt        $a5,$a3,$a1
    sb         $s5,60($a6)
    beqz       $a5, .L000008fc
    daddu      $t0,$a3,$s3
    addiu      $a3,$a3,1
    slt        $a7,$a3,$a1
    sb         $s5,60($t0)
    beqz       $a7, .L000008fc
    daddu      $t1,$a3,$s3
    addiu      $a3,$a3,1
    slt        $t2,$a3,$a1
    bnez       $t2, .L000008c0
    sb         $s5,60($t1)
.L000008fc:
    li         $a5,10
.L00000900:
    li         $a3,19
    li         $a4,4
    slti       $t0,$a1,14
    move       $a6,$zero
    li         $a7,13
    beqz       $t0, .L00000964
    subu       $a7,$a7,$a1
.L0000091c:
    daddu      $t8,$a6,$s6
    lbu        $t2,0($t8)
    addiu      $a6,$a6,1
    slt        $t1,$a7,$a6
    daddu      $t3,$a1,$s3
    pref       0x0,256($t8)
    addiu      $a1,$a1,1
    sb         $t2,60($t3)
    bnez       $t1, .L00000964
    daddu      $v0,$a6,$s6
    lbu        $t9,0($v0)
    addiu      $a6,$a6,1
    slt        $at,$a7,$a6
    daddu      $ra,$a1,$s3
    pref       0x0,256($v0)
    addiu      $a1,$a1,1
    beqz       $at, .L0000091c
    sb         $t9,60($ra)
.L00000964:
    beqz       $s8, .L00000a4c
    move       $a1,$zero
    lbu        $a6,0($s8)
    beqz       $a6, .L000009b0
    nop
    beq        $s1, $a6, .L000009b0
    nop
    addiu      $a1,$a1,1
.L00000984:
    addiu      $a5,$a5,-1
    blez       $a5, .L000009f4
    slti       $a7,$a5,10
    daddu      $a6,$a1,$s8
    lbu        $a6,0($a6)
    beqz       $a6, .L000009a8
    nop
    bne        $s1, $a6, .L00000984
    addiu      $a1,$a1,1
.L000009a8:
    blez       $a5, .L000009f4
    slti       $a7,$a5,10
.L000009b0:
    move       $a1,$zero
.L000009b4:
    daddu      $t0,$a1,$s3
    addiu      $a1,$a1,1
    slt        $a7,$a1,$a5
    sb         $s5,13($t0)
    beqz       $a7, .L000009f0
    daddu      $t2,$a1,$s3
    addiu      $a1,$a1,1
    slt        $t1,$a1,$a5
    sb         $s5,13($t2)
    beqz       $t1, .L000009f0
    daddu      $t3,$a1,$s3
    addiu      $a1,$a1,1
    slt        $t8,$a1,$a5
    bnez       $t8, .L000009b4
    sb         $s5,13($t3)
.L000009f0:
    slti       $a7,$a5,10
.L000009f4:
    move       $a1,$zero
    li         $a6,9
    beqz       $a7, .L00000a4c
    subu       $a6,$a6,$a5
.L00000a04:
    daddu      $t3,$a1,$s8
    lbu        $t1,0($t3)
    addiu      $a1,$a1,1
    slt        $t0,$a6,$a1
    daddu      $t2,$a5,$s3
    pref       0x0,256($t3)
    addiu      $a5,$a5,1
    sb         $t1,13($t2)
    bnez       $t0, .L00000a4c
    daddu      $at,$a1,$s8
    lbu        $t8,0($at)
    addiu      $a1,$a1,1
    slt        $ra,$a6,$a1
    daddu      $t9,$a5,$s3
    pref       0x0,256($at)
    addiu      $a5,$a5,1
    beqz       $ra, .L00000a04
    sb         $t8,13($t9)
.L00000a4c:
    beqz       $s7, .L00000b34
    ld         $at,152($sp)
    lbu        $a5,0($s7)
    beqz       $a5, .L00000a98
    move       $a1,$zero
    beq        $s1, $a5, .L00000a98
    nop
    addiu      $a1,$a1,1
.L00000a6c:
    addiu      $a3,$a3,-1
    blez       $a3, .L00000adc
    slti       $a6,$a3,19
    daddu      $a5,$a1,$s7
    lbu        $a5,0($a5)
    beqz       $a5, .L00000a90
    nop
    bne        $s1, $a5, .L00000a6c
    addiu      $a1,$a1,1
.L00000a90:
    blez       $a3, .L00000adc
    slti       $a6,$a3,19
.L00000a98:
    move       $a1,$zero
.L00000a9c:
    daddu      $a7,$a1,$s3
    addiu      $a1,$a1,1
    slt        $a6,$a1,$a3
    sb         $s5,23($a7)
    beqz       $a6, .L00000ad8
    daddu      $t1,$a1,$s3
    addiu      $a1,$a1,1
    slt        $t0,$a1,$a3
    sb         $s5,23($t1)
    beqz       $t0, .L00000ad8
    daddu      $t2,$a1,$s3
    addiu      $a1,$a1,1
    slt        $t3,$a1,$a3
    bnez       $t3, .L00000a9c
    sb         $s5,23($t2)
.L00000ad8:
    slti       $a6,$a3,19
.L00000adc:
    move       $a1,$zero
    li         $a5,18
    beqz       $a6, .L00000b34
    subu       $a5,$a5,$a3
.L00000aec:
    daddu      $t2,$a1,$s7
    lbu        $t0,0($t2)
    addiu      $a1,$a1,1
    slt        $a7,$a5,$a1
    daddu      $t1,$a3,$s3
    pref       0x0,256($t2)
    addiu      $a3,$a3,1
    sb         $t0,23($t1)
    bnez       $a7, .L00000b34
    daddu      $ra,$a1,$s7
    lbu        $t3,0($ra)
    addiu      $a1,$a1,1
    slt        $t9,$a5,$a1
    daddu      $t8,$a3,$s3
    pref       0x0,256($ra)
    addiu      $a3,$a3,1
    beqz       $t9, .L00000aec
    sb         $t3,23($t8)
.L00000b34:
    ld         $ra,128($sp)
    beqz       $at, .L00000c28
    move       $a1,$zero
    lbu        $a3,0($at)
    beqz       $a3, .L00000b84
    nop
    beq        $s1, $a3, .L00000b84
    nop
    addiu      $a1,$a1,1
.L00000b58:
    addiu      $a4,$a4,-1
    blez       $a4, .L00000bc4
    ld         $a3,152($sp)
    daddu      $a3,$a1,$a3
    lbu        $a3,0($a3)
    beqz       $a3, .L00000b7c
    nop
    bne        $s1, $a3, .L00000b58
    addiu      $a1,$a1,1
.L00000b7c:
    blez       $a4, .L00000bc8
    slti       $a5,$a4,4
.L00000b84:
    move       $a1,$zero
.L00000b88:
    daddu      $a6,$a1,$s3
    addiu      $a1,$a1,1
    slt        $a5,$a1,$a4
    sb         $s5,50($a6)
    beqz       $a5, .L00000bc4
    daddu      $t0,$a1,$s3
    addiu      $a1,$a1,1
    slt        $a7,$a1,$a4
    sb         $s5,50($t0)
    beqz       $a7, .L00000bc4
    daddu      $t1,$a1,$s3
    addiu      $a1,$a1,1
    slt        $t2,$a1,$a4
    bnez       $t2, .L00000b88
    sb         $s5,50($t1)
.L00000bc4:
    slti       $a5,$a4,4
.L00000bc8:
    move       $a1,$zero
    li         $a3,3
    beqz       $a5, .L00000c28
    subu       $a3,$a3,$a4
.L00000bd8:
    ld         $t1,152($sp)
    daddu      $t1,$a1,$t1
    lbu        $a7,0($t1)
    addiu      $a1,$a1,1
    ld         $t9,152($sp)
    slt        $a6,$a3,$a1
    daddu      $t0,$a4,$s3
    pref       0x0,256($t1)
    addiu      $a4,$a4,1
    bnez       $a6, .L00000c28
    sb         $a7,50($t0)
    daddu      $t9,$a1,$t9
    lbu        $t2,0($t9)
    addiu      $a1,$a1,1
    slt        $t8,$a3,$a1
    daddu      $t3,$a4,$s3
    pref       0x0,256($t9)
    addiu      $a4,$a4,1
    beqz       $t8, .L00000bd8
    sb         $t2,50($t3)
.L00000c28:
    beqz       $ra, .L00000c44
    ld         $at,144($sp)
    move       $a0,$ra
    jal        hexstrtol
    nop
    sb         $v0,54($s3)
    ld         $at,144($sp)
.L00000c44:
    move       $s4,$zero
    beqz       $at, .L00000cac
    move       $s6,$zero
    sb         $zero,8($sp)
    sb         $zero,9($sp)
    sb         $zero,10($sp)
.L00000c5c:
    ld         $a1,144($sp)
    daddu      $a1,$s4,$a1
    lbu        $a3,0($a1)
    beqz       $a3, .L00000cac
    sb         $a3,8($sp)
    beq        $s1, $a3, .L00000cac
    nop
    lbu        $a3,1($a1)
    beqz       $a3, .L00000cac
    sb         $a3,9($sp)
    beq        $s1, $a3, .L00000cac
    nop
    jal        hexstrtol
    daddiu     $a0,$sp,8
    daddu      $a2,$s6,$s3
    addiu      $s6,$s6,1
    slti       $a3,$s6,4
    addiu      $s4,$s4,2
    bnez       $a3, .L00000c5c
    sb         $v0,55($a2)
.L00000cac:
    ld         $a4,120($sp)
    beqz       $a4, .L00000cc8
    ld         $a5,136($sp)
    jal        hexstrtol
    move       $a0,$a4
    sb         $v0,59($s3)
    ld         $a5,136($sp)
.L00000cc8:
    beqz       $a5, .L00000d48
    move       $a0,$zero
    sb         $zero,11($sp)
    sb         $zero,12($sp)
    sb         $zero,13($sp)
    move       $s6,$zero
    move       $s4,$zero
.L00000ce4:
    ld         $a0,136($sp)
    daddu      $a0,$s4,$a0
    lbu        $a1,0($a0)
    beqz       $a1, .L00000d34
    sb         $a1,11($sp)
    beq        $s1, $a1, .L00000d38
    li         $a4,1
    lbu        $a1,1($a0)
    beqz       $a1, .L00000d34
    sb         $a1,12($sp)
    beq        $s1, $a1, .L00000d38
    li         $a4,1
    jal        hexstrtol
    daddiu     $a0,$sp,11
    daddu      $a1,$s6,$s3
    addiu      $s6,$s6,1
    slti       $a2,$s6,6
    addiu      $s4,$s4,2
    bnez       $a2, .L00000ce4
    sb         $v0,4($a1)
.L00000d34:
    li         $a4,1
.L00000d38:
    sb         $a4,11($s3)
    li         $a3,11
    sb         $a3,10($s3)
    move       $a0,$zero
.L00000d48:
    daddu      $a6,$a0,$s3
    addiu      $a0,$a0,1
    slti       $a5,$a0,6
    sb         $s5,44($a6)
    beqz       $a5, .L00000d84
    daddu      $t0,$a0,$s3
    addiu      $a0,$a0,1
    slti       $a7,$a0,6
    sb         $s5,44($t0)
    beqz       $a7, .L00000d84
    daddu      $t1,$a0,$s3
    addiu      $a0,$a0,1
    slti       $t2,$a0,6
    bnez       $t2, .L00000d48
    sb         $s5,44($t1)
.L00000d84:
    li         $t3,1
    sh         $zero,74($s3)
    sh         $zero,42($s3)
    b          .L00000724
    sb         $t3,12($s3)
.L00000d98:
    move       $a0,$s4
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,1520
    bnez       $v0, .L00000db8
    ld         $a1,-30712($gp)
    b          .L000007fc
    daddiu     $s6,$s0,1
.L00000db8:
    move       $a0,$s4
    li         $a2,7
    jal        strncmp
    daddiu     $a1,$a1,1528
    bnez       $v0, .L00000e08
    ld         $a1,-30712($gp)
    b          .L000007fc
    daddiu     $s8,$s0,1
.L00000dd8:
    ld         $s0,112($sp)
    ld         $s1,96($sp)
    ld         $s2,72($sp)
    ld         $s3,48($sp)
    ld         $s4,56($sp)
    ld         $s5,104($sp)
    ld         $ra,64($sp)
    ld         $s6,40($sp)
    ld         $s7,80($sp)
    ld         $s8,88($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L00000e08:
    move       $a0,$s4
    li         $a2,9
    jal        strncmp
    daddiu     $a1,$a1,1456
    bnez       $v0, .L00000e28
    daddiu     $a2,$s0,1
    b          .L000007fc
    sd         $a2,152($sp)
.L00000e28:
    ld         $a1,-30712($gp)
    move       $a0,$s4
    li         $a2,6
    jal        strncmp
    daddiu     $a1,$a1,1536
    bnez       $v0, .L00000e50
    ld         $a1,-30712($gp)
    daddiu     $a2,$s0,1
    b          .L000007fc
    sd         $a2,128($sp)
.L00000e50:
    move       $a0,$s4
    li         $a2,11
    jal        strncmp
    daddiu     $a1,$a1,1472
    bnez       $v0, .L00000e84
    ld         $a1,-30712($gp)
    daddiu     $a2,$s0,1
    b          .L000007fc
    sd         $a2,144($sp)
.L00000e74:
    b          .L00000718
    ld         $s3,24($sp)
.L00000e7c:
    b          .L000008c0
    move       $a3,$zero
.L00000e84:
    move       $a0,$s4
    li         $a2,8
    jal        strncmp
    daddiu     $a1,$a1,1488
    bnez       $v0, .L00000ea8
    ld         $a1,-30712($gp)
    daddiu     $a2,$s0,1
    b          .L000007fc
    sd         $a2,120($sp)
.L00000ea8:
    move       $a0,$s4
    li         $a2,6
    jal        strncmp
    daddiu     $a1,$a1,1504
    bnez       $v0, .L000007fc
    daddiu     $a2,$s0,1
    b          .L000007fc
    sd         $a2,136($sp)
.L00000ec8:
    li         $a1,14
    b          .L000008c0
    move       $a3,$zero

glabel kona_attach
    daddiu     $sp,$sp,-80
    sd         $ra,32($sp)
    li         $a1,25
    sd         $s2,24($sp)
    move       $s2,$a0
    jal        psema
    ld         $a0,-30720($gp)
    jal        xwidget_info_get
    move       $a0,$s2
    sd         $v0,16($sp)
    move       $a0,$v0
    jal        xwidget_info_id_get
    sd         $s4,40($sp)
    move       $s4,$v0
    jal        xwidget_info_master_get
    ld         $a0,16($sp)
    sd         $s3,48($sp)
    move       $a0,$v0
    jal        master_node_get
    sd         $s5,72($sp)
    ld         $s5,-30696($gp)
    daddu      $t8,$v0,$v0
    sd         $s1,56($sp)
    andi       $s3,$s4,0xff
    daddu      $s5,$s5,$t8
    lh         $s5,0($s5)
    sd         $s0,64($sp)
    beqz       $s3, .L000012c0
    dsll32     $a1,$s5,0x0
    dsll       $v0,$s3,0x18
    li         $v1,-55
    daddu      $v0,$a1,$v0
    dsll32     $v1,$v1,0x19
    daddu      $v0,$v0,$v1
.L00000f5c:
    lw         $v1,100($v0)
    andi       $v1,$v1,0x7
    bnez       $v1, .L0000125c
    lw         $a2,0($gp)
    blez       $a2, .L00001378
    move       $s1,$zero
    ld         $v0,0($gp)
.L00000f78:
    dsll       $s0,$s1,0x3
    daddu      $s0,$v0,$s0
    ld         $s0,0($s0)
    lbu        $a0,2208($s0)
    beq        $a0, $s3, .L00001288
    addiu      $a1,$s1,1
    slt        $s1,$a1,$a2
    bnez       $s1, .L00000f78
    move       $s1,$a1
.L00000f9c:
    beq        $a2, $s1, .L000012f8
    li         $a0,2108
.L00000fa4:
    lw         $t8,200($s0)
    bnez       $t8, .L000013ac
    ld         $a1,-30712($gp)
.L00000fb0:
    li         $a5,1
.L00000fb4:
    move       $a2,$zero
    move       $a1,$zero
    lui        $s1,0x100
    move       $a0,$s2
    sb         $s4,2208($s0)
    move       $a4,$s1
    sw         $s2,200($s0)
    jal        xtalk_piomap_alloc
    move       $a3,$s1
    move       $a0,$v0
    move       $a1,$zero
    sd         $v0,2232($s0)
    jal        xtalk_piomap_addr
    move       $a2,$s1
    move       $a0,$v0
    jal        kvtophys
    sd         $v0,2376($s0)
    sd         $v0,2216($s0)
    jal        kona_init_flow_control
    move       $a0,$s0
    ld         $a0,2272($s0)
    beqz       $a0, .L0000131c
    nop
    jal        gfx_flow_credit_tnum_get
    nop
    sw         $v0,2248($s0)
    lw         $a0,200($s0)
    jal        GfxAddHwgraphEdge
    move       $a1,$s0
    ld         $a1,2376($s0)
    move       $a0,$s2
    jal        nic_xg_vertex_info
    daddiu     $a1,$a1,156
    move       $s3,$v0
    jal        device_desc_dup
    move       $a0,$s2
    move       $s1,$v0
    move       $a0,$s2
    move       $a1,$v0
    jal        xtalk_intr_alloc
    move       $a2,$s2
    move       $a0,$v0
    jal        xtalk_intr_cpu_get
    sd         $v0,2240($s0)
    move       $a1,$v0
    jal        device_desc_intr_target_set
    move       $a0,$s1
    move       $a0,$s2
    move       $a1,$s1
    jal        xtalk_intr_alloc
    move       $a2,$s2
    move       $a0,$s2
    move       $a1,$s1
    sd         $v0,2256($s0)
    jal        xtalk_intr_alloc
    move       $a2,$s2
    sd         $v0,2264($s0)
    jal        device_desc_free
    move       $a0,$s1
    move       $a2,$s0
    ld         $s1,-30688($gp)
    ld         $a1,-30680($gp)
    move       $a4,$s0
    move       $a5,$zero
    ld         $a0,2240($s0)
    jal        xtalk_intr_connect
    move       $a3,$s1
    move       $a2,$s0
    ld         $a0,2256($s0)
    move       $a3,$s1
    move       $a4,$s0
    ld         $a1,-30672($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    move       $a2,$s0
    ld         $a0,2264($s0)
    move       $a3,$s1
    move       $a4,$s0
    ld         $a1,-30664($gp)
    jal        xtalk_intr_connect
    move       $a5,$zero
    ld         $a0,2376($s0)
    lui        $s4,0x80
    li         $a1,0x8800
    ori        $s4,$s4,0x3c0
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a0,2376($s0)
    lui        $s1,0x80
    ori        $s1,$s1,0x3d0
    jal        gfx_pio_read_32
    daddu      $a0,$s1,$a0
    lw         $t8,0($gp)
    beqz       $t8, .L00001334
    move       $s2,$v0
    jal        kona_report_errs
    move       $a0,$s0
.L00001138:
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,4
    ld         $a0,2376($s0)
    srl        $a1,$v0,0x1c
    sw         $a1,2196($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,100
    srl        $a2,$v0,0x3
    andi       $a2,$a2,0x7
    bnez       $a2, .L00001170
    nop
    b          .L00001184
    li         $a2,8
.L00001170:
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,100
    srl        $a2,$v0,0x3
    andi       $a2,$a2,0x7
.L00001184:
    ld         $a0,2376($s0)
    li         $a1,2816
    sll        $a2,$a2,0xf
    sw         $a2,2312($s0)
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s1,$a0
    sll        $a1,$v0,0x15
    bltz       $a1, .L00001344
    li         $a5,2
    andi       $v0,$s2,0x3
    li         $s4,1
    beq        $s4, $v0, .L00001354
    move       $s1,$s3
    li         $a2,2
    beq        $v0, $a2, .L00001368
    li         $t1,6
    lbu        $a2,0($s3)
    beqz       $a2, .L0000122c
    nop
    beqz       $a2, .L0000122c
    li         $s2,71
.L000011e4:
    beq        $s2, $a2, .L00001200
    nop
.L000011ec:
    lbu        $a2,1($s1)
    beqz       $a2, .L0000122c
    daddiu     $s1,$s1,1
    bne        $s2, $a2, .L000011ec
    nop
.L00001200:
    beqz       $a2, .L0000122c
    ld         $a1,-30712($gp)
    move       $a0,$s1
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,1656
    beqz       $v0, .L00001394
    li         $t8,4
    lbu        $a2,1($s1)
    bnez       $a2, .L000011e4
    daddiu     $s1,$s1,1
.L0000122c:
    sw         $s4,244($s0)
    li         $a2,18
    sw         $a2,2188($s0)
.L00001238:
    move       $a0,$s0
    jal        kona_extract_nic_info
    move       $a1,$s3
    lbu        $a3,2208($s0)
    move       $a0,$s0
    jal        kona_init_board_mapping
    sw         $a3,2192($s0)
    jal        kona_inventory_board
    move       $a0,$s0
.L0000125c:
    jal        vsema
    ld         $a0,-30720($gp)
    ld         $s2,24($sp)
    ld         $s4,40($sp)
    ld         $s3,48($sp)
    ld         $ra,32($sp)
    ld         $s1,56($sp)
    ld         $s0,64($sp)
    ld         $s5,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001288:
    jal        get_module_id
    move       $a0,$s5
    sd         $v0,8($sp)
    jal        get_module_id
    lh         $a0,2210($s0)
    ld         $a4,8($sp)
    beq        $a4, $v0, .L000012cc
    lw         $a2,0($gp)
.L000012a8:
    addiu      $s1,$s1,1
    slt        $a5,$s1,$a2
    bnez       $a5, .L00000f78
    ld         $v0,0($gp)
    b          .L00000f9c
    nop
.L000012c0:
    ld         $v0,-30720($gp)
    b          .L00000f5c
    daddu      $v0,$a1,$v0
.L000012cc:
    jal        get_node_crossbow
    move       $a0,$s5
    sd         $v0,0($sp)
    jal        get_node_crossbow
    lh         $a0,2210($s0)
    ld         $v1,0($sp)
    bne        $v1, $v0, .L000012a8
    lw         $a2,0($gp)
    lw         $a2,0($gp)
    bne        $a2, $s1, .L00000fa4
    li         $a0,2108
.L000012f8:
    ld         $a3,-30712($gp)
    li         $a1,1
    move       $a4,$s5
    move       $a5,$s3
    daddiu     $a2,$a3,1560
    jal        cmn_err_tag
    daddiu     $a3,$a3,48
    b          .L0000125c
    nop
.L0000131c:
    jal        xtalk_piomap_free
    ld         $a0,2232($s0)
    jal        kona_free_bdata
    move       $a0,$s0
    b          .L0000125c
    nop
.L00001334:
    jal        kona_reset_adaptor
    move       $a0,$s0
    b          .L00001138
    nop
.L00001344:
    sw         $a5,244($s0)
    li         $a4,19
    b          .L00001238
    sw         $a4,2188($s0)
.L00001354:
    li         $a7,5
    sw         $a7,244($s0)
    li         $a6,22
    b          .L00001238
    sw         $a6,2188($s0)
.L00001368:
    sw         $t1,244($s0)
    li         $t0,23
    b          .L00001238
    sw         $t0,2188($s0)
.L00001378:
    beqz       $a2, .L000012f8
    li         $a0,2108
    lw         $t2,200($zero)
    bnez       $t2, .L000013a4
    move       $s1,$zero
    b          .L00000fb0
    move       $s0,$zero
.L00001394:
    sw         $t8,244($s0)
    li         $t3,20
    b          .L00001238
    sw         $t3,2188($s0)
.L000013a4:
    move       $s0,$zero
    ld         $a1,-30712($gp)
.L000013ac:
    li         $a0,1
    move       $a3,$s1
    daddiu     $a2,$a1,48
    jal        cmn_err
    daddiu     $a1,$a1,1616
    b          .L00000fb4
    li         $a5,1

glabel kona_reset_adaptor
    daddiu     $sp,$sp,-48
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        xwidget_gfx_reset
    lw         $a0,200($a0)
    ld         $a0,2240($s0)
    jal        xtalk_intr_addr_get
    sd         $s1,32($sp)
    move       $s1,$v0
    jal        xtalk_intr_target_get
    ld         $a0,2240($s0)
    lh         $a0,2210($s0)
    ld         $a1,-30720($gp)
    dsll32     $a0,$a0,0x0
    daddu      $a0,$a0,$a1
    lw         $a0,4($a0)
    sra        $at,$a0,0xc
    andi       $at,$at,0xffff
    beqz       $at, .L0000161c
    li         $a3,4
    move       $a4,$a3
.L00001420:
    ld         $a0,2376($s0)
    daddiu     $a0,$a0,36
    lui        $a2,0x3c0
    sll        $a4,$a4,0xc
    andi       $a1,$v0,0xff
    lbu        $a3,2208($s0)
    sd         $a1,24($sp)
    andi       $a4,$a4,0xf000
    sll        $a1,$a1,0x16
    and        $a1,$a1,$a2
    andi       $a3,$a3,0xf
    lui        $a2,0x24
    or         $a3,$a3,$a4
    ori        $a2,$a2,0x200
    or         $a1,$a1,$a3
    jal        gfx_pio_write_32
    or         $a1,$a1,$a2
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,36
    ld         $a0,2376($s0)
    li         $a1,-1
    daddiu     $a0,$a0,60
    dsrl32     $a1,$a1,0x0
    and        $a1,$s1,$a1
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    ld         $a0,2376($s0)
    ld         $a1,24($sp)
    daddiu     $a0,$a0,52
    dsrl32     $a2,$s1,0x0
    lui        $a3,0xf
    sll        $a1,$a1,0x10
    andi       $a2,$a2,0xffff
    and        $a1,$a1,$a3
    or         $a1,$a1,$a2
    jal        gfx_pio_write_32
    sll        $a1,$a1,0x0
    jal        xtalk_intr_vector_get
    ld         $a0,2240($s0)
    move       $s1,$v0
    jal        xtalk_intr_vector_get
    ld         $a0,2264($s0)
    sd         $v0,16($sp)
    jal        xtalk_intr_vector_get
    ld         $a0,2256($s0)
    andi       $a2,$v0,0xff
    lui        $a1,0x2
    ld         $a3,16($sp)
    lui        $a5,0x3fc
    sll        $a4,$s1,0x12
    ld         $a0,2376($s0)
    and        $a4,$a4,$a5
    lui        $a5,0x1
    ori        $a5,$a5,0xfe00
    sll        $a3,$a3,0x9
    daddiu     $a0,$a0,92
    and        $a3,$a3,$a5
    or         $a1,$a1,$a4
    or         $a2,$a2,$a3
    jal        gfx_pio_write_32
    or         $a1,$a1,$a2
    ld         $s1,32($sp)
    jal        kona_report_errs
    move       $a0,$s0
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,108
    ld         $a0,2376($s0)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,44
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,108
    ld         $a0,2376($s0)
    move       $a1,$v0
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,108
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,36
    lui        $a1,0x2
    ld         $a0,2376($s0)
    or         $a1,$a1,$v0
    jal        gfx_pio_write_32
    daddiu     $a0,$a0,36
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddiu     $a0,$a0,116
    lui        $a4,0x3f
    srl        $a1,$v0,0x10
    srl        $a2,$v0,0x16
    andi       $a1,$a1,0x3f
    andi       $a2,$a2,0x3f
    sll        $a1,$a1,0x10
    ld         $a0,2376($s0)
    lui        $a3,0xfc0
    sll        $a2,$a2,0x16
    and        $a2,$a2,$a3
    and        $a1,$a1,$a4
    daddiu     $a0,$a0,116
    or         $a1,$a1,$a2
    jal        gfx_pio_write_32
    ori        $a1,$a1,0x3f40
    ld         $a0,2376($s0)
    lui        $a2,0x80
    li         $a1,4095
    ori        $a2,$a2,0x238
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x390
    daddu      $a0,$a0,$a1
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x398
    daddu      $a0,$a0,$a1
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000161c:
    move       $a5,$a3
    li         $a4,3
    srl        $a2,$a0,0x1c
    slti       $a2,$a2,3
    b          .L00001420
    movz       $a4,$a5,$a2

glabel kona_detach
    jr         $ra
    nop
