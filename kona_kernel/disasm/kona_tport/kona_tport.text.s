.section .text
.set noat
.set noreorder


glabel kona_setcolor
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-64
    lw         $at,0($gp)
    sd         $a1,24($sp)
    sd         $s1,32($sp)
    move       $s1,$a0
    beqz       $at, .L00000034
    sd         $ra,48($sp)
    sw         $zero,0($gp)
    ld         $s1,32($sp)
.L0000002c:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000034:
    sd         $s1,-30720($gp)
    sd         $s2,40($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,56($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L00000084
    ori        $s2,$s2,0x86a1
    b          .L000000ac
    nop
.L0000007c:
    blez       $a0, .L000000ac
    sd         $v0,8($sp)
.L00000084:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L0000007c
    andi       $a0,$a0,0x7fe
.L000000ac:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $t8,-30720($gp)
    lui        $ra,0xc1
    ld         $t9,24($sp)
    daddu      $ra,$t8,$ra
    li         $v0,1
    sw         $v0,0($ra)
    li         $at,2
    sw         $at,0($ra)
    sw         $t9,0($ra)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    move       $t9,$v0
    blez       $t8, .L0000012c
    sd         $t9,0($sp)
.L000000fc:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L0000012c
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L000000fc
    sd         $v0,0($sp)
.L0000012c:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,56($sp)
    ld         $s2,40($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,48($sp)
    b          .L0000002c
    ld         $s1,32($sp)

glabel kona_mapcolor
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-96
    sd         $a1,48($sp)
    sd         $a2,24($sp)
    sd         $a3,32($sp)
    lw         $at,0($gp)
    sd         $a4,40($sp)
    sd         $s1,56($sp)
    move       $s1,$a0
    beqz       $at, .L00000194
    sd         $ra,80($sp)
    sw         $zero,0($gp)
    ld         $s1,56($sp)
.L0000018c:
    jr         $ra
    daddiu     $sp,$sp,96
.L00000194:
    sd         $s1,-30720($gp)
    sd         $s2,64($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,72($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L000001e4
    ori        $s2,$s2,0x86a1
    b          .L0000020c
    nop
.L000001dc:
    blez       $a0, .L0000020c
    sd         $v0,8($sp)
.L000001e4:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L000001dc
    andi       $a0,$a0,0x7fe
.L0000020c:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $v1,48($sp)
    ld         $t9,40($sp)
    ld         $t8,-30720($gp)
    ld         $at,32($sp)
    lui        $ra,0xc1
    ld         $v0,24($sp)
    daddu      $ra,$t8,$ra
    li         $a1,1
    sw         $a1,0($ra)
    li         $a0,3
    sw         $a0,0($ra)
    sw         $v1,0($ra)
    sll        $v0,$v0,0x2
    sw         $v0,0($ra)
    sll        $at,$at,0x2
    sw         $at,0($ra)
    sll        $t9,$t9,0x2
    sw         $t9,0($ra)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    move       $t9,$a1
    blez       $t8, .L000002b0
    sd         $t9,0($sp)
.L00000280:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L000002b0
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L00000280
    sd         $v0,0($sp)
.L000002b0:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,72($sp)
    ld         $s2,64($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,80($sp)
    b          .L0000018c
    ld         $s1,56($sp)

glabel kona_point
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-80
    sd         $a1,24($sp)
    lw         $at,0($gp)
    sd         $a2,32($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    beqz       $at, .L00000310
    sd         $ra,56($sp)
    sw         $zero,0($gp)
    ld         $s1,40($sp)
.L00000308:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000310:
    sd         $s1,-30720($gp)
    sd         $s2,48($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,64($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L00000360
    ori        $s2,$s2,0x86a1
    b          .L00000388
    nop
.L00000358:
    blez       $a0, .L00000388
    sd         $v0,8($sp)
.L00000360:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L00000358
    andi       $a0,$a0,0x7fe
.L00000388:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $t8,-30720($gp)
    ld         $t9,32($sp)
    lui        $ra,0xc1
    ld         $at,24($sp)
    daddu      $ra,$t8,$ra
    li         $v1,1
    sw         $v1,0($ra)
    li         $v0,6
    sw         $v0,0($ra)
    sw         $at,0($ra)
    sw         $t9,0($ra)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    move       $t9,$v1
    blez       $t8, .L00000410
    sd         $t9,0($sp)
.L000003e0:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L00000410
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L000003e0
    sd         $v0,0($sp)
.L00000410:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,64($sp)
    ld         $s2,48($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,56($sp)
    b          .L00000308
    ld         $s1,40($sp)

glabel kona_box
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-96
    sd         $a1,48($sp)
    sd         $a2,24($sp)
    sd         $a3,32($sp)
    lw         $at,0($gp)
    sd         $a4,40($sp)
    sd         $s1,56($sp)
    move       $s1,$a0
    beqz       $at, .L00000478
    sd         $ra,80($sp)
    sw         $zero,0($gp)
    ld         $s1,56($sp)
.L00000470:
    jr         $ra
    daddiu     $sp,$sp,96
.L00000478:
    sd         $s1,-30720($gp)
    sd         $s2,64($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,72($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L000004c8
    ori        $s2,$s2,0x86a1
    b          .L000004f0
    nop
.L000004c0:
    blez       $a0, .L000004f0
    sd         $v0,8($sp)
.L000004c8:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L000004c0
    andi       $a0,$a0,0x7fe
.L000004f0:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $t9,40($sp)
    ld         $at,32($sp)
    ld         $t8,-30720($gp)
    lui        $ra,0xc1
    ld         $a0,48($sp)
    li         $a2,1
    ld         $v0,24($sp)
    daddu      $ra,$t8,$ra
    slti       $a1,$a0,1
    addiu      $a0,$a0,-1
    sw         $a2,0($ra)
    slti       $v1,$v0,1
    li         $a2,5
    sw         $a2,0($ra)
    addiu      $v0,$v0,-1
    movn       $a0,$zero,$a1
    sw         $a0,0($ra)
    movn       $v0,$zero,$v1
    sw         $v0,0($ra)
    sw         $at,0($ra)
    sw         $t9,0($ra)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    li         $t9,1
    blez       $t8, .L000005a0
    sd         $t9,0($sp)
.L00000570:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L000005a0
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L00000570
    sd         $v0,0($sp)
.L000005a0:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,72($sp)
    ld         $s2,64($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,80($sp)
    b          .L00000470
    ld         $s1,56($sp)

glabel kona_unblank
    lw         $at,0($gp)
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    move       $s1,$a0
    beqz       $at, .L000005f8
    sd         $ra,40($sp)
    sw         $zero,0($gp)
    ld         $s1,24($sp)
.L000005f0:
    jr         $ra
    daddiu     $sp,$sp,64
.L000005f8:
    sd         $s1,-30720($gp)
    sd         $s2,32($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,48($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L00000648
    ori        $s2,$s2,0x86a1
    b          .L00000670
    nop
.L00000640:
    blez       $a0, .L00000670
    sd         $v0,8($sp)
.L00000648:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L00000640
    andi       $a0,$a0,0x7fe
.L00000670:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $t8,-30720($gp)
    lui        $t9,0xc1
    daddu      $t9,$t8,$t9
    li         $ra,1
    sw         $ra,0($t9)
    sw         $ra,0($t9)
    sw         $zero,0($t9)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    move       $t9,$ra
    blez       $t8, .L000006e8
    sd         $t9,0($sp)
.L000006b8:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L000006e8
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L000006b8
    sd         $v0,0($sp)
.L000006e8:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,48($sp)
    ld         $s2,32($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,40($sp)
    b          .L000005f0
    ld         $s1,24($sp)

glabel kona_movechar
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-80
    sd         $a1,24($sp)
    lw         $at,0($gp)
    sd         $a2,32($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    beqz       $at, .L00000748
    sd         $ra,56($sp)
    sw         $zero,0($gp)
    ld         $s1,40($sp)
.L00000740:
    jr         $ra
    daddiu     $sp,$sp,80
.L00000748:
    sd         $s1,-30720($gp)
    sd         $s2,48($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,64($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L00000798
    ori        $s2,$s2,0x86a1
    b          .L000007c0
    nop
.L00000790:
    blez       $a0, .L000007c0
    sd         $v0,8($sp)
.L00000798:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L00000790
    andi       $a0,$a0,0x7fe
.L000007c0:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $t8,-30720($gp)
    ld         $t9,32($sp)
    lui        $ra,0xc1
    ld         $at,24($sp)
    daddu      $ra,$t8,$ra
    li         $v1,1
    sw         $v1,0($ra)
    li         $v0,4
    sw         $v0,0($ra)
    sw         $at,0($ra)
    sw         $t9,0($ra)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    move       $t9,$v1
    blez       $t8, .L00000848
    sd         $t9,0($sp)
.L00000818:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L00000848
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L00000818
    sd         $v0,0($sp)
.L00000848:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,64($sp)
    ld         $s2,48($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,56($sp)
    b          .L00000740
    ld         $s1,40($sp)

glabel kona_bitmap
    lw         $a4,0($gp)
    daddiu     $sp,$sp,-496
    sd         $s0,448($sp)
    ld         $s0,0($a1)
    move       $v0,$zero
    li         $a5,1
    sd         $s5,440($sp)
    move       $s5,$a0
    sd         $s2,432($sp)
    daddiu     $s2,$sp,0
.L00000898:
    dsll       $v1,$v0,0x2
    addiu      $v0,$v0,1
    slti       $at,$v0,100
    daddu      $v1,$s2,$v1
    sw         $zero,0($v1)
    beqz       $at, .L000008c8
    dsll       $a0,$v0,0x2
    addiu      $v0,$v0,1
    slti       $a2,$v0,100
    daddu      $a0,$s2,$a0
    bnez       $a2, .L00000898
    sw         $zero,0($a0)
.L000008c8:
    sw         $a5,0($gp)
    sd         $a1,416($sp)
    beqz       $a4, .L000008f0
    sd         $ra,472($sp)
    sw         $zero,0($gp)
.L000008dc:
    ld         $s0,448($sp)
    ld         $s2,432($sp)
    ld         $s5,440($sp)
    jr         $ra
    daddiu     $sp,$sp,496
.L000008f0:
    sd         $s5,-30720($gp)
    sd         $s1,456($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s3,480($sp)
    ld         $t8,-30720($gp)
    lui        $s3,0x80
    daddu      $t8,$s3,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,408($sp)
    li         $t9,1
    lui        $s1,0x1
    sd         $t9,400($sp)
    bgtz       $t8, .L00000940
    ori        $s1,$s1,0x86a1
    b          .L00000968
    nop
.L00000938:
    blez       $a0, .L00000968
    sd         $v0,400($sp)
.L00000940:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,400($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s3,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s1
    bnez       $a1, .L00000938
    andi       $a0,$a0,0x7fe
.L00000968:
    jal        kona_fc_attach
    move       $a0,$s5
    ld         $v0,-30720($gp)
    lui        $v1,0xc1
    ld         $s1,416($sp)
    daddu      $v0,$v0,$v1
    li         $a2,1
    sw         $a2,0($v0)
    li         $a1,10
    sw         $a1,0($v0)
    lh         $a0,8($s1)
    sw         $a0,0($v0)
    lh         $v1,10($s1)
    sw         $v1,0($v0)
    lh         $at,12($s1)
    sw         $at,0($v0)
    lh         $ra,14($s1)
    sw         $ra,0($v0)
    lh         $t9,16($s1)
    sw         $t9,0($v0)
    lh         $t8,18($s1)
    sw         $t8,0($v0)
    lh         $a1,10($s1)
    lh         $s1,8($s1)
    mult       $a1,$s1
    mflo       $a0
    addiu      $a3,$a0,7
    addiu      $a0,$a0,14
    slt        $a2,$a3,$zero
    movz       $a0,$a3,$a2
    li         $a4,32
    sra        $a0,$a0,0x3
    daddiu     $a5,$sp,0
    addiu      $ra,$a0,3
    addiu      $a0,$a0,6
    slt        $t9,$ra,$zero
    sd         $s4,464($sp)
    li         $t8,16
    movz       $a0,$ra,$t9
    sd         $s1,424($sp)
    addiu      $s1,$s1,-1
    blez       $a1, .L00000adc
    sra        $a0,$a0,0x2
    move       $s4,$zero
    b          .L00000a30
    nop
.L00000a20:
    addiu      $s4,$s4,1
    slt        $a2,$s4,$a1
    beqz       $a2, .L00000adc
    nop
.L00000a30:
    bltz       $s1, .L00000a20
    move       $t1,$zero
    b          .L00000a7c
    ld         $t0,424($sp)
.L00000a40:
    sllv       $a3,$a6,$ra
    or         $a3,$t2,$a3
    sw         $a3,0($a5)
.L00000a4c:
    addiu      $t1,$t1,16
    move       $a4,$t0
    slt        $t2,$t3,$t0
    movn       $a4,$t8,$t2
    subu       $a4,$a7,$a4
    daddiu     $s0,$s0,2
    addiu      $t0,$t0,-16
    bltz       $a4, .L00000ab8
    slt        $t2,$s1,$t1
    beqz       $a4, .L00000aac
    nop
.L00000a78:
    bnez       $t2, .L00000a20
.L00000a7c:
    subu       $t9,$t8,$a4
    slti       $ra,$a4,17
    li         $t3,16
    lhu        $a6,0($s0)
    move       $a7,$a4
    lw         $t2,0($a5)
    beqz       $ra, .L00000a40
    addiu      $ra,$a4,-16
    srav       $at,$a6,$t9
    or         $at,$t2,$at
    b          .L00000a4c
    sw         $at,0($a5)
.L00000aac:
    li         $a4,32
    b          .L00000a78
    daddiu     $a5,$a5,4
.L00000ab8:
    addiu      $a4,$a4,32
    daddiu     $a2,$a5,4
    addiu      $a3,$a7,16
    lw         $v1,4($a5)
    move       $a5,$a2
    sllv       $a3,$a6,$a3
    or         $v1,$v1,$a3
    b          .L00000a78
    sw         $v1,0($a2)
.L00000adc:
    li         $s0,1
    blez       $a0, .L00000b08
    ld         $s4,464($sp)
    move       $a4,$zero
.L00000aec:
    dsll       $a5,$a4,0x2
    addiu      $a4,$a4,1
    slt        $a6,$a4,$a0
    daddu      $a5,$s2,$a5
    lw         $a5,0($a5)
    bnez       $a6, .L00000aec
    sw         $a5,0($v0)
.L00000b08:
    ld         $a6,-30720($gp)
    sw         $zero,0($gp)
    daddu      $a6,$s3,$a6
    lw         $a6,520($a6)
    andi       $a6,$a6,0x7fe
    blez       $a6, .L00000b54
    lui        $s1,0x1
    ori        $s1,$s1,0x86a1
.L00000b28:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    addiu      $s0,$s0,1
    daddu      $a0,$s3,$a0
    slt        $a1,$s0,$s1
    lw         $a0,520($a0)
    beqz       $a1, .L00000b54
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L00000b28
    nop
.L00000b54:
    ld         $s3,480($sp)
    ld         $s1,456($sp)
    jal        kona_fc_detach
    move       $a0,$s5
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,408($sp)
    b          .L000008dc
    ld         $ra,472($sp)

glabel kona_tportinit
    lw         $at,0($gp)
    li         $v0,1
    sw         $v0,0($gp)
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    move       $s1,$a0
    beqz       $at, .L00000ba8
    sd         $ra,40($sp)
    sw         $zero,0($gp)
    ld         $s1,24($sp)
.L00000ba0:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000ba8:
    sd         $s1,-30720($gp)
    sd         $s2,32($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s0,48($sp)
    ld         $t8,-30720($gp)
    lui        $s0,0x80
    daddu      $t8,$s0,$t8
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    sd         $v0,16($sp)
    li         $t9,1
    lui        $s2,0x1
    sd         $t9,8($sp)
    bgtz       $t8, .L00000bf8
    ori        $s2,$s2,0x86a1
    b          .L00000c20
    nop
.L00000bf0:
    blez       $a0, .L00000c20
    sd         $v0,8($sp)
.L00000bf8:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,8($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    bnez       $a1, .L00000bf0
    andi       $a0,$a0,0x7fe
.L00000c20:
    jal        kona_fc_attach
    move       $a0,$s1
    ld         $t8,-30720($gp)
    lw         $t9,-30716($gp)
    lui        $ra,0xc1
    lw         $at,-30720($gp)
    daddu      $ra,$t8,$ra
    li         $v1,1
    sw         $v1,0($ra)
    li         $v0,8
    sw         $v0,0($ra)
    sw         $at,0($ra)
    sw         $t9,0($ra)
    daddu      $t8,$s0,$t8
    sw         $zero,0($gp)
    lw         $t8,520($t8)
    lui        $s2,0x1
    andi       $t8,$t8,0x7fe
    ori        $s2,$s2,0x86a1
    move       $t9,$v1
    blez       $t8, .L00000ca8
    sd         $t9,0($sp)
.L00000c78:
    jal        us_delay
    li         $a0,2
    ld         $a0,-30720($gp)
    ld         $v0,0($sp)
    addiu      $v0,$v0,1
    daddu      $a0,$s0,$a0
    lw         $a0,520($a0)
    slt        $a1,$v0,$s2
    beqz       $a1, .L00000ca8
    andi       $a0,$a0,0x7fe
    bgtz       $a0, .L00000c78
    sd         $v0,0($sp)
.L00000ca8:
    jal        kona_fc_detach
    move       $a0,$s1
    ld         $s0,48($sp)
    ld         $s2,32($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,16($sp)
    ld         $ra,40($sp)
    b          .L00000ba0
    ld         $s1,24($sp)

glabel kona_getdesc
    li         $at,1
    beq        $a1, $at, .L00000ce0
    li         $v0,1
    move       $v0,$zero
.L00000ce0:
    jr         $ra
    nop

glabel receive_armdata
    daddiu     $sp,$sp,-80
    sd         $s2,24($sp)
    sd         $ra,40($sp)
    sd         $s0,48($sp)
    sd         $s1,56($sp)
    sd         $s4,16($sp)
    sd         $s3,32($sp)
    sd         $s6,0($sp)
    move       $s6,$a0
    sd         $s5,8($sp)
    move       $s5,$a1
    blez       $a0, .L00000d98
    sd         $s7,64($sp)
    sltiu      $at,$a2,1
    move       $s4,$zero
    lui        $s1,0x80
    li         $s7,16
    li         $s3,0xc350
    b          .L00000d90
    movz       $s3,$a2,$at
.L00000d38:
    bnez       $s2, .L00000d68
.L00000d3c:
    ld         $s2,-30720($gp)
    daddu      $s2,$s1,$s2
    lw         $s2,568($s2)
    li         $a0,100
    jal        us_delay
    andi       $s2,$s2,0x10
    addiu      $s0,$s0,1
    slt        $t8,$s0,$s3
    bnez       $t8, .L00000d38
    nop
    beqz       $s2, .L00000dcc
.L00000d68:
    ld         $t9,-30720($gp)
    daddu      $t9,$s1,$t9
    addiu      $s4,$s4,1
    lw         $at,576($t9)
    slt        $ra,$s4,$s6
    sw         $at,0($s5)
    sw         $zero,576($t9)
    daddiu     $s5,$s5,4
    beqz       $ra, .L00000d9c
    sw         $s7,568($t9)
.L00000d90:
    b          .L00000d3c
    move       $s0,$zero
.L00000d98:
    move       $s4,$zero
.L00000d9c:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $s6,0($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    ld         $ra,40($sp)
    ld         $s5,8($sp)
    ld         $s7,64($sp)
    move       $v0,$s4
    ld         $s4,16($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000dcc:
    b          .L00000d9c
    li         $s4,-1

glabel kona_alive
    sd         $a0,-30720($gp)
    daddiu     $sp,$sp,-64
    sd         $a1,8($sp)
    sw         $zero,0($sp)
    sd         $s0,40($sp)
    sd         $ra,32($sp)
    sd         $s3,16($sp)
    move       $s3,$a0
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s1,48($sp)
    ld         $at,-30720($gp)
    lui        $s0,0x80
    daddu      $at,$s0,$at
    lw         $at,520($at)
    andi       $at,$at,0x7fe
    sd         $s2,56($sp)
    li         $s2,1
    lui        $s1,0x1
    sd         $v0,24($sp)
    bgtz       $at, .L00000e3c
    ori        $s1,$s1,0x86a1
    b          .L00000e60
    nop
.L00000e34:
    blez       $a5, .L00000e60
    nop
.L00000e3c:
    jal        us_delay
    li         $a0,2
    ld         $a5,-30720($gp)
    addiu      $s2,$s2,1
    daddu      $a5,$s0,$a5
    slt        $a6,$s2,$s1
    lw         $a5,520($a5)
    bnez       $a6, .L00000e34
    andi       $a5,$a5,0x7fe
.L00000e60:
    jal        kona_fc_attach
    move       $a0,$s3
    ld         $t9,-30720($gp)
    lui        $ra,0xc1
    daddu      $t8,$s0,$t9
    daddu      $t9,$t9,$ra
    sw         $zero,576($t8)
    li         $at,1
    sw         $at,0($t9)
    li         $ra,9
    sw         $ra,0($t9)
    sw         $zero,0($t9)
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    lui        $s1,0x1
    move       $s2,$at
    bgtz       $t8, .L00000eb8
    ori        $s1,$s1,0x86a1
    b          .L00000edc
    nop
.L00000eb0:
    blez       $a5, .L00000edc
    nop
.L00000eb8:
    jal        us_delay
    li         $a0,2
    ld         $a5,-30720($gp)
    addiu      $s2,$s2,1
    daddu      $a5,$s0,$a5
    slt        $a6,$s2,$s1
    lw         $a5,520($a5)
    bnez       $a6, .L00000eb0
    andi       $a5,$a5,0x7fe
.L00000edc:
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s2,56($sp)
    jal        kona_fc_detach
    move       $a0,$s3
    ld         $s3,16($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,24($sp)
    jal        us_delay
    li         $a0,10000
    li         $a0,1
    daddiu     $a1,$sp,0
    jal        receive_armdata
    ld         $a2,8($sp)
    ld         $ra,32($sp)
    lw         $a0,0($sp)
    blez       $v0, .L00000f40
    lui        $a1,0x1234
    ori        $a6,$a1,0xabcd
    bne        $a0, $a6, .L00000f38
    li         $v0,-1
    move       $v0,$zero
.L00000f38:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000f40:
    b          .L00000f38
    li         $v0,-1

glabel kona_tport_reset_adaptor
    ld         $v0,-30720($gp)
    daddiu     $sp,$sp,-96
    sd         $s7,40($sp)
    dsll32     $s7,$a0,0x0
    daddu      $v0,$v0,$s7
    sd         $v0,16($sp)
    lw         $v0,4($v0)
    sd         $s1,64($sp)
    sd         $ra,72($sp)
    sra        $at,$v0,0xc
    sd         $a0,0($sp)
    andi       $at,$at,0xffff
    li         $a4,4
    sd         $s3,32($sp)
    move       $s3,$a1
    beqz       $at, .L000010a8
    sd         $s0,80($sp)
    move       $a0,$a4
    sd         $a0,24($sp)
.L00000f94:
    ld         $s1,-30712($gp)
    sd         $s2,48($sp)
    ld         $s0,0($s1)
    li         $a0,1000
    sd         $s4,56($sp)
    jal        us_delay
    sll        $s0,$s0,0x0
    andi       $t8,$s3,0x7
    ld         $s4,-30720($gp)
    dsll       $t8,$t8,0x6
    daddu      $t8,$s7,$t8
    ld         $s2,0($s1)
    daddu      $s4,$s4,$t8
    lw         $t8,268($s4)
    sw         $zero,308($s4)
    sd         $t8,8($sp)
    sll        $s2,$s2,0x0
    ld         $t8,0($s1)
    subu       $s2,$s2,$s0
    b          .L00000ff0
    sll        $s0,$t8,0x0
.L00000fe8:
    jal        us_delay
    li         $a0,2
.L00000ff0:
    lw         $t9,276($s4)
    srl        $t9,$t9,0x1f
    bnez       $t9, .L00001020
    ld         $a0,0($sp)
    ld         $ra,0($s1)
    sll        $ra,$ra,0x0
    subu       $ra,$ra,$s0
    sltu       $ra,$s2,$ra
    beqz       $ra, .L00000fe8
    nop
    b          .L00001084
    li         $v0,-1
.L00001020:
    li         $a2,2
    ld         $at,8($sp)
    move       $a1,$s3
    jal        hub_widget_flags_set
    sw         $at,268($s4)
    ld         $a3,16($sp)
    andi       $a1,$s3,0xf
    lui        $a4,0x2a4
    ld         $a5,24($sp)
    lui        $a2,0x264
    ori        $a4,$a4,0x200
    lw         $a3,340($a3)
    ori        $a2,$a2,0x200
    sll        $a5,$a5,0xc
    ld         $v1,-30720($gp)
    andi       $a5,$a5,0xf000
    srl        $a3,$a3,0x1f
    or         $a1,$a1,$a5
    movz       $a2,$a4,$a3
    or         $a1,$a1,$a2
    sw         $a1,36($v1)
    lw         $a0,36($v1)
    lui        $v0,0x80
    sw         $v0,108($v1)
    move       $v0,$zero
.L00001084:
    ld         $s2,48($sp)
    ld         $s4,56($sp)
    ld         $s3,32($sp)
    ld         $ra,72($sp)
    ld         $s7,40($sp)
    ld         $s1,64($sp)
    ld         $s0,80($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000010a8:
    move       $a7,$a4
    srl        $a6,$v0,0x1c
    li         $a5,3
    slti       $a6,$a6,3
    movz       $a5,$a7,$a6
    b          .L00000f94
    sd         $a5,24($sp)

glabel kona_earlyinit
    daddiu     $sp,$sp,-80
    sd         $s3,24($sp)
    lw         $s3,-30696($gp)
    ld         $a0,-30720($gp)
    sw         $zero,-30696($gp)
    sd         $ra,32($sp)
    jal        kopt_find
    daddiu     $a0,$a0,24
    lbu        $a0,0($v0)
    li         $a4,100
    li         $a1,68
    beq        $a4, $a0, .L0000120c
    sd         $s1,40($sp)
    beq        $a0, $a1, .L0000120c
    nop
    beqz       $v0, .L0000112c
    move       $a0,$zero
    daddiu     $a1,$v0,1
    lbu        $a4,1($v0)
    slti       $a5,$a4,48
    bnez       $a5, .L00001188
    slti       $a4,$a4,58
    beqz       $a4, .L00001334
    nop
    b          .L00001348
    sll        $a3,$a0,0x2
.L0000112c:
    sw         $zero,-30712($gp)
.L00001130:
    move       $a1,$zero
.L00001134:
    jal        find_konapipe
    move       $a2,$zero
    li         $s1,1
    beq        $v0, $s1, .L00001168
    move       $a0,$zero
    move       $a1,$zero
    sw         $zero,-30712($gp)
    jal        find_konapipe
    move       $a2,$zero
    beq        $v0, $s1, .L0000116c
    lw         $a6,0($gp)
    b          .L00001174
    move       $v0,$zero
.L00001168:
    lw         $a6,0($gp)
.L0000116c:
    beqz       $a6, .L000011cc
    move       $v0,$zero
.L00001174:
    ld         $ra,32($sp)
    ld         $s3,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001188:
    b          .L00001130
    sw         $zero,-30712($gp)
.L00001190:
    slti       $a7,$v0,58
    beqz       $a7, .L00001130
    sll        $a3,$a0,0x2
    lbu        $v0,1($a1)
.L000011a0:
    lbu        $a2,0($a1)
    addu       $a0,$a3,$a0
    sll        $a0,$a0,0x1
    slti       $t0,$v0,48
    daddiu     $a1,$a1,1
    addu       $a0,$a2,$a0
    addiu      $a0,$a0,-48
    beqz       $t0, .L00001190
    sw         $a0,-30712($gp)
    b          .L00001134
    move       $a1,$zero
.L000011cc:
    sw         $s1,0($gp)
    lw         $a5,0($gp)
    sw         $s1,0($gp)
    sd         $s0,56($sp)
    blez       $a5, .L0000133c
    sd         $s4,64($sp)
    sd         $zero,16($sp)
    li         $t9,100
    li         $t8,0xc350
    move       $s0,$zero
    sd         $s2,48($sp)
    movz       $t8,$t9,$s3
    li         $s4,-55
    sd         $t8,8($sp)
    b          .L0000123c
    dsll32     $s4,$s4,0x19
.L0000120c:
    b          .L00001174
    move       $v0,$zero
.L00001214:
    jal        get_eeprom_state
    move       $a0,$s2
    li         $ra,2
    xor        $ra,$v0,$ra
    sltu       $ra,$zero,$ra
    beqz       $ra, .L000012b8
.L0000122c:
    lw         $at,0($gp)
.L00001230:
    addiu      $s0,$s0,1
    slt        $at,$s0,$at
    beqz       $at, .L00001318
.L0000123c:
    move       $a0,$s0
    daddiu     $a1,$sp,0
    jal        find_konapipe
    daddiu     $a2,$sp,2
    bne        $v0, $s1, .L00001230
    lw         $at,0($gp)
    lbu        $a1,2($sp)
    lh         $a0,0($sp)
    ld         $s2,-30720($gp)
    beqz       $a1, .L00001310
    dsll32     $a4,$a0,0x0
    dsll       $s2,$a1,0x18
    daddu      $s2,$a4,$s2
    daddu      $s2,$s4,$s2
.L00001274:
    beqz       $s3, .L00001298
    sd         $s2,-30720($gp)
    jal        kona_tport_reset_adaptor
    nop
    li         $t8,-1
    xor        $t8,$v0,$t8
    sltiu      $t8,$t8,1
    bnez       $t8, .L00001230
    lw         $at,0($gp)
.L00001298:
    lw         $t9,-30712($gp)
    bne        $t9, $s0, .L00001230
    lw         $at,0($gp)
    move       $a0,$s2
    jal        kona_alive
    ld         $a1,8($sp)
    bltz       $v0, .L00001214
    nop
.L000012b8:
    jal        init_graphics
    move       $a0,$s2
    bltz       $v0, .L00001230
    lw         $at,0($gp)
    lw         $ra,-30712($gp)
    bne        $ra, $s0, .L00001230
    lw         $at,0($gp)
    jal        get_graphics_info
    move       $a0,$s2
    jal        kona_tportinit
    move       $a0,$s2
    daddiu     $a0,$gp,0
    jal        spinlock_init
    ld         $a1,-30720($gp)
    ld         $a1,-30712($gp)
    lw         $a2,-30720($gp)
    move       $a0,$s2
    jal        htp_register_board
    lw         $a3,-30716($gp)
    li         $at,1
    b          .L0000122c
    sd         $at,16($sp)
.L00001310:
    b          .L00001274
    daddu      $s2,$s2,$a4
.L00001318:
    ld         $s4,64($sp)
    ld         $s0,56($sp)
    ld         $s2,48($sp)
    sw         $zero,0($gp)
    ld         $v0,16($sp)
    b          .L00001174
    sw         $v0,0($gp)
.L00001334:
    b          .L00001130
    sw         $zero,-30712($gp)
.L0000133c:
    sd         $zero,16($sp)
    b          .L00001318
    sd         $s2,48($sp)
.L00001348:
    b          .L000011a0
    lbu        $v0,1($a1)

glabel find_konapipe
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    jal        find_gfxpipe
    move       $s0,$a2
    beqz       $v0, .L00001394
    li         $a5,-1
    li         $v1,81
    lbu        $at,5($v0)
    beq        $at, $v1, .L0000139c
    move       $a5,$zero
.L00001380:
    ld         $ra,16($sp)
.L00001384:
    move       $v0,$a5
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00001394:
    b          .L00001384
    ld         $ra,16($sp)
.L0000139c:
    move       $a0,$v0
    jal        find_first_component
    li         $a1,10
    beqz       $v0, .L000013e4
    ld         $a0,0($sp)
    beqz       $a0, .L000013cc
    nop
    lh         $a1,34($v0)
    bnez       $s0, .L000013d4
    sh         $a1,0($a0)
    b          .L000013dc
    nop
.L000013cc:
    beqz       $s0, .L000013dc
    nop
.L000013d4:
    lbu        $a2,32($v0)
    sb         $a2,0($s0)
.L000013dc:
    b          .L00001380
    li         $a5,1
.L000013e4:
    b          .L00001380
    move       $a5,$zero

glabel init_graphics
    sd         $a0,-30720($gp)
    daddiu     $sp,$sp,-16
    li         $a1,100
    sd         $s8,8($sp)
    nop
    sd         $ra,0($sp)
    jal        kona_alive
    move       $s8,$a0
    bltz       $v0, .L0000142c
.L00001410:
    move       $a0,$s8
    jal        kona_alive
    move       $a1,$zero
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0000142c:
    ld         $v0,-30720($gp)
    lui        $v1,0x80
    daddu      $v0,$v0,$v1
    sw         $zero,544($v0)
    li         $a0,3
    sw         $a0,768($v0)
    lw         $v1,768($v0)
    li         $at,2
    b          .L00001410
    sw         $at,768($v0)

glabel get_eeprom_state
    li         $a7,1
    lui        $a5,0x80
    sd         $a0,-30720($gp)
    lui        $a4,0x87
    daddu      $a5,$a0,$a5
    lui        $a6,0x20
    daddiu     $sp,$sp,-48
    sw         $a7,776($a5)
    daddiu     $a3,$sp,0
    ori        $a6,$a6,0xbc
    sw         $a6,1000($a5)
    ori        $a2,$a4,0xff00
    ori        $a4,$a4,0xff2f
    sw         $zero,1008($a5)
.L0000148c:
    sw         $a2,1000($a5)
    addiu      $a2,$a2,4
    sltu       $a6,$a4,$a2
    lw         $a7,1008($a5)
    sw         $a7,0($a3)
    bnez       $a6, .L000014c8
    lw         $v0,28($sp)
    sw         $a2,1000($a5)
    addiu      $a2,$a2,4
    sltu       $t1,$a4,$a2
    daddiu     $a3,$a3,8
    lw         $t0,1008($a5)
    beqz       $t1, .L0000148c
    sw         $t0,-4($a3)
    lw         $v0,28($sp)
.L000014c8:
    jr         $ra
    daddiu     $sp,$sp,48

glabel get_graphics_info
    sd         $a0,-30720($gp)
    daddiu     $sp,$sp,-80
    sd         $s0,48($sp)
    sd         $ra,32($sp)
    sd         $s3,40($sp)
    move       $s3,$a0
    daddiu     $a0,$gp,0
    jal        mutex_spinlock
    sd         $s1,56($sp)
    ld         $at,-30720($gp)
    lui        $s0,0x80
    daddu      $at,$s0,$at
    lw         $at,520($at)
    andi       $at,$at,0x7fe
    sd         $s2,64($sp)
    li         $s2,1
    lui        $s1,0x1
    sd         $v0,24($sp)
    bgtz       $at, .L00001530
    ori        $s1,$s1,0x86a1
    b          .L00001554
    nop
.L00001528:
    blez       $a4, .L00001554
    nop
.L00001530:
    jal        us_delay
    li         $a0,2
    ld         $a4,-30720($gp)
    addiu      $s2,$s2,1
    daddu      $a4,$s0,$a4
    slt        $a5,$s2,$s1
    lw         $a4,520($a4)
    bnez       $a5, .L00001528
    andi       $a4,$a4,0x7fe
.L00001554:
    jal        kona_fc_attach
    move       $a0,$s3
    ld         $t8,-30720($gp)
    lui        $t9,0xc1
    daddu      $t9,$t8,$t9
    li         $at,1
    sw         $at,0($t9)
    li         $ra,12
    sw         $ra,0($t9)
    daddu      $t8,$s0,$t8
    sw         $zero,0($t9)
    lw         $t8,520($t8)
    andi       $t8,$t8,0x7fe
    lui        $s1,0x1
    move       $s2,$at
    bgtz       $t8, .L000015a8
    ori        $s1,$s1,0x86a1
    b          .L000015cc
    nop
.L000015a0:
    blez       $a4, .L000015cc
    nop
.L000015a8:
    jal        us_delay
    li         $a0,2
    ld         $a4,-30720($gp)
    addiu      $s2,$s2,1
    daddu      $a4,$s0,$a4
    slt        $a5,$s2,$s1
    lw         $a4,520($a4)
    bnez       $a5, .L000015a0
    andi       $a4,$a4,0x7fe
.L000015cc:
    ld         $s0,24($sp)
    jal        kona_fc_detach
    move       $a0,$s3
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    move       $a1,$s0
    jal        us_delay
    li         $a0,10000
    li         $a0,5
    daddiu     $a1,$sp,0
    jal        receive_armdata
    move       $a2,$zero
    lw         $a0,12($sp)
    ld         $s3,40($sp)
    ld         $s0,48($sp)
    ld         $ra,32($sp)
    li         $a4,-1
    ld         $s1,56($sp)
    blez       $v0, .L00001650
    move       $a1,$v0
    bltz       $a0, .L00001654
    li         $a6,1280
    sw         $a0,-30720($gp)
.L00001628:
    lw         $v0,16($sp)
    bltz       $v0, .L00001660
    li         $a7,1024
    sw         $v0,-30716($gp)
.L00001638:
    ld         $s2,64($sp)
    daddiu     $sp,$sp,80
    move       $v0,$a4
    slti       $a5,$a1,1
    jr         $ra
    movz       $v0,$zero,$a5
.L00001650:
    li         $a6,1280
.L00001654:
    bgtz       $a1, .L00001628
    sw         $a6,-30720($gp)
    li         $a7,1024
.L00001660:
    b          .L00001638
    sw         $a7,-30716($gp)

glabel kona_fc_attach
    lh         $v0,-15328($zero)
    ld         $at,-30704($gp)
    daddiu     $sp,$sp,-32
    dsll       $v0,$v0,0x4
    sd         $ra,0($sp)
    daddu      $at,$at,$v0
    ld         $at,8($at)
    sd         $s8,8($sp)
    lbu        $v0,1312($at)
    lh         $at,1060($at)
    move       $s8,$a0
    sd         $v0,24($sp)
    li         $a0,8
    jal        err_int_block_mask
    sd         $at,16($sp)
    sync
    li         $t1,1
    dsrl32     $a1,$s8,0x0
    dsll32     $t1,$t1,0x8
    andi       $a1,$a1,0xff
    dsll32     $a1,$a1,0x10
    dsra32     $a1,$a1,0x10
    ld         $t3,24($sp)
    dsll32     $a1,$a1,0x0
    dsrl       $a2,$s8,0x18
    andi       $a3,$t3,0x1
    ld         $a4,16($sp)
    sll        $a3,$a3,0x10
    sll        $t2,$t3,0x2
    andi       $a4,$a4,0x1ff
    andi       $a2,$a2,0xf
    sll        $a4,$a4,0x4
    addu       $t2,$t2,$t3
    or         $a2,$a2,$a4
    or         $a2,$a2,$a3
    lui        $a3,0x10
    sll        $t2,$t2,0x3
    or         $a2,$a2,$a3
    dsll32     $a2,$a2,0x0
    addiu      $a6,$t2,776
    addiu      $a4,$t2,784
    dsll32     $a6,$a6,0x0
    addiu      $t2,$t2,768
    dsll32     $a4,$a4,0x0
    lui        $a7,0xc1
    dsll32     $t2,$t2,0x0
    daddu      $a7,$s8,$a7
    ld         $t0,-30704($gp)
    dsrl32     $t2,$t2,0x0
    ld         $s8,8($sp)
    li         $a5,168
    dsrl32     $a4,$a4,0x0
    ld         $ra,0($sp)
    dsrl32     $a6,$a6,0x0
    daddu      $a4,$t0,$a4
    ld         $a3,-30696($gp)
    daddu      $a6,$t0,$a6
    daddu      $t0,$t0,$t2
    or         $a7,$a7,$t1
    dsrl32     $a2,$a2,0x0
    sd         $a7,0($t0)
    daddu      $a1,$a1,$a3
    sync
    sd         $a5,0($a6)
    li         $a3,36
    sync
    sd         $a3,0($a4)
    sync
    sd         $a2,320($a1)
    sync
    ld         $v1,-30720($gp)
    ld         $a1,320($a1)
    li         $a0,34
    sw         $a0,124($v1)
    lw         $v1,124($v1)
    jr         $ra
    daddiu     $sp,$sp,32

glabel kona_fc_detach
    lh         $a4,-15328($zero)
    ld         $a3,-30704($gp)
    dsll       $a4,$a4,0x4
    daddu      $a3,$a3,$a4
    ld         $a3,8($a3)
    lbu        $a3,1312($a3)
    sll        $a2,$a3,0x2
    addu       $a2,$a2,$a3
    sll        $a2,$a2,0x3
    addiu      $a4,$a2,768
    ld         $v0,-30704($gp)
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    ld         $a3,-30688($gp)
    daddu      $a4,$v0,$a4
    sd         $a3,0($a4)
    addiu      $a2,$a2,776
    sync
    ld         $v1,-30720($gp)
    dsll32     $a2,$a2,0x0
    li         $a1,1
    dsrl32     $a2,$a2,0x0
    sw         $a1,124($v1)
    li         $at,64
    daddu      $v0,$v0,$a2
    lw         $v1,124($v1)
    daddiu     $sp,$sp,-16
    sd         $at,0($v0)
    sync
    sd         $ra,0($sp)
    jal        err_int_unblock_mask
    li         $a0,8
    ld         $ra,0($sp)
    sync
    jr         $ra
    daddiu     $sp,$sp,16
