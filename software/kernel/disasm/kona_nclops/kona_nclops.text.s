.section .text
.set noat
.set noreorder


glabel alloc_new_network_id
    lw         $at,4($a0)
    daddiu     $sp,$sp,-32
    li         $v0,-1
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s1,0($sp)
    bne        $at, $v0, .L00000050
    move       $s1,$a2
    lwu        $a0,0($a0)
    dsll       $a0,$a0,0x3
    daddu      $a0,$a2,$a0
    ld         $a0,0($a0)
    beqz       $a0, .L00000040
    nop
    bne        $a0, $a1, .L00000060
    sd         $ra,16($sp)
.L00000040:
    lw         $a1,0($a3)
    addiu      $a2,$a1,1
    sw         $a2,0($a3)
    sw         $a1,4($s0)
.L00000050:
    ld         $s1,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000060:
    jal        alloc_new_network_id
    nop
    lwu        $a3,0($s0)
    dsll       $a3,$a3,0x3
    daddu      $a3,$s1,$a3
    ld         $a3,0($a3)
    ld         $ra,16($sp)
    lw         $a3,4($a3)
    b          .L00000050
    sw         $a3,4($s0)

glabel alloc_network_id
    lwu        $a5,0($a0)
    dsll       $a5,$a5,0x3
    daddu      $a5,$a1,$a5
    ld         $a5,0($a5)
    move       $a3,$a2
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    beqz       $a5, .L000000c0
    move       $s0,$a0
    li         $a7,-1
    lw         $a6,4($a0)
    sd         $a1,0($sp)
    beq        $a6, $a7, .L000000cc
    sd         $ra,16($sp)
.L000000c0:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000000cc:
    move       $a0,$a5
    move       $a1,$s0
    jal        alloc_new_network_id
    ld         $a2,0($sp)
    lwu        $t1,0($s0)
    ld         $t0,0($sp)
    dsll       $t1,$t1,0x3
    daddu      $t0,$t0,$t1
    ld         $t0,0($t0)
    ld         $ra,16($sp)
    lw         $t0,4($t0)
    b          .L000000c0
    sw         $t0,4($s0)

glabel is_ddo3
    beqz       $a0, .L00000118
    move       $v0,$zero
    li         $v0,5
    lw         $at,320($a0)
    beq        $at, $v0, .L00000120
    move       $v0,$zero
.L00000118:
    jr         $ra
    nop
.L00000120:
    jr         $ra
    li         $v0,1

glabel is_managed
    ld         $v0,-30720($gp)
    dsll       $v1,$a0,0x3
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    ld         $v0,8($v0)
    jr         $ra
    sltu       $v0,$zero,$v0

glabel kona_nclops_discover
    daddiu     $sp,$sp,-864
    sd         $s1,664($sp)
    move       $a1,$zero
    lw         $a0,0($gp)
    li         $s1,-1
    sd         $ra,672($sp)
    jal        kmem_zalloc
    dsll       $a0,$a0,0x2
    sd         $v0,656($sp)
    lw         $a0,0($gp)
    move       $a1,$zero
    sd         $s3,848($sp)
    jal        kmem_zalloc
    dsll       $a0,$a0,0x2
    sd         $s5,840($sp)
    sd         $s0,832($sp)
    ld         $a1,0($gp)
    sd         $s8,824($sp)
    sd         $s6,816($sp)
    move       $s3,$v0
    beqz       $a1, .L00000d90
    sd         $s2,808($sp)
.L0000019c:
    ld         $s8,-30712($gp)
    move       $s0,$a1
    move       $s2,$zero
    sd         $s4,800($sp)
.L000001ac:
    dsll       $s4,$s2,0x2
    dsubu      $s4,$s4,$s2
    dsll       $s4,$s4,0x4
    move       $a1,$s8
    daddu      $s4,$s0,$s4
    jal        spinlock_init
    daddiu     $a0,$s4,16
    addiu      $s2,$s2,1
    sw         $zero,0($s4)
    move       $a2,$zero
.L000001d4:
    dsll       $t9,$a2,0x3
    addiu      $a2,$a2,1
    slti       $t8,$a2,32
    daddu      $t9,$s0,$t9
    sw         $s1,3080($t9)
    beqz       $t8, .L00000204
    dsll       $ra,$a2,0x3
    addiu      $a2,$a2,1
    slti       $at,$a2,32
    daddu      $ra,$s0,$ra
    bnez       $at, .L000001d4
    sw         $s1,3080($ra)
.L00000204:
    slti       $at,$s2,64
    bnez       $at, .L000001ac
    li         $a1,256
    lw         $v0,0($gp)
    daddiu     $a0,$sp,0
    jal        bzero
    sw         $v0,3072($s0)
    lw         $a7,0($gp)
    blez       $a7, .L000002ac
    move       $s4,$zero
    b          .L00000258
    daddiu     $s2,$sp,256
.L00000234:
    jal        mutex_spinlock
    daddiu     $a0,$s6,3520
    ld         $v1,656($sp)
    daddu      $v1,$v1,$s5
    sw         $v0,0($v1)
    lw         $a7,0($gp)
.L0000024c:
    addiu      $s4,$s4,1
    slt        $a0,$s4,$a7
    beqz       $a0, .L000002ac
.L00000258:
    ld         $s6,0($gp)
    dsll       $a2,$s4,0x3
    daddu      $s6,$s6,$a2
    daddu      $a2,$a2,$s2
    ld         $s6,0($s6)
    sw         $s4,0($a2)
    dsll       $s5,$s4,0x2
    sw         $s1,4($a2)
    daddu      $a1,$s3,$s5
    sw         $s1,5500($s6)
    sw         $zero,0($a1)
    jal        is_ddo3
    move       $a0,$s6
    beqz       $v0, .L0000024c
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s4
    bnez       $v0, .L00000234
    nop
    b          .L0000024c
    lw         $a7,0($gp)
.L000002ac:
    blez       $a7, .L00000c18
    move       $s2,$zero
    lui        $s5,0x80
    ori        $s6,$s5,0x3d0
    b          .L00000314
    ori        $s5,$s5,0x3c0
.L000002c4:
    ld         $a0,2376($s4)
    li         $a1,0x8001
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    ld         $a0,2376($s4)
    li         $a1,0x8400
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,28672
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    lw         $a7,0($gp)
.L00000308:
    addiu      $s2,$s2,1
    slt        $a1,$s2,$a7
    beqz       $a1, .L0000034c
.L00000314:
    ld         $s4,0($gp)
    dsll       $t8,$s2,0x3
    daddu      $s4,$s4,$t8
    ld         $s4,0($s4)
    jal        is_ddo3
    move       $a0,$s4
    beqz       $v0, .L00000308
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s2
    bnez       $v0, .L000002c4
    nop
    b          .L00000308
    lw         $a7,0($gp)
.L0000034c:
    blez       $a7, .L000003e4
    move       $s2,$zero
    b          .L000003b0
    ld         $s4,0($gp)
.L0000035c:
    ld         $a0,2376($s4)
    li         $a1,0xe500
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    ld         $a0,2376($s4)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    lw         $a7,0($gp)
.L000003a0:
    addiu      $s2,$s2,1
    slt        $a1,$s2,$a7
    beqz       $a1, .L000003e4
    ld         $s4,0($gp)
.L000003b0:
    dsll       $t8,$s2,0x3
    daddu      $s4,$s4,$t8
    ld         $s4,0($s4)
    jal        is_ddo3
    move       $a0,$s4
    beqz       $v0, .L000003a0
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s2
    bnez       $v0, .L0000035c
    nop
    b          .L000003a0
    lw         $a7,0($gp)
.L000003e4:
    sd         $zero,712($sp)
    li         $s2,1
    b          .L00000410
    sd         $s7,792($sp)
.L000003f4:
    ld         $ra,712($sp)
    addiu      $a1,$ra,1
    beqz       $t9, .L00000b08
    sd         $a1,712($sp)
    slti       $at,$a1,10000
    beqz       $at, .L0000049c
    li         $a2,10000
.L00000410:
    blez       $a7, .L00000b00
    move       $s4,$zero
    b          .L00000464
    sd         $zero,776($sp)
.L00000420:
    ld         $a0,2376($s7)
    li         $a1,0xe200
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s7)
    jal        gfx_pio_read_32
    daddu      $a0,$s6,$a0
    ld         $a1,776($sp)
    andi       $a2,$v0,0x2
    sltiu      $a2,$a2,1
    movn       $a1,$s2,$a2
    sd         $a1,776($sp)
    lw         $a7,0($gp)
.L00000454:
    addiu      $s4,$s4,1
    slt        $a3,$s4,$a7
    beqz       $a3, .L000003f4
    ld         $t9,776($sp)
.L00000464:
    ld         $s7,0($gp)
    dsll       $t8,$s4,0x3
    daddu      $s7,$s7,$t8
    ld         $s7,0($s7)
    jal        is_ddo3
    move       $a0,$s7
    beqz       $v0, .L00000454
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s4
    bnez       $v0, .L00000420
    nop
    b          .L00000454
    lw         $a7,0($gp)
.L0000049c:
    beq        $a1, $a2, .L00001138
    daddiu     $s7,$sp,256
.L000004a4:
    blez       $a7, .L00000520
    move       $s4,$zero
    b          .L000004ec
    ld         $a0,0($gp)
.L000004b4:
    ld         $a0,2376($a0)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,720($sp)
    ld         $a0,2376($a0)
    li         $a1,161
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    lw         $a1,0($gp)
.L000004dc:
    addiu      $s4,$s4,1
    slt        $a1,$s4,$a1
    beqz       $a1, .L00000520
    ld         $a0,0($gp)
.L000004ec:
    dsll       $a1,$s4,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    jal        is_ddo3
    sd         $a0,720($sp)
    beqz       $v0, .L000004dc
    lw         $a1,0($gp)
    jal        is_managed
    move       $a0,$s4
    bnez       $v0, .L000004b4
    ld         $a0,720($sp)
    b          .L000004dc
    lw         $a1,0($gp)
.L00000520:
    jal        us_delay
    li         $a0,1
    lw         $a7,0($gp)
    blez       $a7, .L000005b8
    move       $s4,$zero
    b          .L00000554
    ld         $a0,0($gp)
.L0000053c:
    sw         $s2,0($a1)
.L00000540:
    lw         $a7,0($gp)
.L00000544:
    addiu      $s4,$s4,1
    slt        $a2,$s4,$a7
    beqz       $a2, .L000005b8
    ld         $a0,0($gp)
.L00000554:
    dsll       $a1,$s4,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    jal        is_ddo3
    sd         $a0,728($sp)
    beqz       $v0, .L00000544
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s4
    beqz       $v0, .L00000540
    ld         $a0,728($sp)
    ld         $a0,2376($a0)
    li         $a1,0xe200
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,728($sp)
    ld         $a0,2376($a0)
    jal        gfx_pio_read_32
    daddu      $a0,$s6,$a0
    sll        $a2,$v0,0x18
    dsll       $a1,$s4,0x2
    bgez       $a2, .L0000053c
    daddu      $a1,$s3,$a1
    b          .L00000544
    lw         $a7,0($gp)
.L000005b8:
    blez       $a7, .L00000634
    move       $s4,$zero
    b          .L00000600
    ld         $a0,0($gp)
.L000005c8:
    ld         $a0,2376($a0)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,736($sp)
    ld         $a0,2376($a0)
    li         $a1,33
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    lw         $a1,0($gp)
.L000005f0:
    addiu      $s4,$s4,1
    slt        $a1,$s4,$a1
    beqz       $a1, .L00000634
    ld         $a0,0($gp)
.L00000600:
    dsll       $a1,$s4,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    jal        is_ddo3
    sd         $a0,736($sp)
    beqz       $v0, .L000005f0
    lw         $a1,0($gp)
    jal        is_managed
    move       $a0,$s4
    bnez       $v0, .L000005c8
    ld         $a0,736($sp)
    b          .L000005f0
    lw         $a1,0($gp)
.L00000634:
    jal        us_delay
    li         $a0,1
    lw         $a7,0($gp)
    blez       $a7, .L000006cc
    move       $s4,$zero
    b          .L00000664
    ld         $a0,0($gp)
.L00000650:
    lw         $a7,0($gp)
.L00000654:
    addiu      $s4,$s4,1
    slt        $a2,$s4,$a7
    beqz       $a2, .L000006cc
    ld         $a0,0($gp)
.L00000664:
    dsll       $a1,$s4,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    jal        is_ddo3
    sd         $a0,744($sp)
    beqz       $v0, .L00000654
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s4
    beqz       $v0, .L00000650
    ld         $a0,744($sp)
    ld         $a0,2376($a0)
    li         $a1,0xe200
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,744($sp)
    ld         $a0,2376($a0)
    jal        gfx_pio_read_32
    daddu      $a0,$s6,$a0
    sra        $a1,$v0,0x7
    and        $a1,$s2,$a1
    bne        $s2, $a1, .L00000650
    dsll       $a2,$s4,0x2
    daddu      $a2,$s3,$a2
    b          .L00000650
    sw         $s2,0($a2)
.L000006cc:
    blez       $a7, .L00000748
    move       $s4,$zero
    b          .L00000714
    ld         $a0,0($gp)
.L000006dc:
    ld         $a0,2376($a0)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,752($sp)
    ld         $a0,2376($a0)
    li         $a1,33
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    lw         $a7,0($gp)
.L00000704:
    addiu      $s4,$s4,1
    slt        $a1,$s4,$a7
    beqz       $a1, .L00000748
    ld         $a0,0($gp)
.L00000714:
    dsll       $a1,$s4,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    jal        is_ddo3
    sd         $a0,752($sp)
    beqz       $v0, .L00000704
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s4
    bnez       $v0, .L000006dc
    ld         $a0,752($sp)
    b          .L00000704
    lw         $a7,0($gp)
.L00000748:
    blez       $a7, .L00000c28
    sd         $zero,768($sp)
    b          .L000007a4
    sd         $zero,696($sp)
.L00000758:
    beq        $a2, $s1, .L00000768
    ld         $a3,696($sp)
    beqz       $a3, .L00000c00
    ld         $t0,648($sp)
.L00000768:
    ld         $s4,856($sp)
    ld         $a0,2376($s4)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,33
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    ld         $a1,768($sp)
.L00000790:
    lw         $a7,0($gp)
    addiu      $a1,$a1,1
    sd         $a1,768($sp)
    slt        $a1,$a1,$a7
    beqz       $a1, .L000008b4
.L000007a4:
    ld         $t8,768($sp)
    ld         $s4,0($gp)
    dsll       $t8,$t8,0x3
    daddu      $s4,$s4,$t8
    ld         $s4,0($s4)
    sd         $t8,680($sp)
    jal        is_ddo3
    move       $a0,$s4
    beqz       $v0, .L00000790
    ld         $a1,768($sp)
    jal        is_managed
    ld         $a0,768($sp)
    beqz       $v0, .L00000790
    ld         $a1,768($sp)
    ld         $a0,2376($s4)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,161
    sd         $s4,856($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    jal        us_delay
    li         $a0,1
    lw         $a1,0($gp)
    move       $s4,$zero
    blez       $a1, .L00000768
    li         $a1,-1
    b          .L00000834
    sd         $a1,648($sp)
.L00000820:
    lw         $a3,0($gp)
.L00000824:
    addiu      $s4,$s4,1
    slt        $a3,$s4,$a3
    beqz       $a3, .L00000758
    ld         $a2,648($sp)
.L00000834:
    ld         $a0,0($gp)
    dsll       $a1,$s4,0x3
    daddu      $a0,$a0,$a1
    ld         $a0,0($a0)
    jal        is_ddo3
    sd         $a0,760($sp)
    beqz       $v0, .L00000824
    lw         $a3,0($gp)
    jal        is_managed
    move       $a0,$s4
    beqz       $v0, .L00000820
    dsll       $a2,$s4,0x2
    daddu      $a2,$s3,$a2
    lw         $a2,0($a2)
    bnez       $a2, .L00000820
    ld         $a0,760($sp)
    ld         $a0,2376($a0)
    li         $a1,0xe200
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,760($sp)
    ld         $a0,2376($a0)
    jal        gfx_pio_read_32
    daddu      $a0,$s6,$a0
    sra        $a1,$v0,0x7
    and        $a1,$s2,$a1
    bne        $s2, $a1, .L00000820
    ld         $a2,648($sp)
    beql       $a2, $s1, .L00000820
    sd         $s4,648($sp)
    b          .L0000116c
    daddiu     $a1,$s8,80
.L000008b4:
    blez       $a7, .L0000094c
    move       $s1,$zero
    b          .L00000918
    ld         $s4,0($gp)
.L000008c4:
    ld         $a0,2376($s4)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    ld         $a0,2376($s4)
    li         $a1,0xe500
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s6,$a0
    lw         $a7,0($gp)
.L00000908:
    addiu      $s1,$s1,1
    slt        $a1,$s1,$a7
    beqz       $a1, .L0000094c
    ld         $s4,0($gp)
.L00000918:
    dsll       $t8,$s1,0x3
    daddu      $s4,$s4,$t8
    ld         $s4,0($s4)
    jal        is_ddo3
    move       $a0,$s4
    beqz       $v0, .L00000908
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s1
    bnez       $v0, .L000008c4
    nop
    b          .L00000908
    lw         $a7,0($gp)
.L0000094c:
    b          .L00000974
    sd         $zero,704($sp)
.L00000954:
    ld         $t9,784($sp)
    ld         $ra,704($sp)
    addiu      $a1,$ra,1
    beqz       $t9, .L00000b24
    sd         $a1,704($sp)
    slti       $at,$a1,10000
    beqz       $at, .L00000a00
    li         $t9,10000
.L00000974:
    sd         $zero,784($sp)
    blez       $a7, .L00000b1c
    move       $s1,$zero
    b          .L000009cc
    ld         $s4,0($gp)
.L00000988:
    ld         $a0,2376($s4)
    li         $a1,0xe200
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s4)
    jal        gfx_pio_read_32
    daddu      $a0,$s6,$a0
    ld         $a1,784($sp)
    andi       $a2,$v0,0x2
    sltiu      $a2,$a2,1
    movn       $a1,$s2,$a2
    sd         $a1,784($sp)
    lw         $a7,0($gp)
.L000009bc:
    addiu      $s1,$s1,1
    slt        $a3,$s1,$a7
    beqz       $a3, .L00000954
    ld         $s4,0($gp)
.L000009cc:
    dsll       $t8,$s1,0x3
    daddu      $s4,$s4,$t8
    ld         $s4,0($s4)
    jal        is_ddo3
    move       $a0,$s4
    beqz       $v0, .L000009bc
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s1
    bnez       $v0, .L00000988
    nop
    b          .L000009bc
    lw         $a7,0($gp)
.L00000a00:
    beq        $a1, $t9, .L00001158
    daddiu     $a1,$s8,208
.L00000a08:
    lw         $a7,0($gp)
.L00000a0c:
    daddiu     $s5,$sp,0
    ld         $s4,656($sp)
    blez       $a7, .L00000a7c
    move       $s1,$zero
    b          .L00000a48
    ld         $s6,0($gp)
.L00000a24:
    daddu      $a1,$s4,$a1
    daddiu     $a0,$s6,3520
    jal        mutex_spinunlock
    lw         $a1,0($a1)
    lw         $a7,0($gp)
.L00000a38:
    addiu      $s1,$s1,1
    slt        $a2,$s1,$a7
    beqz       $a2, .L00000a7c
    ld         $s6,0($gp)
.L00000a48:
    dsll       $t8,$s1,0x3
    daddu      $s6,$s6,$t8
    ld         $s6,0($s6)
    jal        is_ddo3
    move       $a0,$s6
    beqz       $v0, .L00000a38
    lw         $a7,0($gp)
    jal        is_managed
    move       $a0,$s1
    bnez       $v0, .L00000a24
    dsll       $a1,$s1,0x2
    b          .L00000a38
    lw         $a7,0($gp)
.L00000a7c:
    ld         $t9,696($sp)
    beqz       $t9, .L00000c30
.L00000a84:
    li         $ra,-1
    sd         $ra,688($sp)
.L00000a8c:
    ld         $at,696($sp)
.L00000a90:
    ld         $v0,688($sp)
    sw         $v0,3332($s0)
    bnez       $at, .L00000ab0
    lw         $a7,0($gp)
    blez       $a7, .L00000ab0
    move       $s1,$zero
    b          .L00001198
    ld         $s2,0($gp)
.L00000ab0:
    ld         $s8,824($sp)
    ld         $s6,816($sp)
    ld         $s7,792($sp)
    move       $a0,$s4
    jal        kmem_free
    dsll       $a1,$a7,0x2
    ld         $s5,840($sp)
    ld         $s0,832($sp)
    ld         $s2,808($sp)
    lw         $a1,0($gp)
    ld         $s4,800($sp)
    move       $a0,$s3
    jal        kmem_free
    dsll       $a1,$a1,0x2
    ld         $ra,672($sp)
    ld         $s3,848($sp)
    ld         $v0,696($sp)
    ld         $s1,664($sp)
    jr         $ra
    daddiu     $sp,$sp,864
.L00000b00:
    ld         $a1,712($sp)
    addiu      $a1,$a1,1
.L00000b08:
    li         $a2,10000
    bne        $a1, $a2, .L000004a4
    daddiu     $s7,$sp,256
    b          .L0000113c
    daddiu     $s7,$sp,256
.L00000b1c:
    ld         $a1,704($sp)
    addiu      $a1,$a1,1
.L00000b24:
    li         $a2,10000
    bne        $a1, $a2, .L00000a0c
    lw         $a7,0($gp)
    b          .L00001158
    daddiu     $a1,$s8,208
.L00000b38:
    lw         $a4,2184($s2)
    dsll       $a2,$a1,0x3
    addiu      $a1,$a1,1
    daddu      $a2,$s0,$a2
.L00000b48:
    lw         $a5,3076($a2)
    bne        $a5, $a4, .L00000b64
    slt        $a5,$a1,$a3
    lw         $a3,3080($a2)
    sw         $a3,5496($s2)
    lw         $a3,3072($s0)
    slt        $a5,$a1,$a3
.L00000b64:
    dsll       $a2,$a1,0x3
    addiu      $a1,$a1,1
    beqz       $a5, .L00000ba0
    daddu      $a2,$s0,$a2
    lw         $a6,3076($a2)
    bne        $a6, $a4, .L00000b90
    slt        $t1,$a1,$a3
    lw         $t0,3080($a2)
    sw         $t0,5496($s2)
    lw         $a3,3072($s0)
    slt        $t1,$a1,$a3
.L00000b90:
    dsll       $a2,$a1,0x3
    addiu      $a1,$a1,1
    bnez       $t1, .L00000b48
    daddu      $a2,$s0,$a2
.L00000ba0:
    move       $a0,$s5
    jal        mutex_spinunlock
    lw         $a1,0($a7)
    lw         $a7,0($gp)
.L00000bb0:
    addiu      $s1,$s1,1
    slt        $t2,$s1,$a7
    ld         $s2,0($gp)
    beqz       $t2, .L00000ab0
    dsll       $t8,$s1,0x3
    daddu      $s2,$s2,$t8
.L00000bc8:
    ld         $s2,0($s2)
    beqz       $s2, .L00000bb0
    daddiu     $s5,$s2,3520
    jal        mutex_spinlock
    move       $a0,$s5
    dsll       $a7,$s1,0x2
    daddu      $a7,$s4,$a7
    sw         $v0,0($a7)
    sd         $s0,5480($s2)
    lw         $a3,3072($s0)
    bgtz       $a3, .L00000b38
    move       $a1,$zero
    b          .L00000ba0
    nop
.L00000c00:
    ld         $t1,680($sp)
    daddu      $t1,$t1,$sp
    dsll       $t0,$t0,0x3
    daddu      $t0,$s7,$t0
    b          .L00000768
    sd         $t0,0($t1)
.L00000c18:
    lui        $s5,0x80
    ori        $s6,$s5,0x3d0
    b          .L0000034c
    ori        $s5,$s5,0x3c0
.L00000c28:
    b          .L000008b4
    sd         $zero,696($sp)
.L00000c30:
    blez       $a7, .L00000c58
    move       $a0,$zero
    dsll       $t9,$a0,0x2
.L00000c3c:
    daddu      $t9,$s4,$t9
    sw         $zero,0($t9)
    lw         $a7,0($gp)
    addiu      $a0,$a0,1
    slt        $t8,$a0,$a7
    bnez       $t8, .L00000c3c
    dsll       $t9,$a0,0x2
.L00000c58:
    blez       $a7, .L00000ca8
    move       $a1,$zero
    dsll       $a0,$a1,0x3
    addiu      $a1,$a1,1
    daddu      $a0,$s5,$a0
.L00000c6c:
    ld         $a0,0($a0)
    beqz       $a0, .L00000c98
    slt        $a4,$a1,$a7
    lwu        $a3,0($a0)
    dsll       $a3,$a3,0x2
    daddu      $a3,$s4,$a3
    lw         $a2,0($a3)
    addiu      $a2,$a2,1
    sw         $a2,0($a3)
    lw         $a7,0($gp)
    slt        $a4,$a1,$a7
.L00000c98:
    dsll       $a0,$a1,0x3
    addiu      $a1,$a1,1
    bnez       $a4, .L00000c6c
    daddu      $a0,$s5,$a0
.L00000ca8:
    blez       $a7, .L00000cd4
    move       $s1,$zero
.L00000cb0:
    dsll       $a5,$s1,0x2
    daddu      $a5,$s4,$a5
    lw         $a5,0($a5)
    slti       $a5,$a5,2
    beqz       $a5, .L000010fc
    daddiu     $a1,$s8,264
    addiu      $s1,$s1,1
    slt        $a6,$s1,$a7
    bnez       $a6, .L00000cb0
.L00000cd4:
    ld         $t0,696($sp)
    move       $s1,$zero
    ld         $s4,656($sp)
    bnez       $t0, .L00000a84
    daddiu     $s5,$sp,0
    blez       $a7, .L000010c4
    sw         $zero,512($sp)
    li         $t1,-1
    sd         $t1,688($sp)
    daddiu     $a2,$sp,512
.L00000cfc:
    daddiu     $a1,$sp,0
    dsll       $a0,$s1,0x3
    jal        alloc_network_id
    daddu      $a0,$s7,$a0
    lw         $a0,512($sp)
    ld         $a1,688($sp)
    addiu      $a0,$a0,-1
    slt        $a1,$a1,$a0
    lw         $a7,0($gp)
    beqz       $a1, .L00000d2c
    addiu      $s1,$s1,1
    sd         $a0,688($sp)
.L00000d2c:
    slt        $a2,$s1,$a7
    bnez       $a2, .L00000cfc
    daddiu     $a2,$sp,512
.L00000d38:
    blez       $a7, .L00000d78
    move       $s1,$zero
    daddiu     $a3,$sp,520
    move       $a0,$zero
.L00000d48:
    dsll       $a5,$a0,0x2
    addiu      $a0,$a0,1
    slt        $a4,$a0,$a7
    daddu      $a5,$a3,$a5
    sw         $zero,0($a5)
    beqz       $a4, .L00000d78
    dsll       $a6,$a0,0x2
    addiu      $a0,$a0,1
    slt        $t0,$a0,$a7
    daddu      $a6,$a3,$a6
    bnez       $t0, .L00000d48
    sw         $zero,0($a6)
.L00000d78:
    daddiu     $v0,$sp,520
    ld         $t0,688($sp)
    bgez       $t0, .L00000e44
    move       $s6,$zero
    b          .L000010d0
    nop
.L00000d90:
    li         $a0,3336
    jal        kmem_zalloc
    move       $a1,$zero
    move       $a1,$v0
    b          .L0000019c
    sd         $v0,0($gp)
.L00000da8:
    ld         $t1,0($a0)
    lwu        $t1,0($t1)
    dsll       $t1,$t1,0x2
    daddu      $t1,$v0,$t1
    dsll       $a6,$s6,0x3
    lw         $t1,0($t1)
    dsll32     $a4,$a3,0x0
    daddu      $a6,$a6,$s0
    dsrl       $a4,$a4,0x1d
    beq        $t1, $s2, .L00000e2c
    daddu      $a4,$s5,$a4
    ld         $a4,0($a4)
.L00000dd8:
    lw         $a4,0($a4)
    dsll       $a3,$a4,0x3
    daddu      $a3,$a3,$s7
    lw         $a7,0($a3)
    sw         $a7,3076($a6)
    lw         $a5,4($a3)
    sw         $a5,3080($a6)
    lw         $a3,0($a3)
    dsll32     $a2,$a3,0x0
    dsrl       $a2,$a2,0x1d
    daddu      $a2,$s5,$a2
    ld         $a2,0($a2)
    dsll       $a4,$a4,0x2
    lw         $a2,0($a2)
    addiu      $s6,$s6,1
    dsll32     $a0,$a3,0x0
    daddu      $a4,$v0,$a4
    dsrl       $a0,$a0,0x1d
    sw         $s2,0($a4)
    bne        $a1, $a2, .L00000da8
    daddu      $a0,$s5,$a0
.L00000e2c:
    lw         $a7,0($gp)
.L00000e30:
    ld         $a5,688($sp)
.L00000e34:
    addiu      $s1,$s1,1
    slt        $a5,$a5,$s1
    bnez       $a5, .L0000101c
    nop
.L00000e44:
    blez       $a7, .L00000f7c
    move       $a3,$zero
    b          .L000011b4
    dsll       $a4,$a3,0x2
.L00000e54:
    addiu      $a3,$a3,1
    slt        $a6,$a3,$a7
    dsll       $a4,$a3,0x2
    beqz       $a6, .L00000f7c
    daddu      $t0,$s3,$a4
    lw         $t0,0($t0)
.L00000e6c:
    bne        $t0, $s2, .L00000e54
    dsll       $a0,$a3,0x3
    daddu      $a0,$s7,$a0
    lw         $t1,4($a0)
    bne        $s1, $t1, .L00000e54
    dsll       $a5,$s6,0x3
    lw         $a6,0($a0)
    daddu      $a5,$s0,$a5
    sw         $a6,3076($a5)
    lw         $a3,4($a0)
    sw         $a3,3080($a5)
    lw         $a1,0($a0)
    dsll32     $a2,$a1,0x0
    dsrl       $a2,$a2,0x1d
    daddu      $a2,$s5,$a2
    ld         $a2,0($a2)
    lw         $a7,0($gp)
    daddu      $a3,$a4,$v0
    addiu      $s6,$s6,1
    beqz       $a2, .L00000e30
    sw         $s2,0($a3)
    blez       $a7, .L00000e34
    ld         $a5,688($sp)
    lwu        $a6,0($a2)
    dsll       $a6,$a6,0x2
    daddu      $a6,$v0,$a6
    lw         $a6,0($a6)
    beq        $a6, $s2, .L00000e34
    ld         $a5,688($sp)
    move       $a0,$zero
    addiu      $a0,$a0,1
    dsll       $a3,$s6,0x3
    daddu      $a3,$a3,$s0
.L00000ef0:
    dsll32     $a7,$a1,0x0
    dsrl       $a7,$a7,0x1d
    daddu      $a7,$s5,$a7
    ld         $a7,0($a7)
    lw         $a7,0($a7)
    dsll       $a1,$a7,0x3
    daddu      $a1,$a1,$s7
    lw         $a4,0($a1)
    sw         $a4,3076($a3)
    lw         $a2,4($a1)
    sw         $a2,3080($a3)
    lw         $a1,0($a1)
    dsll32     $a2,$a1,0x0
    dsrl       $a2,$a2,0x1d
    daddu      $a2,$s5,$a2
    ld         $a2,0($a2)
    dsll       $a7,$a7,0x2
    daddu      $a7,$v0,$a7
    addiu      $s6,$s6,1
    beqz       $a2, .L00001014
    sw         $s2,0($a7)
    lw         $a7,0($gp)
    slt        $t0,$a0,$a7
    beqz       $t0, .L00000e34
    ld         $a5,688($sp)
    lwu        $t1,0($a2)
    dsll       $t1,$t1,0x2
    daddu      $t1,$v0,$t1
    lw         $t1,0($t1)
    addiu      $a0,$a0,1
    dsll       $a3,$s6,0x3
    bne        $t1, $s2, .L00000ef0
    daddu      $a3,$a3,$s0
    b          .L00000e34
    ld         $a5,688($sp)
.L00000f7c:
    blez       $a7, .L000010d8
    move       $a0,$zero
    b          .L000011c0
    dsll       $a2,$a0,0x3
.L00000f8c:
    addiu      $a0,$a1,1
    slt        $t2,$a0,$a7
    dsll       $a2,$a0,0x3
    beqz       $t2, .L000010d8
    daddu      $a2,$s7,$a2
    lw         $t3,4($a2)
.L00000fa4:
    bne        $s1, $t3, .L00000f8c
    move       $a1,$a0
    dsll       $a6,$s6,0x3
    lw         $a7,0($a2)
    daddu      $a6,$s0,$a6
    sw         $a7,3076($a6)
    lw         $a5,4($a2)
    sw         $a5,3080($a6)
    lw         $a3,0($a2)
    dsll32     $a4,$a3,0x0
    dsrl       $a4,$a4,0x1d
    daddu      $a4,$s5,$a4
    ld         $a4,0($a4)
    lw         $a6,0($a4)
    dsll       $a5,$a0,0x2
    daddu      $a5,$v0,$a5
    addiu      $s6,$s6,1
    beq        $a0, $a6, .L00000e2c
    sw         $s2,0($a5)
    lwu        $a7,0($a4)
    dsll       $a7,$a7,0x2
    daddu      $a7,$v0,$a7
    lw         $a7,0($a7)
    dsll32     $a4,$a3,0x0
    beq        $a7, $s2, .L00000e2c
    dsll       $a6,$s6,0x3
    b          .L000011a4
    daddu      $a6,$a6,$s0
.L00001014:
    b          .L00000e30
    lw         $a7,0($gp)
.L0000101c:
    blez       $a7, .L00000a8c
    move       $a0,$zero
    b          .L000011cc
    dsll       $t1,$a0,0x2
.L0000102c:
    addiu      $a0,$a0,1
    slt        $t0,$a0,$a7
    dsll       $t1,$a0,0x2
    beqz       $t0, .L000010bc
    daddu      $t1,$v0,$t1
    lw         $t1,0($t1)
.L00001044:
    beqz       $t1, .L00001094
    dsll       $a5,$a0,0x3
.L0000104c:
    addiu      $a0,$a0,1
    slt        $a2,$a0,$a7
    dsll       $a1,$a0,0x2
    beqz       $a2, .L000010bc
    daddu      $a1,$v0,$a1
    lw         $a3,0($a1)
    bnez       $a3, .L0000102c
    dsll       $a4,$a0,0x3
    dsll       $a5,$s6,0x3
    daddu      $a4,$a4,$s7
    daddu      $a5,$a5,$s0
    lw         $a6,0($a4)
    sw         $a6,3076($a5)
    lw         $a4,4($a4)
    sw         $a4,3080($a5)
    addiu      $s6,$s6,1
    b          .L0000102c
    lw         $a7,0($gp)
.L00001094:
    dsll       $a6,$s6,0x3
    daddu      $a5,$a5,$s7
    daddu      $a6,$a6,$s0
    lw         $a7,0($a5)
    sw         $a7,3076($a6)
    lw         $a5,4($a5)
    sw         $a5,3080($a6)
    addiu      $s6,$s6,1
    b          .L0000104c
    lw         $a7,0($gp)
.L000010bc:
    b          .L00000a90
    ld         $at,696($sp)
.L000010c4:
    li         $a6,-1
    b          .L00000d38
    sd         $a6,688($sp)
.L000010d0:
    b          .L0000101c
    move       $s6,$zero
.L000010d8:
    daddiu     $a1,$s8,384
    li         $a0,4
    jal        cmn_err
    move       $a2,$s1
    li         $a7,1
    sd         $a7,696($sp)
    daddiu     $v0,$sp,520
    b          .L00000e30
    lw         $a7,0($gp)
.L000010fc:
    jal        cmn_err
    li         $a0,4
    daddiu     $a1,$s8,336
    li         $a0,4
    jal        cmn_err
    move       $a2,$s1
    lw         $a7,0($gp)
    addiu      $s1,$s1,1
    slt        $t0,$s1,$a7
    li         $t1,1
    bnez       $t0, .L00000cb0
    sd         $t1,696($sp)
    li         $t2,1
    b          .L00000cd4
    sd         $t2,696($sp)
.L00001138:
    daddiu     $s7,$sp,256
.L0000113c:
    daddiu     $a1,$s8,24
    jal        cmn_err
    li         $a0,4
    li         $t3,1
    b          .L00000a08
    sd         $t3,696($sp)
    daddiu     $a1,$s8,208
.L00001158:
    jal        cmn_err
    li         $a0,4
    li         $t8,1
    b          .L00000a08
    sd         $t8,696($sp)
.L0000116c:
    jal        cmn_err
    li         $a0,4
    daddiu     $a1,$s8,152
    li         $a0,4
    ld         $a3,648($sp)
    move       $a2,$s4
    jal        cmn_err
    ld         $a4,768($sp)
    li         $t9,1
    b          .L00000820
    sd         $t9,696($sp)
.L00001198:
    dsll       $t8,$s1,0x3
    b          .L00000bc8
    daddu      $s2,$s2,$t8
.L000011a4:
    dsrl       $a4,$a4,0x1d
    daddu      $a4,$s5,$a4
    b          .L00000dd8
    ld         $a4,0($a4)
.L000011b4:
    daddu      $t0,$s3,$a4
    b          .L00000e6c
    lw         $t0,0($t0)
.L000011c0:
    daddu      $a2,$s7,$a2
    b          .L00000fa4
    lw         $t3,4($a2)
.L000011cc:
    daddu      $t1,$v0,$t1
    b          .L00001044
    lw         $t1,0($t1)

glabel kona_nclops_configure
    daddiu     $sp,$sp,-80
    sd         $s1,32($sp)
    lw         $s1,4($a2)
    li         $v0,-1
    sw         $v0,8($a2)
    sd         $s3,16($sp)
    move       $s3,$a0
    sd         $s0,24($sp)
    bltz       $s1, .L000012a0
    move       $s0,$a2
    slti       $at,$s1,64
    beqz       $at, .L000012a4
    li         $v0,1
    lw         $v0,3332($a0)
    slt        $v0,$v0,$s1
    bnez       $v0, .L000012a4
    li         $v0,1
    lw         $a2,0($a2)
    lw         $a6,0($gp)
    slt        $v1,$a6,$a2
    bnez       $v1, .L000012c0
    li         $v0,1
    blez       $a2, .L00001260
    move       $v0,$zero
.L00001238:
    dsll       $a4,$v0,0x4
    daddu      $a4,$s0,$a4
    lw         $a4,24($a4)
    addiu      $v0,$v0,1
    slt        $a5,$v0,$a2
    bltz       $a4, .L000012b8
    slt        $a7,$a4,$a6
    beqz       $a7, .L000012b8
    nop
    bnez       $a5, .L00001238
.L00001260:
    dsll       $a0,$s1,0x2
    dsubu      $a0,$a0,$s1
    dsll       $a0,$a0,0x4
    daddu      $a0,$s3,$a0
    lw         $a2,0($a0)
    li         $a4,1
    beqz       $a2, .L000012c8
    li         $v0,1
    lw         $a1,44($a0)
    bnez       $a1, .L00001298
    nop
    sd         $a0,8($sp)
    beq        $a2, $a4, .L000012d0
    sd         $ra,48($sp)
.L00001298:
    b          .L000012a8
    ld         $s3,16($sp)
.L000012a0:
    li         $v0,1
.L000012a4:
    ld         $s3,16($sp)
.L000012a8:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000012b8:
    b          .L000012a4
    li         $v0,1
.L000012c0:
    b          .L000012a8
    ld         $s3,16($sp)
.L000012c8:
    sd         $a0,8($sp)
    sd         $ra,48($sp)
.L000012d0:
    ld         $a0,8($sp)
    jal        bzero
    li         $a1,48
    ld         $a1,8($sp)
    sd         $s4,40($sp)
    sd         $zero,8($a1)
    li         $a2,1
    sw         $a2,0($a1)
    sw         $s1,8($s0)
    lw         $a0,0($gp)
    sd         $s5,56($sp)
    move       $a1,$zero
    jal        kmem_zalloc
    dsll       $a0,$a0,0x3
    lw         $a6,0($gp)
    lui        $a2,0x80
    sd         $v0,0($sp)
    move       $s1,$zero
    ori        $s4,$a2,0x3c0
    sd         $s2,64($sp)
    blez       $a6, .L00001358
    ori        $s5,$a2,0x3d0
    sd         $s2,64($sp)
    ld         $a4,0($gp)
.L00001330:
    lw         $a2,4($s0)
.L00001334:
    dsll       $s2,$s1,0x3
    daddu      $s2,$a4,$s2
    ld         $s2,0($s2)
    lw         $a3,5496($s2)
    beq        $a3, $a2, .L000015d0
    addiu      $a5,$s1,1
    slt        $t8,$a5,$a6
    bnez       $t8, .L00001334
    move       $s1,$a5
.L00001358:
    lw         $a1,8($s0)
.L0000135c:
    dsll       $a0,$a1,0x2
    dsubu      $a0,$a0,$a1
    dsll       $a0,$a0,0x4
    daddu      $a0,$s3,$a0
    jal        mutex_spinlock
    daddiu     $a0,$a0,16
    lw         $t9,8($s0)
    lw         $t8,24($s0)
    ld         $t2,0($gp)
    dsll       $t3,$t9,0x2
    dsll       $t8,$t8,0x3
    dsubu      $t3,$t3,$t9
    daddu      $t2,$t2,$t8
    dsll       $t3,$t3,0x4
    ld         $t2,0($t2)
    daddu      $t3,$s3,$t3
    sd         $t2,8($t3)
    lw         $t1,8($s0)
    dsll       $t0,$t1,0x2
    dsubu      $t0,$t0,$t1
    dsll       $t0,$t0,0x4
    daddu      $t0,$s3,$t0
    sw         $zero,20($t0)
    lw         $a7,8($s0)
    dsll       $a6,$a7,0x2
    dsubu      $a6,$a6,$a7
    dsll       $a6,$a6,0x4
    lw         $a5,0($s0)
    daddu      $a6,$s3,$a6
    sw         $a5,40($a6)
    lw         $a4,8($s0)
    dsll       $a3,$a4,0x2
    dsubu      $a3,$a3,$a4
    dsll       $a3,$a3,0x4
    daddu      $a3,$s3,$a3
    sw         $zero,44($a3)
    lw         $a2,8($s0)
    dsll       $a0,$a2,0x2
    dsubu      $a0,$a0,$a2
    dsll       $a0,$a0,0x4
    move       $a1,$v0
    daddu      $a0,$s3,$a0
    jal        mutex_spinunlock
    daddiu     $a0,$a0,16
    lw         $a2,0($s0)
    li         $a4,1
    lui        $a5,0x80
    move       $s1,$zero
    ori        $s5,$a5,0x3d0
    blez       $a2, .L00001540
    ori        $s4,$a5,0x3c0
.L00001428:
    div        $zero,$a4,$a2
    dsll       $at,$s1,0x4
    daddu      $at,$s0,$at
    lw         $v1,24($at)
    ld         $v0,0($gp)
    dsll       $v1,$v1,0x3
    mfhi       $a3
    lw         $a6,8($s0)
    daddu      $v0,$v0,$v1
    dsll       $a3,$a3,0x4
    ld         $v0,0($v0)
    daddu      $a3,$s0,$a3
    lw         $a3,24($a3)
    sw         $a6,5500($v0)
    ld         $a1,0($gp)
    dsll       $a3,$a3,0x3
    daddu      $a1,$a1,$a3
    ld         $a1,0($a1)
    sd         $a1,5488($v0)
    lw         $a0,12($at)
    sw         $a0,5520($v0)
    lw         $v1,16($at)
    sw         $v1,5524($v0)
    lw         $at,20($at)
    sw         $at,5528($v0)
    teq        $a2,$zero,0x7
    lw         $a2,0($s0)
    addiu      $s1,$s1,1
    slt        $ra,$s1,$a2
    bnez       $ra, .L00001428
    addiu      $a4,$a4,1
    blez       $a2, .L00001544
    lw         $a6,0($gp)
    move       $s1,$zero
    dsll       $t8,$s1,0x4
.L000014b4:
    daddu      $t8,$s0,$t8
    lw         $t8,24($t8)
    ld         $s2,0($gp)
    dsll       $t8,$t8,0x3
    daddu      $s2,$s2,$t8
    ld         $s2,0($s2)
    ld         $a0,2376($s2)
    li         $a1,0x8400
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a0,2376($s2)
    li         $a1,0xf000
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s2)
    li         $a1,128
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a0,2376($s2)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    ld         $a0,2376($s2)
    li         $a1,0xe500
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a0,2376($s2)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    lw         $a1,0($s0)
    addiu      $s1,$s1,1
    slt        $a1,$s1,$a1
    bnez       $a1, .L000014b4
    dsll       $t8,$s1,0x4
.L00001540:
    lw         $a6,0($gp)
.L00001544:
    ld         $s5,56($sp)
    move       $s1,$zero
    blez       $a6, .L00001580
    ld         $s4,40($sp)
    ld         $a4,0($gp)
.L00001558:
    lw         $a2,4($s0)
.L0000155c:
    dsll       $s2,$s1,0x3
    daddu      $s2,$a4,$s2
    ld         $s2,0($s2)
    lw         $a3,5496($s2)
    beq        $a3, $a2, .L0000159c
    addiu      $a5,$s1,1
    slt        $t8,$a5,$a6
    bnez       $t8, .L0000155c
    move       $s1,$a5
.L00001580:
    ld         $a0,0($sp)
.L00001584:
    jal        kmem_free
    dsll       $a1,$a6,0x3
    ld         $s2,64($sp)
    ld         $ra,48($sp)
    b          .L000012a4
    move       $v0,$zero
.L0000159c:
    ld         $a1,0($sp)
    dsll       $a2,$s1,0x2
    daddu      $a1,$a1,$a2
    daddiu     $a0,$s2,3520
    jal        mutex_spinunlock
    lw         $a1,0($a1)
    lw         $a6,0($gp)
    addiu      $s1,$s1,1
    slt        $a3,$s1,$a6
    bnez       $a3, .L00001558
    ld         $a4,0($gp)
    b          .L00001584
    ld         $a0,0($sp)
.L000015d0:
    jal        mutex_spinlock
    daddiu     $a0,$s2,3520
    ld         $a3,0($sp)
    dsll       $a4,$s1,0x2
    daddu      $a3,$a3,$a4
    sw         $v0,0($a3)
    ld         $a0,2376($s2)
    li         $a1,0xe300
    li         $a2,-1
    sw         $a2,5500($s2)
    jal        gfx_pio_write_32
    daddu      $a0,$s4,$a0
    ld         $a0,2376($s2)
    move       $a1,$zero
    jal        gfx_pio_write_32
    daddu      $a0,$s5,$a0
    lw         $a6,0($gp)
    addiu      $s1,$s1,1
    slt        $a1,$s1,$a6
    bnez       $a1, .L00001330
    ld         $a4,0($gp)
    b          .L0000135c
    lw         $a1,8($s0)

glabel kona_nclops_query_config
    lw         $t0,8($a1)
    li         $v0,1
    li         $v1,1
    slti       $a4,$t0,64
    dsll       $a7,$t0,0x2
    bltz       $t0, .L000016e8
    dsubu      $a5,$a7,$t0
    beqz       $a4, .L000016e8
    dsll       $a6,$a5,0x4
    daddu      $a6,$a0,$a6
    lw         $at,0($a6)
    bne        $at, $v1, .L000016e8
    nop
    ld         $a0,8($a6)
    move       $a4,$zero
    beqz       $a0, .L000016f0
    move       $v0,$a0
.L00001670:
    ld         $v0,5488($v0)
    beq        $a0, $v0, .L00001698
    addiu      $a4,$a4,1
    beqz       $v0, .L00001698
    nop
    ld         $v0,5488($v0)
    beq        $a0, $v0, .L00001698
    addiu      $a4,$a4,1
    bnez       $v0, .L00001670
    nop
.L00001698:
    sw         $a4,0($a1)
    move       $a0,$zero
    blez       $a4, .L000016e0
    ld         $v0,8($a6)
.L000016a8:
    dsll       $t1,$a0,0x4
    daddu      $t1,$a1,$t1
    lw         $t8,2184($v0)
    sw         $t8,24($t1)
    lw         $t3,5520($v0)
    sw         $t3,12($t1)
    lw         $t2,5524($v0)
    addiu      $a0,$a0,1
    sw         $t2,16($t1)
    slt        $a7,$a0,$a4
    lw         $t0,5528($v0)
    sw         $t0,20($t1)
    bnez       $a7, .L000016a8
    ld         $v0,5488($v0)
.L000016e0:
    jr         $ra
    move       $v0,$zero
.L000016e8:
    jr         $ra
    nop
.L000016f0:
    jr         $ra
    li         $v0,1

glabel kona_nclops_bind
    ld         $a6,112($a2)
    daddiu     $sp,$sp,-80
    slti       $v0,$a1,65
    sd         $s0,40($sp)
    move       $s0,$a1
    sd         $s1,32($sp)
    bltz       $a1, .L00001754
    move       $s1,$a3
    beqz       $v0, .L00001754
    li         $v1,1
    dsll       $at,$a1,0x2
    dsubu      $at,$at,$a1
    dsll       $at,$at,0x4
    daddu      $at,$a0,$at
    lw         $at,0($at)
    sd         $a6,24($sp)
    li         $v0,1
    beq        $at, $v1, .L0000175c
    sd         $ra,72($sp)
.L00001744:
    ld         $s1,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001754:
    b          .L00001744
    li         $v0,1
.L0000175c:
    daddiu     $a0,$a3,3520
    jal        mutex_spinlock
    sd         $a0,56($sp)
    lw         $a3,5516($s1)
    beqz       $a3, .L00001788
    ld         $a0,56($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $ra,72($sp)
    b          .L00001744
    li         $v0,1
.L00001788:
    sw         $s0,5500($s1)
    addiu      $a1,$a3,1
    sw         $a1,5516($s1)
    lw         $v1,3528($s1)
    sw         $v1,5508($s1)
    move       $a1,$v0
    jal        mutex_spinunlock
    sw         $v1,5504($s1)
    lw         $a2,5500($s1)
    dsll       $a1,$a2,0x2
    ld         $a0,5480($s1)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x4
    daddu      $a0,$a0,$a1
    sd         $a0,64($sp)
    daddiu     $a0,$a0,16
    jal        mutex_spinlock
    sd         $a0,16($sp)
    ld         $s1,64($sp)
    lw         $a3,44($s1)
    move       $a1,$v0
    ld         $a0,16($sp)
    addiu      $a3,$a3,1
    jal        mutex_spinunlock
    sw         $a3,44($s1)
    lw         $a5,44($s1)
    lw         $a4,40($s1)
    beq        $a4, $a5, .L0000180c
    ld         $a6,24($sp)
.L000017fc:
    ld         $ra,72($sp)
    move       $v0,$zero
    b          .L00001744
    sh         $s0,248($a6)
.L0000180c:
    ld         $a0,8($s1)
    sd         $a0,48($sp)
    daddiu     $a0,$a0,3520
    jal        mutex_spinlock
    sd         $a0,0($sp)
    ld         $s1,48($sp)
    lui        $a2,0x80
    ld         $a0,2376($s1)
    li         $a1,0xe300
    ori        $a2,$a2,0x3c0
    sd         $v0,8($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,2376($s1)
    lui        $a2,0x80
    li         $a1,1
    ori        $a2,$a2,0x3d0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,0($sp)
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    b          .L000017fc
    ld         $a6,24($sp)

glabel kona_nclops_unbind
    ld         $a6,112($a2)
    slti       $v0,$a1,65
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    bltz       $a1, .L000018b4
    move       $s0,$a3
    beqz       $v0, .L000018b4
    dsll       $at,$a1,0x2
    dsubu      $at,$at,$a1
    dsll       $at,$at,0x4
    daddu      $at,$a0,$at
    lw         $at,0($at)
    li         $v0,1
    beq        $at, $v0, .L000018bc
    li         $v0,1
.L000018a8:
    ld         $s0,0($sp)
.L000018ac:
    jr         $ra
    daddiu     $sp,$sp,48
.L000018b4:
    b          .L000018a8
    li         $v0,1
.L000018bc:
    lw         $v1,5500($a3)
    sd         $a6,32($sp)
    li         $v0,1
    beq        $v1, $a1, .L000018d8
    sd         $ra,40($sp)
    b          .L000018ac
    ld         $s0,0($sp)
.L000018d8:
    daddiu     $a0,$a3,3520
    jal        mutex_spinlock
    sd         $a0,8($sp)
    lw         $a3,5516($s0)
    move       $a1,$v0
    ld         $a0,8($sp)
    blez       $a3, .L000018fc
    addiu      $a3,$a3,-1
    sw         $a3,5516($s0)
.L000018fc:
    jal        mutex_spinunlock
    nop
    lw         $a2,5500($s0)
    dsll       $a1,$a2,0x2
    ld         $a0,5480($s0)
    dsubu      $a1,$a1,$a2
    dsll       $a1,$a1,0x4
    daddu      $a0,$a0,$a1
    sd         $a0,24($sp)
    daddiu     $a0,$a0,16
    jal        mutex_spinlock
    sd         $a0,16($sp)
    ld         $a3,24($sp)
    lw         $a4,44($a3)
    ld         $a0,16($sp)
    beqz       $a4, .L0000194c
    move       $a1,$v0
    lw         $a5,44($a3)
    addiu      $a5,$a5,-1
    sw         $a5,44($a3)
.L0000194c:
    jal        mutex_spinunlock
    ld         $s0,32($sp)
    ld         $ra,40($sp)
    li         $a6,-1
    sh         $a6,248($s0)
    b          .L000018a8
    move       $v0,$zero

glabel kona_nclops_swapped
    daddiu     $sp,$sp,-64
    sd         $s3,32($sp)
    lw         $a4,5500($a0)
    sd         $s1,40($sp)
    li         $a5,-1
    sd         $s0,16($sp)
    move       $s0,$a0
    beq        $a4, $a5, .L00001a28
    sd         $ra,48($sp)
    ld         $v0,5488($a0)
    beqz       $v0, .L00001a2c
    ld         $ra,48($sp)
    lw         $at,5500($v0)
    beq        $at, $a5, .L00001a2c
    ld         $ra,48($sp)
    lw         $t8,5508($a0)
    dsll       $s3,$a4,0x2
    ld         $s1,5480($a0)
    dsubu      $s3,$s3,$a4
    sw         $a1,5508($a0)
    dsll       $s3,$s3,0x4
    sw         $t8,5504($a0)
    daddu      $s1,$s1,$s3
    ld         $s3,8($s1)
    daddiu     $a0,$s1,16
    jal        mutex_spinlock
    sd         $a0,24($sp)
    lw         $t8,40($s1)
    lw         $a4,20($s1)
    addiu      $t8,$t8,-1
    bne        $a4, $t8, .L00001a40
    ld         $a0,24($sp)
    sw         $zero,20($s1)
    jal        mutex_spinunlock
    move       $a1,$v0
    lw         $t9,44($s1)
    blez       $t9, .L00001a2c
    ld         $ra,48($sp)
    bne        $s0, $s3, .L00001a6c
    sd         $s2,56($sp)
.L00001a08:
    ld         $s2,8($s1)
    lw         $at,5508($s2)
    lw         $ra,5504($s2)
    slt        $ra,$ra,$at
    bnez       $ra, .L00001a7c
    nop
.L00001a20:
    bne        $s0, $s3, .L00001a58
    ld         $s2,56($sp)
.L00001a28:
    ld         $ra,48($sp)
.L00001a2c:
    ld         $s0,16($sp)
    ld         $s1,40($sp)
    ld         $s3,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001a40:
    addiu      $v1,$a4,1
    sw         $v1,20($s1)
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L00001a2c
    ld         $ra,48($sp)
.L00001a58:
    lw         $a1,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$s3,3520
    b          .L00001a2c
    ld         $ra,48($sp)
.L00001a6c:
    jal        mutex_spinlock
    daddiu     $a0,$s3,3520
    b          .L00001a08
    sw         $v0,0($sp)
.L00001a7c:
    ld         $a2,2376($s2)
    lui        $a0,0x80
    li         $a1,0xe300
    ld         $a3,5488($s2)
    ori        $a0,$a0,0x3c0
    sd         $a3,8($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a1,2376($s2)
    lui        $a0,0x80
    ori        $a0,$a0,0x3d0
    daddu      $a0,$a0,$a1
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $a2,2376($s2)
    lui        $a0,0x80
    li         $a1,0xe500
    ori        $a0,$a0,0x3c0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a1,2376($s2)
    lui        $a0,0x80
    ori        $a0,$a0,0x3d0
    daddu      $a0,$a0,$a1
    jal        gfx_pio_write_32
    move       $a1,$zero
    ld         $v0,5488($s2)
    bne        $v0, $s0, .L00001b48
.L00001aec:
    ld         $a2,8($sp)
    lui        $a0,0x80
    ld         $a2,2376($a2)
    li         $a1,0xe300
    ori        $a0,$a0,0x3c0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a2,8($sp)
    lui        $a0,0x80
    ld         $a2,2376($a2)
    li         $a1,1
    ori        $a0,$a0,0x3d0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a3,5488($s2)
    sd         $a3,8($s1)
    ld         $v0,5488($s2)
    beq        $v0, $s0, .L00001a20
    lw         $a1,4($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$v0,3520
    b          .L00001a20
    nop
.L00001b48:
    jal        mutex_spinlock
    daddiu     $a0,$v0,3520
    b          .L00001aec
    sw         $v0,4($sp)

glabel kona_nclops_destroy
    daddiu     $sp,$sp,-80
    sd         $s8,0($sp)
    dsll       $s8,$a1,0x2
    dsubu      $s8,$s8,$a1
    dsll       $s8,$s8,0x4
    daddu      $s8,$a0,$s8
    lw         $at,44($s8)
    li         $v0,1
    sd         $s5,8($sp)
    beqz       $at, .L00001b94
    move       $s5,$a1
.L00001b84:
    ld         $s8,0($sp)
.L00001b88:
    ld         $s5,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001b94:
    lw         $at,0($s8)
    li         $v1,1
    sd         $s3,64($sp)
    li         $v0,1
    beq        $at, $v1, .L00001bb4
    sd         $s2,72($sp)
    b          .L00001b88
    ld         $s8,0($sp)
.L00001bb4:
    sd         $ra,16($sp)
    sd         $s7,24($sp)
    sd         $s0,40($sp)
    lw         $v0,0($gp)
    sd         $s4,48($sp)
    lui        $a0,0x80
    sd         $s1,32($sp)
    move       $s1,$zero
    ori        $s2,$a0,0x3c0
    sd         $s6,56($sp)
    blez       $v0, .L00001cf8
    ori        $s3,$a0,0x3d0
    b          .L00001d3c
    ld         $s0,0($gp)
.L00001bec:
    beqz       $a4, .L00001c20
    nop
.L00001bf4:
    ld         $a0,2376($s0)
    li         $a1,0xe200
    addiu      $s4,$s4,1
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$s3,$a0
    andi       $a1,$v0,0x2
    beqz       $a1, .L00001bec
    slti       $a4,$s4,10000
.L00001c20:
    sd         $zero,5488($s0)
    move       $a0,$s6
    li         $s4,-1
    sw         $s4,5500($s0)
    jal        mutex_spinunlock
    move       $a1,$s7
    lw         $v0,0($gp)
.L00001c3c:
    addiu      $s1,$s1,1
    slt        $a2,$s1,$v0
    ld         $s0,0($gp)
    beqz       $a2, .L00001cf8
    dsll       $t8,$s1,0x3
    daddu      $s0,$s0,$t8
.L00001c54:
    ld         $s0,0($s0)
    lw         $a3,5496($s0)
    bne        $a3, $s5, .L00001c3c
    daddiu     $s6,$s0,3520
    jal        mutex_spinlock
    move       $a0,$s6
    ld         $a0,2376($s0)
    move       $s7,$v0
    li         $a1,128
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    ld         $a0,2376($s0)
    li         $a1,0x8400
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    li         $a1,28672
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    ld         $a0,2376($s0)
    li         $a1,0xe300
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    ld         $a0,2376($s0)
    li         $a1,0xe500
    jal        gfx_pio_write_32
    daddu      $a0,$s2,$a0
    ld         $a0,2376($s0)
    li         $a1,1
    jal        gfx_pio_write_32
    daddu      $a0,$s3,$a0
    b          .L00001bf4
    move       $s4,$zero
.L00001cf8:
    ld         $s2,72($sp)
    ld         $s3,64($sp)
    ld         $s6,56($sp)
    ld         $s4,48($sp)
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    daddiu     $s5,$s8,16
    ld         $s7,24($sp)
    jal        mutex_spinlock
    move       $a0,$s5
    move       $a1,$v0
    sw         $zero,0($s8)
    jal        mutex_spinunlock
    move       $a0,$s5
    ld         $ra,16($sp)
    b          .L00001b84
    move       $v0,$zero
.L00001d3c:
    dsll       $t8,$s1,0x3
    b          .L00001c54
    daddu      $s0,$s0,$t8

glabel kona_nclops_cleanup
    ld         $v0,112($a1)
    lh         $at,248($v0)
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    move       $s0,$a0
    bltz       $at, .L00001df0
    sd         $ra,32($sp)
    li         $v1,-1
    sh         $v1,248($v0)
    daddiu     $a0,$a0,3520
    jal        mutex_spinlock
    sd         $a0,24($sp)
    lw         $a4,5516($s0)
    ld         $a0,24($sp)
    move       $a1,$v0
    sd         $a4,0($sp)
    blez       $a4, .L00001d94
    addiu      $a4,$a4,-1
    sw         $a4,5516($s0)
.L00001d94:
    jal        mutex_spinunlock
    nop
    ld         $a5,0($sp)
    blez       $a5, .L00001df0
    sd         $s1,40($sp)
    lw         $t9,5500($s0)
    dsll       $t8,$t9,0x2
    ld         $s1,5480($s0)
    dsubu      $t8,$t8,$t9
    dsll       $t8,$t8,0x4
    daddu      $s1,$s1,$t8
    daddiu     $a0,$s1,16
    jal        mutex_spinlock
    sd         $a0,16($sp)
    lw         $ra,44($s1)
    ld         $a0,16($sp)
    blez       $ra, .L00001de8
    move       $a1,$v0
    lw         $at,44($s1)
    addiu      $at,$at,-1
    sw         $at,44($s1)
.L00001de8:
    jal        mutex_spinunlock
    ld         $s1,40($sp)
.L00001df0:
    ld         $ra,32($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel kona_nclops_init
    ld         $at,5480($a0)
    daddiu     $sp,$sp,-16
    move       $a3,$a0
    bnez       $at, .L00001e20
    sd         $ra,0($sp)
.L00001e18:
    jr         $ra
    daddiu     $sp,$sp,16
.L00001e20:
    li         $a1,64
    jal        bzero
    daddiu     $a0,$a0,5480
    b          .L00001e18
    ld         $ra,0($sp)
