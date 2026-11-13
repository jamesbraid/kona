.section .text
.set noat
.set noreorder


glabel kona_xg_intr_handler
    lh         $a1,-15328($zero)
    ld         $v1,0($gp)
    daddiu     $sp,$sp,-16
    dsll       $a1,$a1,0x5
    sd         $ra,8($sp)
    daddu      $v1,$v1,$a1
    lw         $v0,16($v1)
    ld         $a1,-30720($gp)
    addiu      $v0,$v0,1
    sw         $v0,16($v1)
    lw         $at,5268($a0)
    sd         $s0,0($sp)
    move       $s0,$a0
    daddiu     $a2,$a1,40
    addiu      $at,$at,1
    sw         $at,5268($a0)
    li         $a0,4
    jal        cmn_err
    lw         $a3,2184($s0)
    move       $a0,$s0
    jal        kona_die
    li         $a1,12
    jal        kona_report_errs
    move       $a0,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel kona_intr_handler
    lh         $a3,-15328($zero)
    ld         $a2,0($gp)
    dsll       $a3,$a3,0x5
    daddu      $a2,$a2,$a3
    daddiu     $sp,$sp,-48
    lw         $a1,16($a2)
    sd         $s0,16($sp)
    addiu      $a1,$a1,1
    sw         $a1,16($a2)
    lw         $at,2368($a0)
    li         $v0,256
    lw         $v1,5268($a0)
    move       $s0,$a0
    sd         $ra,32($sp)
    addiu      $v1,$v1,1
    beq        $at, $v0, .L000001e0
    sw         $v1,5268($a0)
    daddiu     $a0,$a0,2352
    jal        mutex_spinlock
    sd         $a0,8($sp)
    ld         $a1,2376($s0)
    lui        $a0,0x80
    sd         $v0,0($sp)
    ori        $a0,$a0,0x238
    sd         $s1,24($sp)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$a1
    lw         $s1,2368($s0)
    li         $t8,-33
    and        $s1,$s1,$v0
    and        $s1,$s1,$t8
    andi       $a1,$s1,0x1
    bnez       $a1, .L000001f0
    andi       $t8,$s1,0x2
.L000000f8:
    beqz       $t8, .L0000010c
    andi       $t9,$s1,0x4
    jal        kona_lowater_intr
    move       $a0,$s0
    andi       $t9,$s1,0x4
.L0000010c:
    bnez       $t9, .L00000210
    andi       $ra,$s1,0x8
.L00000114:
    beqz       $ra, .L00000128
    andi       $at,$s1,0x10
    jal        kona_video_intr
    move       $a0,$s0
    andi       $at,$s1,0x10
.L00000128:
    beqz       $at, .L0000013c
    andi       $v0,$s1,0x40
    jal        kona_arm_intr
    move       $a0,$s0
    andi       $v0,$s1,0x40
.L0000013c:
    beqz       $v0, .L00000168
    andi       $a3,$s1,0x100
    ld         $a2,-30720($gp)
    li         $a1,4
    ld         $a3,-30720($gp)
    li         $a0,2120
    daddiu     $a2,$a2,184
    lw         $a4,2184($s0)
    jal        cmn_err_tag
    daddiu     $a3,$a3,40
    andi       $a3,$s1,0x100
.L00000168:
    bnez       $a3, .L0000023c
    andi       $a4,$s1,0x200
.L00000170:
    beqz       $a4, .L00000184
    andi       $a5,$s1,0x400
    jal        kona_voc_intr
    move       $a0,$s0
    andi       $a5,$s1,0x400
.L00000184:
    bnez       $a5, .L00000268
    andi       $a6,$s1,0x800
.L0000018c:
    bnez       $a6, .L00000294
    ld         $a2,-30720($gp)
.L00000194:
    beqz       $s1, .L000001b8
    lui        $a1,0xbadc
    ld         $a1,2376($s0)
    lui        $a0,0x80
    ori        $a0,$a0,0x238
    daddu      $a0,$a0,$a1
    jal        gfx_pio_write_32
    move       $a1,$s1
    lui        $a1,0xbadc
.L000001b8:
    ld         $a0,2376($s0)
    lui        $a2,0x80
    ori        $a1,$a1,0xffe
    ori        $a2,$a2,0x228
    ld         $s1,24($sp)
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $a0,8($sp)
    jal        mutex_spinunlock
    ld         $a1,0($sp)
.L000001e0:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000001f0:
    ld         $a1,-30720($gp)
    li         $a0,4
    daddiu     $a2,$a1,40
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a1,$a1,48
    b          .L000000f8
    andi       $t8,$s1,0x2
.L00000210:
    ld         $a2,-30720($gp)
    li         $a0,4
    daddiu     $a1,$a2,120
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a2,$a2,40
    move       $a0,$s0
    jal        kona_die
    li         $a1,10
    b          .L00000114
    andi       $ra,$s1,0x8
.L0000023c:
    ld         $a2,-30720($gp)
    li         $a0,4
    daddiu     $a1,$a2,208
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a2,$a2,40
    move       $a0,$s0
    jal        kona_die
    li         $a1,22
    b          .L00000170
    andi       $a4,$s1,0x200
.L00000268:
    ld         $a2,-30720($gp)
    li         $a0,4
    daddiu     $a1,$a2,264
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a2,$a2,40
    move       $a0,$s0
    jal        kona_die
    li         $a1,13
    b          .L0000018c
    andi       $a6,$s1,0x800
.L00000294:
    li         $a0,4
    daddiu     $a1,$a2,320
    lw         $a3,2184($s0)
    jal        cmn_err
    daddiu     $a2,$a2,40
    move       $a0,$s0
    jal        kona_die
    li         $a1,14
    b          .L00000194
    nop

glabel kona_ge_intr_handler
    lh         $v1,-15328($zero)
    ld         $v0,0($gp)
    daddiu     $sp,$sp,-16
    dsll       $v1,$v1,0x5
    sd         $s8,8($sp)
    daddu      $v0,$v0,$v1
    lw         $at,16($v0)
    move       $s8,$a0
    sd         $ra,0($sp)
    addiu      $at,$at,1
    jal        kona_ge_intr
    sw         $at,16($v0)
    ld         $a0,2376($s8)
    lui        $a2,0x80
    li         $a1,32
    ori        $a2,$a2,0x238
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$a2
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
