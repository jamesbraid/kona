.section .text
.set noat
.set noreorder


glabel kona_mapram_pagesizeshiftof
    jr         $ra
    li         $v0,14

glabel kona_mapram_init
    daddiu     $sp,$sp,-48
    sd         $s2,40($sp)
    sd         $s3,32($sp)
    sd         $ra,24($sp)
    lw         $at,2312($a0)
    sd         $s0,8($sp)
    lui        $a3,0x10
    move       $s0,$a0
    sd         $s1,0($sp)
    sd         $s4,16($sp)
    beqz       $at, .L00000084
    lui        $s4,0x1000
    move       $s1,$zero
.L0000003c:
    or         $s3,$s4,$s1
    ld         $a0,2376($s0)
    dsll32     $s2,$a3,0x0
    move       $a1,$s3
    dsrl32     $s2,$s2,0x0
    jal        gfx_pio_write_32
    daddu      $a0,$a0,$s2
    ld         $a0,2376($s0)
    jal        gfx_pio_read_32
    daddu      $a0,$a0,$s2
    bne        $v0, $s3, .L000000a4
    ld         $a2,-30720($gp)
    lw         $a4,2312($s0)
    addiu      $s1,$s1,1
    sltu       $a4,$s1,$a4
    daddiu     $a3,$s2,4
    bnez       $a4, .L0000003c
    sll        $a3,$a3,0x0
.L00000084:
    ld         $s0,8($sp)
.L00000088:
    ld         $s1,0($sp)
    ld         $ra,24($sp)
    ld         $s2,40($sp)
    ld         $s3,32($sp)
    ld         $s4,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000000a4:
    li         $a1,4
    li         $a0,2111
    jal        cmn_err_tag
    daddiu     $a3,$a2,56
    move       $a0,$s0
    jal        kona_die
    li         $a1,21
    b          .L00000088
    ld         $s0,8($sp)

glabel kona_mapram_map
    daddiu     $sp,$sp,-96
    sd         $s2,48($sp)
    sd         $s3,56($sp)
    sd         $ra,64($sp)
    sd         $s4,72($sp)
    sd         $s0,24($sp)
    li         $at,-11
    sd         $s6,16($sp)
    dsll32     $at,$at,0x1b
    move       $s6,$a0
    sd         $s5,40($sp)
    sltu       $at,$a1,$at
    move       $s5,$a2
    dsll       $s0,$a3,0xe
    sd         $s8,32($sp)
    move       $s8,$a3
    beqz       $at, .L00000128
    sd         $s1,80($sp)
    move       $a0,$zero
    move       $a2,$s0
    jal        uvaddr_to_alenlist
    move       $a3,$zero
    b          .L0000013c
    move       $s3,$v0
.L00000128:
    move       $a0,$zero
    move       $a2,$s0
    jal        kvaddr_to_alenlist
    move       $a3,$zero
    move       $s3,$v0
.L0000013c:
    lui        $s2,0x10
    dsll       $s1,$s5,0x2
    daddu      $s1,$s1,$s2
    sll        $s1,$s1,0x0
    ld         $t8,2376($s6)
    dsll32     $s1,$s1,0x0
    li         $s4,-1
    dsrl32     $s1,$s1,0x0
    lui        $s2,0x2000
    daddu      $s1,$s1,$t8
.L00000164:
    move       $a0,$s3
    move       $a1,$zero
    li         $a2,16384
    daddiu     $a3,$sp,0
    daddiu     $a4,$sp,8
    jal        alenlist_get
    move       $a5,$zero
    beq        $v0, $s4, .L000001ec
    ld         $a1,-30720($gp)
    ld         $a1,0($sp)
    ld         $a2,8($sp)
    move       $a0,$s1
    dsrl       $a1,$a1,0xe
    dsubu      $s0,$s0,$a2
    sll        $a1,$a1,0x2
    jal        gfx_pio_write_32
    or         $a1,$s2,$a1
    bnez       $s0, .L00000164
    daddiu     $s1,$s1,4
.L000001b0:
    jal        alenlist_destroy
    move       $a0,$s3
    ld         $s2,48($sp)
    ld         $s3,56($sp)
    ld         $s6,16($sp)
    ld         $s4,72($sp)
    ld         $s0,24($sp)
    ld         $ra,64($sp)
    ld         $s1,80($sp)
    dsll32     $v0,$s5,0x0
    ld         $s5,40($sp)
    or         $v0,$s8,$v0
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000001ec:
    li         $a0,4
    daddiu     $a2,$a1,56
    jal        cmn_err
    daddiu     $a1,$a1,64
    move       $a0,$s6
    jal        kona_die
    li         $a1,21
    b          .L000001b0
    nop

glabel kona_mapram_unmap
    jr         $ra
    nop

glabel kona_mapram_select_id_mask
    jr         $ra
    move       $v0,$zero
