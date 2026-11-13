.section .text
.set noat
.set noreorder


glabel kona_share
    ld         $at,40($a0)
    daddiu     $sp,$sp,-48
    ld         $v0,112($a1)
    sd         $v0,0($sp)
    sd         $at,8($sp)
    sd         $ra,24($sp)
    sd         $s2,16($sp)
    move       $s2,$a2
    sd         $s1,32($sp)
    move       $s1,$a0
    jal        RRM_CheckValidFault
    ld         $a0,64($a1)
    beqz       $v0, .L00000054
    sd         $s0,40($sp)
    li         $v0,14
.L0000003c:
    ld         $ra,24($sp)
    ld         $s2,16($sp)
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000054:
    ld         $a0,40($s1)
    lw         $v1,80($a0)
    addiu      $v1,$v1,1
    sw         $v1,80($a0)
    ld         $v0,0($s2)
    beqz       $v0, .L00000090
    ld         $s0,8($sp)
    ld         $s0,4968($s0)
    beqz       $s0, .L00000090
    nop
.L0000007c:
    beq        $v0, $s0, .L000000e8
    nop
    ld         $s0,104($s0)
    bnez       $s0, .L0000007c
    nop
.L00000090:
    jal        kern_malloc
    li         $a0,112
    move       $s0,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,112
    ld         $t8,8($sp)
    ld         $t9,4968($t8)
    sd         $t9,104($s0)
    sd         $s0,4968($t8)
.L000000b8:
    lw         $v0,0($s0)
    ld         $at,0($sp)
    addiu      $v0,$v0,1
    sw         $v0,0($s0)
    sd         $s0,240($at)
    sd         $s0,0($s2)
    ld         $at,40($s1)
    lw         $ra,80($at)
    move       $v0,$zero
    addiu      $ra,$ra,-1
    b          .L0000003c
    sw         $ra,80($at)
.L000000e8:
    bnez       $s0, .L000000b8
    nop
    b          .L00000090
    nop

glabel kona_unshare
    ld         $a4,112($a1)
    daddiu     $sp,$sp,-48
    ld         $a3,240($a4)
    sd         $s2,8($sp)
    move       $s2,$a0
    sd         $s1,16($sp)
    daddiu     $s1,$a0,4968
    beqz       $a3, .L0000015c
    sd         $s0,40($sp)
    ld         $s0,4968($a0)
    beq        $a3, $s0, .L00000138
    nop
.L00000128:
    daddiu     $s1,$s0,104
    ld         $s0,104($s0)
    bne        $a3, $s0, .L00000128
    nop
.L00000138:
    lw         $at,0($s0)
    sd         $a1,0($sp)
    sd         $a4,24($sp)
    addiu      $at,$at,-1
    sd         $ra,32($sp)
    beqz       $at, .L0000016c
    sw         $at,0($s0)
.L00000154:
    ld         $s0,40($sp)
    sd         $zero,240($a4)
.L0000015c:
    ld         $s2,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000016c:
    move       $a0,$s2
    jal        kona_mem_destroy
    li         $a2,1
    move       $a0,$s2
    ld         $a1,0($sp)
    jal        kona_dmapool_destroy
    li         $a2,1
    ld         $v0,104($s0)
    move       $a0,$s0
    jal        kern_free
    sd         $v0,0($s1)
    ld         $ra,32($sp)
    b          .L00000154
    ld         $a4,24($sp)
