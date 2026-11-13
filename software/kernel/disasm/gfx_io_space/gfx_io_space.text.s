.section .text
.set noat
.set noreorder


glabel grow_chunk_pool
    move       $a1,$zero
    daddiu     $sp,$sp,-16
    move       $a2,$zero
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $ra,0($sp)
    jal        kvpalloc
    li         $a0,1
    ld         $ra,0($sp)
    sd         $v0,64($s0)
    li         $a3,-1
    move       $a2,$zero
    sd         $v0,56($s0)
    dsrl32     $a3,$a3,0x0
.L00000038:
    dsll       $a6,$a2,0x2
    daddu      $a6,$a6,$a2
    ld         $t3,64($s0)
    dsll       $a6,$a6,0x3
    daddu      $t3,$t3,$a6
    sd         $a3,0($t3)
    ld         $t2,64($s0)
    daddu      $t2,$t2,$a6
    sd         $a3,8($t2)
    ld         $t1,64($s0)
    daddu      $t1,$t1,$a6
    daddiu     $t0,$t1,40
    sd         $t0,32($t1)
    ld         $a7,64($s0)
    daddu      $a7,$a7,$a6
    sd         $a3,16($a7)
    addiu      $a2,$a2,1
    ld         $a4,64($s0)
    sltiu      $a5,$a2,409
    daddu      $a4,$a4,$a6
    bnez       $a5, .L00000038
    sd         $a3,24($a4)
    ld         $a7,64($s0)
    ld         $s0,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    sd         $zero,16352($a7)

glabel get_chunk
    ld         $v0,64($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $v0, .L000000d4
    sd         $ra,8($sp)
.L000000bc:
    ld         $at,32($v0)
    sd         $at,64($s0)
    sd         $zero,32($v0)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000000d4:
    jal        grow_chunk_pool
    nop
    ld         $ra,8($sp)
    b          .L000000bc
    ld         $v0,64($s0)

glabel free_chunk
    li         $v0,-1
    dsrl32     $v0,$v0,0x0
    sd         $v0,16($a1)
    sd         $v0,8($a1)
    sd         $v0,0($a1)
    ld         $at,64($a0)
    sd         $at,32($a1)
    jr         $ra
    sd         $a1,64($a0)

glabel init_chunks
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        grow_chunk_pool
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel init_gfx_io_space
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    ld         $a3,-30720($gp)
    sd         $s5,0($sp)
    move       $s5,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    beqz       $a3, .L00000204
    sd         $ra,24($sp)
.L0000014c:
    dsll32     $t8,$s5,0x0
    dsrl       $s1,$t8,0x1e
    dsrl32     $t8,$t8,0x0
    dsubu      $s1,$s1,$t8
    dsll       $s1,$s1,0x2
    dsubu      $s1,$s1,$t8
    dsll       $s1,$s1,0x3
    daddu      $s1,$a3,$s1
    ld         $a3,0($s0)
    sd         $a3,0($s1)
    ld         $a2,8($s0)
    sd         $a2,8($s1)
    ld         $a1,16($s0)
    sd         $a1,16($s1)
    ld         $a0,24($s0)
    sd         $a0,24($s1)
    ld         $v1,32($s0)
    sd         $v1,32($s1)
    ld         $v0,40($s0)
    sd         $v0,40($s1)
    ld         $at,48($s0)
    move       $a0,$s1
    jal        init_chunks
    sd         $at,48($s1)
    ld         $s5,0($sp)
    jal        get_chunk
    move       $a0,$s1
    sd         $v0,72($s1)
    sd         $zero,0($v0)
    ld         $v1,72($s1)
    lwu        $v0,0($s0)
    sd         $v0,8($v1)
    ld         $at,72($s1)
    sd         $zero,32($at)
    ld         $v0,72($s1)
    ld         $s0,16($sp)
    li         $t9,-1
    dsrl32     $t9,$t9,0x0
    sd         $t9,16($v0)
    ld         $at,72($s1)
    ld         $ra,24($sp)
    sd         $t9,24($at)
    sd         $zero,80($s1)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000204:
    lw         $a1,0($gp)
    dsll       $a0,$a1,0x2
    dsubu      $a0,$a0,$a1
    dsll       $a0,$a0,0x2
    dsubu      $a0,$a0,$a1
    jal        kern_malloc
    dsll       $a0,$a0,0x3
    lw         $a2,0($gp)
    dsll       $a1,$a2,0x2
    dsubu      $a1,$a1,$a2
    move       $a0,$v0
    dsll       $a1,$a1,0x2
    sd         $v0,-30720($gp)
    dsubu      $a1,$a1,$a2
    jal        bzero
    dsll       $a1,$a1,0x3
    b          .L0000014c
    ld         $a3,-30720($gp)

glabel alloc_gfx_io_space
    daddiu     $sp,$sp,-80
    dsll32     $at,$a3,0x0
    sd         $s2,48($sp)
    sd         $s7,40($sp)
    dsll32     $s7,$a0,0x0
    daddu      $s2,$a1,$a2
    sd         $s3,56($sp)
    dsrl       $s3,$s7,0x1e
    sd         $s1,24($sp)
    li         $s1,1
    dsrl32     $s7,$s7,0x0
    sllv       $s1,$s1,$a3
    dsubu      $s3,$s3,$s7
    addiu      $s1,$s1,-1
    dsll       $s3,$s3,0x2
    sd         $s0,64($sp)
    dsubu      $s3,$s3,$s7
    and        $s7,$s1,$a1
    daddiu     $s2,$s2,-1
    sd         $s7,8($sp)
    nor        $s7,$s7,$zero
    sd         $ra,72($sp)
    or         $s1,$s1,$s2
    and        $s7,$a1,$s7
    sd         $s5,32($sp)
    dsrl32     $at,$at,0x0
    dsubu      $s1,$s1,$s7
    ld         $s2,-30720($gp)
    dsll       $s3,$s3,0x3
    daddiu     $s1,$s1,1
    move       $s5,$a3
    sd         $at,16($sp)
    dsrlv      $s1,$s1,$at
    daddu      $s2,$s2,$s3
    dsllv      $at,$s1,$at
    sd         $at,0($sp)
.L000002dc:
    ld         $s0,72($s2)
    beqz       $s0, .L00000320
    move       $s3,$zero
    ld         $t8,8($s0)
    sltu       $t8,$t8,$s1
    beqz       $t8, .L00000324
    nop
.L000002f8:
    ld         $a0,32($s0)
    move       $s3,$s0
    beqz       $a0, .L00000324
    move       $s0,$a0
    ld         $t9,8($a0)
    sltu       $t9,$t9,$s1
    bnez       $t9, .L000002f8
    nop
    b          .L00000324
    nop
.L00000320:
    move       $s3,$zero
.L00000324:
    bnez       $s0, .L00000344
    nop
    ld         $at,24($s2)
    ld         $a1,0($sp)
    jalr       $at
    ld         $a0,48($s2)
    beqz       $s0, .L000002dc
    nop
.L00000344:
    ld         $v0,8($s0)
    bne        $v0, $s1, .L000003dc
    nop
    beqz       $s3, .L0000041c
    ld         $a0,32($s0)
    sd         $a0,32($s3)
.L0000035c:
    ld         $v1,80($s2)
    sd         $v1,32($s0)
    move       $s3,$s0
    sd         $s0,80($s2)
.L0000036c:
    ld         $a0,8($s2)
    ld         $s0,64($sp)
    move       $a4,$s5
    move       $a3,$s1
    ld         $a2,0($s3)
    move       $a1,$s7
    move       $t9, $a0
    jalr       $t9
    ld         $a0,48($s2)
    ld         $s1,24($sp)
    ld         $a4,16($sp)
    ld         $a3,0($s3)
    ld         $a2,8($sp)
    sd         $v0,24($s3)
    dsllv      $a3,$a3,$a4
    daddu      $a2,$a2,$a3
    sd         $a2,16($s3)
    ld         $a1,32($s2)
    ld         $s5,32($sp)
    ld         $s7,40($sp)
    jalr       $a1
    ld         $a0,48($s2)
    ld         $s2,48($sp)
    ld         $ra,72($sp)
    ld         $a5,16($s3)
    ld         $s3,56($sp)
    daddiu     $sp,$sp,80
    jr         $ra
    or         $v0,$a5,$v0
.L000003dc:
    jal        get_chunk
    move       $a0,$s2
    ld         $t1,0($s0)
    sd         $s1,8($v0)
    sd         $t1,0($v0)
    ld         $a7,8($s0)
    ld         $t0,0($s0)
    dsubu      $a7,$a7,$s1
    sd         $a7,8($s0)
    daddu      $t0,$t0,$s1
    sd         $t0,0($s0)
    ld         $a6,80($s2)
    sd         $a6,32($v0)
    move       $s3,$v0
    b          .L0000036c
    sd         $v0,80($s2)
.L0000041c:
    b          .L0000035c
    sd         $a0,72($s2)

glabel free_gfx_io_space
    dsll32     $t9,$a0,0x0
    dsrl       $t8,$t9,0x1e
    dsrl32     $t9,$t9,0x0
    daddiu     $sp,$sp,-48
    dsubu      $t8,$t8,$t9
    sd         $s3,8($sp)
    dsll       $t8,$t8,0x2
    ld         $s3,-30720($gp)
    dsubu      $t8,$t8,$t9
    dsll       $t8,$t8,0x3
    sd         $s0,0($sp)
    daddu      $s3,$s3,$t8
    ld         $s0,80($s3)
    ld         $a2,40($s3)
    sd         $s1,32($sp)
    nor        $a2,$a2,$zero
    sd         $s2,16($sp)
    beqz       $s0, .L000004a0
    and        $a2,$a1,$a2
    ld         $at,16($s0)
    beq        $at, $a2, .L000004a4
    move       $s1,$zero
.L0000047c:
    ld         $a0,32($s0)
    move       $s1,$s0
    beqz       $a0, .L000004a4
    move       $s0,$a0
    ld         $v0,16($a0)
    bne        $v0, $a2, .L0000047c
    nop
    b          .L000004a4
    nop
.L000004a0:
    move       $s1,$zero
.L000004a4:
    beqz       $s0, .L00000684
    sd         $ra,24($sp)
    ld         $v1,16($s3)
    ld         $a1,24($s0)
    jalr       $v1
    ld         $a0,48($s3)
    li         $a1,-1
    ld         $a0,32($s0)
    dsrl32     $a1,$a1,0x0
    beqz       $s1, .L00000604
    sd         $a1,16($s0)
    sd         $a0,32($s1)
.L000004d4:
    sd         $zero,32($s0)
    ld         $a2,72($s3)
    beqz       $a2, .L000005e0
    nop
    ld         $a4,0($s0)
    ld         $a3,0($a2)
    sltu       $a3,$a3,$a4
    beqz       $a3, .L000005c0
    nop
.L000004f8:
    ld         $s1,32($a2)
    move       $s2,$a2
    beqz       $s1, .L00000538
    move       $a2,$s1
    ld         $a5,0($s1)
    sltu       $a5,$a5,$a4
    beqz       $a5, .L00000538
    nop
    move       $s2,$s1
    ld         $s1,32($s1)
    beqz       $s1, .L00000538
    move       $a2,$s1
    ld         $a6,0($s1)
    sltu       $a6,$a6,$a4
    bnez       $a6, .L000004f8
    nop
.L00000538:
    beqz       $s2, .L000005c0
    nop
    ld         $a2,8($s2)
    ld         $a7,0($s2)
    daddu      $a7,$a7,$a2
    beq        $a4, $a7, .L00000634
    nop
    beqz       $s1, .L00000570
    nop
    ld         $t1,8($s0)
    ld         $t0,0($s1)
    daddu      $t1,$t1,$a4
    beq        $t0, $t1, .L0000065c
    nop
.L00000570:
    sd         $s1,32($s0)
    sd         $s0,32($s2)
.L00000578:
    beqz       $s1, .L000005e8
    nop
.L00000580:
    ld         $a2,8($s2)
    ld         $t3,0($s2)
    ld         $t2,0($s1)
    daddu      $t3,$t3,$a2
    bne        $t2, $t3, .L000005e8
    nop
    ld         $t9,8($s1)
    daddu      $t9,$t9,$a2
    sd         $t9,8($s2)
    move       $a0,$s3
    ld         $t8,32($s1)
    move       $a1,$s1
    jal        free_chunk
    sd         $t8,32($s2)
    b          .L000005ec
    ld         $s1,32($sp)
.L000005c0:
    beqz       $a2, .L000005e0
    nop
    ld         $a4,0($s0)
    ld         $at,8($s0)
    ld         $ra,0($a2)
    daddu      $at,$at,$a4
    beq        $ra, $at, .L0000060c
    nop
.L000005e0:
    sd         $a2,32($s0)
    sd         $s0,72($s3)
.L000005e8:
    ld         $s1,32($sp)
.L000005ec:
    ld         $ra,24($sp)
    ld         $s2,16($sp)
    ld         $s0,0($sp)
    ld         $s3,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000604:
    b          .L000004d4
    sd         $a0,80($s3)
.L0000060c:
    ld         $v1,8($a2)
    sd         $a4,0($a2)
    ld         $v0,8($s0)
    move       $a0,$s3
    move       $a1,$s0
    daddu      $v0,$v0,$v1
    jal        free_chunk
    sd         $v0,8($a2)
    b          .L000005ec
    ld         $s1,32($sp)
.L00000634:
    ld         $a0,8($s0)
    move       $a1,$s0
    daddu      $a0,$a0,$a2
    sd         $a0,8($s2)
    jal        free_chunk
    move       $a0,$s3
    bnez       $s1, .L00000580
    nop
    b          .L000005ec
    ld         $s1,32($sp)
.L0000065c:
    sd         $a4,0($s1)
    ld         $a2,8($s0)
    ld         $a1,8($s1)
    move       $a0,$s3
    daddu      $a1,$a1,$a2
    sd         $a1,8($s1)
    jal        free_chunk
    move       $a1,$s0
    b          .L00000578
    nop
.L00000684:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    b          .L000005ec
    ld         $s1,32($sp)
