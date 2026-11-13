.section .text
.set noat
.set noreorder


glabel kona_voc_intr
    ld         $a0,0($a0)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        rrmGenlockNotify
    li         $a1,-1
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
