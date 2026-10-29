.section .text
.set noat
.set noreorder


glabel kona_debug_init
    lw         $at,-30720($gp)
    daddiu     $sp,$sp,-16
    beqz       $at, .L00000018
    sd         $ra,0($sp)
    jal        qprintf
    ld         $a0,-30720($gp)
.L00000018:
    ld         $ra,0($sp)
    li         $v0,1
    sw         $v0,-30720($gp)
    jr         $ra
    daddiu     $sp,$sp,16
