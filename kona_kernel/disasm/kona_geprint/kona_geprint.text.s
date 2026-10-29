.section .text
.set noat
.set noreorder


glabel kona_geprint
    daddiu     $sp,$sp,-112
    sd         $s0,16($sp)
    sd         $s1,24($sp)
    move       $s1,$a1
    move       $s0,$a1
    sd         $s2,0($sp)
    move       $s2,$a0
    move       $a0,$a1
    ld         $a1,-30720($gp)
    sd         $s5,32($sp)
    move       $s5,$a2
    lw         $a2,0($s2)
    sd         $s3,56($sp)
    daddiu     $a1,$a1,464
    sd         $ra,8($sp)
    jal        sprintf
    andi       $a2,$a2,0x7
    lbu        $a3,0($s1)
    daddiu     $s3,$s2,12
    li         $t1,1
    li         $t3,3
    li         $t2,2
    beqz       $a3, .L000000ac
    lw         $a2,4($s2)
.L00000060:
    lbu        $a4,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a4, .L000000ac
    nop
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L000000ac
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L000000ac
    nop
    lbu        $a7,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a7, .L000000ac
    nop
    lbu        $t0,1($s0)
    bnez       $t0, .L00000060
    daddiu     $s0,$s0,1
.L000000ac:
    sd         $s6,64($sp)
    sd         $s4,72($sp)
    sd         $s7,80($sp)
    sd         $s8,88($sp)
    beq        $a2, $t1, .L0000051c
    sd         $s1,40($sp)
    beq        $a2, $t2, .L000005ac
    nop
    beq        $a2, $t3, .L00000174
    ld         $s7,-30720($gp)
    move       $a0,$s0
    jal        sprintf
    ld         $a1,-30720($gp)
    lbu        $t8,0($s0)
    beqz       $t8, .L0000013c
    ld         $v0,40($sp)
.L000000ec:
    lbu        $t9,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t9, .L00000138
    nop
    lbu        $ra,1($s0)
    daddiu     $s0,$s0,1
    beqz       $ra, .L00000138
    nop
    lbu        $at,1($s0)
    daddiu     $s0,$s0,1
    beqz       $at, .L00000138
    nop
    lbu        $v0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v0, .L00000138
    nop
    lbu        $v1,1($s0)
    bnez       $v1, .L000000ec
    daddiu     $s0,$s0,1
.L00000138:
    ld         $v0,40($sp)
.L0000013c:
    dsubu      $v0,$s0,$v0
    sll        $v0,$v0,0x0
.L00000144:
    ld         $s2,0($sp)
    ld         $s3,56($sp)
    ld         $s6,64($sp)
    ld         $s4,72($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $ra,8($sp)
    ld         $s5,32($sp)
    ld         $s7,80($sp)
    ld         $s8,88($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000174:
    lw         $v1,8($s2)
    sw         $zero,-30716($gp)
    lui        $s6,0x4000
    sd         $s5,96($sp)
    move       $s5,$zero
    blez       $v1, .L00000138
    sd         $v1,48($sp)
    ld         $s8,96($sp)
    lui        $s4,0x8000
    b          .L00000ad8
    daddu      $s8,$s8,$s1
.L000001a0:
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,40
    lbu        $at,0($s0)
    beqz       $at, .L00000208
    lw         $a3,-30716($gp)
.L000001b8:
    lbu        $v0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v0, .L00000204
    nop
    lbu        $v1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v1, .L00000204
    nop
    lbu        $a0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a0, .L00000204
    nop
    lbu        $a1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a1, .L00000204
    nop
    lbu        $a2,1($s0)
    bnez       $a2, .L000001b8
    daddiu     $s0,$s0,1
.L00000204:
    lw         $a3,-30716($gp)
.L00000208:
    ld         $a4,48($sp)
    addiu      $a3,$a3,1
    slt        $a4,$a3,$a4
    daddiu     $s1,$s3,4
    addu       $s5,$s2,$s5
    addiu      $s5,$s5,1
    beqz       $a4, .L00000138
    sw         $a3,-30716($gp)
    daddiu     $a4,$s0,100
.L0000022c:
    sltu       $a4,$s8,$a4
    move       $v0,$zero
    bnez       $a4, .L0000059c
    move       $a0,$s5
    lw         $s2,0($s3)
    li         $t8,1
    addiu      $a2,$s2,6
    addiu      $a3,$s2,3
    blez       $s2, .L00000298
    slt        $a4,$a3,$zero
.L00000254:
    lw         $t2,0($s1)
    daddu      $a6,$a0,$s0
    srl        $t2,$t2,0x18
    sb         $t2,0($a6)
    lw         $t1,0($s1)
    srl        $t1,$t1,0x10
    sb         $t1,1($a6)
    lw         $t0,0($s1)
    addiu      $v0,$v0,4
    slt        $a7,$v0,$s2
    srl        $t0,$t0,0x8
    sb         $t0,2($a6)
    addiu      $a0,$a0,4
    lw         $a5,0($s1)
    daddiu     $s1,$s1,4
    bnez       $a7, .L00000254
    sb         $a5,3($a6)
.L00000298:
    daddu      $s0,$s2,$s0
    movz       $a2,$a3,$a4
    sb         $zero,0($s0)
    sra        $t3,$a2,0x2
    lw         $a0,0($s1)
    daddiu     $s3,$s1,4
    sll        $t3,$t3,0x2
    slt        $t9,$t3,$zero
    andi       $v0,$a0,0x3
    and        $a6,$a0,$s4
    movn       $t3,$zero,$t9
    li         $t9,3
    beq        $v0, $t8, .L00000368
    sw         $t3,-30720($gp)
    li         $t8,2
    beq        $v0, $t8, .L000003ec
    nop
    bne        $v0, $t9, .L000001a0
    nop
    beqz       $a6, .L000004ac
    lw         $a2,4($s1)
    and        $ra,$a0,$s6
    lw         $a3,8($s1)
    beqz       $ra, .L00000470
    lw         $a4,12($s1)
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,80
    lbu        $at,0($s0)
.L0000030c:
    beqz       $at, .L00000360
    daddiu     $s3,$s1,16
.L00000314:
    lbu        $v0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v0, .L00000360
    nop
    lbu        $v1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v1, .L00000360
    nop
    lbu        $a0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a0, .L00000360
    nop
    lbu        $a1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a1, .L00000360
    nop
    lbu        $a2,1($s0)
    bnez       $a2, .L00000314
    daddiu     $s0,$s0,1
.L00000360:
    b          .L00000208
    lw         $a3,-30716($gp)
.L00000368:
    lw         $a2,4($s1)
    beqz       $a6, .L0000087c
    and        $v0,$a0,$s6
    lw         $a4,12($s1)
    beqz       $v0, .L00000484
    lw         $a3,8($s1)
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,208
.L0000038c:
    lbu        $a4,0($s0)
    beqz       $a4, .L000003e4
    daddiu     $s3,$s1,16
.L00000398:
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L000003e4
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L000003e4
    nop
    lbu        $a7,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a7, .L000003e4
    nop
    lbu        $t0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t0, .L000003e4
    nop
    lbu        $t1,1($s0)
    bnez       $t1, .L00000398
    daddiu     $s0,$s0,1
.L000003e4:
    b          .L00000208
    lw         $a3,-30716($gp)
.L000003ec:
    lw         $a2,4($s1)
    beqz       $a6, .L000008ec
    and        $v0,$a0,$s6
    lw         $a4,12($s1)
    beqz       $v0, .L00000498
    lw         $a3,8($s1)
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,160
.L00000410:
    lbu        $t3,0($s0)
    beqz       $t3, .L00000468
    daddiu     $s3,$s1,16
.L0000041c:
    lbu        $t8,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t8, .L00000468
    nop
    lbu        $t9,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t9, .L00000468
    nop
    lbu        $ra,1($s0)
    daddiu     $s0,$s0,1
    beqz       $ra, .L00000468
    nop
    lbu        $at,1($s0)
    daddiu     $s0,$s0,1
    beqz       $at, .L00000468
    nop
    lbu        $v0,1($s0)
    bnez       $v0, .L0000041c
    daddiu     $s0,$s0,1
.L00000468:
    b          .L00000208
    lw         $a3,-30716($gp)
.L00000470:
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,112
    b          .L0000030c
    lbu        $at,0($s0)
.L00000484:
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,240
    b          .L0000038c
    nop
.L00000498:
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,184
    b          .L00000410
    nop
.L000004ac:
    daddiu     $s3,$s1,8
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,144
    lbu        $v1,0($s0)
    beqz       $v1, .L00000208
    lw         $a3,-30716($gp)
.L000004c8:
    lbu        $a0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a0, .L00000514
    nop
    lbu        $a1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a1, .L00000514
    nop
    lbu        $a2,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a2, .L00000514
    nop
    lbu        $a3,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a3, .L00000514
    nop
    lbu        $a4,1($s0)
    bnez       $a4, .L000004c8
    daddiu     $s0,$s0,1
.L00000514:
    b          .L00000208
    lw         $a3,-30716($gp)
.L0000051c:
    lw         $a0,12($s2)
    daddiu     $s2,$s2,16
    daddu      $a3,$s5,$s1
    blez       $a0, .L00000ad0
    move       $v0,$zero
    daddiu     $a2,$s0,100
    sltu       $a2,$a3,$a2
.L00000538:
    bnez       $a2, .L00000590
    nop
    lw         $t0,0($s2)
    daddu      $a4,$v0,$s0
    srl        $t0,$t0,0x18
    sb         $t0,0($a4)
    lw         $a7,0($s2)
    srl        $a7,$a7,0x10
    sb         $a7,1($a4)
    lw         $a6,0($s2)
    addiu      $v0,$v0,4
    slt        $a5,$v0,$a0
    srl        $a6,$a6,0x8
    sb         $a6,2($a4)
    lw         $a3,0($s2)
    daddiu     $s2,$s2,4
    bnez       $a5, .L00000538
    sb         $a3,3($a4)
    sw         $v0,-30720($gp)
.L00000584:
    daddu      $s0,$a0,$s0
    b          .L00000138
    sb         $zero,0($s0)
.L00000590:
    sw         $v0,-30720($gp)
    daddu      $s0,$a0,$s0
    sb         $zero,0($s0)
.L0000059c:
    ld         $v0,40($sp)
    dsubu      $v0,$v0,$s0
    b          .L00000144
    sll        $v0,$v0,0x0
.L000005ac:
    lw         $v1,8($s2)
    sw         $zero,-30720($gp)
    ld         $s7,-30720($gp)
    lui        $s4,0x8000
    lui        $s6,0x4000
    daddiu     $s1,$s2,12
    blez       $v1, .L00000138
    sd         $v1,48($sp)
    ld         $s8,40($sp)
    b          .L00000654
    daddu      $s8,$s5,$s8
.L000005d8:
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,288
    lbu        $ra,0($s0)
    beqz       $ra, .L00000640
    lw         $a2,-30720($gp)
.L000005f0:
    lbu        $at,1($s0)
    daddiu     $s0,$s0,1
    beqz       $at, .L0000063c
    nop
    lbu        $v0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v0, .L0000063c
    nop
    lbu        $v1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v1, .L0000063c
    nop
    lbu        $a0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a0, .L0000063c
    nop
    lbu        $a1,1($s0)
    bnez       $a1, .L000005f0
    daddiu     $s0,$s0,1
.L0000063c:
    lw         $a2,-30720($gp)
.L00000640:
    ld         $a3,48($sp)
    addiu      $a2,$a2,1
    slt        $a3,$a2,$a3
    beqz       $a3, .L00000138
    sw         $a2,-30720($gp)
.L00000654:
    daddiu     $a3,$s0,100
    sltu       $a3,$s8,$a3
    li         $a4,1
    bnez       $a3, .L0000059c
    li         $a5,2
    lw         $a2,0($s1)
    daddiu     $s1,$s1,4
    andi       $v0,$a2,0x3
    and        $a6,$a2,$s6
    and        $a0,$a2,$s4
    beq        $v0, $a4, .L00000724
    and        $a3,$a2,$s4
    beq        $v0, $a5, .L000007ac
    nop
    li         $a6,3
    bne        $v0, $a6, .L000005d8
    nop
    beqz       $a0, .L00000960
    nop
    lw         $a4,8($s1)
    and        $a7,$a2,$s6
    lw         $a3,4($s1)
    beqz       $a7, .L00000834
    lw         $v0,0($s1)
    move       $a0,$s0
    daddiu     $a1,$s7,320
    jal        sprintf
    move       $a2,$v0
    lbu        $t0,0($s0)
.L000006c8:
    beqz       $t0, .L0000071c
    daddiu     $s1,$s1,12
.L000006d0:
    lbu        $t1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t1, .L0000071c
    nop
    lbu        $t2,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t2, .L0000071c
    nop
    lbu        $t3,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t3, .L0000071c
    nop
    lbu        $t8,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t8, .L0000071c
    nop
    lbu        $t9,1($s0)
    bnez       $t9, .L000006d0
    daddiu     $s0,$s0,1
.L0000071c:
    b          .L00000640
    lw         $a2,-30720($gp)
.L00000724:
    beqz       $a3, .L000009dc
    daddiu     $a2,$s1,4
    lw         $a4,8($s1)
    lw         $a3,4($s1)
    beqz       $a6, .L0000084c
    lw         $v0,0($s1)
    move       $a0,$s0
    daddiu     $a1,$s7,416
    jal        sprintf
    move       $a2,$v0
    lbu        $ra,0($s0)
.L00000750:
    beqz       $ra, .L000007a4
    daddiu     $s1,$s1,12
.L00000758:
    lbu        $at,1($s0)
    daddiu     $s0,$s0,1
    beqz       $at, .L000007a4
    nop
    lbu        $v0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v0, .L000007a4
    nop
    lbu        $v1,1($s0)
    daddiu     $s0,$s0,1
    beqz       $v1, .L000007a4
    nop
    lbu        $a0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a0, .L000007a4
    nop
    lbu        $a1,1($s0)
    bnez       $a1, .L00000758
    daddiu     $s0,$s0,1
.L000007a4:
    b          .L00000640
    lw         $a2,-30720($gp)
.L000007ac:
    beqz       $a3, .L00000a54
    move       $a0,$a6
    lw         $a4,8($s1)
    lw         $a3,4($s1)
    beqz       $a6, .L00000864
    lw         $v0,0($s1)
    move       $a0,$s0
    daddiu     $a1,$s7,368
    jal        sprintf
    move       $a2,$v0
    lbu        $a4,0($s0)
.L000007d8:
    beqz       $a4, .L0000082c
    daddiu     $s1,$s1,12
.L000007e0:
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L0000082c
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L0000082c
    nop
    lbu        $a7,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a7, .L0000082c
    nop
    lbu        $t0,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t0, .L0000082c
    nop
    lbu        $t1,1($s0)
    bnez       $t1, .L000007e0
    daddiu     $s0,$s0,1
.L0000082c:
    b          .L00000640
    lw         $a2,-30720($gp)
.L00000834:
    move       $a0,$s0
    daddiu     $a1,$s7,344
    jal        sprintf
    move       $a2,$v0
    b          .L000006c8
    lbu        $t0,0($s0)
.L0000084c:
    move       $a0,$s0
    daddiu     $a1,$s7,440
    jal        sprintf
    move       $a2,$v0
    b          .L00000750
    lbu        $ra,0($s0)
.L00000864:
    move       $a0,$s0
    daddiu     $a1,$s7,392
    jal        sprintf
    move       $a2,$v0
    b          .L000007d8
    lbu        $a4,0($s0)
.L0000087c:
    daddiu     $s3,$s1,8
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$s7,272
    lbu        $t2,0($s0)
    beqz       $t2, .L00000208
    lw         $a3,-30716($gp)
.L00000898:
    lbu        $t3,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t3, .L000008e4
    nop
    lbu        $t8,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t8, .L000008e4
    nop
    lbu        $t9,1($s0)
    daddiu     $s0,$s0,1
    beqz       $t9, .L000008e4
    nop
    lbu        $ra,1($s0)
    daddiu     $s0,$s0,1
    beqz       $ra, .L000008e4
    nop
    lbu        $at,1($s0)
    bnez       $at, .L00000898
    daddiu     $s0,$s0,1
.L000008e4:
    b          .L00000208
    lw         $a3,-30716($gp)
.L000008ec:
    ld         $a1,-30720($gp)
    daddiu     $s3,$s1,8
    move       $a0,$s0
    jal        sprintf
    daddiu     $a1,$a1,472
    lbu        $a2,0($s0)
    beqz       $a2, .L00000208
    lw         $a3,-30716($gp)
.L0000090c:
    lbu        $a3,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a3, .L00000958
    nop
    lbu        $a4,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a4, .L00000958
    nop
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L00000958
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L00000958
    nop
    lbu        $a7,1($s0)
    bnez       $a7, .L0000090c
    daddiu     $s0,$s0,1
.L00000958:
    b          .L00000208
    lw         $a3,-30716($gp)
.L00000960:
    daddiu     $a2,$s1,4
    ld         $a1,-30720($gp)
    move       $a0,$s0
    move       $s1,$a2
    lw         $a2,-4($a2)
    jal        sprintf
    daddiu     $a1,$a1,480
    lbu        $a3,0($s0)
    beqz       $a3, .L00000640
    lw         $a2,-30720($gp)
.L00000988:
    lbu        $a4,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a4, .L000009d4
    nop
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L000009d4
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L000009d4
    nop
    lbu        $a7,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a7, .L000009d4
    nop
    lbu        $t0,1($s0)
    bnez       $t0, .L00000988
    daddiu     $s0,$s0,1
.L000009d4:
    b          .L00000640
    lw         $a2,-30720($gp)
.L000009dc:
    ld         $a1,-30720($gp)
    move       $a0,$s0
    move       $s1,$a2
    lw         $a2,-4($a2)
    jal        sprintf
    daddiu     $a1,$a1,496
    lbu        $a3,0($s0)
    beqz       $a3, .L00000640
    lw         $a2,-30720($gp)
.L00000a00:
    lbu        $a4,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a4, .L00000a4c
    nop
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L00000a4c
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L00000a4c
    nop
    lbu        $a7,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a7, .L00000a4c
    nop
    lbu        $t0,1($s0)
    bnez       $t0, .L00000a00
    daddiu     $s0,$s0,1
.L00000a4c:
    b          .L00000640
    lw         $a2,-30720($gp)
.L00000a54:
    daddiu     $a2,$s1,4
    ld         $a1,-30720($gp)
    move       $a0,$s0
    move       $s1,$a2
    lw         $a2,-4($a2)
    jal        sprintf
    daddiu     $a1,$a1,488
    lbu        $a3,0($s0)
    beqz       $a3, .L00000640
    lw         $a2,-30720($gp)
.L00000a7c:
    lbu        $a4,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a4, .L00000ac8
    nop
    lbu        $a5,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a5, .L00000ac8
    nop
    lbu        $a6,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a6, .L00000ac8
    nop
    lbu        $a7,1($s0)
    daddiu     $s0,$s0,1
    beqz       $a7, .L00000ac8
    nop
    lbu        $t0,1($s0)
    bnez       $t0, .L00000a7c
    daddiu     $s0,$s0,1
.L00000ac8:
    b          .L00000640
    lw         $a2,-30720($gp)
.L00000ad0:
    b          .L00000584
    sw         $zero,-30720($gp)
.L00000ad8:
    daddiu     $s1,$s3,4
    b          .L0000022c
    daddiu     $a4,$s0,100
