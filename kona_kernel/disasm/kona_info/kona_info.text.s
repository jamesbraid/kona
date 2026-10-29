.section .text
.set noat
.set noreorder


glabel KONAinfo
    daddiu     $sp,$sp,-32
    li         $v1,1952
    sd         $a3,8($sp)
    move       $at,$a2
    sltiu      $v0,$a2,1952
    daddiu     $a0,$a0,204
    movz       $at,$v1,$v0
    sd         $at,16($sp)
    sd         $ra,0($sp)
    jal        copyout
    move       $a2,$at
    beqz       $v0, .L00000040
    ld         $ra,0($sp)
    li         $v0,14
.L00000038:
    jr         $ra
    daddiu     $sp,$sp,32
.L00000040:
    ld         $a1,8($sp)
    ld         $a0,16($sp)
    move       $v0,$zero
    b          .L00000038
    sw         $a0,0($a1)
