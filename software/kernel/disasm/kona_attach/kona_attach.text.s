.section .text
.set noat
.set noreorder


glabel new_pipe_to_region
    daddiu     $sp,$sp,-32
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a0, .L00000040
    sd         $ra,24($sp)
    ld         $at,32($s0)
    ld         $at,104($at)
    jalr       $at
    nop
    ld         $a0,48($s0)
    beqz       $a0, .L00000040
    sd         $zero,72($s0)
    jal        ddv_destroy_handle
    sd         $zero,48($s0)
.L00000040:
    ld         $s0,0($sp)
    ld         $ra,24($sp)
    ld         $v1,16($sp)
    ld         $v0,8($sp)
    daddiu     $sp,$sp,32
    jr         $ra
    sd         $v0,48($v1)

glabel KONAattach
    li         $a4,1
    li         $a6,16
    ld         $t0,-30720($gp)
    move       $a7,$zero
    ld         $v0,40($a0)
    li         $t2,22
    daddiu     $sp,$sp,-160
    andi       $a2,$a1,0x3fff
    sd         $s1,136($sp)
    move       $s1,$a0
    sd         $s0,128($sp)
    move       $s0,$a1
    daddiu     $t1,$sp,0
.L00000090:
    daddu      $a0,$a7,$t0
    daddu      $a1,$a7,$t1
    ld         $a0,0($a0)
    addiu      $v1,$a7,8
    addiu      $a6,$a6,-2
    sd         $a0,0($a1)
    daddu      $at,$v1,$t0
    daddu      $v1,$v1,$t1
    ld         $at,0($at)
    addiu      $a7,$a7,16
    bgtz       $a6, .L00000090
    sd         $at,0($v1)
    ld         $v1,2272($v0)
    beqz       $v1, .L000001a8
    sd         $ra,144($sp)
    sw         $a4,20($sp)
    sw         $a4,52($sp)
    beqz       $a2, .L000000f4
    sw         $a4,116($sp)
.L000000dc:
    ld         $ra,144($sp)
.L000000e0:
    move       $v0,$t2
    ld         $s0,128($sp)
    ld         $s1,136($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L000000f4:
    move       $a1,$s1
    ld         $a0,-30712($gp)
    jal        gfxdd_recycle
    move       $a2,$s0
    beqz       $v0, .L00000118
    daddiu     $a1,$sp,0
    move       $t2,$zero
    b          .L000000e0
    ld         $ra,144($sp)
.L00000118:
    move       $a0,$zero
    move       $v0,$zero
.L00000120:
    addiu      $a0,$a0,1
    dsll       $a3,$v0,0x5
    daddu      $a3,$a1,$a3
    dsll32     $v0,$a0,0x0
    ld         $a5,8($a3)
    dsrl32     $v0,$v0,0x0
    ld         $a2,0($a3)
    sltiu      $a4,$v0,4
    daddu      $a5,$a5,$s0
    sd         $a5,8($a3)
    daddu      $a2,$a2,$s0
    bnez       $a4, .L00000120
    sd         $a2,0($a3)
    lw         $a4,4($s1)
    andi       $a4,$a4,0x4
    beqz       $a4, .L000001a0
    li         $v0,0xbfff
    li         $a6,4
    lui        $v0,0x20
    ori        $v0,$v0,0xbfff
.L00000170:
    daddiu     $a7,$s1,48
    daddiu     $a5,$sp,0
    move       $a4,$s1
    move       $a2,$s0
    dsll32     $a1,$v0,0x0
    ld         $a3,-30704($gp)
    li         $a0,1
    jal        gfxdd_mmap
    dsrl32     $a1,$a1,0x0
    li         $t2,12
    b          .L000000dc
    movz       $t2,$zero,$v0
.L000001a0:
    b          .L00000170
    li         $a6,3
.L000001a8:
    ld         $a2,-30720($gp)
    daddiu     $a1,$t0,128
    li         $a0,1
    lw         $a3,2184($v0)
    jal        cmn_err
    daddiu     $a2,$a2,192
    b          .L000000dc
    li         $t2,19

glabel KONAdetach
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-32
    lw         $at,0($gp)
    sd         $a0,8($sp)
    sd         $v0,0($sp)
    beqz       $at, .L000001f4
    sd         $ra,16($sp)
    ld         $a0,-30720($gp)
    sw         $zero,0($gp)
    jal        printf
    daddiu     $a0,$a0,196
.L000001f4:
    ld         $a1,8($sp)
    ld         $a0,48($a1)
    jal        gfxdd_munmap
    sd         $zero,48($a1)
    jal        kona_diag_map_cleanup
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,32
