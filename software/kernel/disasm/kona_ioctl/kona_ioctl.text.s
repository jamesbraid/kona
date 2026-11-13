.section .text
.set noat
.set noreorder


glabel KONAprivate
    daddiu     $sp,$sp,-480
    sd         $s2,424($sp)
    sd         $s1,448($sp)
    move       $a5,$a2
    sd         $s3,432($sp)
    addiu      $v1,$a2,-10000
    move       $s3,$a0
    sd         $s0,440($sp)
    dsll32     $v1,$v1,0x0
    move       $s0,$a1
    ld         $v0,-30720($gp)
    dsrl32     $at,$v1,0x0
    move       $s1,$a3
    ld         $s2,40($a0)
    sltiu      $at,$at,103
    sd         $ra,456($sp)
    dsrl       $v1,$v1,0x1d
    daddiu     $v0,$v0,24
    sd         $s4,464($sp)
    beqz       $at, .L00000060
    daddu      $v0,$v0,$v1
    ld         $a0,0($v0)
    jr         $a0
    sd         $a4,416($sp)
.L00000060:
    ld         $a2,-30720($gp)
    li         $a1,5
    li         $a0,2113
    lw         $a4,2184($s2)
    jal        cmn_err_tag
    daddiu     $a3,$a2,848
    b          .L0000008c
    li         $s0,22
.L00000080:
    li         $s0,22
.L00000084:
    beqz       $s0, .L000000b0
    ld         $a1,416($sp)
.L0000008c:
    move       $v0,$s0
.L00000090:
    ld         $s2,424($sp)
    ld         $s3,432($sp)
    ld         $ra,456($sp)
    ld         $s4,464($sp)
    ld         $s0,440($sp)
    ld         $s1,448($sp)
    jr         $ra
    daddiu     $sp,$sp,480
.L000000b0:
    move       $v0,$zero
    b          .L00000090
    sw         $zero,0($a1)
.L000000bc:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s1
    li         $a6,1
    li         $a5,4
    li         $a2,160
    ld         $a3,-30712($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000610
    move       $a0,$s3
    b          .L0000008c
    li         $s0,14
.L000000f4:
    jal        RRM_CheckValidFault
    move       $a0,$s3
    bgez       $v0, .L000004b8
    li         $s4,14
    b          .L00000084
    move       $s0,$s4
.L0000010c:
    jal        RRM_CheckValidFault
    move       $a0,$s3
    bgez       $v0, .L000004d8
    move       $a0,$s2
    b          .L00000084
    li         $s0,14
.L00000124:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s1
    li         $a6,1
    li         $a5,4
    li         $a2,24
    ld         $a3,-30704($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000624
    li         $s4,14
    b          .L00000084
    move       $s0,$s4
.L0000015c:
    move       $a0,$a3
    li         $a2,4
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L000005e4
    nop
    b          .L00000084
    li         $s0,14
.L0000017c:
    move       $a0,$a3
    li         $a2,4
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000668
    lw         $a1,0($sp)
    b          .L00000084
    li         $s0,14
.L0000019c:
    move       $a0,$a3
    li         $a2,4
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000684
    lw         $a1,0($sp)
    b          .L00000084
    li         $s0,14
.L000001bc:
    li         $a1,1
    jal        kmem_alloc
    li         $a0,524
    bnez       $v0, .L00000590
    move       $s3,$v0
    b          .L00000084
    li         $s0,14
.L000001d8:
    li         $a1,1
    jal        kmem_alloc
    li         $a0,524
    move       $s3,$v0
    bnez       $v0, .L000005b8
    li         $s4,14
    b          .L00000084
    move       $s0,$s4
.L000001f8:
    ld         $v0,5480($s2)
    beqz       $v0, .L000006a0
    move       $s0,$zero
.L00000204:
    li         $a2,260
    move       $a1,$s1
    jal        copyout
    daddiu     $a0,$v0,3072
    li         $a2,14
    b          .L00000084
    movn       $s0,$a2,$v0
.L00000220:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s1
    li         $a6,1
    li         $a5,4
    li         $a2,24
    ld         $a3,-30688($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000006c0
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L00000258:
    jal        kona_checkpipe
    move       $a0,$s2
    b          .L00000084
    move       $s0,$v0
.L00000268:
    lw         $a5,2172($s2)
    sw         $a5,0($sp)
    lw         $a4,2176($s2)
    sw         $a4,4($sp)
    li         $a2,12
    move       $a1,$a3
    lw         $a3,2180($s2)
    daddiu     $a0,$sp,0
    jal        copyout
    sw         $a3,8($sp)
    li         $s0,14
    b          .L00000084
    movz       $s0,$zero,$v0
.L0000029c:
    move       $a0,$a3
    li         $a2,8
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L000006d4
    li         $s4,14
    b          .L00000084
    move       $s0,$s4
.L000002bc:
    move       $a0,$a3
    li         $a2,12
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000704
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L000002dc:
    move       $a0,$a3
    li         $a2,14
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L0000071c
    li         $s2,14
    b          .L00000084
    move       $s0,$s2
.L000002fc:
    move       $a0,$a3
    li         $a2,12
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000748
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L0000031c:
    move       $a0,$a3
    li         $a2,12
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L0000075c
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L0000033c:
    move       $a0,$a3
    li         $a2,18
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000774
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L0000035c:
    li         $a0,9
    move       $v0,$zero
    daddiu     $a1,$sp,256
    daddiu     $a2,$s2,1928
.L0000036c:
    addiu      $a0,$a0,-1
    daddu      $a6,$v0,$a2
    ld         $a6,0($a6)
    daddu      $a7,$v0,$a1
    addiu      $v0,$v0,8
    bgtz       $a0, .L0000036c
    sd         $a6,0($a7)
    li         $a0,9
    daddu      $a7,$v0,$a2
    move       $a3,$zero
    lw         $a7,0($a7)
    daddu      $t1,$v0,$a1
    daddiu     $t0,$sp,336
    daddiu     $a5,$s2,1168
    sw         $a7,0($t1)
.L000003a8:
    addiu      $a0,$a0,-1
    daddu      $t1,$a3,$a5
    ld         $t1,0($t1)
    daddu      $t2,$a3,$t0
    addiu      $a3,$a3,8
    bgtz       $a0, .L000003a8
    sd         $t1,0($t2)
    li         $a2,1912
    daddu      $t2,$a3,$a5
    daddiu     $a1,$s2,244
    lw         $t2,0($t2)
    daddu      $t3,$a3,$t0
    move       $a0,$s1
    jal        copyin
    sw         $t2,0($t3)
    beqz       $v0, .L000004e8
    nop
    b          .L00000084
    li         $s0,14
.L000003f4:
    move       $a0,$a3
    li         $a2,16
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000784
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L00000414:
    move       $a0,$s3
    jal        kona_finish_selectfeed
    daddiu     $a2,$sp,0
    move       $s2,$v0
    bnez       $v0, .L00000084
    move       $s0,$v0
    li         $a2,8
    move       $a1,$s1
    jal        copyout
    daddiu     $a0,$sp,0
    li         $s0,14
    b          .L00000084
    movz       $s0,$s2,$v0
.L00000448:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s1
    li         $a6,1
    li         $a5,4
    li         $a2,32
    ld         $a3,-30680($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000798
    move       $a0,$s3
    b          .L00000084
    li         $s0,14
.L00000480:
    jal        curproc_abi
    nop
    move       $a4,$v0
    move       $a0,$s1
    li         $a6,1
    li         $a5,4
    li         $a2,144
    ld         $a3,-30672($gp)
    jal        copyin_xlate
    daddiu     $a1,$sp,0
    beqz       $v0, .L000007ac
    nop
    b          .L00000084
    li         $s0,14
.L000004b8:
    move       $a0,$s1
    li         $a2,16
    jal        copyin
    daddiu     $a1,$sp,0
    beqz       $v0, .L00000890
    move       $a0,$s2
    b          .L00000084
    li         $s0,14
.L000004d8:
    jal        kona_diag_flow
    move       $a1,$s1
    b          .L00000084
    move       $s0,$v0
.L000004e8:
    lw         $t9,2196($s2)
    sw         $t9,504($s2)
    lw         $t8,380($s2)
    sh         $t8,238($s2)
    li         $v0,9
    move       $a0,$zero
    lw         $t3,376($s2)
    daddiu     $a5,$s2,1928
    daddiu     $t0,$sp,256
    sh         $t3,236($s2)
.L00000510:
    addiu      $v0,$v0,-1
    daddu      $ra,$a0,$t0
    ld         $ra,0($ra)
    daddu      $at,$a0,$a5
    addiu      $a0,$a0,8
    bgtz       $v0, .L00000510
    sd         $ra,0($at)
    li         $a1,9
    daddu      $at,$a0,$t0
    move       $v0,$zero
    lw         $at,0($at)
    daddu      $v1,$a0,$a5
    daddiu     $a2,$s2,1168
    daddiu     $a3,$sp,336
    sw         $at,0($v1)
.L0000054c:
    addiu      $a1,$a1,-1
    daddu      $v1,$v0,$a3
    ld         $v1,0($v1)
    daddu      $a0,$v0,$a2
    addiu      $v0,$v0,8
    bgtz       $a1, .L0000054c
    sd         $v1,0($a0)
    daddu      $a0,$v0,$a3
    daddu      $a1,$v0,$a2
    lw         $a0,0($a0)
    sw         $a0,0($a1)
    jal        kona_mem_init
    move       $a0,$s2
    jal        kona_nclops_init
    move       $a0,$s2
    b          .L00000084
    move       $s0,$zero
.L00000590:
    move       $a0,$s1
    move       $a1,$v0
    jal        copyin
    li         $a2,524
    beqz       $v0, .L00000828
    move       $a0,$s3
    jal        kmem_free
    li         $a1,524
    b          .L00000084
    li         $s0,14
.L000005b8:
    move       $a0,$s1
    move       $a1,$v0
    jal        copyin
    li         $a2,524
    beqz       $v0, .L00000854
    move       $a1,$s2
    move       $a0,$s3
    jal        kmem_free
    li         $a1,524
    b          .L00000084
    li         $s0,14
.L000005e4:
    lw         $a1,5500($s2)
    li         $a2,-1
    beq        $a1, $a2, .L00000608
    lw         $a1,0($sp)
    jal        kona_nclops_destroy
    ld         $a0,5480($s2)
    li         $s0,22
    b          .L00000084
    movz       $s0,$zero,$v0
.L00000608:
    b          .L00000084
    move       $s0,$zero
.L00000610:
    move       $a1,$s0
    jal        kona_dmaread
    daddiu     $a2,$sp,0
    b          .L00000084
    move       $s0,$v0
.L00000624:
    move       $a0,$s3
    move       $a1,$s0
    jal        kona_diag_map
    daddiu     $a2,$sp,0
    jal        curproc_abi
    move       $s2,$v0
    move       $a4,$v0
    li         $a6,1
    li         $a5,4
    li         $a2,24
    move       $a1,$s1
    ld         $a3,-30696($gp)
    jal        xlate_copyout
    daddiu     $a0,$sp,0
    move       $s0,$s2
    b          .L00000084
    movn       $s0,$s4,$v0
.L00000668:
    move       $a2,$s0
    ld         $a0,5480($s2)
    jal        kona_nclops_unbind
    move       $a3,$s2
    li         $s0,22
    b          .L00000084
    movz       $s0,$zero,$v0
.L00000684:
    move       $a2,$s0
    ld         $a0,5480($s2)
    jal        kona_nclops_bind
    move       $a3,$s2
    li         $s0,22
    b          .L00000084
    movz       $s0,$zero,$v0
.L000006a0:
    jal        kona_nclops_discover
    nop
    li         $s0,22
    movz       $s0,$zero,$v0
    bnez       $s0, .L00000090
    move       $v0,$s0
    b          .L00000204
    ld         $v0,5480($s2)
.L000006c0:
    move       $a1,$s0
    jal        kona_dmapool
    daddiu     $a2,$sp,0
    b          .L00000084
    move       $s0,$v0
.L000006d4:
    move       $a0,$s3
    move       $a1,$s0
    jal        kona_share
    daddiu     $a2,$sp,0
    move       $s2,$v0
    li         $a2,8
    move       $a1,$s1
    jal        copyout
    daddiu     $a0,$sp,0
    move       $s0,$s2
    b          .L00000084
    movn       $s0,$s4,$v0
.L00000704:
    move       $a1,$s0
    li         $a3,1
    jal        kona_mem_alloc
    daddiu     $a2,$sp,0
    b          .L00000084
    move       $s0,$v0
.L0000071c:
    move       $a0,$s3
    jal        kona_get_xy_channel
    daddiu     $a1,$sp,0
    move       $s3,$v0
    li         $a2,14
    move       $a1,$s1
    jal        copyout
    daddiu     $a0,$sp,0
    move       $s0,$s3
    b          .L00000084
    movn       $s0,$s2,$v0
.L00000748:
    move       $a1,$s0
    jal        kona_mem_free
    daddiu     $a2,$sp,0
    b          .L00000084
    move       $s0,$v0
.L0000075c:
    move       $a1,$s0
    daddiu     $a2,$sp,0
    jal        kona_mem_alloc
    move       $a3,$zero
    b          .L00000084
    move       $s0,$v0
.L00000774:
    jal        kona_set_channel_rect
    daddiu     $a1,$sp,0
    b          .L00000084
    move       $s0,$v0
.L00000784:
    move       $a1,$s0
    jal        kona_select_cursor
    daddiu     $a2,$sp,0
    b          .L00000084
    move       $s0,$v0
.L00000798:
    move       $a1,$s0
    jal        kona_start_selectfeed
    daddiu     $a2,$sp,0
    b          .L00000084
    move       $s0,$v0
.L000007ac:
    jal        RRM_CheckValidFault
    move       $a0,$s3
    bltz       $v0, .L000008b8
    nop
    ld         $a5,40($s3)
    lw         $a4,80($a5)
    addiu      $a4,$a4,1
    sw         $a4,80($a5)
    lw         $v0,8($sp)
    sltiu      $a3,$v0,8
    beqz       $a3, .L000008c0
    dsll32     $a1,$v0,0x0
    daddiu     $s1,$s2,2384
.L000007e0:
    jal        curproc_abi
    nop
    move       $a4,$v0
    lw         $a6,8($sp)
    li         $a5,4
    ld         $a3,-30664($gp)
    li         $a2,24
    move       $a1,$s1
    jal        copyin_xlate
    ld         $a0,0($sp)
    beqz       $v0, .L000008f8
    daddiu     $a2,$sp,0
    ld         $a6,40($s3)
    lw         $a5,80($a6)
    li         $s0,14
    addiu      $a5,$a5,-1
    b          .L00000084
    sw         $a5,80($a6)
.L00000828:
    ld         $a0,5480($s2)
    jal        kona_nclops_query_config
    move       $a1,$s3
    move       $s2,$v0
    beqz       $v0, .L000008dc
    move       $s0,$v0
.L00000840:
    move       $a0,$s3
    jal        kmem_free
    li         $a1,524
    b          .L00000084
    nop
.L00000854:
    ld         $a0,5480($s2)
    jal        kona_nclops_configure
    move       $a2,$s3
    move       $s2,$v0
    move       $a0,$s3
    move       $a1,$s1
    jal        copyout
    li         $a2,524
    li         $a1,524
    move       $a0,$s3
    move       $s0,$s2
    jal        kmem_free
    movn       $s0,$s4,$v0
    b          .L00000084
    nop
.L00000890:
    jal        kona_diag_credits
    daddiu     $a1,$sp,0
    move       $s2,$v0
    li         $a2,16
    move       $a1,$s1
    jal        copyout
    daddiu     $a0,$sp,0
    move       $s0,$s2
    b          .L00000084
    movn       $s0,$s4,$v0
.L000008b8:
    b          .L00000084
    li         $s0,14
.L000008c0:
    dsrl       $a0,$a1,0x1e
    dsrl32     $a1,$a1,0x0
    dsubu      $a0,$a0,$a1
    jal        kern_malloc
    dsll       $a0,$a0,0x3
    b          .L000007e0
    move       $s1,$v0
.L000008dc:
    move       $a0,$s3
    move       $a1,$s1
    jal        copyout
    li         $a2,524
    li         $s0,14
    b          .L00000840
    movz       $s0,$s2,$v0
.L000008f8:
    move       $a1,$s0
    move       $a0,$s3
    jal        kona_dmawrite
    sd         $s1,0($sp)
    lw         $a2,8($sp)
    sltiu      $a2,$a2,8
    beqz       $a2, .L0000092c
    move       $s0,$v0
    ld         $a4,40($s3)
.L0000091c:
    lw         $a3,80($a4)
    addiu      $a3,$a3,-1
    b          .L00000084
    sw         $a3,80($a4)
.L0000092c:
    jal        kern_free
    move       $a0,$s1
    b          .L0000091c
    ld         $a4,40($s3)
