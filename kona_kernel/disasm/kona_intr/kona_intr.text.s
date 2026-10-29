.section .text
.set noat
.set noreorder


glabel kona_arm_intr
    li         $v1,1
    sw         $v1,5464($a0)
    daddiu     $sp,$sp,-48
    ld         $v0,2376($a0)
    lui        $at,0x80
    sd         $s0,16($sp)
    move       $s0,$a0
    ori        $at,$at,0x240
    sd         $ra,24($sp)
    jal        gfx_pio_read_32
    daddu      $a0,$at,$v0
    li         $a1,259
    li         $a0,256
    beqz       $v0, .L00000100
    sd         $s1,40($sp)
    beq        $v0, $a0, .L000000c8
    li         $v1,258
    beq        $v0, $v1, .L000000ec
    move       $a0,$s0
    beq        $v0, $a1, .L00000084
    daddiu     $s1,$s0,2576
    li         $a0,2100
    ld         $a2,-30720($gp)
    li         $a1,4
    move       $a5,$v0
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a2,104
.L00000070:
    ld         $ra,24($sp)
.L00000074:
    ld         $s1,40($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000084:
    jal        mutex_spinlock
    move       $a0,$s1
    ld         $a0,5312($s0)
    beqz       $a0, .L000000b4
    sd         $v0,32($sp)
    jal        vsema
    daddiu     $a0,$s0,5296
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,5312($s0)
    ld         $v0,32($sp)
    sd         $zero,5312($s0)
.L000000b4:
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L00000074
    ld         $ra,24($sp)
.L000000c8:
    jal        vsema
    daddiu     $a0,$s0,5176
    ld         $a1,5192($s0)
    beqz       $a1, .L00000074
    ld         $ra,24($sp)
    jal        kona_untimeout
    move       $a0,$s0
    b          .L00000070
    sd         $zero,5192($s0)
.L000000ec:
    move       $a1,$zero
    jal        kona_mem_swapin_complete
    move       $a2,$zero
    b          .L00000074
    ld         $ra,24($sp)
.L00000100:
    sd         $zero,0($sp)
    move       $s1,$zero
.L00000108:
    ld         $a2,2376($s0)
    lui        $a0,0x80
    li         $a1,16
    ori        $a0,$a0,0x238
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    sd         $zero,8($sp)
    ld         $a1,2376($s0)
.L00000128:
    lui        $a0,0x80
    ori        $a0,$a0,0x238
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    andi       $a1,$v0,0x10
    bnez       $a1, .L00000168
    ld         $a2,8($sp)
    addiu      $a2,$a2,1
    sd         $a2,8($sp)
    slti       $a2,$a2,5001
    beqz       $a2, .L00000168
    nop
    jal        us_delay
    li         $a0,20
    b          .L00000128
    ld         $a1,2376($s0)
.L00000168:
    ld         $a1,2376($s0)
    lui        $a0,0x80
    li         $a2,1
    ori        $a0,$a0,0x240
    sw         $a2,5464($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a0,0($sp)
    sltiu      $a3,$a0,511
    beqz       $a3, .L000001a4
    andi       $a5,$v0,0xff
    addiu      $a0,$a0,1
    daddu      $a4,$a0,$s0
    sb         $v0,2615($a4)
    andi       $a5,$v0,0xff
.L000001a4:
    addiu      $s1,$s1,1
    beqz       $a5, .L000001b8
    sd         $a0,0($sp)
    slti       $a6,$s1,5000
    bnez       $a6, .L00000108
.L000001b8:
    ld         $a2,0($sp)
    ld         $a1,-30720($gp)
    daddiu     $a4,$s0,2616
    daddu      $a2,$a2,$s0
    li         $a0,6
    sb         $zero,2616($a2)
    daddiu     $a2,$a1,104
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a1,$a1,48
    slti       $a3,$s1,5000
    bnez       $a3, .L00000074
    ld         $ra,24($sp)
    ld         $a2,-30720($gp)
    li         $a0,4
    move       $a4,$s1
    daddiu     $a1,$a2,64
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a2,$a2,104
    b          .L00000074
    ld         $ra,24($sp)

glabel kona_ge_intr
    daddiu     $sp,$sp,-80
    sd         $s2,24($sp)
    ld         $s2,2584($a0)
    lw         $a5,0($s2)
    sd         $s0,40($sp)
    move       $s0,$a0
    sd         $ra,64($sp)
    sd         $s1,32($sp)
    beqz       $a5, .L00000258
    move       $s1,$a5
    sltiu      $at,$a5,256
    beqz       $at, .L0000025c
    sltiu      $a1,$s1,258
    lw         $a4,4($s2)
    lw         $v0,0($gp)
    li         $v1,256
    beq        $a4, $v1, .L000003d0
    sltu       $v0,$a5,$v0
.L00000258:
    sltiu      $a1,$s1,258
.L0000025c:
    ld         $v0,-30720($gp)
    lui        $a0,0xbad0
    or         $a0,$a5,$a0
    bnez       $a1, .L000002ac
    sw         $a0,0($s2)
    sltiu      $a1,$s1,259
    bnez       $a1, .L000003e0
    move       $a0,$s0
    sltiu      $a2,$s1,260
    bnez       $a2, .L00000354
    sltiu      $a3,$s1,261
    bnez       $a3, .L000003f4
    move       $a0,$s0
    li         $a4,261
    bne        $s1, $a4, .L0000046c
    move       $a0,$s0
    jal        kona_checkpipe_complete
    move       $a1,$zero
    b          .L0000036c
    ld         $ra,64($sp)
.L000002ac:
    sltiu      $a5,$s1,256
    bnez       $a5, .L00000408
    sltiu      $a6,$s1,257
    beqz       $a6, .L00000380
    lw         $a7,0($gp)
    lw         $a4,4($s2)
    sltu       $a7,$a4,$a7
    beqz       $a7, .L0000055c
    daddiu     $a2,$v0,104
    dsll32     $t9,$a4,0x0
    dsrl       $t8,$t9,0x1e
    dsrl32     $t9,$t9,0x0
    dsubu      $t8,$t8,$t9
    dsll       $t8,$t8,0x2
    ld         $s1,-30712($gp)
    dsubu      $t8,$t8,$t9
    dsll       $t8,$t8,0x4
    daddiu     $a0,$s0,2576
    sd         $a0,56($sp)
    daddu      $s1,$s1,$t8
    ld         $s1,112($s1)
    lw         $t1,8($s2)
    sw         $t1,64($s1)
    lw         $t0,12($s2)
    jal        mutex_spinlock
    sw         $t0,68($s1)
    ld         $ra,96($s1)
    ld         $s2,56($sp)
    beqz       $ra, .L00000340
    sd         $v0,48($sp)
    jal        vsema
    daddiu     $a0,$s1,80
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,96($s1)
    ld         $v0,48($sp)
    sd         $zero,96($s1)
.L00000340:
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L0000036c
    ld         $ra,64($sp)
.L00000354:
    li         $at,259
    bne        $s1, $at, .L0000046c
    move       $a0,$s0
    jal        kona_mopup_complete
    move       $a1,$zero
    ld         $ra,64($sp)
.L0000036c:
    ld         $s2,24($sp)
    ld         $s1,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000380:
    li         $v1,257
    bne        $s1, $v1, .L0000046c
    nop
    daddiu     $s1,$s0,2576
    jal        mutex_spinlock
    move       $a0,$s1
    ld         $a0,5288($s0)
    beqz       $a0, .L000003bc
    move       $s2,$v0
    jal        vsema
    daddiu     $a0,$s0,5272
    move       $a0,$s0
    jal        kona_untimeout
    ld         $a1,5288($s0)
    sd         $zero,5288($s0)
.L000003bc:
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L0000036c
    ld         $ra,64($sp)
.L000003d0:
    beqz       $v0, .L0000025c
    sltiu      $a1,$s1,258
    b          .L00000574
    lw         $a6,8($s2)
.L000003e0:
    move       $a1,$zero
    jal        kona_mem_swapout_complete
    move       $a2,$zero
    b          .L0000036c
    ld         $ra,64($sp)
.L000003f4:
    move       $a1,$zero
    jal        kona_mem_suspend_complete
    daddiu     $a2,$s2,4
    b          .L0000036c
    ld         $ra,64($sp)
.L00000408:
    bnez       $s1, .L0000046c
    nop
    move       $s1,$v0
    li         $a2,512
    daddiu     $a0,$s2,4
    daddiu     $a1,$s0,2616
    jal        kona_geprint
    sd         $a1,0($sp)
    bgez       $v0, .L0000044c
    ld         $a2,-30720($gp)
    ld         $a2,-30720($gp)
    daddiu     $a1,$s1,240
    li         $a0,4
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a2,$a2,104
    ld         $a2,-30720($gp)
.L0000044c:
    daddiu     $a1,$s1,272
    lw         $a3,2184($s0)
    li         $a0,6
    ld         $a4,0($sp)
    jal        cmn_err
    daddiu     $a2,$a2,104
    b          .L0000036c
    ld         $ra,64($sp)
.L0000046c:
    lw         $a7,8($s2)
    ld         $a2,-30720($gp)
    move       $a5,$s1
    li         $a1,4
    ld         $a3,-30720($gp)
    lw         $a6,4($s2)
    li         $a0,2101
    daddiu     $a2,$a2,288
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a3,104
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x2a0
    ld         $s1,-30720($gp)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x2a8
    sd         $v0,8($sp)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a0,2376($s0)
    lui        $a1,0x80
    move       $s2,$v0
    ori        $a1,$a1,0x2b8
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    move       $a4,$v0
    daddiu     $a1,$s1,344
    li         $a0,6
    ld         $a2,8($sp)
    jal        cmn_err
    move       $a3,$s2
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x260
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a0,2376($s0)
    lui        $a1,0x80
    ori        $a1,$a1,0x268
    sd         $v0,16($sp)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    ld         $a0,2376($s0)
    lui        $a1,0x80
    move       $s2,$v0
    ori        $a1,$a1,0x278
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    move       $a4,$v0
    daddiu     $a1,$s1,408
    li         $a0,6
    ld         $a2,16($sp)
    jal        cmn_err
    move       $a3,$s2
    b          .L0000036c
    ld         $ra,64($sp)
.L0000055c:
    daddiu     $a1,$v0,176
    lw         $a3,2184($s0)
    jal        cmn_err
    li         $a0,4
    b          .L0000036c
    ld         $ra,64($sp)
.L00000574:
    ld         $a1,-30720($gp)
    li         $a0,4
    sw         $a5,4($s2)
    move       $s1,$a4
    sw         $a4,0($s2)
    daddiu     $a2,$a1,104
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a1,$a1,112
    b          .L00000258
    lw         $a5,0($s2)
