.section .text
.set noat
.set noreorder


glabel gfxtable_readerlock
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,4
    jal        mutex_spinlock
    sd         $a0,16($sp)
    lw         $at,0($s8)
    move       $a1,$v0
    ld         $a0,16($sp)
    addiu      $at,$at,1
    jal        mutex_spinunlock
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gfxtable_readerunlock
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,4
    jal        mutex_spinlock
    sd         $a0,16($sp)
    lw         $at,0($s8)
    move       $a1,$v0
    ld         $a0,16($sp)
    addiu      $at,$at,-1
    jal        mutex_spinunlock
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gfxtable_writerlock
    daddiu     $sp,$sp,-48
    sd         $s2,40($sp)
    sd         $s1,32($sp)
    move       $s1,$a0
    sd         $s0,16($sp)
    daddiu     $s0,$a0,4
    sd         $ra,24($sp)
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $at,0($s1)
    move       $a1,$v0
    blez       $at, .L000000ec
    li         $s2,1000
.L000000bc:
    jal        mutex_spinunlock
    move       $a0,$s0
    sd         $s2,8($sp)
    daddiu     $a0,$sp,0
    jal        nano_delay
    sw         $zero,0($sp)
    jal        mutex_spinlock
    move       $a0,$s0
    move       $a1,$v0
    lw         $v0,0($s1)
    bgtz       $v0, .L000000bc
    nop
.L000000ec:
    ld         $ra,24($sp)
    ld         $s2,40($sp)
    move       $v0,$a1
    ld         $s0,16($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gfxtable_writerunlock
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$a0,4
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel init_gfx_group_table
    ld         $at,0($gp)
    daddiu     $sp,$sp,-16
    beqz       $at, .L0000013c
    sd         $ra,0($sp)
.L00000134:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000013c:
    jal        kern_malloc
    li         $a0,128
    move       $a0,$v0
    beqz       $v0, .L00000174
    sd         $v0,0($gp)
.L00000150:
    jal        bzero
    li         $a1,128
    ld         $a1,-30720($gp)
    daddiu     $a0,$gp,4
    jal        spinlock_init
    daddiu     $a1,$a1,48
    ld         $ra,0($sp)
    b          .L00000134
    sw         $zero,0($gp)
.L00000174:
    move       $a0,$zero
    jal        cmn_err
    ld         $a1,-30720($gp)
    b          .L00000150
    ld         $a0,0($gp)

glabel gfx_group_find
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        threadhandle_to_threadgrouphandle
    sd         $s1,24($sp)
    andi       $a2,$v0,0xf
    dsrl       $a3,$v0,0xc
    move       $s1,$v0
    beqz       $a2, .L00000238
    sd         $s2,16($sp)
    move       $s2,$a2
.L000001b4:
    jal        gfxtable_readerlock
    daddiu     $a0,$gp,0
    ld         $s0,0($gp)
    sll        $t8,$s2,0x0
    dsll       $t8,$t8,0x3
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    beqz       $s0, .L00000218
    ld         $s2,16($sp)
    ld         $t9,0($s0)
    beq        $t9, $s1, .L00000218
    ld         $s2,16($sp)
.L000001e4:
    ld         $s0,24($s0)
    beqz       $s0, .L00000214
    nop
    ld         $ra,0($s0)
    beq        $ra, $s1, .L00000214
    nop
    ld         $s0,24($s0)
    beqz       $s0, .L00000214
    nop
    ld         $at,0($s0)
    bne        $at, $s1, .L000001e4
    nop
.L00000214:
    ld         $s2,16($sp)
.L00000218:
    ld         $s1,24($sp)
    jal        gfxtable_readerunlock
    daddiu     $a0,$gp,0
    ld         $ra,0($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000238:
    b          .L000001b4
    andi       $s2,$a3,0xf

glabel gfx_group_create
    daddiu     $sp,$sp,-32
    sd         $s0,24($sp)
    sd         $a0,8($sp)
    sd         $ra,16($sp)
    jal        kern_malloc
    li         $a0,32
    bnez       $v0, .L00000268
    move       $s0,$v0
    b          .L000002dc
    move       $s0,$zero
.L00000268:
    jal        threadhandle_to_threadgrouphandle
    ld         $a0,8($sp)
    ld         $a1,-30720($gp)
    daddiu     $a0,$s0,16
    sw         $zero,8($s0)
    sd         $v0,0($s0)
    jal        spinlock_init
    daddiu     $a1,$a1,56
    ld         $a0,0($s0)
    andi       $v0,$a0,0xf
    sw         $zero,12($s0)
    beqz       $v0, .L000002f0
    dsrl       $a0,$a0,0xc
    sd         $v0,0($sp)
.L000002a0:
    jal        gfxtable_writerlock
    daddiu     $a0,$gp,0
    ld         $a3,0($sp)
    ld         $a4,0($gp)
    sll        $a3,$a3,0x0
    dsll       $a3,$a3,0x3
    daddu      $a4,$a4,$a3
    ld         $a4,0($a4)
    sd         $a4,24($s0)
    ld         $a2,0($gp)
    move       $a1,$v0
    daddu      $a2,$a2,$a3
    daddiu     $a0,$gp,0
    jal        gfxtable_writerunlock
    sd         $s0,0($a2)
.L000002dc:
    ld         $ra,16($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000002f0:
    andi       $a4,$a0,0xf
    b          .L000002a0
    sd         $a4,0($sp)

glabel gfx_group_destroy
    daddiu     $sp,$sp,-32
    ld         $a1,0($a0)
    sd         $a0,0($sp)
    sd         $ra,24($sp)
    andi       $v0,$a1,0xf
    sd         $s0,8($sp)
    sd         $s1,16($sp)
    beqz       $v0, .L000003c4
    dsrl       $a1,$a1,0xc
    move       $s1,$v0
.L00000324:
    jal        gfxtable_writerlock
    daddiu     $a0,$gp,0
    ld         $a4,0($gp)
    sll        $a5,$s1,0x0
    dsll       $a5,$a5,0x3
    daddu      $a4,$a4,$a5
    ld         $a0,0($a4)
    beqz       $a0, .L00000374
    ld         $a5,0($sp)
    ld         $a5,0($a5)
    ld         $a6,0($a0)
    beq        $a6, $a5, .L00000374
    nop
.L00000358:
    daddiu     $a4,$a0,24
    ld         $a0,24($a0)
    beqz       $a0, .L0000038c
    move       $s0,$zero
    ld         $a6,0($a0)
    bne        $a6, $a5, .L00000358
    nop
.L00000374:
    beqz       $a0, .L00000388
    move       $s0,$a0
    ld         $a7,24($a0)
    b          .L0000038c
    sd         $a7,0($a4)
.L00000388:
    move       $s0,$zero
.L0000038c:
    daddiu     $a0,$gp,0
    jal        gfxtable_writerunlock
    move       $a1,$v0
    beqz       $s0, .L000003b4
    ld         $ra,24($sp)
    jal        spinlock_destroy
    daddiu     $a0,$s0,16
    jal        kern_free
    move       $a0,$s0
    ld         $ra,24($sp)
.L000003b4:
    ld         $s1,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000003c4:
    b          .L00000324
    andi       $s1,$a1,0xf

glabel init_gthread_table
    daddiu     $sp,$sp,-32
    ld         $at,0($gp)
    sd         $ra,0($sp)
    sd         $s0,8($sp)
    beqz       $at, .L000003f8
    sd         $s1,16($sp)
    ld         $ra,0($sp)
.L000003e8:
    ld         $s1,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000003f8:
    jal        kern_malloc
    li         $a0,2048
    move       $a0,$v0
    beqz       $v0, .L00000454
    sd         $v0,0($gp)
.L0000040c:
    jal        bzero
    li         $a1,2048
    move       $s0,$zero
.L00000418:
    ld         $a1,-30720($gp)
    ld         $a0,0($gp)
    dsll       $s1,$s0,0x7
    daddiu     $a1,$a1,48
    daddu      $a0,$a0,$s1
    jal        spinlock_init
    daddiu     $a0,$a0,4
    ld         $a2,0($gp)
    addiu      $s0,$s0,1
    slti       $a3,$s0,16
    daddu      $a2,$a2,$s1
    bnez       $a3, .L00000418
    sw         $zero,0($a2)
    b          .L000003e8
    ld         $ra,0($sp)
.L00000454:
    ld         $a1,-30720($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,64
    b          .L0000040c
    ld         $a0,0($gp)

glabel gthread_create
    daddiu     $sp,$sp,-32
    sd         $s0,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $ra,16($sp)
    jal        kern_malloc
    li         $a0,40
    bnez       $v0, .L00000498
    move       $s0,$v0
    b          .L00000540
    move       $s0,$zero
.L00000498:
    sd         $s1,0($v0)
    sw         $zero,8($v0)
    sd         $zero,16($v0)
    sd         $zero,24($v0)
    jal        gfx_group_find
    move       $a0,$s1
    bnez       $v0, .L00000558
    move       $a0,$s0
    dsrl       $a5,$s1,0x8
.L000004bc:
    andi       $a5,$a5,0xff
    dsll       $a4,$a5,0x3
    dsrl       $a3,$s1,0x10
    dsubu      $a4,$a4,$a5
    dsll       $a4,$a4,0x2
    andi       $a3,$a3,0xff
    daddu      $a4,$a4,$a5
    xor        $a3,$a3,$a4
    dsll       $a2,$a3,0x3
    dsrl       $a1,$s1,0x18
    dsubu      $a2,$a2,$a3
    dsll       $a2,$a2,0x2
    andi       $a1,$a1,0xff
    daddu      $a2,$a2,$a3
    xor        $a1,$a1,$a2
    ld         $a0,0($gp)
    andi       $a1,$a1,0xf
    dsll       $a1,$a1,0x7
    sd         $a1,0($sp)
    jal        gfxtable_writerlock
    daddu      $a0,$a0,$a1
    ld         $a2,0($sp)
    ld         $a4,0($gp)
    daddu      $a4,$a4,$a2
    ld         $a4,8($a4)
    sd         $a4,32($s0)
    ld         $a3,0($gp)
    daddu      $a3,$a3,$a2
    sd         $s0,8($a3)
    ld         $a0,0($gp)
    move       $a1,$v0
    jal        gfxtable_writerunlock
    daddu      $a0,$a0,$a2
.L00000540:
    ld         $ra,16($sp)
    ld         $s1,8($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000558:
    jal        gthread_attach_group
    move       $a1,$v0
    b          .L000004bc
    dsrl       $a5,$s1,0x8

glabel gthread_destroy
    dsrl       $at,$a0,0x8
    daddiu     $sp,$sp,-32
    andi       $at,$at,0xff
    sd         $ra,8($sp)
    dsll       $ra,$at,0x3
    dsrl       $t9,$a0,0x10
    dsubu      $ra,$ra,$at
    dsll       $ra,$ra,0x2
    andi       $t9,$t9,0xff
    daddu      $ra,$ra,$at
    xor        $t9,$t9,$ra
    dsll       $t8,$t9,0x3
    sd         $s1,16($sp)
    dsrl       $s1,$a0,0x18
    dsubu      $t8,$t8,$t9
    dsll       $t8,$t8,0x2
    andi       $s1,$s1,0xff
    daddu      $t8,$t8,$t9
    sd         $s0,0($sp)
    xor        $s1,$s1,$t8
    move       $s0,$a0
    ld         $a0,0($gp)
    andi       $s1,$s1,0xf
    dsll       $s1,$s1,0x7
    jal        gfxtable_writerlock
    daddu      $a0,$a0,$s1
    ld         $a5,0($gp)
    daddu      $a5,$a5,$s1
    ld         $a0,8($a5)
    move       $a1,$v0
    beqz       $a0, .L00000610
    daddiu     $a4,$a5,8
    ld         $a6,0($a0)
    beq        $a6, $s0, .L00000610
    nop
.L000005f4:
    daddiu     $a4,$a0,32
    ld         $a0,32($a0)
    beqz       $a0, .L0000062c
    nop
    ld         $a7,0($a0)
    bne        $a7, $s0, .L000005f4
    nop
.L00000610:
    beqz       $a0, .L0000062c
    move       $s0,$a0
    ld         $a6,32($a0)
    sd         $a6,0($a4)
    ld         $a5,0($gp)
    b          .L00000630
    daddu      $a5,$a5,$s1
.L0000062c:
    move       $s0,$zero
.L00000630:
    jal        gfxtable_writerunlock
    move       $a0,$a5
    beqz       $s0, .L0000064c
    ld         $ra,8($sp)
    jal        kern_free
    move       $a0,$s0
    ld         $ra,8($sp)
.L0000064c:
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gthread_attach_list
    daddiu     $sp,$sp,-32
    sd         $a0,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a1
    beqz       $a1, .L00000698
    sd         $ra,24($sp)
    lw         $at,0($a1)
    addiu      $at,$at,1
    sw         $at,0($a1)
.L00000680:
    li         $v0,1
    sd         $s0,16($a0)
.L00000688:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000698:
    jal        kern_malloc
    li         $a0,32
    move       $s0,$v0
    bnez       $v0, .L000006b4
    sd         $v0,0($sp)
    b          .L00000688
    move       $v0,$zero
.L000006b4:
    sw         $zero,4($v0)
    li         $a3,-1
    move       $a1,$zero
    ld         $a2,-30720($gp)
    daddiu     $a0,$v0,8
    sd         $zero,24($v0)
    li         $a4,1
    sw         $a4,0($v0)
    jal        init_sv
    daddiu     $a2,$a2,112
    ld         $a0,0($sp)
    ld         $a1,-30720($gp)
    daddiu     $a0,$a0,16
    jal        spinlock_init
    daddiu     $a1,$a1,120
    b          .L00000680
    ld         $a0,16($sp)

glabel gthread_detach_list
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    ld         $s0,16($a0)
    sd         $zero,16($a0)
    lw         $at,0($s0)
    addiu      $at,$at,-1
    sd         $ra,8($sp)
    beqz       $at, .L0000072c
    sw         $at,0($s0)
.L0000071c:
    li         $v0,1
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0000072c:
    jal        spinlock_destroy
    daddiu     $a0,$s0,16
    jal        sv_destroy
    daddiu     $a0,$s0,8
    jal        kern_free
    move       $a0,$s0
    b          .L0000071c
    ld         $ra,8($sp)

glabel gthread_attach_group
    daddiu     $sp,$sp,-32
    sd         $a0,16($sp)
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s8,8($sp)
    daddiu     $s8,$a1,16
    sd         $ra,0($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    lw         $at,8($s0)
    move       $a1,$v0
    move       $a0,$s8
    addiu      $at,$at,1
    jal        mutex_spinunlock
    sw         $at,8($s0)
    ld         $v0,16($sp)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    sd         $s0,24($v0)
    li         $v0,1
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gthread_detach_group
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    ld         $s0,24($a0)
    move       $v0,$a0
    move       $v0,$zero
    beqz       $s0, .L000007f4
    sd         $ra,16($sp)
    sd         $zero,24($a0)
    daddiu     $a0,$s0,16
    jal        mutex_spinlock
    sd         $a0,0($sp)
    lw         $at,8($s0)
    move       $a1,$v0
    ld         $a0,0($sp)
    addiu      $at,$at,-1
    jal        mutex_spinunlock
    sw         $at,8($s0)
    ld         $ra,16($sp)
    li         $v0,1
.L000007f4:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gthread_find
    dsrl       $at,$a0,0x8
    daddiu     $sp,$sp,-32
    andi       $at,$at,0xff
    sd         $ra,16($sp)
    dsll       $ra,$at,0x3
    dsrl       $t9,$a0,0x10
    dsubu      $ra,$ra,$at
    dsll       $ra,$ra,0x2
    andi       $t9,$t9,0xff
    daddu      $ra,$ra,$at
    xor        $t9,$t9,$ra
    dsll       $t8,$t9,0x3
    sd         $s5,8($sp)
    dsrl       $s5,$a0,0x18
    dsubu      $t8,$t8,$t9
    dsll       $t8,$t8,0x2
    andi       $s5,$s5,0xff
    daddu      $t8,$t8,$t9
    sd         $s1,0($sp)
    xor        $s5,$s5,$t8
    move       $s1,$a0
    ld         $a0,0($gp)
    andi       $s5,$s5,0xf
    dsll       $s5,$s5,0x7
    sd         $s0,24($sp)
    jal        gfxtable_readerlock
    daddu      $a0,$a0,$s5
    ld         $a0,0($gp)
    daddu      $a0,$a0,$s5
    ld         $s0,8($a0)
    beqz       $s0, .L000008bc
    nop
    ld         $a1,0($s0)
    beq        $a1, $s1, .L000008bc
    nop
.L0000088c:
    ld         $s0,32($s0)
    beqz       $s0, .L000008bc
    nop
    ld         $a2,0($s0)
    beq        $a2, $s1, .L000008bc
    nop
    ld         $s0,32($s0)
    beqz       $s0, .L000008bc
    nop
    ld         $a3,0($s0)
    bne        $a3, $s1, .L0000088c
    nop
.L000008bc:
    ld         $s1,0($sp)
    jal        gfxtable_readerunlock
    ld         $s5,8($sp)
    ld         $ra,16($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gthread_find_gfxp
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        gthread_find
    nop
    beqz       $v0, .L0000090c
    ld         $ra,0($sp)
    ld         $a2,16($v0)
    beqz       $a2, .L0000090c
    nop
    ld         $v0,24($a2)
.L00000904:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000090c:
    b          .L00000904
    move       $v0,$zero

glabel gthread_scan
    daddiu     $sp,$sp,-48
    sd         $a1,16($sp)
    move       $at,$a0
    move       $a2,$zero
    sd         $a0,8($sp)
    sd         $ra,24($sp)
    jalr       $at
    move       $a0,$zero
    sd         $s1,32($sp)
    move       $a0,$zero
    beqz       $v0, .L0000095c
    sd         $s0,40($sp)
.L00000944:
    ld         $ra,24($sp)
    move       $v0,$a0
    ld         $s1,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000095c:
    move       $s0,$zero
    ld         $a0,0($gp)
.L00000964:
    dsll       $a1,$s0,0x7
    jal        gfxtable_readerlock
    daddu      $a0,$a0,$a1
    addiu      $s0,$s0,1
    slti       $a2,$s0,16
    bnez       $a2, .L00000964
    ld         $a0,0($gp)
    move       $s1,$zero
    ld         $s0,0($gp)
    dsll       $t8,$s1,0x7
.L0000098c:
    daddu      $s0,$s0,$t8
    ld         $s0,8($s0)
    beqz       $s0, .L000009b8
    nop
.L0000099c:
    lw         $t9,8($s0)
    andi       $t9,$t9,0x4
    beqz       $t9, .L00000a08
    ld         $a4,8($sp)
    ld         $s0,32($s0)
    bnez       $s0, .L0000099c
    nop
.L000009b8:
    addiu      $s1,$s1,1
.L000009bc:
    slti       $ra,$s1,16
    ld         $s0,0($gp)
    bnez       $ra, .L0000098c
    dsll       $t8,$s1,0x7
    move       $s0,$zero
.L000009d0:
    ld         $a0,0($gp)
    dsll       $a1,$s0,0x7
    jal        gfxtable_readerunlock
    daddu      $a0,$a0,$a1
    addiu      $s0,$s0,1
    slti       $a2,$s0,16
    bnez       $a2, .L000009d0
    ld         $a3,8($sp)
    move       $a0,$zero
    ld         $a1,16($sp)
    jalr       $a3
    li         $a2,2
    b          .L00000944
    move       $a0,$v0
.L00000a08:
    move       $a0,$s0
    ld         $a1,16($sp)
    jalr       $a4
    li         $a2,1
    beqz       $v0, .L00000a50
    nop
    move       $s0,$zero
    sd         $v0,0($sp)
    ld         $a0,0($gp)
.L00000a2c:
    dsll       $a1,$s0,0x7
    jal        gfxtable_readerunlock
    daddu      $a0,$a0,$a1
    addiu      $s0,$s0,1
    slti       $a2,$s0,16
    bnez       $a2, .L00000a2c
    ld         $a0,0($gp)
    b          .L00000944
    ld         $a0,0($sp)
.L00000a50:
    ld         $s0,32($s0)
    bnez       $s0, .L0000099c
    nop
    b          .L000009bc
    addiu      $s1,$s1,1

glabel GfxRegisterBoard
    lw         $v0,0($gp)
    daddiu     $sp,$sp,-32
    lw         $at,0($gp)
    sd         $a0,0($sp)
    sd         $a1,16($sp)
    slt        $at,$at,$v0
    sd         $a2,8($sp)
    beqz       $at, .L00000b30
    sd         $ra,24($sp)
    jal        kern_malloc
    li         $a0,72
    lw         $a1,0($gp)
    ld         $v1,-30712($gp)
    dsll       $a1,$a1,0x3
    move       $a0,$v0
    daddu      $v1,$v1,$a1
    li         $a1,72
    jal        bzero
    sd         $v0,0($v1)
    lw         $t2,0($gp)
    ld         $a4,-30712($gp)
    dsll       $t2,$t2,0x3
    daddu      $t2,$a4,$t2
    ld         $t2,0($t2)
    ld         $t1,0($sp)
    sd         $t1,56($t2)
    lw         $t0,0($gp)
    dsll       $t0,$t0,0x3
    daddu      $t0,$a4,$t0
    ld         $t0,0($t0)
    ld         $a0,16($sp)
    sd         $a0,64($t0)
    lw         $a7,0($gp)
    dsll       $a7,$a7,0x3
    daddu      $a7,$a4,$a7
    ld         $a7,0($a7)
    ld         $a6,8($sp)
    sd         $a6,0($a7)
    lw         $a3,0($gp)
    dsll       $a5,$a3,0x3
    daddu      $a4,$a4,$a5
    ld         $a4,0($a4)
    sw         $a3,24($a4)
    lw         $a2,0($gp)
    addiu      $a2,$a2,1
    jal        RRM_Init
    sw         $a2,0($gp)
    move       $v0,$zero
.L00000b24:
    ld         $ra,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000b30:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,128
    b          .L00000b24
    li         $v0,-1

glabel GfxAddHwgraphEdge
    ld         $a2,-30712($gp)
    ld         $at,0($a2)
    daddiu     $sp,$sp,-32
    ld         $at,64($at)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,16($sp)
    move       $s0,$zero
    beq        $at, $a1, .L00000bac
    sd         $ra,24($sp)
    move       $s0,$zero
.L00000b74:
    addiu      $s0,$s0,1
    dsll       $v0,$s0,0x3
    daddu      $v0,$a2,$v0
    ld         $v0,0($v0)
    ld         $v0,64($v0)
    beq        $v0, $a1, .L00000bac
    nop
    addiu      $s0,$s0,1
    dsll       $v1,$s0,0x3
    daddu      $v1,$a2,$v1
    ld         $v1,0($v1)
    ld         $v1,64($v1)
    bne        $v1, $a1, .L00000b74
    nop
.L00000bac:
    move       $a1,$s1
    ld         $a2,-30720($gp)
    move       $a3,$zero
    move       $a4,$s0
    ld         $a0,0($gp)
    jal        graph_info_add_LBL
    daddiu     $a2,$a2,160
    lw         $a3,-30696($gp)
    li         $a4,-1
    beq        $a3, $a4, .L00000c0c
    ld         $a1,-30720($gp)
.L00000bd8:
    daddiu     $a0,$sp,0
    move       $a2,$s0
    jal        sprintf
    daddiu     $a1,$a1,172
    ld         $s0,16($sp)
    daddiu     $a2,$sp,0
    move       $a1,$s1
    jal        hwgraph_edge_add
    lw         $a0,-30696($gp)
    ld         $ra,24($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000c0c:
    ld         $a1,-30720($gp)
    daddiu     $a2,$gp,-30696
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    daddiu     $a1,$a1,168
    b          .L00000bd8
    ld         $a1,-30720($gp)

glabel gfx_disp
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        gthread_find
    sd         $s2,8($sp)
    move       $s2,$v0
    sd         $s0,16($sp)
    move       $s0,$zero
    beqz       $v0, .L00000c5c
    sd         $s1,24($sp)
    ld         $v0,16($v0)
    beqz       $v0, .L00000c5c
    nop
    ld         $s0,24($v0)
.L00000c5c:
    beqz       $s0, .L00000cfc
    nop
    b          .L00000ca8
    ld         $s1,40($s0)
.L00000c6c:
    jalr       $v0
    move       $a0,$s1
    beqz       $v0, .L00000cc8
    nop
.L00000c7c:
    ld         $v0,24($s2)
    beqz       $v0, .L00000c98
    nop
    lw         $at,4($s0)
    andi       $at,$at,0x8
    beqz       $at, .L00000d04
    nop
.L00000c98:
    ld         $s0,24($s0)
.L00000c9c:
    beqz       $s0, .L00000cfc
    nop
    ld         $s1,40($s0)
.L00000ca8:
    beqz       $s1, .L00000c98
    nop
    lw         $v0,104($s1)
    blez       $v0, .L00000c7c
    nop
    ld         $v0,112($s1)
    bnez       $v0, .L00000c6c
    nop
.L00000cc8:
    lw         $v1,4($s0)
    andi       $v1,$v1,0x3
    bnez       $v1, .L00000ce4
    move       $v0,$zero
    ld         $a0,72($s1)
    bne        $a0, $s0, .L00000c7c
    move       $v0,$zero
.L00000ce4:
    ld         $ra,0($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000cfc:
    b          .L00000ce4
    li         $v0,1
.L00000d04:
    ld         $a1,72($s1)
    bne        $a1, $s0, .L00000c98
    nop
    lw         $a2,80($s1)
    bnez       $a2, .L00000c98
    nop
    lw         $a3,8($s2)
    andi       $a3,$a3,0x4
    bnez       $a3, .L00000c98
    nop
    lw         $a4,120($s1)
    bnez       $a4, .L00000c98
    nop
    lw         $a5,12($v0)
    beqz       $a5, .L00000c98
    nop
    jal        valusema
    daddiu     $a0,$s1,56
    bgezl      $v0, .L00000c9c
    ld         $s0,24($s0)
    b          .L00000ce4
    move       $v0,$zero

glabel gfx_fault
    daddiu     $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a1
    jal        curthreadhandle
    sd         $a2,0($sp)
    move       $a0,$v0
    jal        gthread_find
    sd         $s1,32($sp)
    li         $a0,1
    beqz       $v0, .L00000df0
    move       $s1,$v0
    ld         $at,24($v0)
    beqz       $at, .L00000da4
    lw         $a0,4($s0)
    andi       $v0,$a0,0x8
    beqz       $v0, .L00000e14
    li         $a1,25
.L00000da4:
    andi       $v1,$a0,0x1
    beqz       $v1, .L00000dc4
    move       $a0,$s0
    ld         $a1,32($s0)
    ld         $a1,112($a1)
    jalr       $a1
    move       $a0,$s0
    move       $a0,$s0
.L00000dc4:
    jal        RRM_ValidFault
    ld         $a1,0($sp)
    ld         $a2,24($s1)
    beqz       $a2, .L00000de8
    nop
    lw         $a3,4($s0)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00000e24
    sd         $v0,24($sp)
.L00000de8:
    bltz       $v0, .L00000e08
    move       $a0,$zero
.L00000df0:
    ld         $ra,16($sp)
.L00000df4:
    move       $v0,$a0
    ld         $s0,8($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000e08:
    li         $a0,1
    b          .L00000df4
    ld         $ra,16($sp)
.L00000e14:
    jal        psema
    daddiu     $a0,$s0,80
    b          .L00000da4
    lw         $a0,4($s0)
.L00000e24:
    jal        vsema
    daddiu     $a0,$s0,80
    b          .L00000de8
    ld         $v0,24($sp)

glabel gfx_exit
    daddiu     $sp,$sp,-48
    sd         $ra,16($sp)
    jal        curthreadhandle
    nop
    move       $a0,$v0
    jal        gthread_find
    sd         $s1,32($sp)
    move       $s1,$v0
    beqz       $v0, .L00000f1c
    sd         $s0,24($sp)
    ld         $v0,24($v0)
    lw         $at,8($s1)
    ld         $a1,16($s1)
    ori        $at,$at,0x4
    beqz       $v0, .L00000eb4
    sw         $at,8($s1)
    beqz       $a1, .L00000f64
    move       $v0,$zero
    jal        GfxListReaderLock
    move       $a0,$a1
    ld         $a1,16($s1)
    ld         $s0,24($a1)
    beqz       $s0, .L00000ea4
    nop
    lw         $v0,4($s0)
    andi       $v0,$v0,0x8
    beqz       $v0, .L00000f24
    nop
.L00000ea4:
    jal        GfxListReaderUnlock
    move       $a0,$a1
    b          .L00000f08
    move       $v0,$zero
.L00000eb4:
    beqz       $a1, .L00000ec0
    move       $s0,$zero
    ld         $s0,24($a1)
.L00000ec0:
    bnezl      $s0, .L00000ee8
    ld         $v0,32($s0)
    b          .L00000f08
    move       $v0,$zero
.L00000ed0:
    jalr       $a1
    move       $a0,$s0
    ld         $s0,24($s0)
    beqz       $s0, .L00000f08
    move       $v0,$zero
.L00000ee4:
    ld         $v0,32($s0)
.L00000ee8:
    beqz       $v0, .L00000efc
    nop
    ld         $a1,56($v0)
    bnez       $a1, .L00000ed0
    nop
.L00000efc:
    ld         $s0,24($s0)
    bnez       $s0, .L00000ee4
    move       $v0,$zero
.L00000f08:
    ld         $ra,16($sp)
.L00000f0c:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000f1c:
    b          .L00000f08
    move       $v0,$zero
.L00000f24:
    jal        mutex_spinlock
    daddiu     $a0,$a1,16
    sd         $v0,8($sp)
    jal        threadgroup_refcnt
    ld         $a0,0($s1)
    li         $v1,1
    beq        $v0, $v1, .L00000f78
    nop
.L00000f44:
    ld         $a0,16($s1)
.L00000f48:
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$a0,16
    jal        GfxListReaderUnlock
    ld         $a0,16($s1)
    b          .L00000f08
    move       $v0,$zero
.L00000f64:
    b          .L00000f0c
    ld         $ra,16($sp)
.L00000f6c:
    ld         $s0,24($s0)
    beqz       $s0, .L00000f44
    nop
.L00000f78:
    ld         $a0,40($s0)
    beqz       $a0, .L00000f6c
    nop
    ld         $a1,72($a0)
    bne        $a1, $s0, .L00000f6c
    nop
    jal        splhi
    nop
    ld         $a4,32($s0)
    ld         $a4,192($a4)
    beqz       $a4, .L00000fb0
    sd         $v0,0($sp)
    jalr       $a4
    move       $a0,$s0
.L00000fb0:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,0($sp)
    ld         $s0,24($s0)
    bnez       $s0, .L00000f78
    nop
    b          .L00000f48
    ld         $a0,16($s1)

glabel gfx_shcheck
    daddiu     $sp,$sp,-80
    sd         $a0,16($sp)
    sd         $ra,24($sp)
    jal        gthread_find
    sd         $s1,40($sp)
    sd         $s0,48($sp)
    sd         $s2,56($sp)
    move       $s1,$v0
    beqz       $v0, .L000010c0
    sd         $s3,64($sp)
    ld         $s2,16($v0)
    bnez       $s2, .L000010dc
    nop
.L00001014:
    beqz       $s1, .L000011a4
    nop
    ld         $v0,16($s1)
    beqz       $v0, .L00001044
    move       $s0,$zero
    ld         $s0,24($v0)
    beqz       $s0, .L00001044
    nop
    lw         $at,4($s0)
    andi       $at,$at,0x8
    beqz       $at, .L000010c4
    ld         $s3,64($sp)
.L00001044:
    bnez       $s0, .L00001074
    nop
    bnez       $v0, .L0000109c
    nop
    b          .L000010a0
    nop
.L0000105c:
    jal        ddv_destroy_handle
    nop
    sd         $zero,48($s0)
    ld         $s0,24($s0)
    beqz       $s0, .L00001090
    nop
.L00001074:
    ld         $a0,48($s0)
    bnez       $a0, .L0000105c
    nop
    sd         $zero,48($s0)
    ld         $s0,24($s0)
    bnez       $s0, .L00001074
    nop
.L00001090:
    ld         $v0,16($s1)
    beqz       $v0, .L000010a0
    nop
.L0000109c:
    sd         $zero,24($v0)
.L000010a0:
    jal        gthread_detach_list
    move       $a0,$s1
    jal        gthread_detach_group
    move       $a0,$s1
    jal        cleargfxsched_thread
    ld         $a0,0($s1)
    jal        gthread_destroy
    ld         $a0,0($s1)
.L000010c0:
    ld         $s3,64($sp)
.L000010c4:
    ld         $ra,24($sp)
    ld         $s2,56($sp)
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000010dc:
    jal        GfxListWriterLock
    move       $a0,$s2
    ld         $a0,24($s2)
    beqz       $a0, .L00001188
    move       $s3,$v0
    lw         $v0,4($a0)
    andi       $v0,$v0,0x8
    beqz       $v0, .L000011b4
    nop
.L00001100:
    b          .L00001114
    move       $s0,$a0
.L00001108:
    ld         $s0,24($s0)
    beqz       $s0, .L00001194
    move       $a0,$s2
.L00001114:
    ld         $v0,40($s0)
    beqz       $v0, .L00001108
    nop
    ld         $v1,72($v0)
    bne        $v1, $s0, .L00001108
    nop
    lw         $a0,80($v0)
    bnez       $a0, .L00001108
    nop
    jal        splhi
    nop
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L00001158
    sd         $v0,8($sp)
    jalr       $a1
    move       $a0,$s0
.L00001158:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,8($sp)
    ld         $s0,24($s0)
    bnez       $s0, .L00001114
    nop
    b          .L00001194
    move       $a0,$s2
.L00001188:
    beqz       $s2, .L00001014
    sw         $v0,0($sp)
.L00001190:
    move       $a0,$s2
.L00001194:
    jal        GfxListWriterUnlock
    move       $a1,$s3
    b          .L00001014
    nop
.L000011a4:
    jal        gthread_destroy
    ld         $a0,16($sp)
    b          .L000010c4
    ld         $s3,64($sp)
.L000011b4:
    lw         $a2,8($s1)
    andi       $a2,$a2,0x2
    beqz       $a2, .L00001200
    sd         $a0,32($sp)
    ld         $s0,24($s1)
.L000011c8:
    lw         $s0,12($s0)
    move       $a0,$s1
    jal        gthread_detach_list
    sltiu      $s0,$s0,1
    jal        gthread_detach_group
    move       $a0,$s1
    jal        cleargfxsched_thread
    ld         $a0,0($s1)
    bnez       $s0, .L000011f8
    ld         $a0,32($sp)
    b          .L00001190
    move       $s1,$zero
.L000011f8:
    b          .L00001100
    move       $s1,$zero
.L00001200:
    ld         $a0,24($s1)
    jal        mutex_spinlock
    daddiu     $a0,$a0,16
    ld         $a3,24($s1)
    lw         $a2,12($a3)
    addiu      $a2,$a2,-1
    sw         $a2,12($a3)
    ld         $a0,24($s1)
    move       $a1,$v0
    jal        mutex_spinunlock
    daddiu     $a0,$a0,16
    b          .L000011c8
    ld         $s0,24($s1)

glabel gfx_shdup
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $ra,8($sp)
    jal        gthread_find
    sd         $s0,16($sp)
    beqz       $v0, .L00001274
    move       $s0,$v0
    ld         $v0,16($v0)
    beqz       $v0, .L00001278
    ld         $ra,8($sp)
    ld         $a4,24($v0)
    beqz       $a4, .L00001278
    ld         $ra,8($sp)
    lw         $at,4($a4)
    andi       $at,$at,0x8
    beqz       $at, .L00001284
.L00001274:
    ld         $ra,8($sp)
.L00001278:
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001284:
    jal        gthread_create
    ld         $a0,0($sp)
    beqz       $v0, .L00001278
    ld         $ra,8($sp)
    move       $a0,$v0
    jal        gthread_attach_list
    ld         $a1,16($s0)
    jal        setgfxsched_thread
    ld         $a0,0($sp)
    b          .L00001278
    ld         $ra,8($sp)

glabel GfxKiller
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    li         $a4,1
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $a2, .L00001370
    sd         $ra,16($sp)
    li         $at,2
    beq        $a2, $at, .L00001374
    ld         $ra,16($sp)
    bne        $a2, $a4, .L00001374
    ld         $ra,16($sp)
    ld         $a0,16($a1)
    beqz       $a0, .L000013a4
    nop
    bne        $a0, $s0, .L00001304
    ld         $a1,24($s0)
    ld         $v0,24($a0)
    beq        $v0, $a1, .L00001374
    ld         $ra,16($sp)
.L00001304:
    beqz       $a1, .L00001320
    ld         $a0,16($s0)
    beqz       $a0, .L0000132c
    move       $a2,$zero
    jal        GfxListReaderLock
    nop
    ld         $a0,16($s0)
.L00001320:
    beqz       $a0, .L0000132c
    move       $a2,$zero
    ld         $a2,24($a0)
.L0000132c:
    beqz       $a2, .L00001350
    nop
    ld         $a0,8($s1)
.L00001338:
    ld         $v1,40($a2)
    beq        $v1, $a0, .L00001388
    nop
    ld         $a2,24($a2)
    bnez       $a2, .L00001338
    nop
.L00001350:
    ld         $a0,24($s0)
.L00001354:
    beqz       $a0, .L00001374
    ld         $ra,16($sp)
    ld         $a0,16($s0)
    beqz       $a0, .L00001374
    ld         $ra,16($sp)
    jal        GfxListReaderUnlock
    nop
.L00001370:
    ld         $ra,16($sp)
.L00001374:
    move       $v0,$zero
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001388:
    jal        threadhandle_to_proc
    ld         $a0,0($s0)
    move       $a0,$v0
    jal        psignal
    lw         $a1,0($s1)
    b          .L00001354
    ld         $a0,24($s0)
.L000013a4:
    b          .L00001304
    ld         $a1,24($s0)

glabel gfxcleanup
    lw         $at,56($a0)
    daddiu     $sp,$sp,-16
    sd         $a0,0($sp)
    beqz       $at, .L000013c8
    sd         $ra,8($sp)
.L000013c0:
    jr         $ra
    daddiu     $sp,$sp,16
.L000013c8:
    jal        spinlock_destroy
    nop
    jal        kern_free
    ld         $a0,0($sp)
    b          .L000013c0
    ld         $ra,8($sp)

glabel GfxOpen
    daddiu     $sp,$sp,-64
    sd         $a0,24($sp)
    li         $at,2
    sd         $a1,32($sp)
    li         $a5,19
    beq        $a3, $at, .L0000140c
    sd         $ra,40($sp)
.L000013fc:
    ld         $ra,40($sp)
    move       $v0,$a5
    jr         $ra
    daddiu     $sp,$sp,64
.L0000140c:
    jal        curthreadhandle
    nop
    move       $a0,$v0
    jal        gthread_find_gfxp
    sd         $s0,48($sp)
    li         $a5,19
    beqz       $v0, .L000014d4
    move       $s0,$v0
    ld         $v0,24($v0)
    beqz       $v0, .L00001448
    li         $a5,19
.L00001438:
    move       $s0,$v0
    ld         $v0,24($v0)
    bnez       $v0, .L00001438
    nop
.L00001448:
    ld         $v0,40($s0)
    bnez       $v0, .L0000145c
    li         $a0,9
    b          .L000013fc
    ld         $s0,48($sp)
.L0000145c:
    sw         $a0,0($sp)
    ld         $v1,40($s0)
    jal        curthreadhandle
    sd         $v1,8($sp)
    jal        gthread_find
    move       $a0,$v0
    ld         $a0,-30704($gp)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $v0,16($sp)
    jal        streams_unlock
    nop
    ld         $a1,40($s0)
    lw         $a1,16($a1)
    beqz       $a1, .L000014b4
    nop
.L0000149c:
    jal        delay
    li         $a0,100
    ld         $a2,40($s0)
    lw         $a2,16($a2)
    bnez       $a2, .L0000149c
    nop
.L000014b4:
    jal        streams_lock
    nop
    ld         $v0,8($s0)
    ld         $a3,8($v0)
    beqz       $a3, .L000014dc
    li         $a5,1
    b          .L000013fc
    ld         $s0,48($sp)
.L000014d4:
    b          .L000013fc
    ld         $s0,48($sp)
.L000014dc:
    sd         $s0,8($v0)
    ld         $a4,40($s0)
    move       $a0,$s0
    jal        RRM_init_panes
    sd         $s0,0($a4)
    ld         $a5,8($s0)
    ld         $a2,24($sp)
    sd         $a2,32($a5)
    ld         $a4,8($s0)
    daddiu     $a3,$a2,144
    sd         $a3,40($a4)
    sd         $s0,184($a2)
    sd         $s0,40($a2)
    lw         $a1,56($s0)
    ld         $a0,32($sp)
    ori        $a1,$a1,0x1
    sw         $a1,56($s0)
    jal        getemajor
    lw         $a0,0($a0)
    ld         $a1,8($s0)
    move       $a0,$v0
    jal        makedevice
    lw         $a1,24($a1)
    ld         $a2,32($sp)
    ld         $s0,48($sp)
    move       $a5,$zero
    b          .L000013fc
    sw         $v0,0($a2)

glabel GfxUnmanage
    ld         $v0,40($a0)
    ld         $at,72($v0)
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    move       $s0,$a0
    bne        $at, $a0, .L00001624
    sd         $ra,48($sp)
.L00001568:
    ld         $v0,8($s0)
.L0000156c:
    beqz       $v0, .L00001594
    li         $a3,9
    sd         $zero,8($v0)
    ld         $a1,40($s0)
    sd         $zero,0($a1)
    ld         $a0,8($s0)
    sd         $zero,32($a0)
    ld         $v1,8($s0)
    sd         $zero,40($v1)
    li         $a3,9
.L00001594:
    sw         $a3,0($sp)
    ld         $a2,40($s0)
    jal        curthreadhandle
    sd         $a2,8($sp)
    jal        gthread_find
    move       $a0,$v0
    ld         $a0,-30704($gp)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $v0,16($sp)
    ld         $v1,8($s0)
    lw         $v1,24($v1)
    ld         $v0,40($s0)
    beqz       $v1, .L00001668
    ld         $v0,72($v0)
    bne        $v0, $s0, .L00001618
    ld         $ra,48($sp)
    jal        splhi
    nop
    ld         $a3,32($s0)
    ld         $a3,192($a3)
    beqz       $a3, .L000015f8
    sd         $v0,32($sp)
    jalr       $a3
    move       $a0,$s0
.L000015f8:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    ld         $a0,32($sp)
    ld         $ra,48($sp)
.L00001618:
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001624:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a3,40($s0)
    sd         $s0,72($a3)
    ld         $a2,40($s0)
    lw         $a2,104($a2)
    beqz       $a2, .L00001568
    nop
.L00001648:
    jal        us_delay
    li         $a0,2
    ld         $a4,40($s0)
    lw         $a4,104($a4)
    bnez       $a4, .L00001648
    nop
    b          .L0000156c
    ld         $v0,8($s0)
.L00001668:
    beq        $v0, $s0, .L000016a8
.L0000166c:
    move       $a0,$zero
.L00001670:
    jal        cn_init
    li         $a1,1
    ld         $v0,40($s0)
    ld         $a5,72($v0)
    bne        $a5, $s0, .L00001618
    ld         $ra,48($sp)
    sd         $zero,72($v0)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    lw         $a0,24($sp)
    b          .L00001618
    ld         $ra,48($sp)
.L000016a8:
    jal        splhi
    nop
    ld         $a3,32($s0)
    ld         $a3,192($a3)
    beqz       $a3, .L0000166c
    sw         $v0,24($sp)
    jalr       $a3
    move       $a0,$s0
    b          .L00001670
    move       $a0,$zero

glabel GfxClose
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    ld         $s0,40($a0)
    ld         $at,40($s0)
    bnez       $at, .L00001700
    sd         $ra,8($sp)
    ld         $a0,8($s0)
    beqz       $a0, .L00001700
    nop
    ld         $v0,8($a0)
    beq        $v0, $s0, .L0000172c
    nop
.L00001700:
    lw         $v1,56($s0)
.L00001704:
    li         $a0,-2
    and        $v1,$v1,$a0
    sw         $v1,56($s0)
    jal        gfxcleanup
    move       $a0,$s0
    ld         $ra,8($sp)
    move       $v0,$zero
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0000172c:
    jal        GfxUnmanage
    move       $a0,$s0
    b          .L00001704
    lw         $v1,56($s0)

glabel GfxProto
    ld         $a5,24($a1)
    ld         $v0,40($a0)
    lui        $t0,0x5348
    daddiu     $sp,$sp,-32
    lw         $a2,0($a5)
    sd         $s1,8($sp)
    move       $s1,$a0
    li         $at,102
    sd         $s0,0($sp)
    move       $s0,$a1
    ori        $a6,$t0,0x4951
    ori        $a7,$t0,0x4d51
    beq        $a2, $at, .L000017bc
    sd         $ra,16($sp)
    beq        $a2, $a6, .L000017bc
    nop
    bne        $a2, $a7, .L00001824
    ld         $a1,-30720($gp)
    ld         $a2,8($v0)
    lh         $a1,4($a5)
    sh         $a1,48($a2)
    ld         $a0,8($v0)
    lh         $v1,6($a5)
    lui        $v0,0x514d
    move       $a1,$s0
    ori        $v0,$v0,0x4853
    sh         $v1,50($a0)
    sw         $v0,0($a5)
    jal        qreply
    move       $a0,$s1
    b          .L00001800
    move       $v0,$zero
.L000017bc:
    ld         $a6,32($v0)
    beqz       $a6, .L00001814
    nop
    ld         $a3,48($a6)
    lw         $a2,8($a5)
    lw         $a1,4($a5)
    jalr       $a3
    ld         $a0,40($v0)
    beqz       $v0, .L00001814
    nop
    ld         $a5,40($s0)
    move       $a0,$s1
    move       $a1,$s0
    li         $a4,138
    jal        qreply
    sb         $a4,30($a5)
    move       $v0,$zero
.L00001800:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001814:
    jal        freemsg
    move       $a0,$s0
    b          .L00001800
    move       $v0,$zero
.L00001824:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,176
    jal        freemsg
    move       $a0,$s0
    b          .L00001800
    move       $v0,$zero

glabel GfxWput
    ld         $a2,40($a1)
    lbu        $a2,30($a2)
    daddiu     $sp,$sp,-16
    li         $at,1
    li         $a5,134
    li         $v0,131
    sd         $s0,0($sp)
    move       $s0,$a1
    beq        $a2, $at, .L000018b4
    sd         $ra,8($sp)
    beq        $a2, $v0, .L000018b4
    nop
    bne        $a2, $a5, .L000018c4
    nop
    ld         $a3,24($a1)
    lbu        $a3,0($a3)
    andi       $a3,$a3,0x2
    beqz       $a3, .L00001894
    nop
    jal        flushq
    move       $a1,$zero
.L00001894:
    jal        freemsg
    move       $a0,$s0
    move       $a0,$zero
.L000018a0:
    ld         $ra,8($sp)
    move       $v0,$a0
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000018b4:
    jal        GfxProto
    move       $a1,$s0
    b          .L000018a0
    move       $a0,$v0
.L000018c4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,232
    b          .L00001894
    nop

glabel sendMsg
    daddiu     $sp,$sp,-32
    ld         $a3,0($a1)
    sd         $s1,16($sp)
    ld         $a3,8($a3)
    sd         $s2,0($sp)
    move       $s2,$a0
    sd         $s0,8($sp)
    move       $s0,$a1
    beqz       $a3, .L000019c4
    sd         $ra,24($sp)
    lw         $a4,56($a3)
    andi       $a4,$a4,0x1
    beqz       $a4, .L000019c8
    ld         $ra,24($sp)
    lw         $a4,12($a1)
    dsll       $a3,$a4,0x2
    ld         $s1,32($a0)
    dsubu      $a3,$a3,$a4
    dsll       $a3,$a3,0x2
    daddu      $a3,$s1,$a3
    sd         $a3,32($a0)
    lw         $a2,12($a1)
    move       $a0,$s1
    sll        $a1,$a2,0x2
    subu       $a1,$a1,$a2
    jal        bzero
    sll        $a1,$a1,0x2
    ld         $a5,0($s0)
    lh         $a5,50($a5)
    sh         $a5,2($s1)
    lw         $a4,12($s0)
    sb         $a4,5($s1)
    lw         $a3,12($s0)
    li         $a4,-1
    addiu      $a3,$a3,-1
    beq        $a3, $a4, .L000019b4
    nop
.L00001970:
    dsll       $a6,$a3,0x2
    dsubu      $a7,$a6,$a3
    ld         $t1,0($s0)
    dsll       $a7,$a7,0x2
    daddu      $a7,$s1,$a7
    lh         $t1,48($t1)
    sh         $t1,0($a7)
    ld         $t0,0($s0)
    lh         $t0,50($t0)
    sb         $t0,4($a7)
    lbu        $t0,8($s0)
    addiu      $a3,$a3,-1
    daddu      $a6,$s0,$a6
    sb         $t0,6($a7)
    lw         $a6,16($a6)
    bne        $a3, $a4, .L00001970
    sw         $a6,8($a7)
.L000019b4:
    ld         $a0,0($s0)
    move       $a1,$s2
    jal        putq
    ld         $a0,32($a0)
.L000019c4:
    ld         $ra,24($sp)
.L000019c8:
    ld         $s2,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxDelayedMessage
    lw         $a2,12($a0)
    li         $a1,3
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    sll        $a0,$a2,0x2
    sd         $ra,8($sp)
    subu       $a0,$a0,$a2
    jal        allocb
    sll        $a0,$a0,0x2
    bnez       $v0, .L00001a3c
    move       $a0,$v0
    lw         $a1,12($s0)
    sll        $a0,$a1,0x2
    move       $a3,$s0
    subu       $a0,$a0,$a1
    ld         $a2,-30696($gp)
    li         $a1,3
    jal        bufcall
    sll        $a0,$a0,0x2
    beqz       $v0, .L00001a68
    ld         $a1,-30720($gp)
    b          .L00001a58
    li         $v0,1
.L00001a3c:
    jal        sendMsg
    move       $a1,$s0
.L00001a44:
    jal        wakeup
    move       $a0,$s0
    jal        kern_free
    move       $a0,$s0
    move       $v0,$zero
.L00001a58:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001a68:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,288
    b          .L00001a44
    nop

glabel GfxSendMessage
    daddiu     $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $s0,8($sp)
    li         $v0,1
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a1
    beqz       $a0, .L00001b74
    sd         $ra,32($sp)
    beqz       $a1, .L00001b94
    nop
    lw         $a1,12($s0)
.L00001aac:
    sll        $a0,$a1,0x2
    subu       $a0,$a0,$a1
    li         $a1,3
    jal        allocb
    sll        $a0,$a0,0x2
    bnez       $v0, .L00001b5c
    move       $a0,$v0
    bnez       $s1, .L00001ba4
    move       $s2,$zero
    lw         $a0,12($s0)
    sll        $a0,$a0,0x2
    addiu      $a0,$a0,52
    jal        kern_malloc
    sd         $a0,0($sp)
    beqz       $v0, .L00001ba4
    move       $s2,$v0
    move       $a0,$s0
    move       $a1,$v0
    jal        bcopy
    ld         $a2,0($sp)
    lw         $a1,12($s0)
    sll        $a0,$a1,0x2
    move       $a3,$s2
    subu       $a0,$a0,$a1
    ld         $a2,-30696($gp)
    li         $a1,3
    jal        bufcall
    sll        $a0,$a0,0x2
    beqz       $v0, .L00001bbc
    ld         $a1,-30720($gp)
    move       $s0,$zero
.L00001b28:
    beqz       $s1, .L00001b84
    nop
.L00001b30:
    beqz       $s2, .L00001b40
    move       $a0,$s2
    jal        sleep
    li         $a1,25
.L00001b40:
    move       $v0,$s0
.L00001b44:
    ld         $ra,32($sp)
.L00001b48:
    ld         $s2,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001b5c:
    jal        sendMsg
    move       $a1,$s0
    beqz       $s1, .L00001b7c
    move       $s0,$zero
    b          .L00001b44
    move       $v0,$s0
.L00001b74:
    b          .L00001b48
    ld         $ra,32($sp)
.L00001b7c:
    move       $s0,$zero
    move       $s2,$zero
.L00001b84:
    jal        streams_unlock
    nop
    b          .L00001b30
    nop
.L00001b94:
    jal        streams_lock
    nop
    b          .L00001aac
    lw         $a1,12($s0)
.L00001ba4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,328
    b          .L00001b28
    li         $s0,1
.L00001bbc:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,288
    jal        kern_free
    move       $a0,$s2
    b          .L00001b28
    li         $s0,1

glabel GfxMessage
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        GfxSendMessage
    move       $a1,$zero
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel GfxIntrMessage
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        GfxSendMessage
    li         $a1,1
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel GfxRqService
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        getq
    sd         $s1,16($sp)
    beqz       $v0, .L00001c64
    move       $s1,$v0
.L00001c30:
    jal        canput
    ld         $a0,24($s0)
    beqz       $v0, .L00001c7c
    move       $a0,$s0
    ld         $a0,24($s0)
    ld         $at,0($a0)
    ld         $at,0($at)
    jalr       $at
    move       $a1,$s1
    jal        getq
    move       $a0,$s0
    bnez       $v0, .L00001c30
    move       $s1,$v0
.L00001c64:
    move       $v0,$zero
.L00001c68:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001c7c:
    jal        putbq
    move       $a1,$s1
    b          .L00001c68
    li         $v0,1

glabel GfxDetach
    ld         $at,32($a0)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00001d20
    sd         $ra,8($sp)
    ld         $a0,48($a0)
    beqz       $a0, .L00001cc0
    nop
    jal        gfxdd_lookup
    nop
    beqz       $v0, .L00001d70
    nop
.L00001cc0:
    jal        RRM_Exit
    move       $a0,$s0
    ld         $v0,48($s0)
    bnez       $v0, .L00001d48
    nop
.L00001cd4:
    jal        streams_lock
    nop
    ld         $v1,8($s0)
    ld         $v1,8($v1)
    beq        $v1, $s0, .L00001d60
    nop
.L00001cec:
    jal        streams_unlock
    nop
    ld         $a0,8($s0)
    ld         $a1,16($a0)
    bne        $a1, $s0, .L00001d20
    nop
    ld         $a3,0($a0)
    sw         $zero,28($a3)
    sw         $zero,24($a3)
    sw         $zero,20($a3)
    sw         $zero,16($a3)
    ld         $a2,8($s0)
    sd         $zero,16($a2)
.L00001d20:
    jal        streams_lock
    nop
    sd         $zero,32($s0)
    sd         $zero,8($s0)
    jal        streams_unlock
    sd         $zero,40($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001d48:
    ld         $a4,32($s0)
    ld         $a4,16($a4)
    jalr       $a4
    move       $a0,$s0
    b          .L00001cd4
    nop
.L00001d60:
    jal        GfxUnmanage
    move       $a0,$s0
    b          .L00001cec
    nop
.L00001d70:
    jal        ddv_destroy_handle
    ld         $a0,48($s0)
    b          .L00001cc0
    sd         $zero,48($s0)

glabel gfxinit
    lw         $a2,0($gp)
    lui        $at,0x2
    slt        $at,$at,$a2
    daddiu     $sp,$sp,-16
    bnez       $at, .L00001e20
    sd         $ra,8($sp)
.L00001d98:
    ld         $a2,-30720($gp)
    li         $a3,-1
    li         $a1,1
    ld         $a0,-30688($gp)
    jal        init_sema
    daddiu     $a2,$a2,496
    ld         $a2,-30720($gp)
    li         $a3,-1
    ld         $a0,-30688($gp)
    li         $a1,1
    daddiu     $a2,$a2,520
    jal        init_sema
    daddiu     $a0,$a0,16
    jal        processors_configured
    sd         $s0,0($sp)
    jal        init_gfx_group_table
    move       $s0,$v0
    jal        init_gthread_table
    nop
    move       $a0,$s0
    jal        kern_calloc
    li         $a1,32
    move       $a1,$v0
    li         $a2,32
    ld         $a0,-30720($gp)
    move       $a3,$s0
    li         $a4,32
    sd         $v0,0($gp)
    jal        ksym_add
    daddiu     $a0,$a0,536
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00001e20:
    lui        $a4,0x2
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a3,$a4
    jal        cmn_err
    daddiu     $a1,$a1,376
    lui        $a2,0x2
    b          .L00001d98
    sw         $a2,0($gp)

glabel gfx_conflict_scan
    daddiu     $sp,$sp,-48
    sd         $s1,24($sp)
    li         $a5,1
    move       $s1,$a1
    sd         $s0,32($sp)
    move       $s0,$zero
    beq        $a2, $a5, .L00001e7c
    sd         $ra,40($sp)
    move       $v0,$zero
.L00001e68:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001e7c:
    ld         $v0,24($a0)
    beqz       $v0, .L00001e98
    nop
    ld         $v1,8($s1)
    ld         $at,0($v0)
    beq        $at, $v1, .L00001ea0
    nop
.L00001e98:
    b          .L00001e68
    move       $v0,$zero
.L00001ea0:
    ld         $v0,16($a0)
    lw         $a1,0($s1)
    beqz       $v0, .L00001eb4
    sd         $a1,0($sp)
    ld         $s0,24($v0)
.L00001eb4:
    beqz       $s0, .L00001f14
    nop
    li         $a1,25
.L00001ec0:
    daddiu     $a0,$s0,80
    jal        psema
    sd         $a0,8($sp)
    lw         $a4,4($s0)
    li         $a3,8
    and        $a4,$a3,$a4
    li         $a2,2
    xor        $a3,$a3,$a4
    li         $a4,1
    sltiu      $a3,$a3,1
    ld         $a0,8($sp)
    movn       $a2,$a4,$a3
    jal        vsema
    sd         $a2,16($sp)
    ld         $a6,0($sp)
    ld         $a5,16($sp)
    bne        $a5, $a6, .L00001f1c
    li         $v0,1
    ld         $s0,24($s0)
    bnez       $s0, .L00001ec0
    li         $a1,25
.L00001f14:
    b          .L00001e68
    move       $v0,$zero
.L00001f1c:
    li         $a7,3
    b          .L00001e68
    sw         $a7,0($s1)

glabel irisgl_sproc_setup_scan
    daddiu     $sp,$sp,-48
    ld         $at,0($a1)
    sd         $s1,24($sp)
    move       $v0,$zero
    move       $s1,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    bne        $at, $a0, .L00001f60
    sd         $ra,32($sp)
.L00001f4c:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001f60:
    jal        gthread_create
    nop
    bnez       $v0, .L00001f78
    sd         $v0,8($sp)
    b          .L00001f4c
    move       $v0,$zero
.L00001f78:
    lw         $a0,8($v0)
    ori        $a0,$a0,0x2
    sw         $a0,8($v0)
    jal        GfxListWriterLock
    ld         $a0,16($s0)
    sd         $v0,0($sp)
    ld         $a0,8($sp)
    jal        gthread_attach_list
    ld         $a1,16($s0)
    ld         $a0,16($s0)
    jal        GfxListWriterUnlock
    ld         $a1,0($sp)
    jal        setgfxsched_thread
    move       $a0,$s1
    b          .L00001f4c
    move       $v0,$zero

glabel gfxopen
    daddiu     $sp,$sp,-160
    sd         $s8,104($sp)
    sd         $ra,80($sp)
    sd         $s6,72($sp)
    move       $s6,$a0
    jal        curthreadhandle
    sd         $s4,128($sp)
    ld         $s8,-30688($gp)
    move       $s4,$v0
    li         $a1,25
    jal        psema
    daddiu     $a0,$s8,16
    jal        is_gsn_bypass_thread
    move       $a0,$s4
    sd         $s2,88($sp)
    sd         $s3,96($sp)
    sd         $s7,112($sp)
    sd         $s0,120($sp)
    sd         $s1,136($sp)
    beqz       $v0, .L00002048
    sd         $s5,144($sp)
    jal        vsema
    daddiu     $a0,$s8,16
    li         $v0,1008
.L00002018:
    ld         $s2,88($sp)
    ld         $s3,96($sp)
    ld         $s6,72($sp)
    ld         $s8,104($sp)
    ld         $s7,112($sp)
    ld         $s0,120($sp)
    ld         $ra,80($sp)
    ld         $s4,128($sp)
    ld         $s1,136($sp)
    ld         $s5,144($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L00002048:
    lui        $a0,0x3
    lw         $v0,0($s6)
    ori        $a0,$a0,0xffff
    and        $v0,$a0,$v0
    slti       $at,$v0,2
    beqz       $at, .L00002340
    lw         $a4,0($gp)
    blez       $a4, .L00002450
    move       $s0,$zero
    ld         $s1,-30680($gp)
    dsll       $a1,$s0,0x3
    daddu      $a1,$s1,$a1
.L00002078:
    ld         $a1,0($a1)
    beqz       $a1, .L000020bc
    slt        $t0,$s0,$a4
    addiu      $s0,$s0,1
    slt        $a5,$s0,$a4
    dsll       $a3,$s0,0x3
    beqz       $a5, .L000020b8
    daddu      $a3,$s1,$a3
    ld         $a6,0($a3)
    beqz       $a6, .L000020bc
    slt        $t0,$s0,$a4
    addiu      $s0,$s0,1
    slt        $a7,$s0,$a4
    dsll       $a1,$s0,0x3
    bnez       $a7, .L00002078
    daddu      $a1,$s1,$a1
.L000020b8:
    slt        $t0,$s0,$a4
.L000020bc:
    beqz       $t0, .L00002450
    li         $s2,1
    move       $a0,$s4
    xor        $s5,$s2,$v0
    jal        gthread_find
    sltiu      $s5,$s5,1
    beqz       $v0, .L00002114
    move       $s3,$v0
    lw         $t8,8($v0)
    andi       $t8,$t8,0x4
    beqz       $t8, .L00002330
    nop
    ld         $v0,16($v0)
    beqz       $v0, .L000020fc
    nop
    sd         $zero,24($v0)
.L000020fc:
    jal        gthread_detach_list
    move       $a0,$s3
    jal        gthread_detach_group
    move       $a0,$s3
    jal        gthread_destroy
    ld         $a0,0($s3)
.L00002114:
    jal        gthread_create
    move       $a0,$s4
    beqz       $v0, .L00002320
    move       $s3,$v0
.L00002124:
    jal        gfx_group_find
    move       $a0,$s4
    move       $s7,$v0
    jal        gthread_find_gfxp
    move       $a0,$s4
    move       $s2,$v0
    beqz       $v0, .L0000216c
    sd         $v0,56($sp)
    li         $a0,8
.L00002148:
    lw         $ra,4($s2)
    and        $ra,$a0,$ra
    xor        $ra,$a0,$ra
    sltiu      $ra,$ra,1
    xor        $ra,$s5,$ra
    bnez       $ra, .L000022fc
    nop
    ld         $s2,24($s2)
    bnez       $s2, .L00002148
.L0000216c:
    sltu       $a3,$zero,$s5
    beqz       $s3, .L000023ac
    sd         $v0,48($sp)
    ld         $at,24($s3)
    sltu       $v0,$zero,$s5
    bnez       $at, .L00002350
    sd         $v0,64($sp)
.L00002188:
    ld         $v1,48($sp)
.L0000218c:
    bnez       $v1, .L000021a4
    nop
    jal        kern_malloc
    li         $a0,128
    b          .L000021b0
    move       $s2,$v0
.L000021a4:
    jal        kern_malloc
    li         $a0,128
    move       $s2,$v0
.L000021b0:
    dsll       $a2,$s0,0x3
    li         $a1,128
    daddu      $a2,$s1,$a2
    move       $a0,$s2
    jal        bzero
    sd         $s2,0($a2)
    sd         $s4,16($s2)
    ld         $a3,24($s3)
    sd         $zero,32($s2)
    li         $s1,1
    ld         $a1,-30720($gp)
    li         $a2,-1
    move       $a0,$s2
    sd         $zero,40($s2)
    sd         $a3,96($s2)
    jal        init_spinlock
    daddiu     $a1,$a1,760
    bnez       $s5, .L000023b4
.L000021f8:
    li         $a3,-1
    ld         $a2,-30720($gp)
    li         $a1,1
    daddiu     $a0,$s2,80
    jal        init_sema
    daddiu     $a2,$a2,168
    sd         $zero,112($s2)
    sd         $zero,104($s2)
    lh         $a5,-15328($zero)
    sra        $a4,$a5,0x6
    dsll       $a4,$a4,0x3
    daddu      $a4,$s2,$a4
    ld         $a3,104($a4)
    dsllv      $a5,$s1,$a5
    or         $a3,$a3,$a5
    ld         $a5,48($sp)
    bnez       $a5, .L00002278
    sd         $a3,104($a4)
    beqz       $s7, .L00002258
    move       $a0,$s3
    lw         $a5,4($s2)
    andi       $a5,$a5,0x8
    beqz       $a5, .L000023dc
    move       $a0,$s3
.L00002258:
    jal        gthread_attach_list
    move       $a1,$zero
    ld         $a6,16($s3)
    sd         $s2,24($a6)
.L00002268:
    jal        setgfxsched_thread
    move       $a0,$s4
    b          .L000022c8
    ld         $s1,64($sp)
.L00002278:
    beqz       $s7, .L00002290
    ld         $a3,48($sp)
    lw         $a7,4($s2)
    andi       $a7,$a7,0x8
    beqz       $a7, .L00002440
.L0000228c:
    ld         $a3,48($sp)
.L00002290:
    ld         $a3,24($a3)
    beqz       $a3, .L000022ac
    ld         $v0,56($sp)
.L0000229c:
    move       $v0,$a3
    ld         $a3,24($a3)
    bnez       $a3, .L0000229c
    nop
.L000022ac:
    beqz       $s7, .L000022c4
    sd         $s2,24($v0)
    lw         $a4,4($s2)
    andi       $a4,$a4,0x8
    beqz       $a4, .L00002430
    lw         $a1,40($sp)
.L000022c4:
    ld         $s1,64($sp)
.L000022c8:
    jal        vsema
    daddiu     $a0,$s8,16
    lw         $a7,56($s2)
    lui        $a6,0x2
    ori        $a7,$a7,0x2
    sw         $a7,56($s2)
    movz       $a6,$zero,$s1
    lw         $a5,0($s6)
    move       $v0,$zero
    or         $a6,$s0,$a6
    or         $a5,$a5,$a6
    b          .L00002018
    sw         $a5,0($s6)
.L000022fc:
    jal        vsema
    daddiu     $a0,$s8,16
    ld         $a2,-30720($gp)
    li         $a1,4
    li         $a0,2126
    jal        cmn_err_tag
    daddiu     $a2,$a2,576
    b          .L00002018
    li         $v0,19
.L00002320:
    jal        vsema
    daddiu     $a0,$s8,16
    b          .L00002018
    li         $v0,12
.L00002330:
    bnez       $v0, .L00002124
    nop
    b          .L00002114
    nop
.L00002340:
    jal        vsema
    daddiu     $a0,$s8,16
    b          .L00002018
    li         $v0,6
.L00002350:
    li         $a4,2
    li         $a5,1
    movn       $a4,$a5,$s5
    sw         $a4,0($sp)
    ld         $a3,24($s3)
    ld         $a0,-30672($gp)
    ld         $a3,0($a3)
    daddiu     $a1,$sp,0
    jal        gthread_scan
    sd         $a3,8($sp)
    lw         $a5,0($sp)
    li         $a6,3
    bne        $a5, $a6, .L0000218c
    ld         $v1,48($sp)
    jal        vsema
    daddiu     $a0,$s8,16
    ld         $a2,-30720($gp)
    li         $a1,4
    li         $a0,2127
    jal        cmn_err_tag
    daddiu     $a2,$a2,672
    b          .L00002018
    li         $v0,19
.L000023ac:
    b          .L00002188
    sd         $a3,64($sp)
.L000023b4:
    lw         $a6,4($s2)
    ori        $a6,$a6,0x8
    sw         $a6,4($s2)
    lui        $a5,0x3
    lw         $a4,0($s6)
    ori        $a5,$a5,0xffff
    and        $a5,$a5,$a4
    subu       $a4,$a4,$a5
    b          .L000021f8
    sw         $a4,0($s6)
.L000023dc:
    move       $a0,$s3
    jal        gthread_attach_list
    move       $a1,$zero
    jal        GfxListWriterLock
    ld         $a0,16($s3)
    ld         $a7,16($s3)
    sd         $s2,24($a7)
    sw         $s1,12($s7)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    ld         $a0,16($s3)
    ld         $a0,-30664($gp)
    ld         $t1,0($s3)
    sd         $t1,16($sp)
    sd         $s7,24($sp)
    ld         $t0,16($s3)
    daddiu     $a1,$sp,16
    jal        curthreadgroup_scan
    sd         $t0,32($sp)
    b          .L00002268
    nop
.L00002430:
    jal        GfxListWriterUnlock
    ld         $a0,16($s3)
    b          .L000022c8
    ld         $s1,64($sp)
.L00002440:
    jal        GfxListWriterLock
    ld         $a0,16($s3)
    b          .L0000228c
    sw         $v0,40($sp)
.L00002450:
    jal        vsema
    daddiu     $a0,$s8,16
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,544
    b          .L00002018
    li         $v0,19

glabel irisgl_sproc_cleanup
    li         $at,1
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    beq        $a2, $at, .L00002490
    move       $s0,$a0
    move       $v0,$zero
    b          .L000024cc
    nop
.L00002490:
    ld         $v0,24($a0)
    bne        $v0, $a1, .L000024c8
    sd         $ra,8($sp)
    jal        cleargfxsched_thread
    ld         $a0,0($a0)
    jal        gthread_detach_list
    move       $a0,$s0
    jal        gthread_detach_group
    move       $a0,$s0
    lw         $v1,8($s0)
    ld         $ra,8($sp)
    li         $a0,-3
    and        $v1,$v1,$a0
    sw         $v1,8($s0)
.L000024c8:
    move       $v0,$zero
.L000024cc:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfxclose
    daddiu     $sp,$sp,-112
    sd         $s6,56($sp)
    sd         $s0,80($sp)
    sd         $s7,88($sp)
    sd         $ra,32($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    jal        curthreadhandle
    sd         $s5,96($sp)
    lui        $s0,0x3
    ori        $s0,$s0,0xffff
    lui        $s5,0x2
    and        $s0,$s1,$s0
    and        $s7,$s5,$s0
    beq        $s7, $s5, .L00002528
    move       $s6,$v0
    ld         $a0,-30688($gp)
    li         $a1,25
    jal        psema
    daddiu     $a0,$a0,16
.L00002528:
    sd         $s3,48($sp)
    sd         $s2,64($sp)
    sd         $s4,72($sp)
    move       $a0,$s6
    jal        gthread_find
    sd         $s8,104($sp)
    lui        $a0,0x1
    lw         $a1,0($gp)
    ori        $a0,$a0,0xffff
    and        $a0,$s0,$a0
    slt        $a1,$a0,$a1
    move       $s4,$v0
    bnez       $a1, .L000025a4
    move       $s1,$v0
    beq        $s7, $s5, .L00002570
    ld         $a0,-30688($gp)
    jal        vsema
    daddiu     $a0,$a0,16
.L00002570:
    li         $v0,6
.L00002574:
    ld         $s3,48($sp)
    ld         $s6,56($sp)
    ld         $s2,64($sp)
    ld         $s4,72($sp)
    ld         $s0,80($sp)
    ld         $s7,88($sp)
    ld         $ra,32($sp)
    ld         $s1,40($sp)
    ld         $s5,96($sp)
    ld         $s8,104($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000025a4:
    ld         $v0,-30680($gp)
    dsll       $v1,$a0,0x3
    daddu      $v0,$v0,$v1
    ld         $s0,0($v0)
    beqz       $s0, .L000027c0
    nop
    beqz       $s4, .L000027ac
    sd         $v0,24($sp)
    ld         $v0,16($s4)
    beqz       $v0, .L000027ac
    nop
    ld         $s2,24($v0)
.L000025d4:
    ld         $s3,16($s0)
    beq        $s6, $s3, .L000027a0
    nop
    beq        $s7, $s5, .L000028a8
    nop
    beqz       $s4, .L000028ec
    nop
    ld         $a0,24($s4)
    beqz       $a0, .L000028a8
    nop
    move       $s3,$zero
    move       $s8,$zero
.L00002604:
    beqz       $s4, .L000027d8
    nop
.L0000260c:
    jal        GfxDetach
    move       $a0,$s0
    ld         $a1,24($s1)
    beqz       $a1, .L00002774
    move       $s4,$zero
    ld         $s4,16($s1)
    beqz       $s4, .L00002774
    nop
    jal        GfxListWriterLock
    move       $a0,$s4
    bne        $s0, $s2, .L0000277c
    sw         $v0,0($sp)
.L0000263c:
    ld         $a3,16($s1)
    ld         $a2,24($s0)
    sd         $a2,24($a3)
.L00002648:
    ld         $s2,24($s1)
.L0000264c:
    beqz       $s2, .L00002664
    nop
    lw         $a4,4($s0)
    andi       $a4,$a4,0x8
    beqz       $a4, .L0000283c
    nop
.L00002664:
    beqz       $s4, .L00002674
    move       $a0,$s4
    jal        GfxListWriterUnlock
    lw         $a1,0($sp)
.L00002674:
    jal        freesema
    daddiu     $a0,$s0,80
    ld         $v0,16($s1)
    beqz       $v0, .L00002694
    nop
    ld         $a5,24($v0)
    beqz       $a5, .L00002888
    nop
.L00002694:
    beqz       $s8, .L00002704
    nop
    jal        splhi
    nop
    move       $s4,$v0
    jal        gthread_find
    move       $a0,$s8
    beqz       $s3, .L00002804
    move       $s2,$v0
    beqz       $v0, .L0000281c
    nop
    lw         $a6,8($v0)
    andi       $a6,$a6,0x4
    beqz       $a6, .L000029bc
    nop
.L000026d0:
    jal        splx
    move       $a0,$s4
    ld         $v0,16($s2)
    beqz       $v0, .L000026e8
    nop
    sd         $zero,24($v0)
.L000026e8:
    jal        gthread_detach_list
    move       $a0,$s2
    jal        gthread_detach_group
    move       $a0,$s2
    jal        gthread_destroy
    ld         $a0,0($s2)
    move       $s3,$zero
.L00002704:
    ld         $a7,16($s1)
    beqz       $a7, .L0000282c
    nop
.L00002710:
    jal        streams_lock
    nop
    lw         $t0,56($s0)
    move       $a0,$s0
    li         $t1,-3
    and        $t0,$t0,$t1
    jal        gfxcleanup
    sw         $t0,56($s0)
    jal        streams_unlock
    nop
    ld         $t2,24($sp)
    beq        $s7, $s5, .L00002750
    sd         $zero,0($t2)
    ld         $a0,-30688($gp)
    jal        vsema
    daddiu     $a0,$a0,16
.L00002750:
    beqz       $s3, .L0000276c
    nop
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,6
.L0000276c:
    b          .L00002574
    move       $v0,$zero
.L00002774:
    beq        $s0, $s2, .L0000263c
    nop
.L0000277c:
    beqz       $s2, .L00002648
    nop
.L00002784:
    ld         $v0,24($s2)
    beq        $s0, $v0, .L000027b4
    nop
    bnez       $v0, .L00002784
    move       $s2,$v0
    b          .L0000264c
    ld         $s2,24($s1)
.L000027a0:
    move       $s3,$zero
    b          .L00002604
    move       $s8,$zero
.L000027ac:
    b          .L000025d4
    move       $s2,$zero
.L000027b4:
    ld         $a1,24($s0)
    b          .L00002648
    sd         $a1,24($s2)
.L000027c0:
    beq        $s7, $s5, .L000027d0
    ld         $a0,-30688($gp)
    jal        vsema
    daddiu     $a0,$a0,16
.L000027d0:
    b          .L00002574
    li         $v0,19
.L000027d8:
    jal        gthread_create
    move       $a0,$s6
    move       $s4,$v0
    bnez       $v0, .L000028f8
    move       $s1,$v0
    beq        $s7, $s5, .L000027fc
    ld         $a0,-30688($gp)
    jal        vsema
    daddiu     $a0,$a0,16
.L000027fc:
    b          .L00002574
    li         $v0,12
.L00002804:
    beqz       $v0, .L0000281c
    nop
    lw         $a1,8($v0)
    andi       $a1,$a1,0x4
    bnez       $a1, .L000026d0
    nop
.L0000281c:
    jal        splx
    move       $a0,$s4
    b          .L00002704
    move       $s3,$zero
.L0000282c:
    jal        gthread_destroy
    ld         $a0,0($s1)
    b          .L00002710
    nop
.L0000283c:
    ld         $v0,16($s1)
    beqz       $v0, .L00002664
    nop
    ld         $a2,24($v0)
    bnez       $a2, .L00002664
    daddiu     $s6,$s2,16
    jal        mutex_spinlock
    move       $a0,$s6
    move       $a1,$v0
    sw         $zero,12($s2)
    jal        mutex_spinunlock
    move       $a0,$s6
    jal        gthread_detach_group
    move       $a0,$s1
    ld         $a0,-30656($gp)
    jal        gthread_scan
    move       $a1,$s2
    b          .L00002664
    nop
.L00002888:
    jal        cleargfxsched_thread
    ld         $a0,0($s1)
    jal        gthread_detach_list
    move       $a0,$s1
    jal        gthread_detach_group
    move       $a0,$s1
    b          .L00002694
    nop
.L000028a8:
    jal        splhi
    move       $s8,$s3
    sd         $v0,16($sp)
    jal        gthread_find
    move       $a0,$s3
    beqz       $v0, .L00002930
    move       $s3,$v0
    ld         $a0,16($v0)
    beqz       $a0, .L000029b4
    nop
    ld         $a1,24($a0)
    beqz       $a1, .L000029a4
    nop
    bnez       $a1, .L00002968
    daddiu     $v0,$a0,24
    b          .L000029ac
    nop
.L000028ec:
    move       $s3,$zero
    b          .L00002604
    move       $s8,$zero
.L000028f8:
    sd         $zero,24($s0)
    sd         $s6,16($s0)
    sd         $zero,112($s0)
    move       $a0,$v0
    sd         $zero,104($s0)
    jal        gthread_attach_list
    move       $a1,$zero
    ld         $a3,16($s4)
    move       $s2,$s0
    move       $a0,$s6
    jal        setgfxsched_thread
    sd         $s0,24($a3)
    b          .L0000260c
    nop
.L00002930:
    move       $s3,$zero
.L00002934:
    jal        splx
    ld         $a0,16($sp)
    beqz       $s4, .L000027d8
    nop
    sd         $s6,16($s0)
    ld         $a4,24($s2)
    sd         $a4,24($s0)
    b          .L00002604
    sd         $s0,24($s2)
.L00002958:
    daddiu     $v0,$a1,24
    ld         $a1,24($a1)
    beqz       $a1, .L000029ac
    nop
.L00002968:
    bne        $s0, $a1, .L00002958
    nop
    beqz       $a1, .L000029ac
    sd         $v0,8($sp)
    jal        GfxListWriterLock
    nop
    ld         $a6,8($sp)
    ld         $a5,0($a6)
    ld         $a5,24($a5)
    sd         $a5,0($a6)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    ld         $a0,16($s3)
    b          .L00002934
    li         $s3,1
.L000029a4:
    b          .L00002934
    move       $s3,$zero
.L000029ac:
    b          .L00002934
    move       $s3,$zero
.L000029b4:
    b          .L00002934
    move       $s3,$zero
.L000029bc:
    jal        splx
    move       $a0,$s4
    jal        curproc
    nop
    jal        proc_name
    move       $a0,$v0
    jal        curproc
    move       $s3,$v0
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    ld         $s4,-30720($gp)
    li         $a0,1
    move       $a2,$s3
    jal        cmn_err
    daddiu     $a1,$s4,768
    jal        threadhandle_to_proc
    ld         $a0,0($s2)
    jal        proc_name
    move       $a0,$v0
    move       $s3,$v0
    jal        threadhandle_to_proc
    ld         $a0,0($s2)
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    daddiu     $a1,$s4,848
    li         $a0,1
    jal        cmn_err
    move       $a2,$s3
    jal        threadhandle_to_proc
    ld         $a0,0($s2)
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00002704
    li         $s3,1

glabel GfxListWriterLock
    daddiu     $sp,$sp,-32
    sd         $s2,24($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    daddiu     $s0,$a0,16
    sd         $ra,8($sp)
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $at,4($s1)
    move       $a3,$v0
    blez       $at, .L00002aac
    daddiu     $s2,$s1,8
    move       $a0,$s2
.L00002a88:
    li         $a1,25
    jal        sv_wait
    move       $a2,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    move       $a3,$v0
    lw         $v0,4($s1)
    bgtz       $v0, .L00002a88
    move       $a0,$s2
.L00002aac:
    ld         $ra,8($sp)
    ld         $s2,24($sp)
    move       $v0,$a3
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxListWriterUnlock
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$a0,16
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel GfxListReaderLock
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,16
    jal        mutex_spinlock
    sd         $a0,16($sp)
    lw         $at,4($s8)
    move       $a1,$v0
    ld         $a0,16($sp)
    addiu      $at,$at,1
    jal        mutex_spinunlock
    sw         $at,4($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel GfxListReaderUnlock
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    daddiu     $a0,$a0,16
    jal        mutex_spinlock
    sd         $a0,24($sp)
    lw         $at,4($s8)
    sd         $v0,16($sp)
    daddiu     $a0,$s8,8
    addiu      $at,$at,-1
    jal        sv_signal
    sw         $at,4($s8)
    ld         $s8,8($sp)
    ld         $a0,24($sp)
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gfxread
    jr         $ra
    li         $v0,54

glabel gfxwrite
    jr         $ra
    li         $v0,54

glabel gfxioctl
    daddiu     $sp,$sp,-112
    sd         $a4,48($sp)
    sd         $s3,56($sp)
    sd         $s0,80($sp)
    move       $s0,$a0
    sd         $s1,88($sp)
    move       $s1,$a1
    move       $s3,$a2
    sd         $s4,72($sp)
    sd         $ra,64($sp)
    jal        curthreadhandle
    move       $s4,$a5
    move       $a0,$v0
    jal        gthread_find
    sd         $s2,96($sp)
    lh         $a5,-15328($zero)
    ld         $a4,0($gp)
    dsll       $a5,$a5,0x5
    daddu      $a4,$a4,$a5
    lw         $a3,12($a4)
    lui        $a2,0x1
    lui        $a1,0x3
    ori        $a1,$a1,0xffff
    addiu      $a3,$a3,1
    sw         $a3,12($a4)
    ori        $a2,$a2,0xffff
    and        $a1,$s0,$a1
    lw         $at,0($gp)
    and        $a1,$a1,$a2
    slt        $at,$a1,$at
    beqz       $at, .L00002cec
    move       $s2,$v0
    ld         $s0,-30680($gp)
    dsll       $t8,$a1,0x3
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    beqz       $s0, .L00002d44
    nop
    beqz       $v0, .L00002d3c
    nop
    lw         $t9,4($s0)
    andi       $t9,$t9,0x8
    beqz       $t9, .L00002c58
    ld         $v0,24($v0)
    beqz       $v0, .L00002c70
    li         $v0,101
    ld         $ra,0($s2)
    ld         $at,16($s0)
    beq        $ra, $at, .L00002c70
    li         $v0,101
    b          .L00002d1c
    li         $v0,13
.L00002c58:
    beqz       $v0, .L00002c70
    li         $v0,101
    li         $a1,25
    jal        psema
    daddiu     $a0,$s0,80
    li         $v0,101
.L00002c70:
    beq        $s1, $v0, .L00002cf4
    li         $v1,102
    beq        $s1, $v1, .L00002eb8
    li         $a0,105
    beq        $s1, $a0, .L00002ef0
    li         $a1,103
    beq        $s1, $a1, .L00002f30
    li         $a2,112
    beq        $s1, $a2, .L00002f68
    li         $a3,113
    beq        $s1, $a3, .L00002fa0
    nop
    ld         $v0,32($s0)
    beqz       $v0, .L00002d70
    sltiu      $a4,$s1,10000
    beqz       $a4, .L00002d4c
    sltiu      $a5,$s1,1000
    beqz       $a5, .L00002de8
    li         $a6,108
    beq        $s1, $a6, .L00002fc0
    li         $a7,104
    beq        $s1, $a7, .L00002e80
    li         $t0,110
    beq        $s1, $t0, .L00002d78
    nop
    ld         $a3,8($s0)
    ld         $t1,16($a3)
    beq        $t1, $s0, .L00002e04
    li         $a0,106
    b          .L00002d00
    li         $s1,1
.L00002cec:
    b          .L00002d1c
    li         $v0,6
.L00002cf4:
    lw         $t2,0($gp)
    move       $s1,$zero
    sw         $t2,0($s4)
.L00002d00:
    ld         $t3,24($s2)
.L00002d04:
    beqz       $t3, .L00002d1c
    move       $v0,$s1
    lw         $t8,4($s0)
    andi       $t8,$t8,0x8
    beqz       $t8, .L00002f10
    move       $v0,$s1
.L00002d1c:
    ld         $s2,96($sp)
    ld         $s3,56($sp)
    ld         $ra,64($sp)
    ld         $s4,72($sp)
    ld         $s0,80($sp)
    ld         $s1,88($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00002d3c:
    b          .L00002d1c
    li         $v0,13
.L00002d44:
    b          .L00002d1c
    li         $v0,19
.L00002d4c:
    ld         $t9,200($v0)
    move       $a0,$s0
    move       $a4,$s4
    move       $a3,$s3
    move       $a2,$s1
    jalr       $t9
    ld         $a1,72($s0)
    b          .L00002d00
    move       $s1,$v0
.L00002d70:
    b          .L00002d00
    li         $s1,13
.L00002d78:
    b          .L00002d8c
    ld         $v0,40($s0)
.L00002d80:
    jal        ddv_unlock
    ld         $a0,48($s0)
    ld         $v0,40($s0)
.L00002d8c:
    ld         $ra,72($v0)
    bne        $ra, $s0, .L00002e40
    li         $a1,537
.L00002d98:
    jal        ddv_lock
    ld         $a0,48($s0)
    ld         $at,40($s0)
    ld         $at,72($at)
    bne        $at, $s0, .L00002d80
    nop
    ld         $v0,32($s0)
    ld         $v0,96($v0)
    move       $a0,$s0
    move       $a1,$zero
    jalr       $v0
    li         $a2,-1
    lw         $v1,4($s0)
    move       $s1,$v0
    ld         $a0,48($s0)
    ori        $v1,$v1,0x20
    jal        ddv_unlock
    sw         $v1,4($s0)
    b          .L00002d04
    ld         $t3,24($s2)
.L00002de8:
    move       $a0,$s0
    move       $a1,$s1
    move       $a2,$s3
    jal        RRM_Dispatch
    move       $a3,$s4
    b          .L00002d00
    move       $s1,$v0
.L00002e04:
    beq        $s1, $a0, .L00002ff8
    li         $a1,107
    beq        $s1, $a1, .L00003078
    li         $a2,109
    beq        $s1, $a2, .L0000309c
    li         $a4,111
    beq        $s1, $a4, .L000030d4
    li         $a1,4
    ld         $a2,-30720($gp)
    li         $a0,2128
    move       $a3,$s1
    jal        cmn_err_tag
    daddiu     $a2,$a2,920
    b          .L00002d00
    li         $s1,22
.L00002e40:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s0)
    sd         $s0,72($a4)
    ld         $a3,40($s0)
    lw         $a3,104($a3)
    beqz       $a3, .L00002d98
    nop
.L00002e60:
    jal        us_delay
    li         $a0,2
    ld         $a5,40($s0)
    lw         $a5,104($a5)
    bnez       $a5, .L00002e60
    nop
    b          .L00002d98
    nop
.L00002e80:
    lw         $a6,4($s0)
    andi       $a6,$a6,0x8
    bnez       $a6, .L00002f20
    nop
    ld         $a7,24($s2)
    beqz       $a7, .L00002f20
    nop
    jal        threadgroup_refcnt
    ld         $a0,0($s2)
    li         $t0,1
    beq        $v0, $t0, .L00002f20
    nop
    b          .L00002d00
    li         $s1,16
.L00002eb8:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s3
    li         $a6,1
    li         $a5,4
    li         $a2,24
    ld         $a3,-30632($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000030a4
    lw         $v0,0($sp)
    b          .L00002d00
    li         $s1,14
.L00002ef0:
    move       $a0,$s3
    li         $a2,4
    jal        copyin
    daddiu     $a1,$sp,40
    beqz       $v0, .L000030bc
    lw         $a0,40($sp)
    b          .L00002d00
    li         $s1,14
.L00002f10:
    jal        vsema
    daddiu     $a0,$s0,80
    b          .L00002d1c
    move       $v0,$s1
.L00002f20:
    jal        GfxDetach
    move       $a0,$s0
    b          .L00002d00
    move       $s1,$zero
.L00002f30:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s3
    li         $a6,1
    li         $a5,4
    li         $a2,16
    ld         $a3,-30640($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000030f4
    lw         $v0,0($sp)
    b          .L00002d00
    li         $s1,14
.L00002f68:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s3
    li         $a6,1
    li         $a5,4
    li         $a2,16
    ld         $a3,-30640($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L0000310c
    lw         $v0,0($sp)
    b          .L00002d00
    li         $s1,14
.L00002fa0:
    jal        drv_priv
    ld         $a0,48($sp)
    bnez       $v0, .L00002d00
    move       $s1,$v0
    lw         $t1,4($s0)
    ori        $t1,$t1,0x4
    b          .L00002d00
    sw         $t1,4($s0)
.L00002fc0:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s3
    li         $a6,1
    li         $a5,4
    li         $a2,40
    ld         $a3,-30648($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000032b0
    nop
    b          .L00002d00
    li         $s1,14
.L00002ff8:
    ld         $a2,40($s0)
    ld         $t2,72($a2)
    bne        $t2, $s0, .L000031bc
    li         $a1,537
.L00003008:
    ld         $t3,24($v0)
    jalr       $t3
    move       $a0,$s0
    ld         $t8,40($s0)
    move       $s1,$v0
    jal        splhi
    sw         $zero,128($t8)
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L0000303c
    move       $s3,$v0
    jalr       $a1
    move       $a0,$s0
.L0000303c:
    ld         $a1,40($s0)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s3
    lw         $a2,4($s0)
    andi       $a2,$a2,0x1
    beqz       $a2, .L00002d00
    nop
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00002d04
    ld         $t3,24($s2)
.L00003078:
    ld         $a2,40($s0)
    ld         $a3,72($a2)
    bne        $a3, $s0, .L000031fc
    li         $a1,537
.L00003088:
    ld         $a4,40($v0)
    jalr       $a4
    move       $a0,$s0
    b          .L00002d00
    move       $s1,$v0
.L0000309c:
    b          .L00002d00
    move       $s1,$zero
.L000030a4:
    lw         $a5,0($gp)
    sltu       $a5,$v0,$a5
    bnez       $a5, .L00003124
    ld         $a4,-30712($gp)
    b          .L00002d00
    li         $s1,19
.L000030bc:
    lw         $a6,0($gp)
    sltu       $a6,$a0,$a6
    bnez       $a6, .L00003144
    ld         $v0,-30712($gp)
    b          .L00002d00
    li         $s1,19
.L000030d4:
    ld         $a1,0($a3)
    move       $a0,$s3
    li         $a2,16
    jal        copyin
    daddiu     $a1,$a1,16
    li         $s1,14
    b          .L00002d00
    movz       $s1,$zero,$v0
.L000030f4:
    lw         $a2,0($gp)
    sltu       $a2,$v0,$a2
    bnez       $a2, .L00003170
    ld         $a3,-30712($gp)
    b          .L00002d00
    li         $s1,19
.L0000310c:
    lw         $a3,0($gp)
    sltu       $a3,$v0,$a3
    bnez       $a3, .L0000319c
    ld         $a3,-30712($gp)
    b          .L00002d00
    li         $s1,19
.L00003124:
    dsll32     $a5,$v0,0x0
    dsrl       $a5,$a5,0x1d
    daddu      $a4,$a4,$a5
    ld         $a4,0($a4)
    bnez       $a4, .L0000323c
    nop
    b          .L00002d00
    li         $s1,19
.L00003144:
    dsll32     $v1,$a0,0x0
    dsrl       $v1,$v1,0x1d
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    beqz       $v0, .L000032cc
    nop
    ld         $a0,8($v0)
    move       $s1,$zero
    sltu       $a0,$zero,$a0
    b          .L00002d00
    sw         $a0,0($s4)
.L00003170:
    dsll32     $a2,$v0,0x0
    dsrl       $a2,$a2,0x1d
    daddu      $a2,$a3,$a2
    ld         $a2,0($a2)
    beqz       $a2, .L000032d4
    nop
    ld         $a4,32($s0)
    beqz       $a4, .L000032dc
    nop
    b          .L00002d00
    li         $s1,16
.L0000319c:
    dsll32     $a2,$v0,0x0
    dsrl       $a2,$a2,0x1d
    daddu      $a2,$a3,$a2
    ld         $a2,0($a2)
    bnez       $a2, .L00003260
    nop
    b          .L00002d00
    li         $s1,19
.L000031bc:
    jal        psema
    daddiu     $a0,$a2,56
    ld         $a4,40($s0)
    sd         $s0,72($a4)
    ld         $a3,40($s0)
    lw         $a3,104($a3)
    beqz       $a3, .L000031f4
    nop
.L000031dc:
    jal        us_delay
    li         $a0,2
    ld         $a5,40($s0)
    lw         $a5,104($a5)
    bnez       $a5, .L000031dc
    nop
.L000031f4:
    b          .L00003008
    ld         $v0,32($s0)
.L000031fc:
    jal        psema
    daddiu     $a0,$a2,56
    ld         $a7,40($s0)
    sd         $s0,72($a7)
    ld         $a6,40($s0)
    lw         $a6,104($a6)
    beqz       $a6, .L00003234
    nop
.L0000321c:
    jal        us_delay
    li         $a0,2
    ld         $t0,40($s0)
    lw         $t0,104($t0)
    bnez       $t0, .L0000321c
    nop
.L00003234:
    b          .L00003088
    ld         $v0,32($s0)
.L0000323c:
    ld         $t1,56($a4)
    ld         $t1,0($t1)
    lw         $a2,16($sp)
    ld         $a1,8($sp)
    move       $a3,$s4
    jalr       $t1
    ld         $a0,64($a4)
    b          .L00002d00
    move       $s1,$v0
.L00003260:
    sd         $a2,8($s0)
    ld         $t8,64($a2)
    sd         $t8,40($s0)
    ld         $t3,56($a2)
    sd         $t3,32($s0)
    lwu        $t2,0($sp)
    dsll       $t2,$t2,0x3
    daddu      $t2,$a3,$t2
    ld         $t2,0($t2)
    ld         $t2,56($t2)
    ld         $t2,8($t2)
    move       $a0,$s0
    jalr       $t2
    ld         $a1,8($sp)
    beqz       $v0, .L0000332c
    move       $s1,$v0
    sd         $zero,32($s0)
    sd         $zero,40($s0)
    b          .L00002d00
    sd         $zero,8($s0)
.L000032b0:
    ld         $t9,32($s0)
    ld         $t9,32($t9)
    move       $a0,$s0
    jalr       $t9
    daddiu     $a1,$sp,0
    b          .L00002d00
    move       $s1,$v0
.L000032cc:
    b          .L00002d00
    li         $s1,19
.L000032d4:
    b          .L00002d00
    li         $s1,19
.L000032dc:
    sd         $a2,8($s0)
    ld         $v1,56($a2)
    sd         $v1,32($s0)
    ld         $v0,64($a2)
    sd         $v0,40($s0)
    lwu        $at,0($sp)
    dsll       $at,$at,0x3
    daddu      $at,$a3,$at
    ld         $at,0($at)
    ld         $at,56($at)
    ld         $at,8($at)
    move       $a0,$s0
    jalr       $at
    ld         $a1,8($sp)
    beqz       $v0, .L00003344
    move       $s1,$v0
    sd         $zero,32($s0)
    sd         $zero,40($s0)
    b          .L00002d00
    sd         $zero,8($s0)
.L0000332c:
    ld         $a3,8($s0)
    ld         $a0,16($a3)
    bnez       $a0, .L00002d00
    nop
    b          .L00002d00
    sd         $s0,16($a3)
.L00003344:
    ld         $a3,8($s0)
    ld         $a1,16($a3)
    bnez       $a1, .L00002d00
    nop
    b          .L00002d00
    sd         $s0,16($a3)

glabel gfxmap
    jr         $ra
    li         $v0,54

glabel gfxunmap
    jr         $ra
    li         $v0,54

glabel gfx_shalloc
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    jal        curthreadhandle
    sd         $s1,24($sp)
    jal        splhi
    move       $s1,$v0
    sd         $v0,0($sp)
    move       $a0,$s1
    jal        gfx_group_create
    sd         $s0,16($sp)
    move       $s0,$v0
    jal        gthread_find
    move       $a0,$s1
    beqz       $v0, .L00003408
    move       $s1,$v0
    move       $a0,$v0
    jal        gthread_attach_group
    move       $a1,$s0
    ld         $a0,16($s1)
    beqz       $a0, .L00003408
    nop
    jal        GfxListWriterLock
    nop
    ld         $a0,16($s1)
    ld         $a4,24($a0)
    li         $a5,1
    beqz       $a4, .L00003400
    move       $a1,$v0
    lw         $at,4($a4)
    andi       $at,$at,0x8
    beqz       $at, .L00003424
    nop
.L000033ec:
    sd         $s0,96($a4)
    ld         $a4,24($a4)
    bnez       $a4, .L000033ec
    nop
    ld         $a0,16($s1)
.L00003400:
    jal        GfxListWriterUnlock
    nop
.L00003408:
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003424:
    b          .L000033ec
    sw         $a5,12($s0)

glabel gfx_shfree
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        curthreadhandle
    nop
    jal        gfx_group_find
    move       $a0,$v0
    jal        gfx_group_destroy
    move       $a0,$v0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfx_frs_valid_pipenum
    lw         $v0,0($gp)
    jr         $ra
    slt        $v0,$a0,$v0

glabel gfx_frs_install
    ld         $a4,-30712($gp)
    dsll       $a6,$a1,0x3
    daddu      $a4,$a4,$a6
    ld         $a4,0($a4)
    ld         $a3,56($a4)
    ld         $a3,208($a3)
    daddiu     $sp,$sp,-16
    move       $a5,$a0
    beqz       $a3, .L000034a4
    sd         $ra,0($sp)
    ld         $a0,64($a4)
    jalr       $a3
    move       $a1,$a5
    ld         $ra,0($sp)
.L0000349c:
    jr         $ra
    daddiu     $sp,$sp,16
.L000034a4:
    ld         $a1,-30720($gp)
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,952
    b          .L0000349c
    ld         $ra,0($sp)

glabel gfx_frs_uninstall
    ld         $a2,-30712($gp)
    dsll       $a3,$a0,0x3
    daddu      $a2,$a2,$a3
    ld         $a2,0($a2)
    ld         $a3,56($a2)
    ld         $a3,216($a3)
    daddiu     $sp,$sp,-16
    beqz       $a3, .L000034f4
    sd         $ra,0($sp)
    jalr       $a3
    ld         $a0,64($a2)
    ld         $ra,0($sp)
.L000034ec:
    jr         $ra
    daddiu     $sp,$sp,16
.L000034f4:
    ld         $a1,-30720($gp)
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,992
    b          .L000034ec
    ld         $ra,0($sp)

glabel irix5_to_gfx_getboardinfo_args
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00003548
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,12
    bnez       $at, .L00003570
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00003538:
    li         $v1,12
    sw         $v1,4($s0)
    b          .L00003564
    move       $v0,$zero
.L00003548:
    ld         $a0,16($a3)
    lw         $a3,0($a0)
    sw         $a3,0($a1)
    lwu        $a2,4($a0)
    sd         $a2,8($a1)
    lw         $a0,8($a0)
    sw         $a0,16($a1)
.L00003564:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00003570:
    jal        kern_malloc
    li         $a0,12
    ld         $ra,8($sp)
    b          .L00003538
    sd         $v0,16($s0)

glabel irix5_to_gfx_download_args
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L000035c0
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,32
    bnez       $at, .L00003610
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L000035b0:
    li         $v1,32
    sw         $v1,4($s0)
    b          .L00003604
    move       $v0,$zero
.L000035c0:
    ld         $a0,16($a3)
    lw         $t0,0($a0)
    sw         $t0,0($a1)
    lwu        $a7,4($a0)
    sd         $a7,8($a1)
    lw         $a6,8($a0)
    sw         $a6,16($a1)
    lw         $a5,12($a0)
    sw         $a5,20($a1)
    lw         $a4,16($a0)
    sw         $a4,24($a1)
    lw         $a3,20($a0)
    sw         $a3,28($a1)
    lw         $a2,24($a0)
    sw         $a2,32($a1)
    lw         $a0,28($a0)
    sw         $a0,36($a1)
.L00003604:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00003610:
    jal        kern_malloc
    li         $a0,32
    ld         $ra,8($sp)
    b          .L000035b0
    sd         $v0,16($s0)

glabel irix5_to_gfx_attach_board_args
    move       $v0,$zero
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    bnez       $a0, .L00003660
    move       $s0,$a3
    lw         $at,0($a3)
    sltiu      $at,$at,8
    bnez       $at, .L00003680
    sd         $ra,8($sp)
    ld         $v0,8($a3)
    sd         $v0,16($a3)
.L00003650:
    li         $v1,8
    sw         $v1,4($s0)
    b          .L00003674
    move       $v0,$zero
.L00003660:
    ld         $a0,16($a3)
    lw         $a2,0($a0)
    sw         $a2,0($a1)
    lwu        $a0,4($a0)
    sd         $a0,8($a1)
.L00003674:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00003680:
    jal        kern_malloc
    li         $a0,8
    ld         $ra,8($sp)
    b          .L00003650
    sd         $v0,16($s0)
