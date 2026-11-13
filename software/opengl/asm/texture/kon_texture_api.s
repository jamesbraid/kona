# Source: ../KONA/texture/kon_texture_api.c
# Category: texture
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/texture/kon_texture_api.c
# Total Functions: 133

.text

# Function: __glkonim_ProcImage
# Declared: Line 251 (Source lines: 254-313)
# Address: 0x0d964c90 - 0x0d964e90 (Size: 512 bytes, Frame: 208)
.ent __glkonim_ProcImage
__glkonim_ProcImage:
    # Line 254
    addiu	$sp,$sp,-208
    sd	$a1,112($sp)
    sd	$a2,56($sp)
    sd	$a3,64($sp)
    sd	$a4,72($sp)
    sd	$a5,80($sp)
    sd	$a6,88($sp)
    sd	$a7,48($sp)
    # Line 255
    lw	$v1,4112($zero)
    # Line 257
    sll	$v0,$a0,0x2
    sd	$v0,40($sp)
    # Line 259
    lw	$t1,31632($v1)
    # Line 257
    addu	$v0,$v0,$v1
    sd	$v0,104($sp)
    lw	$v0,31664($v0)
    # Line 255
    sd	$v1,128($sp)
    # Line 259
    sll	$v1,$a1,0x2
    dsll32	$at,$t1,0xf
    # Line 257
    sd	$v0,120($sp)
    # Line 259
    addu	$v0,$v0,$v1
    lw	$v0,124($v0)
    bgez	$at,.L0d964cf4
    sd	$v0,96($sp)
    # Line 313
    jr	$ra
    addiu	$sp,$sp,208
.L0d964cf4:
    # Line 278
    ld	$a1,112($sp)
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,120($sp)
    ld	$t2,128($sp)
    addiu	$t9,$t9,24784
    sd	$ra,136($sp)
    # Line 272
    lui	$t3,0x1
    or	$t1,$t1,$t3
    # Line 278
    bal subtractTexTableUsage
    # Line 272
    sw	$t1,31632($t2)
    # Line 288
    # lw $t9, -31840($gp) # &__glkonim_GenTexturesEXT
    # Line 286
    ld	$ra,120($sp)
    # Line 288
    addiu	$a1,$sp,16
    # Line 286
    lw	$ra,380($ra)
    sd	$ra,24($sp)
    # Line 288
    jal	__glkonim_GenTexturesEXT
    li	$a0,1
    # Line 289
    la	$a1,index_2_target_map
    ld	$a0,40($sp)
    # lw $t9, -31820($gp) # &__glkonim_BindTextureEXT
    addu	$a0,$a0,$a1
    lw	$a1,16($sp)
    lw	$a0,0($a0)
    jal	__glkonim_BindTextureEXT
    sd	$a0,32($sp)
    # Line 290
    # lw $t9, -31724($gp) # &__glkonim_TexParameteri
    li	$a2,9729
    ld	$a0,32($sp)
    jal	__glkonim_TexParameteri
    li	$a1,10241
    # Line 291
    ld	$a0,32($sp)
    ld	$a2,56($sp)
    ld	$a3,64($sp)
    ld	$a4,72($sp)
    ld	$a5,80($sp)
    ld	$a6,88($sp)
    ld	$a7,48($sp)
    lw	$t1,212($sp)
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    sw	$t1,4($sp)
    lw	$t0,220($sp)
    move	$a1,$zero
    jal	__glkonim_TexImage
    sw	$t0,12($sp)
    # Line 296
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    lui	$a1,0x6000
    jal	__glKonSetNoModeState
    li	$a0,2
    # Line 301
    ld	$a6,96($sp)
    lw	$a7,4($a6)
    la	$a5,intern_format_arr3
    ld	$a1,104($sp)
    sll	$a7,$a7,0x4
    lw	$a6,0($a6)
    addu	$a5,$a5,$a7
    lw	$a5,8($a5)
    la	$a3,rdbk_format2
    ld	$a2,128($sp)
    sll	$a4,$a5,0x2
    lui	$a0,0x1
    # lw $t9, -32736($gp) # &sub_0d970000
    subu	$a4,$a4,$a5
    lw	$a1,31664($a1)
    addu	$a0,$a0,$a2
    sll	$a4,$a4,0x2
    lw	$a0,-30036($a0)
    addiu	$t9,$t9,-14992
    addu	$a3,$a3,$a4
    move	$a2,$zero
    lw	$a4,4($a3)
    li	$a5,5123
    bal __glKonGetTexParameter
    lw	$a3,8($a3)
    # Line 303
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    # Line 307
    ld	$t1,112($sp)
    li	$t0,1
    sllv	$t0,$t0,$t1
    ld	$t1,120($sp)
    # Line 308
    # lw $t9, -31820($gp) # &__glkonim_BindTextureEXT
    # Line 307
    lw	$t2,48($t1)
    # Line 308
    ld	$a1,24($sp)
    # Line 307
    nor	$t3,$t0,$zero
    # Line 308
    ld	$a0,32($sp)
    # Line 307
    and	$t2,$t2,$t3
    or	$t0,$t0,$t2
    # Line 308
    jal	__glkonim_BindTextureEXT
    # Line 307
    sw	$t0,48($t1)
    # Line 309
    # lw $t9, -31824($gp) # &__glkonim_DeleteTexturesEXT
    addiu	$a1,$sp,16
    jal	__glkonim_DeleteTexturesEXT
    li	$a0,1
    # Line 312
    ld	$t3,128($sp)
    ld	$ra,136($sp)
    lui	$t8,0xfffe
    lw	$t2,31632($t3)
    ori	$t8,$t8,0xffff
    # Line 313
    addiu	$sp,$sp,208
    # Line 312
    and	$t2,$t2,$t8
    # Line 313
    jr	$ra
    # Line 312
    sw	$t2,31632($t3)
.end __glkonim_ProcImage

# Function: updateTexBindID
# Declared: Line 322 (Source lines: 324-325)
# Address: 0x0d964e90 - 0x0d964ea8 (Size: 24 bytes, Frame: 0)
.ent updateTexBindID
updateTexBindID:
    # Line 324
    lw	$at,272($a1)
    li	$v0,376
    sw	$v0,16384($zero)
    lw	$at,4($at)
    # Line 325
    jr	$ra
    # Line 324
    sw	$at,16384($zero)
.end updateTexBindID

# Function: stealARMTableCacheCallback
# Declared: Line 332 (Source lines: 333-347)
# Address: 0x0d964eb0 - 0x0d964f5c (Size: 172 bytes, Frame: 0)
.ent stealARMTableCacheCallback
stealARMTableCacheCallback:
    # Line 333
    lw	$a3,16($a0)
    lui	$v0,0x13
    addiu	$v0,$v0,-16088
    beqz	$a3,.L0d964efc
    addu	$at,$t9,$v0
    # Line 341
    li	$a1,1
    # Line 339
    lw	$v1,4($a3)
    # Line 342
    sw	$zero,16($a0)
    # Line 339
    li	$a2,480
    sw	$a2,16384($zero)
    sw	$zero,16384($zero)
    sw	$v1,16384($zero)
    # Line 340
    sw	$a2,16384($zero)
    li	$a4,2
    sw	$a4,16384($zero)
    sw	$v1,16384($zero)
    # Line 341
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$v1,16384($zero)
.L0d964efc:
    # Line 345
    lw	$a5,28($a0)
    la	$a7,__glNop
    move	$a4,$zero
    blez	$a5,.L0d964f54
    lw	$a3,20($a0)
    la	$a5,sub_0d970000
    lui	$a6,0xfeff
    ori	$a6,$a6,0xffff
    addiu	$a5,$a5,-6112
.L0d964f20:
    # Line 346
    lw	$t8,0($a3)
    lw	$t3,32($t8)
    and	$t3,$t3,$a6
    sw	$t3,32($t8)
    lw	$t2,0($a3)
    sw	$a5,256($t2)
    lw	$t1,0($a3)
    sw	$a7,260($t1)
    # Line 345
    lw	$t0,28($a0)
    addiu	$a4,$a4,1
    slt	$t0,$a4,$t0
    bnez	$t0,.L0d964f20
    addiu	$a3,$a3,4
.L0d964f54:
    # Line 347
    jr	$ra
    nop
.end stealARMTableCacheCallback

# Function: freeARMTexCache
# Declared: Line 354 (Source lines: 355-387)
# Address: 0x0d964f60 - 0x0d965038 (Size: 216 bytes, Frame: 48)
.ent freeARMTexCache
freeARMTexCache:
    # Line 355
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$s3,32($sp)
    lui	$v1,0x13
    # Line 357
    lw	$v0,4112($zero)
    # Line 355
    addiu	$v1,$v1,-16264
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 357
    lui	$at,0x1
    # Line 369
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 357
    addu	$at,$at,$v0
    # Line 359
    lw	$v0,272($a0)
    # Line 357
    lw	$at,-30036($at)
    # Line 369
    addiu	$t9,$t9,20112
    move	$a1,$a0
    # Line 355
    move	$s3,$a0
    # Line 359
    sd	$v0,16($sp)
    # Line 357
    sd	$at,24($sp)
    # Line 369
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$at
    # Line 386
    la	$a3,__glNop
    la	$a2,sub_0d970000
    # Line 387
    ld	$gp,8($sp)
    # Line 372
    li	$t2,453
    sw	$t2,16384($zero)
    lw	$t1,272($s3)
    ld	$ra,0($sp)
    lw	$t1,4($t1)
    sw	$t1,16384($zero)
    # Line 375
    ld	$a4,16($sp)
    # Line 379
    ld	$a6,24($sp)
    # Line 375
    lw	$t0,8($a4)
    lw	$a7,12($a4)
    sw	$a7,12($t0)
    # Line 376
    lw	$t0,12($a4)
    # Line 379
    lui	$a5,0x1
    # Line 376
    lw	$a7,8($a4)
    # Line 379
    addu	$a5,$a5,$a6
    # Line 376
    sw	$a7,8($t0)
    # Line 379
    lw	$a6,-16320($a5)
    sw	$a6,12($a4)
    # Line 380
    sw	$a4,-16320($a5)
    # Line 386
    sw	$a3,260($s3)
    addiu	$a2,$a2,-6112
    sw	$a2,256($s3)
    lui	$a1,0xfeff
    lw	$a0,32($s3)
    ori	$a1,$a1,0xffff
    # Line 383
    sw	$zero,272($s3)
    # Line 386
    and	$a0,$a0,$a1
    sw	$a0,32($s3)
    # Line 387
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end freeARMTexCache

# Function: bindARMTexCache
# Declared: Line 393 (Source lines: 394-410)
# Address: 0x0d965040 - 0x0d965098 (Size: 88 bytes, Frame: 16)
.ent bindARMTexCache
bindARMTexCache:
    # Line 396
    lw	$a1,4112($zero)
    # Line 394
    addiu	$sp,$sp,-16
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 396
    li	$a0,0x8aac
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    li	$a1,0xc03c
    addu	$a0,$a0,$a1
    # Line 399
    lw	$t9,20($a0)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a1,$s8
    # Line 409
    li	$a3,452
    sw	$a3,16384($zero)
    # Line 399
    sw	$v0,272($s8)
    ld	$ra,0($sp)
    # Line 410
    ld	$s8,8($sp)
    # Line 409
    lw	$a2,4($v0)
    # Line 410
    addiu	$sp,$sp,16
    jr	$ra
    # Line 409
    sw	$a2,16384($zero)
.end bindARMTexCache

# Function: getS0p7
# Declared: Line 416 (Source lines: 417-425)
# Address: 0x0d9650a0 - 0x0d9650d0 (Size: 48 bytes, Frame: 0)
.ent getS0p7
getS0p7:
    # Line 417
    lwc1	$f0,_lit_43000000
    mul.s	$f0,$f12,$f0
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    li	$a0,127
    # Line 422
    li	$v0,-128
    slti	$a1,$a2,-128
    # Line 417
    slti	$v1,$a2,128
    # Line 422
    movz	$v0,$a2,$a1
    movz	$v0,$a0,$v1
    # Line 425
    jr	$ra
    andi	$v0,$v0,0xff
.end getS0p7

# Function: getS2p7
# Declared: Line 432 (Source lines: 433-446)
# Address: 0x0d9650d0 - 0x0d965158 (Size: 136 bytes, Frame: 0)
.ent getS2p7
getS2p7:
    # Line 433
    lwc1	$f0,_lit_44000000
    mul.s	$f0,$f12,$f0
    ldc1	$f1,_lit8_4000000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    sra	$a1,$a1,0x2
    slti	$at,$a1,1024
    # Line 439
    li	$a2,-1024
    # Line 433
    bnez	$at,.L0d965138
    # Line 439
    slti	$a0,$a1,-1024
    # Line 438
    li	$a2,1023
.L0d965104:
    # Line 442
    move	$a3,$zero
    nop
    nop
.L0d965110:
    # Line 443
    sra	$a2,$a2,0x1
    slti	$a4,$a2,128
    beqz	$a4,.L0d965110
    addiu	$a3,$a3,1
    slti	$a5,$a2,-128
    bnez	$a5,.L0d965110
    # Line 446
    andi	$v0,$a2,0xff
    sll	$v0,$v0,0x2
    jr	$ra
    or	$v0,$a3,$v0
.L0d965138:
    # Line 439
    movz	$a2,$a1,$a0
    # Line 442
    slti	$v1,$a2,128
    beqz	$v1,.L0d965104
    slti	$a1,$a2,-128
    bnez	$a1,.L0d965104
    # Line 446
    andi	$v0,$a2,0xff
    jr	$ra
    sll	$v0,$v0,0x2
.end getS2p7

# Function: computeActiveTarget
# Declared: Line 453 (Source lines: 454-478)
# Address: 0x0d965160 - 0x0d9651b8 (Size: 88 bytes, Frame: 0)
.ent computeActiveTarget
computeActiveTarget:
    # Line 454
    lui	$a5,0x100
    li	$a6,1
    li	$v0,3
    addiu	$a3,$a0,12
    lw	$a4,0($a0)
.L0d965174:
    # Line 464
    sllv	$at,$a6,$v0
    and	$at,$a4,$at
    beqz	$at,.L0d965198
    nop
    # Line 468
    lw	$v1,32($a3)
    lw	$v1,32($v1)
    and	$v1,$v1,$a5
    bnez	$v1,.L0d9651a8
    # Line 476
    li	$a1,375
.L0d965198:
    # Line 463
    addiu	$v0,$v0,-1
    bnez	$v0,.L0d965174
    addiu	$a3,$a3,-4
    # Line 476
    li	$a1,375
.L0d9651a8:
    sw	$a1,16384($zero)
    sw	$v0,16384($zero)
    # Line 478
    jr	$ra
    # Line 475
    sw	$v0,4($a0)
.end computeActiveTarget

# Function: bindTexTable
# Declared: Line 485 (Source lines: 486-570)
# Address: 0x0d9651c0 - 0x0d965570 (Size: 944 bytes, Frame: 128)
.globl bindTexTable
.ent bindTexTable
bindTexTable:
    # Line 486
    addiu	$sp,$sp,-1024
    sd	$s3,952($sp)
    # Line 487
    sll	$s3,$a2,0x2
    addu	$s3,$a1,$s3
    lw	$s3,300($s3)
    lw	$a3,16($s3)
    li	$a5,-4096
    # Line 486
    lui	$at,0x13
    move	$v0,$a1
    addiu	$at,$at,-16872
    sd	$gp,960($sp)
    # Line 487
    beqz	$a3,.L0d965230
    # Line 486
    addu	$gp,$t9,$at
    # Line 570
    ld	$gp,960($sp)
    # Line 497
    lw	$t9,4($a3)
    sw	$t9,324($a1)
    # Line 498
    lw	$t8,16($s3)
    lw	$t9,116($a1)
    lw	$t8,4($t8)
    # Line 570
    ld	$s3,952($sp)
    addiu	$sp,$sp,1024
    # Line 498
    and	$t9,$t9,$a5
    or	$t8,$t8,$t9
    # Line 570
    jr	$ra
    # Line 498
    sw	$t8,116($a1)
.L0d965224:
    # Line 570
    ld	$gp,960($sp)
    jr	$ra
    addiu	$sp,$sp,1024
.L0d965230:
    # Line 503
    lw	$t9,20($a0)
    sd	$a1,912($sp)
    sd	$ra,992($sp)
    jalr	$t9
    move	$a1,$s3
    sw	$v0,16($s3)
    # Line 504
    lw	$v1,4($v0)
    ld	$v0,912($sp)
    sw	$v1,324($v0)
    # Line 505
    lw	$at,16($s3)
    lw	$v1,116($v0)
    li	$a0,-4096
    lw	$at,4($at)
    and	$v1,$v1,$a0
    or	$at,$at,$v1
    sw	$at,116($v0)
    lw	$ra,0($s3)
    sd	$s1,976($sp)
    addiu	$s1,$sp,0
    bnez	$ra,.L0d965480
    sd	$s0,984($sp)
    sd	$s2,1000($sp)
    la	$s2,sub_0d960000
    sd	$s4,1008($sp)
    addiu	$s4,$sp,516
    move	$s0,$zero
    addiu	$s2,$s2,20640
    nop
.L0d9652a0:
    # Line 513
    lw	$t8,4($s3)
    move	$t9,$s2
    addu	$t8,$t8,$s0
    bal __glkonlc_PointParameterfvSGIS
    lwc1	$f12,0($t8)
    # Line 512
    addiu	$s1,$s1,4
    addiu	$s0,$s0,4
    bne	$s1,$s4,.L0d9652a0
    # Line 513
    sw	$v0,-4($s1)
    # Line 516
    lw	$v1,512($sp)
    # Line 515
    addiu	$v0,$sp,4
    # Line 516
    lw	$t9,256($sp)
    # Line 515
    addiu	$a2,$sp,-4
    # Line 516
    lw	$ra,0($sp)
    sll	$v1,$v1,0x18
    # Line 512
    addiu	$t1,$sp,132
    # Line 516
    sll	$at,$t9,0x10
    ld	$s2,1000($sp)
    sll	$ra,$ra,0x8
    or	$at,$at,$v1
    ld	$s4,1008($sp)
    or	$t9,$t9,$ra
    # Line 512
    addiu	$ra,$sp,520
    # Line 516
    addiu	$a0,$ra,4
    or	$t9,$t9,$at
    sw	$t9,520($sp)
    nop
    nop
.L0d965310:
    lw	$a7,4($v0)
    # Line 515
    addiu	$a2,$a2,-8
    # Line 516
    lw	$a6,0($v0)
    lw	$a5,520($a2)
    sll	$a7,$a7,0x8
    lw	$a4,516($a2)
    sll	$a6,$a6,0x8
    lw	$v1,260($a2)
    sll	$a5,$a5,0x18
    # Line 515
    addiu	$v0,$v0,8
    # Line 516
    lw	$a3,264($a2)
    sll	$a4,$a4,0x18
    addiu	$a0,$a0,8
    lw	$a1,248($v0)
    sll	$v1,$v1,0x10
    lw	$at,252($v0)
    sll	$a3,$a3,0x10
    or	$v1,$v1,$a4
    or	$a3,$a3,$a5
    or	$a1,$a1,$a6
    or	$at,$at,$a7
    or	$a1,$a1,$a3
    sw	$a1,-8($a0)
    or	$at,$at,$v1
    # Line 515
    bne	$v0,$t1,.L0d965310
    # Line 516
    sw	$at,-4($a0)
    b	.L0d96544c
    ld	$s3,952($sp)
.L0d965380:
    # Line 539
    addiu	$s3,$sp,912
.L0d965384:
    li	$t0,1
    # Line 545
    addiu	$s1,$sp,520
    # Line 539
    bne	$a0,$t0,.L0d9653bc
    # Line 545
    la	$s0,sub_0d960000
    # Line 539
    lwc1	$f4,_lit_40000000
    addiu	$v0,$sp,656
.L0d96539c:
    # Line 546
    lwc1	$f1,4($v0)
    lwc1	$f0,0($v0)
    # Line 545
    addiu	$v0,$v0,8
    # Line 546
    mul.s	$f1,$f1,$f4
    swc1	$f1,-4($v0)
    mul.s	$f0,$f0,$f4
    # Line 545
    bne	$v0,$s3,.L0d96539c
    # Line 546
    swc1	$f0,-8($v0)
.L0d9653bc:
    # Line 545
    sd	$s1,936($sp)
    addiu	$s1,$sp,656
    addiu	$s0,$s0,20688
.L0d9653c8:
    # Line 551
    move	$t9,$s0
    bal __glkonlc_PointParameterfvSGIS
    lwc1	$f12,12($s1)
    # Line 552
    move	$t9,$s0
    # Line 551
    sd	$v0,920($sp)
    # Line 552
    bal __glkonlc_PointParameterfvSGIS
    lwc1	$f12,8($s1)
    move	$t9,$s0
    sd	$v0,944($sp)
    bal __glkonlc_PointParameterfvSGIS
    lwc1	$f12,4($s1)
    move	$t9,$s0
    sd	$v0,928($sp)
    bal __glkonlc_PointParameterfvSGIS
    lwc1	$f12,0($s1)
    ld	$t8,920($sp)
    # Line 556
    ld	$t9,936($sp)
    # Line 552
    ld	$ra,928($sp)
    sll	$v1,$t8,0x1e
    # Line 556
    srl	$t8,$t8,0x2
    # Line 552
    ld	$at,944($sp)
    # Line 550
    addiu	$s1,$s1,16
    # Line 552
    sll	$ra,$ra,0xa
    # Line 556
    addiu	$t9,$t9,8
    sd	$t9,936($sp)
    # Line 552
    sll	$at,$at,0x14
    # Line 556
    sw	$t8,-4($t9)
    # Line 552
    or	$at,$at,$v1
    or	$ra,$v0,$ra
    or	$ra,$ra,$at
    # Line 550
    bne	$s1,$s3,.L0d9653c8
    # Line 552
    sw	$ra,-8($t9)
    ld	$s3,952($sp)
.L0d96544c:
    ld	$s1,976($sp)
    ld	$s0,984($sp)
    # Line 566
    # lw $t9, -19580($gp) # &__glkon_datavn
    # Line 563
    ld	$at,912($sp)
    li	$v0,382
    sw	$v0,16384($zero)
    # Line 566
    li	$a1,33
    # Line 563
    lw	$at,324($at)
    # Line 566
    addiu	$a0,$sp,520
    jal	__glkon_datavn
    # Line 563
    sw	$at,16384($zero)
    b	.L0d965224
    ld	$ra,992($sp)
.L0d965480:
    # Line 523
    lw	$s1,4112($zero)
    # Line 528
    lw	$a1,8($s3)
    lw	$t9,0($s1)
    sll	$a1,$a1,0x2
    jalr	$t9
    move	$a0,$s1
    # Line 529
    lw	$t9,0($s1)
    # Line 528
    move	$s0,$v0
    # Line 529
    lw	$a1,8($s3)
    move	$a0,$s1
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 530
    lw	$a1,4($s3)
    # lw $t9, -31512($gp) # &__glKonTexGetCubicSpline
    # Line 529
    move	$a3,$v0
    # Line 530
    lw	$a5,8($s3)
    move	$a2,$s0
    move	$a0,$a1
    move	$a4,$a5
    sll	$a5,$a5,0x2
    # Line 529
    sd	$v0,944($sp)
    # Line 530
    jal	__glKonTexGetCubicSpline
    addu	$a1,$a1,$a5
    # Line 531
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    ld	$a1,944($sp)
    # Line 533
    lw	$a4,4($s3)
    # lw $t9, -31508($gp) # &__glKonTexEvaluateCubicSpline
    move	$a5,$s0
    li	$a2,64
    lw	$a7,8($s3)
    addiu	$a1,$sp,656
    move	$a3,$a4
    move	$a6,$a7
    sll	$a7,$a7,0x2
    la	$a0,__glKonLogOver64
    jal	__glKonTexEvaluateCubicSpline
    addu	$a4,$a4,$a7
    # Line 536
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    lw	$a0,0($s3)
    li	$t0,2
    bne	$a0,$t0,.L0d965380
    addiu	$v0,$sp,912
    addiu	$a0,$sp,656
.L0d965540:
    # Line 540
    lwc1	$f3,4($a0)
    lwc1	$f2,0($a0)
    # Line 539
    addiu	$a0,$a0,8
    # Line 540
    neg.s	$f3,$f3
    swc1	$f3,-4($a0)
    neg.s	$f2,$f2
    # Line 539
    bne	$a0,$v0,.L0d965540
    # Line 540
    swc1	$f2,-8($a0)
    sd	$v0,968($sp)
    # Line 539
    lw	$a0,0($s3)
    b	.L0d965384
    ld	$s3,968($sp)
.end bindTexTable

# Function: getTexTableUsage
# Declared: Line 584 (Source lines: 585-601)
# Address: 0x0d965570 - 0x0d965628 (Size: 184 bytes, Frame: 16)
.globl getTexTableUsage
.ent getTexTableUsage
getTexTableUsage:
    # Line 586
    sll	$a5,$a2,0x2
    addu	$a5,$a1,$a5
    lw	$a5,300($a5)
    # Line 591
    li	$t0,2
    # Line 585
    addiu	$sp,$sp,-16
    # Line 586
    lw	$a7,8($a5)
    # Line 591
    li	$v0,1
    # Line 585
    lui	$v1,0x13
    addiu	$v1,$v1,-17816
    # Line 586
    lw	$at,0($a5)
    # Line 587
    sll	$a6,$a7,0x1
    sd	$gp,0($sp)
    # Line 585
    addu	$gp,$t9,$v1
    # Line 591
    beq	$a2,$v0,.L0d9655b0
    movz	$a6,$a7,$at
    bne	$a2,$t0,.L0d965608
.L0d9655b0:
    # Line 594
    addiu	$a2,$a7,-1
    li	$a6,-4
    bltz	$a2,.L0d9655fc
    sll	$a4,$a2,0x2
.L0d9655c0:
    # Line 595
    lw	$t3,4($a5)
    addu	$t3,$t3,$a4
    lwc1	$f1,0($t3)
    swc1	$f1,0($a3)
    # Line 596
    lw	$t2,8($a5)
    lw	$t1,4($a5)
    addu	$t2,$t2,$a2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    # Line 594
    addiu	$a4,$a4,-4
    # Line 596
    lwc1	$f0,0($t1)
    # Line 594
    addiu	$a3,$a3,8
    addiu	$a2,$a2,-1
    bne	$a6,$a4,.L0d9655c0
    # Line 596
    swc1	$f0,-4($a3)
.L0d9655fc:
    # Line 601
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d965608:
    # Line 599
    # lw $t9, -18528($gp) # &bcopy
    sll	$a2,$a6,0x2
    sd	$ra,8($sp)
    move	$a1,$a3
    jal	bcopy
    lw	$a0,4($a5)
    b	.L0d9655fc
    ld	$ra,8($sp)
.end getTexTableUsage

# Function: addTexTableUsage
# Declared: Line 608 (Source lines: 610-689)
# Address: 0x0d965630 - 0x0d965b14 (Size: 1252 bytes, Frame: 144)
.globl addTexTableUsage
.ent addTexTableUsage
addTexTableUsage:
    # Line 610
    addiu	$sp,$sp,-144
    sd	$a3,72($sp)
    sd	$s2,128($sp)
    sd	$ra,96($sp)
    sd	$s0,104($sp)
    sd	$s4,64($sp)
    sd	$s5,40($sp)
    sd	$s1,48($sp)
    sd	$s3,32($sp)
    # Line 612
    sll	$s3,$a2,0x2
    sd	$s3,24($sp)
    # Line 610
    move	$s1,$a4
    move	$s5,$a2
    sd	$s6,88($sp)
    move	$s4,$a1
    lui	$v0,0x13
    # Line 611
    lw	$s6,4112($zero)
    # Line 613
    sll	$at,$a4,0x1
    sd	$gp,112($sp)
    # Line 610
    addiu	$v0,$v0,-18008
    movz	$at,$a4,$a2
    addu	$gp,$t9,$v0
    # Line 614
    lw	$t9,0($s6)
    # Line 610
    sd	$s7,56($sp)
    # Line 613
    move	$s7,$at
    # Line 614
    sll	$at,$at,0x2
    sd	$at,80($sp)
    # Line 612
    addu	$s3,$s3,$a0
    # Line 614
    move	$a0,$s6
    # Line 612
    lw	$s0,56($s3)
    # Line 614
    jalr	$t9
    move	$a1,$at
    # Line 619
    # lw $t9, -18528($gp) # &bcopy
    ld	$a0,72($sp)
    # Line 614
    move	$s2,$v0
    # Line 619
    ld	$a2,80($sp)
    move	$a1,$v0
    jal	bcopy
    sd	$s4,0($sp)
    # Line 621
    li	$v0,1
    beq	$s5,$v0,.L0d965834
    li	$t8,2
    beq	$s5,$t8,.L0d965834
.L0d9656dc:
    # Line 645
    nop	# was lw $t9, -31520($gp) # &__glKonTexChecksum
    move	$a0,$s7
    jal	__glKonTexChecksum
    move	$a1,$s2
    sll	$t9,$s7,0x2
    move	$s4,$v0
    b	.L0d96571c
    sd	$t9,8($sp)
    nop
.L0d965700:
    # Line 648
    li	$a3,1
.L0d965704:
    beqz	$a3,.L0d96573c
    nop	# was lw $t9, -18504($gp) # &bcmp
    # Line 651
    lw	$s0,36($s0)
    # Line 652
    lw	$ra,56($s3)
    beq	$ra,$s0,.L0d965764
    nop
.L0d96571c:
    # Line 648
    lw	$at,8($s0)
.L0d965720:
    move	$a3,$zero
    bne	$at,$s1,.L0d965700
    lw	$v0,12($s0)
    bne	$v0,$s4,.L0d965700
    nop
    b	.L0d965704
    nop
.L0d96573c:
    ld	$a2,8($sp)
    move	$a0,$s2
    jal	bcmp
    lw	$a1,4($s0)
    beqz	$v0,.L0d965a78
    nop
    # Line 651
    lw	$s0,36($s0)
    # Line 652
    lw	$v1,56($s3)
    bnel	$v1,$s0,.L0d965720
    # Line 648
    lw	$at,8($s0)
.L0d965764:
    # Line 670
    lw	$t9,0($s6)
    move	$a0,$s6
    jalr	$t9
    li	$a1,40
    # Line 675
    li	$a0,4
    sw	$a0,24($v0)
    # Line 674
    sw	$s4,12($v0)
    # Line 673
    sw	$s1,8($v0)
    # Line 672
    sw	$s2,4($v0)
    # Line 671
    sw	$s5,0($v0)
    # Line 676
    lw	$t9,0($s6)
    ld	$s0,24($sp)
    ld	$s7,0($sp)
    li	$a1,16
    # Line 670
    sd	$v0,16($sp)
    # Line 676
    jalr	$t9
    move	$a0,$s6
    ld	$s2,128($sp)
    # Line 689
    ld	$gp,112($sp)
    # Line 680
    addu	$t0,$s0,$s7
    # Line 689
    ld	$s0,104($sp)
    ld	$s1,48($sp)
    # Line 676
    ld	$a2,16($sp)
    # Line 689
    ld	$s4,64($sp)
    # Line 678
    sw	$zero,16($a2)
    # Line 677
    li	$t1,1
    sw	$t1,28($a2)
    # Line 676
    sw	$v0,20($a2)
    # Line 681
    sw	$zero,312($t0)
    # Line 680
    sw	$a2,300($t0)
    # Line 682
    lw	$a7,20($a2)
    # Line 689
    ld	$s5,40($sp)
    # Line 682
    sw	$s7,0($a7)
    # Line 685
    lw	$a6,56($s3)
    # Line 689
    ld	$s6,88($sp)
    # Line 685
    lw	$a6,36($a6)
    # Line 689
    ld	$ra,96($sp)
    # Line 685
    sw	$a2,32($a6)
    # Line 686
    lw	$a5,56($s3)
    # Line 689
    ld	$s7,56($sp)
    # Line 686
    lw	$a5,36($a5)
    sw	$a5,36($a2)
    # Line 687
    lw	$a4,56($s3)
    sw	$a4,32($a2)
    # Line 688
    lw	$a3,56($s3)
    # Line 689
    ld	$s3,32($sp)
    addiu	$sp,$sp,144
    jr	$ra
    # Line 688
    sw	$a2,36($a3)
.L0d965828:
    # Line 689
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d965834:
    # Line 625
    # lw $t9, -31516($gp) # &__glKonTexQuickSortPairs
    move	$a1,$zero
    move	$a0,$s2
    addiu	$s4,$s1,-1
    jal	__glKonTexQuickSortPairs
    move	$a2,$s4
    move	$a7,$zero
    slti	$t2,$s1,2
    # Line 626
    li	$a4,1
    # Line 625
    li	$v0,0x8
    bnez	$t2,.L0d9658b4
    addu	$v0,$s2,$v0
    li	$a3,1
    andi	$t3,$s4,0x1
    move	$a2,$s4
    beqz	$t3,.L0d9658a8
    li	$a4,1
    lwc1	$f4,0($v0)
    lwc1	$f0,0($s2)
    c.eq.s	$f0,$f4
    # Line 626
    addiu	$a3,$a3,1
    # Line 625
    bc1t	.L0d9658a8
    # Line 626
    addiu	$a7,$a7,1
    # Line 628
    li	$v1,0x8
    addu	$v1,$s2,$v1
    swc1	$f4,0($v1)
    # Line 629
    lwc1	$f1,4($v0)
    # Line 630
    li	$a4,0x2
    # Line 629
    swc1	$f1,4($v1)
.L0d9658a8:
    sra	$a0,$a2,0x1
    bnez	$a0,.L0d9659f8
    # Line 628
    sll	$a0,$a4,0x3
.L0d9658b4:
    # Line 635
    lw	$t9,0($s6)
    # Line 633
    move	$s4,$a4
    move	$s1,$a4
    # Line 635
    sll	$a1,$a4,0x3
    move	$a0,$s6
    jalr	$t9
    # Line 634
    sll	$s7,$a4,0x1
    # Line 635
    blez	$s4,.L0d9659c4
    move	$a1,$v0
    sll	$a7,$s4,0x2
    li	$v0,1
    slt	$t0,$s4,$v0
    movz	$v0,$s4,$t0
    andi	$a2,$v0,0x3
    move	$a3,$zero
    addu	$a7,$a1,$a7
    move	$t0,$a1
    beqz	$a2,.L0d96592c
    sra	$t2,$v0,0x2
.L0d965900:
    # Line 637
    sll	$t1,$a3,0x3
    addu	$t1,$s2,$t1
    lwc1	$f3,0($t1)
    swc1	$f3,0($t0)
    addiu	$a2,$a2,-1
    # Line 638
    lwc1	$f2,4($t1)
    # Line 636
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$a3,$a3,1
    bnez	$a2,.L0d965900
    # Line 638
    swc1	$f2,-4($a7)
.L0d96592c:
    beqz	$t2,.L0d9659c0
    nop
    nop
    nop
    nop
.L0d965940:
    # Line 637
    sll	$at,$a3,0x3
    addu	$at,$s2,$at
    lwc1	$f11,0($at)
    swc1	$f11,0($t0)
    # Line 636
    addiu	$ra,$a3,1
    # Line 638
    lwc1	$f10,4($at)
    # Line 637
    sll	$ra,$ra,0x3
    addu	$ra,$s2,$ra
    # Line 638
    swc1	$f10,0($a7)
    # Line 637
    lwc1	$f9,0($ra)
    swc1	$f9,4($t0)
    # Line 636
    addiu	$t9,$a3,2
    # Line 638
    lwc1	$f8,4($ra)
    # Line 637
    sll	$t9,$t9,0x3
    addu	$t9,$s2,$t9
    # Line 638
    swc1	$f8,4($a7)
    # Line 637
    lwc1	$f7,0($t9)
    swc1	$f7,8($t0)
    # Line 636
    addiu	$t8,$a3,3
    # Line 638
    lwc1	$f6,4($t9)
    # Line 637
    sll	$t8,$t8,0x3
    addu	$t8,$s2,$t8
    # Line 638
    swc1	$f6,8($a7)
    # Line 637
    lwc1	$f5,0($t8)
    # Line 636
    addiu	$a3,$a3,4
    # Line 637
    swc1	$f5,12($t0)
    # Line 636
    slt	$t3,$a3,$s4
    # Line 638
    lwc1	$f4,4($t8)
    # Line 636
    addiu	$a7,$a7,16
    addiu	$t0,$t0,16
    bnez	$t3,.L0d965940
    # Line 638
    swc1	$f4,-4($a7)
.L0d9659c0:
    sd	$a1,120($sp)
.L0d9659c4:
    # Line 641
    lw	$t9,12($s6)
    sd	$a1,120($sp)
    move	$a0,$s6
    move	$a1,$s2
    jalr	$t9
    ld	$s4,120($sp)
    b	.L0d9656dc
    # Line 642
    move	$s2,$s4
    nop
    nop
    nop
.L0d9659f0:
    # Line 626
    beq	$s1,$a3,.L0d9658b4
    # Line 628
    sll	$a0,$a4,0x3
.L0d9659f8:
    # Line 625
    sll	$v0,$a3,0x3
    sll	$v1,$a7,0x3
    addu	$v0,$s2,$v0
    addu	$v1,$s2,$v1
    lwc1	$f4,0($v0)
    lwc1	$f12,0($v1)
    c.eq.s $f12,$f4
    # Line 626
    addiu	$a3,$a3,1
    addiu	$a7,$a7,1
    # Line 628
    addu	$a0,$s2,$a0
    # Line 625
    sll	$v1,$a7,0x3
    # Line 626
    addiu	$a7,$a7,1
    # Line 625
    bc1t .L0d965a40
    addu	$v1,$s2,$v1
    # Line 628
    swc1	$f4,0($a0)
    # Line 629
    lwc1	$f13,4($v0)
    # Line 630
    addiu	$a4,$a4,1
    # Line 629
    swc1	$f13,4($a0)
.L0d965a40:
    # Line 625
    sll	$v0,$a3,0x3
    lwc1	$f14,0($v1)
    addu	$v0,$s2,$v0
    lwc1	$f4,0($v0)
    c.eq.s $f14,$f4
    # Line 628
    sll	$a0,$a4,0x3
    # Line 626
    addiu	$a3,$a3,1
    # Line 625
    bc1t .L0d9659f0
    # Line 628
    addu	$a0,$s2,$a0
    swc1	$f4,0($a0)
    # Line 629
    lwc1	$f15,4($v0)
    # Line 630
    addiu	$a4,$a4,1
    b	.L0d9659f0
    # Line 629
    swc1	$f15,4($a0)
.L0d965a78:
    # Line 648
    lw	$a1,28($s0)
    lw	$v0,24($s0)
    bne	$a1,$v0,.L0d965aac
    # Line 663
    ld	$a3,0($sp)
    # Line 658
    sll	$a2,$v0,0x1
    sw	$a2,24($s0)
    # Line 659
    lw	$t9,8($s6)
    sll	$a2,$v0,0x3
    lw	$a1,20($s0)
    jalr	$t9
    move	$a0,$s6
    sw	$v0,20($s0)
    # Line 663
    ld	$a3,0($sp)
.L0d965aac:
    ld	$a7,24($sp)
    addu	$a7,$a7,$a3
    sw	$s0,300($a7)
    # Line 664
    lw	$a6,28($s0)
    sw	$a6,312($a7)
    # Line 665
    lw	$a5,28($s0)
    ld	$s3,32($sp)
    lw	$a4,20($s0)
    addiu	$a5,$a5,1
    ld	$s5,40($sp)
    sll	$a6,$a5,0x2
    sw	$a5,28($s0)
    addu	$a4,$a4,$a6
    sw	$a3,-4($a4)
    # Line 666
    lw	$t9,12($s6)
    ld	$s1,48($sp)
    ld	$s7,56($sp)
    move	$a1,$s2
    ld	$s4,64($sp)
    jalr	$t9
    move	$a0,$s6
    ld	$s6,88($sp)
    ld	$ra,96($sp)
    ld	$s2,128($sp)
    b	.L0d965828
    ld	$s0,104($sp)
.end addTexTableUsage

# Function: subtractTexTableUsage
# Declared: Line 696 (Source lines: 697-732)
# Address: 0x0d965b20 - 0x0d965c6c (Size: 332 bytes, Frame: 192)
.globl subtractTexTableUsage
.ent subtractTexTableUsage
subtractTexTableUsage:
    # Line 698
    sll	$t0,$a4,0x2
    addu	$a6,$t0,$a3
    lw	$a7,300($a6)
    # Line 697
    lui	$at,0x13
    addiu	$sp,$sp,-64
    addiu	$at,$at,-19272
    sd	$gp,40($sp)
    # Line 698
    beqz	$a7,.L0d965bac
    # Line 697
    addu	$gp,$t9,$at
    sd	$a4,16($sp)
    # Line 707
    sw	$zero,300($a6)
    # Line 708
    lw	$a5,28($a7)
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    addiu	$a5,$a5,-1
    sd	$a0,32($sp)
    sw	$a5,28($a7)
    beqz	$a5,.L0d965bb8
    # Line 711
    sll	$t2,$a5,0x2
    # Line 708
    lw	$a0,312($a6)
    # Line 732
    ld	$gp,40($sp)
    # Line 708
    beq	$a5,$a0,.L0d965bac
    # Line 711
    sll	$t1,$a0,0x2
    lw	$t3,20($a7)
    addu	$t2,$t3,$t2
    addu	$t3,$t1,$t3
    lw	$t2,0($t2)
    sw	$t2,0($t3)
    # Line 712
    lw	$a6,20($a7)
    addu	$a6,$a6,$t1
    lw	$a6,0($a6)
    addu	$a6,$a6,$t0
    # Line 732
    addiu	$sp,$sp,64
    jr	$ra
    # Line 712
    sw	$a0,312($a6)
.L0d965bac:
    # Line 732
    ld	$gp,40($sp)
.L0d965bb0:
    jr	$ra
    addiu	$sp,$sp,64
.L0d965bb8:
    # Line 720
    ld	$t9,32($sp)
    sd	$a7,24($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,24($sp)
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a1,20($a1)
    # Line 721
    ld	$t9,32($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$a1,24($sp)
    jalr	$t9
    lw	$a1,4($a1)
    # Line 723
    ld	$a1,24($sp)
    lw	$a5,32($a1)
    lw	$a4,36($a1)
    sw	$a4,36($a5)
    # Line 724
    lw	$a3,36($a1)
    lw	$a2,32($a1)
    sw	$a2,32($a3)
    lw	$a1,16($a1)
    # Line 728
    ld	$t0,16($sp)
    # Line 724
    ld	$a6,0($sp)
    beqz	$a1,.L0d965c4c
    # Line 728
    li	$t1,480
    # Line 724
    beqz	$a6,.L0d965c3c
    # Line 729
    ld	$t9,8($sp)
    # Line 728
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    lw	$a7,4($a1)
    sw	$a7,16384($zero)
    # Line 729
    ld	$t9,8($sp)
.L0d965c3c:
    move	$a0,$t9
    lw	$t9,24($t9)
    jalr	$t9
    nop
.L0d965c4c:
    # Line 731
    ld	$t9,32($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    ld	$a1,24($sp)
    ld	$ra,48($sp)
    b	.L0d965bb0
    # Line 732
    ld	$gp,40($sp)
.end subtractTexTableUsage

# Function: initTexTables
# Declared: Line 738 (Source lines: 739-749)
# Address: 0x0d965c70 - 0x0d965cc8 (Size: 88 bytes, Frame: 0)
.ent initTexTables
initTexTables:
    # Line 739
    li	$a3,-1
    addiu	$a2,$a0,68
    # Line 742
    addiu	$v0,$a0,148
    # Line 743
    sw	$a2,56($a0)
    # Line 744
    sw	$a2,104($a0)
    # Line 746
    sw	$a3,76($a0)
    # Line 744
    sw	$a2,100($a0)
    # Line 742
    addiu	$a4,$a0,108
    # Line 743
    sw	$a4,60($a0)
    # Line 744
    sw	$a4,144($a0)
    # Line 746
    sw	$a3,116($a0)
    # Line 744
    sw	$a4,140($a0)
    # Line 743
    sw	$v0,64($a0)
    # Line 744
    sw	$v0,184($a0)
    sw	$v0,180($a0)
    # Line 746
    sw	$a3,156($a0)
    # Line 749
    # lw $t9, -31532($gp) # &__glKonInitARMTexCache
    la	$a3,sub_0d960000
    li	$a2,8
    li	$a1,16
    jr	$t9
    addiu	$a3,$a3,20144
.end initTexTables

# Function: freeTexTables
# Declared: Line 759 (Source lines: 760-776)
# Address: 0x0d965cd0 - 0x0d965d94 (Size: 196 bytes, Frame: 192)
.ent freeTexTables
freeTexTables:
    # Line 760
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    sd	$s2,56($sp)
    sd	$ra,40($sp)
    sd	$s4,32($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s8,0($sp)
    move	$s8,$a1
    move	$s4,$a1
    sd	$s5,8($sp)
    addiu	$s5,$a1,188
    sd	$s3,48($sp)
    addiu	$s3,$a1,68
.L0d965d08:
    # Line 766
    lw	$s0,104($s4)
    beq	$s3,$s0,.L0d965d54
    nop
.L0d965d14:
    # Line 769
    lw	$t9,12($s1)
    move	$a0,$s1
    lw	$a1,20($s0)
    # Line 767
    move	$s2,$s0
    # Line 769
    jalr	$t9
    # Line 768
    lw	$s0,36($s0)
    # Line 770
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,4($s2)
    # Line 771
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    bne	$s3,$s0,.L0d965d14
    nop
.L0d965d54:
    # Line 764
    addiu	$s3,$s3,40
    bne	$s3,$s5,.L0d965d08
    addiu	$s4,$s4,40
    # Line 776
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    # Line 775
    move	$a0,$s1
    # Line 776
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    # Line 775
    # lw $t9, -31524($gp) # &__glKonFreeARMTexCache
    # Line 776
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    # Line 775
    move	$a1,$s8
    # Line 776
    ld	$s8,0($sp)
    jr	$t9
    addiu	$sp,$sp,64
.end freeTexTables

# Function: initARMTexCache
# Declared: Line 782 (Source lines: 784-784)
# Address: 0x0d965da0 - 0x0d965db8 (Size: 24 bytes, Frame: 0)
.ent initARMTexCache
initARMTexCache:
    # Line 784
    # lw $t9, -31532($gp) # &__glKonInitARMTexCache
    la	$a3,sub_0d960000
    li	$a2,32
    li	$a1,512
    jr	$t9
    addiu	$a3,$a3,20320
.end initARMTexCache

# Function: updateTexUsage
# Declared: Line 794 (Source lines: 798-800)
# Address: 0x0d965dc0 - 0x0d965e00 (Size: 64 bytes, Frame: 0)
.ent updateTexUsage
updateTexUsage:
    # Line 798
    lui	$t9,0x1
    addu	$t9,$a0,$t9
    lw	$at,-15684($t9)
    addiu	$a2,$at,1
    sw	$a2,-15684($t9)
    # Line 799
    lui	$v1,0xfffd
    lw	$v0,32($a1)
    ori	$v1,$v1,0xffff
    # Line 798
    sw	$at,288($a1)
    # Line 799
    and	$v0,$v0,$v1
    sw	$v0,32($a1)
    # Line 800
    lw	$t9,-16296($t9)
    li	$at,0xc03c
    addu	$a0,$a0,$at
    jr	$t9
    lw	$a1,272($a1)
.end updateTexUsage

# Function: targetIndex
# Declared: Line 805 (Source lines: 807-821)
# Address: 0x0d965e00 - 0x0d965e50 (Size: 80 bytes, Frame: 0)
.ent targetIndex
targetIndex:
    # Line 807
    li	$at,3552
    li	$v1,0x806f
    beq	$a0,$at,.L0d965e38
    # Line 809
    li	$v0,1
    # Line 807
    li	$v0,3553
    beq	$a0,$v0,.L0d965e40
    nop
    beq	$a0,$v1,.L0d965e48
    # Line 815
    li	$v0,3
    # Line 821
    li	$v0,-1
    # Line 807
    li	$a1,0x8095
    xor	$a0,$a0,$a1
    # Line 809
    jr	$ra
    movz	$v0,$zero,$a0
.L0d965e38:
    jr	$ra
    nop
.L0d965e40:
    jr	$ra
    # Line 812
    li	$v0,2
.L0d965e48:
    # Line 809
    jr	$ra
    nop
.end targetIndex

# Function: isLodInvalid
# Declared: Line 826 (Source lines: 828-828)
# Address: 0x0d965e50 - 0x0d965ec8 (Size: 120 bytes, Frame: 0)
.ent isLodInvalid
isLodInvalid:
    # Line 828
    bltz	$a1,.L0d965ec0
    li	$a2,5
    li	$at,1
    beq	$a0,$at,.L0d965e7c
    li	$v0,2
    beq	$a0,$v0,.L0d965e80
    slti	$a3,$a1,17
    li	$v1,4
    beq	$a0,$v1,.L0d965e80
    slti	$a3,$a1,17
    bne	$a0,$a2,.L0d965e84
.L0d965e7c:
    slti	$a3,$a1,17
.L0d965e80:
    beqz	$a3,.L0d965ec0
.L0d965e84:
    li	$a4,3
    beq	$a0,$a4,.L0d965eb4
    move	$v0,$zero
    li	$a5,6
    beq	$a0,$a5,.L0d965eb8
    slti	$a6,$a1,12
.L0d965e9c:
    beqz	$a1,.L0d965eac
    nop
    beqz	$a0,.L0d965ec0
    nop
.L0d965eac:
    jr	$ra
    nop
.L0d965eb4:
    slti	$a6,$a1,12
.L0d965eb8:
    bnez	$a6,.L0d965e9c
    nop
.L0d965ec0:
    jr	$ra
    li	$v0,1
.end isLodInvalid

# Function: unmatchObjLevel
# Declared: Line 845 (Source lines: 847-899)
# Address: 0x0d965ed0 - 0x0d9660c8 (Size: 504 bytes, Frame: 0)
.ent unmatchObjLevel
unmatchObjLevel:
    # Line 848
    lw	$a5,332($a0)
    # Line 849
    lw	$t0,336($a0)
    # Line 850
    lw	$t2,340($a0)
    # Line 847
    sll	$a6,$a1,0x2
    # Line 852
    lw	$t3,376($a0)
    # Line 847
    addu	$a6,$a0,$a6
    lw	$a6,124($a6)
    # Line 851
    lbu	$t1,400($a0)
    # Line 852
    li	$t8,3
    # Line 850
    subu	$t2,$t2,$a1
    # Line 852
    lw	$a7,12($a6)
    # Line 849
    subu	$t0,$t0,$a1
    # Line 851
    sll	$a3,$t1,0x1
    lw	$a4,8($a6)
    # Line 848
    subu	$a5,$a5,$a1
    # Line 852
    subu	$a7,$a7,$a3
    beq	$t3,$t8,.L0d965fdc
    # Line 851
    subu	$a4,$a4,$a3
    # Line 853
    li	$t3,1
.L0d965f1c:
    # Line 858
    lw	$a3,364($a0)
    li	$t8,0x8170
    beq	$a3,$t8,.L0d965f74
    li	$t9,0x844d
    beq	$a3,$t9,.L0d965f74
    li	$at,0x844e
    beq	$a3,$at,.L0d965f74
    li	$v0,0x844f
    beq	$a3,$v0,.L0d965f74
    li	$a3,1
    slti	$a1,$a5,0
    # Line 878
    sllv	$a2,$a3,$a5
    xor	$v1,$a4,$a3
    xor	$a2,$a4,$a2
    sltu	$v1,$zero,$v1
    sltu	$a2,$zero,$a2
    movz	$v1,$a2,$a1
    beqz	$v1,.L0d96600c
    slti	$v1,$t0,0
.L0d965f68:
    li	$a0,1
.L0d965f6c:
    # Line 899
    jr	$ra
    # Line 878
    move	$v0,$a0
.L0d965f74:
    lw	$a3,404($a0)
    slt	$a3,$a1,$a3
    slti	$t9,$a5,0
    # Line 893
    lw	$a1,408($a0)
    # Line 878
    bnez	$a3,.L0d965fb4
    li	$a3,1
    # Line 888
    sllv	$at,$a3,$a5
    xor	$t8,$a4,$a3
    xor	$at,$a4,$at
    sltu	$t8,$zero,$t8
    sltu	$at,$zero,$at
    movz	$t8,$at,$t9
    beqz	$t8,.L0d966078
    li	$a1,1
    b	.L0d965fc8
    nop
.L0d965fb4:
    # Line 893
    sllv	$a1,$a3,$a1
    bne	$a1,$a4,.L0d965fc4
    nop
    beq	$a1,$a7,.L0d966070
.L0d965fc4:
    li	$a1,1
.L0d965fc8:
    # Line 897
    beqz	$a1,.L0d965fe8
    nop
.L0d965fd0:
    li	$a0,1
.L0d965fd4:
    # Line 899
    jr	$ra
    move	$v0,$a0
.L0d965fdc:
    # Line 853
    lw	$t3,16($a6)
    b	.L0d965f1c
    subu	$t3,$t3,$a3
.L0d965fe8:
    # Line 897
    lw	$t8,20($a6)
    bne	$t8,$t1,.L0d965fd0
    nop
    lw	$at,28($a0)
    lw	$t9,4($a6)
    bne	$t9,$at,.L0d965fd0
    move	$a0,$zero
    b	.L0d965fd4
    nop
.L0d96600c:
    # Line 878
    sllv	$a1,$a3,$t0
    xor	$v0,$a7,$a3
    xor	$a1,$a7,$a1
    sltu	$v0,$zero,$v0
    sltu	$a1,$zero,$a1
    movz	$v0,$a1,$v1
    bnez	$v0,.L0d965f68
    slti	$a4,$t2,0
    sllv	$a5,$a3,$t2
    xor	$a5,$t3,$a5
    xor	$a2,$t3,$a3
    sltu	$a5,$zero,$a5
    sltu	$a2,$zero,$a2
    movz	$a2,$a5,$a4
    bnez	$a2,.L0d965f68
    nop
    lw	$a7,20($a6)
    bne	$a7,$t1,.L0d965f68
    nop
    lw	$t0,4($a6)
    lw	$t1,28($a0)
    bne	$t0,$t1,.L0d965f6c
    li	$a0,1
    b	.L0d965f6c
    move	$a0,$zero
.L0d966070:
    b	.L0d965fc8
    # Line 893
    move	$a1,$zero
.L0d966078:
    slti	$t9,$t0,0
    # Line 888
    sllv	$at,$a3,$t0
    xor	$t8,$a7,$a3
    xor	$at,$a7,$at
    sltu	$t8,$zero,$t8
    sltu	$at,$zero,$at
    movz	$t8,$at,$t9
    bnez	$t8,.L0d965fc8
    li	$a1,1
    slti	$v1,$t2,0
    sllv	$a1,$a3,$t2
    xor	$a1,$t3,$a1
    xor	$v0,$t3,$a3
    sltu	$a1,$zero,$a1
    sltu	$v0,$zero,$v0
    movz	$v0,$a1,$v1
    bnez	$v0,.L0d965fc8
    li	$a1,1
    b	.L0d965fc8
    move	$a1,$zero
.end unmatchObjLevel

# Function: allocLevelImage
# Declared: Line 903 (Source lines: 904-924)
# Address: 0x0d9660d0 - 0x0d966190 (Size: 192 bytes, Frame: 32)
.ent allocLevelImage
allocLevelImage:
    # Line 904
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 906
    sll	$s0,$a1,0x2
    addu	$s0,$a0,$s0
    lw	$s0,124($s0)
    lw	$a3,0($s0)
    # Line 904
    sd	$s1,0($sp)
    # Line 905
    lw	$s1,4112($zero)
    # Line 906
    beqz	$a3,.L0d96610c
    sd	$ra,16($sp)
    # Line 909
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$a3
    # Line 910
    sw	$zero,0($s0)
.L0d96610c:
    # Line 913
    lw	$a7,12($s0)
    lw	$a6,8($s0)
    mult	$a6,$a7
    lw	$a4,16($s0)
    mflo	$a5
    nop
    nop
    mult	$a4,$a5
    lw	$a3,4($s0)
    la	$a2,intern_format_arr3
    lw	$t9,0($s1)
    sll	$a3,$a3,0x4
    addu	$a2,$a2,$a3
    move	$a0,$s1
    lw	$a2,8($a2)
    mflo	$a1
    addu	$a1,$a1,$a1
    jalr	$t9
    sllv	$a1,$a1,$a2
    beqz	$v0,.L0d966174
    sw	$v0,0($s0)
    ld	$ra,16($sp)
    # Line 924
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d966174:
    # Line 921
    # lw $t9, -28616($gp) # &__glSetError
    ld	$ra,16($sp)
    li	$a0,1285
    # Line 922
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end allocLevelImage

# Function: setDetailFilter
# Declared: Line 930 (Source lines: 931-960)
# Address: 0x0d966190 - 0x0d966284 (Size: 244 bytes, Frame: 0)
.ent setDetailFilter
setDetailFilter:
    # Line 937
    li	$a1,8448
    # Line 931
    lw	$at,24($a0)
    # Line 947
    li	$a6,0x8098
    li	$a4,0x8097
    # Line 937
    li	$a3,260
    # Line 933
    li	$v1,-225
    # Line 931
    beqz	$at,.L0d9661cc
    # Line 947
    li	$a5,0x8099
    # Line 933
    lw	$v0,64($a0)
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x20
    # Line 960
    jr	$ra
    # Line 933
    sw	$v0,64($a0)
.L0d9661c4:
    # Line 960
    jr	$ra
    nop
.L0d9661cc:
    # Line 937
    lw	$a2,372($a0)
    beq	$a2,$a1,.L0d96621c
    nop
    beq	$a2,$a3,.L0d966234
    nop
.L0d9661e0:
    # Line 947
    lw	$a2,360($a0)
    beq	$a2,$a4,.L0d96624c
    nop
    beq	$a2,$a5,.L0d966264
    nop
    bne	$a2,$a6,.L0d9661c4
    nop
    # Line 957
    lw	$a7,64($a0)
    lui	$t0,0xf3ff
    ori	$t0,$t0,0xffff
    and	$a7,$a7,$t0
    lui	$t0,0x800
    or	$a7,$a7,$t0
    # Line 960
    jr	$ra
    # Line 957
    sw	$a7,64($a0)
.L0d96621c:
    # Line 939
    lw	$t1,64($a0)
    li	$t2,-225
    and	$t1,$t1,$t2
    ori	$t1,$t1,0x80
    b	.L0d9661e0
    sw	$t1,64($a0)
.L0d966234:
    # Line 943
    lw	$t3,64($a0)
    li	$t8,-225
    and	$t3,$t3,$t8
    ori	$t3,$t3,0x60
    # Line 944
    b	.L0d9661e0
    # Line 943
    sw	$t3,64($a0)
.L0d96624c:
    # Line 949
    lw	$t9,64($a0)
    lui	$at,0xf3ff
    ori	$at,$at,0xffff
    and	$t9,$t9,$at
    # Line 960
    jr	$ra
    # Line 949
    sw	$t9,64($a0)
.L0d966264:
    # Line 953
    lw	$v0,64($a0)
    lui	$v1,0xf3ff
    ori	$v1,$v1,0xffff
    and	$v0,$v0,$v1
    lui	$v1,0x400
    or	$v0,$v0,$v1
    # Line 960
    jr	$ra
    # Line 953
    sw	$v0,64($a0)
.end setDetailFilter

# Function: setSharpenFilter
# Declared: Line 966 (Source lines: 967-993)
# Address: 0x0d966290 - 0x0d9663b4 (Size: 292 bytes, Frame: 16)
.ent setSharpenFilter
setSharpenFilter:
    # Line 968
    lw	$a2,24($a0)
    # Line 970
    li	$v1,1
    # Line 968
    addiu	$a1,$a2,1
    # Line 970
    addu	$v0,$a1,$v1
    lw	$at,36($a0)
    sllv	$v0,$v1,$v0
    sllv	$v1,$v1,$a2
    nor	$at,$at,$zero
    subu	$v0,$v0,$v1
    and	$at,$at,$v0
    beqz	$at,.L0d9662e4
    # Line 967
    addiu	$sp,$sp,-16
.L0d9662c0:
    # Line 973
    lw	$v1,64($a0)
    li	$a1,-225
    # Line 993
    addiu	$sp,$sp,16
    # Line 973
    and	$v1,$v1,$a1
    ori	$v1,$v1,0x20
    # Line 993
    jr	$ra
    # Line 973
    sw	$v1,64($a0)
.L0d9662dc:
    # Line 993
    jr	$ra
    addiu	$sp,$sp,16
.L0d9662e4:
    # Line 970
    # lw $t9, -32740($gp) # &sub_0d960000
    sd	$a0,0($sp)
    addiu	$t9,$t9,24272
    sd	$ra,8($sp)
    bal subtractTexTableUsage
    ld	$a0,0($sp)
    ld	$ra,8($sp)
    # Line 977
    li	$at,0x80ad
    li	$v1,0x80ae
    # Line 970
    bnez	$v0,.L0d9662c0
    ld	$a0,0($sp)
    # Line 977
    lw	$a1,360($a0)
    beq	$a1,$at,.L0d96635c
    li	$v0,0x80af
    beq	$a1,$v0,.L0d966384
    nop
    bne	$a1,$v1,.L0d9662dc
    nop
    # Line 989
    lw	$a1,64($a0)
    lui	$a2,0xf3ff
    ori	$a2,$a2,0xffff
    and	$a1,$a1,$a2
    lui	$a2,0x800
    or	$a1,$a1,$a2
    # Line 990
    li	$a2,-225
    # Line 993
    addiu	$sp,$sp,16
    # Line 990
    and	$a1,$a1,$a2
    ori	$a1,$a1,0xa0
    # Line 993
    jr	$ra
    # Line 990
    sw	$a1,64($a0)
.L0d96635c:
    # Line 979
    lw	$a3,64($a0)
    lui	$a4,0xf3ff
    ori	$a4,$a4,0xffff
    and	$a3,$a3,$a4
    # Line 980
    li	$a4,-225
    # Line 993
    addiu	$sp,$sp,16
    # Line 980
    and	$a3,$a3,$a4
    ori	$a3,$a3,0xa0
    # Line 993
    jr	$ra
    # Line 980
    sw	$a3,64($a0)
.L0d966384:
    # Line 984
    lw	$a5,64($a0)
    lui	$a6,0xf3ff
    ori	$a6,$a6,0xffff
    and	$a5,$a5,$a6
    lui	$a6,0x400
    or	$a5,$a5,$a6
    # Line 985
    li	$a6,-225
    # Line 993
    addiu	$sp,$sp,16
    # Line 985
    and	$a5,$a5,$a6
    ori	$a5,$a5,0xa0
    # Line 993
    jr	$ra
    # Line 985
    sw	$a5,64($a0)
.end setSharpenFilter

# Function: changeMinMaxLod
# Declared: Line 999 (Source lines: 1000-1076)
# Address: 0x0d9663c0 - 0x0d96683c (Size: 1148 bytes, Frame: 48)
.ent changeMinMaxLod
changeMinMaxLod:
    # Line 1000
    addiu	$sp,$sp,-48
    # Line 1004
    lw	$a3,12($a1)
    # Line 1000
    sd	$s1,16($sp)
    # Line 1004
    li	$a6,1
    # Line 1000
    move	$s1,$a0
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 1004
    beq	$a3,$a6,.L0d9666d4
    sd	$ra,40($sp)
    li	$at,3
    beq	$a3,$at,.L0d9666d4
    nop
    beqz	$a3,.L0d966738
    li	$v0,2
    beq	$a3,$v0,.L0d96677c
    nop
    lw	$a1,364($a1)
.L0d966404:
    # Line 1030
    li	$v1,0x8170
    beq	$a1,$v1,.L0d96658c
    li	$a0,0x844d
    beq	$a1,$a0,.L0d96658c
    li	$a2,0x844e
    beq	$a1,$a2,.L0d96658c
    li	$a3,0x844f
    beq	$a1,$a3,.L0d96658c
    nop
.L0d966428:
    # Line 1047
    lwc1	$f12,352($s0)
    mtc1	$zero,$f5
    c.lt.s	$f12,$f5
    bc1f	.L0d966468
    lw	$a1,24($s0)
    blez	$a1,.L0d9667c8
    # Line 1057
    nop	# was lw $t9, -31504($gp) # &__glKonTexExp2NegX64
    addiu	$a4,$a1,1
    mtc1	$a4,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f8,_lit_42800000
    lwc1	$f6,_lit_3f000000
    madd.s	$f6,$f6,$f7,$f8
.L0d96645c:
    trunc.w.s	$f8,$f6
    b	.L0d966494
    mfc1	$a0,$f8
.L0d966468:
    mtc1	$a1,$f13
    cvt.s.w	$f13,$f13
    c.lt.s $f13,$f12
    # Line 1060
    mov.s	$f9,$f12
    lwc1	$f11,_lit_3f800000
    movf.s	$f9,$f13,$fcc1
    lwc1	$f10,_lit_42800000
    add.s	$f9,$f9,$f11
    mul.s	$f9,$f9,$f10
    trunc.w.s	$f9,$f9
    mfc1	$a0,$f9
.L0d966494:
    lwc1	$f12,356($s0)
    c.lt.s $f12,$f5
    bc1f .L0d9664d0
    lw	$a3,20($s0)
    blez	$a3,.L0d9667e0
    # Line 1063
    nop	# was lw $t9, -31504($gp) # &__glKonTexExp2NegX64
    addiu	$a5,$a3,1
    mtc1	$a5,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f7,_lit_42800000
    lwc1	$f5,_lit_3f000000
    madd.s	$f5,$f5,$f6,$f7
.L0d9664c4:
    trunc.w.s	$f7,$f5
    b	.L0d966508
    mfc1	$a1,$f7
.L0d9664d0:
    mtc1	$a3,$f11
    cvt.s.w	$f11,$f11
    # Line 1066
    mov.s	$f8,$f12
    # Line 1063
    c.lt.s $f12,$f11
    # Line 1068
    lwc1	$f10,_lit_3f800000
    movf.s	$f8,$f11,$fcc3
    lwc1	$f9,_lit_42800000
    add.s	$f8,$f8,$f10
    mul.s	$f8,$f8,$f9
    trunc.w.s	$f8,$f8
    mfc1	$a1,$f8
    li	$t0,1023
    slti	$a7,$a1,1023
    movz	$a1,$t0,$a7
.L0d966508:
    # Line 1073
    lw	$t2,32($s0)
    # Line 1072
    lw	$t1,80($s0)
    # Line 1073
    dsll32	$t2,$t2,0x7
    # Line 1072
    li	$t3,-1024
    and	$t1,$t1,$t3
    # Line 1073
    lui	$t3,0xfff0
    # Line 1072
    or	$t1,$a0,$t1
    # Line 1073
    ori	$t3,$t3,0x3ff
    and	$t1,$t1,$t3
    sll	$t3,$a1,0xa
    or	$t1,$t1,$t3
    bgez	$t2,.L0d966578
    sw	$t1,80($s0)
    lw	$a0,4($s1)
    addu	$t9,$a0,$a6
    lw	$t3,0($s1)
    li	$t8,16
    sllv	$t9,$a6,$t9
    subu	$t8,$t8,$t9
    and	$t3,$t3,$t8
    beqz	$t3,.L0d966570
    # Line 1075
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d966570:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d966720
.L0d966578:
    ld	$ra,40($sp)
.L0d96657c:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 1076
    jr	$ra
    addiu	$sp,$sp,48
.L0d96658c:
    # Line 1030
    lw	$at,436($s0)
    # Line 1042
    lwc1	$f7,_lit_3f000000
    # Line 1045
    lwc1	$f11,_lit_42800000
    # Line 1030
    beqz	$at,.L0d966428
    # Line 1042
    lwc1	$f9,_lit_42800000
    # Line 1034
    lw	$a5,440($s0)
    # Line 1036
    lw	$a0,348($s0)
    # Line 1034
    mtc1	$a5,$f13
    # Line 1035
    lw	$a4,344($s0)
    # Line 1034
    lwc1	$f12,352($s0)
    # Line 1036
    subu	$a0,$a0,$a5
    # Line 1035
    subu	$a4,$a4,$a5
    # Line 1034
    cvt.s.w	$f13,$f13
    # Line 1035
    lwc1	$f5,356($s0)
    # Line 1036
    move	$a5,$zero
    slti	$a2,$a4,0
    lw	$a1,432($s0)
    movz	$a5,$a4,$a2
    # Line 1042
    addiu	$t3,$a5,1
    # Line 1036
    addiu	$a1,$a1,-1
    # Line 1042
    mtc1	$t3,$f8
    # Line 1035
    sub.s	$f5,$f5,$f13
    # Line 1037
    move	$a3,$a1
    # Line 1036
    bltz	$a0,.L0d96660c
    # Line 1034
    sub.s	$f12,$f12,$f13
    # Line 1036
    slt	$a2,$a0,$a1
    beqz	$a2,.L0d966614
    nop
.L0d9665fc:
    # Line 1037
    move	$a3,$zero
    slti	$a7,$a0,0
    b	.L0d966614
    movz	$a3,$a0,$a7
.L0d96660c:
    # Line 1036
    bgtz	$a1,.L0d9665fc
    nop
.L0d966614:
    # Line 1039
    move	$a7,$zero
    slti	$t0,$a4,0
    movz	$a7,$a4,$t0
    bltz	$a0,.L0d966644
    sw	$a7,24($s0)
    slt	$t1,$a0,$a1
    beqz	$t1,.L0d96664c
    nop
.L0d966634:
    # Line 1040
    move	$a1,$zero
    slti	$t2,$a0,0
    b	.L0d96664c
    movz	$a1,$a0,$t2
.L0d966644:
    # Line 1039
    bgtz	$a1,.L0d966634
    nop
.L0d96664c:
    # Line 1040
    mtc1	$zero,$f6
    c.lt.s $f12,$f6
    # Line 1045
    lwc1	$f13,_lit_3f800000
    # Line 1042
    mtc1	$a7,$f14
    # Line 1045
    mov.s	$f10,$f12
    # Line 1040
    bc1f .L0d966684
    sw	$a1,20($s0)
    blez	$a5,.L0d9667f8
    # Line 1042
    nop	# was lw $t9, -31504($gp) # &__glKonTexExp2NegX64
    cvt.s.w	$f8,$f8
    madd.s	$f7,$f7,$f8,$f9
.L0d966678:
    trunc.w.s	$f9,$f7
    b	.L0d9666a0
    mfc1	$a0,$f9
.L0d966684:
    cvt.s.w	$f14,$f14
    c.lt.s $f14,$f12
    movf.s	$f10,$f14,$fcc5
    # Line 1045
    add.s	$f10,$f10,$f13
    mul.s	$f10,$f10,$f11
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
.L0d9666a0:
    c.lt.s $f5,$f6
    # Line 1048
    addiu	$t8,$a3,1
    lwc1	$f7,_lit_42800000
    # Line 1045
    bc1f .L0d9666e4
    # Line 1048
    mtc1	$t8,$f6
    # Line 1045
    blez	$a3,.L0d96681c
    sdc1	$f5,0($sp)
    # Line 1048
    cvt.s.w	$f6,$f6
    lwc1	$f5,_lit_3f000000
    madd.s	$f5,$f5,$f6,$f7
.L0d9666c8:
    trunc.w.s	$f7,$f5
    b	.L0d966508
    mfc1	$a1,$f7
.L0d9666d4:
    # Line 1007
    lw	$a1,364($s0)
    sw	$zero,24($s0)
    b	.L0d966404
    sw	$zero,20($s0)
.L0d9666e4:
    # Line 1048
    mtc1	$a3,$f11
    cvt.s.w	$f11,$f11
    # Line 1051
    mov.s	$f8,$f5
    # Line 1048
    c.lt.s $f5,$f11
    # Line 1053
    lwc1	$f10,_lit_3f800000
    movf.s	$f8,$f11,$fcc7
    lwc1	$f9,_lit_42800000
    add.s	$f8,$f8,$f10
    mul.s	$f8,$f8,$f9
    trunc.w.s	$f8,$f8
    mfc1	$a1,$f8
    li	$ra,1023
    slti	$t9,$a1,1023
    b	.L0d966508
    movz	$a1,$ra,$t9
.L0d966720:
    # Line 1075
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	__glKonTexExp2NegX64
    move	$a1,$s0
    b	.L0d96657c
    ld	$ra,40($sp)
.L0d966738:
    # Line 1011
    lw	$a1,364($a1)
    li	$at,9728
    beq	$a1,$at,.L0d9667b8
    li	$v0,9729
    beq	$a1,$v0,.L0d9667b8
    nop
    # Line 1016
    lw	$a2,332($s0)
    lw	$a3,336($s0)
    # Line 1017
    lw	$v1,348($s0)
    # Line 1016
    slt	$a0,$a3,$a2
    movz	$a2,$a3,$a0
    lw	$a3,344($s0)
    # Line 1017
    slt	$a0,$v1,$a2
    # Line 1016
    sw	$a3,24($s0)
    movz	$v1,$a2,$a0
    b	.L0d966404
    # Line 1018
    sw	$v1,20($s0)
.L0d96677c:
    # Line 1023
    lw	$a7,332($a1)
    lw	$t1,336($a1)
    # Line 1024
    lw	$a5,340($a1)
    # Line 1023
    slt	$t0,$t1,$a7
    movz	$a7,$t1,$t0
    # Line 1025
    lw	$a3,348($a1)
    # Line 1024
    slt	$a4,$a7,$a5
    # Line 1027
    lw	$a1,364($a1)
    movz	$a5,$a7,$a4
    # Line 1023
    lw	$a7,344($s0)
    # Line 1025
    slt	$a4,$a3,$a5
    # Line 1023
    sw	$a7,24($s0)
    movz	$a3,$a5,$a4
    # Line 1027
    b	.L0d966404
    # Line 1026
    sw	$a3,20($s0)
.L0d9667b8:
    # Line 1014
    lw	$t0,344($s0)
    sw	$t0,24($s0)
    b	.L0d966404
    sw	$t0,20($s0)
.L0d9667c8:
    # Line 1057
    jalr	$t9
    nop
    mtc1	$zero,$f5
    li	$a6,1
    b	.L0d96645c
    mov.s	$f6,$f0
.L0d9667e0:
    # Line 1063
    jalr	$t9
    sd	$a0,32($sp)
    ld	$a0,32($sp)
    li	$a6,1
    b	.L0d9664c4
    mov.s	$f5,$f0
.L0d9667f8:
    sdc1	$f5,0($sp)
    # Line 1042
    jalr	$t9
    sd	$a3,24($sp)
    ld	$a3,24($sp)
    mtc1	$zero,$f6
    li	$a6,1
    ldc1	$f5,0($sp)
    b	.L0d966678
    mov.s	$f7,$f0
.L0d96681c:
    # Line 1048
    # lw $t9, -31504($gp) # &__glKonTexExp2NegX64
    sd	$a0,32($sp)
    jal	__glKonTexExp2NegX64
    ldc1	$f12,0($sp)
    ld	$a0,32($sp)
    li	$a6,1
    b	.L0d9666c8
    mov.s	$f5,$f0
.end changeMinMaxLod

# Function: guessBaseLevel
# Declared: Line 1079 (Source lines: 1081-1094)
# Address: 0x0d966840 - 0x0d9668b4 (Size: 116 bytes, Frame: 0)
.ent guessBaseLevel
guessBaseLevel:
    # Line 1081
    lw	$at,32($a0)
    dsll32	$at,$at,0xc
    bgez	$at,.L0d9668ac
    lw	$a3,24($a0)
    # Line 1084
    li	$a4,1
    lw	$a2,36($a0)
    sllv	$v0,$a4,$a3
    and	$v0,$a2,$v0
    bnez	$v0,.L0d9668a4
    andi	$v1,$a2,0x1
    bnez	$v1,.L0d9668a0
    move	$a3,$zero
.L0d966870:
    # Line 1091
    addiu	$a3,$a3,1
    sllv	$a0,$a4,$a3
    and	$a0,$a2,$a0
    bnez	$a0,.L0d9668a4
    nop
    addiu	$a3,$a3,1
    sllv	$a1,$a4,$a3
    and	$a1,$a2,$a1
    beqz	$a1,.L0d966870
    nop
    b	.L0d9668a4
    nop
.L0d9668a0:
    move	$a3,$zero
.L0d9668a4:
    # Line 1094
    jr	$ra
    move	$v0,$a3
.L0d9668ac:
    jr	$ra
    # Line 1084
    move	$v0,$a3
.end guessBaseLevel

# Function: changeFilter
# Declared: Line 1109 (Source lines: 1110-1341)
# Address: 0x0d9668c0 - 0x0d967be4 (Size: 4900 bytes, Frame: 192)
.ent changeFilter
changeFilter:
    # Line 1110
    addiu	$sp,$sp,-64
    sd	$s4,56($sp)
    sd	$s5,48($sp)
    sd	$s2,40($sp)
    # Line 1121
    lw	$a6,64($a1)
    sd	$ra,32($sp)
    # Line 1110
    sd	$s0,8($sp)
    # Line 1121
    sra	$a3,$a6,0x2
    # Line 1110
    sd	$s1,0($sp)
    # Line 1121
    andi	$a3,$a3,0x7
    # Line 1110
    move	$s1,$a0
    move	$s0,$a1
    sd	$s3,16($sp)
    # Line 1122
    li	$s3,1
    beqz	$a3,.L0d966c80
    sd	$s6,24($sp)
    xor	$a5,$a3,$s3
    li	$a4,4
    movz	$a4,$zero,$a5
.L0d96690c:
    # Line 1129
    lw	$a1,364($s0)
    slti	$a0,$a1,9987
    bnez	$a0,.L0d96696c
    # Line 1125
    li	$a7,3
    # Line 1129
    slti	$t0,$a1,9988
    bnez	$t0,.L0d9669a8
    li	$a0,0x844e
    slt	$t1,$a1,$a0
    bnez	$t1,.L0d966eb0
    slt	$t2,$a0,$a1
    beqz	$t2,.L0d966c54
    li	$t3,0x844f
    beq	$a1,$t3,.L0d9673e8
    nop
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$t8,$a0,$a5
    bnez	$t8,.L0d96736c
    slt	$t9,$a5,$a0
    bnez	$t9,.L0d96758c
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d96696c:
    # Line 1129
    slti	$ra,$a1,9984
    bnez	$ra,.L0d966a18
    slti	$at,$a1,9985
    beqz	$at,.L0d966c44
    slti	$a5,$a1,9986
.L0d966980:
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$v0,$a0,$a5
    bnez	$v0,.L0d966f94
    # Line 1146
    sltiu	$a3,$a4,1
    # Line 1171
    slt	$v1,$a5,$a0
    bnez	$v1,.L0d9671d0
    li	$a1,5
    b	.L0d9669d0
    li	$s5,3
.L0d9669a8:
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$a1,$a0,$a5
    bnez	$a1,.L0d966c88
    # Line 1167
    sltiu	$a3,$a4,1
    # Line 1171
    slt	$a2,$a5,$a0
    bnez	$a2,.L0d966fa0
    li	$a1,0x80ae
    li	$a1,5
    li	$s5,6
.L0d9669d0:
    # Line 1187
    lw	$a0,376($s0)
    li	$a4,2
    beq	$a0,$a4,.L0d966ff0
    # Line 1185
    ori	$a1,$a1,0x2
    # Line 1211
    beq	$a0,$s3,.L0d966e78
    li	$s2,3
    # Line 1224
    move	$t0,$s3
    # Line 1226
    lw	$t1,16($s0)
    move	$t3,$a4
    # Line 1224
    andi	$t2,$a1,0x4
    # Line 1226
    li	$s4,1
    # Line 1224
    movn	$t0,$t3,$t2
    # Line 1211
    andi	$a5,$a1,0x3
    # Line 1226
    beq	$t1,$a7,.L0d9671a0
    movn	$s4,$t0,$a5
    # Line 1235
    li	$s2,3
    b	.L0d966a60
    li	$s6,1
.L0d966a18:
    # Line 1129
    slti	$t8,$a1,9729
    li	$a5,0x8099
    bnez	$t8,.L0d966efc
    lw	$a0,360($s0)
    slti	$t9,$a1,9730
    beqz	$t9,.L0d967064
    # Line 1171
    slt	$v0,$a0,$a5
    slt	$ra,$a0,$a5
    bnez	$ra,.L0d96727c
    # Line 1139
    move	$a3,$a4
    # Line 1171
    slt	$at,$a5,$a0
    bnez	$at,.L0d9674dc
    li	$a1,0x80ae
    li	$a1,1
    b	.L0d9669d0
    li	$s5,1
.L0d966a58:
    # Line 1243
    beq	$s2,$v0,.L0d966a64
    nop
.L0d966a60:
    # Line 1284
    sw	$s2,16($s0)
.L0d966a64:
    # Line 1286
    lw	$v1,12($s0)
    bne	$v1,$s4,.L0d966a78
    # Line 1288
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d966a70:
    # Line 1286
    beqz	$a3,.L0d9670c8
.L0d966a74:
    # Line 1288
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d966a78:
    addiu	$t9,$t9,-7776
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,3868($s1)
    # Line 1290
    lw	$ra,64($s0)
    li	$at,-29
    and	$ra,$ra,$at
    sll	$at,$s5,0x2
    or	$ra,$ra,$at
    # Line 1291
    li	$at,-225
    and	$ra,$ra,$at
    sll	$at,$s6,0x5
    or	$ra,$ra,$at
    # Line 1292
    li	$at,-4
    and	$ra,$ra,$at
    or	$ra,$s4,$ra
    beq	$s2,$s3,.L0d96729c
    sw	$ra,64($s0)
    # Line 1286
    li	$v0,2
    beq	$s2,$v0,.L0d9672b4
    # Line 1296
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    lw	$v1,32($s0)
.L0d966ad0:
    dsll32	$v1,$v1,0x7
    bgez	$v1,.L0d966b18
    lui	$s5,0x100
    lw	$a0,4($s1)
    addu	$a3,$a0,$s3
    lw	$a1,0($s1)
    li	$a2,16
    sllv	$a3,$s3,$a3
    subu	$a2,$a2,$a3
    and	$a1,$a1,$a2
    beqz	$a1,.L0d966b10
    # Line 1297
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d966b10:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d966f5c
.L0d966b18:
    # Line 1299
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d966b1c:
    # Line 1297
    la	$s6,sub_0d960000
    # Line 1299
    addiu	$t9,$t9,25536
    move	$a1,$s0
    move	$a0,$s1
    bal subtractTexTableUsage
    # Line 1297
    addiu	$s6,$s6,20832
    # Line 1301
    lw	$ra,32($s0)
    dsll32	$ra,$ra,0xc
    bgez	$ra,.L0d966ba8
    sw	$s4,12($s0)
    # Line 1305
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,26688
    bal subtractTexTableUsage
    move	$a0,$s0
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10416
    move	$a2,$v0
    move	$a0,$s1
    bal __glKonGetTexParameter
    move	$a1,$s0
    # Line 1306
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s0
    beqz	$v0,.L0d967178
    lw	$a0,32($s0)
    # Line 1307
    lui	$ra,0xfffe
    ori	$ra,$ra,0xffff
    and	$ra,$a0,$ra
    sw	$ra,32($s0)
.L0d966b94:
    # Line 1311
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    move	$a0,$s1
    bal __glKonGetTexParameter
    move	$a1,$s0
.L0d966ba8:
    # Line 1327
    lw	$ra,116($s0)
.L0d966bac:
    lui	$at,0xf0ff
    ori	$at,$at,0xffff
    and	$ra,$ra,$at
    sll	$at,$s2,0x18
    or	$ra,$ra,$at
    # Line 1330
    li	$at,3
    # Line 1326
    sw	$s2,16($s0)
    # Line 1330
    beq	$s2,$at,.L0d966c1c
    # Line 1327
    sw	$ra,116($s0)
    # Line 1330
    lw	$v0,32($s0)
    and	$v0,$v0,$s5
    beqz	$v0,.L0d966c20
    ld	$s4,56($sp)
    lw	$a0,4($s1)
    addu	$a2,$a0,$s3
    lw	$v1,0($s1)
    li	$a1,16
    sllv	$a2,$s3,$a2
    subu	$a1,$a1,$a2
    and	$v1,$v1,$a1
    beqz	$v1,.L0d966c10
    # Line 1334
    move	$t9,$s6
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d966c10:
    lw	$a3,376($s0)
    beq	$a3,$a0,.L0d966f2c
    # Line 1337
    nop	# was lw $t9, -31868($gp) # &bindTexTable
.L0d966c1c:
    ld	$s4,56($sp)
.L0d966c20:
    ld	$s5,48($sp)
    ld	$s2,40($sp)
    ld	$s6,24($sp)
    ld	$ra,32($sp)
    # Line 1275
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d966c44:
    # Line 1129
    bnez	$a5,.L0d96702c
    li	$t9,9985
    beqz	$a0,.L0d96724c
    nop
.L0d966c54:
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$t0,$a0,$a5
    bnez	$t0,.L0d967194
    # Line 1153
    sltiu	$a3,$a4,1
    # Line 1171
    slt	$t1,$a5,$a0
    bnez	$t1,.L0d9673bc
    li	$a1,0x80ae
    li	$a1,5
    b	.L0d9669d0
    li	$s5,4
.L0d966c80:
    b	.L0d96690c
    # Line 1122
    move	$a4,$zero
.L0d966c88:
    # Line 1171
    li	$a1,5
    li	$s5,6
.L0d966c90:
    li	$a4,0x8097
    slt	$t2,$a0,$a4
    bnez	$t2,.L0d966cc0
    slti	$t9,$a0,9729
    slt	$t3,$a4,$a0
    beqz	$t3,.L0d9669d0
    li	$t8,0x8098
    beq	$a0,$t8,.L0d9669d0
    # Line 1198
    li	$s2,3
    li	$s6,1
    b	.L0d966cf8
    lw	$a0,376($s0)
.L0d966cc0:
    # Line 1171
    bnez	$t9,.L0d966ce8
    li	$at,9728
    slti	$ra,$a0,9730
    beqz	$ra,.L0d967088
    # Line 1198
    li	$s2,3
    # Line 1180
    li	$s2,3
    li	$s6,1
    lw	$a0,376($s0)
    b	.L0d966cf8
    # Line 1178
    ori	$a1,$a1,0x2
.L0d966ce8:
    # Line 1171
    beq	$a0,$at,.L0d967438
    # Line 1198
    li	$s2,3
    li	$s6,1
    lw	$a0,376($s0)
.L0d966cf8:
    # Line 1211
    beq	$a0,$s3,.L0d966e80
    # Line 1213
    andi	$ra,$a1,0x1
    # Line 1211
    li	$v0,2
    beq	$a0,$v0,.L0d966e80
    # Line 1213
    andi	$ra,$a1,0x1
    andi	$v1,$a1,0x3
    beqz	$v1,.L0d9670c0
.L0d966d14:
    # Line 1224
    move	$s4,$s3
    li	$a2,2
    andi	$a0,$a1,0x4
    movn	$s4,$a2,$a0
.L0d966d24:
    # Line 1226
    lw	$a4,16($s0)
    bne	$a4,$s2,.L0d966a58
    # Line 1243
    li	$v0,2
    # Line 1235
    lw	$a5,12($s0)
    bne	$a5,$s4,.L0d966d48
    # Line 1237
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d966d3c:
    # Line 1235
    beqz	$a3,.L0d9672c8
    # Line 1263
    li	$ra,-29
.L0d966d44:
    # Line 1237
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d966d48:
    addiu	$t9,$t9,-7776
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,3868($s1)
    # Line 1239
    lw	$ra,64($s0)
    li	$at,-29
    and	$ra,$ra,$at
    sll	$at,$s5,0x2
    or	$ra,$ra,$at
    # Line 1240
    li	$at,-225
    and	$ra,$ra,$at
    sll	$at,$s6,0x5
    or	$ra,$ra,$at
    # Line 1241
    li	$at,-4
    and	$ra,$ra,$at
    or	$ra,$s4,$ra
    beq	$s2,$s3,.L0d967480
    sw	$ra,64($s0)
    # Line 1341
    li	$v0,2
    beq	$s2,$v0,.L0d9674b4
    # Line 1245
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    lw	$v1,32($s0)
.L0d966da0:
    dsll32	$v1,$v1,0x7
    bgez	$v1,.L0d966dec
    # Line 1248
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 1245
    lw	$a0,4($s1)
    addu	$a3,$a0,$s3
    lw	$a1,0($s1)
    li	$a2,16
    sllv	$a3,$s3,$a3
    subu	$a2,$a2,$a3
    and	$a1,$a1,$a2
    beqz	$a1,.L0d966de0
    # Line 1246
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d966de0:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d966fd8
    # Line 1248
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d966dec:
    addiu	$t9,$t9,25536
    move	$a0,$s1
    bal subtractTexTableUsage
    move	$a1,$s0
    # Line 1250
    lw	$ra,32($s0)
    dsll32	$ra,$ra,0xc
    bgez	$ra,.L0d966c1c
    sw	$s4,12($s0)
    # Line 1254
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,26688
    bal subtractTexTableUsage
    move	$a0,$s0
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10416
    move	$a2,$v0
    move	$a0,$s1
    bal __glKonGetTexParameter
    move	$a1,$s0
    # Line 1255
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s0
    beqz	$v0,.L0d9671c0
    lw	$a0,32($s0)
    # Line 1256
    lui	$ra,0xfffe
    ori	$ra,$ra,0xffff
    and	$ra,$a0,$ra
    sw	$ra,32($s0)
.L0d966e5c:
    # Line 1260
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    move	$a0,$s1
    bal __glKonGetTexParameter
    move	$a1,$s0
    b	.L0d966c20
    ld	$s4,56($sp)
.L0d966e78:
    # Line 1211
    li	$s6,1
.L0d966e7c:
    # Line 1213
    andi	$ra,$a1,0x1
.L0d966e80:
    beqz	$ra,.L0d9671f4
.L0d966e84:
    andi	$at,$a1,0x2
    beqz	$at,.L0d967294
    nop
    # Line 1217
    lw	$v0,16($s0)
    bne	$v0,$s2,.L0d966f74
    # Line 1235
    li	$a4,2
    lw	$v1,12($s0)
    beqz	$v1,.L0d967604
    nop
    b	.L0d966d44
    move	$s4,$zero
.L0d966eb0:
    # Line 1129
    li	$a0,0x844d
    slt	$a2,$a1,$a0
    bnez	$a2,.L0d966ffc
    li	$t2,0x8170
    slt	$a3,$a0,$a1
    beqz	$a3,.L0d966980
    nop
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$a4,$a0,$a5
    bnez	$a4,.L0d967528
    li	$s5,1
    slt	$t0,$a5,$a0
    bnez	$t0,.L0d967698
    li	$a1,0x80ae
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d966efc:
    # Line 1129
    li	$t1,9728
    beq	$a1,$t1,.L0d967414
    # Line 1171
    slt	$t2,$a0,$a5
    bnez	$t2,.L0d967188
    li	$s5,1
    slt	$t3,$a5,$a0
    bnez	$t3,.L0d967398
    li	$a1,0x80ae
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d966f2c:
    # Line 1337
    lw	$a0,3868($s1)
    move	$a1,$s0
    li	$a3,0xc074
    lw	$a2,16($s0)
    bal bindTexTable
    addu	$a0,$a0,$a3
    # Line 1338
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d970000
    move	$a1,$s0
    b	.L0d966c20
    ld	$s4,56($sp)
.L0d966f5c:
    # Line 1297
    lw	$t9,256($s0)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L0d966b1c
    # Line 1299
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d966f74:
    # Line 1235
    beq	$s2,$a4,.L0d966f80
    nop
    # Line 1284
    sw	$s2,16($s0)
.L0d966f80:
    # Line 1286
    lw	$a5,12($s0)
    beqz	$a5,.L0d96760c
    nop
    b	.L0d966a74
    move	$s4,$zero
.L0d966f94:
    # Line 1171
    li	$a1,5
    b	.L0d966c90
    li	$s5,3
.L0d966fa0:
    slt	$t0,$a0,$a1
    bnez	$t0,.L0d967220
    li	$t0,0x80ad
    slt	$t1,$a1,$a0
    bnez	$t1,.L0d9674c8
    li	$a1,5
    li	$s5,6
.L0d966fbc:
    # Line 1195
    ori	$a1,$a1,0x2
    # Line 1198
    andi	$a4,$a1,0x4
    beqz	$a4,.L0d967540
    lw	$a0,376($s0)
    li	$s2,2
    b	.L0d966cf8
    li	$s6,1
.L0d966fd8:
    # Line 1246
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d966dec
    # Line 1248
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d966ff0:
    # Line 1190
    li	$s2,1
    b	.L0d966cf8
    li	$s6,1
.L0d966ffc:
    # Line 1129
    beq	$a1,$t2,.L0d9669a8
    nop
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$t3,$a0,$a5
    bnez	$t3,.L0d96737c
    slt	$t8,$a5,$a0
    bnez	$t8,.L0d9675b4
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d96702c:
    # Line 1129
    beq	$a1,$t9,.L0d9673e8
    nop
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$ra,$a0,$a5
    bnez	$ra,.L0d96738c
    li	$s5,1
    slt	$at,$a5,$a0
    bnez	$at,.L0d9675dc
    li	$a1,0x80ae
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d967064:
    bnez	$v0,.L0d967288
    li	$s5,1
    slt	$v1,$a5,$a0
    bnez	$v1,.L0d967500
    li	$a1,0x80ae
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d967088:
    # Line 1198
    li	$s6,1
    b	.L0d966cf8
    lw	$a0,376($s0)
.L0d967094:
    # Line 1171
    li	$a1,0x80ad
    beq	$a0,$a1,.L0d967a60
    li	$s5,1
.L0d9670a0:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967860
    li	$a2,2
    beq	$a0,$a2,.L0d967860
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    move	$a3,$zero
.L0d9670c0:
    b	.L0d966d24
    # Line 1226
    li	$s4,1
.L0d9670c8:
    # Line 1314
    li	$a3,-29
    and	$a3,$a6,$a3
    sll	$a4,$s5,0x2
    or	$a3,$a3,$a4
    # Line 1315
    li	$a4,-225
    and	$a3,$a3,$a4
    sll	$a4,$s6,0x5
    or	$a3,$a3,$a4
    # Line 1316
    li	$a4,-4
    and	$a3,$a3,$a4
    or	$a3,$s4,$a3
    beq	$s2,$s3,.L0d9679b4
    sw	$a3,64($s0)
    # Line 1318
    li	$a4,2
    beq	$s2,$a4,.L0d9679cc
    # Line 1320
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    lw	$a5,32($s0)
.L0d96710c:
    dsll32	$a5,$a5,0x7
    bgez	$a5,.L0d967154
    lui	$s5,0x100
    lw	$a0,4($s1)
    addu	$t1,$a0,$s3
    lw	$a6,0($s1)
    li	$t0,16
    sllv	$t1,$s3,$t1
    subu	$t0,$t0,$t1
    and	$a6,$a6,$t0
    beqz	$a6,.L0d96714c
    # Line 1321
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d96714c:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d967658
.L0d967154:
    # Line 1323
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d967158:
    # Line 1321
    la	$s6,sub_0d960000
    # Line 1323
    addiu	$t9,$t9,25536
    move	$a1,$s0
    move	$a0,$s1
    bal subtractTexTableUsage
    # Line 1321
    addiu	$s6,$s6,20832
    b	.L0d966bac
    # Line 1327
    lw	$ra,116($s0)
.L0d967178:
    # Line 1309
    lui	$ra,0x21
    or	$ra,$a0,$ra
    b	.L0d966b94
    sw	$ra,32($s0)
.L0d967188:
    # Line 1171
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d967194:
    li	$a1,5
    b	.L0d966c90
    li	$s5,4
.L0d9671a0:
    # Line 1235
    lw	$at,12($s0)
    bne	$at,$s4,.L0d9673e0
    li	$s2,3
    beqz	$a3,.L0d967954
    # Line 1263
    li	$a7,-29
    # Line 1235
    li	$s2,3
    b	.L0d966d44
    li	$s6,1
.L0d9671c0:
    # Line 1258
    lui	$v0,0x21
    or	$v0,$a0,$v0
    b	.L0d966e5c
    sw	$v0,32($s0)
.L0d9671d0:
    # Line 1171
    li	$a1,0x80ae
    slt	$v1,$a0,$a1
    bnez	$v1,.L0d96744c
    slt	$a2,$a1,$a0
    bnez	$a2,.L0d967688
    li	$t0,0x80af
    li	$a1,5
    b	.L0d966fbc
    li	$s5,3
.L0d9671f4:
    # Line 1223
    lw	$a4,16($s0)
.L0d9671f8:
    beqz	$a4,.L0d967498
    nop
    # Line 1286
    lw	$a5,12($s0)
    beq	$a5,$a7,.L0d967614
    # Line 1284
    sw	$zero,16($s0)
    # Line 1286
    li	$s5,2
    li	$s6,2
    li	$s4,3
    b	.L0d966a74
    move	$s2,$zero
.L0d967220:
    # Line 1171
    beq	$a0,$t0,.L0d967810
    li	$a1,5
.L0d967228:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d9671f4
    li	$t1,2
    beq	$a0,$t1,.L0d9671f4
    # Line 1213
    li	$a1,5
    li	$s2,3
    li	$s5,6
    b	.L0d966d14
    li	$s6,1
.L0d96724c:
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$t2,$a0,$a5
    bnez	$t2,.L0d967534
    li	$s5,1
    slt	$t3,$a5,$a0
    bnez	$t3,.L0d9676b8
    li	$a1,0x80ae
    li	$s5,1
    move	$a3,$zero
    b	.L0d9669d0
    move	$a1,$zero
.L0d96727c:
    li	$a1,1
    b	.L0d966c90
    li	$s5,1
.L0d967288:
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d967294:
    # Line 1213
    b	.L0d9671f8
    # Line 1223
    lw	$a4,16($s0)
.L0d96729c:
    # Line 1294
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24976
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d966ad0
    # Line 1296
    lw	$v1,32($s0)
.L0d9672b4:
    addiu	$t9,$t9,25232
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d966ad0
    lw	$v1,32($s0)
.L0d9672c8:
    # Line 1263
    and	$ra,$a6,$ra
    sll	$at,$s5,0x2
    or	$ra,$ra,$at
    # Line 1264
    li	$at,-225
    and	$ra,$ra,$at
    sll	$at,$s6,0x5
    or	$ra,$ra,$at
    # Line 1265
    li	$at,-4
    and	$ra,$ra,$at
    or	$ra,$s4,$ra
    beq	$s2,$s3,.L0d967aec
    sw	$ra,64($s0)
.L0d9672f8:
    # Line 1267
    li	$at,2
    beq	$s2,$at,.L0d967ac8
    # Line 1269
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    lw	$v0,32($s0)
.L0d967308:
    dsll32	$v0,$v0,0x7
    bgez	$v0,.L0d967354
    # Line 1273
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 1269
    lw	$a0,4($s1)
    addu	$a2,$a0,$s3
    lw	$v1,0($s1)
    li	$a1,16
    sllv	$a2,$s3,$a2
    subu	$a1,$a1,$a2
    and	$v1,$v1,$a1
    beqz	$v1,.L0d967348
    # Line 1271
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d967348:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d9677e8
    # Line 1273
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d967354:
    addiu	$t9,$t9,25536
    move	$a0,$s1
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d966c20
    ld	$s4,56($sp)
.L0d96736c:
    # Line 1171
    li	$s5,1
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d96737c:
    li	$s5,1
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d96738c:
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d967398:
    slt	$ra,$a0,$a1
    bnez	$ra,.L0d967094
    slt	$at,$a1,$a0
    bnez	$at,.L0d9677d4
    li	$t0,0x80af
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d9673bc:
    slt	$v0,$a0,$a1
    bnez	$v0,.L0d967628
    li	$a4,0x80ad
    slt	$v1,$a1,$a0
    bnez	$v1,.L0d967800
    li	$t1,0x80af
    li	$a1,5
    b	.L0d966fbc
    li	$s5,4
.L0d9673e0:
    # Line 1235
    b	.L0d966d44
    li	$s6,1
.L0d9673e8:
    # Line 1171
    lw	$a0,360($s0)
    li	$a5,0x8099
    slt	$a1,$a0,$a5
    bnez	$a1,.L0d967670
    # Line 1160
    sltiu	$a3,$a4,1
    # Line 1171
    slt	$a2,$a5,$a0
    bnez	$a2,.L0d967818
    li	$a1,0x80ae
    li	$a1,5
    b	.L0d9669d0
    li	$s5,5
.L0d967414:
    slt	$t0,$a0,$a5
    bnez	$t0,.L0d96767c
    # Line 1133
    move	$a3,$a4
    # Line 1171
    slt	$t1,$a5,$a0
    bnez	$t1,.L0d96783c
    li	$a1,0x80ae
    move	$s5,$zero
    b	.L0d9669d0
    li	$a1,1
.L0d967438:
    # Line 1175
    li	$s2,3
    move	$s6,$zero
    lw	$a0,376($s0)
    b	.L0d966cf8
    # Line 1173
    ori	$a1,$a1,0x2
.L0d96744c:
    # Line 1171
    li	$t2,0x80ad
    beq	$a0,$t2,.L0d96794c
    li	$a1,5
.L0d967458:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967740
    li	$a1,5
    li	$t3,2
    beq	$a0,$t3,.L0d96773c
    # Line 1213
    li	$a1,5
    li	$s2,3
    li	$s5,3
    b	.L0d966d14
    li	$s6,1
.L0d967480:
    # Line 1243
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24976
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d966da0
    # Line 1245
    lw	$v1,32($s0)
.L0d967498:
    # Line 1235
    lw	$ra,12($s0)
    beq	$ra,$a7,.L0d9679a0
    li	$s5,2
    li	$s6,2
    li	$s4,3
    b	.L0d966d44
    move	$s2,$zero
.L0d9674b4:
    # Line 1245
    addiu	$t9,$t9,25232
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d966da0
    lw	$v1,32($s0)
.L0d9674c8:
    # Line 1171
    li	$ra,0x80af
    bne	$a0,$ra,.L0d967228
    li	$a1,5
    b	.L0d966fbc
    li	$s5,6
.L0d9674dc:
    slt	$at,$a0,$a1
    bnez	$at,.L0d9676e0
    li	$t9,0x80ad
    slt	$v0,$a1,$a0
    bnez	$v0,.L0d9678e4
    li	$a1,0x80af
    li	$a1,1
    b	.L0d966fbc
    li	$s5,1
.L0d967500:
    slt	$v1,$a0,$a1
    bnez	$v1,.L0d967710
    li	$at,0x80ad
    slt	$a2,$a1,$a0
    bnez	$a2,.L0d9678f4
    li	$a2,0x80af
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967528:
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d967534:
    move	$a3,$zero
    b	.L0d966c90
    move	$a1,$zero
.L0d967540:
    # Line 1211
    beq	$a0,$s3,.L0d967a58
    li	$s2,3
    li	$a5,2
    beq	$a0,$a5,.L0d967a6c
    li	$s2,3
    # Line 1226
    lw	$t2,16($s0)
    # Line 1224
    move	$t1,$s3
    move	$t3,$a5
    # Line 1226
    li	$s4,1
    # Line 1224
    movn	$t1,$t3,$a4
    # Line 1213
    andi	$t0,$a1,0x3
    # Line 1226
    beq	$t2,$a7,.L0d967a74
    movn	$s4,$t1,$t0
    # Line 1286
    lw	$t8,12($s0)
    bne	$t8,$s4,.L0d96787c
    # Line 1284
    sw	$a7,16($s0)
    # Line 1286
    li	$s2,3
    b	.L0d966a70
    li	$s6,1
.L0d96758c:
    # Line 1171
    li	$a1,0x80ae
    slt	$t9,$a0,$a1
    bnez	$t9,.L0d967750
    li	$v1,0x80ad
    slt	$ra,$a1,$a0
    bnez	$ra,.L0d967908
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d9675b4:
    li	$a1,0x80ae
    slt	$at,$a0,$a1
    bnez	$at,.L0d96777c
    li	$a2,0x80ad
    slt	$v0,$a1,$a0
    bnez	$v0,.L0d967920
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d9675dc:
    slt	$v1,$a0,$a1
    bnez	$v1,.L0d9677a8
    li	$a4,0x80ad
    slt	$a2,$a1,$a0
    bnez	$a2,.L0d967938
    li	$a5,0x80af
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967604:
    # Line 1235
    b	.L0d966d3c
    move	$s4,$zero
.L0d96760c:
    # Line 1286
    b	.L0d966a70
    move	$s4,$zero
.L0d967614:
    li	$s5,2
    li	$s6,2
    li	$s4,3
    b	.L0d966a70
    move	$s2,$zero
.L0d967628:
    # Line 1171
    beq	$a0,$a4,.L0d967ac0
    li	$a1,5
.L0d967630:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d96786c
    li	$a1,5
    li	$a5,2
    beq	$a0,$a5,.L0d967868
    # Line 1213
    li	$a1,5
    li	$s2,3
    li	$s5,4
    b	.L0d966d14
    li	$s6,1
.L0d967658:
    # Line 1321
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d967158
    # Line 1323
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d967670:
    # Line 1171
    li	$a1,5
    b	.L0d966c90
    li	$s5,5
.L0d96767c:
    move	$s5,$zero
    b	.L0d966c90
    li	$a1,1
.L0d967688:
    bne	$a0,$t0,.L0d967458
    li	$a1,5
    b	.L0d966fbc
    li	$s5,3
.L0d967698:
    slt	$t1,$a0,$a1
    bnez	$t1,.L0d967888
    slt	$t2,$a1,$a0
    bnez	$t2,.L0d967a94
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d9676b8:
    slt	$t3,$a0,$a1
    bnez	$t3,.L0d9678b8
    li	$v0,0x80ad
    slt	$t8,$a1,$a0
    bnez	$t8,.L0d967aac
    li	$a2,0x80af
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d9676e0:
    beq	$a0,$t9,.L0d967b24
    li	$a1,1
.L0d9676e8:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967988
    li	$a1,1
    li	$ra,2
    beq	$a0,$ra,.L0d967984
    # Line 1213
    li	$a1,1
    li	$s2,3
    li	$s5,1
    b	.L0d966d14
    li	$s6,1
.L0d967710:
    # Line 1171
    beq	$a0,$at,.L0d967b2c
    li	$s5,1
.L0d967718:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967998
    li	$v0,2
    beq	$a0,$v0,.L0d967998
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    b	.L0d9670c0
    move	$a3,$zero
.L0d96773c:
    # Line 1211
    li	$a1,5
.L0d967740:
    li	$s2,3
    li	$s5,3
    b	.L0d966e84
    li	$s6,1
.L0d967750:
    # Line 1171
    beq	$a0,$v1,.L0d967b38
    li	$s5,1
.L0d967758:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967a40
    li	$a1,2
    beq	$a0,$a1,.L0d967a40
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    b	.L0d9670c0
    move	$a3,$zero
.L0d96777c:
    # Line 1171
    beq	$a0,$a2,.L0d967b44
    li	$s5,1
.L0d967784:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967a48
    li	$a3,2
    beq	$a0,$a3,.L0d967a48
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    b	.L0d9670c0
    move	$a3,$zero
.L0d9677a8:
    # Line 1171
    beq	$a0,$a4,.L0d967b50
    li	$s5,1
.L0d9677b0:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967a50
    li	$a5,2
    beq	$a0,$a5,.L0d967a50
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    b	.L0d9670c0
    move	$a3,$zero
.L0d9677d4:
    # Line 1171
    bne	$a0,$t0,.L0d9670a0
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d9677e8:
    # Line 1271
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d967354
    # Line 1273
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d967800:
    # Line 1171
    bne	$a0,$t1,.L0d967630
    li	$a1,5
    b	.L0d966fbc
    li	$s5,4
.L0d967810:
    b	.L0d966fbc
    li	$s5,6
.L0d967818:
    slt	$t2,$a0,$a1
    bnez	$t2,.L0d9679e0
    li	$ra,0x80ad
    slt	$t3,$a1,$a0
    bnez	$t3,.L0d967b04
    li	$ra,0x80af
    li	$a1,5
    b	.L0d966fbc
    li	$s5,5
.L0d96783c:
    slt	$t8,$a0,$a1
    bnez	$t8,.L0d967a10
    li	$v0,0x80ad
    slt	$t9,$a1,$a0
    bnez	$t9,.L0d967b14
    li	$at,0x80af
    move	$s5,$zero
    b	.L0d966fbc
    li	$a1,1
.L0d967860:
    # Line 1213
    b	.L0d9671f4
    move	$a3,$zero
.L0d967868:
    # Line 1211
    li	$a1,5
.L0d96786c:
    li	$s2,3
    li	$s5,4
    b	.L0d966e84
    li	$s6,1
.L0d96787c:
    # Line 1286
    li	$s2,3
    b	.L0d966a74
    li	$s6,1
.L0d967888:
    # Line 1171
    li	$ra,0x80ad
    beq	$a0,$ra,.L0d967b8c
    li	$s5,1
.L0d967894:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967adc
    li	$at,2
    beq	$a0,$at,.L0d967adc
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    b	.L0d9670c0
    move	$a3,$zero
.L0d9678b8:
    # Line 1171
    beq	$a0,$v0,.L0d967b98
    li	$s5,1
.L0d9678c0:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967ae4
    li	$v1,2
    beq	$a0,$v1,.L0d967ae4
    # Line 1213
    li	$s2,3
    li	$s5,1
    li	$s6,1
    b	.L0d9670c0
    move	$a3,$zero
.L0d9678e4:
    # Line 1171
    bne	$a0,$a1,.L0d9676e8
    li	$a1,1
    b	.L0d966fbc
    li	$s5,1
.L0d9678f4:
    bne	$a0,$a2,.L0d967718
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967908:
    li	$a3,0x80af
    bne	$a0,$a3,.L0d967758
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967920:
    li	$a4,0x80af
    bne	$a0,$a4,.L0d967784
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967938:
    bne	$a0,$a5,.L0d9677b0
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d96794c:
    b	.L0d966fbc
    li	$s5,3
.L0d967954:
    # Line 1263
    and	$a7,$a6,$a7
    sll	$t0,$s5,0x2
    or	$a7,$a7,$t0
    # Line 1264
    li	$t0,-225
    and	$a7,$a7,$t0
    ori	$a7,$a7,0x20
    # Line 1265
    li	$t0,-4
    li	$s2,3
    and	$a7,$a7,$t0
    or	$a7,$s4,$a7
    b	.L0d9672f8
    sw	$a7,64($s0)
.L0d967984:
    # Line 1211
    li	$a1,1
.L0d967988:
    li	$s2,3
    li	$s5,1
    b	.L0d966e84
    li	$s6,1
.L0d967998:
    # Line 1213
    b	.L0d9671f4
    move	$a3,$zero
.L0d9679a0:
    # Line 1235
    li	$s5,2
    li	$s6,2
    li	$s4,3
    b	.L0d966d3c
    move	$s2,$zero
.L0d9679b4:
    # Line 1318
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24976
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d96710c
    # Line 1320
    lw	$a5,32($s0)
.L0d9679cc:
    addiu	$t9,$t9,25232
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d96710c
    lw	$a5,32($s0)
.L0d9679e0:
    # Line 1171
    beq	$a0,$ra,.L0d967ba4
    li	$a1,5
.L0d9679e8:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967b68
    li	$a1,5
    li	$at,2
    beq	$a0,$at,.L0d967b64
    # Line 1213
    li	$a1,5
    li	$s2,3
    li	$s5,5
    b	.L0d966d14
    li	$s6,1
.L0d967a10:
    # Line 1171
    beq	$a0,$v0,.L0d967bac
    move	$s5,$zero
.L0d967a18:
    # Line 1211
    lw	$a0,376($s0)
    beq	$a0,$s3,.L0d967b7c
    li	$a1,1
    li	$v1,2
    beq	$a0,$v1,.L0d967b78
    # Line 1213
    li	$a1,1
    li	$s2,3
    move	$s5,$zero
    b	.L0d966d14
    li	$s6,1
.L0d967a40:
    b	.L0d9671f4
    move	$a3,$zero
.L0d967a48:
    b	.L0d9671f4
    move	$a3,$zero
.L0d967a50:
    b	.L0d9671f4
    move	$a3,$zero
.L0d967a58:
    b	.L0d966e7c
    # Line 1211
    li	$s6,1
.L0d967a60:
    # Line 1171
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967a6c:
    # Line 1211
    b	.L0d966e7c
    li	$s6,1
.L0d967a74:
    # Line 1235
    lw	$a0,12($s0)
    bne	$a0,$s4,.L0d967b5c
    li	$s2,3
    beqz	$a3,.L0d967bb4
    # Line 1263
    li	$v0,-29
    # Line 1235
    li	$s2,3
    b	.L0d966d44
    li	$s6,1
.L0d967a94:
    # Line 1171
    li	$a1,0x80af
    bne	$a0,$a1,.L0d967894
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967aac:
    bne	$a0,$a2,.L0d9678c0
    li	$s5,1
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967ac0:
    b	.L0d966fbc
    li	$s5,4
.L0d967ac8:
    # Line 1269
    addiu	$t9,$t9,25232
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d967308
    lw	$v0,32($s0)
.L0d967adc:
    # Line 1213
    b	.L0d9671f4
    move	$a3,$zero
.L0d967ae4:
    b	.L0d9671f4
    move	$a3,$zero
.L0d967aec:
    # Line 1267
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24976
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d967308
    # Line 1269
    lw	$v0,32($s0)
.L0d967b04:
    # Line 1171
    bne	$a0,$ra,.L0d9679e8
    li	$a1,5
    b	.L0d966fbc
    li	$s5,5
.L0d967b14:
    bne	$a0,$at,.L0d967a18
    move	$s5,$zero
    b	.L0d966fbc
    li	$a1,1
.L0d967b24:
    b	.L0d966fbc
    li	$s5,1
.L0d967b2c:
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967b38:
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967b44:
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967b50:
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967b5c:
    # Line 1235
    b	.L0d966d44
    li	$s6,1
.L0d967b64:
    # Line 1211
    li	$a1,5
.L0d967b68:
    li	$s2,3
    li	$s5,5
    b	.L0d966e84
    li	$s6,1
.L0d967b78:
    li	$a1,1
.L0d967b7c:
    li	$s2,3
    move	$s5,$zero
    b	.L0d966e84
    li	$s6,1
.L0d967b8c:
    # Line 1171
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967b98:
    move	$a3,$zero
    b	.L0d966fbc
    move	$a1,$zero
.L0d967ba4:
    b	.L0d966fbc
    li	$s5,5
.L0d967bac:
    b	.L0d966fbc
    li	$a1,1
.L0d967bb4:
    # Line 1263
    and	$v0,$a6,$v0
    sll	$v1,$s5,0x2
    or	$v0,$v0,$v1
    # Line 1264
    li	$v1,-225
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x20
    # Line 1265
    li	$v1,-4
    li	$s2,3
    and	$v0,$v0,$v1
    or	$v0,$s4,$v0
    b	.L0d9672f8
    sw	$v0,64($s0)
.end changeFilter

# Function: changeClamp
# Declared: Line 1345 (Source lines: 1346-1406)
# Address: 0x0d967bf0 - 0x0d967e4c (Size: 604 bytes, Frame: 192)
.ent changeClamp
changeClamp:
    # Line 1346
    addiu	$sp,$sp,-64
    sd	$s1,0($sp)
    # Line 1360
    li	$at,10242
    # Line 1346
    move	$s1,$a0
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 1360
    beq	$a2,$at,.L0d967d5c
    sd	$ra,16($sp)
    li	$v0,10243
    beq	$a2,$v0,.L0d967da0
    li	$v1,0x8072
    beq	$a2,$v1,.L0d967dec
    # Line 1377
    li	$t9,3
    # Line 1360
    li	$a1,-4097
.L0d967c28:
    # Line 1381
    lw	$a0,32($s0)
    dsll32	$a2,$a0,0x7
    bgez	$a2,.L0d967c88
    # Line 1388
    dsll32	$at,$a0,0x9
    # Line 1381
    lw	$a0,4($s1)
    li	$a5,1
    addiu	$a6,$a0,1
    lw	$a3,0($s1)
    li	$a4,16
    sllv	$a5,$a5,$a6
    subu	$a4,$a4,$a5
    and	$a3,$a3,$a4
    beqz	$a3,.L0d967c74
    # Line 1383
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    li	$a1,-4097
    lw	$a0,4($s1)
.L0d967c74:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d967d2c
    nop
.L0d967c80:
    lw	$a0,32($s0)
    # Line 1388
    dsll32	$at,$a0,0x9
.L0d967c88:
    lw	$v0,64($s0)
    and	$v0,$v0,$a1
    bgez	$at,.L0d967d18
    sw	$v0,64($s0)
    # Line 1402
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,26688
    bal subtractTexTableUsage
    move	$a0,$s0
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a2,$v0
    addiu	$t9,$t9,-5536
    move	$a0,$s1
    move	$a1,$s0
    move	$a4,$zero
    bal __glKonGetTexParameter
    lw	$a3,12($s0)
    lw	$ra,32($s0)
    lui	$at,0x100
    and	$ra,$ra,$at
    li	$v1,16
    beqz	$ra,.L0d967d18
    li	$a1,1
    lw	$a0,4($s1)
    addiu	$a2,$a0,1
    lw	$v0,0($s1)
    sllv	$a1,$a1,$a2
    subu	$v1,$v1,$a1
    and	$v0,$v0,$v1
    beqz	$v0,.L0d967d10
    # Line 1404
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$a0,4($s1)
.L0d967d10:
    lw	$ra,376($s0)
    beq	$ra,$a0,.L0d967d44
.L0d967d18:
    ld	$ra,16($sp)
.L0d967d1c:
    # Line 1406
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d967d2c:
    # Line 1383
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d967c80
    li	$a1,-4097
.L0d967d44:
    # Line 1404
    lw	$t9,256($s0)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    b	.L0d967d1c
    ld	$ra,16($sp)
.L0d967d5c:
    # Line 1362
    lbu	$at,401($a1)
    # Line 1363
    li	$v0,2
    # Line 1362
    li	$v1,-4
    # Line 1363
    li	$a0,3
    # Line 1362
    and	$at,$at,$v1
    or	$at,$a3,$at
    # Line 1363
    beq	$a3,$v0,.L0d967e34
    # Line 1362
    sb	$at,401($a1)
    # Line 1363
    beq	$a3,$a0,.L0d967e34
    nop
.L0d967d84:
    # Line 1365
    lw	$a2,68($s0)
    li	$a1,-4097
    sll	$a4,$a3,0xc
    and	$a2,$a2,$a1
    or	$a2,$a2,$a4
    b	.L0d967c28
    sw	$a2,68($s0)
.L0d967da0:
    # Line 1370
    li	$a7,3
    # Line 1372
    li	$t1,-8193
    # Line 1369
    lbu	$a4,401($a1)
    # Line 1370
    li	$a5,2
    # Line 1369
    li	$a6,-13
    and	$a4,$a4,$a6
    sll	$a6,$a3,0x2
    or	$a4,$a4,$a6
    # Line 1370
    beq	$a3,$a5,.L0d967e3c
    # Line 1369
    sb	$a4,401($a1)
    # Line 1370
    beq	$a3,$a7,.L0d967e3c
    nop
.L0d967dd0:
    # Line 1372
    lw	$t0,68($s0)
    # Line 1373
    li	$a1,-4097
    # Line 1372
    and	$t0,$t0,$t1
    sll	$t1,$a3,0xd
    or	$t0,$t0,$t1
    # Line 1373
    b	.L0d967c28
    # Line 1372
    sw	$t0,68($s0)
.L0d967dec:
    # Line 1379
    li	$at,-16385
    # Line 1376
    lbu	$t2,401($a1)
    # Line 1377
    li	$t3,2
    # Line 1376
    li	$t8,-49
    and	$t2,$t2,$t8
    sll	$t8,$a3,0x4
    or	$t2,$t2,$t8
    # Line 1377
    beq	$a3,$t3,.L0d967e44
    # Line 1376
    sb	$t2,401($a1)
    # Line 1377
    beq	$a3,$t9,.L0d967e44
    nop
.L0d967e18:
    # Line 1379
    lw	$ra,68($s0)
    # Line 1380
    li	$a1,-4097
    # Line 1379
    and	$ra,$ra,$at
    sll	$at,$a3,0xe
    or	$ra,$ra,$at
    # Line 1380
    b	.L0d967c28
    # Line 1379
    sw	$ra,68($s0)
.L0d967e34:
    b	.L0d967d84
    # Line 1363
    li	$a3,1
.L0d967e3c:
    b	.L0d967dd0
    # Line 1370
    li	$a3,1
.L0d967e44:
    b	.L0d967e18
    # Line 1377
    li	$a3,1
.end changeClamp

# Function: loadPostTextureScaleBias
# Declared: Line 1412 (Source lines: 1414-1417)
# Address: 0x0d967e50 - 0x0d967e78 (Size: 40 bytes, Frame: 0)
.ent loadPostTextureScaleBias
loadPostTextureScaleBias:
    # Line 1414
    lw	$at,504($a0)
    lw	$v0,500($a0)
    lw	$v1,496($a0)
    li	$a0,237
    sw	$a0,16384($zero)
    sw	$zero,16384($zero)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    # Line 1417
    jr	$ra
    # Line 1414
    sw	$at,16384($zero)
.end loadPostTextureScaleBias

# Function: setShadowRegs
# Declared: Line 1420 (Source lines: 1424-1441)
# Address: 0x0d967e80 - 0x0d967f2c (Size: 172 bytes, Frame: 0)
.ent setShadowRegs
setShadowRegs:
    # Line 1424
    lw	$at,508($a0)
    li	$a2,1
    la	$v0,rdbk_format2
    bne	$a2,$at,.L0d967ec4
    la	$a1,intern_format_arr3
    lw	$a3,28($a0)
    sll	$a3,$a3,0x4
    addu	$a1,$a1,$a3
    lw	$a1,8($a1)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,8($v0)
    li	$v1,13
    beq	$v0,$v1,.L0d967eec
    nop
.L0d967ec4:
    # Line 1435
    sw	$a2,528($a0)
    # Line 1438
    lw	$a6,68($a0)
    li	$a7,-3841
    # Line 1436
    lw	$a4,64($a0)
    li	$a5,-3073
    # Line 1438
    and	$a6,$a6,$a7
    sw	$a6,68($a0)
    # Line 1436
    and	$a4,$a4,$a5
    # Line 1441
    jr	$ra
    # Line 1436
    sw	$a4,64($a0)
.L0d967eec:
    # Line 1427
    lw	$t3,512($a0)
    # Line 1430
    li	$t1,-3073
    # Line 1432
    lw	$t2,68($a0)
    # Line 1427
    xori	$t3,$t3,0x819d
    # Line 1430
    lw	$t0,64($a0)
    # Line 1427
    li	$t8,2
    sltiu	$t3,$t3,1
    # Line 1429
    sw	$zero,528($a0)
    # Line 1432
    ori	$t2,$t2,0xf00
    # Line 1427
    movz	$a2,$t8,$t3
    # Line 1432
    sw	$t2,68($a0)
    # Line 1430
    and	$t0,$t0,$t1
    sll	$t1,$a2,0xa
    or	$t0,$t0,$t1
    # Line 1441
    jr	$ra
    # Line 1430
    sw	$t0,64($a0)
.end setShadowRegs

# Function: changeShadow
# Declared: Line 1444 (Source lines: 1445-1451)
# Address: 0x0d967f30 - 0x0d967fd4 (Size: 164 bytes, Frame: 32)
.ent changeShadow
changeShadow:
    # Line 1447
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 1446
    sw	$zero,516($a1)
    # Line 1445
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 1447
    addiu	$t9,$t9,32384
    # Line 1445
    move	$s1,$a1
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,16($sp)
    # Line 1447
    bal subtractTexTableUsage
    move	$a0,$a1
    lw	$ra,32($s1)
    dsll32	$ra,$ra,0x7
    li	$v0,16
    bgez	$ra,.L0d967fa8
    li	$v1,1
    lw	$a0,4($s0)
    addiu	$a1,$a0,1
    lw	$at,0($s0)
    sllv	$v1,$v1,$a1
    subu	$v0,$v0,$v1
    and	$at,$at,$v0
    beqz	$at,.L0d967fa0
    # Line 1450
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s0
    lw	$a0,4($s0)
.L0d967fa0:
    lw	$ra,376($s1)
    beq	$ra,$a0,.L0d967fbc
.L0d967fa8:
    ld	$ra,16($sp)
.L0d967fac:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 1451
    jr	$ra
    addiu	$sp,$sp,32
.L0d967fbc:
    # Line 1450
    lw	$t9,256($s1)
    move	$a0,$s0
    jal	sub_0d960000
    move	$a1,$s1
    b	.L0d967fac
    ld	$ra,16($sp)
.end changeShadow

# Function: lodBias2Scale
# Declared: Line 1453 (Source lines: 1454-1475)
# Address: 0x0d967fe0 - 0x0d96806c (Size: 140 bytes, Frame: 0)
.ent lodBias2Scale
lodBias2Scale:
    # Line 1454
    mtc1	$zero,$f0
    c.le.s	$f0,$f12
    # Line 1461
    ldc1	$f5,_lit8_3ff0000000000000
    # Line 1465
    lwc1	$f4,_lit_3f800000
    # Line 1454
    bc1f	.L0d96801c
    li	$a1,16
    # Line 1461
    trunc.w.s	$f6,$f12
    cvt.s.w	$f4,$f6
    sub.s	$f4,$f12,$f4
    cvt.d.s	$f4,$f4
    mfc1	$a2,$f6
    add.d	$f4,$f4,$f5
    # Line 1462
    sllv	$a2,$a1,$a2
    b	.L0d96803c
    # Line 1461
    cvt.s.d	$f4,$f4
.L0d96801c:
    # Line 1465
    sub.s	$f7,$f4,$f12
    trunc.w.s	$f7,$f7
    cvt.s.w	$f5,$f7
    neg.s	$f6,$f12
    mfc1	$a2,$f7
    sub.s	$f5,$f5,$f6
    # Line 1466
    srav	$a2,$a1,$a2
    # Line 1465
    add.s	$f4,$f4,$f5
.L0d96803c:
    # Line 1468
    mtc1	$a2,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$a6,$f8
    # Line 1472
    li	$v0,1
    sltiu	$a5,$a6,1
    # Line 1468
    li	$a4,255
    # Line 1472
    movz	$v0,$a6,$a5
    # Line 1468
    slti	$a3,$a6,256
    # Line 1475
    jr	$ra
    movz	$v0,$a4,$a3
.end lodBias2Scale

# Function: changeClipmapParams
# Declared: Line 1487 (Source lines: 1488-1571)
# Address: 0x0d968070 - 0x0d968388 (Size: 792 bytes, Frame: 192)
.ent changeClipmapParams
changeClipmapParams:
    # Line 1488
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    sd	$s0,16($sp)
    sd	$s1,24($sp)
    # Line 1490
    lw	$v0,440($a1)
    # Line 1493
    lw	$at,-15908($gp)
    # Line 1488
    sd	$s7,40($sp)
    # Line 1492
    lw	$s7,436($a1)
    # Line 1488
    sd	$s5,32($sp)
    # Line 1491
    lw	$s5,424($a1)
    # Line 1488
    sd	$s2,8($sp)
    move	$s1,$a0
    # Line 1493
    lw	$s2,432($a1)
    # Line 1488
    move	$s0,$a1
    # Line 1493
    li	$s3,1
    # Line 1488
    sd	$s8,48($sp)
    # Line 1490
    lw	$s8,420($a1)
    # Line 1493
    addiu	$s2,$s2,-1
    # Line 1491
    srav	$s5,$s5,$v0
    sd	$ra,56($sp)
    # Line 1492
    addiu	$s7,$s7,-1
    # Line 1493
    beqz	$at,.L0d968354
    # Line 1490
    srav	$s8,$s8,$v0
.L0d9680cc:
    # Line 1509
    lw	$ra,408($s0)
    sllv	$ra,$s3,$ra
    mtc1	$ra,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,428($s0)
    # lw $t9, -32736($gp) # &sub_0d970000
    mul.s	$f0,$f0,$f1
    addiu	$t9,$t9,-13664
    trunc.w.s	$f0,$f0
    bal __glKonGetTexParameter
    mfc1	$a0,$f0
    # Line 1510
    lw	$a4,440($s0)
    addu	$a1,$a4,$s2
    sllv	$a6,$s3,$a1
    mtc1	$a6,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f12,-16504($gp)
    mul.s	$f11,$f11,$f12
    subu	$at,$s2,$v0
    trunc.w.s	$f11,$f11
    addu	$at,$a4,$at
    addiu	$at,$at,5
    mfc1	$a0,$f11
    sllv	$at,$s3,$at
    addiu	$at,$at,-1
    addiu	$a0,$a0,-1
    slt	$v1,$at,$a0
    # Line 1524
    lw	$a5,412($s0)
    addiu	$v0,$a1,-1
    movz	$at,$a0,$v1
    sllv	$v0,$s3,$v0
    addiu	$v1,$at,1
    subu	$a0,$a5,$v0
    sra	$v1,$v1,0x1
    daddu	$a0,$a0,$v1
    dmtc1	$a0,$f10
    # Line 1525
    lw	$a1,416($s0)
    # Line 1524
    cvt.s.l	$f10,$f10
    # Line 1525
    subu	$v0,$a1,$v0
    daddu	$v0,$v0,$v1
    dmtc1	$v0,$f9
    # Line 1524
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    nor	$at,$at,$zero
    # Line 1525
    cvt.s.l	$f9,$f9
    # Line 1524
    and	$a0,$at,$a0
    mtc1	$a0,$f8
    # Line 1542
    sll	$t3,$s5,0x10
    # Line 1525
    trunc.w.s	$f9,$f9
    # Line 1546
    sll	$t8,$s2,0x4
    # Line 1517
    subu	$v1,$s7,$s2
    # Line 1524
    cvt.s.w	$f8,$f8
    # Line 1547
    lw	$ra,84($s0)
    # Line 1525
    mtc1	$zero,$f5
    # Line 1517
    subu	$v1,$v1,$a4
    # Line 1525
    mfc1	$v0,$f9
    # Line 1539
    li	$t0,-32768
    lw	$a3,96($s0)
    # Line 1517
    sllv	$v1,$s3,$v1
    # Line 1540
    lw	$t2,100($s0)
    # Line 1517
    mtc1	$v1,$f7
    # Line 1525
    and	$at,$at,$v0
    # Line 1541
    lw	$t9,88($s0)
    # Line 1539
    and	$a3,$a3,$t0
    # Line 1525
    mtc1	$at,$f4
    c.le.s	$f8,$f5
    # Line 1540
    and	$t2,$t2,$t0
    # Line 1525
    sllv	$a0,$s3,$s7
    ld	$s7,40($sp)
    # Line 1529
    mov.s	$f6,$f5
    # Line 1517
    cvt.s.w	$f7,$f7
    # Line 1545
    lw	$at,68($s0)
    # Line 1530
    subu	$v1,$a0,$a6
    # Line 1529
    subu	$v0,$a0,$a6
    # Line 1533
    li	$a6,-8
    # Line 1525
    bc1t	.L0d968214
    cvt.s.w	$f4,$f4
    # Line 1529
    mtc1	$v0,$f6
    cvt.s.w	$f6,$f6
    c.le.s $f6,$f8
    ld	$s7,40($sp)
    movf.s	$f6,$f8,$fcc1
.L0d968214:
    # Line 1545
    li	$v0,-16
    # Line 1551
    mtc1	$a0,$f8
    # Line 1529
    c.le.s $f4,$f5
    # Line 1547
    and	$ra,$ra,$v0
    # Line 1545
    and	$at,$at,$v0
    # Line 1539
    trunc.w.s	$f10,$f6
    # Line 1541
    lui	$v0,0xffff
    # Line 1545
    or	$at,$s2,$at
    # Line 1541
    and	$t9,$t9,$v0
    # Line 1547
    or	$ra,$s2,$ra
    # Line 1529
    bc1t .L0d968254
    # Line 1551
    cvt.s.w	$f8,$f8
    # Line 1530
    mtc1	$v1,$f5
    cvt.s.w	$f5,$f5
    c.le.s $f5,$f4
    movf.s	$f5,$f4,$fcc3
.L0d968254:
    # Line 1539
    mfc1	$a7,$f10
    # Line 1552
    div.s	$f9,$f5,$f8
    # Line 1551
    div.s	$f8,$f6,$f8
    # Line 1546
    li	$v1,-241
    # Line 1533
    trunc.w.s	$f11,$f5
    # Line 1541
    or	$t9,$s8,$t9
    # Line 1546
    and	$at,$at,$v1
    # Line 1550
    swc1	$f7,444($s0)
    # Line 1548
    and	$ra,$ra,$v1
    # Line 1542
    andi	$t9,$t9,0xffff
    # Line 1533
    mfc1	$t1,$f11
    # Line 1542
    or	$t3,$t3,$t9
    sw	$t3,88($s0)
    # Line 1548
    or	$ra,$t8,$ra
    sw	$ra,84($s0)
    # Line 1546
    or	$t8,$t8,$at
    # Line 1533
    subu	$t1,$a1,$t1
    # Line 1546
    sw	$t8,68($s0)
    # Line 1539
    subu	$a7,$a5,$a7
    # Line 1533
    srav	$t1,$t1,$a4
    # Line 1539
    srav	$a7,$a7,$a4
    # Line 1552
    lw	$a2,32($s0)
    # Line 1533
    and	$t1,$a6,$t1
    # Line 1539
    and	$a6,$a6,$a7
    # Line 1540
    or	$t1,$t1,$t2
    sw	$t1,100($s0)
    # Line 1552
    dsll32	$a2,$a2,0x7
    # Line 1539
    or	$a3,$a3,$a6
    sw	$a3,96($s0)
    # Line 1552
    neg.s	$f9,$f9
    # Line 1551
    neg.s	$f8,$f8
    # Line 1552
    swc1	$f9,452($s0)
    li	$v1,16
    bgez	$a2,.L0d968318
    # Line 1551
    swc1	$f8,448($s0)
    # Line 1552
    lw	$v0,4($s1)
    addu	$a0,$v0,$s3
    lw	$at,0($s1)
    sllv	$a0,$s3,$a0
    subu	$v1,$v1,$a0
    and	$at,$at,$v1
    beqz	$at,.L0d968310
    # Line 1555
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s1
    lw	$v0,4($s1)
.L0d968310:
    lw	$ra,376($s0)
    beq	$ra,$v0,.L0d96833c
.L0d968318:
    ld	$s3,0($sp)
.L0d96831c:
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    ld	$ra,56($sp)
    ld	$s1,24($sp)
    ld	$s5,32($sp)
    ld	$s8,48($sp)
    # Line 1571
    jr	$ra
    addiu	$sp,$sp,64
.L0d96833c:
    # Line 1555
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d96831c
    ld	$s3,0($sp)
.L0d968354:
    # Line 1502
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-4864
    bnez	$v0,.L0d968374
    # Line 1504
    nop	# was lw $t9, -18500($gp) # &atof
.L0d96836c:
    b	.L0d9680cc
    # Line 1505
    sw	$s3,-15908($gp)
.L0d968374:
    # Line 1504
    jal	atof
    move	$a0,$v0
    cvt.s.d	$f9,$f0
    b	.L0d96836c
    swc1	$f9,-16504($gp)
.end changeClipmapParams

# Function: __glKonTexParameter
# Declared: Line 1580 (Source lines: 1581-2101)
# Address: 0x0d968390 - 0x0d969b9c (Size: 6156 bytes, Frame: 48)
.globl __glKonTexParameter
.ent __glKonTexParameter
__glKonTexParameter:
    # Line 1581
    move	$a7,$a0
    # Line 1582
    lw	$t0,4112($zero)
    # Line 1581
    addiu	$sp,$sp,-48
    lui	$at,0x13
    sd	$s0,16($sp)
    # Line 1589
    sll	$s0,$a1,0x2
    sd	$gp,24($sp)
    # Line 1581
    addiu	$at,$at,-29624
    # Line 1589
    addu	$s0,$a0,$s0
    # Line 1581
    addu	$gp,$t9,$at
    # Line 1589
    beqz	$a4,.L0d9685fc
    lw	$s0,32($s0)
    # Line 1592
    lwc1	$f12,0($a3)
    trunc.w.s	$f0,$f12
    mfc1	$v0,$f0
.L0d9683cc:
    # Line 1600
    li	$a0,0x813c
    slt	$t8,$a2,$a0
    bnez	$t8,.L0d96850c
    slt	$t9,$a0,$a2
    bnez	$t9,.L0d968544
    li	$a0,0x8179
    bltz	$v0,.L0d968e8c
    move	$a0,$v0
    # Line 1739
    lw	$at,376($s0)
    beqz	$at,.L0d96887c
    sd	$v0,8($sp)
    lw	$v1,344($s0)
    beq	$v1,$v0,.L0d96887c
    nop
    # Line 1746
    lw	$a1,32($s0)
    dsll32	$a1,$a1,0xc
    bgez	$a1,.L0d968444
    li	$a0,1
    lw	$a2,36($s0)
    sllv	$a3,$a0,$v0
    and	$a2,$a2,$a3
    beqz	$a2,.L0d968444
    nop
    lw	$a0,12($s0)
    beqz	$a0,.L0d968a94
    # Line 1752
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 1746
    li	$a4,2
    sd	$a7,0($sp)
    beq	$a0,$a4,.L0d968a90
    sd	$ra,32($sp)
.L0d968444:
    sd	$ra,32($sp)
    # Line 1769
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a5,8($sp)
    sd	$a7,0($sp)
    addiu	$t9,$t9,25536
    # Line 1768
    sw	$a5,344($s0)
    # Line 1769
    move	$a1,$s0
    bal subtractTexTableUsage
    ld	$a0,0($sp)
    ld	$ra,32($sp)
.L0d96846c:
    lw	$v0,16($s0)
    li	$at,1
    beq	$v0,$at,.L0d9692ac
    # Line 1773
    li	$v1,2
    beq	$v0,$v1,.L0d969388
    # Line 1775
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d968484:
    lw	$a0,32($s0)
    dsll32	$a0,$a0,0x7
    bltz	$a0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1775
    lw	$a2,20($s0)
    li	$a3,1
    lw	$a4,24($s0)
    addu	$a2,$a2,$a3
    lw	$a1,36($s0)
    sllv	$a2,$a3,$a2
    sllv	$a3,$a3,$a4
    nor	$a1,$a1,$zero
    subu	$a2,$a2,$a3
    and	$a1,$a1,$a2
    bnez	$a1,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1779
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s0
    beqz	$v0,.L0d9685e8
    ld	$ra,32($sp)
    # Line 1781
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1780
    lw	$at,32($s0)
    lui	$v0,0xfffe
    # Line 1781
    addiu	$t9,$t9,-6112
    move	$a1,$s0
    ld	$a0,0($sp)
    # Line 1780
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    # Line 1781
    bal __glKonGetTexParameter
    # Line 1780
    sw	$at,32($s0)
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d96850c:
    # Line 1600
    li	$a0,0x809a
    slt	$at,$a2,$a0
    bnez	$at,.L0d968580
    slt	$v1,$a0,$a2
    bnez	$v1,.L0d968660
    # Line 1701
    negu	$a0,$v0
    bltz	$a0,.L0d968530
    slti	$a1,$a0,5
    bnez	$a1,.L0d9687e4
.L0d968530:
    # Line 1702
    li	$v0,-2
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d968544:
    # Line 1600
    slt	$a5,$a2,$a0
    bnez	$a5,.L0d96860c
    slt	$a6,$a0,$a2
    bnez	$a6,.L0d9689bc
    # Line 1982
    ldc1	$f8,_lit8_3fe0000000000000
    mtc1	$zero,$f6
    li	$t0,1
    lwc1	$f9,_lit_437f0000
    li	$a1,24
    move	$v0,$s0
    lwc1	$f7,_lit_3f800000
    addiu	$a2,$a3,16
    li	$a0,3
    b	.L0d968778
    sw	$zero,504($s0)
.L0d968580:
    # Line 1600
    slti	$t1,$a2,10242
    bnez	$t1,.L0d9686a0
    slti	$t2,$a2,10243
    bnez	$t2,.L0d968700
    li	$a0,0x8066
    slt	$t3,$a2,$a0
    bnez	$t3,.L0d9686fc
    li	$a6,10243
    slt	$t8,$a0,$a2
    bnez	$t8,.L0d9690d8
    lwc1	$f5,_lit_3f800000
    c.lt.s	$f5,$f12
    bc1f	.L0d96909c
    mov.s	$f4,$f12
    mov.s	$f12,$f5
    b	.L0d9690ac
    sd	$ra,32($sp)
.L0d9685c4:
    # Line 1997
    lw	$t9,500($s0)
    lw	$at,496($s0)
    lw	$v0,376($s0)
    li	$v1,471
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$t9,16384($zero)
    sw	$a7,16384($zero)
.L0d9685e8:
    # Line 2101
    move	$v0,$zero
.L0d9685ec:
    ld	$s0,16($sp)
    # Line 2098
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9685fc:
    # Line 1596
    lw	$v0,0($a3)
    # Line 1597
    mtc1	$v0,$f12
    b	.L0d9683cc
    cvt.s.w	$f12,$f12
.L0d96860c:
    # Line 1600
    li	$a0,0x8173
    slt	$a5,$a2,$a0
    bnez	$a5,.L0d968898
    slt	$a6,$a0,$a2
    bnez	$a6,.L0d968aec
    li	$a0,0x8175
    beqz	$a4,.L0d969494
    nop
    # Line 1894
    bltz	$v0,.L0d96864c
    sd	$v0,8($sp)
    lwc1	$f13,4($a3)
    dmtc1	$zero,$f14
    cvt.d.s	$f13,$f13
    c.lt.d $f13,$f14
    bc1f .L0d968ea0
    nop
.L0d96864c:
    # Line 1895
    li	$v0,-2
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d968660:
    # Line 1600
    li	$a0,0x8125
    slt	$t1,$a2,$a0
    bnez	$t1,.L0d9688ec
    slt	$t2,$a0,$a2
    bnez	$t2,.L0d968b80
    nop
    # Line 1858
    bltz	$v0,.L0d96868c
    sd	$v0,8($sp)
    slti	$t8,$v0,4
    bnez	$t8,.L0d968d00
    nop
.L0d96868c:
    # Line 1859
    li	$v0,-2
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9686a0:
    # Line 1600
    slti	$t9,$a2,10240
    bnez	$t9,.L0d968928
    slti	$at,$a2,10241
    beqz	$at,.L0d968bf4
    li	$a3,10241
    lw	$v1,360($s0)
    beq	$v1,$v0,.L0d96922c
    sd	$v0,8($sp)
    # Line 1678
    li	$a0,0x8099
    slt	$a1,$v0,$a0
    bnez	$a1,.L0d96913c
    slt	$a2,$a0,$v0
    beqz	$a2,.L0d969184
    li	$a0,0x80af
    slt	$a3,$v0,$a0
    bnez	$a3,.L0d9698b8
    slt	$a4,$a0,$v0
    beqz	$a4,.L0d969184
    li	$a5,0x8146
    bne	$v0,$a5,.L0d96915c
    # Line 1691
    li	$v0,-1
    b	.L0d969188
    # Line 1694
    lw	$a4,376($s0)
.L0d9686fc:
    # Line 1600
    bne	$a2,$a6,.L0d968998
.L0d968700:
    # Line 1604
    li	$t0,10497
.L0d968704:
    beq	$v0,$t0,.L0d9690f8
    sd	$v0,8($sp)
    li	$t2,0x812f
    beq	$v0,$t2,.L0d9691b4
    # Line 1611
    li	$a3,1
    # Line 1604
    li	$t3,10496
    beq	$v0,$t3,.L0d969220
    li	$t8,0x812d
    beq	$v0,$t8,.L0d9690ec
    # Line 1623
    li	$v0,-1
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d96873c:
    # Line 1991
    lwc1	$f14,464($v0)
    c.eq.s $f14,$f7
    bc1f .L0d968758
    nop
    # Line 1993
    lw	$t9,496($s0)
    and	$t9,$t9,$at
    sw	$t9,496($s0)
.L0d968758:
    # Line 1994
    sll	$t1,$t1,0x0
    # Line 1983
    addiu	$v0,$v0,4
    # Line 1994
    lw	$a7,504($s0)
    sllv	$t1,$t1,$a1
    # Line 1983
    addiu	$a1,$a1,-8
    # Line 1994
    or	$a7,$a7,$t1
    # Line 1983
    beq	$a3,$a2,.L0d9685c4
    # Line 1994
    sw	$a7,504($s0)
.L0d968778:
    # Line 1982
    beqz	$a4,.L0d9689ac
    nop
    # Line 1984
    lwc1	$f5,0($a3)
.L0d968784:
    c.lt.s $f5,$f6
    # Line 1991
    sllv	$t3,$t0,$a0
    # Line 1993
    sllv	$at,$t0,$a0
    # Line 1983
    addiu	$a0,$a0,-1
    # Line 1987
    mov.s	$f4,$f5
    # Line 1983
    addiu	$a3,$a3,4
    # Line 1984
    bc1f .L0d9687ac
    # Line 1993
    nor	$at,$at,$zero
    # Line 1984
    b	.L0d9687b4
    mtc1	$zero,$f4
.L0d9687ac:
    # Line 1987
    c.lt.s $f7,$f5
    movt.s	$f4,$f7,$fcc4
.L0d9687b4:
    # Line 1994
    mul.s	$f15,$f4,$f9
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f8
    # Line 1989
    c.eq.s $f4,$f6
    # Line 1994
    trunc.l.d	$f15,$f15
    # Line 1989
    swc1	$f4,480($v0)
    bc1t .L0d96873c
    # Line 1994
    dmfc1	$t1,$f15
    # Line 1991
    lw	$t2,496($s0)
    or	$t2,$t2,$t3
    b	.L0d968758
    sw	$t2,496($s0)
.L0d9687e4:
    # Line 1704
    lw	$t9,32($s0)
    lui	$at,0xff1f
    lw	$t8,64($s0)
    ori	$at,$at,0xffff
    dsll32	$t9,$t9,0x7
    and	$t8,$t8,$at
    sll	$at,$a0,0x15
    or	$t8,$t8,$at
    bgez	$t9,.L0d9685e8
    sw	$t8,64($s0)
    lw	$v0,4($a7)
    li	$a1,1
    addiu	$a2,$v0,1
    lw	$v1,0($a7)
    li	$a0,16
    sllv	$a1,$a1,$a2
    subu	$a0,$a0,$a1
    and	$v1,$v1,$a0
    beqz	$v1,.L0d968854
    # Line 1705
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,20832
    sd	$ra,32($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$a7,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($a7)
.L0d968854:
    lw	$at,376($s0)
    bne	$at,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1705
    lw	$t9,256($s0)
    move	$a0,$a7
    sd	$ra,32($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d96887c:
    # Line 2098
    ld	$gp,24($sp)
    # Line 1742
    ld	$v0,8($sp)
    sw	$v0,344($s0)
    # Line 1743
    move	$v0,$zero
    # Line 2098
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d968898:
    # Line 1600
    li	$a0,0x8171
    slt	$v1,$a2,$a0
    bnez	$v1,.L0d968b10
    slt	$a1,$a0,$a2
    bnez	$a1,.L0d969048
    li	$t3,0x8172
    beqz	$a4,.L0d969900
    nop
    # Line 1872
    bltz	$v0,.L0d9688d8
    sd	$v0,8($sp)
    lwc1	$f16,4($a3)
    dmtc1	$zero,$f17
    cvt.d.s	$f16,$f16
    c.lt.d $f16,$f17
    bc1f .L0d9692c4
    nop
.L0d9688d8:
    # Line 1873
    li	$v0,-2
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9688ec:
    # Line 1600
    li	$a0,0x80bf
    slt	$a3,$a2,$a0
    bnez	$a3,.L0d968bc8
    li	$at,0x809b
    slt	$a4,$a0,$a2
    bnez	$a4,.L0d969078
    li	$t8,0x8124
    dmtc1	$zero,$f17
    cvt.d.s	$f5,$f12
    c.lt.d $f5,$f17
    bc1f .L0d969240
    # Line 2056
    mtc1	$zero,$f18
    mtc1	$zero,$f12
    b	.L0d969260
    swc1	$f18,520($s0)
.L0d968928:
    # Line 1600
    li	$a5,4100
    bne	$a2,$a5,.L0d96899c
    # Line 2098
    li	$v0,-1
    sd	$a7,0($sp)
    # Line 1600
    addiu	$a1,$s0,384
    beqz	$a4,.L0d9697c0
    sd	$ra,32($sp)
    # Line 1832
    # lw $t9, -28000($gp) # &__glClampColorf
    move	$a0,$t0
    jal	__glClampColorf
    move	$a2,$a3
    ld	$ra,32($sp)
.L0d968958:
    # Line 1836
    lw	$a7,32($s0)
    lui	$a6,0x140
    and	$a7,$a7,$a6
    bne	$a6,$a7,.L0d9685e8
    # Line 1835
    sw	$zero,52($s0)
    # Line 1836
    lbu	$t0,400($s0)
    bnez	$t0,.L0d9685e8
    # Line 1840
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,0($sp)
    addiu	$t9,$t9,-11280
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,3868($a0)
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968994:
    # Line 1600
    beq	$a2,$at,.L0d969678
.L0d968998:
    # Line 2098
    li	$v0,-1
.L0d96899c:
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9689ac:
    # Line 1984
    lw	$v1,0($a3)
    mtc1	$v1,$f5
    b	.L0d968784
    cvt.s.w	$f5,$f5
.L0d9689bc:
    # Line 1600
    li	$a0,0x8190
    slt	$a1,$a2,$a0
    bnez	$a1,.L0d968dc4
    nop
    slt	$a3,$a0,$a2
    bnez	$a3,.L0d9691bc
    li	$a0,0x819b
    beqz	$a4,.L0d969990
    nop
    # Line 2088
    swc1	$f12,540($s0)
    sd	$a7,0($sp)
    sd	$ra,32($sp)
.L0d9689ec:
    # Line 2093
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32736
    bal subtractTexTableUsage
    nop
    lw	$v1,32($s0)
    lw	$a0,76($s0)
    lui	$a1,0xff00
    ori	$a1,$a1,0xffff
    dsll32	$v1,$v1,0x7
    ld	$ra,32($sp)
    sll	$at,$v0,0x10
    and	$v0,$a0,$a1
    or	$at,$at,$v0
    bgez	$v1,.L0d9685e8
    sw	$at,76($s0)
    ld	$a2,0($sp)
    lw	$v0,4($a2)
    li	$a4,1
    addiu	$a5,$v0,1
    li	$a3,16
    lw	$a2,0($a2)
    sllv	$a4,$a4,$a5
    subu	$a3,$a3,$a4
    and	$a2,$a2,$a3
    beqz	$a2,.L0d968a6c
    # Line 2094
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$v0,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($v0)
.L0d968a6c:
    lw	$v1,376($s0)
    bne	$v1,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 2094
    lw	$t9,256($s0)
    ld	$a0,0($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968a90:
    # Line 1752
    # lw $t9, -32740($gp) # &sub_0d960000
.L0d968a94:
    sd	$a7,0($sp)
    addiu	$t9,$t9,24272
    sd	$ra,32($sp)
    move	$a0,$s0
    bal subtractTexTableUsage
    ld	$a1,8($sp)
    beqz	$v0,.L0d968f5c
    nop
    # Line 1754
    lw	$a3,12($s0)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a6,8($sp)
    move	$a1,$s0
    lw	$a4,32($s0)
    addiu	$t9,$t9,-5536
    ld	$a0,0($sp)
    lui	$a5,0x40
    move	$a2,$a6
    # Line 1753
    sw	$a6,344($s0)
    # Line 1754
    bal __glKonGetTexParameter
    and	$a4,$a4,$a5
    b	.L0d96846c
    ld	$ra,32($sp)
.L0d968aec:
    # Line 1600
    slt	$at,$a2,$a0
    bnez	$at,.L0d968fa8
    slt	$v1,$a0,$a2
    bnez	$v1,.L0d9693bc
    li	$at,0x8176
    bgez	$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1932
    b	.L0d9685ec
    li	$v0,-2
.L0d968b10:
    # Line 1600
    li	$a0,0x813d
    bne	$a2,$a0,.L0d968998
    nop
    bltz	$v0,.L0d969aa8
    sd	$v0,8($sp)
    # Line 1792
    lw	$a2,376($s0)
    beqz	$a2,.L0d9698f4
    # Line 1795
    ld	$a4,8($sp)
    # Line 1792
    lw	$a0,348($s0)
    beq	$a0,$v0,.L0d9698f4
    # Line 1795
    ld	$a4,8($sp)
    # Line 1796
    slt	$a3,$a0,$v0
    sd	$a7,0($sp)
    beqz	$a3,.L0d9693d4
    sd	$ra,32($sp)
    # Line 1801
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,25536
    ld	$a0,0($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    # Line 1800
    sw	$v0,348($s0)
    # Line 1802
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    ld	$a0,0($sp)
    bal __glKonGetTexParameter
    move	$a1,$s0
    b	.L0d9693f0
    ld	$ra,32($sp)
.L0d968b80:
    # Line 1600
    li	$v0,0x813b
    slt	$at,$a2,$v0
    bnez	$at,.L0d968994
    li	$at,0x813a
    slt	$v1,$v0,$a2
    bnez	$v1,.L0d96899c
    # Line 2098
    li	$v0,-1
    # Line 1730
    lw	$a0,376($s0)
    beqz	$a0,.L0d9685e8
    swc1	$f12,356($s0)
    # Line 1732
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,25536
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968bc8:
    # Line 1600
    bne	$a2,$at,.L0d968998
    # Line 1709
    li	$v1,260
    beq	$v0,$v1,.L0d9696a4
    sd	$v0,8($sp)
    li	$a1,8448
    beq	$v0,$a1,.L0d9696a4
    # Line 1715
    li	$v0,-2
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d968bf4:
    # Line 1600
    bne	$a2,$a3,.L0d968998
    nop
    lw	$a0,364($s0)
    beq	$a0,$v0,.L0d9698d8
    sd	$v0,8($sp)
    # Line 1634
    slti	$a3,$v0,9987
    bnez	$a3,.L0d96978c
    slti	$a5,$v0,9988
    beqz	$a5,.L0d969944
    li	$a3,0x8170
.L0d968c1c:
    # Line 1652
    beq	$a0,$a3,.L0d9699b0
    li	$a6,0x844d
    beq	$a0,$a6,.L0d9699b0
    li	$t0,0x844e
    beq	$a0,$t0,.L0d9699b4
    # Line 1656
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 1652
    li	$t1,0x844f
    beq	$a0,$t1,.L0d9699b4
    # Line 1656
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d968c40:
    # Line 1658
    lw	$t3,376($s0)
    ld	$t2,8($sp)
    beqz	$t3,.L0d968c74
    sw	$t2,364($s0)
    # Line 1660
    # lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,26816
    sd	$ra,32($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    ld	$a7,0($sp)
.L0d968c74:
    lw	$at,32($s0)
    dsll32	$at,$at,0x7
    bltz	$at,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1660
    lw	$v1,20($s0)
    li	$a0,1
    lw	$a1,24($s0)
    addu	$v1,$v1,$a0
    lw	$v0,36($s0)
    sllv	$v1,$a0,$v1
    sllv	$a0,$a0,$a1
    nor	$v0,$v0,$zero
    subu	$v1,$v1,$a0
    and	$v0,$v0,$v1
    bnez	$v0,.L0d9685e8
    sd	$a7,0($sp)
    # Line 1664
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    sd	$ra,32($sp)
    bal __glKonGetTexParameter
    move	$a0,$s0
    beqz	$v0,.L0d9685e8
    ld	$ra,32($sp)
    # Line 1666
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1665
    lw	$at,32($s0)
    lui	$v0,0xfffe
    # Line 1666
    addiu	$t9,$t9,-6112
    move	$a1,$s0
    ld	$a0,0($sp)
    # Line 1665
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    # Line 1666
    bal __glKonGetTexParameter
    # Line 1665
    sw	$at,32($s0)
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968d00:
    # Line 1862
    lw	$a0,28($s0)
    la	$v1,intern_format_arr3
    sll	$a0,$a0,0x4
    lui	$a2,0xfcff
    lw	$at,64($s0)
    addu	$v1,$v1,$a0
    ori	$a2,$a2,0xffff
    li	$a1,3
    lw	$v1,12($v1)
    subu	$a1,$a1,$v0
    li	$a0,4
    # Line 1861
    sw	$v0,460($s0)
    # Line 1862
    and	$at,$at,$a2
    sll	$a1,$a1,0x18
    or	$at,$at,$a1
    bne	$v1,$a0,.L0d9685e8
    sw	$at,64($s0)
    lw	$a1,32($s0)
    dsll32	$a1,$a1,0x7
    bgez	$a1,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1862
    lw	$v0,4($a7)
    li	$a4,1
    addiu	$a5,$v0,1
    lw	$a2,0($a7)
    li	$a3,16
    sllv	$a4,$a4,$a5
    subu	$a3,$a3,$a4
    and	$a2,$a2,$a3
    beqz	$a2,.L0d968d9c
    # Line 1865
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,20832
    sd	$ra,32($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$a7,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($a7)
.L0d968d9c:
    lw	$at,376($s0)
    bne	$at,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1865
    lw	$t9,256($s0)
    move	$a0,$a7
    sd	$ra,32($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968dc4:
    # Line 1600
    li	$a0,0x818e
    slt	$v1,$a2,$a0
    bnez	$v1,.L0d9691ec
    slt	$a1,$a0,$a2
    bnez	$a1,.L0d9695b8
    li	$a3,0x818f
    beqz	$a4,.L0d969a90
    nop
    # Line 2068
    swc1	$f12,532($s0)
    sd	$a7,0($sp)
    sd	$ra,32($sp)
.L0d968df0:
    # Line 2072
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32736
    bal subtractTexTableUsage
    nop
    lw	$v1,32($s0)
    lw	$at,76($s0)
    li	$a0,-256
    dsll32	$v1,$v1,0x7
    ld	$ra,32($sp)
    and	$at,$at,$a0
    or	$at,$v0,$at
    bgez	$v1,.L0d9685e8
    sw	$at,76($s0)
    ld	$a0,0($sp)
    lw	$v0,4($a0)
    li	$a2,1
    addiu	$a3,$v0,1
    li	$a1,16
    lw	$a0,0($a0)
    sllv	$a2,$a2,$a3
    subu	$a1,$a1,$a2
    and	$a0,$a0,$a1
    beqz	$a0,.L0d968e68
    # Line 2073
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$v0,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($v0)
.L0d968e68:
    lw	$v1,376($s0)
    bne	$v1,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 2073
    lw	$t9,256($s0)
    ld	$a0,0($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968e8c:
    # Line 1737
    li	$v0,-2
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d968ea0:
    # Line 1896
    sw	$v0,420($s0)
    # Line 1897
    lwc1	$f6,4($a3)
    trunc.w.s	$f6,$f6
    swc1	$f6,424($s0)
    mfc1	$a0,$f6
.L0d968eb4:
    # Line 1902
    lw	$a1,436($s0)
    bnez	$a1,.L0d96911c
    # Line 1905
    ld	$a4,8($sp)
    lw	$a5,88($s0)
    # Line 1906
    lw	$a3,32($s0)
    # Line 1905
    lui	$a6,0xffff
    and	$a5,$a5,$a6
    # Line 1906
    dsll32	$a3,$a3,0x7
    # Line 1905
    or	$a4,$a4,$a5
    # Line 1906
    sll	$a2,$a0,0x10
    andi	$a4,$a4,0xffff
    or	$a2,$a2,$a4
    bgez	$a3,.L0d9685e8
    sw	$a2,88($s0)
    lw	$v0,4($a7)
    li	$t2,1
    addiu	$t3,$v0,1
    lw	$t0,0($a7)
    li	$t1,16
    sllv	$t2,$t2,$t3
    subu	$t1,$t1,$t2
    and	$t0,$t0,$t1
    beqz	$t0,.L0d968f34
    # Line 1907
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,20832
    sd	$ra,32($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$a7,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($a7)
.L0d968f34:
    lw	$at,376($s0)
    bne	$at,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1907
    lw	$t9,256($s0)
    move	$a0,$a7
    sd	$ra,32($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d968f5c:
    # Line 1754
    lw	$v1,344($s0)
    ld	$v0,8($sp)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0d96939c
    # Line 1764
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 1759
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,0($sp)
    addiu	$t9,$t9,25536
    ld	$a2,8($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    # Line 1758
    sw	$a2,344($s0)
    # Line 1760
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    ld	$a0,0($sp)
    bal __glKonGetTexParameter
    move	$a1,$s0
    b	.L0d96846c
    ld	$ra,32($sp)
.L0d968fa8:
    # Line 1600
    li	$at,0x8174
    bne	$a2,$at,.L0d968998
    nop
    beqz	$a4,.L0d969a38
    nop
    # Line 1947
    lwc1	$f8,8($a3)
    # Line 1946
    lwc1	$f7,4($a3)
    # Line 1947
    trunc.w.s	$f8,$f8
    # Line 1946
    trunc.w.s	$f7,$f7
    # Line 1947
    mfc1	$a4,$f8
    # Line 1946
    mfc1	$t0,$f7
.L0d968fd4:
    # Line 1954
    addu	$v1,$v0,$t0
    slt	$v1,$a4,$v1
    bnez	$v1,.L0d9697ac
    sd	$v0,8($sp)
    bltz	$v0,.L0d9697b0
    # Line 1960
    li	$v0,-2
    # Line 1954
    blez	$t0,.L0d9697b0
    # Line 1960
    li	$v0,-2
    # Line 1954
    blez	$a4,.L0d9697ac
    slti	$a2,$t0,17
    beqz	$a2,.L0d9697b0
    # Line 1960
    li	$v0,-2
    # Line 1954
    slti	$a3,$a4,33
    beqz	$a3,.L0d9697b0
    # Line 1960
    li	$v0,-2
    # Line 1963
    lw	$a5,32($s0)
    dsll32	$a5,$a5,0xc
    bgez	$a5,.L0d96902c
    # Line 1965
    li	$t1,2
    # Line 1963
    lw	$a6,436($s0)
    bne	$a6,$a4,.L0d969b28
    # Line 1965
    li	$t1,2
.L0d96902c:
    beq	$a1,$t1,.L0d969b58
    sd	$a7,0($sp)
    # Line 1976
    sw	$t0,432($s0)
    # Line 1975
    sw	$a4,436($s0)
    ld	$t2,8($sp)
    b	.L0d9685e8
    # Line 1974
    sw	$t2,440($s0)
.L0d969048:
    # Line 1600
    bne	$a2,$t3,.L0d968998
    mtc1	$zero,$f9
    c.lt.s	$f12,$f9
    bc1t	.L0d9699a8
    mov.s	$f4,$f12
    # Line 1915
    ldc1	$f10,_lit8_3ff0000000000000
    cvt.d.s	$f5,$f12
    c.le.d $f10,$f5
    bc1f .L0d9696d4
    # Line 1919
    ldc1	$f19,_lit8_4090000000000000
    # Line 1915
    b	.L0d9696e4
    li	$v0,1023
.L0d969078:
    # Line 1600
    bne	$a2,$t8,.L0d968998
    nop
    # Line 1844
    bltz	$v0,.L0d969094
    sd	$v0,8($sp)
    slti	$at,$v0,2
    bnez	$at,.L0d9697d8
    nop
.L0d969094:
    # Line 1845
    b	.L0d9685ec
    li	$v0,-2
.L0d96909c:
    # Line 1823
    mtc1	$zero,$f12
    c.lt.s $f4,$f12
    sd	$ra,32($sp)
    movf.s	$f12,$f4,$fcc2
.L0d9690ac:
    # Line 1827
    lwc1	$f11,_lit_40000000
    mul.s	$f11,$f12,$f11
    # lw $t9, -31600($gp) # &__glKonTexUpdatePriority
    trunc.w.s	$f11,$f11
    # Line 1826
    swc1	$f12,328($s0)
    # Line 1827
    move	$a1,$s0
    lw	$a0,3868($a7)
    jal	__glKonTexUpdatePriority
    mfc1	$a2,$f11
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d9690d8:
    # Line 1600
    li	$v1,0x8072
    bne	$a2,$v1,.L0d968998
    nop
    b	.L0d968704
    # Line 1604
    li	$t0,10497
.L0d9690ec:
    # Line 1620
    li	$a3,3
    b	.L0d969100
    sd	$ra,32($sp)
.L0d9690f8:
    # Line 1606
    move	$a3,$zero
    sd	$ra,32($sp)
.L0d969100:
    # Line 1626
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,31728
    move	$a0,$a7
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d96911c:
    # Line 1909
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-32656
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d96913c:
    # Line 1678
    li	$a0,0x8097
    slt	$at,$v0,$a0
    bnez	$at,.L0d96916c
    slt	$v1,$a0,$v0
    beqz	$v1,.L0d969184
    li	$a0,0x8098
    beq	$v0,$a0,.L0d969184
    # Line 1691
    li	$v0,-1
.L0d96915c:
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d96916c:
    # Line 1678
    slti	$a1,$v0,9729
    bnez	$a1,.L0d9698e0
    li	$a3,9728
    slti	$a2,$v0,9730
    beqz	$a2,.L0d96915c
    # Line 1691
    li	$v0,-1
.L0d969184:
    # Line 1694
    lw	$a4,376($s0)
.L0d969188:
    ld	$a3,8($sp)
    beqz	$a4,.L0d9685e8
    sw	$a3,360($s0)
    # Line 1696
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,26816
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d9691b4:
    # Line 1611
    b	.L0d969100
    sd	$ra,32($sp)
.L0d9691bc:
    # Line 1600
    slt	$at,$a2,$a0
    bnez	$at,.L0d969590
    slt	$v1,$a0,$a2
    bnez	$v1,.L0d968998
    # Line 2038
    li	$a0,0x819d
    beq	$v0,$a0,.L0d969a4c
    sd	$v0,8($sp)
    li	$a0,0x819c
    beq	$v0,$a0,.L0d969a44
    nop
    # Line 2048
    b	.L0d9685ec
    li	$v0,-1
.L0d9691ec:
    # Line 1600
    li	$a1,0x817a
    bne	$a2,$a1,.L0d96899c
    # Line 2098
    li	$v0,-1
    # Line 2003
    ldc1	$f8,_lit8_3fe0000000000000
    mtc1	$zero,$f6
    lwc1	$f9,_lit_437f0000
    li	$a1,24
    move	$v0,$s0
    lwc1	$f7,_lit_3f800000
    addiu	$a2,$a3,16
    li	$a0,3
    b	.L0d969518
    sw	$zero,500($s0)
.L0d969220:
    # Line 1615
    li	$a3,2
    b	.L0d969100
    sd	$ra,32($sp)
.L0d96922c:
    # Line 1676
    move	$v0,$zero
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d969240:
    # Line 2056
    ldc1	$f13,_lit8_3ff0000000000000
    c.lt.d $f13,$f5
    bc1f .L0d96925c
    # Line 2058
    lwc1	$f14,_lit_3f800000
    lwc1	$f12,_lit_3f800000
    b	.L0d969260
    swc1	$f14,520($s0)
.L0d96925c:
    # Line 2060
    swc1	$f12,520($s0)
.L0d969260:
    # Line 2061
    lwc1	$f15,_lit_427c0000
    mul.s	$f15,$f12,$f15
    # Line 2062
    lw	$a0,376($s0)
    # Line 2061
    trunc.l.s	$f15,$f15
    # Line 2062
    li	$a3,1
    # Line 2061
    dmfc1	$a2,$f15
    # Line 2062
    beq	$a0,$a3,.L0d96928c
    # Line 2061
    sw	$a2,524($s0)
    # Line 2062
    li	$a4,2
    bne	$a0,$a4,.L0d9685ec
    # Line 2101
    move	$v0,$zero
.L0d96928c:
    # Line 2063
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32560
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d9692ac:
    # Line 1773
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24976
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d968484
    ld	$ra,32($sp)
.L0d9692c4:
    # Line 1874
    sw	$v0,412($s0)
    # Line 1875
    lwc1	$f16,4($a3)
    trunc.w.s	$f16,$f16
    swc1	$f16,416($s0)
    mfc1	$a0,$f16
.L0d9692d8:
    # Line 1880
    lw	$at,436($s0)
    bnez	$at,.L0d969478
    # Line 1888
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 1884
    lw	$a3,100($s0)
    lw	$v1,32($s0)
    # Line 1883
    li	$a2,-32768
    lw	$a1,96($s0)
    ld	$v0,8($sp)
    # Line 1884
    and	$a3,$a3,$a2
    dsll32	$v1,$v1,0x7
    # Line 1883
    and	$a1,$a1,$a2
    # Line 1884
    or	$a3,$a0,$a3
    sw	$a3,100($s0)
    # Line 1883
    or	$v0,$v0,$a1
    # Line 1884
    bgez	$v1,.L0d9685e8
    # Line 1883
    sw	$v0,96($s0)
    # Line 1884
    lw	$v0,4($a7)
    li	$a6,1
    addiu	$t0,$v0,1
    lw	$a4,0($a7)
    li	$a5,16
    sllv	$a6,$a6,$t0
    subu	$a5,$a5,$a6
    and	$a4,$a4,$a5
    beqz	$a4,.L0d969360
    # Line 1886
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,20832
    sd	$ra,32($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$a7,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($a7)
.L0d969360:
    lw	$at,376($s0)
    bne	$at,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1886
    lw	$t9,256($s0)
    move	$a0,$a7
    sd	$ra,32($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969388:
    # Line 1775
    addiu	$t9,$t9,25232
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d968484
    ld	$ra,32($sp)
.L0d96939c:
    # Line 1764
    ld	$a0,0($sp)
    addiu	$t9,$t9,25536
    ld	$at,8($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    # Line 1763
    sw	$at,344($s0)
    b	.L0d96846c
    ld	$ra,32($sp)
.L0d9693bc:
    # Line 1600
    bne	$a2,$at,.L0d968998
    nop
    bgez	$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1937
    b	.L0d9685ec
    li	$v0,-2
.L0d9693d4:
    # Line 1806
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,25536
    ld	$a0,0($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    # Line 1805
    sw	$v0,348($s0)
    ld	$ra,32($sp)
.L0d9693f0:
    # Line 1806
    lw	$at,32($s0)
    dsll32	$at,$at,0x7
    bltz	$at,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1806
    lw	$v1,20($s0)
    li	$a0,1
    addu	$v1,$v1,$a0
    lw	$a1,24($s0)
    lw	$v0,36($s0)
    sllv	$v1,$a0,$v1
    sllv	$a0,$a0,$a1
    nor	$v0,$v0,$zero
    subu	$v1,$v1,$a0
    and	$v0,$v0,$v1
    bnez	$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1811
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s0
    beqz	$v0,.L0d9685e8
    ld	$ra,32($sp)
    # Line 1813
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1812
    lw	$at,32($s0)
    lui	$v0,0xfffe
    # Line 1813
    addiu	$t9,$t9,-6112
    move	$a1,$s0
    ld	$a0,0($sp)
    # Line 1812
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    # Line 1813
    bal __glKonGetTexParameter
    # Line 1812
    sw	$at,32($s0)
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969478:
    # Line 1888
    addiu	$t9,$t9,-32656
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969494:
    # Line 1899
    bltz	$v0,.L0d969a88
    sd	$v0,8($sp)
    lw	$v1,4($a3)
    bltz	$v1,.L0d969a88
    nop
    # Line 1901
    sw	$v0,420($s0)
    # Line 1902
    lw	$a0,4($a3)
    b	.L0d968eb4
    sw	$a0,424($s0)
.L0d9694b8:
    # Line 2012
    lwc1	$f17,480($v0)
    c.eq.s $f17,$f6
    bc1f .L0d9694dc
    # Line 2014
    li	$a6,1
    lw	$a5,496($s0)
    sllv	$a6,$a6,$a0
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,496($s0)
.L0d9694dc:
    # Line 2015
    mul.s	$f18,$f4,$f9
    cvt.d.s	$f18,$f18
    add.d	$f18,$f18,$f8
    trunc.l.d	$f18,$f18
    dmfc1	$t0,$f18
    # Line 2004
    addiu	$v0,$v0,4
    addiu	$a0,$a0,-1
    addiu	$a3,$a3,4
    # Line 2015
    sll	$t0,$t0,0x0
    lw	$a7,500($s0)
    sllv	$t0,$t0,$a1
    # Line 2004
    addiu	$a1,$a1,-8
    # Line 2015
    or	$a7,$a7,$t0
    # Line 2004
    beq	$a3,$a2,.L0d969568
    # Line 2015
    sw	$a7,500($s0)
.L0d969518:
    # Line 2003
    beqz	$a4,.L0d9698a8
    nop
    # Line 2005
    lwc1	$f5,0($a3)
.L0d969524:
    c.lt.s $f5,$f6
    bc1f .L0d969538
    nop
    b	.L0d969544
    mtc1	$zero,$f4
.L0d969538:
    # Line 2008
    c.lt.s $f7,$f5
    mov.s	$f4,$f5
    movt.s	$f4,$f7,$fcc6
.L0d969544:
    # Line 2010
    c.eq.s $f4,$f7
    bc1t .L0d9694b8
    swc1	$f4,464($v0)
    # Line 2012
    lw	$t1,496($s0)
    li	$t2,1
    sllv	$t2,$t2,$a0
    or	$t1,$t1,$t2
    b	.L0d9694dc
    sw	$t1,496($s0)
.L0d969568:
    # Line 2018
    lw	$t3,504($s0)
    lw	$t8,496($s0)
    lw	$t9,376($s0)
    li	$at,471
    sw	$at,16384($zero)
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    sw	$a7,16384($zero)
    # Line 2021
    b	.L0d9685e8
    # Line 2018
    sw	$t3,16384($zero)
.L0d969590:
    # Line 1600
    li	$v1,0x819a
    bne	$a2,$v1,.L0d968998
    nop
    # Line 2024
    beqz	$v0,.L0d969ab0
    sd	$v0,8($sp)
    li	$a1,1
    beq	$v0,$a1,.L0d969ab0
    nop
    # Line 2030
    b	.L0d9685ec
    li	$v0,-1
.L0d9695b8:
    # Line 1600
    bne	$a2,$a3,.L0d968998
    nop
    beqz	$a4,.L0d969b30
    nop
    # Line 2078
    swc1	$f12,536($s0)
    sd	$a7,0($sp)
    sd	$ra,32($sp)
.L0d9695d4:
    # Line 2082
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32736
    bal subtractTexTableUsage
    nop
    lw	$v1,32($s0)
    lw	$at,76($s0)
    lui	$a0,0xffff
    ori	$a0,$a0,0xff
    dsll32	$v1,$v1,0x7
    ld	$ra,32($sp)
    sll	$v0,$v0,0x8
    and	$at,$at,$a0
    or	$at,$at,$v0
    bgez	$v1,.L0d9685e8
    sw	$at,76($s0)
    ld	$a1,0($sp)
    lw	$v0,4($a1)
    li	$a3,1
    addiu	$a4,$v0,1
    li	$a2,16
    lw	$a1,0($a1)
    sllv	$a3,$a3,$a4
    subu	$a2,$a2,$a3
    and	$a1,$a1,$a2
    beqz	$a1,.L0d969654
    # Line 2083
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$v0,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($v0)
.L0d969654:
    lw	$v1,376($s0)
    bne	$v1,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 2083
    lw	$t9,256($s0)
    ld	$a0,0($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969678:
    # Line 1724
    lw	$a0,376($s0)
    beqz	$a0,.L0d9685e8
    swc1	$f12,352($s0)
    # Line 1726
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,25536
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d9696a4:
    # Line 1718
    lw	$v0,16($s0)
    li	$v1,1
    ld	$at,8($sp)
    bne	$v0,$v1,.L0d9685e8
    sw	$at,372($s0)
    # Line 1720
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24976
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a0,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d9696d4:
    # Line 1919
    mul.d	$f19,$f5,$f19
    trunc.w.d	$f19,$f19
    mfc1	$v0,$f19
    andi	$v0,$v0,0x3ff
.L0d9696e4:
    # Line 1922
    lw	$a0,436($s0)
    lui	$a1,0xffc0
    lw	$v1,104($s0)
    ori	$a1,$a1,0xfff
    # Line 1921
    swc1	$f4,428($s0)
    # Line 1922
    and	$v1,$v1,$a1
    sll	$a1,$v0,0xc
    or	$v1,$v1,$a1
    bnez	$a0,.L0d969924
    sw	$v1,104($s0)
    lw	$a2,32($s0)
    dsll32	$a2,$a2,0x7
    bgez	$a2,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1922
    lw	$v0,4($a7)
    li	$a5,1
    addiu	$a6,$v0,1
    lw	$a3,0($a7)
    li	$a4,16
    sllv	$a5,$a5,$a6
    subu	$a4,$a4,$a5
    and	$a3,$a3,$a4
    beqz	$a3,.L0d969764
    # Line 1924
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,20832
    sd	$ra,32($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$a7,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($a7)
.L0d969764:
    lw	$at,376($s0)
    bne	$at,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1924
    lw	$t9,256($s0)
    move	$a0,$a7
    sd	$ra,32($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d96978c:
    # Line 1634
    slti	$v1,$v0,9984
    bnez	$v1,.L0d969964
    slti	$a1,$v0,9729
    slti	$a1,$v0,9985
    beqz	$a1,.L0d9699f8
    slti	$a1,$v0,9986
    b	.L0d968c1c
    li	$a3,0x8170
.L0d9697ac:
    # Line 1960
    li	$v0,-2
.L0d9697b0:
    # Line 2098
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9697c0:
    # Line 1834
    # lw $t9, -27988($gp) # &__glClampColori
    move	$a0,$t0
    jal	__glClampColori
    move	$a2,$a3
    b	.L0d968958
    ld	$ra,32($sp)
.L0d9697d8:
    # Line 1850
    lw	$a1,28($s0)
    la	$a0,intern_format_arr3
    sll	$a1,$a1,0x4
    li	$a3,2
    # Line 1848
    lw	$a2,64($s0)
    # Line 1850
    addu	$a0,$a0,$a1
    # Line 1848
    lui	$a4,0x200
    lui	$a6,0xfcff
    # Line 1850
    lw	$a0,12($a0)
    # Line 1848
    sltiu	$a5,$v0,1
    ori	$a6,$a6,0xffff
    # Line 1847
    sw	$v0,456($s0)
    # Line 1848
    movz	$a4,$zero,$a5
    and	$a2,$a2,$a6
    or	$a2,$a2,$a4
    # Line 1850
    beq	$a0,$a3,.L0d969828
    # Line 1848
    sw	$a2,64($s0)
    # Line 1850
    li	$a2,3
    bne	$a0,$a2,.L0d9685ec
    # Line 2101
    move	$v0,$zero
.L0d969828:
    # Line 1850
    lw	$a3,32($s0)
    dsll32	$a3,$a3,0x7
    bgez	$a3,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1850
    lw	$v0,4($a7)
    li	$a6,1
    addiu	$t0,$v0,1
    lw	$a4,0($a7)
    li	$a5,16
    sllv	$a6,$a6,$t0
    subu	$a5,$a5,$a6
    and	$a4,$a4,$a5
    beqz	$a4,.L0d969880
    # Line 1852
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    sd	$a7,0($sp)
    addiu	$t9,$t9,20832
    sd	$ra,32($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,0($sp)
    ld	$a7,0($sp)
    ld	$ra,32($sp)
    lw	$v0,4($a7)
.L0d969880:
    lw	$at,376($s0)
    bne	$at,$v0,.L0d9685ec
    # Line 2101
    move	$v0,$zero
    # Line 1852
    lw	$t9,256($s0)
    move	$a0,$a7
    sd	$ra,32($sp)
    jal	sub_0d960000
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d9698a8:
    # Line 2005
    lw	$v1,0($a3)
    mtc1	$v1,$f5
    b	.L0d969524
    cvt.s.w	$f5,$f5
.L0d9698b8:
    # Line 1678
    li	$a0,0x80ae
    slt	$a1,$v0,$a0
    bnez	$a1,.L0d96997c
    slt	$a2,$a0,$v0
    beqz	$a2,.L0d969184
    nop
    b	.L0d96915c
    # Line 1691
    li	$v0,-1
.L0d9698d8:
    # Line 1632
    b	.L0d9685ec
    move	$v0,$zero
.L0d9698e0:
    # Line 1678
    bne	$v0,$a3,.L0d96915c
    # Line 1691
    li	$v0,-1
    b	.L0d969188
    # Line 1694
    lw	$a4,376($s0)
    # Line 1795
    ld	$a4,8($sp)
.L0d9698f4:
    # Line 1796
    move	$v0,$zero
    b	.L0d9685ec
    # Line 1795
    sw	$a4,348($s0)
.L0d969900:
    # Line 1877
    bltz	$v0,.L0d969b20
    sd	$v0,8($sp)
    lw	$a6,4($a3)
    bltz	$a6,.L0d969b20
    nop
    # Line 1879
    sw	$v0,412($s0)
    # Line 1880
    lw	$a0,4($a3)
    b	.L0d9692d8
    sw	$a0,416($s0)
.L0d969924:
    # Line 1926
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-32656
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969944:
    # Line 1634
    li	$a3,0x844d
    slt	$at,$v0,$a3
    bnez	$at,.L0d9699d8
    slt	$v1,$a3,$v0
    bnez	$v1,.L0d969af0
    li	$a3,0x844f
    b	.L0d968c1c
    li	$a3,0x8170
.L0d969964:
    bnez	$a1,.L0d969a24
    slti	$a2,$v0,9730
    beqz	$a2,.L0d969a1c
    nop
    b	.L0d968c1c
    li	$a3,0x8170
.L0d96997c:
    # Line 1678
    li	$a3,0x80ad
    bne	$v0,$a3,.L0d96915c
    # Line 1691
    li	$v0,-1
    b	.L0d969188
    # Line 1694
    lw	$a4,376($s0)
.L0d969990:
    # Line 2090
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    sd	$a7,0($sp)
    sd	$ra,32($sp)
    b	.L0d9689ec
    swc1	$f12,540($s0)
.L0d9699a8:
    # Line 1915
    b	.L0d9685ec
    li	$v0,-2
.L0d9699b0:
    # Line 1656
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d9699b4:
    addiu	$t9,$t9,-23616
    sd	$a7,0($sp)
    move	$a0,$s0
    sd	$ra,32($sp)
    bal __glKonGetTexParameter
    move	$a1,$zero
    ld	$ra,32($sp)
    b	.L0d968c40
    ld	$a7,0($sp)
.L0d9699d8:
    # Line 1634
    li	$a3,0x8170
    slt	$at,$v0,$a3
    bnez	$at,.L0d969a10
    slt	$v1,$a3,$v0
    beqz	$v1,.L0d968c1c
    nop
    b	.L0d969a1c
    nop
.L0d9699f8:
    bnez	$a1,.L0d969b10
    li	$a1,9985
    beqz	$a3,.L0d969a1c
    nop
    b	.L0d968c1c
    li	$a3,0x8170
.L0d969a10:
    li	$a2,0x8146
    beq	$v0,$a2,.L0d968c1c
    nop
.L0d969a1c:
    # Line 1649
    b	.L0d9685ec
    li	$v0,-1
.L0d969a24:
    # Line 1634
    li	$a3,9728
    bne	$v0,$a3,.L0d969a1c
    nop
    b	.L0d968c1c
    li	$a3,0x8170
.L0d969a38:
    # Line 1951
    lw	$a4,8($a3)
    b	.L0d968fd4
    # Line 1950
    lw	$t0,4($a3)
.L0d969a44:
    # Line 2046
    b	.L0d969a50
    # Line 2045
    sw	$a0,512($s0)
.L0d969a4c:
    # Line 2041
    sw	$a0,512($s0)
.L0d969a50:
    # Line 2050
    lw	$a0,376($s0)
    li	$a4,1
    beq	$a0,$a4,.L0d969a68
    li	$a5,2
    bne	$a0,$a5,.L0d9685ec
    # Line 2101
    move	$v0,$zero
.L0d969a68:
    # Line 2051
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32560
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969a88:
    # Line 1900
    b	.L0d9685ec
    li	$v0,-2
.L0d969a90:
    # Line 2070
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    sd	$a7,0($sp)
    sd	$ra,32($sp)
    b	.L0d968df0
    swc1	$f12,532($s0)
.L0d969aa8:
    # Line 1790
    b	.L0d9685ec
    li	$v0,-2
.L0d969ab0:
    # Line 2032
    lw	$a0,376($s0)
    li	$v0,1
    ld	$at,8($sp)
    beq	$a0,$v0,.L0d969ad0
    # Line 2027
    sw	$at,508($s0)
    # Line 2032
    li	$v1,2
    bne	$a0,$v1,.L0d9685ec
    # Line 2101
    move	$v0,$zero
.L0d969ad0:
    # Line 2033
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32560
    move	$a0,$a7
    sd	$ra,32($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.L0d969af0:
    # Line 1634
    slt	$at,$v0,$a3
    bnez	$at,.L0d969b48
    li	$a2,0x844e
    slt	$v1,$a3,$v0
    bnez	$v1,.L0d969a1c
    nop
    b	.L0d968c1c
    li	$a3,0x8170
.L0d969b10:
    bne	$v0,$a1,.L0d969a1c
    nop
    b	.L0d968c1c
    li	$a3,0x8170
.L0d969b20:
    # Line 1878
    b	.L0d9685ec
    li	$v0,-2
.L0d969b28:
    # Line 1965
    b	.L0d9685ec
    move	$v0,$zero
.L0d969b30:
    # Line 2080
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    sd	$a7,0($sp)
    sd	$ra,32($sp)
    b	.L0d9695d4
    swc1	$f12,536($s0)
.L0d969b48:
    # Line 1634
    bne	$v0,$a2,.L0d969a1c
    nop
    b	.L0d968c1c
    li	$a3,0x8170
.L0d969b58:
    # Line 1970
    sw	$t0,432($s0)
    # Line 1969
    sw	$a4,436($s0)
    # Line 1971
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,0($sp)
    sd	$ra,32($sp)
    addiu	$t9,$t9,25536
    ld	$a3,8($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    # Line 1968
    sw	$a3,440($s0)
    # Line 1972
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-32656
    ld	$a0,0($sp)
    bal subtractTexTableUsage
    move	$a1,$s0
    b	.L0d9685e8
    ld	$ra,32($sp)
.end __glKonTexParameter

# Function: __glKonGetTexParameter
# Declared: Line 2110 (Source lines: 2111-2316)
# Address: 0x0d969ba0 - 0x0d96a200 (Size: 1632 bytes, Frame: 48)
.globl __glKonGetTexParameter
.ent __glKonGetTexParameter
__glKonGetTexParameter:
    # Line 2111
    addiu	$sp,$sp,-48
    # Line 2119
    sll	$a6,$a1,0x2
    # Line 2124
    li	$a7,0x813b
    # Line 2111
    lui	$at,0x12
    # Line 2124
    slt	$v0,$a2,$a7
    sd	$gp,8($sp)
    # Line 2111
    addiu	$at,$at,29752
    # Line 2119
    addu	$a6,$a0,$a6
    lw	$a6,32($a6)
    # Line 2124
    bnez	$v0,.L0d969bf8
    # Line 2111
    addu	$gp,$t9,$at
    # Line 2124
    slt	$t0,$a7,$a2
    bnez	$t0,.L0d969c30
    li	$a5,0x8176
    # Line 2166
    lwc1	$f4,356($a6)
.L0d969bdc:
    # Line 2126
    beqz	$a4,.L0d969ce8
    nop
    # Line 2312
    swc1	$f4,0($a3)
.L0d969be8:
    # Line 2316
    move	$v0,$zero
.L0d969bec:
    # Line 2306
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d969bf8:
    # Line 2124
    li	$a1,0x809a
    slt	$t1,$a2,$a1
    bnez	$t1,.L0d969c4c
    slti	$at,$a2,10243
    slt	$t2,$a1,$a2
    bnez	$t2,.L0d969ca8
    li	$a1,0x80bf
    # Line 2146
    lw	$t3,64($a6)
    sra	$t3,$t3,0x15
    andi	$t3,$t3,0x7
    mtc1	$t3,$f4
    cvt.s.w	$f4,$f4
    b	.L0d969bdc
    neg.s	$f4,$f4
.L0d969c30:
    # Line 2124
    slt	$t8,$a2,$a5
    bnez	$t8,.L0d969c88
    slt	$t9,$a5,$a2
    bnez	$t9,.L0d969cf4
    li	$a1,0x818f
    b	.L0d969bdc
    lwc1	$f4,0($sp)
.L0d969c4c:
    bnez	$at,.L0d969cc4
    slti	$a1,$a2,10241
    slti	$v0,$a2,10244
    beqz	$v0,.L0d969d90
    li	$a1,0x8067
    # Line 2130
    lbu	$a0,401($a6)
    sra	$a0,$a0,0x2
    la	$v1,int_clamp_to_ext_clamp
    andi	$a0,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    mtc1	$v1,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969c88:
    # Line 2124
    li	$a5,0x8172
    slt	$a7,$a2,$a5
    bnez	$a7,.L0d969d10
    slt	$t0,$a5,$a2
    bnez	$t0,.L0d969e50
    li	$a1,0x8174
    # Line 2233
    b	.L0d969bdc
    lwc1	$f4,428($a6)
.L0d969ca8:
    # Line 2124
    slt	$t1,$a2,$a1
    bnez	$t1,.L0d969d64
    slt	$t2,$a1,$a2
    bnez	$t2,.L0d969ec8
    li	$a1,0x8125
    # Line 2292
    b	.L0d969bdc
    lwc1	$f4,520($a6)
.L0d969cc4:
    # Line 2124
    bnez	$a1,.L0d969ddc
    slti	$t9,$a2,10240
    slti	$t3,$a2,10242
    beqz	$t3,.L0d969f30
    li	$a1,10242
    # Line 2138
    lw	$t8,364($a6)
    mtc1	$t8,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969ce8:
    # Line 2314
    trunc.w.s	$f5,$f4
    b	.L0d969be8
    swc1	$f5,0($a3)
.L0d969cf4:
    # Line 2124
    slt	$t9,$a2,$a1
    bnez	$t9,.L0d969dfc
    slt	$at,$a1,$a2
    bnez	$at,.L0d969f90
    li	$a1,0x819a
    # Line 2299
    b	.L0d969bdc
    lwc1	$f4,536($a6)
.L0d969d10:
    # Line 2124
    li	$a5,0x8147
    slt	$v0,$a2,$a5
    bnez	$v0,.L0d969e9c
    slt	$v1,$a5,$a2
    bnez	$v1,.L0d96a040
    li	$a5,0x8171
    # Line 2277
    li	$a0,1
    beq	$a1,$a0,.L0d96a128
    li	$a2,2
    beq	$a1,$a2,.L0d96a128
    # Line 2278
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$a3,16($sp)
    sd	$a4,24($sp)
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
    ld	$a4,24($sp)
    ld	$a3,16($sp)
    b	.L0d969bdc
    lwc1	$f4,0($sp)
.L0d969d64:
    # Line 2124
    li	$a1,0x809c
    slt	$a5,$a2,$a1
    bnez	$a5,.L0d969ef0
    slt	$a7,$a1,$a2
    bnez	$a7,.L0d96a0a8
    li	$t2,0x80b0
    # Line 2154
    lw	$t0,304($a6)
    lw	$t0,8($t0)
    mtc1	$t0,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969d90:
    # Line 2124
    slt	$t1,$a2,$a1
    bnez	$t1,.L0d969f1c
    slt	$t2,$a1,$a2
    bnez	$t2,.L0d96a0c4
    li	$t8,0x8072
    # Line 2182
    lw	$t8,20($a6)
    li	$t9,1
    addu	$t8,$t8,$t9
    lw	$at,24($a6)
    lw	$t3,40($a6)
    sllv	$t8,$t9,$t8
    sllv	$t9,$t9,$at
    nor	$t3,$t3,$zero
    subu	$t8,$t8,$t9
    and	$t3,$t3,$t8
    sltiu	$t3,$t3,1
    mtc1	$t3,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969ddc:
    # Line 2124
    bnez	$t9,.L0d969f5c
    li	$a7,4100
    beqz	$a1,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2142
    lw	$at,360($a6)
    mtc1	$at,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969dfc:
    # Line 2124
    li	$a1,0x817a
    slt	$v0,$a2,$a1
    bnez	$v0,.L0d969fbc
    slt	$v1,$a1,$a2
    bnez	$v1,.L0d96a150
    li	$a5,0x818e
    move	$a1,$a3
    beqz	$a4,.L0d96a160
    lwc1	$f4,464($a6)
    # Line 2271
    swc1	$f4,0($a3)
.L0d969e24:
    # Line 2124
    beqz	$a4,.L0d96a16c
    lwc1	$f4,468($a6)
    # Line 2271
    swc1	$f4,4($a1)
.L0d969e30:
    # Line 2124
    beqz	$a4,.L0d96a178
    lwc1	$f4,472($a6)
    # Line 2271
    swc1	$f4,8($a1)
.L0d969e3c:
    # Line 2124
    beqz	$a4,.L0d96a184
    lwc1	$f4,476($a6)
    # Line 2271
    swc1	$f4,12($a1)
.L0d969e48:
    b	.L0d969bec
    # Line 2316
    move	$v0,$zero
.L0d969e50:
    # Line 2124
    slt	$a0,$a2,$a1
    bnez	$a0,.L0d96a004
    slt	$a5,$a1,$a2
    bnez	$a5,.L0d96a108
    li	$v1,0x8175
    beqz	$a4,.L0d96a1c0
    lw	$a1,440($a6)
    # Line 2248
    mtc1	$a1,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,0($a3)
    # Line 2249
    lw	$t0,432($a6)
    mtc1	$t0,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,4($a3)
    # Line 2250
    lw	$a7,436($a6)
    mtc1	$a7,$f5
    cvt.s.w	$f5,$f5
    b	.L0d969be8
    swc1	$f5,8($a3)
.L0d969e9c:
    # Line 2124
    li	$a1,0x813d
    slt	$t1,$a2,$a1
    bnez	$t1,.L0d96a078
    li	$a5,0x813c
    slt	$t2,$a1,$a2
    bnez	$t2,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2174
    lw	$t3,348($a6)
    mtc1	$t3,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969ec8:
    # Line 2124
    slt	$t8,$a2,$a1
    bnez	$t8,.L0d96a090
    li	$t0,0x8124
    slt	$t9,$a1,$a2
    bnez	$t9,.L0d96a118
    li	$a0,0x813a
    # Line 2207
    lw	$at,460($a6)
    mtc1	$at,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969ef0:
    # Line 2124
    li	$v0,0x809b
    bne	$a2,$v0,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2150
    lw	$v1,372($a6)
    mtc1	$v1,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
    # Line 2306
    li	$v0,-1
.L0d969f10:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d969f1c:
    # Line 2124
    li	$a0,0x8066
    bne	$a2,$a0,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2178
    b	.L0d969bdc
    lwc1	$f4,328($a6)
.L0d969f30:
    # Line 2124
    bne	$a2,$a1,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2126
    lbu	$a5,401($a6)
    la	$a2,int_clamp_to_ext_clamp
    andi	$a5,$a5,0x3
    sll	$a5,$a5,0x2
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
    mtc1	$a2,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d969f5c:
    # Line 2124
    bne	$a2,$a7,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2124
    beqz	$a4,.L0d969bec
    # Line 2316
    move	$v0,$zero
    # Line 2188
    lwc1	$f8,384($a6)
    swc1	$f8,0($a3)
    # Line 2189
    lwc1	$f7,388($a6)
    swc1	$f7,4($a3)
    # Line 2190
    lwc1	$f6,392($a6)
    swc1	$f6,8($a3)
    # Line 2191
    lwc1	$f5,396($a6)
    b	.L0d969be8
    swc1	$f5,12($a3)
.L0d969f90:
    # Line 2124
    slt	$t0,$a2,$a1
    bnez	$t0,.L0d96a0f4
    slt	$t1,$a1,$a2
    bnez	$t1,.L0d96a130
    li	$a1,0x819b
    # Line 2284
    lw	$t2,508($a6)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f4
    b	.L0d969bdc
    cvt.s.l	$f4,$f4
.L0d969fbc:
    # Line 2124
    li	$t3,0x8179
    bne	$a2,$t3,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2124
    move	$a1,$a3
    beqz	$a4,.L0d96a190
    lwc1	$f4,480($a6)
    # Line 2262
    swc1	$f4,0($a3)
.L0d969fd8:
    # Line 2124
    beqz	$a4,.L0d96a19c
    lwc1	$f4,484($a6)
    # Line 2262
    swc1	$f4,4($a1)
.L0d969fe4:
    # Line 2124
    beqz	$a4,.L0d96a1a8
    lwc1	$f4,488($a6)
    # Line 2262
    swc1	$f4,8($a1)
.L0d969ff0:
    # Line 2124
    beqz	$a4,.L0d96a1b4
    lwc1	$f4,492($a6)
    # Line 2262
    swc1	$f4,12($a1)
.L0d969ffc:
    b	.L0d969bec
    # Line 2316
    move	$v0,$zero
.L0d96a004:
    # Line 2124
    li	$t8,0x8173
    bne	$a2,$t8,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2124
    lw	$a1,88($a6)
    beqz	$a4,.L0d96a1d8
    andi	$a1,$a1,0xffff
    # Line 2224
    mtc1	$a1,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,0($a3)
    # Line 2225
    lw	$a2,88($a6)
    srl	$a2,$a2,0x10
    dmtc1	$a2,$f5
    cvt.s.l	$f5,$f5
    b	.L0d969be8
    swc1	$f5,4($a3)
.L0d96a040:
    # Line 2124
    bne	$a2,$a5,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2124
    lw	$a1,96($a6)
    beqz	$a4,.L0d96a1ec
    andi	$a1,$a1,0x7fff
    # Line 2213
    mtc1	$a1,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,0($a3)
    # Line 2214
    lw	$a2,100($a6)
    andi	$a2,$a2,0x7fff
    mtc1	$a2,$f7
    cvt.s.w	$f7,$f7
    b	.L0d969be8
    swc1	$f7,4($a3)
.L0d96a078:
    # Line 2124
    bne	$a2,$a5,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2170
    lw	$a7,344($a6)
    mtc1	$a7,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d96a090:
    # Line 2124
    bne	$a2,$t0,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2203
    lw	$t1,456($a6)
    mtc1	$t1,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d96a0a8:
    # Line 2124
    bne	$a2,$t2,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2158
    lw	$t3,308($a6)
    lw	$t3,8($t3)
    mtc1	$t3,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d96a0c4:
    # Line 2124
    bne	$a2,$t8,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2134
    lbu	$at,401($a6)
    sra	$at,$at,0x4
    # lw $t9, -18744($gp) # &int_clamp_to_ext_clamp
    andi	$at,$at,0x3
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    lw	$t9,0($t9)
    mtc1	$t9,$f4
    b	.L0d969bdc
    cvt.s.w	$f4,$f4
.L0d96a0f4:
    # Line 2124
    li	$v0,0x8190
    bne	$a2,$v0,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2302
    b	.L0d969bdc
    lwc1	$f4,540($a6)
.L0d96a108:
    # Line 2124
    bne	$a2,$v1,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2124
    b	.L0d969bdc
    lwc1	$f4,0($sp)
.L0d96a118:
    bne	$a2,$a0,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2162
    b	.L0d969bdc
    lwc1	$f4,352($a6)
.L0d96a128:
    b	.L0d969bdc
    # Line 2280
    lwc1	$f4,_lit_43010000
.L0d96a130:
    # Line 2124
    bne	$a2,$a1,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2288
    lw	$a2,512($a6)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f4
    b	.L0d969bdc
    cvt.s.l	$f4,$f4
.L0d96a150:
    # Line 2124
    bne	$a2,$a5,.L0d969f10
    # Line 2306
    li	$v0,-1
    # Line 2296
    b	.L0d969bdc
    lwc1	$f4,532($a6)
.L0d96a160:
    # Line 2273
    trunc.w.s	$f5,$f4
    b	.L0d969e24
    swc1	$f5,0($a3)
.L0d96a16c:
    trunc.w.s	$f6,$f4
    b	.L0d969e30
    swc1	$f6,4($a1)
.L0d96a178:
    trunc.w.s	$f7,$f4
    b	.L0d969e3c
    swc1	$f7,8($a1)
.L0d96a184:
    trunc.w.s	$f8,$f4
    b	.L0d969e48
    swc1	$f8,12($a1)
.L0d96a190:
    # Line 2264
    trunc.w.s	$f9,$f4
    b	.L0d969fd8
    swc1	$f9,0($a3)
.L0d96a19c:
    trunc.w.s	$f10,$f4
    b	.L0d969fe4
    swc1	$f10,4($a1)
.L0d96a1a8:
    trunc.w.s	$f11,$f4
    b	.L0d969ff0
    swc1	$f11,8($a1)
.L0d96a1b4:
    trunc.w.s	$f12,$f4
    b	.L0d969ffc
    swc1	$f12,12($a1)
.L0d96a1c0:
    # Line 2252
    sw	$a1,0($a3)
    # Line 2253
    lw	$t0,432($a6)
    sw	$t0,4($a3)
    # Line 2254
    lw	$a7,436($a6)
    b	.L0d969be8
    sw	$a7,8($a3)
.L0d96a1d8:
    # Line 2227
    sw	$a1,0($a3)
    # Line 2228
    lw	$t1,88($a6)
    srl	$t1,$t1,0x10
    b	.L0d969be8
    sw	$t1,4($a3)
.L0d96a1ec:
    # Line 2216
    sw	$a1,0($a3)
    # Line 2217
    lw	$t2,100($a6)
    andi	$t2,$t2,0x7fff
    b	.L0d969be8
    sw	$t2,4($a3)
.end __glKonGetTexParameter

# Function: bind2DMipmapTexture
# Declared: Line 2324 (Source lines: 2325-2392)
# Address: 0x0d96a200 - 0x0d96a3bc (Size: 444 bytes, Frame: 32)
.ent bind2DMipmapTexture
bind2DMipmapTexture:
    # Line 2363
    li	$at,262
    lw	$v0,32($a1)
    # Line 2325
    lui	$v1,0x12
    addiu	$sp,$sp,-32
    # Line 2363
    lw	$a3,116($a1)
    # Line 2325
    addiu	$v1,$v1,28120
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 2363
    sra	$a1,$a3,0x18
    li	$a0,3
    andi	$a1,$a1,0xf
    dsll32	$v0,$v0,0xe
    xor	$a0,$a0,$a1
    li	$a1,469
    sltiu	$a0,$a0,1
    sd	$gp,16($sp)
    # Line 2325
    addu	$gp,$t9,$v1
    # Line 2363
    movz	$at,$a1,$a0
    li	$a1,-1
    bgez	$v0,.L0d96a3b4
    sw	$at,16384($zero)
    lw	$a1,272($s0)
    sd	$ra,24($sp)
    lw	$a1,4($a1)
.L0d96a268:
    # Line 2371
    lw	$t8,524($s0)
    lw	$t2,252($s0)
    # Line 2363
    sw	$a1,16384($zero)
    sw	$a3,16384($zero)
    # Line 2371
    lw	$t9,516($s0)
    lw	$v0,84($s0)
    lw	$v1,80($s0)
    lw	$a0,76($s0)
    lw	$a2,72($s0)
    # Line 2363
    lw	$a4,528($s0)
    lw	$a5,68($s0)
    lw	$a6,64($s0)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    # Line 2371
    li	$a3,377
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    lw	$ra,60($t2)
    lw	$at,56($t2)
    lw	$t3,0($t2)
    lw	$v0,52($t2)
    lw	$v1,48($t2)
    lw	$a0,44($t2)
    lw	$a1,40($t2)
    lw	$a2,36($t2)
    lw	$a3,32($t2)
    lw	$a4,28($t2)
    lw	$a5,24($t2)
    lw	$a6,20($t2)
    lw	$a7,16($t2)
    lw	$t0,12($t2)
    lw	$t1,8($t2)
    lw	$t2,4($t2)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    # Line 2386
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 2371
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    # Line 2386
    addiu	$t9,$t9,32336
    # Line 2371
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    # Line 2386
    bal subtractTexTableUsage
    move	$a0,$s0
    lw	$a3,16($s0)
    li	$a7,3
    beq	$a3,$a7,.L0d96a38c
    # Line 2391
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 2388
    lw	$a0,3868($s2)
    li	$a2,0xc074
    # Line 2389
    sll	$a1,$a3,0x2
    # Line 2388
    addu	$a0,$a0,$a2
    # Line 2389
    addu	$a1,$s0,$a1
    lw	$t9,28($a0)
    lw	$a1,300($a1)
    jal	sub_0d960000
    lw	$a1,16($a1)
    # Line 2391
    # lw $t9, -32740($gp) # &sub_0d960000
.L0d96a38c:
    addiu	$t9,$t9,24000
    move	$a1,$s0
    bal subtractTexTableUsage
    lw	$a0,3868($s2)
    ld	$ra,24($sp)
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    # Line 2392
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96a3b4:
    b	.L0d96a268
    sd	$ra,24($sp)
.end bind2DMipmapTexture

# Function: setClipmapRegisters
# Declared: Line 2400 (Source lines: 2414-2421)
# Address: 0x0d96a3c0 - 0x0d96a408 (Size: 72 bytes, Frame: 0)
.ent setClipmapRegisters
setClipmapRegisters:
    # Line 2414
    li	$a2,426
    sw	$a2,16384($zero)
    lw	$at,100($a0)
    lw	$v0,96($a0)
    lw	$v1,92($a0)
    lwc1	$f0,452($a0)
    lwc1	$f1,448($a0)
    lwc1	$f2,444($a0)
    lw	$a0,88($a0)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$a1,16384($zero)
    swc1	$f2,16384($zero)
    swc1	$f1,16384($zero)
    # Line 2421
    jr	$ra
    # Line 2414
    swc1	$f0,16384($zero)
.end setClipmapRegisters

# Function: bind2DClipmapTexture
# Declared: Line 2428 (Source lines: 2429-2448)
# Address: 0x0d96a410 - 0x0d96a520 (Size: 272 bytes, Frame: 32)
.ent bind2DClipmapTexture
bind2DClipmapTexture:
    # Line 2429
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,27592
    sd	$gp,16($sp)
    addu	$gp,$t9,$ra
    # Line 2430
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2429
    sd	$s0,8($sp)
    # Line 2430
    addiu	$t9,$t9,-23616
    # Line 2429
    move	$s0,$a1
    # Line 2430
    lw	$a1,104($a1)
    # Line 2429
    sd	$a0,24($sp)
    # Line 2430
    bal __glKonGetTexParameter
    move	$a0,$s0
    # Line 2435
    lw	$v1,440($s0)
    lw	$at,252($s0)
    andi	$v0,$v1,0x1
    ld	$a0,24($sp)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    beqz	$v0,.L0d96a500
    sw	$at,252($s0)
    # Line 2439
    lw	$a2,64($s0)
    # Line 2440
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a1,$s0
    # Line 2439
    lw	$a3,284($s0)
    lui	$a4,0xefff
    ori	$a4,$a4,0xffff
    # Line 2440
    addiu	$t9,$t9,-24064
    # Line 2439
    sll	$a3,$a3,0x1c
    and	$a2,$a2,$a4
    or	$a2,$a2,$a3
    # Line 2440
    bal __glKonGetTexParameter
    # Line 2439
    sw	$a2,64($s0)
    # Line 2448
    ld	$gp,16($sp)
    # Line 2447
    lw	$t1,440($s0)
    # Line 2441
    lw	$a5,64($s0)
    lui	$a7,0xefff
    ori	$a7,$a7,0xffff
    lw	$a6,284($s0)
    # Line 2447
    lw	$t0,252($s0)
    # Line 2441
    and	$a5,$a5,$a7
    # Line 2448
    ld	$ra,0($sp)
    # Line 2447
    sll	$t1,$t1,0x2
    # Line 2441
    sltiu	$a6,$a6,1
    # Line 2447
    subu	$t0,$t0,$t1
    sw	$t0,252($s0)
    # Line 2441
    sll	$a6,$a6,0x1c
    or	$a5,$a5,$a6
    sw	$a5,64($s0)
    # Line 2448
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96a4e4:
    ld	$gp,16($sp)
    # Line 2447
    sll	$t3,$t3,0x2
    subu	$t2,$t2,$t3
    sw	$t2,252($s0)
    # Line 2448
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96a500:
    # Line 2443
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-24064
    bal __glKonGetTexParameter
    move	$a1,$s0
    # Line 2447
    lw	$t3,440($s0)
    lw	$t2,252($s0)
    b	.L0d96a4e4
    ld	$ra,0($sp)
.end bind2DClipmapTexture

# Function: bindBicubicTexture
# Declared: Line 2455 (Source lines: 2456-2495)
# Address: 0x0d96a520 - 0x0d96a628 (Size: 264 bytes, Frame: 48)
.ent bindBicubicTexture
bindBicubicTexture:
    # Line 2456
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s0,0($sp)
    # Line 2479
    li	$v1,469
    lw	$v0,32($a1)
    # Line 2456
    move	$s0,$a1
    lui	$at,0x12
    sd	$s8,8($sp)
    addiu	$at,$at,27320
    # Line 2457
    lw	$s8,3868($a0)
    # Line 2479
    dsll32	$v0,$v0,0xe
    # Line 2456
    sd	$a0,24($sp)
    # Line 2457
    li	$a0,0xc074
    # Line 2456
    addu	$gp,$t9,$at
    # Line 2479
    sw	$v1,16384($zero)
    bgez	$v0,.L0d96a61c
    # Line 2457
    addu	$s8,$s8,$a0
    # Line 2479
    lw	$a1,272($s0)
    sd	$ra,32($sp)
    lw	$a1,4($a1)
.L0d96a570:
    sw	$a1,16384($zero)
    # Line 2486
    lw	$ra,84($s0)
    lw	$at,72($s0)
    lw	$v0,376($s0)
    # Line 2479
    lw	$a0,528($s0)
    lw	$a4,68($s0)
    lw	$a5,64($s0)
    lw	$a6,116($s0)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    sw	$a0,16384($zero)
    # Line 2486
    li	$v1,378
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    lw	$a3,252($s0)
    # Line 2491
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 2486
    lw	$a2,4($a3)
    lw	$a3,0($a3)
    # Line 2491
    addiu	$t9,$t9,32336
    # Line 2486
    sw	$a3,16384($zero)
    # Line 2491
    move	$a0,$s0
    bal subtractTexTableUsage
    # Line 2486
    sw	$a2,16384($zero)
    # Line 2493
    lw	$t9,28($s8)
    lw	$a1,300($s0)
    move	$a0,$s8
    jal	sub_0d960000
    lw	$a1,16($a1)
    # Line 2494
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,24($sp)
    addiu	$t9,$t9,24000
    ld	$s8,8($sp)
    move	$a1,$s0
    bal subtractTexTableUsage
    lw	$a0,3868($a0)
    ld	$ra,32($sp)
    ld	$s0,0($sp)
    # Line 2495
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d96a61c:
    # Line 2479
    li	$a1,-1
    b	.L0d96a570
    sd	$ra,32($sp)
.end bindBicubicTexture

# Function: bind3DMipmapTexture
# Declared: Line 2502 (Source lines: 2503-2556)
# Address: 0x0d96a630 - 0x0d96a75c (Size: 300 bytes, Frame: 32)
.ent bind3DMipmapTexture
bind3DMipmapTexture:
    # Line 2503
    addiu	$sp,$sp,-32
    # Line 2536
    lw	$v0,32($a1)
    li	$v1,469
    # Line 2503
    sd	$s0,0($sp)
    move	$s0,$a1
    # Line 2536
    sw	$v1,16384($zero)
    # Line 2503
    lui	$at,0x12
    # Line 2536
    dsll32	$v0,$v0,0xe
    # Line 2503
    sd	$s2,8($sp)
    move	$s2,$a0
    addiu	$at,$at,27048
    sd	$gp,16($sp)
    # Line 2536
    bgez	$v0,.L0d96a750
    # Line 2503
    addu	$gp,$t9,$at
    # Line 2536
    lw	$a1,272($a1)
    sd	$ra,24($sp)
    lw	$a1,4($a1)
.L0d96a674:
    # Line 2543
    lw	$t0,72($s0)
    # Line 2536
    lw	$t2,528($s0)
    sw	$a1,16384($zero)
    lw	$a5,68($s0)
    lw	$a6,64($s0)
    lw	$a7,116($s0)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$t2,16384($zero)
    # Line 2543
    li	$t1,379
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    lw	$a5,84($s0)
    lw	$a6,80($s0)
    lw	$a7,76($s0)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    lw	$a4,252($s0)
    sw	$a5,16384($zero)
    lw	$t8,36($a4)
    lw	$ra,32($a4)
    lw	$at,28($a4)
    lw	$v0,24($a4)
    lw	$v1,20($a4)
    lw	$a0,16($a4)
    lw	$a1,12($a4)
    lw	$a2,8($a4)
    lw	$a3,4($a4)
    lw	$a4,0($a4)
    sw	$a4,16384($zero)
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    # Line 2553
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 2543
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    # Line 2553
    addiu	$t9,$t9,32336
    # Line 2543
    sw	$ra,16384($zero)
    sw	$t8,16384($zero)
    # Line 2553
    bal subtractTexTableUsage
    move	$a0,$s0
    # Line 2555
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24000
    move	$a1,$s0
    bal subtractTexTableUsage
    lw	$a0,3868($s2)
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s2,8($sp)
    # Line 2556
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96a750:
    # Line 2536
    li	$a1,-1
    b	.L0d96a674
    sd	$ra,24($sp)
.end bind3DMipmapTexture

# Function: bind3DTexture
# Declared: Line 2563 (Source lines: 2564-2596)
# Address: 0x0d96a760 - 0x0d96a83c (Size: 220 bytes, Frame: 32)
.ent bind3DTexture
bind3DTexture:
    # Line 2564
    addiu	$sp,$sp,-32
    # Line 2581
    lw	$v0,32($a1)
    li	$v1,469
    # Line 2564
    sd	$s0,0($sp)
    move	$s0,$a1
    # Line 2581
    sw	$v1,16384($zero)
    # Line 2564
    lui	$at,0x12
    # Line 2581
    dsll32	$v0,$v0,0xe
    # Line 2564
    sd	$s8,8($sp)
    move	$s8,$a0
    addiu	$at,$at,26744
    sd	$gp,16($sp)
    # Line 2581
    bgez	$v0,.L0d96a830
    # Line 2564
    addu	$gp,$t9,$at
    # Line 2581
    lw	$a1,272($a1)
    sd	$ra,24($sp)
    lw	$a1,4($a1)
.L0d96a7a4:
    sw	$a1,16384($zero)
    # Line 2588
    lw	$ra,84($s0)
    lw	$at,72($s0)
    # Line 2581
    lw	$v1,528($s0)
    lw	$a0,68($s0)
    lw	$a4,64($s0)
    lw	$a5,116($s0)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    # Line 2588
    li	$v0,380
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    lw	$a3,252($s0)
    # Line 2593
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 2588
    lw	$a2,4($a3)
    lw	$a3,0($a3)
    # Line 2593
    addiu	$t9,$t9,32336
    # Line 2588
    sw	$a3,16384($zero)
    # Line 2593
    move	$a0,$s0
    bal subtractTexTableUsage
    # Line 2588
    sw	$a2,16384($zero)
    # Line 2595
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24000
    move	$a1,$s0
    bal subtractTexTableUsage
    lw	$a0,3868($s8)
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s8,8($sp)
    # Line 2596
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96a830:
    # Line 2581
    li	$a1,-1
    b	.L0d96a7a4
    sd	$ra,24($sp)
.end bind3DTexture

# Function: bindDetailTexture
# Declared: Line 2602 (Source lines: 2603-2620)
# Address: 0x0d96a840 - 0x0d96a8d0 (Size: 144 bytes, Frame: 16)
.ent bindDetailTexture
bindDetailTexture:
    # Line 2603
    move	$a4,$a0
    # Line 2615
    lw	$v0,32($a1)
    li	$a3,-1
    li	$v1,381
    # Line 2603
    lui	$at,0x12
    # Line 2615
    dsll32	$v0,$v0,0xe
    sw	$v1,16384($zero)
    # Line 2603
    addiu	$sp,$sp,-16
    addiu	$at,$at,26520
    sd	$gp,0($sp)
    # Line 2615
    bgez	$v0,.L0d96a8c8
    # Line 2603
    addu	$gp,$t9,$at
    # Line 2615
    lw	$a3,272($a1)
    sd	$ra,8($sp)
    lw	$a3,4($a3)
.L0d96a87c:
    sw	$a3,16384($zero)
    # Line 2619
    lw	$a0,3868($a4)
    # Line 2615
    lw	$a4,280($a1)
    lw	$a5,276($a1)
    lw	$ra,28($a1)
    lw	$at,336($a1)
    lw	$v0,332($a1)
    sw	$v0,16384($zero)
    # Line 2619
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 2615
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    # Line 2619
    addiu	$t9,$t9,24000
    # Line 2615
    sw	$a5,16384($zero)
    # Line 2619
    bal subtractTexTableUsage
    # Line 2615
    sw	$a4,16384($zero)
    ld	$ra,8($sp)
    # Line 2620
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96a8c8:
    b	.L0d96a87c
    sd	$ra,8($sp)
.end bindDetailTexture

# Function: initTexture
# Declared: Line 2626 (Source lines: 2627-2694)
# Address: 0x0d96a8d0 - 0x0d96ac2c (Size: 860 bytes, Frame: 192)
.ent initTexture
initTexture:
    # Line 2629
    lw	$v1,380($a1)
    # Line 2627
    addiu	$sp,$sp,-64
    # Line 2629
    sd	$v1,8($sp)
    # Line 2627
    sd	$ra,40($sp)
    sd	$s2,48($sp)
    sd	$s1,24($sp)
    sd	$s0,32($sp)
    # Line 2628
    lw	$s0,376($a1)
    # Line 2627
    lui	$v0,0x12
    # Line 2630
    lwc1	$f0,328($a1)
    # Line 2627
    addiu	$v0,$v0,26376
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 2634
    # lw $t9, -18524($gp) # &bzero
    # Line 2627
    move	$s1,$a1
    # Line 2630
    swc1	$f0,0($sp)
    # Line 2627
    move	$s2,$a0
    # Line 2634
    move	$a0,$a1
    # Line 2631
    lw	$at,120($a1)
    # Line 2634
    li	$a1,544
    jal	bzero
    # Line 2631
    sd	$at,16($sp)
    # Line 2642
    la	$a2,__glKonTexParamDefault
    # Line 2639
    ld	$v1,16($sp)
    # Line 2637
    sll	$a0,$s0,0x1c
    sw	$a0,116($s1)
    # Line 2635
    sw	$s0,376($s1)
    # Line 2642
    # lw $t9, -19588($gp) # &__glKonSetTexParams
    # Line 2636
    ld	$a1,8($sp)
    sw	$a1,380($s1)
    # Line 2638
    lwc1	$f1,0($sp)
    # Line 2642
    move	$a0,$s2
    # Line 2639
    sw	$v1,120($s1)
    # Line 2642
    move	$a1,$s0
    jal	__glKonSetTexParams
    # Line 2638
    swc1	$f1,328($s1)
    # Line 2642
    lwc1	$f2,0($sp)
    ldc1	$f3,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f3
    bc1f	.L0d96aa3c
    # Line 2647
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 2651
    lw	$a3,32($s1)
.L0d96a97c:
    li	$a1,1
    # Line 2650
    lw	$a2,76($s1)
    li	$a4,-256
    # Line 2651
    dsll32	$a3,$a3,0x7
    # Line 2650
    and	$a2,$a2,$a4
    # Line 2651
    lui	$a4,0xffff
    ori	$a4,$a4,0xff
    # Line 2650
    ori	$a2,$a2,0x10
    # Line 2651
    li	$a5,16
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x1000
    bgez	$a3,.L0d96a9ec
    sw	$a2,76($s1)
    lw	$a0,4($s2)
    addu	$a6,$a0,$a1
    lw	$a4,0($s2)
    sllv	$a6,$a1,$a6
    subu	$a5,$a5,$a6
    and	$a4,$a4,$a5
    beqz	$a4,.L0d96a9e4
    # Line 2652
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    bal __glkonlc_PointParameterfvSGIS
    move	$a0,$s2
    li	$a1,1
    lw	$a0,4($s2)
.L0d96a9e4:
    lw	$ra,376($s1)
    beq	$ra,$a0,.L0d96aa5c
.L0d96a9ec:
    # Line 2655
    la	$v0,__glNop
    # Line 2654
    la	$at,sub_0d970000
    # Line 2655
    sw	$v0,260($s1)
    # Line 2654
    addiu	$at,$at,-6112
    # Line 2658
    beq	$s0,$a1,.L0d96ab00
    # Line 2654
    sw	$at,256($s1)
    # Line 2658
    li	$v1,2
    beq	$s0,$v1,.L0d96ab7c
    # Line 2669
    nop	# was lw $t9, -31860($gp) # &addTexTableUsage
    # Line 2658
    beqz	$s0,.L0d96aa74
    li	$a0,3
    beq	$s0,$a0,.L0d96aac0
    # Line 2689
    nop	# was lw $t9, -31860($gp) # &addTexTableUsage
    ld	$s1,24($sp)
.L0d96aa24:
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s2,48($sp)
    # Line 2694
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96aa3c:
    # Line 2647
    move	$a0,$s2
    move	$a1,$s0
    li	$a4,1
    addiu	$a3,$sp,0
    bal __glKonTexParameter
    li	$a2,0x8066
    b	.L0d96a97c
    # Line 2651
    lw	$a3,32($s1)
.L0d96aa5c:
    # Line 2652
    lw	$t9,256($s1)
    move	$a0,$s2
    jal	addTexTableUsage
    move	$a1,$s1
    b	.L0d96a9ec
    li	$a1,1
.L0d96aa74:
    # Line 2694
    ld	$gp,56($sp)
    ld	$s0,32($sp)
    ld	$s2,48($sp)
    # Line 2683
    sw	$zero,24($s1)
    sw	$zero,20($s1)
    # Line 2682
    sw	$a0,16($s1)
    # Line 2684
    lw	$a2,116($s1)
    lui	$a3,0xf0ff
    # Line 2681
    li	$a1,4
    # Line 2694
    ld	$ra,40($sp)
    # Line 2684
    ori	$a0,$a3,0xffff
    # Line 2681
    sw	$a1,12($s1)
    # Line 2684
    lui	$a1,0x300
    and	$a0,$a2,$a0
    or	$a0,$a0,$a1
    sw	$a0,116($s1)
    # Line 2694
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96aac0:
    # Line 2689
    li	$a4,2
    li	$a2,2
    lw	$a0,3868($s2)
    move	$a1,$s1
    li	$s0,0xc074
    la	$a3,__glKonDefaultSharpenTexFunc
    bal addTexTableUsage
    addu	$a0,$s0,$a0
    # Line 2691
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s2)
    li	$a2,2
    move	$a1,$s1
    bal bindTexTable
    addu	$a0,$s0,$a0
    b	.L0d96aa24
    ld	$s1,24($sp)
.L0d96ab00:
    # Line 2660
    # lw $t9, -31860($gp) # &addTexTableUsage
    li	$a4,2
    li	$a2,2
    lw	$a0,3868($s2)
    move	$a1,$s1
    li	$s0,0xc074
    la	$a3,__glKonDefaultSharpenTexFunc
    bal addTexTableUsage
    addu	$a0,$s0,$a0
    # Line 2662
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s2)
    li	$a2,2
    move	$a1,$s1
    bal bindTexTable
    addu	$a0,$s0,$a0
    # Line 2663
    # lw $t9, -31860($gp) # &addTexTableUsage
    li	$a4,129
    lw	$a0,3868($s2)
    move	$a2,$zero
    move	$a1,$s1
    la	$a3,__glKonDefaultBicubicTexFunc
    bal addTexTableUsage
    addu	$a0,$s0,$a0
    # Line 2665
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s2)
    move	$a2,$zero
    move	$a1,$s1
    bal bindTexTable
    addu	$a0,$s0,$a0
    b	.L0d96aa24
    ld	$s1,24($sp)
.L0d96ab7c:
    # Line 2669
    li	$a4,2
    li	$a2,1
    lw	$a0,3868($s2)
    move	$a1,$s1
    li	$s0,0xc074
    la	$a3,__glKonDefaultDetailTexFunc
    bal addTexTableUsage
    addu	$a0,$s0,$a0
    # Line 2671
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s2)
    li	$a2,1
    move	$a1,$s1
    bal bindTexTable
    addu	$a0,$s0,$a0
    # Line 2672
    # lw $t9, -31860($gp) # &addTexTableUsage
    li	$a4,2
    lw	$a0,3868($s2)
    li	$a2,2
    move	$a1,$s1
    la	$a3,__glKonDefaultSharpenTexFunc
    bal addTexTableUsage
    addu	$a0,$s0,$a0
    # Line 2674
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s2)
    li	$a2,2
    move	$a1,$s1
    bal bindTexTable
    addu	$a0,$s0,$a0
    # Line 2675
    # lw $t9, -31860($gp) # &addTexTableUsage
    li	$a4,129
    lw	$a0,3868($s2)
    move	$a2,$zero
    move	$a1,$s1
    la	$a3,__glKonDefaultBicubicTexFunc
    bal addTexTableUsage
    addu	$a0,$s0,$a0
    # Line 2677
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s2)
    move	$a2,$zero
    move	$a1,$s1
    bal bindTexTable
    addu	$a0,$s0,$a0
    b	.L0d96aa24
    ld	$s1,24($sp)
.end initTexture

# Function: subloadSimple
# Declared: Line 2697 (Source lines: 2700-2723)
# Address: 0x0d96ac30 - 0x0d96ad30 (Size: 256 bytes, Frame: 144)
.ent subloadSimple
subloadSimple:
    # Line 2700
    addiu	$sp,$sp,-144
    lw	$t1,272($a0)
    sd	$a0,8($sp)
    sd	$s0,0($sp)
    move	$s0,$a1
    beqz	$t1,.L0d96ace4
    sd	$ra,16($sp)
.L0d96ac4c:
    # Line 2706
    lw	$t3,4($t1)
    # Line 2712
    sw	$a7,128($s0)
    # Line 2711
    sw	$a4,124($s0)
    # Line 2708
    sw	$a3,112($s0)
    # Line 2707
    sw	$a2,108($s0)
    # Line 2715
    lw	$v1,164($sp)
    # Line 2713
    lw	$a1,148($sp)
    # Line 2710
    addu	$t0,$a3,$a6
    # Line 2713
    sw	$a1,132($s0)
    # Line 2709
    addu	$t2,$a2,$a5
    # Line 2710
    addiu	$t0,$t0,-1
    sw	$t0,120($s0)
    # Line 2709
    addiu	$t2,$t2,-1
    sw	$t2,116($s0)
    # Line 2714
    lw	$v0,156($sp)
    # Line 2706
    sw	$t3,104($s0)
    # Line 2714
    lw	$a0,0($v0)
    sw	$a0,136($s0)
    # Line 2715
    lw	$v0,4($v0)
    beqz	$v1,.L0d96acd0
    sw	$v0,140($s0)
    # Line 2718
    # lw $t9, -32216($gp) # &__glKonCopyTexImage
    jal	__glKonCopyTexImage
    move	$a0,$s0
    # Line 2722
    ld	$t9,8($sp)
.L0d96acb0:
    ld	$ra,16($sp)
    lw	$t8,32($t9)
    ld	$s0,0($sp)
    lui	$at,0x2
    # Line 2723
    addiu	$sp,$sp,144
    # Line 2722
    or	$t8,$t8,$at
    # Line 2723
    jr	$ra
    # Line 2722
    sw	$t8,32($t9)
.L0d96acd0:
    # Line 2720
    # lw $t9, -32220($gp) # &__glKonDrawTexels3D
    jal	__glKonDrawTexels3D
    move	$a0,$s0
    b	.L0d96acb0
    # Line 2722
    ld	$t9,8($sp)
.L0d96ace4:
    sd	$a7,24($sp)
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    # Line 2704
    # lw $t9, -32740($gp) # &sub_0d960000
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    addiu	$t9,$t9,20544
    sd	$a6,64($sp)
    bal __glkonlc_PointParameterfvSGIS
    ld	$a0,8($sp)
    ld	$a6,64($sp)
    ld	$a4,56($sp)
    ld	$a5,48($sp)
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    ld	$t1,8($sp)
    ld	$a7,24($sp)
    b	.L0d96ac4c
    lw	$t1,272($t1)
.end subloadSimple

# Function: tileinfo
# Declared: Line 2730 (Source lines: 2732-2760)
# Address: 0x0d96ad30 - 0x0d96adc0 (Size: 144 bytes, Frame: 0)
.ent tileinfo
tileinfo:
    # Line 2732
    lw	$a5,12($a0)
    li	$a6,3
    beq	$a5,$a6,.L0d96ad7c
    li	$at,4
    li	$a4,2
    beqz	$a5,.L0d96ad90
    li	$a7,1
    beq	$a5,$a7,.L0d96ada0
    nop
    beq	$a5,$a4,.L0d96adb0
    nop
    beq	$a5,$at,.L0d96ad6c
    nop
    # Line 2737
    jr	$ra
    nop
.L0d96ad6c:
    # Line 2758
    sw	$a6,0($a1)
    # Line 2759
    sw	$a4,0($a2)
    # Line 2737
    jr	$ra
    # Line 2760
    sw	$zero,0($a3)
.L0d96ad7c:
    # Line 2734
    li	$v0,5
    sw	$v0,0($a1)
    # Line 2735
    sw	$a6,0($a2)
    # Line 2737
    jr	$ra
    # Line 2736
    sw	$zero,0($a3)
.L0d96ad90:
    # Line 2740
    sw	$a6,0($a1)
    # Line 2741
    sw	$a4,0($a2)
    # Line 2737
    jr	$ra
    # Line 2742
    sw	$zero,0($a3)
.L0d96ada0:
    # Line 2746
    sw	$a6,0($a1)
    # Line 2747
    sw	$a4,0($a2)
    # Line 2737
    jr	$ra
    # Line 2748
    sw	$a7,0($a3)
.L0d96adb0:
    # Line 2752
    sw	$a6,0($a1)
    # Line 2753
    sw	$a7,0($a2)
    # Line 2737
    jr	$ra
    # Line 2754
    sw	$a7,0($a3)
.end tileinfo

# Function: subloadBorderedLevel
# Declared: Line 2767 (Source lines: 2771-2846)
# Address: 0x0d96adc0 - 0x0d96b084 (Size: 708 bytes, Frame: 160)
.ent subloadBorderedLevel
subloadBorderedLevel:
    # Line 2771
    addiu	$sp,$sp,-288
    sd	$s8,216($sp)
    sd	$s4,160($sp)
    sd	$s1,144($sp)
    sd	$s2,176($sp)
    move	$s2,$a0
    sd	$s3,168($sp)
    move	$s3,$a1
    move	$s1,$a2
    sd	$s0,152($sp)
    move	$s0,$a3
    move	$s4,$a4
    sd	$s7,208($sp)
    # Line 2783
    move	$s7,$a2
    # Line 2771
    bltz	$a2,.L0d96aec4
    sd	$ra,192($sp)
    # Line 2784
    move	$s8,$a5
    sd	$s5,200($sp)
    bltz	$a3,.L0d96aeec
    sd	$s6,184($sp)
.L0d96ae10:
    # Line 2793
    move	$s6,$s0
    # Line 2794
    move	$s5,$a6
.L0d96ae18:
    # Line 2797
    bltz	$s1,.L0d96af7c
    # Line 2798
    nop	# was lw $t9, -32296($gp) # &__glKonPushState
    # Line 2797
    bltz	$s0,.L0d96af78
    sd	$a5,136($sp)
.L0d96ae28:
    # Line 2804
    bltz	$s1,.L0d96af0c
    nop
.L0d96ae30:
    # Line 2807
    bltz	$s1,.L0d96af18
    # Line 2813
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
.L0d96ae38:
    # Line 2807
    bltz	$s0,.L0d96afc0
    # Line 2824
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    # Line 2828
    sw	$s5,4($s3)
.L0d96ae44:
    # Line 2827
    sw	$s8,0($s3)
    # Line 2829
    lw	$a7,316($sp)
    lw	$ra,324($sp)
    move	$a6,$s5
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a5,$s8
    move	$a4,$s4
    lw	$at,332($sp)
    sw	$zero,20($sp)
    move	$a3,$s6
    addiu	$t9,$t9,-21456
    move	$a2,$s7
    move	$a1,$s3
    sw	$ra,4($sp)
    move	$a0,$s2
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    ld	$s5,200($sp)
    bltz	$s0,.L0d96afd8
    ld	$s6,184($sp)
    ld	$s8,216($sp)
.L0d96ae98:
    # Line 2844
    bltz	$s1,.L0d96afac
    ld	$s7,208($sp)
    bltz	$s0,.L0d96afac
    # Line 2846
    ld	$s0,152($sp)
.L0d96aea8:
    ld	$s1,144($sp)
    ld	$ra,192($sp)
    ld	$s2,176($sp)
    ld	$s3,168($sp)
    ld	$s4,160($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d96aec4:
    # Line 2780
    lw	$v1,292($sp)
    # Line 2779
    addu	$s8,$a2,$a5
    sd	$s5,200($sp)
    # Line 2780
    li	$v0,1
    move	$s7,$zero
    sd	$s6,184($sp)
    sllv	$v0,$v0,$v1
    addu	$v0,$a2,$v0
    # Line 2784
    bgez	$a3,.L0d96ae10
    # Line 2780
    sw	$v0,32($sp)
.L0d96aeec:
    # Line 2790
    lw	$a1,300($sp)
    # Line 2789
    addu	$s5,$s0,$a6
    # Line 2790
    li	$a0,1
    move	$s6,$zero
    sllv	$a0,$a0,$a1
    addu	$a0,$s0,$a0
    b	.L0d96ae18
    sw	$a0,36($sp)
.L0d96af0c:
    # Line 2804
    bltz	$s0,.L0d96b038
    # Line 2806
    negu	$a6,$s0
    # Line 2813
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
.L0d96af18:
    lw	$a1,92($sp)
    li	$a0,3315
    jal	__glkonim_PixelStorei
    subu	$a1,$a1,$s0
    # Line 2817
    sw	$s5,4($s3)
    # Line 2816
    negu	$a5,$s1
    sw	$a5,0($s3)
    # Line 2818
    lw	$a7,316($sp)
    lw	$a2,32($sp)
    lw	$ra,324($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a6,$s5
    lw	$at,332($sp)
    sw	$zero,20($sp)
    move	$a4,$s4
    addiu	$t9,$t9,-21456
    move	$a3,$s6
    move	$a1,$s3
    sw	$ra,4($sp)
    move	$a0,$s2
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    b	.L0d96ae38
    nop
.L0d96af78:
    # Line 2798
    # lw $t9, -32296($gp) # &__glKonPushState
.L0d96af7c:
    addiu	$a1,$sp,40
    sd	$a5,136($sp)
    jal	__glKonPushState
    li	$a0,8
    lw	$v0,88($sp)
    bnez	$v0,.L0d96ae28
    # Line 2801
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    ld	$a1,136($sp)
    jal	__glkonim_PixelStorei
    li	$a0,3314
    b	.L0d96ae28
    nop
.L0d96afac:
    # Line 2845
    # lw $t9, -32288($gp) # &__glKonPopState
    jal	__glKonPopState
    addiu	$a0,$sp,40
    b	.L0d96aea8
    # Line 2846
    ld	$s0,152($sp)
.L0d96afc0:
    # Line 2824
    lw	$a1,96($sp)
    li	$a0,3316
    jalr	$t9
    subu	$a1,$a1,$s1
    b	.L0d96ae44
    # Line 2828
    sw	$s5,4($s3)
.L0d96afd8:
    # Line 2834
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,92($sp)
    jal	__glkonim_PixelStorei
    li	$a0,3315
    # Line 2838
    negu	$a6,$s0
    sw	$a6,4($s3)
    # Line 2837
    sw	$s8,0($s3)
    # Line 2839
    lw	$a7,316($sp)
    lw	$a3,36($sp)
    lw	$ra,324($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a5,$s8
    lw	$at,332($sp)
    sw	$zero,20($sp)
    move	$a4,$s4
    addiu	$t9,$t9,-21456
    move	$a2,$s7
    move	$a1,$s3
    sw	$ra,4($sp)
    move	$a0,$s2
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    b	.L0d96ae98
    ld	$s8,216($sp)
.L0d96b038:
    # Line 2806
    sw	$a6,4($s3)
    # Line 2805
    negu	$a5,$s1
    sw	$a5,0($s3)
    # Line 2807
    lw	$a7,316($sp)
    lw	$a3,36($sp)
    lw	$a2,32($sp)
    lw	$ra,324($sp)
    # Line 2805
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2807
    lw	$at,332($sp)
    sw	$zero,20($sp)
    # Line 2805
    addiu	$t9,$t9,-21456
    # Line 2807
    move	$a4,$s4
    move	$a1,$s3
    sw	$ra,4($sp)
    move	$a0,$s2
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    b	.L0d96ae30
    nop
.end subloadBorderedLevel

# Function: subcopyBorderedLevel
# Declared: Line 2849 (Source lines: 2853-2912)
# Address: 0x0d96b090 - 0x0d96b2ec (Size: 604 bytes, Frame: 192)
.ent subcopyBorderedLevel
subcopyBorderedLevel:
    # Line 2853
    addiu	$sp,$sp,-192
    sd	$ra,112($sp)
    sd	$s4,72($sp)
    sd	$s1,48($sp)
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$s2,56($sp)
    move	$s2,$a1
    move	$s1,$a2
    sd	$s0,80($sp)
    move	$s0,$a3
    move	$s4,$a4
    sd	$s8,96($sp)
    # Line 2864
    move	$s8,$a2
    # Line 2853
    bltz	$a2,.L0d96b178
    sd	$s7,120($sp)
    sd	$s6,88($sp)
    # Line 2865
    move	$s7,$a5
    bltz	$a3,.L0d96b19c
    sd	$s5,104($sp)
.L0d96b0e0:
    # Line 2874
    move	$s5,$s0
    # Line 2875
    move	$s6,$a6
.L0d96b0e8:
    # Line 2878
    bltz	$s1,.L0d96b1bc
    negu	$a5,$s1
.L0d96b0f0:
    # Line 2881
    bltz	$s0,.L0d96b220
    # Line 2896
    lw	$a0,228($sp)
.L0d96b0f8:
    ld	$s1,48($sp)
    # Line 2899
    sw	$s6,4($s2)
    # Line 2898
    sw	$s7,0($s2)
    # Line 2900
    lw	$a7,204($sp)
    lw	$ra,212($sp)
    move	$a6,$s6
    move	$a5,$s7
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a4,$s4
    li	$v0,1
    lw	$at,220($sp)
    sw	$v0,20($sp)
    move	$a3,$s5
    addiu	$t9,$t9,-21456
    move	$a2,$s8
    move	$a1,$s2
    sw	$ra,4($sp)
    move	$a0,$s3
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    ld	$s6,88($sp)
    bltz	$s0,.L0d96b230
    ld	$s5,104($sp)
    ld	$s2,56($sp)
.L0d96b158:
    ld	$s8,96($sp)
    ld	$s3,64($sp)
    ld	$ra,112($sp)
    ld	$s4,72($sp)
    ld	$s0,80($sp)
    ld	$s7,120($sp)
    # Line 2912
    jr	$ra
    addiu	$sp,$sp,192
.L0d96b178:
    # Line 2860
    addu	$s7,$a2,$a5
    sd	$s6,88($sp)
    # Line 2861
    li	$v1,1
    move	$s8,$zero
    sd	$s5,104($sp)
    sllv	$v1,$v1,$a7
    addu	$v1,$a2,$v1
    # Line 2865
    bgez	$a3,.L0d96b0e0
    # Line 2861
    sw	$v1,32($sp)
.L0d96b19c:
    # Line 2871
    lw	$a1,196($sp)
    # Line 2870
    addu	$s6,$s0,$a6
    # Line 2871
    li	$a0,1
    move	$s5,$zero
    sllv	$a0,$a0,$a1
    addu	$a0,$s0,$a0
    b	.L0d96b0e8
    sw	$a0,36($sp)
.L0d96b1bc:
    # Line 2878
    bltz	$s0,.L0d96b290
    lw	$a2,32($sp)
.L0d96b1c4:
    # Line 2887
    lw	$v1,228($sp)
    lw	$v1,16($v1)
    # Line 2890
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2887
    subu	$v1,$v1,$s0
    sw	$v1,40($s2)
    # Line 2890
    lw	$a7,204($sp)
    # Line 2889
    sw	$s6,4($s2)
    # Line 2888
    sw	$a5,0($s2)
    # Line 2890
    lw	$ra,212($sp)
    move	$a6,$s6
    move	$a4,$s4
    lw	$at,220($sp)
    li	$v0,1
    addiu	$t9,$t9,-21456
    sw	$v0,20($sp)
    move	$a3,$s5
    move	$a1,$s2
    sw	$ra,4($sp)
    move	$a0,$s3
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    b	.L0d96b0f0
    nop
.L0d96b220:
    # Line 2896
    lw	$a0,12($a0)
    subu	$a0,$a0,$s1
    b	.L0d96b0f8
    sw	$a0,36($s2)
.L0d96b230:
    # Line 2905
    lw	$v1,228($sp)
    # Line 2908
    lw	$a3,36($sp)
    # Line 2905
    lw	$v1,16($v1)
    # Line 2907
    negu	$a6,$s0
    sw	$a6,4($s2)
    # Line 2906
    sw	$s7,0($s2)
    # Line 2905
    sw	$v1,40($s2)
    # Line 2908
    lw	$a7,204($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$ra,212($sp)
    move	$a5,$s7
    move	$a4,$s4
    lw	$at,220($sp)
    li	$v0,1
    sw	$v0,20($sp)
    addiu	$t9,$t9,-21456
    move	$a2,$s8
    move	$a1,$s2
    sw	$ra,4($sp)
    move	$a0,$s3
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    b	.L0d96b158
    ld	$s2,56($sp)
.L0d96b290:
    # Line 2881
    lw	$a3,36($sp)
    sd	$a5,40($sp)
    # Line 2880
    negu	$a6,$s0
    sw	$a6,4($s2)
    # Line 2879
    ld	$a5,40($sp)
    sw	$a5,0($s2)
    # Line 2881
    lw	$a7,204($sp)
    lw	$a2,32($sp)
    # Line 2879
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 2881
    lw	$ra,212($sp)
    lw	$at,220($sp)
    li	$v0,1
    sw	$v0,20($sp)
    # Line 2879
    addiu	$t9,$t9,-21456
    # Line 2881
    move	$a4,$s4
    move	$a1,$s2
    sw	$ra,4($sp)
    move	$a0,$s3
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    ld	$a5,40($sp)
    b	.L0d96b1c4
    lw	$a2,32($sp)
.end subcopyBorderedLevel

# Function: subloadPyramidLevel
# Declared: Line 2926 (Source lines: 2929-3134)
# Address: 0x0d96b2f0 - 0x0d96bb94 (Size: 2212 bytes, Frame: 144)
.ent subloadPyramidLevel
subloadPyramidLevel:
    # Line 2929
    addiu	$sp,$sp,-272
    sd	$a6,152($sp)
    sd	$a7,144($sp)
    sd	$ra,112($sp)
    sd	$s2,88($sp)
    sd	$s5,80($sp)
    sd	$s8,72($sp)
    sd	$s7,104($sp)
    sd	$s0,96($sp)
    sd	$s6,120($sp)
    # Line 2930
    sll	$s6,$a1,0x2
    # Line 2941
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    # Line 2930
    addu	$s6,$a0,$s6
    # Line 2929
    move	$s0,$a2
    move	$s7,$a3
    # Line 2930
    lw	$s6,124($s6)
    # Line 2929
    move	$s8,$a4
    move	$s5,$a5
    # Line 2933
    sw	$zero,40($sp)
    # Line 2941
    addiu	$a1,$sp,32
    # Line 2929
    move	$s2,$a0
    # Line 2932
    sw	$zero,36($sp)
    # Line 2941
    li	$a0,3316
    jal	__glkonim_GetIntegerv
    # Line 2931
    sw	$zero,32($sp)
    # Line 2942
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,36
    jal	__glkonim_GetIntegerv
    li	$a0,3315
    # Line 2943
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,40
    li	$a0,3314
    jal	__glkonim_GetIntegerv
    sd	$s1,192($sp)
    lw	$s1,300($sp)
    lw	$t8,40($sp)
    lw	$t1,4($s1)
    sd	$s4,184($sp)
    bne	$t8,$t1,.L0d96b95c
    sd	$s3,176($sp)
.L0d96b390:
    # Line 2959
    la	$s4,__glkonim_PixelStorei
    # Line 2967
    ld	$a6,144($sp)
    ld	$a5,152($sp)
    # Line 2964
    sw	$t1,0($s0)
    # Line 2965
    lw	$at,8($s1)
    sw	$at,4($s0)
    # Line 2967
    lw	$a7,276($sp)
    lw	$ra,284($sp)
    # Line 2959
    la	$s3,sub_0d970000
    # Line 2967
    lw	$t9,292($sp)
    move	$a4,$s5
    sw	$ra,4($sp)
    # Line 2959
    addiu	$s3,$s3,-21456
    # Line 2967
    move	$a3,$s8
    sw	$t9,12($sp)
    move	$t9,$s3
    move	$a2,$s7
    move	$a1,$s0
    lw	$t8,0($s1)
    move	$a0,$s2
    bal __glKonGetTexParameter
    sw	$t8,20($sp)
    ld	$v0,152($sp)
    lw	$a3,8($s6)
    lw	$a2,408($s2)
    li	$t2,1
    addu	$a3,$a3,$s7
    sllv	$a2,$t2,$a2
    addu	$v0,$a3,$v0
    slt	$v0,$v0,$a2
    bnez	$v0,.L0d96b514
    lw	$t1,4($s1)
    # Line 2978
    addu	$a5,$t1,$a3
    subu	$a5,$a5,$a2
    sd	$a5,160($sp)
    sw	$a5,44($sp)
    # Line 2979
    subu	$a5,$t1,$a5
    sd	$a5,168($sp)
    sw	$a5,48($sp)
    # Line 2981
    sw	$a5,0($s0)
    # Line 2984
    move	$t9,$s4
    # Line 2982
    lw	$a4,8($s1)
    sw	$a4,4($s0)
    # Line 2984
    li	$a0,3316
    jalr	$t9
    lw	$a1,32($sp)
    # Line 2985
    ld	$a6,144($sp)
    ld	$a5,168($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a4,$s5
    move	$a3,$s8
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    # Line 2992
    ld	$a2,168($sp)
    # Line 2988
    ld	$a4,160($sp)
    sw	$a4,0($s0)
    # Line 2989
    lw	$a3,8($s1)
    sw	$a3,4($s0)
    # Line 2992
    move	$t9,$s4
    lw	$a1,32($sp)
    li	$a0,3316
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 2993
    ld	$a5,160($sp)
    ld	$a6,144($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a2,$zero
    move	$a3,$s8
    lw	$t0,0($s1)
    move	$a4,$s5
    bal __glKonGetTexParameter
    sw	$t0,20($sp)
    # Line 3008
    move	$t9,$s4
    lw	$a1,32($sp)
    li	$a0,3316
    # Line 2993
    li	$t3,1
    # Line 3008
    jalr	$t9
    # Line 2993
    sd	$t3,64($sp)
    b	.L0d96b56c
    li	$a0,1
.L0d96b514:
    # Line 3002
    ld	$a6,144($sp)
    ld	$a5,152($sp)
    # Line 2999
    sw	$t1,0($s0)
    # Line 3000
    lw	$t3,8($s1)
    sw	$t3,4($s0)
    # Line 3002
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$t1,292($sp)
    move	$a4,$s5
    sw	$t1,12($sp)
    move	$a3,$s8
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a1,$s0
    move	$a0,$s2
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    li	$a0,1
    sd	$zero,64($sp)
.L0d96b56c:
    ld	$t8,144($sp)
    lw	$a3,12($s6)
    lw	$a2,408($s2)
    addu	$a3,$a3,$s8
    sllv	$a2,$a0,$a2
    addu	$t8,$a3,$t8
    slt	$t8,$t8,$a2
    bnez	$t8,.L0d96b698
    lw	$t1,4($s1)
    # Line 3018
    lw	$a4,8($s1)
    # Line 3021
    sw	$t1,0($s0)
    # Line 3018
    addu	$a5,$a4,$a3
    subu	$a5,$a5,$a2
    sd	$a5,136($sp)
    sw	$a5,52($sp)
    # Line 3019
    subu	$a4,$a4,$a5
    sd	$a4,128($sp)
    # Line 3024
    move	$t9,$s4
    # Line 3022
    sw	$a4,4($s0)
    # Line 3024
    lw	$a1,36($sp)
    li	$a0,3315
    jalr	$t9
    # Line 3019
    sw	$a4,56($sp)
    # Line 3025
    ld	$a6,128($sp)
    ld	$a5,152($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a2,$s7
    move	$a4,$s5
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a3,$a3,$s8
    # Line 3032
    ld	$a2,128($sp)
    # Line 3028
    lw	$a4,4($s1)
    # Line 3029
    ld	$a3,136($sp)
    sw	$a3,4($s0)
    # Line 3028
    sw	$a4,0($s0)
    # Line 3032
    move	$t9,$s4
    lw	$a1,36($sp)
    li	$a0,3315
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3033
    ld	$a5,152($sp)
    ld	$a6,136($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a2,$s7
    move	$a3,$zero
    lw	$t0,0($s1)
    move	$a4,$s5
    bal __glKonGetTexParameter
    sw	$t0,20($sp)
    # Line 3049
    move	$t9,$s4
    lw	$a1,36($sp)
    li	$a0,3315
    # Line 3033
    li	$t3,1
    # Line 3049
    jalr	$t9
    # Line 3033
    sd	$t3,200($sp)
    ld	$a0,200($sp)
    b	.L0d96b6f0
    ld	$a1,64($sp)
.L0d96b698:
    # Line 3042
    ld	$a6,144($sp)
    ld	$a5,152($sp)
    # Line 3039
    sw	$t1,0($s0)
    # Line 3040
    lw	$t3,8($s1)
    sw	$t3,4($s0)
    # Line 3042
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a4,$s5
    sw	$t1,12($sp)
    move	$a2,$s7
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a1,$s0
    move	$a0,$s2
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a3,$a3,$s8
    ld	$a1,64($sp)
    move	$a0,$zero
.L0d96b6f0:
    beqz	$a1,.L0d96b974
    lw	$t8,44($sp)
    lw	$t9,48($sp)
    sd	$t9,168($sp)
    beqz	$a0,.L0d96ba5c
    sd	$t8,160($sp)
    # Line 3061
    lw	$ra,56($sp)
    # Line 3060
    ld	$at,168($sp)
    sw	$at,0($s0)
    # Line 3061
    sd	$ra,128($sp)
    # Line 3062
    move	$t9,$s4
    # Line 3061
    sw	$ra,4($s0)
    # Line 3062
    li	$a0,3316
    jalr	$t9
    lw	$a1,32($sp)
    # Line 3063
    move	$t9,$s4
    lw	$a1,36($sp)
    jalr	$t9
    li	$a0,3315
    # Line 3064
    ld	$a6,128($sp)
    ld	$a5,168($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a4,$s5
    lw	$t0,0($s1)
    addu	$a3,$a3,$s8
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    # Line 3069
    ld	$a2,168($sp)
    # Line 3067
    ld	$a4,160($sp)
    # Line 3068
    ld	$a3,128($sp)
    sw	$a3,4($s0)
    # Line 3067
    sw	$a4,0($s0)
    # Line 3069
    move	$t9,$s4
    lw	$a1,32($sp)
    li	$a0,3316
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3070
    move	$t9,$s4
    lw	$a1,36($sp)
    jalr	$t9
    li	$a0,3315
    # Line 3071
    ld	$a6,128($sp)
    ld	$a5,160($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a2,$zero
    move	$a4,$s5
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a3,$a3,$s8
    # Line 3074
    ld	$t8,168($sp)
    # Line 3075
    lw	$t3,52($sp)
    sd	$t3,136($sp)
    sw	$t3,4($s0)
    # Line 3076
    move	$t9,$s4
    # Line 3074
    sw	$t8,0($s0)
    # Line 3076
    li	$a0,3316
    jalr	$t9
    lw	$a1,32($sp)
    # Line 3077
    ld	$s8,128($sp)
    lw	$a1,36($sp)
    move	$t9,$s4
    li	$a0,3315
    jalr	$t9
    addu	$a1,$a1,$s8
    # Line 3078
    ld	$a6,136($sp)
    ld	$a5,168($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a4,$s5
    move	$a3,$zero
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    # Line 3082
    ld	$a2,168($sp)
    # Line 3080
    ld	$a4,160($sp)
    # Line 3081
    ld	$a3,136($sp)
    sw	$a3,4($s0)
    # Line 3080
    sw	$a4,0($s0)
    # Line 3082
    move	$t9,$s4
    lw	$a1,32($sp)
    li	$a0,3316
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3083
    lw	$a1,36($sp)
    move	$t9,$s4
    lw	$s6,284($sp)
    li	$a0,3315
    lw	$s7,292($sp)
    jalr	$t9
    addu	$a1,$a1,$s8
    # Line 3084
    ld	$a5,160($sp)
    ld	$a6,136($sp)
    lw	$a7,276($sp)
    move	$a0,$s2
    sw	$s7,12($sp)
    move	$a1,$s0
    sw	$s6,4($sp)
    move	$t9,$s3
    move	$a2,$zero
    move	$a3,$zero
    lw	$t0,0($s1)
    move	$a4,$s5
    bal __glKonGetTexParameter
    sw	$t0,20($sp)
    ld	$s1,192($sp)
.L0d96b900:
    # Line 3131
    move	$t9,$s4
    ld	$s3,176($sp)
    lw	$a1,32($sp)
    jalr	$t9
    li	$a0,3316
    # Line 3132
    move	$t9,$s4
    lw	$a1,36($sp)
    jalr	$t9
    li	$a0,3315
    # Line 3133
    move	$t9,$s4
    lw	$a1,40($sp)
    jalr	$t9
    li	$a0,3314
    ld	$s4,184($sp)
    # Line 3134
    ld	$s0,96($sp)
    ld	$s2,88($sp)
    ld	$s5,80($sp)
    ld	$ra,112($sp)
    ld	$s6,120($sp)
    ld	$s7,104($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d96b95c:
    # Line 2959
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    li	$a0,3314
    jal	__glkonim_PixelStorei
    move	$a1,$t1
    b	.L0d96b390
    lw	$t1,4($s1)
.L0d96b974:
    # Line 3099
    beqz	$a0,.L0d96bb38
    lw	$t1,4($s1)
    # Line 3105
    sw	$t1,0($s0)
    # Line 3106
    lw	$t1,56($sp)
    sd	$t1,128($sp)
    # Line 3108
    move	$t9,$s4
    # Line 3106
    sw	$t1,4($s0)
    # Line 3108
    li	$a0,3315
    jalr	$t9
    lw	$a1,36($sp)
    # Line 3109
    ld	$a6,128($sp)
    ld	$a5,152($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a4,$s5
    lw	$t0,0($s1)
    addu	$a3,$a3,$s8
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    # Line 3115
    ld	$a2,128($sp)
    lw	$s8,292($sp)
    # Line 3112
    lw	$a4,4($s1)
    # Line 3113
    lw	$a3,52($sp)
    sw	$a3,4($s0)
    # Line 3112
    sw	$a4,0($s0)
    # Line 3115
    move	$t9,$s4
    lw	$a1,36($sp)
    li	$a0,3315
    # Line 3113
    sd	$a3,136($sp)
    # Line 3115
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3116
    ld	$a6,136($sp)
    ld	$a5,152($sp)
    lw	$a7,276($sp)
    lw	$t1,284($sp)
    lw	$a2,8($s6)
    move	$a0,$s2
    sw	$s8,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t1,4($sp)
    move	$a4,$s5
    move	$a3,$zero
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    b	.L0d96b900
    ld	$s1,192($sp)
.L0d96ba5c:
    # Line 3088
    ld	$t3,168($sp)
    sw	$t3,0($s0)
    # Line 3091
    move	$t9,$s4
    # Line 3089
    lw	$t2,8($s1)
    sw	$t2,4($s0)
    # Line 3091
    li	$a0,3316
    jalr	$t9
    lw	$a1,32($sp)
    # Line 3092
    ld	$a6,144($sp)
    ld	$a5,168($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a4,$s5
    lw	$t0,0($s1)
    addu	$a3,$a3,$s8
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    # Line 3098
    ld	$a2,168($sp)
    # Line 3095
    ld	$a4,160($sp)
    sw	$a4,0($s0)
    # Line 3096
    lw	$a3,8($s1)
    sw	$a3,4($s0)
    # Line 3098
    move	$t9,$s4
    lw	$a1,32($sp)
    li	$a0,3316
    jalr	$t9
    addu	$a1,$a1,$a2
    # Line 3099
    ld	$a6,144($sp)
    ld	$a5,160($sp)
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a0,$s2
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a2,$zero
    move	$a4,$s5
    lw	$t0,0($s1)
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a3,$a3,$s8
    b	.L0d96b900
    ld	$s1,192($sp)
.L0d96bb38:
    # Line 3125
    ld	$a6,144($sp)
    ld	$a5,152($sp)
    # Line 3122
    sw	$t1,0($s0)
    # Line 3123
    lw	$t3,8($s1)
    sw	$t3,4($s0)
    # Line 3125
    lw	$a7,276($sp)
    lw	$t2,284($sp)
    lw	$a2,8($s6)
    lw	$a3,12($s6)
    lw	$t1,292($sp)
    move	$a4,$s5
    sw	$t1,12($sp)
    move	$a1,$s0
    move	$t9,$s3
    sw	$t2,4($sp)
    move	$a0,$s2
    lw	$t0,0($s1)
    addu	$a3,$a3,$s8
    sw	$t0,20($sp)
    bal __glKonGetTexParameter
    addu	$a2,$a2,$s7
    b	.L0d96b900
    ld	$s1,192($sp)
.end subloadPyramidLevel

# Function: subloadClipLevel
# Declared: Line 3137 (Source lines: 3140-3157)
# Address: 0x0d96bba0 - 0x0d96bc80 (Size: 224 bytes, Frame: 128)
.ent subloadClipLevel
subloadClipLevel:
    # Line 3140
    addiu	$sp,$sp,-128
    # Line 3144
    lw	$at,436($a0)
    # Line 3140
    move	$t2,$a3
    sd	$a2,32($sp)
    move	$t1,$a4
    move	$t8,$a6
    sd	$a5,40($sp)
    move	$t3,$a7
    # Line 3144
    beqz	$at,.L0d96bbe8
    sd	$ra,48($sp)
    lw	$v0,348($a0)
    slt	$v0,$v0,$a1
    bnez	$v0,.L0d96bc78
    ld	$ra,48($sp)
    # Line 3147
    lw	$v1,404($a0)
    slt	$v1,$v1,$a1
    bnez	$v1,.L0d96bc44
    # Line 3154
    ld	$a2,32($sp)
.L0d96bbe8:
    # Line 3151
    ld	$a4,40($sp)
    lw	$a7,132($sp)
    lw	$ra,140($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 3148
    lw	$t0,156($sp)
    ld	$a1,32($sp)
    lw	$v0,4($t0)
    sw	$v0,0($a1)
    # Line 3149
    lw	$at,8($t0)
    sw	$at,4($a1)
    # Line 3151
    sw	$ra,4($sp)
    move	$a6,$t3
    lw	$t3,148($sp)
    addiu	$t9,$t9,-21456
    sw	$t3,12($sp)
    move	$a5,$t8
    move	$a3,$t1
    lw	$t0,0($t0)
    move	$a2,$t2
    bal __glKonGetTexParameter
    sw	$t0,20($sp)
    b	.L0d96bc78
    ld	$ra,48($sp)
.L0d96bc44:
    # Line 3154
    ld	$a5,40($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$at,132($sp)
    sw	$at,4($sp)
    lw	$ra,140($sp)
    sw	$ra,12($sp)
    lw	$t0,148($sp)
    addiu	$t9,$t9,-19728
    sw	$t0,20($sp)
    lw	$v1,156($sp)
    bal __glKonGetTexParameter
    sw	$v1,28($sp)
    ld	$ra,48($sp)
.L0d96bc78:
    # Line 3157
    jr	$ra
    addiu	$sp,$sp,128
.end subloadClipLevel

# Function: subloadLevel
# Declared: Line 3165 (Source lines: 3169-3375)
# Address: 0x0d96bc80 - 0x0d96c4cc (Size: 2124 bytes, Frame: 144)
.ent subloadLevel
subloadLevel:
    # Line 3169
    addiu	$sp,$sp,-528
    sd	$a5,400($sp)
    sd	$a6,376($sp)
    sd	$s5,312($sp)
    sd	$s8,296($sp)
    sd	$s6,352($sp)
    sd	$s4,344($sp)
    sd	$s3,360($sp)
    sd	$s1,320($sp)
    move	$s1,$a1
    # Line 3182
    lw	$t3,32($a1)
    # Line 3169
    move	$s3,$a2
    move	$s4,$a4
    # Line 3187
    lw	$v0,336($a1)
    # Line 3169
    move	$s6,$a7
    # Line 3190
    li	$t9,0x8170
    # Line 3169
    sd	$s7,336($sp)
    move	$t1,$a3
    # Line 3182
    lui	$t2,0x40
    # Line 3178
    lw	$s7,284($a1)
    andi	$t8,$a2,0x1
    # Line 3182
    and	$t3,$t3,$t2
    # Line 3188
    lw	$v1,340($a1)
    # Line 3190
    lw	$a0,364($a1)
    # Line 3182
    sltu	$t3,$zero,$t3
    # Line 3187
    subu	$v0,$v0,$a2
    # Line 3178
    xor	$s7,$s7,$t8
    # Line 3169
    sd	$s0,328($sp)
    # Line 3188
    subu	$v1,$v1,$a2
    # Line 3178
    sltiu	$s7,$s7,1
    # Line 3186
    lw	$s0,332($a1)
    # Line 3188
    slti	$a3,$v1,0
    movn	$v1,$zero,$a3
    sd	$v1,384($sp)
    # Line 3187
    slti	$v1,$v0,0
    sd	$s2,288($sp)
    # Line 3186
    subu	$s0,$s0,$a2
    # Line 3187
    movn	$v0,$zero,$v1
    # Line 3186
    slti	$at,$s0,0
    # Line 3187
    sd	$v0,408($sp)
    # Line 3190
    beq	$a0,$t9,.L0d96bd78
    # Line 3186
    movn	$s0,$zero,$at
    # Line 3190
    li	$at,0x844d
    beq	$a0,$at,.L0d96bd78
    li	$v0,0x844e
    beq	$a0,$v0,.L0d96bd78
    li	$v1,0x844f
    beq	$a0,$v1,.L0d96bd78
    # Line 3195
    ld	$s5,408($sp)
    lw	$a0,376($a1)
    # Line 3194
    addu	$s8,$t3,$s0
    # Line 3196
    ld	$a1,384($sp)
    sd	$t8,280($sp)
    move	$s2,$zero
    # Line 3195
    li	$a7,3
    sd	$ra,304($sp)
    addu	$s5,$t3,$s5
    # Line 3196
    addu	$a1,$a1,$t3
    sd	$t1,272($sp)
    xor	$a0,$a0,$a7
    b	.L0d96bdec
    movz	$s2,$a1,$a0
.L0d96bd78:
    sd	$t8,280($sp)
    # Line 3200
    lw	$t9,436($s1)
    sd	$ra,304($sp)
    # Line 3198
    sll	$s2,$s3,0x2
    sd	$t1,272($sp)
    addu	$s2,$s1,$s2
    # Line 3200
    beqz	$t9,.L0d96c134
    # Line 3198
    lw	$s2,124($s2)
    # Line 3200
    lw	$t8,404($s1)
    slt	$t8,$t8,$s3
    beqz	$t8,.L0d96c138
    # Line 3205
    la	$s5,sub_0d970000
    # Line 3204
    lw	$ra,8($s2)
    # Line 3202
    lw	$s8,408($s1)
    # Line 3205
    lw	$at,12($s2)
    # Line 3204
    li	$t2,1
    sllv	$t9,$t2,$s8
    # Line 3205
    subu	$at,$t9,$at
    # Line 3204
    subu	$t9,$t9,$ra
    # Line 3203
    move	$s5,$s8
    # Line 3205
    ld	$ra,400($sp)
    # Line 3204
    sra	$t9,$t9,0x1
    # Line 3203
    sd	$s8,408($sp)
    # Line 3202
    move	$s0,$s8
    # Line 3205
    sra	$at,$at,0x1
    addu	$ra,$ra,$at
    sd	$ra,400($sp)
    # Line 3204
    addu	$s4,$s4,$t9
    # Line 3210
    move	$s2,$zero
.L0d96bdec:
    # Line 3213
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s1
    addiu	$t9,$t9,-21200
    addiu	$a3,$sp,56
    addiu	$a2,$sp,52
    bal __glKonGetTexParameter
    addiu	$a1,$sp,48
    # Line 3217
    lw	$a5,52($sp)
    ld	$a6,408($sp)
    # Line 3221
    lw	$a2,56($sp)
    ld	$a3,384($sp)
    # Line 3228
    li	$a1,3
    # Line 3217
    slt	$a4,$a6,$a5
    movn	$s5,$a5,$a4
    # Line 3221
    slt	$a7,$a3,$a2
    movn	$s2,$a2,$a7
    # Line 3224
    subu	$a2,$a2,$a3
    # Line 3213
    lw	$a3,48($sp)
    # Line 3228
    lw	$a0,12($s1)
    # Line 3220
    subu	$a5,$a5,$a6
    movz	$a2,$zero,$a7
    movz	$a5,$zero,$a4
    # Line 3213
    slt	$ra,$s0,$a3
    li	$t3,1
    movn	$s8,$a3,$ra
    # Line 3216
    subu	$a3,$a3,$s0
    # Line 3228
    beq	$a0,$a1,.L0d96c0c4
    movz	$a3,$zero,$ra
    beqz	$a0,.L0d96c2ac
    # Line 3235
    sltiu	$v1,$s7,1
    # Line 3228
    beq	$a0,$t3,.L0d96c2f4
    li	$a4,2
    beq	$a0,$a4,.L0d96c318
    li	$a6,4
    beq	$a0,$a6,.L0d96c354
    sd	$s3,264($sp)
.L0d96be7c:
    # Line 3263
    ld	$t2,272($sp)
    la	$s3,intern_format_arr3
    sll	$t2,$t2,0x4
    andi	$v0,$a0,0x3
    addu	$t2,$t2,$s3
    sll	$v1,$v0,0x2
    lw	$s3,8($t2)
    # Line 3273
    la	$ra,index_2_target_map
    # Line 3263
    subu	$v1,$v1,$v0
    # Line 3271
    lw	$a7,540($sp)
    # Line 3263
    sll	$v1,$v1,0x1
    addu	$a6,$s3,$s3
    la	$at,st_bits_per_page
    addu	$v1,$v1,$a6
    # Line 3271
    sw	$a7,80($sp)
    # Line 3263
    sll	$v1,$v1,0x2
    # Line 3273
    lw	$a4,376($s1)
    # Line 3263
    addu	$at,$at,$v1
    sll	$v0,$v0,0x5
    lw	$t8,0($at)
    # Line 3273
    sll	$a4,$a4,0x2
    # Line 3263
    lw	$at,4($at)
    # Line 3276
    li	$t9,0x81a5
    # Line 3263
    sll	$v1,$s7,0x3
    # Line 3273
    addu	$ra,$ra,$a4
    # Line 3276
    lw	$t1,0($t2)
    # Line 3263
    sll	$at,$at,0xb
    or	$s3,$s3,$v1
    sll	$t8,$t8,0x7
    # Line 3273
    lw	$ra,0($ra)
    # Line 3263
    or	$s3,$s3,$v0
    or	$t8,$t8,$at
    # Line 3273
    sw	$ra,104($sp)
    # Line 3276
    beq	$t1,$t9,.L0d96c020
    # Line 3263
    or	$s3,$s3,$t8
    # Line 3276
    li	$t8,0x81a6
    beq	$t1,$t8,.L0d96c024
    # Line 3279
    li	$v0,6145
    # Line 3276
    li	$t9,0x81a7
    beq	$t1,$t9,.L0d96c020
    # Line 3281
    li	$ra,6144
    sw	$ra,88($sp)
.L0d96bf24:
    lw	$t1,548($sp)
    lw	$at,0($t1)
    beqz	$at,.L0d96c038
    lw	$a0,12($t1)
    # Line 3285
    sw	$a0,108($sp)
    # Line 3286
    lw	$v0,16($t1)
    sw	$v0,112($sp)
.L0d96bf40:
    # Line 3302
    lw	$a0,12($t2)
    beq	$a0,$t3,.L0d96c0b8
    li	$v1,2
    beq	$a0,$v1,.L0d96c2e4
    nop
    beq	$a0,$a1,.L0d96c030
    # Line 3311
    li	$v1,16
    # Line 3302
    li	$a1,4
    beq	$a0,$a1,.L0d96c030
    # Line 3311
    li	$v1,16
.L0d96bf68:
    # Line 3313
    lw	$a4,32($s1)
    lui	$a6,0x40
    and	$a4,$a4,$a6
    beqz	$a4,.L0d96c050
    nop
    lw	$t9,0($t1)
    sll	$s7,$s5,0x4
    or	$s7,$s7,$s8
    sll	$t8,$s2,0x8
    lw	$t2,532($sp)
    beqz	$t9,.L0d96c0e8
    or	$s7,$s7,$t8
    # Line 3317
    sw	$t1,36($sp)
    sw	$s3,20($sp)
    ld	$a4,376($sp)
    move	$a0,$s1
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a7,$s8
    move	$a6,$t2
    sw	$s7,12($sp)
    move	$a5,$s6
    ld	$a3,400($sp)
    addiu	$t9,$t9,-20336
    move	$a2,$s4
    sw	$s5,4($sp)
    addiu	$ra,$sp,64
    sw	$ra,28($sp)
    bal __glKonGetTexParameter
    addiu	$a1,$sp,72
.L0d96bfdc:
    # Line 3372
    li	$v0,374
.L0d96bfe0:
    sw	$v0,16384($zero)
    # Line 3375
    ld	$s0,328($sp)
    # Line 3372
    lw	$at,272($s1)
    # Line 3375
    ld	$s1,320($sp)
    ld	$s2,288($sp)
    ld	$s3,360($sp)
    ld	$s4,344($sp)
    ld	$s5,312($sp)
    ld	$s6,352($sp)
    ld	$s7,336($sp)
    ld	$ra,304($sp)
    ld	$s8,296($sp)
    # Line 3372
    lw	$at,4($at)
    # Line 3375
    addiu	$sp,$sp,528
    jr	$ra
    # Line 3372
    sw	$at,16384($zero)
.L0d96c020:
    # Line 3279
    li	$v0,6145
.L0d96c024:
    b	.L0d96bf24
    sw	$v0,88($sp)
    # Line 3311
    li	$v1,16
.L0d96c030:
    # Line 3312
    b	.L0d96bf68
    # Line 3311
    sw	$v1,172($sp)
.L0d96c038:
    # Line 3289
    sw	$a0,84($sp)
    # Line 3290
    lw	$a6,16($t1)
    sw	$a6,88($sp)
    # Line 3291
    lw	$a4,20($t1)
    b	.L0d96bf40
    sw	$a4,92($sp)
.L0d96c050:
    # Line 3320
    addu	$a7,$a5,$a3
    addu	$a7,$a2,$a7
    beqz	$a7,.L0d96c370
    # Line 3353
    sllv	$t0,$t3,$a2
    sd	$t0,368($sp)
    sd	$s2,456($sp)
    # Line 3352
    lw	$t8,4($t1)
    sw	$t8,72($sp)
    # Line 3353
    lw	$t2,8($t1)
    blez	$t0,.L0d96bfdc
    sw	$t2,76($sp)
    la	$s2,sub_0d970000
    sllv	$s7,$t3,$a5
    sd	$s7,416($sp)
    sllv	$t8,$t3,$a3
    sd	$t8,448($sp)
    sll	$s7,$s5,0x4
    ld	$t8,456($sp)
    sd	$zero,392($sp)
    or	$s7,$s7,$s8
    sd	$s4,440($sp)
    addiu	$s2,$s2,-21456
    sll	$t8,$t8,0x8
    sd	$s0,432($sp)
    b	.L0d96c184
    or	$s7,$s7,$t8
.L0d96c0b8:
    # Line 3304
    lw	$t9,4($t2)
    b	.L0d96bf68
    sw	$t9,172($sp)
.L0d96c0c4:
    # Line 3230
    lw	$at,252($s1)
    lw	$at,0($at)
    sw	$at,64($sp)
    # Line 3231
    lw	$ra,252($s1)
    sd	$s3,264($sp)
    lw	$ra,4($ra)
    sw	$ra,68($sp)
    b	.L0d96be7c
    lw	$a0,12($s1)
.L0d96c0e8:
    # Line 3320
    sw	$s3,36($sp)
    sw	$s7,28($sp)
    sw	$s2,20($sp)
    ld	$a4,376($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s1
    move	$a6,$t2
    sw	$s5,12($sp)
    move	$a5,$s6
    ld	$a3,400($sp)
    addiu	$t9,$t9,-21056
    move	$a2,$s4
    sw	$s8,4($sp)
    addiu	$ra,$sp,64
    sw	$ra,44($sp)
    bal __glKonGetTexParameter
    addiu	$a1,$sp,72
    b	.L0d96bfe0
    # Line 3372
    li	$v0,374
.L0d96c134:
    # Line 3205
    la	$s5,sub_0d970000
.L0d96c138:
    addiu	$s5,$s5,-13664
    # Line 3207
    move	$t9,$s5
    bal __glKonGetTexParameter
    lw	$a0,8($s2)
    # Line 3208
    move	$t9,$s5
    # Line 3207
    move	$s0,$v0
    move	$s8,$v0
    # Line 3208
    bal __glKonGetTexParameter
    lw	$a0,12($s2)
    move	$s5,$v0
    sd	$v0,408($sp)
    b	.L0d96bdec
    # Line 3210
    move	$s2,$zero
    nop
.L0d96c170:
    # Line 3355
    ld	$ra,392($sp)
    ld	$t9,368($sp)
    addiu	$ra,$ra,1
    beq	$t9,$ra,.L0d96bfdc
    sd	$ra,392($sp)
.L0d96c184:
    # Line 3353
    ld	$at,416($sp)
    blez	$at,.L0d96c170
    ld	$t9,384($sp)
    ld	$t8,392($sp)
    ld	$s5,376($sp)
    sllv	$t8,$t8,$t9
    sd	$zero,424($sp)
    b	.L0d96c4c0
    addu	$s5,$s5,$t8
    nop
    nop
.L0d96c1b0:
    # Line 3356
    ld	$at,424($sp)
    ld	$ra,416($sp)
    addiu	$at,$at,1
    # Line 3353
    move	$s0,$zero
    # Line 3356
    beq	$ra,$at,.L0d96c170
    sd	$at,424($sp)
    # Line 3353
    ld	$v0,448($sp)
.L0d96c1cc:
    ld	$t8,424($sp)
    ld	$s4,400($sp)
    blez	$v0,.L0d96c1b0
    ld	$t9,408($sp)
    sllv	$t8,$t8,$t9
    b	.L0d96c1f8
    addu	$s4,$s4,$t8
    nop
    # Line 3357
    ld	$ra,448($sp)
.L0d96c1f0:
    addiu	$s0,$s0,1
    beq	$ra,$s0,.L0d96c1b0
.L0d96c1f8:
    # Line 3358
    lw	$a6,532($sp)
    lw	$at,548($sp)
    move	$a7,$s7
    addiu	$v0,$sp,64
    sw	$v0,12($sp)
    move	$a5,$s6
    move	$a4,$s5
    ld	$ra,432($sp)
    move	$a3,$s4
    addiu	$a1,$sp,72
    ld	$s8,440($sp)
    sw	$s3,4($sp)
    move	$t9,$s2
    sllv	$ra,$s0,$ra
    move	$a0,$s1
    lw	$at,0($at)
    addu	$s8,$s8,$ra
    sw	$at,20($sp)
    bal __glKonGetTexParameter
    move	$a2,$s8
    lw	$v1,12($s1)
    li	$a0,4
    bne	$v1,$a0,.L0d96c1f0
    # Line 3357
    ld	$ra,448($sp)
    # Line 3365
    move	$a7,$s7
    move	$a5,$s6
    move	$a4,$s5
    lw	$a6,532($sp)
    move	$a3,$s4
    # Line 3363
    li	$t8,-25
    # Line 3365
    lw	$t0,548($sp)
    addiu	$t1,$sp,64
    sw	$t1,12($sp)
    # Line 3363
    and	$s3,$t8,$s3
    # Line 3365
    move	$t9,$s2
    # Line 3363
    ori	$s3,$s3,0x8
    # Line 3365
    sw	$s3,4($sp)
    move	$a2,$s8
    addiu	$a1,$sp,72
    lw	$t0,0($t0)
    move	$a0,$s1
    bal __glKonGetTexParameter
    sw	$t0,20($sp)
    b	.L0d96c1f0
    # Line 3357
    ld	$ra,448($sp)
.L0d96c2ac:
    # Line 3235
    addiu	$ra,$sp,64
    sll	$v1,$v1,0x2
    addu	$v1,$ra,$v1
    sw	$zero,0($v1)
    lw	$t9,252($s1)
    sll	$v0,$s3,0x2
    sd	$s3,264($sp)
    sll	$at,$s7,0x2
    addu	$t9,$t9,$v0
    addu	$ra,$ra,$at
    lw	$t9,0($t9)
    sw	$t9,0($ra)
    # Line 3237
    b	.L0d96be7c
    lw	$a0,12($s1)
.L0d96c2e4:
    # Line 3307
    li	$a0,8
    sw	$a0,172($sp)
    # Line 3308
    b	.L0d96bf68
    lw	$t1,548($sp)
.L0d96c2f4:
    # Line 3240
    lw	$a6,252($s1)
    lw	$a6,0($a6)
    sw	$a6,64($sp)
    # Line 3241
    lw	$a4,252($s1)
    sd	$s3,264($sp)
    lw	$a4,4($a4)
    sw	$a4,68($sp)
    # Line 3242
    b	.L0d96be7c
    lw	$a0,12($s1)
.L0d96c318:
    # Line 3246
    li	$t0,-2
    lw	$t1,252($s1)
    and	$t0,$s3,$t0
    sll	$t0,$t0,0x2
    addu	$t1,$t1,$t0
    lw	$t1,0($t1)
    sw	$t1,64($sp)
    # Line 3247
    lw	$a7,252($s1)
    sd	$s3,264($sp)
    # Line 3245
    ld	$s7,280($sp)
    # Line 3247
    addu	$a7,$a7,$t0
    lw	$a7,4($a7)
    sw	$a7,68($sp)
    # Line 3248
    b	.L0d96be7c
    lw	$a0,12($s1)
.L0d96c354:
    # Line 3252
    lw	$t2,276($s1)
    sw	$t2,64($sp)
    lw	$t1,280($s1)
    sw	$t1,68($sp)
    # Line 3254
    move	$s7,$zero
    b	.L0d96be7c
    lw	$a0,12($s1)
.L0d96c370:
    # Line 3324
    lw	$a0,364($s1)
    li	$t3,0x8170
    beq	$a0,$t3,.L0d96c464
    lw	$s0,548($sp)
    li	$t8,0x844d
    beq	$a0,$t8,.L0d96c464
    li	$t9,0x844e
    beq	$a0,$t9,.L0d96c464
    li	$ra,0x844f
    beq	$a0,$ra,.L0d96c464
    # Line 3331
    ld	$a4,376($sp)
    sd	$s2,456($sp)
    # Line 3328
    la	$s2,sub_0d970000
    lw	$ra,4($s0)
    sw	$ra,72($sp)
    # Line 3329
    lw	$t9,8($s0)
    sw	$t9,76($sp)
    # Line 3331
    move	$a5,$s6
    lw	$a6,532($sp)
    move	$a2,$s4
    addiu	$t8,$sp,64
    sw	$t8,12($sp)
    addiu	$a1,$sp,72
    sll	$s7,$s5,0x4
    ld	$t8,456($sp)
    ld	$a3,400($sp)
    or	$s7,$s7,$s8
    # Line 3328
    addiu	$s2,$s2,-21456
    # Line 3331
    sw	$s3,4($sp)
    move	$t9,$s2
    sll	$t8,$t8,0x8
    move	$a0,$s1
    lw	$at,0($s0)
    or	$s7,$s7,$t8
    sw	$at,20($sp)
    bal __glKonGetTexParameter
    move	$a7,$s7
.L0d96c404:
    # Line 3334
    lw	$at,12($s1)
    li	$v0,4
    bne	$at,$v0,.L0d96bfe0
    # Line 3372
    li	$v0,374
    # Line 3341
    ld	$a4,376($sp)
    move	$a0,$s1
    ld	$a3,400($sp)
    move	$a7,$s7
    lw	$a6,532($sp)
    li	$a2,-25
    addiu	$a1,$sp,64
    sw	$a1,12($sp)
    and	$a2,$s3,$a2
    move	$t9,$s2
    ori	$a2,$a2,0x8
    sw	$a2,4($sp)
    move	$a5,$s6
    addiu	$a1,$sp,72
    lw	$v1,0($s0)
    move	$a2,$s4
    bal __glKonGetTexParameter
    sw	$v1,20($sp)
    b	.L0d96bfe0
    # Line 3372
    li	$v0,374
.L0d96c464:
    # Line 3334
    ld	$a5,376($sp)
    ld	$a4,400($sp)
    lw	$a7,532($sp)
    move	$a6,$s6
    sw	$s0,28($sp)
    move	$a3,$s4
    addiu	$a2,$sp,72
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a1,264($sp)
    move	$a0,$s1
    addiu	$ra,$sp,64
    sw	$s3,12($sp)
    sll	$s7,$s5,0x4
    addiu	$t9,$t9,-17504
    sw	$ra,20($sp)
    sll	$t8,$s2,0x8
    or	$s7,$s7,$s8
    or	$s7,$s7,$t8
    bal __glKonGetTexParameter
    sw	$s7,4($sp)
    la	$s2,sub_0d970000
    b	.L0d96c404
    addiu	$s2,$s2,-21456
.L0d96c4c0:
    # Line 3353
    move	$s0,$zero
    b	.L0d96c1cc
    ld	$v0,448($sp)
.end subloadLevel

# Function: subgetSimple
# Declared: Line 3378 (Source lines: 3382-3409)
# Address: 0x0d96c4d0 - 0x0d96c570 (Size: 160 bytes, Frame: 208)
.ent subgetSimple
subgetSimple:
    # Line 3382
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    # Line 3392
    sw	$zero,48($a1)
    # Line 3405
    # lw $t9, -32248($gp) # &__glkonReadTexels3D
    # Line 3393
    sw	$a2,52($a1)
    # Line 3394
    sw	$a3,56($a1)
    # Line 3395
    sw	$a4,68($a1)
    # Line 3398
    addu	$a4,$a4,$a7
    # Line 3396
    addu	$t0,$a2,$a5
    # Line 3397
    addu	$a5,$a3,$a6
    # Line 3398
    addiu	$a4,$a4,-1
    sw	$a4,72($a1)
    # Line 3397
    addiu	$a5,$a5,-1
    sw	$a5,64($a1)
    # Line 3396
    addiu	$t0,$t0,-1
    sw	$t0,60($a1)
    # Line 3399
    lw	$a3,84($sp)
    # Line 3400
    lw	$a2,92($sp)
    # Line 3401
    lw	$v1,100($sp)
    sw	$v1,84($a1)
    # Line 3400
    sw	$a2,80($a1)
    # Line 3402
    lw	$at,108($sp)
    # Line 3399
    sw	$a3,76($a1)
    # Line 3402
    lw	$v0,0($at)
    sw	$v0,88($a1)
    # Line 3382
    move	$s8,$a0
    # Line 3403
    lw	$at,4($at)
    # Line 3382
    move	$a0,$a1
    # Line 3405
    jal	__glkonReadTexels3D
    # Line 3403
    sw	$at,92($a1)
    # Line 3406
    lw	$t1,32($s8)
    lui	$t2,0xfffd
    ld	$ra,0($sp)
    ori	$t2,$t2,0xffff
    and	$t1,$t1,$t2
    sw	$t1,32($s8)
    # Line 3409
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end subgetSimple

# Function: getLevel
# Declared: Line 3416 (Source lines: 3418-3608)
# Address: 0x0d96c570 - 0x0d96c9e4 (Size: 1140 bytes, Frame: 176)
.ent getLevel
getLevel:
    # Line 3418
    addiu	$sp,$sp,-432
    sd	$a2,304($sp)
    sd	$a3,288($sp)
    sd	$a4,272($sp)
    sd	$a6,280($sp)
    sd	$s6,368($sp)
    # Line 3422
    lw	$s6,72($a1)
    # Line 3418
    sd	$s5,336($sp)
    # Line 3420
    lw	$s5,64($a1)
    sd	$s2,392($sp)
    sd	$ra,344($sp)
    # Line 3418
    sd	$s7,352($sp)
    sd	$s0,360($sp)
    # Line 3429
    lw	$t8,4112($zero)
    # Line 3418
    sd	$s1,328($sp)
    la	$s1,sub_0d970000
    # Line 3429
    li	$t9,0x8ad0
    # Line 3418
    sd	$s3,376($sp)
    # Line 3430
    sll	$s3,$a2,0x2
    sd	$s3,296($sp)
    addu	$s3,$s3,$a1
    # Line 3418
    addiu	$s1,$s1,-13664
    # Line 3429
    addu	$t8,$t8,$t9
    # Line 3430
    lw	$s3,124($s3)
    # Line 3442
    move	$t9,$s1
    # Line 3418
    move	$s0,$a1
    # Line 3429
    sd	$t8,320($sp)
    # Line 3418
    move	$s7,$a5
    # Line 3442
    bal __glKonGetTexParameter
    lw	$a0,8($s3)
    # Line 3443
    move	$t9,$s1
    lw	$a0,12($s3)
    # Line 3442
    move	$s2,$v0
    # Line 3443
    bal __glKonGetTexParameter
    sd	$s4,384($sp)
    # Line 3444
    move	$t9,$s1
    # Line 3443
    move	$s4,$v0
    # Line 3444
    bal __glKonGetTexParameter
    lw	$a0,16($s3)
    # Line 3450
    lw	$a5,104($s0)
    # Line 3444
    move	$s1,$v0
    # Line 3445
    lw	$t8,376($s0)
    # Line 3450
    sra	$t9,$a5,0x16
    # Line 3445
    li	$ra,3
    # Line 3450
    andi	$t9,$t9,0x1
    # Line 3445
    move	$s3,$v0
    xor	$t8,$t8,$ra
    # Line 3450
    sd	$t9,312($sp)
    # Line 3445
    sltiu	$t8,$t8,1
    # Line 3450
    beqz	$t9,.L0d96c67c
    # Line 3445
    movz	$s3,$zero,$t8
    # Line 3455
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 3453
    lui	$a1,0xffbf
    # Line 3455
    addiu	$t9,$t9,-23616
    move	$a0,$s0
    # Line 3453
    ori	$a1,$a1,0xffff
    and	$a1,$a5,$a1
    # Line 3455
    bal __glKonGetTexParameter
    # Line 3453
    sw	$a1,104($s0)
    # Line 3456
    lw	$a2,104($s0)
    lui	$a3,0xffbf
    ori	$a3,$a3,0xffff
    and	$a2,$a2,$a3
    ld	$a3,312($sp)
    sll	$a3,$a3,0x16
    or	$a2,$a2,$a3
    sw	$a2,104($s0)
.L0d96c67c:
    # Line 3498
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s0
    addiu	$t9,$t9,-21200
    addiu	$a3,$sp,40
    addiu	$a2,$sp,36
    bal __glKonGetTexParameter
    addiu	$a1,$sp,32
    ld	$v0,272($sp)
    # Line 3501
    lw	$a4,36($sp)
    # Line 3504
    li	$a7,4
    lw	$a0,12($s0)
    li	$at,3
    # Line 3500
    lw	$a3,32($sp)
    # Line 3501
    slt	$v1,$s4,$a4
    ld	$a1,280($sp)
    # Line 3504
    li	$a6,2
    # Line 3501
    movz	$a4,$s4,$v1
    ld	$a2,288($sp)
    # Line 3500
    slt	$ra,$s2,$a3
    # Line 3504
    beq	$a0,$at,.L0d96c914
    # Line 3500
    movz	$a3,$s2,$ra
    # Line 3504
    beqz	$a0,.L0d96c8d0
    li	$a5,1
    beq	$a0,$a5,.L0d96c980
    nop
    beq	$a0,$a6,.L0d96c938
    nop
    beq	$a0,$a7,.L0d96c9a0
    sd	$s3,264($sp)
.L0d96c6f0:
    # Line 3557
    sw	$a2,100($sp)
    # Line 3556
    sw	$a1,76($sp)
    # Line 3555
    sw	$s7,72($sp)
    # Line 3554
    sw	$v0,68($sp)
    # Line 3559
    lw	$v1,376($s0)
    # Line 3568
    sllv	$a7,$a5,$s1
    sw	$a7,64($sp)
    # Line 3567
    sllv	$a6,$a5,$s4
    sw	$a6,60($sp)
    # Line 3566
    sllv	$s3,$a5,$s2
    sw	$s3,56($sp)
    # Line 3559
    la	$at,index_2_target_map
    # Line 3549
    ld	$ra,264($sp)
    # Line 3559
    sll	$v1,$v1,0x2
    # Line 3549
    lw	$t3,40($sp)
    # Line 3559
    addu	$at,$at,$v1
    lw	$at,0($at)
    sw	$at,88($sp)
    # Line 3549
    sll	$t2,$a4,0x4
    slt	$t9,$s1,$t3
    # Line 3570
    lbu	$t8,400($s0)
    # Line 3549
    movz	$t3,$ra,$t9
    or	$t2,$t2,$a3
    sll	$t3,$t3,0x8
    # Line 3570
    beqz	$t8,.L0d96c890
    # Line 3549
    or	$t2,$t2,$t3
    # Line 3570
    ld	$a1,320($sp)
    lw	$a0,412($a1)
    addiu	$a1,$a1,324
    beq	$a0,$a1,.L0d96c894
    # Line 3605
    move	$a0,$s0
    # Line 3579
    sw	$zero,256($sp)
    # Line 3578
    sw	$zero,252($sp)
    # Line 3577
    sw	$zero,248($sp)
    sd	$t2,400($sp)
    sd	$a6,408($sp)
    sd	$a7,416($sp)
    # Line 3583
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    ld	$s7,416($sp)
    addiu	$a1,$sp,248
    ld	$s4,408($sp)
    li	$a0,3332
    jal	__glkonim_GetIntegerv
    ld	$s2,400($sp)
    # Line 3584
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,252
    jal	__glkonim_GetIntegerv
    li	$a0,3331
    # Line 3585
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,256
    jal	__glkonim_GetIntegerv
    li	$a0,3330
    # Line 3592
    la	$s1,__glkonim_PixelStorei
    lw	$a1,248($sp)
    move	$t9,$s1
    li	$a0,3332
    jalr	$t9
    addiu	$a1,$a1,1
    # Line 3593
    lw	$a1,252($sp)
    move	$t9,$s1
    li	$a0,3331
    jalr	$t9
    addiu	$a1,$a1,1
    lw	$a2,256($sp)
    beqz	$a2,.L0d96c9b4
    # Line 3597
    move	$a0,$s0
.L0d96c7f8:
    move	$a7,$s7
    move	$a6,$s4
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a5,$s3
    sw	$s6,20($sp)
    move	$a4,$zero
    sw	$s2,12($sp)
    move	$a3,$zero
    addiu	$t9,$t9,-15152
    move	$a2,$zero
    sw	$s5,4($sp)
    addiu	$ra,$sp,48
    sw	$ra,28($sp)
    bal __glKonGetTexParameter
    addiu	$a1,$sp,56
    # Line 3601
    move	$t9,$s1
    lw	$a1,248($sp)
    jal	sub_0d970000
    li	$a0,3332
    # Line 3602
    move	$t9,$s1
    lw	$a1,252($sp)
    jalr	$t9
    li	$a0,3331
    # Line 3603
    move	$t9,$s1
    lw	$a1,256($sp)
    jalr	$t9
    li	$a0,3330
    ld	$s2,392($sp)
.L0d96c868:
    ld	$s4,384($sp)
    # Line 3608
    ld	$s0,360($sp)
    ld	$s1,328($sp)
    ld	$s3,376($sp)
    ld	$ra,344($sp)
    ld	$s5,336($sp)
    ld	$s6,368($sp)
    ld	$s7,352($sp)
    jr	$ra
    addiu	$sp,$sp,432
.L0d96c890:
    # Line 3605
    move	$a0,$s0
.L0d96c894:
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a5,$s3
    sw	$s6,20($sp)
    move	$a4,$zero
    sw	$t2,12($sp)
    move	$a3,$zero
    addiu	$t9,$t9,-15152
    move	$a2,$zero
    sw	$s5,4($sp)
    addiu	$ra,$sp,48
    sw	$ra,28($sp)
    bal __glKonGetTexParameter
    addiu	$a1,$sp,56
    b	.L0d96c868
    ld	$s2,392($sp)
.L0d96c8d0:
    # Line 3515
    ld	$at,304($sp)
    andi	$at,$at,0x1
    # Line 3518
    ld	$ra,296($sp)
    # Line 3516
    lui	$t8,0x1000
    # Line 3518
    lw	$t9,252($s0)
    # Line 3515
    beqz	$at,.L0d96c8fc
    # Line 3516
    nor	$t8,$t8,$zero
    lw	$v1,284($s0)
    and	$s5,$s5,$t8
    sll	$v1,$v1,0x1c
    or	$s5,$v1,$s5
.L0d96c8fc:
    # Line 3518
    addu	$t9,$t9,$ra
    sd	$s3,264($sp)
    lw	$t9,0($t9)
    # Line 3519
    sw	$zero,52($sp)
    # Line 3520
    b	.L0d96c6f0
    # Line 3518
    sw	$t9,48($sp)
.L0d96c914:
    # Line 3506
    lw	$v1,252($s0)
    lw	$v1,0($v1)
    sw	$v1,48($sp)
    # Line 3507
    lw	$at,252($s0)
    sd	$s3,264($sp)
    lw	$at,4($at)
    li	$a5,1
    b	.L0d96c6f0
    sw	$at,52($sp)
.L0d96c938:
    # Line 3532
    ld	$a7,304($sp)
    li	$a6,-2
    lw	$a0,252($s0)
    and	$a6,$a7,$a6
    andi	$a7,$a7,0x1
    sll	$a6,$a6,0x2
    sd	$s3,264($sp)
    addu	$a0,$a6,$a0
    # Line 3533
    lui	$t0,0x1000
    # Line 3532
    beqz	$a7,.L0d96c9cc
    lw	$a0,0($a0)
    # Line 3534
    sw	$a0,52($sp)
    # Line 3535
    lw	$a7,252($s0)
    addu	$a7,$a7,$a6
    lw	$a7,4($a7)
    # Line 3533
    or	$s5,$s5,$t0
    # Line 3535
    b	.L0d96c6f0
    sw	$a7,48($sp)
.L0d96c980:
    # Line 3523
    lw	$t1,252($s0)
    lw	$t1,0($t1)
    sw	$t1,48($sp)
    # Line 3524
    lw	$t0,252($s0)
    sd	$s3,264($sp)
    lw	$t0,4($t0)
    # Line 3525
    b	.L0d96c6f0
    # Line 3524
    sw	$t0,52($sp)
.L0d96c9a0:
    # Line 3543
    lw	$t3,276($s0)
    sw	$t3,48($sp)
    lw	$t2,280($s0)
    # Line 3545
    b	.L0d96c6f0
    # Line 3543
    sw	$t2,52($sp)
.L0d96c9b4:
    # Line 3595
    move	$t9,$s1
    addiu	$a1,$s3,2
    jal	sub_0d970000
    li	$a0,3330
    b	.L0d96c7f8
    # Line 3597
    move	$a0,$s0
.L0d96c9cc:
    # Line 3537
    sw	$a0,48($sp)
    # Line 3538
    lw	$t8,252($s0)
    addu	$t8,$t8,$a6
    lw	$t8,4($t8)
    b	.L0d96c6f0
    sw	$t8,52($sp)
.end getLevel

# Function: validDimension
# Declared: Line 3614 (Source lines: 3615-3639)
# Address: 0x0d96c9f0 - 0x0d96ca98 (Size: 168 bytes, Frame: 32)
.ent validDimension
validDimension:
    # Line 3615
    lw	$at,-15904($gp)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$at,.L0d96ca44
    move	$s0,$a0
    # Line 3620
    lw	$v0,-15900($gp)
    beqz	$v0,.L0d96ca80
.L0d96ca0c:
    slti	$v1,$s0,4097
    bnez	$v1,.L0d96ca24
    # Line 3630
    move	$v0,$zero
    # Line 3639
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96ca24:
    # Line 3638
    sll	$v0,$a1,0x1
    subu	$v0,$s0,$v0
    # Line 3639
    addiu	$v1,$v0,-1
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    and	$v0,$v0,$v1
    jr	$ra
    sltiu	$v0,$v0,1
.L0d96ca44:
    sd	$a1,8($sp)
    # Line 3620
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    # Line 3619
    li	$a1,1
    sw	$a1,-15904($gp)
    sd	$ra,16($sp)
    # Line 3620
    jal	getenv
    addiu	$a0,$a0,-4832
    lw	$a0,-15900($gp)
    li	$a2,1
    ld	$ra,16($sp)
    movn	$a0,$a2,$v0
    ld	$a1,8($sp)
    bnez	$a0,.L0d96ca0c
    sw	$a0,-15900($gp)
.L0d96ca80:
    # Line 3630
    slti	$a3,$s0,2049
    bnez	$a3,.L0d96ca24
    # Line 3635
    move	$v0,$zero
    # Line 3639
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end validDimension

# Function: log2
# Declared: Line 3643 (Source lines: 3647-3650)
# Address: 0x0d96caa0 - 0x0d96cad8 (Size: 56 bytes, Frame: 0)
.ent log2
log2:
    # Line 3647
    sra	$a3,$a0,0x1
    beqz	$a3,.L0d96cad0
    move	$v0,$zero
    move	$v0,$zero
.L0d96cab0:
    sra	$a3,$a3,0x1
    addiu	$v0,$v0,1
    beqz	$a3,.L0d96cac8
    sra	$a3,$a3,0x1
    bnez	$a3,.L0d96cab0
    addiu	$v0,$v0,1
.L0d96cac8:
    # Line 3650
    jr	$ra
    nop
.L0d96cad0:
    jr	$ra
    nop
.end log2

# Function: areLodsConsistent
# Declared: Line 3654 (Source lines: 3655-3668)
# Address: 0x0d96cae0 - 0x0d96cbac (Size: 204 bytes, Frame: 32)
.ent areLodsConsistent
areLodsConsistent:
    # Line 3660
    lw	$a3,20($a0)
    # Line 3655
    addiu	$sp,$sp,-32
    sd	$s1,24($sp)
    # Line 3660
    lw	$s1,24($a0)
    sd	$ra,8($sp)
    slt	$at,$a3,$s1
    # Line 3655
    sd	$s2,16($sp)
    move	$s2,$a0
    # Line 3660
    bnez	$at,.L0d96cb3c
    sd	$s0,0($sp)
    sll	$s0,$s1,0x2
    addu	$s0,$a0,$s0
    sll	$a1,$a3,0x2
    addu	$a1,$s2,$a1
    nop
    nop
.L0d96cb20:
    # Line 3661
    lw	$a2,124($s0)
    bnez	$a2,.L0d96cb58
    # Line 3664
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 3660
    addiu	$s0,$s0,4
    sltu	$a3,$a1,$s0
    beqz	$a3,.L0d96cb20
    addiu	$s1,$s1,1
.L0d96cb3c:
    ld	$ra,8($sp)
.L0d96cb40:
    # Line 3668
    ld	$s0,0($sp)
    li	$v0,1
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96cb58:
    # Line 3664
    addiu	$t9,$t9,24272
    move	$a0,$s2
    bal subtractTexTableUsage
    move	$a1,$s1
    beqz	$v0,.L0d96cb88
    # Line 3668
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 3665
    move	$v0,$zero
    # Line 3668
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96cb88:
    # Line 3660
    lw	$a3,20($s2)
    addiu	$s1,$s1,1
    slt	$ra,$a3,$s1
    addiu	$s0,$s0,4
    sll	$a1,$a3,0x2
    beqz	$ra,.L0d96cb20
    addu	$a1,$s2,$a1
    b	.L0d96cb40
    ld	$ra,8($sp)
.end areLodsConsistent

# Function: copyBackLods
# Declared: Line 3675 (Source lines: 3676-3726)
# Address: 0x0d96cbb0 - 0x0d96ce44 (Size: 660 bytes, Frame: 240)
.ent copyBackLods
copyBackLods:
    # Line 3676
    addiu	$sp,$sp,-112
    sd	$s2,96($sp)
    sd	$s3,88($sp)
    sd	$ra,64($sp)
    sd	$s8,48($sp)
    sd	$a0,0($sp)
    # Line 3677
    lw	$a0,28($a1)
    la	$v1,intern_format_arr3
    # Line 3676
    sd	$s5,24($sp)
    # Line 3677
    sll	$a0,$a0,0x4
    # Line 3676
    sd	$s4,72($sp)
    # Line 3677
    addu	$v1,$v1,$a0
    lw	$v1,8($v1)
    # Line 3676
    sd	$s0,56($sp)
    sd	$s7,32($sp)
    # Line 3677
    sll	$v0,$v1,0x2
    la	$at,rdbk_format2
    subu	$v0,$v0,$v1
    # Line 3676
    sd	$s6,80($sp)
    # Line 3677
    sll	$v0,$v0,0x2
    # Line 3676
    sd	$s1,40($sp)
    # Line 3677
    addu	$at,$at,$v0
    # Line 3676
    move	$s1,$a1
    # Line 3678
    li	$s6,1
    lw	$v0,8($at)
    li	$s7,32
    move	$s0,$zero
    # Line 3677
    lw	$at,4($at)
    # Line 3678
    move	$s4,$a1
    andi	$s5,$a2,0x1
    sd	$v0,8($sp)
    andi	$s8,$a2,0x2
    b	.L0d96cc60
    sd	$at,16($sp)
    nop
    nop
.L0d96cc40:
    # Line 3723
    lw	$a1,44($s1)
    # Line 3722
    and	$a3,$a2,$s3
    sw	$a3,40($s1)
    # Line 3723
    and	$a1,$a1,$s3
    sw	$a1,44($s1)
.L0d96cc54:
    # Line 3683
    addiu	$s0,$s0,1
.L0d96cc58:
    beq	$s0,$s7,.L0d96cda0
    addiu	$s4,$s4,8
.L0d96cc60:
    # Line 3678
    andi	$a4,$s0,0x1
    # Line 3693
    sllv	$s2,$s6,$s0
    # Line 3678
    beqz	$a4,.L0d96cd90
    # Line 3693
    nor	$s3,$s2,$zero
    # Line 3685
    beqz	$s5,.L0d96ccb8
    nop
.L0d96cc78:
    # Line 3693
    lw	$a5,36($s1)
    lw	$a2,40($s1)
    lw	$a7,48($s1)
    and	$a5,$a5,$s2
    and	$a6,$s2,$a2
    beqz	$a5,.L0d96ccb8
    and	$a7,$s2,$a7
    beqz	$a6,.L0d96ccb8
    nop
    beqz	$a7,.L0d96cdd0
    # Line 3701
    nop	# was lw $t9, -32324($gp) # &__glKonSetNoModeState
.L0d96cca4:
    # Line 3723
    lw	$t0,44($s1)
    # Line 3722
    and	$t1,$a2,$s3
    sw	$t1,40($s1)
    # Line 3723
    and	$t0,$t0,$s3
    sw	$t0,44($s1)
.L0d96ccb8:
    # Line 3683
    addiu	$s0,$s0,1
.L0d96ccbc:
    # Line 3678
    andi	$t2,$s0,0x1
    # Line 3693
    sllv	$s2,$s6,$s0
    # Line 3678
    beqz	$t2,.L0d96cd80
    # Line 3693
    nor	$s3,$s2,$zero
    # Line 3685
    beqz	$s5,.L0d96cc54
    nop
.L0d96ccd4:
    # Line 3693
    lw	$t3,36($s1)
    lw	$a2,40($s1)
    lw	$t9,48($s1)
    and	$t3,$t3,$s2
    and	$t8,$s2,$a2
    beqz	$t3,.L0d96cc54
    and	$t9,$s2,$t9
    beqz	$t8,.L0d96cc54
    nop
    bnez	$t9,.L0d96cc40
    # Line 3701
    nop	# was lw $t9, -32324($gp) # &__glKonSetNoModeState
    lui	$a1,0x6000
    jal	__glKonSetNoModeState
    li	$a0,2
    # Line 3703
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24784
    move	$a0,$s1
    bal subtractTexTableUsage
    move	$a1,$s0
    # Line 3704
    ld	$a0,0($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a3,8($sp)
    lw	$a6,128($s4)
    addiu	$t9,$t9,-14992
    move	$a1,$s1
    move	$a2,$s0
    ld	$a4,16($sp)
    li	$a5,5123
    bal __glKonGetTexParameter
    lw	$a6,0($a6)
    # Line 3706
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    # Line 3720
    lw	$a7,48($s1)
    lw	$a2,40($s1)
    and	$a7,$a7,$s3
    or	$a7,$s2,$a7
    b	.L0d96cc40
    sw	$a7,48($s1)
    nop
    nop
    nop
.L0d96cd80:
    # Line 3689
    bnez	$s8,.L0d96ccd4
    nop
    b	.L0d96cc58
    # Line 3683
    addiu	$s0,$s0,1
.L0d96cd90:
    # Line 3689
    bnez	$s8,.L0d96cc78
    nop
    b	.L0d96ccbc
    # Line 3683
    addiu	$s0,$s0,1
.L0d96cda0:
    # Line 3726
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s4,72($sp)
    ld	$s5,24($sp)
    ld	$ra,64($sp)
    ld	$s6,80($sp)
    ld	$s7,32($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96cdd0:
    # Line 3701
    lui	$a1,0x6000
    jalr	$t9
    li	$a0,2
    # Line 3703
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24784
    move	$a0,$s1
    bal subtractTexTableUsage
    move	$a1,$s0
    # Line 3704
    ld	$a0,0($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a3,8($sp)
    lw	$a6,124($s4)
    addiu	$t9,$t9,-14992
    move	$a1,$s1
    move	$a2,$s0
    ld	$a4,16($sp)
    li	$a5,5123
    bal __glKonGetTexParameter
    lw	$a6,0($a6)
    # Line 3706
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    # Line 3720
    lw	$a7,48($s1)
    lw	$a2,40($s1)
    and	$a7,$a7,$s3
    or	$a7,$s2,$a7
    b	.L0d96cca4
    sw	$a7,48($s1)
.end copyBackLods

# Function: repPixels
# Declared: Line 3729 (Source lines: 3730-3737)
# Address: 0x0d96ce50 - 0x0d96ced4 (Size: 132 bytes, Frame: 48)
.ent repPixels
repPixels:
    # Line 3730
    addiu	$sp,$sp,-48
    # Line 3731
    lw	$at,4112($zero)
    # Line 3730
    sd	$s8,8($sp)
    # Line 3732
    lw	$t9,0($at)
    # Line 3730
    sd	$a1,24($sp)
    # Line 3732
    sll	$a1,$a2,0x4
    # Line 3730
    move	$s8,$a2
    sd	$a0,16($sp)
    sd	$ra,0($sp)
    # Line 3732
    jalr	$t9
    move	$a0,$at
    ld	$ra,0($sp)
    # Line 3735
    beqz	$s8,.L0d96cec8
    addiu	$a2,$s8,-1
    addiu	$a4,$v0,-16
    lwc1	$f4,28($sp)
    lwc1	$f7,24($sp)
    lwc1	$f5,20($sp)
    sll	$a3,$a2,0x4
    lwc1	$f6,16($sp)
    addu	$a3,$v0,$a3
    nop
    nop
    nop
.L0d96ceb0:
    # Line 3736
    swc1	$f4,12($a3)
    swc1	$f7,8($a3)
    # Line 3735
    addiu	$a3,$a3,-16
    # Line 3736
    swc1	$f5,20($a3)
    # Line 3735
    bne	$a3,$a4,.L0d96ceb0
    # Line 3736
    swc1	$f6,16($a3)
.L0d96cec8:
    ld	$s8,8($sp)
    # Line 3737
    jr	$ra
    addiu	$sp,$sp,48
.end repPixels

# Function: fillBorderColorLevel
# Declared: Line 3744 (Source lines: 3745-3862)
# Address: 0x0d96cee0 - 0x0d96d3ec (Size: 1292 bytes, Frame: 160)
.ent fillBorderColorLevel
fillBorderColorLevel:
    # Line 3745
    addiu	$sp,$sp,-416
    sd	$a1,256($sp)
    sd	$s0,320($sp)
    sd	$s6,280($sp)
    # Line 3756
    lw	$t8,28($a0)
    # Line 3767
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 3745
    sd	$s4,312($sp)
    sd	$ra,296($sp)
    # Line 3763
    lw	$ra,332($a0)
    # Line 3745
    sd	$s1,328($sp)
    # Line 3765
    lw	$s1,340($a0)
    # Line 3745
    move	$s0,$a0
    sd	$s5,336($sp)
    # Line 3767
    addiu	$a3,$sp,40
    addiu	$a2,$sp,36
    # Line 3745
    sd	$s8,288($sp)
    # Line 3757
    andi	$s6,$a1,0x1
    # Line 3761
    li	$s5,1
    # Line 3764
    lw	$s8,336($a0)
    # Line 3757
    lw	$s4,284($a0)
    # Line 3761
    sllv	$v0,$s5,$a1
    # Line 3765
    subu	$s1,$s1,$a1
    # Line 3745
    sd	$s2,272($sp)
    # Line 3763
    subu	$ra,$ra,$a1
    # Line 3764
    subu	$s8,$s8,$a1
    # Line 3767
    addiu	$a1,$sp,32
    # Line 3745
    la	$s2,intern_format_arr3
    # Line 3767
    addiu	$t9,$t9,-21200
    # Line 3756
    sll	$t8,$t8,0x4
    # Line 3757
    xor	$s4,$s4,$s6
    # Line 3756
    addu	$s2,$s2,$t8
    # Line 3757
    sltiu	$s4,$s4,1
    # Line 3761
    lw	$a4,52($a0)
    nor	$a5,$v0,$zero
    # Line 3765
    slti	$v1,$s1,0
    # Line 3746
    lw	$s6,4112($zero)
    # Line 3765
    movn	$s1,$zero,$v1
    # Line 3764
    slti	$at,$s8,0
    # Line 3756
    lw	$s2,8($s2)
    # Line 3764
    movn	$s8,$zero,$at
    # Line 3763
    slti	$at,$ra,0
    # Line 3761
    and	$a4,$a4,$a5
    # Line 3763
    movn	$ra,$zero,$at
    sd	$ra,376($sp)
    # Line 3761
    or	$v0,$v0,$a4
    # Line 3767
    bal __glKonGetTexParameter
    # Line 3761
    sw	$v0,52($a0)
    # Line 3772
    ld	$v0,376($sp)
    # Line 3771
    addiu	$t9,$s1,1
    move	$a5,$zero
    # Line 3772
    lw	$ra,32($sp)
    # Line 3767
    li	$a6,3
    # Line 3773
    lw	$v1,36($sp)
    # Line 3772
    addiu	$v0,$v0,1
    # Line 3773
    addiu	$a1,$s8,1
    # Line 3767
    lw	$a3,376($s0)
    # Line 3772
    slt	$at,$v0,$ra
    # Line 3773
    slt	$a0,$a1,$v1
    # Line 3772
    movz	$ra,$v0,$at
    # Line 3776
    lw	$v0,12($s0)
    xor	$t8,$a3,$a6
    # Line 3773
    movz	$v1,$a1,$a0
    sd	$v1,360($sp)
    movz	$a5,$t9,$t8
    # Line 3776
    li	$a2,2
    beq	$v0,$a6,.L0d96d308
    # Line 3772
    sd	$ra,368($sp)
    # Line 3776
    beqz	$v0,.L0d96d338
    # Line 3783
    sltiu	$a4,$s4,1
    # Line 3776
    beq	$v0,$s5,.L0d96d380
    nop
    sd	$s3,384($sp)
    sd	$s7,392($sp)
    beq	$v0,$a2,.L0d96d3b0
    sd	$s2,248($sp)
.L0d96d00c:
    # Line 3799
    ld	$s3,368($sp)
    # Line 3814
    la	$s7,sub_0d970000
    # Line 3818
    li	$a4,5126
    sw	$a4,72($sp)
    xor	$a2,$a3,$a6
    # Line 3817
    li	$a6,6408
    # Line 3799
    lw	$t9,40($sp)
    # Line 3814
    sllv	$a3,$s5,$s1
    # Line 3817
    sw	$a6,68($sp)
    # Line 3814
    li	$a1,1
    addu	$a3,$s5,$a3
    movz	$a1,$a3,$a2
    # Line 3816
    sw	$a1,64($sp)
    # Line 3799
    slt	$a3,$a5,$t9
    # Line 3819
    lw	$a2,28($s0)
    # Line 3799
    movz	$t9,$a5,$a3
    # Line 3804
    andi	$a3,$v0,0x3
    ld	$s2,248($sp)
    sll	$a1,$a3,0x2
    # Line 3819
    la	$v1,intern_format_arr3
    sll	$a2,$a2,0x4
    # Line 3804
    subu	$a1,$a1,$a3
    # Line 3799
    ld	$a0,360($sp)
    # Line 3804
    addu	$at,$s2,$s2
    sll	$a1,$a1,0x1
    la	$ra,st_bits_per_page
    # Line 3819
    addu	$v1,$v1,$a2
    # Line 3804
    addu	$at,$at,$a1
    # Line 3814
    addiu	$s7,$s7,-12720
    # Line 3819
    lw	$v1,4($v1)
    # Line 3804
    sll	$at,$at,0x2
    # Line 3799
    sll	$a0,$a0,0x4
    # Line 3819
    sw	$v1,156($sp)
    # Line 3804
    addu	$ra,$ra,$at
    # Line 3822
    li	$a2,1
    # Line 3799
    sll	$t9,$t9,0x8
    # Line 3804
    lw	$t8,0($ra)
    # Line 3799
    or	$s3,$s3,$a0
    # Line 3804
    sll	$v1,$s4,0x3
    lw	$ra,4($ra)
    # Line 3799
    or	$s3,$s3,$t9
    # Line 3804
    sll	$at,$v0,0x5
    # Line 3822
    move	$t9,$s7
    ldl	$a1,392($s0)
    # Line 3804
    sll	$ra,$ra,0xb
    # Line 3822
    ldl	$a0,384($s0)
    # Line 3804
    or	$s2,$s2,$v1
    sll	$t8,$t8,0x7
    # Line 3822
    ldr	$a1,399($s0)
    # Line 3804
    or	$s2,$s2,$at
    or	$t8,$t8,$ra
    # Line 3822
    ldr	$a0,391($s0)
    bal __glKonGetTexParameter
    # Line 3804
    or	$s2,$s2,$t8
    # Line 3826
    sw	$v0,76($sp)
    # Line 3825
    sw	$s5,60($sp)
    # Line 3824
    sw	$s5,56($sp)
    # Line 3822
    move	$s4,$v0
    # Line 3828
    sw	$zero,20($sp)
    move	$a7,$s3
    addiu	$t0,$sp,48
    sw	$t0,12($sp)
    li	$a6,1
    li	$a5,1
    # Line 3822
    la	$s1,sub_0d970000
    # Line 3828
    move	$a4,$zero
    addiu	$a1,$sp,56
    ld	$a3,360($sp)
    move	$a0,$s0
    ld	$a2,368($sp)
    # Line 3822
    addiu	$s1,$s1,-21456
    # Line 3828
    sw	$s2,4($sp)
    sllv	$a3,$s5,$a3
    move	$t9,$s1
    sllv	$a2,$s5,$a2
    addiu	$a3,$a3,-1
    sd	$a3,304($sp)
    addiu	$a2,$a2,-1
    bal __glKonGetTexParameter
    sd	$a2,344($sp)
    # Line 3831
    lw	$t9,12($s6)
    move	$a0,$s6
    jal	sub_0d970000
    move	$a1,$s4
    # Line 3834
    sllv	$a2,$s5,$s8
    sd	$a2,264($sp)
    addiu	$a2,$a2,1
    sd	$a2,400($sp)
    ldl	$a1,392($s0)
    ldl	$a0,384($s0)
    move	$t9,$s7
    ldr	$a1,399($s0)
    bal __glKonGetTexParameter
    ldr	$a0,391($s0)
    # Line 3838
    sw	$v0,76($sp)
    # Line 3836
    sw	$s5,56($sp)
    # Line 3837
    ld	$s8,400($sp)
    # Line 3834
    move	$s4,$v0
    # Line 3840
    move	$a7,$s3
    # Line 3837
    sw	$s8,60($sp)
    # Line 3840
    li	$a5,1
    move	$a4,$zero
    sw	$zero,20($sp)
    move	$a3,$zero
    addiu	$a1,$sp,56
    ld	$a2,376($sp)
    addiu	$t0,$sp,48
    sw	$t0,12($sp)
    move	$t9,$s1
    move	$a0,$s0
    sw	$s2,4($sp)
    sllv	$a2,$s5,$a2
    move	$a6,$s8
    bal __glKonGetTexParameter
    sd	$a2,352($sp)
    # Line 3843
    move	$a0,$s0
    move	$a7,$s3
    sw	$zero,20($sp)
    move	$a6,$s8
    li	$a5,1
    addiu	$t1,$sp,48
    sw	$t1,12($sp)
    move	$t9,$s1
    move	$a4,$zero
    move	$a3,$zero
    sw	$s2,4($sp)
    ld	$a2,344($sp)
    bal __glKonGetTexParameter
    addiu	$a1,$sp,56
    # Line 3846
    lw	$t9,12($s6)
    move	$a0,$s6
    jalr	$t9
    move	$a1,$s4
    # Line 3849
    ldl	$a1,392($s0)
    ld	$s8,352($sp)
    move	$t9,$s7
    ldl	$a0,384($s0)
    ldr	$a1,399($s0)
    addiu	$s8,$s8,1
    ldr	$a0,391($s0)
    bal __glKonGetTexParameter
    move	$a2,$s8
    ld	$s7,304($sp)
    # Line 3853
    sw	$v0,76($sp)
    # Line 3849
    move	$s4,$v0
    # Line 3852
    sw	$s5,60($sp)
    # Line 3855
    move	$a7,$s3
    li	$a6,1
    # Line 3851
    sw	$s8,56($sp)
    # Line 3855
    sw	$zero,20($sp)
    move	$a5,$s8
    move	$a4,$zero
    ld	$a3,264($sp)
    move	$a2,$zero
    move	$t9,$s1
    sw	$s2,4($sp)
    addiu	$a1,$sp,56
    addiu	$ra,$sp,48
    sw	$ra,12($sp)
    bal __glKonGetTexParameter
    move	$a0,$s0
    # Line 3858
    move	$a0,$s0
    move	$a7,$s3
    li	$a6,1
    ld	$s5,336($sp)
    move	$a5,$s8
    move	$a4,$zero
    sw	$zero,20($sp)
    addiu	$at,$sp,48
    move	$t9,$s1
    sw	$at,12($sp)
    move	$a3,$s7
    move	$a2,$zero
    sw	$s2,4($sp)
    bal __glKonGetTexParameter
    addiu	$a1,$sp,56
    ld	$s2,272($sp)
    ld	$s3,384($sp)
    ld	$s8,288($sp)
    # Line 3861
    lw	$t9,12($s6)
    ld	$s0,320($sp)
    ld	$s1,328($sp)
    move	$a0,$s6
    ld	$s7,392($sp)
    jalr	$t9
    move	$a1,$s4
    ld	$ra,296($sp)
    ld	$s6,280($sp)
    ld	$s4,312($sp)
    # Line 3862
    jr	$ra
    addiu	$sp,$sp,416
.L0d96d308:
    sd	$s3,384($sp)
    # Line 3778
    lw	$v1,252($s0)
    sd	$s7,392($sp)
    lw	$v1,0($v1)
    sw	$v1,48($sp)
    # Line 3779
    lw	$v0,252($s0)
    sd	$s2,248($sp)
    lw	$v0,4($v0)
    sw	$v0,52($sp)
    lw	$v0,12($s0)
    b	.L0d96d00c
    lw	$a3,376($s0)
.L0d96d338:
    sd	$s3,384($sp)
    # Line 3783
    addiu	$a1,$sp,48
    sll	$a4,$a4,0x2
    ld	$a3,256($sp)
    addu	$a4,$a1,$a4
    sw	$zero,0($a4)
    lw	$a0,252($s0)
    sd	$s7,392($sp)
    sll	$a3,$a3,0x2
    sd	$s2,248($sp)
    sll	$a2,$s4,0x2
    addu	$a0,$a0,$a3
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    sw	$a0,0($a1)
    # Line 3785
    lw	$v0,12($s0)
    b	.L0d96d00c
    lw	$a3,376($s0)
.L0d96d380:
    sd	$s3,384($sp)
    # Line 3788
    lw	$t0,252($s0)
    sd	$s7,392($sp)
    lw	$t0,0($t0)
    sw	$t0,48($sp)
    # Line 3789
    lw	$a7,252($s0)
    sd	$s2,248($sp)
    lw	$a7,4($a7)
    sw	$a7,52($sp)
    # Line 3790
    lw	$v0,12($s0)
    b	.L0d96d00c
    lw	$a3,376($s0)
.L0d96d3b0:
    # Line 3793
    ld	$t2,256($sp)
    li	$t8,-2
    lw	$t3,252($s0)
    and	$t2,$t2,$t8
    sll	$t2,$t2,0x2
    addu	$t3,$t3,$t2
    lw	$t3,0($t3)
    sw	$t3,48($sp)
    # Line 3794
    lw	$t1,252($s0)
    addu	$t1,$t1,$t2
    lw	$t1,4($t1)
    sw	$t1,52($sp)
    # Line 3795
    lw	$v0,12($s0)
    b	.L0d96d00c
    lw	$a3,376($s0)
.end fillBorderColorLevel

# Function: downloadLods
# Declared: Line 3865 (Source lines: 3866-3929)
# Address: 0x0d96d3f0 - 0x0d96d6d0 (Size: 736 bytes, Frame: 128)
.ent downloadLods
downloadLods:
    # Line 3872
    lbu	$a2,400($a1)
    # Line 3866
    addiu	$sp,$sp,-256
    sd	$s5,248($sp)
    sd	$ra,240($sp)
    sd	$s2,232($sp)
    sd	$s4,200($sp)
    sd	$a0,176($sp)
    # Line 3868
    la	$v0,intern_format_arr3
    lw	$v1,28($a1)
    # Line 3872
    lw	$at,32($a1)
    lw	$a0,4112($zero)
    # Line 3868
    sll	$v1,$v1,0x4
    # Line 3872
    sd	$a0,184($sp)
    dsll32	$at,$at,0x9
    # Line 3868
    addu	$v0,$v0,$v1
    lw	$v0,8($v0)
    # Line 3866
    move	$s4,$a1
    # Line 3872
    bgez	$at,.L0d96d524
    sd	$v0,192($sp)
    # Line 3878
    sltiu	$v0,$a2,1
    bnez	$v0,.L0d96d618
    move	$s5,$zero
    # Line 3881
    move	$s5,$zero
.L0d96d44c:
    # Line 3898
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
.L0d96d450:
    lui	$a1,0x6000
    li	$a0,2
    jal	__glKonSetNoModeState
    sd	$s0,224($sp)
    # Line 3901
    ld	$a3,192($sp)
    sll	$a2,$a3,0x2
    la	$a1,rdbk_format2
    subu	$a2,$a2,$a3
    # Line 3902
    li	$a0,5123
    sw	$a0,144($sp)
    # Line 3901
    sll	$a2,$a2,0x2
    # Line 3900
    sw	$zero,128($sp)
    # Line 3901
    addu	$a1,$a1,$a2
    lw	$a2,4($a1)
    sw	$a2,140($sp)
    # Line 3903
    lw	$s0,24($s4)
    lw	$a4,20($s4)
    slt	$v1,$a4,$s0
    sd	$s1,208($sp)
    bnez	$v1,.L0d96d4f0
    sd	$s3,216($sp)
    sll	$s3,$s5,0x1
    sd	$s3,160($sp)
    sll	$s1,$s0,0x2
    li	$s3,1
    sd	$a1,168($sp)
    addu	$s1,$s1,$s4
.L0d96d4bc:
    lw	$a2,44($s4)
    sllv	$s2,$s3,$s0
    and	$t8,$a2,$s2
    nop
    nop
.L0d96d4d0:
    beqz	$t8,.L0d96d52c
    nop
    addiu	$s0,$s0,1
    slt	$t9,$a4,$s0
    addiu	$s1,$s1,4
    sllv	$s2,$s3,$s0
    beqz	$t9,.L0d96d4d0
    and	$t8,$a2,$s2
.L0d96d4f0:
    # Line 3926
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
.L0d96d4f4:
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    ld	$s5,248($sp)
    ld	$s2,232($sp)
    ld	$s0,224($sp)
    ld	$ra,240($sp)
    ld	$s3,216($sp)
    ld	$s1,208($sp)
    # Line 3929
    ld	$s4,200($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d96d524:
    # Line 3881
    b	.L0d96d44c
    move	$s5,$a2
.L0d96d52c:
    # Line 3905
    lw	$ra,124($s1)
    sd	$ra,152($sp)
    # Line 3910
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 3907
    ld	$at,160($sp)
    lw	$a6,8($ra)
    # Line 3910
    ld	$a3,168($sp)
    # Line 3907
    subu	$a6,$a6,$at
    sw	$a6,132($sp)
    # Line 3908
    lw	$a5,12($ra)
    # Line 3910
    lw	$a3,0($a3)
    # Line 3908
    subu	$a5,$a5,$at
    sw	$a5,136($sp)
    # Line 3909
    lw	$a4,0($ra)
    sw	$a4,148($sp)
    # Line 3910
    lw	$a7,8($ra)
    lw	$t0,12($ra)
    move	$a2,$s0
    lw	$a4,20($ra)
    move	$a1,$s4
    subu	$t0,$t0,$at
    sw	$t0,4($sp)
    addiu	$v0,$sp,128
    addiu	$t9,$t9,-17280
    lw	$ra,16($ra)
    ld	$a0,176($sp)
    subu	$a7,$a7,$at
    subu	$a4,$s5,$a4
    sw	$v0,20($sp)
    move	$a6,$a4
    subu	$ra,$ra,$at
    sw	$ra,12($sp)
    bal __glKonGetTexParameter
    move	$a5,$a4
    # Line 3921
    ld	$a0,184($sp)
    # Line 3920
    lw	$a2,48($s4)
    # Line 3917
    lw	$a4,44($s4)
    # Line 3916
    nor	$a3,$s2,$zero
    lw	$a5,40($s4)
    # Line 3920
    and	$a2,$a2,$a3
    sw	$a2,48($s4)
    # Line 3917
    and	$a4,$a4,$a3
    # Line 3916
    and	$a5,$a5,$a3
    # Line 3917
    or	$a4,$s2,$a4
    sw	$a4,44($s4)
    # Line 3916
    or	$a5,$s2,$a5
    sw	$a5,40($s4)
    # Line 3921
    lw	$t9,12($a0)
    ld	$a1,152($sp)
    jal	sub_0d970000
    lw	$a1,0($a1)
    # Line 3922
    ld	$a7,152($sp)
    sw	$zero,0($a7)
    # Line 3903
    lw	$a4,20($s4)
    addiu	$s0,$s0,1
    slt	$a6,$a4,$s0
    beqz	$a6,.L0d96d4bc
    addiu	$s1,$s1,4
    b	.L0d96d4f4
    # Line 3926
    nop	# was lw $t9, -32324($gp) # &__glKonSetNoModeState
.L0d96d618:
    # Line 3888
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    lui	$a1,0x4000
    jal	__glKonSetNoModeState
    li	$a0,2
    # Line 3889
    # lw $t9, -32296($gp) # &__glKonPushState
    addiu	$a1,$sp,32
    jal	__glKonPushState
    li	$a0,12
    # Line 3890
    # lw $t9, -32292($gp) # &__glKonDefaultState
    jal	__glKonDefaultState
    li	$a0,12
    # Line 3891
    lw	$a4,20($s4)
    lw	$s2,24($s4)
    slt	$t0,$a4,$s2
    bnez	$t0,.L0d96d680
    li	$a1,1
.L0d96d658:
    # Line 3881
    lw	$a2,52($s4)
    sllv	$t1,$a1,$s2
    and	$t1,$a2,$t1
.L0d96d664:
    beqz	$t1,.L0d96d6a4
    # Line 3893
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 3891
    addiu	$s2,$s2,1
    slt	$t2,$a4,$s2
    # Line 3881
    sllv	$t1,$a1,$s2
    # Line 3891
    beqz	$t2,.L0d96d664
    # Line 3881
    and	$t1,$a2,$t1
.L0d96d680:
    # Line 3894
    # lw $t9, -32288($gp) # &__glKonPopState
.L0d96d684:
    jal	__glKonPopState
    addiu	$a0,$sp,32
    # Line 3895
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    b	.L0d96d450
    # Line 3898
    nop	# was lw $t9, -32324($gp) # &__glKonSetNoModeState
.L0d96d6a4:
    # Line 3893
    addiu	$t9,$t9,-12576
    move	$a0,$s4
    bal __glKonGetTexParameter
    move	$a1,$s2
    # Line 3891
    lw	$a4,20($s4)
    addiu	$s2,$s2,1
    slt	$ra,$a4,$s2
    beqz	$ra,.L0d96d658
    li	$a1,1
    b	.L0d96d684
    # Line 3894
    nop	# was lw $t9, -32288($gp) # &__glKonPopState
.end downloadLods

# Function: whichComps
# Declared: Line 3937 (Source lines: 3938-3945)
# Address: 0x0d96d6d0 - 0x0d96d704 (Size: 52 bytes, Frame: 0)
.ent whichComps
whichComps:
    # Line 3938
    la	$a2,intern_format_arr3
    move	$a3,$zero
    # Line 3945
    li	$v0,-1
    # Line 3938
    addiu	$a4,$a2,1072
.L0d96d6e0:
    lw	$at,0($a2)
    beq	$at,$a0,.L0d96d6fc
    # Line 3941
    addiu	$a2,$a2,16
    bne	$a2,$a4,.L0d96d6e0
    addiu	$a3,$a3,1
    # Line 3945
    jr	$ra
    nop
.L0d96d6fc:
    jr	$ra
    # Line 3943
    move	$v0,$a3
.end whichComps

# Function: storage2Comp
# Declared: Line 3953 (Source lines: 3954-3961)
# Address: 0x0d96d710 - 0x0d96d750 (Size: 64 bytes, Frame: 0)
.ent storage2Comp
storage2Comp:
    # Line 3954
    la	$a4,storage_format_arr7
    # Line 3961
    li	$v0,-1
    # Line 3954
    addiu	$a3,$a4,308
    nop
.L0d96d720:
    lw	$at,0($a4)
    beq	$at,$a0,.L0d96d740
    nop
    # Line 3957
    addiu	$a4,$a4,28
    bne	$a4,$a3,.L0d96d720
    nop
    # Line 3961
    jr	$ra
    nop
.L0d96d740:
    # Line 3959
    sll	$v0,$a1,0x2
    addu	$v0,$a4,$v0
    # Line 3961
    jr	$ra
    # Line 3959
    lw	$v0,4($v0)
.end storage2Comp

# Function: calcObjSize
# Declared: Line 3970 (Source lines: 3971-4214)
# Address: 0x0d96d750 - 0x0d96e14c (Size: 2556 bytes, Frame: 160)
.ent calcObjSize
calcObjSize:
    # Line 3972
    lw	$v0,4112($zero)
    # Line 3971
    addiu	$sp,$sp,-160
    # Line 3972
    sd	$v0,24($sp)
    sd	$ra,80($sp)
    # Line 3971
    sd	$s0,48($sp)
    sd	$s7,56($sp)
    # Line 3981
    lw	$a4,252($a1)
    # Line 3971
    sd	$s8,40($sp)
    sd	$s4,72($sp)
    # Line 3973
    sll	$s4,$a2,0x2
    # Line 3981
    lw	$s8,32($a1)
    # Line 3973
    addu	$s4,$a1,$s4
    # Line 3971
    move	$s7,$a0
    # Line 3973
    lw	$s4,124($s4)
    # Line 3971
    move	$s0,$a1
    sd	$s1,64($sp)
    # Line 3981
    lui	$at,0x40
    # Line 3971
    move	$s1,$a2
    # Line 3981
    and	$s8,$s8,$at
    # Line 3976
    lw	$at,4($s4)
    # Line 3981
    sltu	$s8,$zero,$s8
    beqz	$a4,.L0d96d7c0
    sd	$at,32($sp)
    # Line 3985
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    move	$a1,$a4
.L0d96d7c0:
    sd	$s3,88($sp)
    sd	$s6,96($sp)
    sd	$s5,104($sp)
    # Line 3988
    lw	$ra,116($s0)
    # Line 3987
    ld	$at,32($sp)
    # Line 3988
    lui	$v0,0xff00
    # Line 3985
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 3987
    sw	$at,28($s0)
    # Line 3988
    ori	$v0,$v0,0xfff
    sll	$at,$at,0xc
    sd	$s2,112($sp)
    and	$ra,$ra,$v0
    # Line 3985
    addiu	$t9,$t9,-13664
    # Line 3988
    or	$ra,$ra,$at
    sw	$ra,116($s0)
    # Line 3992
    bal __glKonGetTexParameter
    lw	$a0,8($s4)
    # Line 3993
    la	$s3,sub_0d970000
    addiu	$s3,$s3,-13664
    move	$t9,$s3
    # Line 3992
    addu	$t8,$v0,$s1
    sw	$t8,332($s0)
    # Line 3993
    bal __glKonGetTexParameter
    lw	$a0,12($s4)
    lw	$a5,376($s0)
    li	$s6,3
    addu	$s2,$v0,$s1
    beq	$a5,$s6,.L0d96de30
    sw	$s2,336($s0)
    # Line 3994
    move	$a1,$zero
.L0d96d838:
    sw	$a1,340($s0)
    # Line 4002
    li	$a7,-241
    # Line 3999
    move	$s5,$zero
    # Line 4001
    lw	$a2,68($s0)
    xor	$a3,$a5,$s6
    # Line 3997
    lw	$s3,332($s0)
    # Line 4001
    li	$s1,-16
    # Line 4002
    lw	$t9,508($s0)
    movz	$s5,$a1,$a3
    # Line 4001
    and	$a2,$a2,$s1
    # Line 3999
    move	$a6,$s5
    # Line 3995
    lw	$a3,20($s4)
    # Line 4001
    or	$a2,$s3,$a2
    # Line 3995
    sb	$a3,400($s0)
    # Line 4002
    sll	$a3,$s2,0x4
    and	$a2,$a2,$a7
    or	$a2,$a2,$a3
    beqz	$t9,.L0d96da48
    sw	$a2,68($s0)
    li	$s4,-3841
    # Line 4004
    ori	$a4,$a2,0xf00
    sw	$a4,68($s0)
.L0d96d890:
    # Line 4013
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 4009
    addu	$s2,$s8,$s2
    # Line 4013
    addiu	$t9,$t9,-21200
    # Line 4008
    addu	$s3,$s8,$s3
    # Line 4011
    addu	$a6,$a6,$s8
    xor	$a5,$a5,$s6
    # Line 4013
    bal __glKonGetTexParameter
    movz	$s5,$a6,$a5
    # Line 4015
    lw	$v1,0($sp)
    # Line 4016
    lw	$v0,4($sp)
    # Line 4020
    li	$s8,-241
    # Line 4019
    lw	$ra,84($s0)
    # Line 4015
    slt	$at,$s3,$v1
    movn	$s3,$v1,$at
    # Line 4016
    slt	$at,$s2,$v0
    # Line 4019
    and	$ra,$ra,$s1
    # Line 4016
    movn	$s2,$v0,$at
    # Line 4017
    lw	$v0,8($sp)
    # Line 4019
    or	$ra,$s3,$ra
    # Line 4020
    sll	$v1,$s2,0x4
    # Line 4026
    lw	$a1,12($s0)
    # Line 4020
    and	$ra,$ra,$s8
    # Line 4017
    slt	$at,$s5,$v0
    # Line 4020
    or	$ra,$ra,$v1
    # Line 4017
    movn	$s5,$v0,$at
    # Line 4021
    and	$ra,$ra,$s4
    sll	$at,$s5,0x8
    or	$ra,$ra,$at
    # Line 4026
    beq	$a1,$s6,.L0d96de4c
    # Line 4021
    sw	$ra,84($s0)
    # Line 4026
    beqz	$a1,.L0d96da60
    nop
    li	$s4,1
    beq	$a1,$s4,.L0d96deb8
    # Line 4143
    ld	$t9,24($sp)
    # Line 4026
    li	$a0,2
    beq	$a1,$a0,.L0d96df38
    li	$a7,4
    beq	$a1,$a7,.L0d96ddd0
    la	$a2,intern_format_arr3
    lw	$a1,0($s0)
.L0d96d944:
    # Line 4195
    lw	$a3,12($s7)
    slt	$a3,$a3,$a1
    beqz	$a3,.L0d96d984
    ld	$s3,88($sp)
    ld	$s6,96($sp)
    ld	$s5,104($sp)
    ld	$s2,112($sp)
    # Line 4214
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    ld	$ra,80($sp)
    ld	$s4,72($sp)
    # Line 4201
    move	$v0,$zero
    # Line 4214
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d96d984:
    ld	$s2,112($sp)
    # Line 4204
    ld	$t0,32($sp)
    # Line 4206
    lw	$t2,12($s0)
    ld	$s5,104($sp)
    # Line 4204
    sll	$t0,$t0,0x4
    ld	$s6,96($sp)
    # Line 4206
    andi	$t2,$t2,0x3
    # Line 4204
    addu	$t0,$a2,$t0
    # Line 4206
    sll	$a7,$t2,0x2
    lw	$t1,8($t0)
    # Line 4211
    move	$a1,$s0
    # Line 4204
    lw	$a6,64($s0)
    # Line 4206
    subu	$a7,$a7,$t2
    # Line 4211
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 4206
    sll	$a7,$a7,0x1
    addu	$t1,$t1,$t1
    # Line 4211
    move	$a0,$s7
    # Line 4206
    la	$a5,st_bits_per_page
    addu	$a7,$a7,$t1
    # Line 4211
    addiu	$t9,$t9,25536
    # Line 4204
    lw	$t0,4($t0)
    # Line 4206
    sll	$a7,$a7,0x2
    # Line 4204
    lui	$t1,0xffe0
    # Line 4206
    addu	$a5,$a5,$a7
    lw	$a7,72($s0)
    # Line 4204
    sll	$t0,$t0,0xe
    ori	$t1,$t1,0x3fff
    # Line 4206
    lw	$a4,0($a5)
    # Line 4204
    and	$a6,$a6,$t1
    # Line 4208
    lw	$a5,4($a5)
    # Line 4206
    and	$a7,$a7,$s1
    ld	$s3,88($sp)
    # Line 4204
    or	$a6,$a6,$t0
    # Line 4206
    or	$a4,$a4,$a7
    # Line 4204
    sw	$a6,64($s0)
    # Line 4208
    sll	$a5,$a5,0x4
    and	$a4,$a4,$s8
    or	$a4,$a4,$a5
    # Line 4211
    bal subtractTexTableUsage
    # Line 4208
    sw	$a4,72($s0)
    # Line 4214
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    ld	$ra,80($sp)
    ld	$s4,72($sp)
    li	$v0,1
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d96da48:
    # Line 4006
    li	$s4,-3841
    sll	$t2,$s5,0x8
    and	$t1,$a2,$s4
    or	$t1,$t1,$t2
    b	.L0d96d890
    sw	$t1,68($s0)
.L0d96da60:
    # Line 4040
    lw	$a0,64($s0)
    sra	$a0,$a0,0x2
    andi	$a0,$a0,0x7
    # Line 4036
    sw	$zero,0($s0)
    # Line 4041
    beqz	$a0,.L0d96deb0
    # Line 4036
    sw	$zero,4($s0)
    # Line 4041
    li	$a1,1
    beq	$a0,$a1,.L0d96deb0
    nop
    # Line 4042
    lw	$s5,332($s0)
    lw	$a3,336($s0)
    slt	$a2,$a3,$s5
    movz	$s5,$a3,$a2
.L0d96da94:
    # Line 4046
    lw	$a0,364($s0)
    li	$t8,0x8170
    beq	$a0,$t8,.L0d96dc3c
    li	$t9,0x844d
    beq	$a0,$t9,.L0d96dc3c
    li	$ra,0x844e
    beq	$a0,$ra,.L0d96dc3c
    li	$at,0x844f
    beq	$a0,$at,.L0d96dc3c
    # Line 4050
    nop	# was lw $t9, -18496($gp) # &calloc
    li	$a1,17
    jal	calloc
    li	$a0,4
    move	$a5,$v0
    bltz	$s5,.L0d96dc34
    sw	$v0,252($s0)
    move	$a1,$zero
    li	$s4,1
    ld	$t3,32($sp)
    li	$a7,4
    la	$t0,intern_format_arr3
    addiu	$a0,$s5,1
    andi	$t2,$a0,0x1
    sll	$t3,$t3,0x4
    sra	$a2,$a0,0x1
    addu	$t0,$t0,$t3
    li	$t1,-1
    beqz	$t2,.L0d96db60
    lw	$t0,8($t0)
    # Line 4053
    lw	$v1,0($s0)
    sw	$v1,0($v0)
    # Line 4062
    lw	$t9,0($sp)
    lw	$ra,4($sp)
    slt	$v0,$s3,$t9
    movz	$t9,$s3,$v0
    slt	$at,$s2,$ra
    movz	$ra,$s2,$at
    addu	$t9,$t9,$ra
    addu	$t9,$t0,$t9
    # Line 4052
    addiu	$s5,$s5,-1
    # Line 4062
    addiu	$t9,$t9,-4
    move	$a1,$s4
    sllv	$t9,$s4,$t9
    # Line 4053
    addiu	$a5,$a5,4
    # Line 4062
    slt	$ra,$t9,$a7
    lw	$t8,0($s0)
    # Line 4065
    addiu	$s2,$s2,-1
    # Line 4062
    movn	$t9,$a7,$ra
    # Line 4064
    addiu	$s3,$s3,-1
    # Line 4062
    addu	$t8,$t8,$t9
    sw	$t8,0($s0)
.L0d96db60:
    beqz	$a2,.L0d96dc34
    li	$a0,-4
    move	$a2,$s5
    li	$a6,-4
    addu	$a0,$t0,$a0
    addu	$a6,$t0,$a6
    nop
    nop
.L0d96db80:
    # Line 4053
    sll	$t8,$a1,0x2
    addu	$t8,$s0,$t8
    lw	$ra,0($t8)
    sw	$ra,0($a5)
    # Line 4062
    lw	$t9,0($sp)
    lw	$ra,4($sp)
    slt	$at,$s3,$t9
    movz	$t9,$s3,$at
    slt	$at,$s2,$ra
    movz	$ra,$s2,$at
    addu	$t9,$t9,$ra
    addu	$t9,$t9,$a0
    # Line 4067
    sltiu	$a1,$a1,1
    # Line 4062
    sllv	$t9,$s4,$t9
    # Line 4053
    sll	$a4,$a1,0x2
    # Line 4062
    lw	$t3,0($t8)
    slt	$t0,$t9,$a7
    movn	$t9,$a7,$t0
    # Line 4053
    addu	$a4,$s0,$a4
    # Line 4062
    addu	$t3,$t3,$t9
    sw	$t3,0($t8)
    # Line 4053
    lw	$t2,0($a4)
    sw	$t2,4($a5)
    # Line 4062
    lw	$t0,0($sp)
    # Line 4064
    addiu	$t8,$s3,-1
    # Line 4062
    lw	$t2,4($sp)
    slt	$t3,$t8,$t0
    movz	$t0,$t8,$t3
    # Line 4065
    addiu	$t3,$s2,-1
    # Line 4062
    slt	$a3,$t3,$t2
    movz	$t2,$t3,$a3
    # Line 4053
    addiu	$a5,$a5,8
    # Line 4062
    addu	$t0,$t0,$t2
    # Line 4067
    sltiu	$a1,$a1,1
    # Line 4062
    addu	$t0,$t0,$a6
    # Line 4052
    addiu	$a2,$a2,-2
    # Line 4062
    sllv	$t0,$s4,$t0
    # Line 4064
    addiu	$s3,$s3,-2
    # Line 4062
    lw	$a3,0($a4)
    slt	$t2,$t0,$a7
    # Line 4065
    addiu	$s2,$s2,-2
    # Line 4062
    movn	$t0,$a7,$t2
    addu	$a3,$a3,$t0
    # Line 4052
    bne	$a2,$t1,.L0d96db80
    # Line 4062
    sw	$a3,0($a4)
.L0d96dc34:
    # Line 4052
    b	.L0d96ddc8
    la	$a2,intern_format_arr3
.L0d96dc3c:
    lw	$t9,436($s0)
    beqz	$t9,.L0d96e10c
    # Line 4073
    li	$ra,15
    sd	$ra,16($sp)
    # Line 4074
    move	$s6,$s5
.L0d96dc50:
    # Line 4079
    # lw $t9, -18496($gp) # &calloc
    li	$a1,48
    jal	calloc
    li	$a0,4
    sw	$v0,252($s0)
    # Line 4083
    lw	$a0,92($s0)
    # Line 4079
    move	$a5,$v0
    # Line 4083
    ld	$v0,16($sp)
    # Line 4081
    lw	$at,104($s0)
    # Line 4083
    and	$a0,$a0,$s1
    # Line 4082
    lw	$v1,408($s0)
    # Line 4083
    or	$v0,$v0,$a0
    # Line 4081
    lui	$a0,0x40
    or	$at,$at,$a0
    # Line 4083
    sw	$v0,92($s0)
    # Line 4082
    sll	$v0,$v1,0x8
    and	$at,$at,$s4
    or	$at,$at,$v0
    # Line 4083
    bltz	$s6,.L0d96e11c
    # Line 4082
    sw	$at,104($s0)
    # Line 4083
    ld	$t1,32($sp)
    li	$a7,4
    la	$t0,intern_format_arr3
    li	$a6,1
    sll	$t1,$t1,0x4
    move	$s1,$zero
    addu	$t0,$t0,$t1
    move	$a1,$zero
    addiu	$t1,$s6,1
    lw	$t0,8($t0)
    nop
    nop
.L0d96dcd0:
    # Line 4087
    sll	$a2,$a1,0x2
    addu	$a2,$s0,$a2
    lw	$t2,0($a2)
    sw	$t2,0($a5)
    lw	$a4,0($sp)
    lw	$t8,408($s0)
    # Line 4088
    lw	$t2,4($sp)
    # Line 4087
    slt	$t3,$t8,$a4
    movz	$a4,$t8,$t3
    # Line 4088
    slt	$t3,$t8,$t2
    movz	$t2,$t8,$t3
    # Line 4093
    addu	$a4,$a4,$t2
    # Line 4109
    lw	$t3,436($s0)
    # Line 4093
    addu	$a4,$t0,$a4
    addiu	$a4,$a4,-4
    # Line 4087
    addiu	$a5,$a5,4
    # Line 4093
    sllv	$a4,$a6,$a4
    slt	$t2,$a4,$a7
    # Line 4109
    beqz	$t3,.L0d96dd2c
    # Line 4093
    movn	$a4,$a7,$t2
    # Line 4109
    lw	$a3,348($s0)
    slt	$a3,$a3,$s1
    movn	$a4,$zero,$a3
.L0d96dd2c:
    # Line 4115
    addiu	$s3,$s3,-1
    # Line 4086
    addiu	$s1,$s1,1
    # Line 4113
    lw	$t2,0($a2)
    # Line 4116
    addiu	$s2,$s2,-1
    # Line 4118
    sltiu	$a1,$a1,1
    # Line 4113
    addu	$t2,$t2,$a4
    # Line 4086
    bne	$t1,$s1,.L0d96dcd0
    # Line 4113
    sw	$t2,0($a2)
    # Line 4086
    slt	$t3,$s5,$t1
    bnez	$t3,.L0d96ddc0
    move	$s1,$t1
.L0d96dd58:
    addiu	$a0,$s5,1
.L0d96dd5c:
    # Line 4122
    sll	$t9,$a1,0x2
    addu	$t9,$s0,$t9
    lw	$a2,0($t9)
    sw	$a2,0($a5)
    # Line 4132
    lw	$ra,0($sp)
    lw	$at,4($sp)
    slt	$v1,$s3,$ra
    movz	$ra,$s3,$v1
    slt	$v0,$s2,$at
    movz	$at,$s2,$v0
    addu	$ra,$ra,$at
    # Line 4137
    sltiu	$a1,$a1,1
    # Line 4132
    addu	$ra,$t0,$ra
    # Line 4122
    addiu	$a5,$a5,4
    # Line 4132
    addiu	$ra,$ra,-4
    # Line 4121
    addiu	$s1,$s1,1
    # Line 4132
    sllv	$ra,$a6,$ra
    # Line 4135
    addiu	$s2,$s2,-1
    # Line 4132
    slt	$at,$ra,$a7
    lw	$t8,0($t9)
    # Line 4134
    addiu	$s3,$s3,-1
    # Line 4132
    movn	$ra,$a7,$at
    addu	$t8,$t8,$ra
    # Line 4121
    bne	$a0,$s1,.L0d96dd5c
    # Line 4132
    sw	$t8,0($t9)
.L0d96ddc0:
    li	$s1,-16
.L0d96ddc4:
    # Line 4121
    la	$a2,intern_format_arr3
.L0d96ddc8:
    # Line 4140
    b	.L0d96d944
    lw	$a1,0($s0)
.L0d96ddd0:
    # Line 4185
    sw	$zero,252($s0)
    # Line 4186
    lw	$a1,0($sp)
    ld	$a3,32($sp)
    # Line 4185
    la	$a2,intern_format_arr3
    # Line 4186
    lw	$a4,4($sp)
    sll	$a3,$a3,0x4
    slt	$a5,$s3,$a1
    movz	$a1,$s3,$a5
    slt	$a5,$s2,$a4
    addu	$a3,$a3,$a2
    lw	$a3,8($a3)
    movz	$a4,$s2,$a5
    addu	$a1,$a1,$a4
    addu	$a1,$a1,$a3
    addiu	$a1,$a1,-4
    sllv	$a1,$s4,$a1
    slti	$ra,$a1,4
    sw	$a1,0($s0)
    beqz	$ra,.L0d96d944
    sw	$a1,4($s0)
    # Line 4192
    sw	$a7,0($s0)
    move	$a1,$a7
    b	.L0d96d944
    sw	$a7,4($s0)
.L0d96de30:
    # Line 3994
    move	$t9,$s3
    bal __glKonGetTexParameter
    lw	$a0,16($s4)
    lw	$a5,376($s0)
    lw	$s2,336($s0)
    b	.L0d96d838
    addu	$a1,$v0,$s1
.L0d96de4c:
    # Line 4028
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jalr	$t9
    li	$a1,8
    sw	$v0,252($s0)
    # Line 4029
    lw	$a3,0($sp)
    ld	$a4,32($sp)
    # Line 4028
    la	$a2,intern_format_arr3
    # Line 4029
    lw	$a5,4($sp)
    sll	$a4,$a4,0x4
    slt	$a6,$s3,$a3
    movz	$a3,$s3,$a6
    slt	$a6,$s2,$a5
    addu	$a4,$a4,$a2
    lw	$a4,8($a4)
    movz	$a5,$s2,$a6
    addu	$a3,$a3,$a5
    addu	$a3,$a3,$a4
    li	$a1,1
    addiu	$a3,$a3,-5
    sllv	$a1,$a1,$a3
    sw	$a1,0($s0)
    b	.L0d96d944
    sw	$a1,4($s0)
.L0d96deb0:
    # Line 4042
    b	.L0d96da94
    move	$s5,$zero
.L0d96deb8:
    # Line 4143
    move	$a0,$t9
    lw	$t9,0($t9)
    jalr	$t9
    li	$a1,8
    sw	$v0,252($s0)
    # Line 4144
    lw	$a3,8($sp)
    lw	$a5,4($sp)
    ld	$a1,32($sp)
    slt	$a6,$s5,$a3
    lw	$a4,0($sp)
    # Line 4143
    la	$a2,intern_format_arr3
    # Line 4144
    sll	$a1,$a1,0x4
    slt	$a7,$s2,$a5
    slt	$t0,$s3,$a4
    movz	$a5,$s2,$a7
    movz	$a4,$s3,$t0
    addu	$a1,$a1,$a2
    movz	$a3,$s5,$a6
    lw	$a1,8($a1)
    addu	$a4,$a4,$a5
    addu	$a3,$a3,$a4
    addu	$a1,$a1,$a3
    addiu	$a1,$a1,-5
    sllv	$a1,$s4,$a1
    slti	$ra,$a1,4
    sw	$a1,0($s0)
    beqz	$ra,.L0d96d944
    sw	$a1,4($s0)
    # Line 4151
    li	$a1,4
    sw	$a1,0($s0)
    b	.L0d96d944
    sw	$a1,4($s0)
.L0d96df38:
    # Line 4156
    # lw $t9, -18496($gp) # &calloc
    li	$a1,13
    jal	calloc
    li	$a0,4
    # Line 4158
    lw	$a3,332($s0)
    lw	$a6,336($s0)
    # Line 4160
    ld	$t1,32($sp)
    # Line 4159
    lw	$s1,340($s0)
    # Line 4158
    slt	$a4,$a6,$a3
    # Line 4156
    move	$a5,$v0
    movz	$a3,$a6,$a4
    # Line 4160
    la	$t0,intern_format_arr3
    sll	$t1,$t1,0x4
    # Line 4159
    slt	$a2,$a3,$s1
    # Line 4158
    move	$a1,$zero
    movz	$s1,$a3,$a2
    sw	$zero,0($s0)
    # Line 4160
    li	$a7,4
    addu	$t0,$t0,$t1
    # Line 4156
    sw	$v0,252($s0)
    # Line 4160
    bltz	$s1,.L0d96e0fc
    addiu	$a2,$s1,2
    srl	$a0,$a2,0x1f
    addu	$a0,$a0,$a2
    sra	$a0,$a0,0x1
    andi	$a4,$a0,0x1
    lw	$t0,8($t0)
    beqz	$a4,.L0d96e018
    sra	$t8,$a0,0x1
    # Line 4163
    sw	$zero,0($v0)
    # Line 4164
    lw	$t3,0($s0)
    sw	$t3,4($v0)
    # Line 4175
    lw	$a3,0($sp)
    lw	$a4,4($sp)
    slt	$t2,$s3,$a3
    lw	$a2,8($sp)
    movz	$a3,$s3,$t2
    slt	$t1,$s2,$a4
    slt	$a6,$s5,$a2
    movz	$a4,$s2,$t1
    movz	$a2,$s5,$a6
    addu	$a3,$a3,$a4
    addu	$a2,$a2,$a3
    addu	$a2,$t0,$a2
    # Line 4162
    addiu	$s1,$s1,-2
    # Line 4175
    addiu	$a2,$a2,-4
    # Line 4164
    addiu	$a5,$v0,8
    # Line 4175
    sllv	$a2,$s4,$a2
    # Line 4179
    addiu	$s5,$s5,-2
    # Line 4175
    slt	$a3,$a2,$a7
    lw	$a1,0($s0)
    # Line 4178
    addiu	$s2,$s2,-2
    # Line 4175
    movn	$a2,$a7,$a3
    # Line 4177
    addiu	$s3,$s3,-2
    # Line 4175
    addu	$a1,$a1,$a2
    sw	$a1,0($s0)
.L0d96e018:
    li	$t1,-4
    li	$a0,-4
    beqz	$t8,.L0d96e0fc
    addu	$a0,$t0,$a0
    addu	$t1,$t0,$t1
    nop
.L0d96e030:
    # Line 4163
    sw	$a1,0($a5)
    # Line 4164
    lw	$t3,0($s0)
    sw	$t3,4($a5)
    # Line 4175
    lw	$t2,0($sp)
    lw	$t3,4($sp)
    lw	$t0,8($sp)
    slt	$t9,$s3,$t2
    movz	$t2,$s3,$t9
    slt	$t9,$s2,$t3
    slt	$t8,$s5,$t0
    movz	$t3,$s2,$t9
    movz	$t0,$s5,$t8
    addu	$t2,$t2,$t3
    addu	$t0,$t0,$t2
    addu	$t0,$t0,$a0
    sllv	$t0,$s4,$t0
    lw	$a6,0($s0)
    slt	$t2,$t0,$a7
    movn	$t0,$a7,$t2
    addu	$a6,$a6,$t0
    sw	$a6,0($s0)
    # Line 4163
    sw	$a6,8($a5)
    # Line 4164
    lw	$a4,0($s0)
    sw	$a4,12($a5)
    # Line 4175
    lw	$a3,0($sp)
    # Line 4177
    addiu	$t3,$s3,-2
    # Line 4175
    lw	$a4,4($sp)
    slt	$t2,$t3,$a3
    lw	$a2,8($sp)
    movz	$a3,$t3,$t2
    # Line 4178
    addiu	$t3,$s2,-2
    # Line 4179
    addiu	$t0,$s5,-2
    # Line 4175
    slt	$t2,$t3,$a4
    slt	$a6,$t0,$a2
    movz	$a4,$t3,$t2
    movz	$a2,$t0,$a6
    addu	$a3,$a3,$a4
    # Line 4164
    addiu	$a5,$a5,16
    # Line 4175
    addu	$a2,$a2,$a3
    # Line 4162
    addiu	$s1,$s1,-4
    # Line 4175
    addu	$a2,$a2,$t1
    # Line 4177
    addiu	$s3,$s3,-4
    # Line 4175
    sllv	$a2,$s4,$a2
    # Line 4179
    addiu	$s5,$s5,-4
    # Line 4175
    lw	$a1,0($s0)
    slt	$a3,$a2,$a7
    # Line 4178
    addiu	$s2,$s2,-4
    # Line 4175
    movn	$a2,$a7,$a3
    addu	$a1,$a1,$a2
    # Line 4162
    bgez	$s1,.L0d96e030
    # Line 4175
    sw	$a1,0($s0)
.L0d96e0fc:
    # Line 4181
    sw	$a1,4($s0)
    li	$s1,-16
    # Line 4182
    b	.L0d96d944
    # Line 4162
    la	$a2,intern_format_arr3
.L0d96e10c:
    # Line 4073
    lw	$t8,404($s0)
    sd	$t8,16($sp)
    b	.L0d96dc50
    # Line 4074
    addiu	$s6,$t8,-1
.L0d96e11c:
    # Line 4086
    bltz	$s5,.L0d96ddc4
    li	$s1,-16
    ld	$t1,32($sp)
    li	$a7,4
    la	$t0,intern_format_arr3
    li	$a6,1
    sll	$t1,$t1,0x4
    move	$s1,$zero
    addu	$t0,$t0,$t1
    move	$a1,$zero
    b	.L0d96dd58
    lw	$t0,8($t0)
.end calcObjSize

# Function: deallocTexture
# Declared: Line 4218 (Source lines: 4219-4226)
# Address: 0x0d96e150 - 0x0d96e198 (Size: 72 bytes, Frame: 16)
.ent deallocTexture
deallocTexture:
    # Line 4221
    # lw $t9, -31604($gp) # &__glKonTexFree
    # Line 4219
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    # Line 4221
    jal	__glKonTexFree
    # Line 4219
    move	$s0,$a1
    # Line 4221
    lw	$at,272($s0)
    bnez	$at,.L0d96e184
    # Line 4225
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    ld	$ra,8($sp)
.L0d96e178:
    ld	$s0,0($sp)
    # Line 4226
    jr	$ra
    addiu	$sp,$sp,16
.L0d96e184:
    # Line 4225
    addiu	$t9,$t9,20320
    jal	sub_0d960000
    move	$a0,$s0
    b	.L0d96e178
    ld	$ra,8($sp)
.end deallocTexture

# Function: freeTexture
# Declared: Line 4232 (Source lines: 4233-4240)
# Address: 0x0d96e1a0 - 0x0d96e208 (Size: 104 bytes, Frame: 32)
.ent freeTexture
freeTexture:
    # Line 4233
    addiu	$sp,$sp,-32
    # Line 4234
    lw	$at,264($a1)
    # Line 4233
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 4234
    bnez	$at,.L0d96e1cc
    sd	$ra,16($sp)
    lw	$v0,268($a1)
    beqz	$v0,.L0d96e1e8
    # Line 4239
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d96e1cc:
    # Line 4236
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13392
    move	$a0,$s8
    move	$a1,$s0
    bal __glKonGetTexParameter
    li	$a2,3
    # Line 4239
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d96e1e8:
    ld	$ra,16($sp)
    addiu	$t9,$t9,-7856
    move	$a1,$s0
    # Line 4240
    ld	$s0,8($sp)
    # Line 4239
    move	$a0,$s8
    # Line 4240
    ld	$s8,0($sp)
    bgezl	$zero,__glKonGetTexParameter
    addiu	$sp,$sp,32
.end freeTexture

# Function: translateLodAddr
# Declared: Line 4246 (Source lines: 4247-4325)
# Address: 0x0d96e210 - 0x0d96e618 (Size: 1032 bytes, Frame: 16)
.ent translateLodAddr
translateLodAddr:
    # Line 4255
    lw	$a2,12($a0)
    li	$at,1
    beq	$a2,$at,.L0d96e5e4
    # Line 4247
    addiu	$sp,$sp,-16
    # Line 4255
    li	$v0,3
    beq	$a2,$v0,.L0d96e5e4
    nop
    beqz	$a2,.L0d96e424
    li	$v1,2
    beq	$a2,$v1,.L0d96e244
    nop
.L0d96e23c:
    # Line 4325
    jr	$ra
    addiu	$sp,$sp,16
.L0d96e244:
    # Line 4299
    lw	$a5,332($a0)
    lw	$t2,336($a0)
    # Line 4300
    lw	$t0,340($a0)
    # Line 4299
    slt	$t1,$t2,$a5
    lw	$a6,64($a0)
    lui	$a7,0xefff
    movz	$a5,$t2,$t1
    # Line 4307
    lw	$a3,252($a0)
    # Line 4299
    ori	$a7,$a7,0xffff
    # Line 4300
    slt	$a4,$a5,$t0
    # Line 4299
    and	$a6,$a6,$a7
    sw	$a6,64($a0)
    movz	$t0,$a5,$a4
    # Line 4308
    move	$a2,$zero
    lw	$a4,4($a3)
    # Line 4307
    lw	$a3,0($a3)
    # Line 4308
    bltz	$t0,.L0d96e3f8
    addiu	$a7,$t0,2
    srl	$t1,$a7,0x1f
    addu	$t1,$t1,$a7
    sra	$t1,$t1,0x1
    andi	$a6,$t1,0x3
    beqz	$a6,.L0d96e2e8
    sll	$a5,$t0,0x2
.L0d96e2a4:
    # Line 4311
    lw	$t9,252($a0)
    addu	$t9,$t9,$a2
    lw	$at,276($a0)
    lw	$t8,0($t9)
    subu	$at,$at,$a3
    addu	$t8,$t8,$at
    sw	$t8,0($t9)
    # Line 4312
    lw	$t3,252($a0)
    addu	$t3,$t3,$a2
    lw	$t8,280($a0)
    addiu	$a6,$a6,-1
    lw	$t2,4($t3)
    # Line 4310
    addiu	$a2,$a2,8
    # Line 4312
    subu	$t8,$t8,$a4
    addu	$t2,$t2,$t8
    bnez	$a6,.L0d96e2a4
    sw	$t2,4($t3)
.L0d96e2e8:
    sra	$at,$t1,0x2
    beqz	$at,.L0d96e3f8
    nop
    nop
    nop
    nop
.L0d96e300:
    # Line 4311
    lw	$t3,252($a0)
    addu	$t3,$t3,$a2
    lw	$t8,276($a0)
    lw	$t2,0($t3)
    subu	$t8,$t8,$a3
    addu	$t2,$t2,$t8
    sw	$t2,0($t3)
    # Line 4312
    lw	$t1,252($a0)
    addu	$t1,$t1,$a2
    lw	$t2,280($a0)
    lw	$t0,4($t1)
    subu	$t2,$t2,$a4
    addu	$t0,$t0,$t2
    sw	$t0,4($t1)
    # Line 4311
    lw	$a6,252($a0)
    # Line 4310
    addiu	$v1,$a2,8
    # Line 4311
    addu	$a6,$a6,$v1
    lw	$t0,276($a0)
    lw	$a1,0($a6)
    subu	$t0,$t0,$a3
    addu	$a1,$a1,$t0
    sw	$a1,0($a6)
    # Line 4312
    lw	$v0,252($a0)
    addu	$v0,$v0,$v1
    lw	$v1,280($a0)
    lw	$at,4($v0)
    subu	$v1,$v1,$a4
    addu	$at,$at,$v1
    sw	$at,4($v0)
    # Line 4311
    lw	$t9,252($a0)
    # Line 4310
    addiu	$t3,$a2,16
    # Line 4311
    addu	$t9,$t9,$t3
    lw	$at,276($a0)
    lw	$t8,0($t9)
    subu	$at,$at,$a3
    addu	$t8,$t8,$at
    sw	$t8,0($t9)
    # Line 4312
    lw	$t2,252($a0)
    addu	$t2,$t2,$t3
    lw	$t3,280($a0)
    lw	$t1,4($t2)
    subu	$t3,$t3,$a4
    addu	$t1,$t1,$t3
    sw	$t1,4($t2)
    # Line 4311
    lw	$t0,252($a0)
    # Line 4310
    addiu	$a1,$a2,24
    # Line 4311
    addu	$t0,$t0,$a1
    lw	$t1,276($a0)
    lw	$a6,0($t0)
    subu	$t1,$t1,$a3
    addu	$a6,$a6,$t1
    sw	$a6,0($t0)
    # Line 4312
    lw	$v1,252($a0)
    # Line 4310
    addiu	$a2,$a2,32
    # Line 4312
    addu	$v1,$v1,$a1
    lw	$a6,280($a0)
    # Line 4310
    slt	$a1,$a5,$a2
    # Line 4312
    lw	$v0,4($v1)
    subu	$a6,$a6,$a4
    addu	$v0,$v0,$a6
    # Line 4310
    beqz	$a1,.L0d96e300
    # Line 4312
    sw	$v0,4($v1)
.L0d96e3f8:
    # Line 4310
    li	$a2,-2
    and	$a2,$a7,$a2
    slti	$t8,$a2,11
    # Line 4322
    li	$a3,-1
    # Line 4310
    beqz	$t8,.L0d96e23c
    # Line 4322
    sll	$a5,$a2,0x2
    lw	$a4,252($a0)
    addu	$a4,$a4,$a5
    # Line 4325
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4322
    sw	$a3,0($a4)
.L0d96e424:
    # Line 4264
    lw	$t0,332($a0)
    lw	$a5,284($a0)
    lw	$t3,64($a0)
    lui	$t8,0xefff
    lw	$t2,336($a0)
    ori	$t8,$t8,0xffff
    sltiu	$a5,$a5,1
    # Line 4272
    lw	$t1,252($a0)
    # Line 4264
    and	$t3,$t3,$t8
    sll	$t8,$a5,0x1c
    slt	$a7,$t2,$t0
    or	$t3,$t3,$t8
    sw	$t3,64($a0)
    # Line 4273
    move	$a4,$zero
    movz	$t0,$t2,$a7
    # Line 4272
    lw	$t2,0($t1)
    # Line 4273
    move	$a2,$zero
    # Line 4266
    move	$a3,$a5
    # Line 4273
    lw	$a6,4($t1)
    addiu	$a7,$sp,0
    sw	$a6,4($sp)
    addiu	$a6,$t0,1
    # Line 4272
    sw	$t2,0($sp)
    # Line 4273
    bltz	$t0,.L0d96e56c
    andi	$t9,$a6,0x1
    beqz	$t9,.L0d96e4b4
    # Line 4276
    sll	$at,$a5,0x2
    lw	$v0,0($sp)
    addu	$at,$a0,$at
    lw	$at,276($at)
    # Line 4275
    li	$a2,4
    li	$a4,1
    # Line 4276
    subu	$at,$at,$v0
    # Line 4277
    sltiu	$a3,$a5,1
    # Line 4276
    addu	$at,$t2,$at
    sw	$at,0($t1)
.L0d96e4b4:
    sra	$v0,$a6,0x1
    beqz	$v0,.L0d96e56c
    nop
.L0d96e4c0:
    sra	$at,$a4,0x1f
    sll	$t8,$a3,0x2
    xor	$t9,$a4,$at
    addu	$t8,$a0,$t8
    subu	$t9,$t9,$at
    # Line 4275
    addiu	$t1,$a4,1
    # Line 4276
    andi	$t9,$t9,0x1
    sra	$t2,$t1,0x1f
    xor	$t9,$t9,$at
    xor	$t1,$t1,$t2
    subu	$t9,$t9,$at
    lw	$t3,252($a0)
    subu	$t1,$t1,$t2
    sll	$t9,$t9,0x2
    lw	$t8,276($t8)
    andi	$t1,$t1,0x1
    addu	$t9,$a7,$t9
    addu	$t3,$t3,$a2
    xor	$t1,$t1,$t2
    lw	$t9,0($t9)
    subu	$t1,$t1,$t2
    lw	$t2,0($t3)
    # Line 4277
    sltiu	$a3,$a3,1
    # Line 4276
    subu	$t8,$t8,$t9
    sll	$t1,$t1,0x2
    addu	$t2,$t2,$t8
    sw	$t2,0($t3)
    sll	$a5,$a3,0x2
    addu	$t1,$a7,$t1
    lw	$a1,252($a0)
    addu	$a5,$a0,$a5
    lw	$t1,0($t1)
    # Line 4275
    addiu	$t2,$a2,4
    # Line 4276
    lw	$a5,276($a5)
    addu	$a1,$a1,$t2
    # Line 4277
    sltiu	$a3,$a3,1
    # Line 4275
    addiu	$a4,$a4,2
    # Line 4276
    lw	$v1,0($a1)
    # Line 4275
    addiu	$a2,$a2,8
    # Line 4276
    subu	$a5,$a5,$t1
    addu	$v1,$v1,$a5
    # Line 4275
    bne	$a6,$a4,.L0d96e4c0
    # Line 4276
    sw	$v1,0($a1)
.L0d96e56c:
    # Line 4286
    lw	$a2,364($a0)
    li	$v1,0x844e
    li	$at,0x8170
    li	$v0,0x844d
    # Line 4291
    sll	$a4,$t0,0x2
    # Line 4286
    beq	$a2,$at,.L0d96e23c
    li	$a1,0x844f
    beq	$a2,$v0,.L0d96e23c
    nop
    beq	$a2,$v1,.L0d96e23c
    nop
    beq	$a2,$a1,.L0d96e23c
    slti	$a2,$t0,15
    beqz	$a2,.L0d96e5b8
    # Line 4291
    li	$a3,-2
    lw	$a3,252($a0)
    addu	$a3,$a3,$a4
    sw	$zero,4($a3)
    li	$a3,-2
.L0d96e5b8:
    addiu	$a2,$t0,2
    and	$a2,$a2,$a3
    slti	$a5,$a2,16
    # Line 4294
    li	$a4,-1
    # Line 4291
    beqz	$a5,.L0d96e23c
    # Line 4294
    sll	$a6,$a2,0x2
    lw	$a5,252($a0)
    addu	$a5,$a5,$a6
    # Line 4325
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4294
    sw	$a4,0($a5)
.L0d96e5e4:
    # Line 4259
    lw	$t1,276($a0)
    # Line 4258
    lw	$t3,64($a0)
    lui	$t8,0xefff
    # Line 4259
    lw	$t2,252($a0)
    # Line 4258
    ori	$t8,$t8,0xffff
    and	$t3,$t3,$t8
    sw	$t3,64($a0)
    # Line 4259
    sw	$t1,0($t2)
    # Line 4260
    lw	$t0,252($a0)
    lw	$a7,280($a0)
    # Line 4325
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4260
    sw	$a7,4($t0)
.end translateLodAddr

# Function: configTexture
# Declared: Line 4331 (Source lines: 4332-4394)
# Address: 0x0d96e620 - 0x0d96e820 (Size: 512 bytes, Frame: 32)
.ent configTexture
configTexture:
    # Line 4339
    lw	$a4,32($a1)
    dsll32	$at,$a4,0xa
    # Line 4332
    move	$a5,$a0
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 4339
    bgez	$at,.L0d96e640
    # Line 4332
    move	$s0,$a1
    # Line 4339
    beqz	$a2,.L0d96e708
.L0d96e640:
    # Line 4372
    dsll32	$v0,$a4,0xb
    bltz	$v0,.L0d96e6fc
    dsll32	$v1,$a4,0xc
    bgez	$v1,.L0d96e6fc
    nop
    # Line 4375
    lw	$a0,264($s0)
    bnez	$a0,.L0d96e668
    lw	$a1,268($s0)
    beqz	$a1,.L0d96e6cc
    sd	$ra,16($sp)
.L0d96e668:
    sd	$a5,0($sp)
    # Line 4377
    # lw $t9, -31608($gp) # &__glKonTexAlloc
    ld	$a0,0($sp)
    li	$a2,3
    sd	$ra,16($sp)
    move	$a1,$s0
    jal	__glKonTexAlloc
    lw	$a0,3868($a0)
    bgez	$v0,.L0d96e6e8
    # Line 4379
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,0($sp)
    addiu	$t9,$t9,-7776
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,3868($a0)
    # Line 4380
    # lw $t9, -31608($gp) # &__glKonTexAlloc
    ld	$a0,0($sp)
    li	$a2,1
    move	$a1,$s0
    jal	__glKonTexAlloc
    lw	$a0,3868($a0)
    bgez	$v0,.L0d96e6e8
    ld	$ra,16($sp)
    b	.L0d96e700
    ld	$s0,8($sp)
.L0d96e6cc:
    # Line 4386
    # lw $t9, -31608($gp) # &__glKonTexAlloc
    li	$a2,1
    move	$a1,$s0
    jal	__glKonTexAlloc
    lw	$a0,3868($a5)
    bltz	$v0,.L0d96e6fc
    ld	$ra,16($sp)
.L0d96e6e8:
    # Line 4390
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-7664
    bal __glKonGetTexParameter
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d96e6fc:
    ld	$s0,8($sp)
.L0d96e700:
    # Line 4394
    jr	$ra
    addiu	$sp,$sp,32
.L0d96e708:
    # Line 4339
    lw	$v0,376($a1)
    lw	$at,0($a0)
    li	$a2,1
    sllv	$v0,$a2,$v0
    and	$at,$at,$v0
    beqz	$at,.L0d96e6fc
    # Line 4346
    dsll32	$v1,$a4,0xb
    bltz	$v1,.L0d96e6fc
    nop
    lw	$a3,24($s0)
    lw	$a1,20($a1)
    lw	$a0,36($s0)
    sllv	$a3,$a2,$a3
    addu	$a1,$a1,$a2
    sllv	$a1,$a2,$a1
    nor	$a0,$a0,$zero
    subu	$a1,$a1,$a3
    and	$a0,$a0,$a1
    bnez	$a0,.L0d96e6fc
    dsll32	$a3,$a4,0xf
    bltz	$a3,.L0d96e6fc
    nop
    # Line 4350
    lw	$a4,264($s0)
    bnez	$a4,.L0d96e778
    sd	$a5,0($sp)
    lw	$a5,268($s0)
    beqz	$a5,.L0d96e7fc
    sd	$ra,16($sp)
.L0d96e778:
    # Line 4352
    # lw $t9, -31608($gp) # &__glKonTexAlloc
    ld	$a0,0($sp)
    li	$a2,3
    sd	$ra,16($sp)
    move	$a1,$s0
    jal	__glKonTexAlloc
    lw	$a0,3868($a0)
    bgez	$v0,.L0d96e7d0
    # Line 4354
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,0($sp)
    addiu	$t9,$t9,-7776
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,3868($a0)
    # Line 4355
    # lw $t9, -31608($gp) # &__glKonTexAlloc
    ld	$a0,0($sp)
    li	$a2,1
    move	$a1,$s0
    jal	__glKonTexAlloc
    lw	$a0,3868($a0)
    bltz	$v0,.L0d96e6fc
    ld	$ra,16($sp)
.L0d96e7d0:
    # Line 4366
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d96e7d4:
    # Line 4365
    lui	$a2,0xffdf
    lw	$a1,32($s0)
    # Line 4366
    addiu	$t9,$t9,-7664
    move	$a0,$s0
    # Line 4365
    ori	$a2,$a2,0xffff
    and	$a1,$a1,$a2
    # Line 4366
    bal __glKonGetTexParameter
    # Line 4365
    sw	$a1,32($s0)
    b	.L0d96e6fc
    ld	$ra,16($sp)
.L0d96e7fc:
    # Line 4361
    # lw $t9, -31608($gp) # &__glKonTexAlloc
    ld	$a0,0($sp)
    move	$a1,$s0
    jal	__glKonTexAlloc
    lw	$a0,3868($a0)
    bgez	$v0,.L0d96e7d4
    # Line 4366
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    b	.L0d96e6fc
    ld	$ra,16($sp)
.end configTexture

# Function: slowBindTexture
# Declared: Line 4404 (Source lines: 4405-4471)
# Address: 0x0d96e820 - 0x0d96ea5c (Size: 572 bytes, Frame: 32)
.ent slowBindTexture
slowBindTexture:
    # Line 4405
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,10168
    sd	$gp,24($sp)
    addu	$gp,$t9,$ra
    # Line 4409
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6624
    move	$a2,$zero
    # Line 4405
    sd	$s0,0($sp)
    move	$s0,$a1
    # Line 4409
    nop
    # Line 4405
    sd	$s1,8($sp)
    # Line 4409
    bal __glKonGetTexParameter
    # Line 4405
    move	$s1,$a0
    # Line 4416
    lw	$a0,32($s0)
    dsll32	$at,$a0,0xb
    bgez	$at,.L0d96e8a0
    # Line 4446
    la	$a4,__glNop
    # Line 4416
    lw	$a1,20($s0)
    li	$a2,1
    lw	$a3,24($s0)
    addiu	$a1,$a1,1
    lw	$v0,36($s0)
    sllv	$a1,$a2,$a1
    sllv	$a2,$a2,$a3
    nor	$v0,$v0,$zero
    subu	$a1,$a1,$a2
    and	$v0,$a1,$v0
    beqz	$v0,.L0d96e944
    dsll32	$ra,$a0,0xf
    # Line 4446
    la	$a4,__glNop
.L0d96e8a0:
    la	$a3,sub_0d970000
    sw	$a4,260($s0)
    lui	$a2,0xfeff
    addiu	$a3,$a3,-6112
    sw	$a3,256($s0)
    ori	$a2,$a2,0xffff
    and	$a2,$a0,$a2
    sw	$a2,32($s0)
.L0d96e8c0:
    lw	$a5,376($s0)
    beqz	$a5,.L0d96e8f0
    # Line 4455
    lui	$a1,0x100
    # Line 4450
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    jal	sub_0d960000
    move	$a0,$s1
    # Line 4451
    sll	$s0,$v0,0x2
    addu	$s0,$s1,$s0
    # Line 4450
    move	$a0,$v0
    # Line 4451
    b	.L0d96e8fc
    lw	$s0,32($s0)
.L0d96e8f0:
    # Line 4454
    lw	$s0,32($s1)
    # Line 4455
    lw	$a0,32($s0)
    and	$a0,$a0,$a1
.L0d96e8fc:
    beqz	$a0,.L0d96e930
    ld	$ra,16($sp)
    lw	$a2,508($s0)
    beqz	$a2,.L0d96e91c
    # Line 4467
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,32384
    bal subtractTexTableUsage
    move	$a0,$s0
.L0d96e91c:
    # Line 4469
    lw	$t9,256($s0)
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s0
    ld	$ra,16($sp)
.L0d96e930:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 4471
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96e944:
    # Line 4416
    bltz	$ra,.L0d96e8a0
    # Line 4446
    la	$a4,__glNop
    # Line 4421
    lw	$at,40($s0)
    nor	$at,$at,$zero
    and	$at,$a1,$at
    bnez	$at,.L0d96e984
    dsll32	$v0,$a0,0x9
    bgez	$v0,.L0d96e998
    nop
    lbu	$v1,400($s0)
    bnez	$v1,.L0d96e998
    nop
    lw	$a0,52($s0)
    nor	$a0,$a0,$zero
    and	$a0,$a1,$a0
    beqz	$a0,.L0d96e998
.L0d96e984:
    # Line 4426
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-11280
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,3868($s1)
.L0d96e998:
    lw	$ra,272($s0)
    beqz	$ra,.L0d96ea48
    # Line 4429
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    lw	$a2,16($s0)
.L0d96e9a8:
    li	$at,3
    beq	$a2,$at,.L0d96e9c8
    # Line 4432
    nop	# was lw $t9, -31868($gp) # &bindTexTable
    lw	$a0,3868($s1)
    move	$a1,$s0
    li	$a3,0xc074
    jal	bindTexTable
    addu	$a0,$a0,$a3
.L0d96e9c8:
    # Line 4436
    lw	$a0,364($s0)
    li	$a7,0x844d
    li	$a5,0x8170
    # Line 4435
    lw	$a4,32($s0)
    # Line 4443
    la	$ra,sub_0d960000
    # Line 4436
    li	$t0,0x844e
    # Line 4435
    lui	$a6,0x100
    or	$a4,$a4,$a6
    # Line 4436
    beq	$a0,$a5,.L0d96ea24
    # Line 4435
    sw	$a4,32($s0)
    # Line 4436
    beq	$a0,$a7,.L0d96ea24
    nop
    beq	$a0,$t0,.L0d96ea24
    li	$t1,0x844f
    beq	$a0,$t1,.L0d96ea24
.L0d96ea04:
    # Line 4440
    la	$t2,.rodata
    lw	$t3,12($s0)
    addiu	$t2,$t2,22576
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    b	.L0d96ea3c
    sw	$t2,256($s0)
.L0d96ea24:
    # Line 4436
    lw	$t3,360($s0)
    li	$t8,0x8146
    beq	$t3,$t8,.L0d96ea04
    # Line 4442
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-23536
    sw	$t9,256($s0)
.L0d96ea3c:
    # Line 4443
    addiu	$ra,$ra,20112
    b	.L0d96e8c0
    sw	$ra,260($s0)
.L0d96ea48:
    # Line 4429
    addiu	$t9,$t9,20544
    jal	sub_0d970000
    move	$a0,$s0
    b	.L0d96e9a8
    lw	$a2,16($s0)
.end slowBindTexture

# Function: validateTexture
# Declared: Line 4478 (Source lines: 4479-4496)
# Address: 0x0d96ea60 - 0x0d96eb40 (Size: 224 bytes, Frame: 48)
.ent validateTexture
validateTexture:
    # Line 4479
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    sd	$s7,32($sp)
    # Line 4481
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 4479
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$s2,40($sp)
    # Line 4481
    addiu	$t9,$t9,-7776
    # Line 4479
    move	$s2,$a3
    move	$s7,$a4
    sd	$s1,16($sp)
    move	$s1,$a0
    # Line 4481
    bal __glKonGetTexParameter
    lw	$a0,3868($a0)
    # Line 4484
    lw	$ra,32($s0)
    lui	$at,0xffbf
    ori	$at,$at,0xffff
    and	$ra,$ra,$at
    or	$ra,$s7,$ra
    dsll32	$at,$ra,0xc
    # Line 4483
    sw	$s2,12($s0)
    # Line 4484
    bgez	$at,.L0d96eb14
    sw	$ra,32($s0)
    # Line 4488
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10416
    move	$a0,$s1
    move	$a1,$s0
    bal __glKonGetTexParameter
    ld	$a2,0($sp)
    # Line 4489
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s0
    # Line 4490
    lui	$ra,0xfffe
    # Line 4489
    beqz	$v0,.L0d96eb30
    lw	$a0,32($s0)
    # Line 4490
    ori	$ra,$ra,0xffff
    and	$ra,$a0,$ra
    sw	$ra,32($s0)
.L0d96eb00:
    # Line 4494
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    move	$a0,$s1
    bal __glKonGetTexParameter
    move	$a1,$s0
.L0d96eb14:
    ld	$s0,8($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s7,32($sp)
    ld	$s2,40($sp)
    # Line 4496
    jr	$ra
    addiu	$sp,$sp,48
.L0d96eb30:
    # Line 4492
    lui	$ra,0x21
    or	$ra,$a0,$ra
    b	.L0d96eb00
    sw	$ra,32($s0)
.end validateTexture

# Function: destroyTextureObj
# Declared: Line 4502 (Source lines: 4503-4513)
# Address: 0x0d96eb40 - 0x0d96ec08 (Size: 200 bytes, Frame: 192)
.ent destroyTextureObj
destroyTextureObj:
    # Line 4503
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s1,8($sp)
    sd	$s3,40($sp)
    move	$s3,$a0
    sd	$s2,48($sp)
    move	$s2,$a1
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$zero
    sd	$s5,0($sp)
    li	$s5,32
    sd	$s4,24($sp)
    b	.L0d96ebb0
    li	$s4,1
    nop
.L0d96eb80:
    # Line 4509
    lw	$t9,12($s3)
    lw	$a1,124($s1)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,0($a1)
    # Line 4510
    lw	$t9,12($s3)
.L0d96eb98:
    move	$a0,$s3
    jalr	$t9
    lw	$a1,124($s1)
.L0d96eba4:
    # Line 4506
    addiu	$s0,$s0,1
    beq	$s0,$s5,.L0d96ebd8
    addiu	$s1,$s1,4
.L0d96ebb0:
    # Line 4503
    lw	$a2,36($s2)
    sllv	$a1,$s4,$s0
    lw	$a3,48($s2)
    and	$a2,$a2,$a1
    beqz	$a2,.L0d96eba4
    and	$a3,$a3,$a1
    bnez	$a3,.L0d96eb80
    nop
    b	.L0d96eb98
    # Line 4510
    lw	$t9,12($s3)
.L0d96ebd8:
    # Line 4513
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    # Line 4512
    lw	$a1,252($s2)
    # Line 4513
    ld	$s2,48($sp)
    # Line 4512
    lw	$t9,12($s3)
    move	$a0,$s3
    # Line 4513
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    ld	$s5,0($sp)
    jr	$t9
    addiu	$sp,$sp,64
.end destroyTextureObj

# Function: __glkonim_GenTexturesEXT_Slow
# Declared: Line 4517 (Source lines: 4518-4571)
# Address: 0x0d96ec10 - 0x0d96ee1c (Size: 524 bytes, Frame: 240)
.globl __glkonim_GenTexturesEXT_Slow
.ent __glkonim_GenTexturesEXT_Slow
__glkonim_GenTexturesEXT_Slow:
    # Line 4518
    addiu	$sp,$sp,-112
    sd	$s1,32($sp)
    sd	$s5,24($sp)
    sd	$s6,72($sp)
    sd	$ra,56($sp)
    sd	$s7,16($sp)
    sdc1	$f20,0($sp)
    sd	$gp,64($sp)
    sd	$s2,88($sp)
    sd	$s0,40($sp)
    move	$s0,$a1
    # Line 4524
    lw	$v0,4120($zero)
    # Line 4518
    move	$s2,$a0
    lui	$at,0x12
    sd	$s8,8($sp)
    # Line 4524
    li	$v1,1
    # Line 4518
    addiu	$at,$at,9160
    # Line 4524
    lw	$s8,4112($zero)
    # Line 4518
    sd	$s3,80($sp)
    # Line 4531
    lui	$s3,0x1
    # Line 4518
    addu	$gp,$t9,$at
    sd	$s4,48($sp)
    # Line 4524
    beq	$v0,$v1,.L0d96edf8
    # Line 4531
    addu	$s4,$s3,$s8
    # Line 4524
    bltz	$a0,.L0d96ee0c
    # Line 4527
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4535
    lwc1	$f20,_lit_3f800000
    # Line 4531
    lw	$s4,-30036($s4)
    # Line 4535
    lw	$s1,20($s4)
    li	$s7,-1
    addu	$s3,$s3,$s4
    # Line 4531
    sd	$s4,96($sp)
    # Line 4535
    addiu	$s4,$s4,40
    sll	$s6,$s1,0x2
.L0d96ec98:
    addiu	$s6,$s6,-4
    addiu	$s1,$s1,-1
    beq	$s1,$s7,.L0d96ed30
    nop
    addiu	$s2,$s2,-1
    beq	$s2,$s7,.L0d96ed30
    # Line 4536
    ld	$a1,96($sp)
    lw	$t9,-16336($s3)
    lw	$a1,16($a1)
    addu	$a1,$a1,$s6
    move	$a0,$s4
    jal	__glSetError
    lw	$a1,0($a1)
    bnez	$v0,.L0d96edc0
    # Line 4539
    ld	$a2,96($sp)
    lw	$a2,16($a2)
    addu	$a2,$a2,$s6
    lw	$a2,0($a2)
    sw	$a2,0($s0)
    # Line 4540
    lw	$t9,0($s8)
    li	$a1,544
    jalr	$t9
    move	$a0,$s8
    # Line 4541
    # lw $t9, -18524($gp) # &bzero
    # Line 4540
    move	$s5,$v0
    # Line 4541
    move	$a0,$v0
    jal	bzero
    li	$a1,544
    # Line 4544
    sw	$zero,120($s5)
    # Line 4543
    swc1	$f20,328($s5)
    # Line 4542
    sw	$s7,376($s5)
    # Line 4545
    lw	$t9,-16328($s3)
    move	$a2,$s5
    lw	$a1,0($s0)
    jalr	$t9
    move	$a0,$s4
    # Line 4535
    b	.L0d96ec98
    addiu	$s0,$s0,4
.L0d96ed30:
    beqz	$s2,.L0d96edc0
    # Line 4557
    ld	$a4,96($sp)
    lw	$s1,28($a4)
    # Line 4558
    addu	$a3,$s2,$s1
    # Line 4559
    addiu	$s2,$s2,-1
    addiu	$s6,$s1,-1
    beq	$s2,$s7,.L0d96edc0
    # Line 4558
    sw	$a3,28($a4)
.L0d96ed50:
    # Line 4560
    lw	$t9,-16336($s3)
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s1
    bnez	$v0,.L0d96edc0
    # Line 4563
    addiu	$s6,$s6,1
    sw	$s6,0($s0)
    # Line 4564
    lw	$t9,0($s8)
    li	$a1,544
    move	$a0,$s8
    jalr	$t9
    # Line 4563
    addiu	$s1,$s1,1
    # Line 4565
    # lw $t9, -18524($gp) # &bzero
    # Line 4564
    move	$s5,$v0
    # Line 4565
    move	$a0,$v0
    jal	bzero
    li	$a1,544
    # Line 4568
    sw	$zero,120($s5)
    # Line 4567
    swc1	$f20,328($s5)
    # Line 4566
    sw	$s7,376($s5)
    # Line 4569
    lw	$t9,-16328($s3)
    move	$a2,$s5
    lw	$a1,0($s0)
    jalr	$t9
    move	$a0,$s4
    # Line 4559
    addiu	$s2,$s2,-1
    bne	$s2,$s7,.L0d96ed50
    addiu	$s0,$s0,4
.L0d96edc0:
    # Line 4571
    ld	$gp,64($sp)
.L0d96edc4:
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$s6,72($sp)
    ld	$ra,56($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96edf8:
    # Line 4524
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d96edc4
    # Line 4571
    ld	$gp,64($sp)
.L0d96ee0c:
    # Line 4527
    jalr	$t9
    li	$a0,1281
    b	.L0d96edc4
    # Line 4571
    ld	$gp,64($sp)
.end __glkonim_GenTexturesEXT_Slow

# Function: __glkonim_GenTexturesEXT
# Declared: Line 4574 (Source lines: 4575-4642)
# Address: 0x0d96ee20 - 0x0d96f074 (Size: 596 bytes, Frame: 240)
.globl __glkonim_GenTexturesEXT
.ent __glkonim_GenTexturesEXT
__glkonim_GenTexturesEXT:
    # Line 4575
    addiu	$sp,$sp,-112
    sd	$s4,16($sp)
    # Line 4580
    lw	$s4,4112($zero)
    sdc1	$f20,32($sp)
    sd	$s5,80($sp)
    sd	$s1,72($sp)
    sd	$ra,64($sp)
    sd	$s6,56($sp)
    # Line 4575
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 4601
    lui	$s6,0x1
    sd	$s2,40($sp)
    li	$s2,-1
    # Line 4580
    li	$v0,1
    lw	$at,4120($zero)
    # Line 4575
    lui	$v1,0x12
    sd	$s7,0($sp)
    move	$s7,$a0
    sd	$s3,48($sp)
    addiu	$v1,$v1,8632
    # Line 4597
    move	$s3,$s7
    sd	$gp,24($sp)
    # Line 4580
    beq	$at,$v0,.L0d96f04c
    # Line 4575
    addu	$gp,$t9,$v1
    # Line 4587
    lui	$v0,0x1
    # Line 4580
    bltz	$a0,.L0d96f060
    sd	$s8,88($sp)
    # Line 4587
    addu	$s8,$v0,$s4
    lw	$s8,-30036($s8)
    lw	$a0,20($s8)
    slt	$a1,$a0,$s7
    # Line 4601
    addiu	$s5,$s8,40
    addu	$s6,$s6,$s8
    # Line 4587
    beqz	$a1,.L0d96eebc
    # Line 4597
    subu	$ra,$a0,$s7
    # Line 4593
    move	$s3,$a0
    # Line 4594
    sw	$zero,20($s8)
    b	.L0d96eec4
    # Line 4593
    subu	$s7,$s7,$a0
.L0d96eebc:
    # Line 4597
    sw	$ra,20($s8)
    # Line 4598
    move	$s7,$zero
.L0d96eec4:
    # Line 4601
    addiu	$s3,$s3,-1
    beq	$s3,$s2,.L0d96ef50
    # Line 4632
    lwc1	$f20,_lit_3f800000
    # Line 4601
    lwc1	$f20,_lit_3f800000
    nop
    nop
    nop
.L0d96eee0:
    # Line 4602
    lw	$t9,0($s4)
    move	$a0,$s4
    jalr	$t9
    li	$a1,544
    # Line 4604
    # lw $t9, -18524($gp) # &bzero
    # Line 4602
    move	$s1,$v0
    # Line 4604
    move	$a0,$v0
    jal	bzero
    li	$a1,544
    # Line 4605
    lw	$t9,20($s8)
    lw	$t8,16($s8)
    addu	$t9,$t9,$s3
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lw	$t8,0($t8)
    sw	$t8,0($s0)
    # Line 4608
    sw	$zero,120($s1)
    # Line 4607
    swc1	$f20,328($s1)
    # Line 4606
    sw	$s2,376($s1)
    # Line 4609
    lw	$t9,-16328($s6)
    move	$a2,$s1
    move	$a0,$s5
    jalr	$t9
    lw	$a1,0($s0)
    # Line 4601
    addiu	$s3,$s3,-1
    bne	$s3,$s2,.L0d96eee0
    addiu	$s0,$s0,4
    # Line 4632
    lwc1	$f20,_lit_3f800000
.L0d96ef50:
    # Line 4601
    beqz	$s7,.L0d96eff8
    move	$a0,$s7
    # Line 4620
    lui	$ra,0x4000
    lw	$a2,32($s8)
    lw	$a1,28($s8)
    ori	$ra,$ra,0x4000
    sltu	$ra,$a2,$ra
    # Line 4632
    addiu	$s3,$a1,-1
    # Line 4620
    bnez	$ra,.L0d96ef80
    addu	$v0,$s7,$a1
    sltu	$at,$a2,$v0
    bnez	$at,.L0d96f030
.L0d96ef80:
    # Line 4632
    addiu	$s7,$a0,-1
    beq	$s7,$s2,.L0d96eff8
    # Line 4631
    sw	$v0,28($s8)
    # Line 4632
    lui	$s6,0x1
    addiu	$s5,$s8,40
    addu	$s6,$s6,$s8
    nop
    nop
.L0d96efa0:
    # Line 4633
    lw	$t9,0($s4)
    move	$a0,$s4
    jalr	$t9
    li	$a1,544
    # Line 4635
    # lw $t9, -18524($gp) # &bzero
    # Line 4633
    move	$s1,$v0
    # Line 4635
    move	$a0,$v0
    jal	bzero
    li	$a1,544
    # Line 4636
    addiu	$s3,$s3,1
    sw	$s3,0($s0)
    # Line 4639
    sw	$zero,120($s1)
    # Line 4638
    swc1	$f20,328($s1)
    # Line 4637
    sw	$s2,376($s1)
    # Line 4640
    lw	$t9,-16328($s6)
    move	$a2,$s1
    lw	$a1,0($s0)
    jalr	$t9
    move	$a0,$s5
    # Line 4632
    addiu	$s7,$s7,-1
    bne	$s7,$s2,.L0d96efa0
    addiu	$s0,$s0,4
.L0d96eff8:
    ld	$s8,88($sp)
.L0d96effc:
    ld	$s5,80($sp)
    ld	$s1,72($sp)
    ld	$s6,56($sp)
    ld	$s3,48($sp)
    ld	$s2,40($sp)
    ldc1	$f20,32($sp)
    # Line 4642
    ld	$gp,24($sp)
    ld	$ra,64($sp)
    ld	$s0,8($sp)
    ld	$s4,16($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96f030:
    # Line 4626
    # lw $t9, -31844($gp) # &__glkonim_GenTexturesEXT_Slow
    # Line 4625
    la	$t8,__glkonim_GenTexturesEXT_Slow
    # Line 4626
    move	$a1,$s0
    bal __glkonim_GenTexturesEXT_Slow
    # Line 4625
    sw	$t8,8872($s4)
    b	.L0d96effc
    ld	$s8,88($sp)
.L0d96f04c:
    # Line 4580
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d96eff8
    sd	$s8,88($sp)
.L0d96f060:
    # Line 4583
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d96effc
    ld	$s8,88($sp)
.end __glkonim_GenTexturesEXT

# Function: __glKonFreeTextureObj
# Declared: Line 4645 (Source lines: 4646-4652)
# Address: 0x0d96f080 - 0x0d96f0e0 (Size: 96 bytes, Frame: 32)
.globl __glKonFreeTextureObj
.ent __glKonFreeTextureObj
__glKonFreeTextureObj:
    # Line 4646
    addiu	$sp,$sp,-32
    lui	$v0,0x12
    sd	$a1,24($sp)
    addiu	$v0,$v0,8024
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4648
    # lw $t9, -31604($gp) # &__glKonTexFree
    # Line 4646
    sd	$ra,0($sp)
    # Line 4648
    li	$at,0x8aac
    # Line 4646
    sd	$s8,8($sp)
    # Line 4648
    addu	$at,$at,$a0
    # Line 4646
    move	$s8,$a0
    # Line 4648
    jal	__glKonTexFree
    lw	$a0,0($at)
    # Line 4651
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-5312
    move	$a0,$s8
    bal __glKonGetTexParameter
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 4652
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonFreeTextureObj

# Function: __glKonDeleteTextureObj
# Declared: Line 4677 (Source lines: 4678-4704)
# Address: 0x0d96f0e0 - 0x0d96f224 (Size: 324 bytes, Frame: 48)
.globl __glKonDeleteTextureObj
.ent __glKonDeleteTextureObj
__glKonDeleteTextureObj:
    # Line 4678
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 4681
    lw	$at,272($a1)
    li	$v1,0x8aac
    # Line 4678
    sd	$s1,24($sp)
    lui	$v0,0x12
    # Line 4681
    addu	$v1,$v1,$a0
    # Line 4678
    move	$s1,$a0
    addiu	$v0,$v0,7928
    # Line 4681
    lw	$v1,0($v1)
    # Line 4678
    addu	$gp,$t9,$v0
    # Line 4681
    bnez	$at,.L0d96f17c
    sd	$v1,8($sp)
    # Line 4692
    # lw $t9, -31836($gp) # &__glKonFreeTextureObj
.L0d96f124:
    move	$a0,$s1
    bal __glKonFreeTextureObj
    move	$a1,$s0
    # Line 4694
    lw	$a0,376($s0)
    li	$a1,1
    li	$a2,2
    beq	$a0,$a1,.L0d96f194
    # Line 4697
    li	$a3,3
    # Line 4694
    beq	$a0,$a2,.L0d96f198
    # Line 4695
    li	$a4,1
    # Line 4697
    beq	$a0,$a3,.L0d96f1fc
    # Line 4700
    move	$a0,$s1
    # Line 4703
    lw	$t9,12($s1)
.L0d96f158:
    move	$a0,$s1
    jal	__glKonFreeTextureObj
    move	$a1,$s0
    ld	$ra,40($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 4704
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d96f17c:
    # Line 4688
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20320
    jal	sub_0d960000
    move	$a0,$a1
    b	.L0d96f124
    # Line 4692
    nop	# was lw $t9, -31836($gp) # &__glKonFreeTextureObj
.L0d96f194:
    # Line 4695
    li	$a4,1
.L0d96f198:
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a3,$s0
    li	$a1,1
    ld	$a2,8($sp)
    move	$a0,$s1
    li	$a5,0xc074
    addu	$a2,$a2,$a5
    jal	subtractTexTableUsage
    sd	$a2,0($sp)
    # Line 4696
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s1
    li	$a4,2
    move	$a3,$s0
    ld	$a2,0($sp)
    jal	subtractTexTableUsage
    li	$a1,1
    # Line 4697
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s1
    move	$a4,$zero
    move	$a3,$s0
    ld	$a2,0($sp)
    jal	subtractTexTableUsage
    li	$a1,1
    b	.L0d96f158
    # Line 4703
    lw	$t9,12($s1)
.L0d96f1fc:
    # Line 4700
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    li	$a4,2
    move	$a3,$s0
    ld	$a2,8($sp)
    li	$a1,1
    li	$a5,0xc074
    jal	subtractTexTableUsage
    addu	$a2,$a2,$a5
    b	.L0d96f158
    # Line 4703
    lw	$t9,12($s1)
.end __glKonDeleteTextureObj

# Function: __glKonDeleteTexturesEXT
# Declared: Line 4707 (Source lines: 4708-4767)
# Address: 0x0d96f230 - 0x0d96f478 (Size: 584 bytes, Frame: 240)
.globl __glKonDeleteTexturesEXT
.ent __glKonDeleteTexturesEXT
__glKonDeleteTexturesEXT:
    # Line 4708
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    sd	$s2,0($sp)
    # Line 4716
    lui	$v0,0x1
    # Line 4719
    addiu	$s2,$a1,-1
    # Line 4708
    sd	$s7,24($sp)
    # Line 4716
    addu	$s7,$v0,$a0
    # Line 4708
    move	$s0,$a2
    lui	$at,0x12
    # Line 4716
    lw	$s7,-30036($s7)
    # Line 4708
    sd	$s3,8($sp)
    move	$s3,$a0
    addiu	$at,$at,7592
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4717
    addiu	$t8,$s7,16
    sd	$t8,48($sp)
    # Line 4719
    beqz	$a1,.L0d96f45c
    # Line 4716
    addiu	$s7,$s7,40
    # Line 4719
    addiu	$t8,$a0,31632
    sd	$s1,88($sp)
    sd	$ra,72($sp)
    sd	$s5,96($sp)
    sd	$s6,56($sp)
    lui	$s6,0x200
    li	$s5,-1
    sd	$s8,64($sp)
    addu	$s8,$v0,$s7
    sd	$s4,80($sp)
    lui	$s4,0x4000
    sd	$t8,40($sp)
    b	.L0d96f33c
    ori	$s4,$s4,0x4000
    nop
    nop
    nop
.L0d96f2c0:
    # Line 4740
    lw	$v0,364($a1)
    beq	$v0,$t9,.L0d96f3f4
    # Line 4744
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4740
    beq	$v0,$ra,.L0d96f3f4
    # Line 4744
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4740
    beq	$v0,$at,.L0d96f3f4
    # Line 4744
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4740
    beq	$v0,$v1,.L0d96f3f0
.L0d96f2e0:
    # Line 4747
    sll	$a3,$a2,0x4
    addu	$a2,$a3,$a2
    sll	$a2,$a2,0x5
    addu	$a2,$s3,$a2
    addiu	$a2,$a2,31692
    sw	$a2,31664($a5)
    # Line 4750
    lw	$a1,376($s1)
    sll	$a1,$a1,0x2
    addu	$a1,$s3,$a1
    lw	$a1,31664($a1)
    lw	$t9,256($a1)
    jal	sub_0d970000
    ld	$a0,40($sp)
    # Line 4753
    lw	$v0,120($s1)
    addiu	$v0,$v0,-1
    beqz	$v0,.L0d96f3d8
    sw	$v0,120($s1)
.L0d96f324:
    # Line 4764
    lw	$v1,32($s1)
    or	$v1,$v1,$s6
    sw	$v1,32($s1)
.L0d96f330:
    # Line 4719
    addiu	$s2,$s2,-1
.L0d96f334:
    beq	$s2,$s5,.L0d96f444
    addiu	$s0,$s0,4
.L0d96f33c:
    # Line 4721
    lw	$a1,0($s0)
    beqz	$a1,.L0d96f330
    nop
    lw	$t9,-16372($s8)
    jalr	$t9
    move	$a0,$s7
    # Line 4725
    ld	$a2,48($sp)
    # Line 4721
    beqz	$v0,.L0d96f330
    move	$s1,$v0
    # Line 4725
    lw	$a1,0($s0)
    sltu	$a0,$a1,$s4
    bnez	$a0,.L0d96f3ac
    nop
    lw	$a2,12($a2)
    sltu	$a2,$a1,$a2
    beqz	$a2,.L0d96f3ac
    ld	$a1,48($sp)
    lw	$v0,8($a1)
    lw	$a2,4($a1)
    beq	$a2,$v0,.L0d96f414
    lw	$a1,0($a1)
.L0d96f390:
    # Line 4730
    ld	$a6,48($sp)
    addiu	$a5,$a2,1
    sll	$a4,$a5,0x2
    sw	$a5,4($a6)
    addu	$a4,$a1,$a4
    lw	$a3,0($s0)
    sw	$a3,-4($a4)
.L0d96f3ac:
    lw	$a2,376($s1)
    sll	$a5,$a2,0x2
    addu	$a5,$s3,$a5
    lw	$a1,31664($a5)
    # Line 4740
    li	$at,0x844e
    li	$ra,0x844d
    li	$t9,0x8170
    # Line 4730
    beq	$a1,$s1,.L0d96f2c0
    # Line 4740
    li	$v1,0x844f
    # Line 4753
    lw	$a6,120($s1)
    bnez	$a6,.L0d96f324
.L0d96f3d8:
    # Line 4762
    nop	# was lw $t9, -31832($gp) # &__glKonDeleteTextureObj
    move	$a0,$s3
    bal __glKonDeleteTextureObj
    move	$a1,$s1
    b	.L0d96f334
    # Line 4719
    addiu	$s2,$s2,-1
.L0d96f3f0:
    # Line 4744
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d96f3f4:
    addiu	$t9,$t9,-23616
    move	$a0,$s1
    bal __glKonGetTexParameter
    move	$a1,$zero
    lw	$a2,376($s1)
    sll	$a5,$a2,0x2
    b	.L0d96f2e0
    addu	$a5,$s3,$a5
.L0d96f414:
    # Line 4727
    ld	$a3,48($sp)
    addiu	$a2,$v0,256
    sw	$a2,8($a3)
    # Line 4728
    lw	$t9,8($s3)
    move	$a0,$s3
    jal	sub_0d970000
    sll	$a2,$a2,0x2
    ld	$a4,48($sp)
    lw	$a2,4($a4)
    move	$a1,$v0
    b	.L0d96f390
    sw	$v0,0($a4)
.L0d96f444:
    ld	$s6,56($sp)
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    ld	$s4,80($sp)
    ld	$s1,88($sp)
    ld	$s5,96($sp)
.L0d96f45c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s0,16($sp)
    ld	$s7,24($sp)
    # Line 4767
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glKonDeleteTexturesEXT

# Function: __glkonim_DeleteTexturesEXT
# Declared: Line 4770 (Source lines: 4771-4864)
# Address: 0x0d96f480 - 0x0d96f840 (Size: 960 bytes, Frame: 240)
.globl __glkonim_DeleteTexturesEXT
.ent __glkonim_DeleteTexturesEXT
__glkonim_DeleteTexturesEXT:
    # Line 4771
    addiu	$sp,$sp,-112
    sd	$s3,0($sp)
    # Line 4778
    lw	$s3,4112($zero)
    sd	$s2,56($sp)
    # Line 4771
    sd	$s1,16($sp)
    move	$s1,$a1
    # Line 4778
    lw	$at,4120($zero)
    # Line 4771
    sd	$s0,8($sp)
    # Line 4778
    li	$v0,1
    # Line 4771
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,64($sp)
    addiu	$v1,$v1,7000
    sd	$gp,24($sp)
    # Line 4778
    beq	$at,$v0,.L0d96f814
    # Line 4771
    addu	$gp,$t9,$v1
    # Line 4778
    bltz	$a0,.L0d96f828
    # Line 4781
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4782
    lw	$v0,-16508($gp)
    bltz	$v0,.L0d96f7e4
    # Line 4786
    nop	# was lw $t9, -18588($gp) # &getenv
.L0d96f4d4:
    # Line 4787
    beqz	$v0,.L0d96f4f8
    # Line 4799
    addiu	$s2,$s0,-1
    # Line 4790
    # lw $t9, -31828($gp) # &__glKonDeleteTexturesEXT
    move	$a0,$s3
    move	$a1,$s0
    bal __glKonDeleteTexturesEXT
    move	$a2,$s1
    b	.L0d96f7c8
    ld	$s2,56($sp)
.L0d96f4f8:
    # Line 4795
    lui	$v0,0x1
    addu	$a0,$v0,$s3
    lw	$a0,-30036($a0)
    # Line 4799
    beqz	$s0,.L0d96f7c4
    sd	$a0,48($sp)
    addiu	$t8,$s3,31632
    sd	$t8,40($sp)
    sd	$s5,96($sp)
    sd	$s6,72($sp)
    lui	$s6,0x200
    sd	$s4,88($sp)
    li	$s5,-1
    lui	$s4,0x4000
    ld	$a1,48($sp)
    sd	$s8,80($sp)
    li	$a2,0xc074
    ori	$s4,$s4,0x4000
    sd	$s7,104($sp)
    addu	$s7,$v0,$a1
    addiu	$s8,$a1,40
    addu	$a1,$a1,$a2
    b	.L0d96f584
    sd	$a1,32($sp)
    nop
    nop
    nop
.L0d96f560:
    # Line 4850
    lw	$t9,120($s0)
    beqz	$t9,.L0d96f6ac
    nop
.L0d96f56c:
    # Line 4861
    lw	$ra,32($s0)
    or	$ra,$ra,$s6
    sw	$ra,32($s0)
.L0d96f578:
    # Line 4799
    addiu	$s2,$s2,-1
.L0d96f57c:
    beq	$s2,$s5,.L0d96f7b0
    addiu	$s1,$s1,4
.L0d96f584:
    # Line 4801
    lw	$a1,0($s1)
    beqz	$a1,.L0d96f578
    nop
    lw	$t9,-16332($s7)
    jal	__glKonDeleteTexturesEXT
    move	$a0,$s8
    beqz	$v0,.L0d96f578
    move	$s0,$v0
    # Line 4805
    lw	$a1,0($s1)
    sltu	$at,$a1,$s4
    bnez	$at,.L0d96f5f0
    ld	$v0,48($sp)
    lw	$v0,28($v0)
    sltu	$v0,$a1,$v0
    beqz	$v0,.L0d96f5f0
    ld	$a1,48($sp)
    lw	$v0,24($a1)
    lw	$a3,20($a1)
    beq	$a3,$v0,.L0d96f75c
    lw	$a1,16($a1)
.L0d96f5d4:
    # Line 4811
    ld	$a6,48($sp)
    addiu	$a5,$a3,1
    sll	$a4,$a5,0x2
    sw	$a5,20($a6)
    addu	$a4,$a1,$a4
    lw	$a2,0($s1)
    sw	$a2,-4($a4)
.L0d96f5f0:
    lw	$a7,272($s0)
    bnez	$a7,.L0d96f6c4
    # Line 4819
    nop	# was lw $t9, -31836($gp) # &__glKonFreeTextureObj
.L0d96f5fc:
    move	$a0,$s3
    bal __glKonFreeTextureObj
    move	$a1,$s0
    # Line 4821
    lw	$v0,376($s0)
    li	$a0,1
    li	$t0,2
    beq	$v0,$a0,.L0d96f6dc
    # Line 4824
    li	$t1,3
    # Line 4821
    beq	$v0,$t0,.L0d96f6e0
    # Line 4822
    nop	# was lw $t9, -31856($gp) # &subtractTexTableUsage
    # Line 4824
    beq	$v0,$t1,.L0d96f78c
.L0d96f628:
    # Line 4826
    sll	$a3,$v0,0x2
    addu	$a3,$s3,$a3
    lw	$a6,31664($a3)
    # Line 4837
    li	$a5,0x844d
    li	$a4,0x8170
    # Line 4826
    bne	$a6,$s0,.L0d96f560
    # Line 4837
    li	$a7,0x844f
    lw	$a1,364($a6)
    beq	$a1,$a4,.L0d96f738
    li	$a6,0x844e
    beq	$a1,$a5,.L0d96f73c
    # Line 4841
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4837
    beq	$a1,$a6,.L0d96f73c
    # Line 4841
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4837
    beq	$a1,$a7,.L0d96f73c
    # Line 4841
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d96f668:
    # Line 4844
    sll	$a2,$v0,0x4
    addu	$a2,$a2,$v0
    sll	$a2,$a2,0x5
    addu	$a2,$s3,$a2
    addiu	$a2,$a2,31692
    sw	$a2,31664($a3)
    # Line 4847
    lw	$a1,376($s0)
    sll	$a1,$a1,0x2
    addu	$a1,$s3,$a1
    lw	$a1,31664($a1)
    lw	$t9,256($a1)
    jal	sub_0d970000
    ld	$a0,40($sp)
    # Line 4850
    lw	$v0,120($s0)
    addiu	$v0,$v0,-1
    bnez	$v0,.L0d96f56c
    sw	$v0,120($s0)
.L0d96f6ac:
    # Line 4859
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    b	.L0d96f57c
    # Line 4799
    addiu	$s2,$s2,-1
.L0d96f6c4:
    # Line 4816
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20320
    jal	sub_0d960000
    move	$a0,$s0
    b	.L0d96f5fc
    # Line 4819
    nop	# was lw $t9, -31836($gp) # &__glKonFreeTextureObj
.L0d96f6dc:
    # Line 4822
    # lw $t9, -31856($gp) # &subtractTexTableUsage
.L0d96f6e0:
    move	$a0,$s3
    li	$a4,1
    move	$a3,$s0
    ld	$a2,32($sp)
    jal	subtractTexTableUsage
    li	$a1,1
    # Line 4823
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s3
    li	$a4,2
    move	$a3,$s0
    ld	$a2,32($sp)
    jal	subtractTexTableUsage
    li	$a1,1
    # Line 4824
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s3
    move	$a4,$zero
    move	$a3,$s0
    ld	$a2,32($sp)
    jal	subtractTexTableUsage
    li	$a1,1
    b	.L0d96f628
    lw	$v0,376($s0)
.L0d96f738:
    # Line 4841
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d96f73c:
    addiu	$t9,$t9,-23616
    move	$a0,$s0
    bal __glKonGetTexParameter
    move	$a1,$zero
    lw	$v0,376($s0)
    sll	$a3,$v0,0x2
    b	.L0d96f668
    addu	$a3,$s3,$a3
.L0d96f75c:
    # Line 4807
    ld	$a3,48($sp)
    addiu	$a2,$v0,256
    sw	$a2,24($a3)
    # Line 4808
    lw	$t9,8($s3)
    move	$a0,$s3
    jal	sub_0d970000
    sll	$a2,$a2,0x2
    ld	$a4,48($sp)
    lw	$a3,20($a4)
    move	$a1,$v0
    b	.L0d96f5d4
    sw	$v0,16($a4)
.L0d96f78c:
    # Line 4827
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s3
    move	$a4,$t0
    move	$a3,$s0
    ld	$a2,32($sp)
    jal	subtractTexTableUsage
    li	$a1,1
    b	.L0d96f628
    lw	$v0,376($s0)
.L0d96f7b0:
    ld	$s6,72($sp)
    ld	$s8,80($sp)
    ld	$s4,88($sp)
    ld	$s5,96($sp)
    ld	$s7,104($sp)
.L0d96f7c4:
    ld	$s2,56($sp)
.L0d96f7c8:
    ld	$s3,0($sp)
    ld	$ra,64($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 4864
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96f7e4:
    # Line 4786
    la	$a0,.rodata
    jalr	$t9
    addiu	$a0,$a0,-4808
    # Line 4787
    beqz	$v0,.L0d96f808
    li	$a1,110
    lbu	$a0,0($v0)
    beq	$a0,$a1,.L0d96f838
    li	$a2,78
    beq	$a0,$a2,.L0d96f838
.L0d96f808:
    li	$v0,1
.L0d96f80c:
    b	.L0d96f4d4
    sw	$v0,-16508($gp)
.L0d96f814:
    # Line 4778
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d96f7c8
    ld	$s2,56($sp)
.L0d96f828:
    # Line 4781
    jalr	$t9
    li	$a0,1281
    b	.L0d96f7c8
    ld	$s2,56($sp)
.L0d96f838:
    b	.L0d96f80c
    # Line 4787
    move	$v0,$zero
.end __glkonim_DeleteTexturesEXT

# Function: __glkonim_BindTextureEXT
# Declared: Line 4867 (Source lines: 4868-4975)
# Address: 0x0d96f840 - 0x0d96fb9c (Size: 860 bytes, Frame: 208)
.globl __glkonim_BindTextureEXT
.ent __glkonim_BindTextureEXT
__glkonim_BindTextureEXT:
    # Line 4868
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    # Line 4873
    lw	$s1,4112($zero)
    sd	$s4,64($sp)
    sd	$ra,56($sp)
    # Line 4868
    sd	$s2,24($sp)
    move	$s2,$a1
    # Line 4873
    lw	$at,4120($zero)
    # Line 4868
    sd	$s0,16($sp)
    # Line 4873
    li	$v0,1
    # Line 4868
    lui	$v1,0x12
    move	$s0,$a0
    sd	$s3,48($sp)
    addiu	$v1,$v1,6040
    sd	$gp,40($sp)
    # Line 4873
    beq	$at,$v0,.L0d96fb5c
    # Line 4868
    addu	$gp,$t9,$v1
    # Line 4876
    lw	$v0,31640($s1)
    la	$t8,index_2_target_map
    lui	$s4,0x1
    sll	$t9,$v0,0x2
    addu	$s3,$s4,$s1
    sd	$s3,8($sp)
    addu	$t8,$t8,$t9
    lw	$t8,0($t8)
    lw	$s3,-30036($s3)
    bne	$t8,$a0,.L0d96f9b4
    addiu	$s3,$s3,40
    # Line 4885
    bnez	$a1,.L0d96f9d4
    move	$s0,$v0
.L0d96f8b8:
    # Line 4941
    sll	$s3,$s0,0x2
    addu	$s3,$s1,$s3
    lw	$a5,31664($s3)
    # Line 4888
    sll	$s4,$s0,0x4
    addu	$s4,$s4,$s0
    # Line 4941
    lw	$t8,380($a5)
    # Line 4888
    sll	$s4,$s4,0x5
    addu	$s4,$s1,$s4
    # Line 4941
    bne	$t8,$s2,.L0d96f8e8
    # Line 4888
    addiu	$s4,$s4,31692
.L0d96f8e0:
    # Line 4941
    beq	$a5,$s4,.L0d96f990
    nop
.L0d96f8e8:
    # Line 4948
    lw	$t9,260($a5)
.L0d96f8ec:
    ld	$a0,8($sp)
    move	$a1,$a5
    jalr	$t9
    lw	$a0,-30036($a0)
    # Line 4951
    lw	$a5,31664($s3)
    lw	$a0,364($a5)
    li	$a1,0x8170
    beq	$a0,$a1,.L0d96fa54
    # Line 4955
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4951
    li	$a2,0x844d
    beq	$a0,$a2,.L0d96fa54
    # Line 4955
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 4951
    li	$a3,0x844e
    beq	$a0,$a3,.L0d96fa50
    li	$a4,0x844f
    beq	$a0,$a4,.L0d96fa54
    # Line 4955
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d96f930:
    # Line 4959
    lw	$a7,120($a5)
    addiu	$a7,$a7,-1
    sw	$a7,120($a5)
    # Line 4960
    lw	$a5,31664($s3)
    lw	$a6,32($a5)
    dsll32	$a6,$a6,0x6
    bgez	$a6,.L0d96f970
    nop
    lw	$t0,120($a5)
    bnez	$t0,.L0d96f970
    lw	$t1,-16508($gp)
    beqz	$t1,.L0d96fb70
    # Line 4963
    nop	# was lw $t9, -31832($gp) # &__glKonDeleteTextureObj
    move	$a0,$s1
    bal __glKonDeleteTextureObj
    move	$a1,$a5
.L0d96f970:
    # Line 4970
    sw	$s4,31664($s3)
.L0d96f974:
    # Line 4974
    lw	$t9,256($s4)
    # Line 4971
    lw	$t2,120($s4)
    # Line 4974
    move	$a1,$s4
    addiu	$a0,$s1,31632
    # Line 4971
    addiu	$t2,$t2,1
    # Line 4974
    jal	__glKonDeleteTextureObj
    # Line 4971
    sw	$t2,120($s4)
.L0d96f990:
    ld	$s4,64($sp)
.L0d96f994:
    ld	$s3,48($sp)
    # Line 4975
    ld	$gp,40($sp)
    ld	$ra,56($sp)
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96f9b4:
    # Line 4878
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    bltz	$v0,.L0d96fb88
    move	$s0,$v0
    # Line 4885
    beqz	$s2,.L0d96f8b8
    # Line 4882
    sw	$v0,31640($s1)
.L0d96f9d4:
    # Line 4891
    addu	$t9,$s4,$s3
    sd	$t9,0($sp)
    lw	$t9,-16376($t9)
    move	$a1,$s2
    jalr	$t9
    move	$a0,$s3
    beqz	$v0,.L0d96fa7c
    move	$s4,$v0
    lw	$v0,376($v0)
    beq	$v0,$s0,.L0d96fa34
    # Line 4941
    sll	$s3,$s0,0x2
    # Line 4891
    bgez	$v0,.L0d96fa6c
    # Line 4904
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4896
    sll	$s3,$s0,0x2
    sw	$s0,376($s4)
    # Line 4897
    sw	$s2,380($s4)
    # Line 4899
    la	$ra,__glNop
    # Line 4898
    la	$t8,sub_0d970000
    # Line 4899
    sw	$ra,260($s4)
    # Line 4896
    addu	$s3,$s1,$s3
    # Line 4898
    addiu	$t8,$t8,-22320
    sw	$t8,256($s4)
    # Line 4896
    b	.L0d96f8e8
    lw	$a5,31664($s3)
.L0d96fa34:
    # Line 4941
    addu	$s3,$s1,$s3
    lw	$a5,31664($s3)
    lw	$t9,380($a5)
    beq	$t9,$s2,.L0d96f8e0
    nop
    b	.L0d96f8ec
    # Line 4948
    lw	$t9,260($a5)
.L0d96fa50:
    # Line 4955
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d96fa54:
    addiu	$t9,$t9,-23616
    move	$a0,$a5
    bal __glKonGetTexParameter
    move	$a1,$zero
    b	.L0d96f930
    lw	$a5,31664($s3)
.L0d96fa6c:
    # Line 4904
    jal	sub_0d970000
    li	$a0,1281
    b	.L0d96f994
    ld	$s4,64($sp)
.L0d96fa7c:
    # Line 4910
    ld	$a1,8($sp)
    lw	$a1,-30036($a1)
    lw	$a0,32($a1)
    sltu	$ra,$s2,$a0
    # Line 4925
    la	$a6,__glkonim_GenTexturesEXT_Slow
    # Line 4910
    beqz	$ra,.L0d96faa0
    addiu	$v0,$a1,16
    # Line 4914
    move	$a0,$s2
    sw	$s2,32($a1)
.L0d96faa0:
    lw	$a1,20($v0)
    sltu	$a2,$a1,$s2
    beqz	$a2,.L0d96fabc
    # Line 4918
    lui	$a2,0x4000
    # Line 4916
    move	$a1,$s2
    sw	$s2,20($v0)
    # Line 4918
    lui	$a2,0x4000
.L0d96fabc:
    ori	$a2,$a2,0x4000
    sltu	$a3,$a0,$a2
    bnez	$a3,.L0d96fadc
    sltu	$a4,$a1,$a2
    lw	$a3,12($v0)
    sltu	$a3,$a0,$a3
    bnez	$a3,.L0d96faf4
    nop
.L0d96fadc:
    bnez	$a4,.L0d96faf8
    nop
    lw	$a5,12($v0)
    sltu	$a5,$a1,$a5
    beqz	$a5,.L0d96faf8
    nop
.L0d96faf4:
    # Line 4925
    sw	$a6,8872($s1)
.L0d96faf8:
    # Line 4930
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    li	$a1,544
    # Line 4934
    sw	$zero,120($v0)
    # Line 4932
    sw	$s2,380($v0)
    # Line 4931
    sw	$s0,376($v0)
    # Line 4933
    lwc1	$f0,_lit_3f800000
    # Line 4935
    ld	$t9,0($sp)
    # Line 4933
    swc1	$f0,328($v0)
    # Line 4935
    lw	$t9,-16368($t9)
    # Line 4930
    move	$s4,$v0
    # Line 4935
    move	$a2,$v0
    move	$a1,$s2
    jalr	$t9
    move	$a0,$s3
    # Line 4937
    la	$ra,__glNop
    # Line 4936
    la	$t8,sub_0d970000
    # Line 4937
    sw	$ra,260($s4)
    sll	$s3,$s0,0x2
    addu	$s3,$s1,$s3
    # Line 4936
    addiu	$t8,$t8,-22320
    sw	$t8,256($s4)
    b	.L0d96f8e8
    # Line 4937
    lw	$a5,31664($s3)
.L0d96fb5c:
    # Line 4873
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d96f994
    ld	$s4,64($sp)
.L0d96fb70:
    # Line 4965
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$a5
    b	.L0d96f974
    # Line 4970
    sw	$s4,31664($s3)
.L0d96fb88:
    # Line 4879
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d96f994
    ld	$s4,64($sp)
.end __glkonim_BindTextureEXT

# Function: __glkonim_AreTexturesResidentEXT
# Declared: Line 4978 (Source lines: 4979-5007)
# Address: 0x0d96fba0 - 0x0d96fd28 (Size: 392 bytes, Frame: 208)
.globl __glkonim_AreTexturesResidentEXT
.ent __glkonim_AreTexturesResidentEXT
__glkonim_AreTexturesResidentEXT:
    # Line 4979
    addiu	$sp,$sp,-80
    sd	$s3,72($sp)
    sd	$s0,0($sp)
    sd	$s1,8($sp)
    move	$s1,$a2
    # Line 4981
    lw	$at,4120($zero)
    # Line 4979
    lui	$v0,0x12
    sd	$s5,16($sp)
    # Line 4981
    li	$s5,1
    # Line 4979
    move	$s0,$a1
    sd	$ra,64($sp)
    addiu	$v0,$v0,5176
    sd	$gp,24($sp)
    # Line 4981
    beq	$at,$s5,.L0d96fcf4
    # Line 4979
    addu	$gp,$t9,$v0
    # Line 4985
    lw	$s3,4112($zero)
    lui	$v0,0x1
    sd	$s7,56($sp)
    addu	$s3,$v0,$s3
    lw	$s3,-30036($s3)
    # Line 4992
    li	$s7,-1
    sd	$s2,32($sp)
    addiu	$s2,$a0,-1
    sd	$s4,48($sp)
    # Line 4985
    bltz	$a0,.L0d96fd08
    addiu	$s3,$s3,40
    # Line 4992
    beqz	$a0,.L0d96fc80
    sd	$s6,40($sp)
    addu	$s4,$v0,$s3
    b	.L0d96fc30
    move	$s6,$s5
    nop
.L0d96fc20:
    # Line 5002
    sb	$zero,0($s1)
    # Line 5003
    move	$s6,$zero
.L0d96fc28:
    # Line 4992
    beq	$s2,$s7,.L0d96fc84
    addiu	$s1,$s1,1
.L0d96fc30:
    # Line 4994
    lw	$t9,-16376($s4)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,0($s0)
    beqz	$v0,.L0d96fcb8
    # Line 4995
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4992
    addiu	$s2,$s2,-1
    # Line 4996
    lw	$ra,24($v0)
    lw	$t9,20($v0)
    lw	$t8,40($v0)
    sllv	$ra,$s5,$ra
    addu	$t9,$t9,$s5
    sllv	$t9,$s5,$t9
    nor	$t8,$t8,$zero
    subu	$t9,$t9,$ra
    and	$t8,$t8,$t9
    bnez	$t8,.L0d96fc20
    # Line 4992
    addiu	$s0,$s0,4
    # Line 5000
    b	.L0d96fc28
    sb	$s5,0($s1)
.L0d96fc80:
    move	$s6,$s5
.L0d96fc84:
    ld	$s2,32($sp)
    # Line 5007
    move	$v0,$s6
    ld	$s6,40($sp)
    ld	$s4,48($sp)
    ld	$s7,56($sp)
.L0d96fc98:
    ld	$s3,72($sp)
    ld	$s0,0($sp)
    ld	$ra,64($sp)
    ld	$s1,8($sp)
    ld	$s5,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96fcb8:
    # Line 4995
    jal	__glSetError
    li	$a0,1281
    ld	$s3,72($sp)
    ld	$s7,56($sp)
    ld	$s4,48($sp)
    ld	$s6,40($sp)
    ld	$s2,32($sp)
    # Line 5007
    ld	$gp,24($sp)
    ld	$ra,64($sp)
    ld	$s0,0($sp)
    # Line 4996
    move	$v0,$zero
    # Line 5007
    ld	$s1,8($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96fcf4:
    # Line 4984
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d96fc98
    move	$v0,$zero
.L0d96fd08:
    # Line 4988
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$s2,32($sp)
    ld	$s4,48($sp)
    # Line 4989
    move	$v0,$zero
    b	.L0d96fc98
    ld	$s7,56($sp)
.end __glkonim_AreTexturesResidentEXT

# Function: __glkonim_PrioritizeTexturesEXT
# Declared: Line 5011 (Source lines: 5012-5043)
# Address: 0x0d96fd30 - 0x0d96fec8 (Size: 408 bytes, Frame: 240)
.globl __glkonim_PrioritizeTexturesEXT
.ent __glkonim_PrioritizeTexturesEXT
__glkonim_PrioritizeTexturesEXT:
    # Line 5012
    addiu	$sp,$sp,-112
    sd	$s2,104($sp)
    sd	$s3,96($sp)
    sd	$s5,48($sp)
    sdc1	$f20,32($sp)
    sdc1	$f24,8($sp)
    sdc1	$f26,24($sp)
    sd	$ra,80($sp)
    sdc1	$f28,0($sp)
    sdc1	$f22,16($sp)
    sd	$s0,64($sp)
    sd	$s1,56($sp)
    move	$s1,$a2
    move	$s0,$a1
    lw	$v0,4120($zero)
    sd	$s6,88($sp)
    li	$v1,1
    lui	$at,0x12
    # Line 5026
    li	$s6,-1
    # Line 5012
    sd	$s4,72($sp)
    addiu	$at,$at,4776
    sd	$gp,40($sp)
    beq	$v0,$v1,.L0d96fea0
    addu	$gp,$t9,$at
    # Line 5019
    lw	$s5,4112($zero)
    # Line 5026
    lwc1	$f26,_lit_3f800000
    # Line 5019
    lui	$v0,0x1
    # Line 5026
    lwc1	$f24,_lit_40000000
    # Line 5019
    addu	$s5,$v0,$s5
    bltz	$a0,.L0d96feb4
    lw	$s5,-30036($s5)
    # Line 5026
    addiu	$s4,$a0,-1
    beqz	$a0,.L0d96fe60
    mtc1	$zero,$f22
    addiu	$s3,$s5,40
    mtc1	$zero,$f28
    addu	$s2,$v0,$s5
    lwc1	$f20,_lit_3f800000
    b	.L0d96fe14
    # Line 5028
    lw	$t9,-16336($s2)
.L0d96fdd0:
    # Line 5034
    mov.s	$f4,$f20
    swc1	$f26,328($v0)
.L0d96fdd8:
    # Line 5038
    lw	$t8,376($v0)
    bltz	$t8,.L0d96fe00
    nop
    # Line 5041
    mul.s	$f0,$f4,$f24
    # lw $t9, -31600($gp) # &__glKonTexUpdatePriority
    trunc.w.s	$f0,$f0
    move	$a0,$s5
    move	$a1,$v0
    bal __glKonTexUpdatePriority
    mfc1	$a2,$f0
.L0d96fe00:
    # Line 5026
    addiu	$s4,$s4,-1
    addiu	$s1,$s1,4
    beq	$s4,$s6,.L0d96fe60
    addiu	$s0,$s0,4
    # Line 5028
    lw	$t9,-16336($s2)
.L0d96fe14:
    move	$a0,$s3
    jal	__glKonTexUpdatePriority
    lw	$a1,0($s0)
    beqz	$v0,.L0d96fe58
    # Line 5029
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5030
    lwc1	$f4,0($s1)
    c.lt.s	$f20,$f4
    bc1t	.L0d96fdd0
    nop
    # Line 5034
    c.lt.s $f4,$f22
    bc1f .L0d96fe50
    nop
    # Line 5036
    mov.s	$f4,$f22
    b	.L0d96fdd8
    swc1	$f28,328($v0)
.L0d96fe50:
    b	.L0d96fdd8
    # Line 5038
    swc1	$f4,328($v0)
.L0d96fe58:
    # Line 5029
    jal	__glSetError
    li	$a0,1281
.L0d96fe60:
    # Line 5043
    ld	$gp,40($sp)
.L0d96fe64:
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,72($sp)
    ld	$s5,48($sp)
    ld	$s6,88($sp)
    ldc1	$f20,32($sp)
    ldc1	$f22,16($sp)
    ld	$ra,80($sp)
    ldc1	$f24,8($sp)
    ldc1	$f26,24($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96fea0:
    # Line 5017
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d96fe64
    # Line 5043
    ld	$gp,40($sp)
.L0d96feb4:
    # Line 5022
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d96fe64
    # Line 5043
    ld	$gp,40($sp)
.end __glkonim_PrioritizeTexturesEXT

# Function: __glkonim_IsTextureEXT
# Declared: Line 5046 (Source lines: 5047-5054)
# Address: 0x0d96fed0 - 0x0d96ff6c (Size: 156 bytes, Frame: 16)
.globl __glkonim_IsTextureEXT
.ent __glkonim_IsTextureEXT
__glkonim_IsTextureEXT:
    # Line 5047
    move	$a1,$a0
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x12
    # Line 5051
    lui	$a3,0x1
    sd	$ra,8($sp)
    # Line 5047
    addiu	$v1,$v1,4360
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d96ff4c
    addu	$gp,$t9,$v1
    # Line 5051
    lw	$a0,4112($zero)
    addu	$a0,$a3,$a0
    lw	$a0,-30036($a0)
    # Line 5054
    beqz	$a1,.L0d96ff34
    # Line 5051
    addiu	$a0,$a0,40
    # Line 5054
    addu	$t9,$a3,$a0
    lw	$t9,-16376($t9)
    jalr	$t9
    nop
    beqz	$v0,.L0d96ff38
    move	$a0,$zero
    li	$a0,1
    b	.L0d96ff3c
    ld	$ra,8($sp)
.L0d96ff34:
    move	$a0,$zero
.L0d96ff38:
    ld	$ra,8($sp)
.L0d96ff3c:
    move	$v0,$a0
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96ff4c:
    # Line 5049
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 5054
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_IsTextureEXT

# Function: guessClipmapBreakpoint
# Declared: Line 5062 (Source lines: 5063-5097)
# Address: 0x0d96ff70 - 0x0d9700d0 (Size: 352 bytes, Frame: 16)
.ent guessClipmapBreakpoint
guessClipmapBreakpoint:
    # Line 5066
    lw	$a3,24($a0)
    lw	$a6,20($a0)
    slt	$at,$a6,$a3
    # Line 5063
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 5066
    bnez	$at,.L0d96ffd0
    sll	$a2,$a3,0x2
    sll	$a4,$a6,0x2
    addu	$a2,$a2,$a0
    addu	$a4,$a4,$a0
    nop
.L0d96ffa0:
    # Line 5067
    lw	$a5,124($a2)
    # Line 5066
    addiu	$a2,$a2,4
    # Line 5067
    bnez	$a5,.L0d96ffd0
    # Line 5066
    sltu	$a7,$a4,$a2
    bnez	$a7,.L0d96ffd0
    addiu	$a3,$a3,1
    # Line 5067
    lw	$t0,124($a2)
    # Line 5066
    addiu	$a2,$a2,4
    # Line 5067
    bnez	$t0,.L0d96ffd0
    # Line 5066
    sltu	$t1,$a4,$a2
    beqz	$t1,.L0d96ffa0
    addiu	$a3,$a3,1
.L0d96ffd0:
    # Line 5091
    move	$v0,$zero
    # Line 5077
    sll	$a5,$a3,0x2
    # Line 5071
    slt	$t2,$a6,$a3
    # Line 5078
    sll	$a4,$a6,0x2
    # Line 5071
    bnez	$t2,.L0d970088
    # Line 5078
    addu	$a4,$a4,$s0
    # Line 5077
    addu	$a0,$a5,$s0
    # Line 5078
    addiu	$a3,$a3,1
    # Line 5077
    lw	$a0,124($a0)
    # Line 5078
    slt	$a1,$a6,$a3
    addiu	$a5,$a5,4
    addu	$a2,$a5,$s0
    bnez	$a1,.L0d970058
    # Line 5077
    lw	$a0,8($a0)
    b	.L0d970020
    # Line 5081
    lw	$a5,124($a2)
.L0d970010:
    # Line 5080
    sltu	$a5,$a4,$a2
.L0d970014:
    bnez	$a5,.L0d970058
    addiu	$a3,$a3,1
    # Line 5081
    lw	$a5,124($a2)
.L0d970020:
    # Line 5080
    addiu	$a2,$a2,4
    # Line 5081
    beqz	$a5,.L0d970038
    # Line 5080
    sltu	$t0,$a4,$a2
    # Line 5084
    lw	$a7,8($a5)
    bne	$a7,$a0,.L0d970058
    nop
.L0d970038:
    # Line 5080
    bnez	$t0,.L0d970058
    addiu	$a3,$a3,1
    # Line 5081
    lw	$a5,124($a2)
    beqz	$a5,.L0d970010
    # Line 5080
    addiu	$a2,$a2,4
    # Line 5084
    lw	$t1,8($a5)
    beq	$t1,$a0,.L0d970014
    # Line 5080
    sltu	$a5,$a4,$a2
.L0d970058:
    # Line 5088
    slt	$t2,$a6,$a3
    sll	$t3,$a3,0x2
    bnez	$t2,.L0d970074
    addu	$t3,$s0,$t3
    lw	$t3,120($t3)
    bnez	$t3,.L0d9700a0
    # Line 5095
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d970074:
    # Line 5090
    sw	$zero,408($s0)
    # Line 5089
    sw	$zero,404($s0)
    # Line 5097
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d970088:
    # Line 5073
    sw	$zero,408($s0)
    # Line 5074
    move	$v0,$zero
    # Line 5072
    sw	$zero,404($s0)
    # Line 5097
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9700a0:
    # Line 5095
    addiu	$t9,$t9,-13664
    sd	$ra,8($sp)
    # Line 5094
    addiu	$t8,$a3,-1
    # Line 5095
    bal __glKonGetTexParameter
    # Line 5094
    sw	$t8,404($s0)
    ld	$ra,8($sp)
    # Line 5095
    sw	$v0,408($s0)
    # Line 5097
    ld	$s0,0($sp)
    addiu	$sp,$sp,16
    li	$at,1
    jr	$ra
    move	$v0,$at
.end guessClipmapBreakpoint

# Function: undefineTextureLevel
# Declared: Line 5105 (Source lines: 5106-5142)
# Address: 0x0d9700d0 - 0x0d970208 (Size: 312 bytes, Frame: 48)
.ent undefineTextureLevel
undefineTextureLevel:
    # Line 5106
    addiu	$sp,$sp,-48
    # Line 5107
    lw	$v0,36($a0)
    li	$a4,1
    # Line 5106
    sd	$s1,24($sp)
    # Line 5107
    sllv	$a4,$a4,$a1
    lw	$s1,4112($zero)
    and	$at,$v0,$a4
    sll	$a5,$a1,0x2
    # Line 5106
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 5107
    beqz	$at,.L0d9701cc
    sd	$ra,40($sp)
    addu	$a5,$a0,$a5
    sd	$a5,0($sp)
    lw	$a5,124($a5)
    lw	$a5,0($a5)
    beqz	$a5,.L0d970144
    # Line 5118
    nor	$t1,$a4,$zero
    # Line 5114
    lw	$t9,12($s1)
    move	$a0,$s1
    sd	$a4,32($sp)
    jalr	$t9
    move	$a1,$a5
    # Line 5115
    ld	$a6,0($sp)
    lw	$a6,124($a6)
    ld	$a4,32($sp)
    sw	$zero,0($a6)
    lw	$v0,36($s0)
    # Line 5118
    nor	$t1,$a4,$zero
.L0d970144:
    and	$t0,$v0,$t1
    sw	$t0,36($s0)
    # Line 5119
    lw	$a7,40($s0)
    # Line 5121
    lw	$t3,48($s0)
    # Line 5120
    lw	$t2,44($s0)
    # Line 5121
    and	$t3,$t3,$t1
    sw	$t3,48($s0)
    # Line 5120
    and	$t2,$t2,$t1
    sw	$t2,44($s0)
    # Line 5119
    and	$a7,$a7,$t1
    # Line 5121
    beqz	$t0,.L0d9701e0
    # Line 5119
    sw	$a7,40($s0)
    # Line 5128
    lw	$v0,32($s0)
.L0d970178:
    # Line 5134
    addiu	$a0,$s1,31632
    sd	$a0,8($sp)
    # Line 5131
    la	$at,__glNop
    # Line 5134
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 5131
    la	$ra,sub_0d970000
    sw	$at,260($s0)
    lui	$t8,0xfeff
    # Line 5134
    addiu	$t9,$t9,20832
    # Line 5131
    ori	$t8,$t8,0xffff
    addiu	$ra,$ra,-6112
    sw	$ra,256($s0)
    and	$t8,$v0,$t8
    # Line 5134
    jal	sub_0d960000
    # Line 5131
    sw	$t8,32($s0)
    # Line 5134
    beqz	$v0,.L0d9701cc
    # Line 5138
    sll	$a1,$v0,0x2
    addu	$a1,$s1,$a1
    lw	$a1,31664($a1)
    # Line 5139
    lw	$t9,256($a1)
    jalr	$t9
    ld	$a0,8($sp)
.L0d9701cc:
    ld	$ra,40($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 5142
    jr	$ra
    addiu	$sp,$sp,48
.L0d9701e0:
    # Line 5126
    # lw $t9, -32736($gp) # &sub_0d970000
    li	$a0,0x8aac
    addiu	$t9,$t9,-7856
    addu	$a0,$a0,$s1
    move	$a1,$s0
    bal __glKonGetTexParameter
    lw	$a0,0($a0)
    # Line 5128
    move	$v0,$zero
    b	.L0d970178
    sw	$zero,32($s0)
.end undefineTextureLevel

# Function: checkTexImage
# Declared: Line 5145 (Source lines: 5148-5420)
# Address: 0x0d970210 - 0x0d970b94 (Size: 2436 bytes, Frame: 192)
.ent checkTexImage
checkTexImage:
    # Line 5148
    addiu	$sp,$sp,-192
    sd	$a2,24($sp)
    sd	$a3,56($sp)
    sd	$a4,40($sp)
    sd	$a5,32($sp)
    # Line 5149
    lw	$v0,4112($zero)
    sd	$v0,64($sp)
    lw	$v0,31640($v0)
    la	$at,index_2_target_map
    # Line 5148
    sd	$a7,48($sp)
    # Line 5149
    sll	$v1,$v0,0x2
    # Line 5148
    sd	$s2,88($sp)
    # Line 5149
    addu	$at,$at,$v1
    lw	$at,0($at)
    # Line 5148
    sd	$s0,72($sp)
    move	$s0,$a0
    move	$s2,$a1
    sd	$s3,80($sp)
    move	$s3,$a6
    # Line 5149
    bne	$at,$a0,.L0d970610
    sd	$ra,104($sp)
    # Line 5165
    move	$s0,$v0
    sd	$s1,112($sp)
.L0d97026c:
    # Line 5170
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 5167
    ld	$s1,64($sp)
    sll	$t8,$s0,0x2
    # Line 5170
    addiu	$t9,$t9,24144
    move	$a1,$s2
    # Line 5167
    addu	$s1,$s1,$t8
    # Line 5170
    move	$a0,$s0
    jal	sub_0d960000
    # Line 5167
    lw	$s1,31664($s1)
    # Line 5170
    beqz	$v0,.L0d9702b4
    # Line 5173
    li	$at,-2
    # Line 5171
    lw	$v0,436($s1)
    slt	$ra,$s2,$v0
    beqz	$ra,.L0d97063c
    # Line 5172
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5171
    beqz	$v0,.L0d97063c
    # Line 5172
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5173
    li	$at,-2
.L0d9702b4:
    and	$at,$s3,$at
    beqz	$at,.L0d9702fc
    # Line 5180
    nop	# was lw $t9, -28616($gp) # &__glSetError
    ld	$s1,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
    # Line 5420
    ld	$s0,72($sp)
    # Line 5181
    li	$v0,-1
    # Line 5420
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9702e8:
    ld	$s0,72($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9702fc:
    # Line 5185
    li	$v0,1
    beq	$s0,$v0,.L0d9703a0
    li	$v1,2
    beq	$s0,$v1,.L0d970664
    li	$a0,3
    beq	$s0,$a0,.L0d9706ec
    nop
    bnez	$s0,.L0d9703d8
    # Line 5247
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5235
    bnez	$s2,.L0d970378
    # Line 5240
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5235
    bnez	$s3,.L0d970374
    ld	$a2,40($sp)
    ld	$a1,56($sp)
    bne	$a1,$a2,.L0d970374
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    move	$a1,$zero
    beqz	$v0,.L0d970374
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,40($sp)
    bal __glKonGetTexParameter
    move	$a1,$zero
    beqz	$v0,.L0d970374
    ld	$ra,56($sp)
    bnez	$ra,.L0d9703d8
    # Line 5247
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d970374:
    # Line 5240
    # lw $t9, -28616($gp) # &__glSetError
.L0d970378:
    ld	$s1,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
    # Line 5420
    ld	$s0,72($sp)
    # Line 5241
    li	$v0,-1
    # Line 5420
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9703a0:
    # Line 5187
    bltz	$s3,.L0d970940
    slti	$at,$s3,2
    beqz	$at,.L0d970944
    # Line 5191
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5187
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    move	$a1,$s3
    beqz	$v0,.L0d970944
    # Line 5191
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5187
    ld	$ra,56($sp)
    beqz	$ra,.L0d970b24
.L0d9703d4:
    # Line 5247
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d9703d8:
    addiu	$t9,$t9,-10544
    bal __glKonGetTexParameter
    ld	$a0,24($sp)
    ld	$ra,48($sp)
    li	$a2,1
    bltz	$v0,.L0d97078c
    sw	$v0,0($ra)
    # Line 5254
    lw	$v1,36($s1)
    sllv	$a0,$a2,$s2
    and	$v1,$v1,$a0
    sll	$v0,$s2,0x2
    sd	$a0,16($sp)
    beqz	$v1,.L0d970a04
    addu	$v0,$s1,$v0
    # Line 5259
    lw	$a1,124($v0)
    lw	$a6,0($a1)
    beqz	$a6,.L0d970448
    # Line 5283
    ld	$ra,16($sp)
    # Line 5266
    ld	$t9,64($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    sd	$a1,96($sp)
    jal	sub_0d970000
    move	$a1,$a6
    # Line 5267
    ld	$a1,96($sp)
    li	$a2,1
    sw	$zero,0($a1)
.L0d970444:
    # Line 5283
    ld	$ra,16($sp)
.L0d970448:
    nor	$a0,$ra,$zero
    sd	$a0,0($sp)
    # Line 5279
    sw	$s3,20($a1)
    # Line 5276
    ld	$t1,56($sp)
    # Line 5277
    ld	$t0,40($sp)
    # Line 5278
    ld	$a7,32($sp)
    sw	$a7,16($a1)
    # Line 5277
    sw	$t0,12($a1)
    # Line 5280
    ld	$a6,48($sp)
    # Line 5276
    sw	$t1,8($a1)
    # Line 5280
    lw	$a6,0($a6)
    sw	$a6,4($a1)
    # Line 5284
    lw	$a3,40($s1)
    # Line 5286
    lw	$a5,48($s1)
    # Line 5285
    lw	$a4,44($s1)
    # Line 5286
    and	$a5,$a5,$a0
    sw	$a5,48($s1)
    lw	$at,32($s1)
    # Line 5283
    lw	$v1,36($s1)
    # Line 5285
    and	$a4,$a4,$a0
    sw	$a4,44($s1)
    # Line 5286
    dsll32	$at,$at,0xc
    # Line 5284
    and	$a3,$a3,$a0
    sw	$a3,40($s1)
    # Line 5283
    and	$v1,$v1,$a0
    or	$ra,$ra,$v1
    # Line 5286
    bgez	$at,.L0d9707c4
    # Line 5283
    sw	$ra,36($s1)
    # Line 5336
    lw	$a1,64($s1)
    sra	$a1,$a1,0x2
    # Line 5337
    beqz	$s2,.L0d9704f4
    # Line 5336
    andi	$a1,$a1,0x7
    # Line 5337
    lw	$v0,12($s1)
    li	$a3,3
    beq	$v0,$a3,.L0d970510
    nop
    beq	$v0,$a2,.L0d970510
    li	$a4,4
    beq	$v0,$a4,.L0d970510
    nop
    beqz	$a1,.L0d970510
    nop
    beq	$a1,$a2,.L0d970510
.L0d9704f4:
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24272
    move	$a0,$s1
    jal	sub_0d960000
    move	$a1,$s2
    beqz	$v0,.L0d9709d0
    nop
.L0d970510:
    # Line 5347
    lw	$v0,364($s1)
    li	$ra,0x8170
    beq	$v0,$ra,.L0d970848
    # Line 5337
    li	$a1,1
    # Line 5347
    li	$at,0x844d
    beq	$v0,$at,.L0d97084c
    # Line 5352
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5347
    li	$v1,0x844e
    beq	$v0,$v1,.L0d970848
    li	$a0,0x844f
    beq	$v0,$a0,.L0d97084c
    # Line 5352
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d970540:
    # Line 5351
    lw	$a2,24($s1)
    bne	$a2,$s2,.L0d9708e4
    move	$s3,$a1
    beqz	$a1,.L0d9705d8
    # Line 5377
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    ld	$a1,64($sp)
    li	$a0,0x8aac
    addiu	$t9,$t9,-7776
    addu	$a0,$a0,$a1
    move	$a1,$s1
    bal __glKonGetTexParameter
    lw	$a0,0($a0)
    # Line 5380
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$s3,64($sp)
    move	$a2,$s2
    addiu	$t9,$t9,-10416
    move	$a1,$s1
    addiu	$s3,$s3,31632
    bal __glKonGetTexParameter
    move	$a0,$s3
    beqz	$v0,.L0d970af8
    # Line 5387
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s1
    beqz	$v0,.L0d9709c0
    lw	$a1,32($s1)
    # Line 5388
    lui	$ra,0xfffe
    ori	$ra,$ra,0xffff
    and	$ra,$a1,$ra
    sw	$ra,32($s1)
.L0d9705bc:
    # Line 5392
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6624
    move	$a0,$s3
    move	$a1,$s1
    bal __glKonGetTexParameter
    li	$a2,1
    move	$s3,$zero
.L0d9705d8:
    # Line 5375
    lw	$ra,16($s1)
    li	$at,2
    beq	$ra,$at,.L0d9709ac
    # Line 5414
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    ld	$s1,112($sp)
.L0d9705ec:
    # Line 5420
    ld	$s2,88($sp)
    # Line 5416
    lw	$v0,196($sp)
    ld	$ra,104($sp)
    sw	$s3,0($v0)
    # Line 5420
    move	$v0,$s0
    ld	$s0,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d970610:
    # Line 5158
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    bltz	$v0,.L0d970ae0
    move	$s0,$v0
    # Line 5162
    ld	$ra,64($sp)
    sd	$s1,112($sp)
    b	.L0d97026c
    sw	$v0,31640($ra)
    # Line 5172
    # lw $t9, -28616($gp) # &__glSetError
.L0d97063c:
    ld	$s1,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
    # Line 5420
    ld	$s0,72($sp)
    # Line 5173
    li	$v0,-1
    # Line 5420
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d970664:
    # Line 5202
    bltz	$s3,.L0d970960
    # Line 5207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5202
    slti	$at,$s3,2
    beqz	$at,.L0d970960
    # Line 5207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5202
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    move	$a1,$s3
    beqz	$v0,.L0d970960
    # Line 5207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5202
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,40($sp)
    bal __glKonGetTexParameter
    move	$a1,$s3
    beqz	$v0,.L0d970960
    # Line 5207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5211
    ld	$ra,56($sp)
    beqz	$ra,.L0d9706cc
    # Line 5212
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5211
    ld	$at,40($sp)
    bnez	$at,.L0d9703d8
    # Line 5247
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5212
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d9706cc:
    addiu	$t9,$t9,208
    move	$a0,$s1
    bal __glkonim_IsTextureEXT
    move	$a1,$s2
    ld	$s1,112($sp)
    ld	$ra,104($sp)
    # Line 5213
    b	.L0d9702e8
    li	$v0,-1
.L0d9706ec:
    # Line 5218
    bltz	$s3,.L0d970978
    slti	$ra,$s3,2
    beqz	$ra,.L0d97097c
    # Line 5224
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5218
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    move	$a1,$s3
    beqz	$v0,.L0d970978
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,40($sp)
    bal __glKonGetTexParameter
    move	$a1,$s3
    beqz	$v0,.L0d970978
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,32($sp)
    bal __glKonGetTexParameter
    move	$a1,$s3
    beqz	$v0,.L0d97097c
    # Line 5224
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5228
    ld	$ra,56($sp)
    beqz	$ra,.L0d97076c
    # Line 5229
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5228
    ld	$at,40($sp)
    beqz	$at,.L0d97076c
    # Line 5229
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5228
    ld	$v0,32($sp)
    bnez	$v0,.L0d9703d4
    # Line 5229
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d97076c:
    addiu	$t9,$t9,208
    move	$a0,$s1
    bal __glkonim_IsTextureEXT
    move	$a1,$s2
    ld	$s1,112($sp)
    ld	$ra,104($sp)
    # Line 5230
    b	.L0d9702e8
    li	$v0,-1
.L0d97078c:
    # Line 5247
    li	$ra,3
    bne	$s0,$ra,.L0d9707ac
    ld	$s1,112($sp)
    # Line 5251
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9707bc
    ld	$ra,104($sp)
.L0d9707ac:
    # Line 5253
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
.L0d9707bc:
    # Line 5254
    b	.L0d9702e8
    li	$v0,-1
.L0d9707c4:
    # Line 5295
    beqz	$s2,.L0d970a34
    ld	$at,56($sp)
    beq	$at,$a2,.L0d970818
    nop
    beq	$s0,$a2,.L0d970a38
    # Line 5305
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5295
    ld	$v0,56($sp)
    beq	$v0,$a2,.L0d970818
    ld	$v1,40($sp)
    beq	$v1,$a2,.L0d970818
    li	$a0,2
    beq	$s0,$a0,.L0d970a34
    ld	$a1,56($sp)
    beq	$a1,$a2,.L0d970818
    ld	$a3,40($sp)
    beq	$a3,$a2,.L0d970818
    ld	$a4,32($sp)
    beq	$a4,$a2,.L0d970818
    li	$a5,3
    beq	$s0,$a5,.L0d970a38
    # Line 5305
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d970818:
    # Line 5295
    lw	$v0,364($s1)
    li	$a6,0x8170
    beq	$v0,$a6,.L0d970a34
    li	$a7,0x844d
    beq	$v0,$a7,.L0d970a34
    li	$t0,0x844e
    beq	$v0,$t0,.L0d970a34
    li	$t1,0x844f
    beq	$v0,$t1,.L0d970a38
    # Line 5305
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5326
    b	.L0d9705d8
    li	$s3,1
.L0d970848:
    # Line 5352
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d97084c:
    ld	$a1,64($sp)
    li	$a0,0x8aac
    addiu	$t9,$t9,-7776
    addu	$a0,$a0,$a1
    move	$a1,$s1
    bal __glKonGetTexParameter
    lw	$a0,0($a0)
    # Line 5354
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-144
    bal __glkonim_IsTextureEXT
    move	$a0,$s1
    beqz	$v0,.L0d970994
    # Line 5356
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    ld	$s3,64($sp)
    addiu	$t9,$t9,-10416
    move	$a1,$s1
    addiu	$s3,$s3,31632
    lw	$a2,404($s1)
    bal __glKonGetTexParameter
    move	$a0,$s3
    # Line 5358
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s1
    beqz	$v0,.L0d970b48
    lw	$a1,32($s1)
    # Line 5359
    lui	$ra,0xfffe
    ori	$ra,$ra,0xffff
    and	$ra,$a1,$ra
    sw	$ra,32($s1)
.L0d9708c4:
    # Line 5363
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6624
    move	$a0,$s3
    move	$a1,$s1
    bal __glKonGetTexParameter
    li	$a2,1
    b	.L0d9705d8
    move	$s3,$zero
.L0d9708e4:
    # Line 5397
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13600
    bal __glKonGetTexParameter
    move	$a0,$s1
    beqz	$v0,.L0d970ad0
    lw	$a1,32($s1)
    # Line 5398
    lui	$ra,0xfffe
    ori	$ra,$ra,0xffff
    and	$a1,$a1,$ra
    sw	$a1,32($s1)
.L0d97090c:
    # Line 5402
    lw	$at,24($s1)
    slt	$at,$at,$s2
    beqz	$at,.L0d9705d8
    nop
    lw	$v0,20($s1)
    slt	$v0,$v0,$s2
    bnez	$v0,.L0d9705d8
    nop
    beqz	$s3,.L0d9705d8
    # Line 5407
    lui	$v1,0x21
    or	$v1,$a1,$v1
    b	.L0d9705d8
    sw	$v1,32($s1)
.L0d970940:
    # Line 5191
    # lw $t9, -28616($gp) # &__glSetError
.L0d970944:
    ld	$s1,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
    # Line 5192
    b	.L0d9702e8
    li	$v0,-1
    # Line 5207
    # lw $t9, -28616($gp) # &__glSetError
.L0d970960:
    ld	$s1,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
    # Line 5208
    b	.L0d9702e8
    li	$v0,-1
.L0d970978:
    # Line 5224
    # lw $t9, -28616($gp) # &__glSetError
.L0d97097c:
    ld	$s1,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,104($sp)
    # Line 5225
    b	.L0d9702e8
    li	$v0,-1
.L0d970994:
    # Line 5367
    lw	$a0,32($s1)
    li	$s3,1
    lui	$a1,0x21
    or	$a0,$a0,$a1
    b	.L0d9705d8
    sw	$a0,32($s1)
.L0d9709ac:
    # Line 5414
    addiu	$t9,$t9,25232
    jalr	$t9
    move	$a0,$s1
    b	.L0d9705ec
    ld	$s1,112($sp)
.L0d9709c0:
    # Line 5390
    lui	$ra,0x21
    or	$ra,$a1,$ra
    b	.L0d9705bc
    sw	$ra,32($s1)
.L0d9709d0:
    # Line 5347
    lw	$v0,364($s1)
    li	$at,0x8170
    beq	$v0,$at,.L0d9709fc
    # Line 5337
    move	$a1,$zero
    # Line 5347
    li	$v1,0x844d
    beq	$v0,$v1,.L0d9709fc
    li	$a0,0x844e
    beq	$v0,$a0,.L0d9709fc
    li	$a2,0x844f
    bne	$v0,$a2,.L0d970540
    nop
.L0d9709fc:
    # Line 5407
    b	.L0d9705d8
    move	$s3,$zero
.L0d970a04:
    # Line 5271
    ld	$t9,64($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    sd	$v0,8($sp)
    jalr	$t9
    li	$a1,24
    ld	$ra,8($sp)
    li	$a2,1
    sw	$v0,124($ra)
    move	$a1,$v0
    b	.L0d970444
    # Line 5272
    sw	$zero,0($v0)
.L0d970a34:
    # Line 5305
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d970a38:
    addiu	$t9,$t9,-13664
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    # Line 5304
    sw	$s2,404($s1)
    # Line 5310
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$s3,64($sp)
    move	$a2,$s2
    addiu	$t9,$t9,-10416
    move	$a1,$s1
    addiu	$s3,$s3,31632
    # Line 5305
    sw	$v0,408($s1)
    # Line 5310
    bal __glKonGetTexParameter
    move	$a0,$s3
    beqz	$v0,.L0d970b68
    # Line 5319
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 5317
    lw	$at,32($s1)
    # Line 5319
    addiu	$t9,$t9,-13600
    move	$a0,$s1
    # Line 5317
    lui	$v0,0x8
    or	$at,$at,$v0
    # Line 5319
    bal __glKonGetTexParameter
    # Line 5317
    sw	$at,32($s1)
    # Line 5319
    beqz	$v0,.L0d970b58
    lw	$a1,32($s1)
    # Line 5320
    lui	$ra,0xfffe
    ori	$ra,$ra,0xffff
    and	$ra,$a1,$ra
    sw	$ra,32($s1)
.L0d970aa8:
    # Line 5324
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$a2,24($s1)
    move	$a0,$s3
    addiu	$t9,$t9,-6624
    move	$a1,$s1
    xor	$a2,$a2,$s2
    bal __glKonGetTexParameter
    sltiu	$a2,$a2,1
    b	.L0d9705d8
    # Line 5326
    move	$s3,$zero
.L0d970ad0:
    # Line 5400
    lui	$ra,0x21
    or	$a1,$a1,$ra
    b	.L0d97090c
    sw	$a1,32($s1)
.L0d970ae0:
    # Line 5159
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,104($sp)
    # Line 5160
    b	.L0d9702e8
    li	$v0,-1
.L0d970af8:
    # Line 5381
    ld	$v0,0($sp)
    # Line 5383
    # lw $t9, -28616($gp) # &__glSetError
    # Line 5381
    lw	$at,36($s1)
    # Line 5383
    li	$a0,1281
    # Line 5381
    and	$at,$at,$v0
    # Line 5383
    jal	__glSetError
    # Line 5381
    sw	$at,36($s1)
    ld	$s1,112($sp)
    ld	$ra,104($sp)
    # Line 5384
    b	.L0d9702e8
    li	$v0,-1
.L0d970b24:
    # Line 5196
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,208
    move	$a0,$s1
    bal __glkonim_IsTextureEXT
    move	$a1,$s2
    ld	$s1,112($sp)
    ld	$ra,104($sp)
    # Line 5197
    b	.L0d9702e8
    li	$v0,-1
.L0d970b48:
    # Line 5361
    lui	$ra,0x21
    or	$ra,$a1,$ra
    b	.L0d9708c4
    sw	$ra,32($s1)
.L0d970b58:
    # Line 5322
    lui	$at,0x21
    or	$at,$a1,$at
    b	.L0d970aa8
    sw	$at,32($s1)
.L0d970b68:
    # Line 5311
    ld	$v1,0($sp)
    # Line 5313
    # lw $t9, -28616($gp) # &__glSetError
    # Line 5311
    lw	$v0,36($s1)
    # Line 5313
    li	$a0,1281
    # Line 5311
    and	$v0,$v0,$v1
    # Line 5313
    jal	__glSetError
    # Line 5311
    sw	$v0,36($s1)
    ld	$s1,112($sp)
    ld	$ra,104($sp)
    # Line 5314
    b	.L0d9702e8
    li	$v0,-1
.end checkTexImage

# Function: computeDestinationDims
# Declared: Line 5428 (Source lines: 5429-5465)
# Address: 0x0d970ba0 - 0x0d970ce4 (Size: 324 bytes, Frame: 32)
.ent computeDestinationDims
computeDestinationDims:
    # Line 5432
    lw	$a7,4112($zero)
    # Line 5436
    li	$at,3553
    # Line 5429
    addiu	$sp,$sp,-32
    # Line 5435
    sw	$a1,0($a3)
    # Line 5445
    li	$v0,3552
    # Line 5436
    beq	$a0,$at,.L0d970bf0
    sw	$a2,0($a4)
    # Line 5445
    beq	$a0,$v0,.L0d970c18
    nop
    # Line 5455
    lw	$v0,1796($a7)
.L0d970bc8:
    andi	$v1,$v0,0x20
.L0d970bcc:
    beqz	$v1,.L0d970be8
    nop
    # Line 5463
    lw	$a0,0($a4)
    # Line 5465
    addiu	$sp,$sp,32
    # Line 5463
    addu	$a0,$a0,$a0
    # Line 5465
    jr	$ra
    # Line 5463
    sw	$a0,0($a4)
.L0d970be8:
    # Line 5465
    jr	$ra
    addiu	$sp,$sp,32
.L0d970bf0:
    # Line 5438
    lw	$a1,1792($a7)
    lui	$a2,0xc00
    and	$a1,$a1,$a2
    beqz	$a1,.L0d970c10
    li	$a6,0x81c5
    lw	$a5,1380($a7)
    beq	$a5,$a6,.L0d970c88
    sd	$a3,0($sp)
.L0d970c10:
    # Line 5445
    b	.L0d970bc8
    lw	$v0,1796($a7)
.L0d970c18:
    # Line 5450
    lw	$t0,1792($a7)
    dsll32	$t0,$t0,0x6
    li	$t3,0x81c5
    bgez	$t0,.L0d970bc8
    lw	$v0,1796($a7)
    andi	$t1,$v0,0x100
    beqz	$t1,.L0d970bcc
    # Line 5455
    andi	$v1,$v0,0x20
    # Line 5450
    lw	$t2,1380($a7)
    sd	$a7,8($sp)
    bne	$t2,$t3,.L0d970bc8
    sd	$a3,0($sp)
    # Line 5454
    # lw $t9, -32304($gp) # &GetConvolutionFilter
    sd	$ra,24($sp)
    jal	GetConvolutionFilter
    sd	$a4,16($sp)
    lw	$a0,64($v0)
    beqz	$a0,.L0d970c78
    ld	$ra,24($sp)
    # Line 5456
    ld	$t9,0($sp)
    lw	$t8,0($t9)
    subu	$t8,$t8,$a0
    addiu	$t8,$t8,1
    sw	$t8,0($t9)
.L0d970c78:
    ld	$v0,8($sp)
    ld	$a4,16($sp)
    b	.L0d970bc8
    lw	$v0,1796($v0)
.L0d970c88:
    # Line 5441
    # lw $t9, -32304($gp) # &GetConvolutionFilter
    sd	$a4,16($sp)
    sd	$ra,24($sp)
    jal	GetConvolutionFilter
    sd	$a7,8($sp)
    lw	$a0,64($v0)
    ld	$ra,24($sp)
    ld	$a7,8($sp)
    beqz	$a0,.L0d970cc4
    ld	$a4,16($sp)
    # Line 5443
    ld	$a1,0($sp)
    lw	$v1,0($a1)
    subu	$v1,$v1,$a0
    addiu	$v1,$v1,1
    sw	$v1,0($a1)
.L0d970cc4:
    lw	$a0,68($v0)
    beqz	$a0,.L0d970c10
    nop
    # Line 5446
    lw	$a1,0($a4)
    subu	$a1,$a1,$a0
    addiu	$a1,$a1,1
    b	.L0d970c10
    sw	$a1,0($a4)
.end computeDestinationDims

# Function: checkPixelError
# Declared: Line 5469 (Source lines: 5471-5517)
# Address: 0x0d970cf0 - 0x0d970dd8 (Size: 232 bytes, Frame: 224)
.ent checkPixelError
checkPixelError:
    # Line 5477
    lw	$v0,4112($zero)
    # Line 5471
    addiu	$sp,$sp,-224
    sd	$a3,200($sp)
    sd	$a5,192($sp)
    # Line 5484
    sw	$a5,20($sp)
    # Line 5482
    sw	$a3,12($sp)
    # Line 5481
    sw	$a1,4($sp)
    # Line 5480
    sw	$a0,0($sp)
    # Line 5479
    li	$at,129
    sw	$at,24($sp)
    # Line 5483
    sw	$a4,16($sp)
    # Line 5486
    beqz	$a2,.L0d970d50
    sd	$ra,208($sp)
    lw	$a0,1796($v0)
    andi	$a0,$a0,0x100
    lui	$a2,0xe00
    beqz	$a0,.L0d970d50
    lw	$a1,1792($v0)
    and	$a1,$a1,$a2
    beqz	$a1,.L0d970d50
    li	$a4,0x81c5
    lw	$a3,1380($v0)
    beq	$a3,$a4,.L0d970da8
    move	$ra,$ra
.L0d970d50:
    # Line 5499
    # lw $t9, -32312($gp) # &__glKonParseInput
    jal	__glKonParseInput
    addiu	$a0,$sp,0
    beqz	$v0,.L0d970d78
    ld	$ra,208($sp)
    # Line 5500
    li	$v0,-1
    # Line 5517
    jr	$ra
    addiu	$sp,$sp,224
.L0d970d70:
    jr	$ra
    addiu	$sp,$sp,224
.L0d970d78:
    # Line 5500
    ld	$a5,200($sp)
    li	$a6,6401
    beq	$a5,$a6,.L0d970dc0
    # Line 5505
    ld	$a7,192($sp)
    beqz	$a7,.L0d970db4
    # Line 5513
    nop	# was lw $t9, -32320($gp) # &__glKonParseErrorDraw
    jal	__glKonParseErrorDraw
    addiu	$a0,$sp,0
    beqz	$v0,.L0d970db4
    ld	$ra,208($sp)
    # Line 5514
    b	.L0d970d70
    li	$v0,-1
.L0d970da8:
    # Line 5495
    li	$v0,-1
    # Line 5517
    jr	$ra
    addiu	$sp,$sp,224
.L0d970db4:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,224
.L0d970dc0:
    # Line 5504
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,208($sp)
    # Line 5505
    b	.L0d970d70
    li	$v0,-1
.end checkPixelError

# Function: __glkonim_TexImage
# Declared: Line 5521 (Source lines: 5524-5644)
# Address: 0x0d970de0 - 0x0d9711cc (Size: 1004 bytes, Frame: 208)
.globl __glkonim_TexImage
.ent __glkonim_TexImage
__glkonim_TexImage:
    # Line 5524
    addiu	$sp,$sp,-336
    sd	$s7,224($sp)
    # Line 5530
    lw	$s7,4112($zero)
    # Line 5524
    sd	$s4,192($sp)
    sd	$s3,240($sp)
    sd	$s1,208($sp)
    move	$v0,$a2
    sd	$s6,232($sp)
    move	$s6,$a7
    move	$s1,$a6
    sd	$s5,200($sp)
    move	$s5,$a5
    move	$s3,$a4
    sd	$s2,256($sp)
    move	$s2,$a3
    move	$s4,$a1
    # Line 5530
    lw	$at,4120($zero)
    # Line 5524
    sd	$s0,216($sp)
    # Line 5530
    li	$t2,1
    # Line 5524
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,264($sp)
    addiu	$v1,$v1,504
    sd	$gp,248($sp)
    # Line 5530
    beq	$at,$t2,.L0d9711a4
    # Line 5524
    addu	$gp,$t9,$v1
    # Line 5534
    li	$a0,0x8063
    beq	$s0,$a0,.L0d971150
    # Line 5538
    move	$a0,$s0
    # Line 5534
    li	$a1,0x8064
    beq	$s0,$a1,.L0d971150
    # Line 5538
    move	$a0,$s0
    # Line 5534
    li	$a2,0x8070
    beq	$s0,$a2,.L0d971150
    # Line 5538
    move	$a0,$s0
    # Line 5549
    # lw $t9, -32736($gp) # &sub_0d970000
    sd	$v0,168($sp)
    move	$a3,$a7
    addiu	$t9,$t9,3312
    move	$a2,$a6
    move	$a0,$s2
    lw	$a5,348($sp)
    move	$a1,$a4
    bal __glkonim_IsTextureEXT
    lw	$a4,340($sp)
    bltz	$v0,.L0d9710c8
    # Line 5554
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s0
    move	$a1,$s2
    addiu	$t9,$t9,2976
    move	$a2,$s3
    addiu	$a4,$sp,36
    bal __glkonim_IsTextureEXT
    addiu	$a3,$sp,32
    # Line 5556
    addiu	$a7,$sp,40
    move	$a6,$s1
    ld	$v0,168($sp)
    move	$a5,$s5
    move	$a1,$s4
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$a4,36($sp)
    li	$a2,0x81a5
    xori	$at,$v0,0x1902
    lw	$a3,32($sp)
    addiu	$t9,$t9,528
    sltiu	$at,$at,1
    addiu	$ra,$sp,44
    sw	$ra,4($sp)
    movz	$a2,$v0,$at
    move	$a0,$s0
    bal __glkonim_IsTextureEXT
    sd	$a2,184($sp)
    bltz	$v0,.L0d9710c8
    lw	$t2,348($sp)
    # Line 5563
    sll	$s0,$v0,0x2
    addu	$s0,$s7,$s0
    # Line 5579
    lui	$a1,0x1
    # Line 5563
    beqz	$t2,.L0d97117c
    lw	$s0,31664($s0)
    # Line 5574
    lw	$a0,32($s0)
    # Line 5579
    li	$v1,1
    # Line 5574
    dsll32	$t8,$a0,0xb
    # Line 5579
    sllv	$v1,$v1,$v0
    # Line 5574
    bgez	$t8,.L0d97107c
    # Line 5579
    dsll32	$ra,$a0,0x7
    # Line 5574
    lw	$t9,44($sp)
    bnez	$t9,.L0d971080
    # Line 5632
    move	$a0,$v0
    # Line 5579
    bgez	$ra,.L0d97119c
    addu	$at,$a1,$s7
    lw	$at,31632($s7)
    and	$at,$at,$v1
    addu	$v1,$a1,$s7
    beqz	$at,.L0d970f74
    sd	$v1,176($sp)
    # Line 5582
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,176($sp)
    addiu	$t9,$t9,20112
    move	$a1,$s0
    jal	sub_0d960000
    lw	$a0,-30036($a0)
.L0d970f74:
    # Line 5585
    sw	$s6,60($sp)
    # Line 5584
    sw	$zero,48($sp)
    # Line 5586
    lw	$v0,340($sp)
    sw	$v0,64($sp)
    # Line 5587
    lw	$at,348($sp)
    sw	$at,68($sp)
    # Line 5589
    lw	$ra,32($s0)
    dsll32	$ra,$ra,0x9
    bltz	$ra,.L0d9710fc
    # Line 5592
    lw	$a7,32($sp)
    # Line 5589
    beqz	$s1,.L0d9710f8
    # Line 5604
    nop	# was lw $t9, -32296($gp) # &__glKonPushState
    addiu	$a1,$sp,72
    jal	__glKonPushState
    li	$a0,8
    # Line 5605
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,128($sp)
    li	$a0,3316
    jal	__glkonim_PixelStorei
    addiu	$a1,$a1,1
    # Line 5607
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,124($sp)
    li	$a0,3315
    jal	__glkonim_PixelStorei
    addiu	$a1,$a1,1
    lw	$a2,120($sp)
    beqz	$a2,.L0d9711b8
    # Line 5610
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    # Line 5616
    lw	$a3,40($sp)
.L0d970fe8:
    # Line 5615
    addiu	$a1,$s3,-2
    sw	$a1,56($sp)
    # Line 5614
    addiu	$a2,$s2,-2
    sw	$a2,52($sp)
    # Line 5616
    lw	$a7,32($sp)
    lw	$t0,36($sp)
    ld	$a0,176($sp)
    move	$a6,$zero
    move	$a5,$zero
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a4,$zero
    move	$a2,$s4
    lw	$a0,-30036($a0)
    move	$a1,$s0
    sw	$s5,12($sp)
    addiu	$t9,$t9,-17280
    addiu	$ra,$sp,48
    addiu	$t0,$t0,-2
    sw	$t0,4($sp)
    sw	$ra,20($sp)
    bal __glKonGetTexParameter
    addiu	$a7,$a7,-2
    # Line 5620
    # lw $t9, -32288($gp) # &__glKonPopState
    jal	__glKonPopState
    addiu	$a0,$sp,72
    # Line 5624
    li	$a3,1
.L0d971050:
    # Line 5625
    lw	$a6,44($s0)
    # Line 5624
    sllv	$a3,$a3,$s4
    lw	$a4,40($s0)
    nor	$a5,$a3,$zero
    # Line 5625
    and	$a6,$a6,$a5
    # Line 5624
    and	$a4,$a4,$a5
    # Line 5625
    or	$a6,$a3,$a6
    sw	$a6,44($s0)
    # Line 5624
    or	$a3,$a3,$a4
    # Line 5625
    b	.L0d9710b4
    # Line 5624
    sw	$a3,40($s0)
.L0d97107c:
    # Line 5632
    move	$a0,$v0
.L0d971080:
    # lw $t9, -32740($gp) # &sub_0d960000
    move	$a1,$s4
    ld	$a2,184($sp)
    move	$a3,$s2
    move	$a4,$s3
    lw	$t0,340($sp)
    addiu	$t9,$t9,19600
    move	$a5,$s5
    move	$a6,$s1
    sw	$t2,12($sp)
    move	$a7,$s6
    jal	sub_0d960000
    sw	$t0,4($sp)
.L0d9710b4:
    # Line 5641
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    move	$a1,$s0
    bal __glKonGetTexParameter
    addiu	$a0,$s7,31632
.L0d9710c8:
    # Line 5644
    ld	$gp,248($sp)
.L0d9710cc:
    ld	$s0,216($sp)
    ld	$s1,208($sp)
    ld	$s2,256($sp)
    ld	$s3,240($sp)
    ld	$s4,192($sp)
    ld	$ra,264($sp)
    ld	$s5,200($sp)
    ld	$s6,232($sp)
    ld	$s7,224($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d9710f8:
    # Line 5592
    lw	$a7,32($sp)
.L0d9710fc:
    lw	$a3,40($sp)
    # Line 5591
    sw	$s3,56($sp)
    # Line 5590
    sw	$s2,52($sp)
    # Line 5592
    lw	$ra,36($sp)
    ld	$a0,176($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a2,$s4
    addiu	$at,$sp,48
    lw	$a0,-30036($a0)
    negu	$a4,$s1
    sw	$at,20($sp)
    addiu	$t9,$t9,-17280
    move	$a1,$s0
    move	$a6,$a4
    sw	$ra,4($sp)
    move	$a5,$a4
    bal __glKonGetTexParameter
    sw	$s5,12($sp)
    b	.L0d971050
    # Line 5624
    li	$a3,1
    # Line 5538
    move	$a0,$s0
.L0d971150:
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a1,$s4
    move	$a2,$v0
    move	$a3,$s2
    addiu	$t9,$t9,15248
    move	$a4,$s3
    move	$a5,$s5
    bal __glkonim_GetTexFilterFuncSGIS
    move	$a6,$s1
    b	.L0d9710cc
    # Line 5644
    ld	$gp,248($sp)
.L0d97117c:
    # Line 5638
    li	$ra,1
    lw	$at,44($s0)
    sllv	$ra,$ra,$s4
    nor	$v0,$ra,$zero
    and	$at,$at,$v0
    or	$ra,$ra,$at
    b	.L0d9710b4
    sw	$ra,44($s0)
.L0d97119c:
    b	.L0d970f74
    sd	$at,176($sp)
.L0d9711a4:
    # Line 5530
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9710cc
    # Line 5644
    ld	$gp,248($sp)
.L0d9711b8:
    # Line 5610
    move	$a1,$s2
    jalr	$t9
    li	$a0,3314
    b	.L0d970fe8
    # Line 5616
    lw	$a3,40($sp)
.end __glkonim_TexImage

# Function: __glkonim_CopyTexImage
# Declared: Line 5647 (Source lines: 5649-5708)
# Address: 0x0d9711d0 - 0x0d9713f4 (Size: 548 bytes, Frame: 160)
.globl __glkonim_CopyTexImage
.ent __glkonim_CopyTexImage
__glkonim_CopyTexImage:
    # Line 5649
    addiu	$sp,$sp,-160
    sd	$a7,96($sp)
    sd	$a6,112($sp)
    sd	$a5,104($sp)
    sd	$a4,80($sp)
    sd	$a3,72($sp)
    sd	$a2,88($sp)
    sd	$s0,136($sp)
    # Line 5655
    lw	$s0,4112($zero)
    # Line 5649
    sd	$s2,128($sp)
    move	$s2,$a1
    # Line 5655
    lw	$at,4120($zero)
    # Line 5649
    sd	$s1,120($sp)
    # Line 5655
    li	$v0,1
    # Line 5649
    lui	$v1,0x12
    move	$s1,$a0
    sd	$ra,152($sp)
    addiu	$v1,$v1,-504
    sd	$gp,144($sp)
    # Line 5655
    beq	$at,$v0,.L0d9713e0
    # Line 5649
    addu	$gp,$t9,$v1
    # Line 5660
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,2976
    ld	$a1,104($sp)
    addiu	$a4,$sp,36
    ld	$a2,112($sp)
    bal __glkonim_IsTextureEXT
    addiu	$a3,$sp,32
    # Line 5662
    ld	$a2,88($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s1
    ld	$a6,96($sp)
    move	$a1,$s2
    lw	$a4,36($sp)
    addiu	$t9,$t9,528
    addiu	$a7,$sp,40
    lw	$a3,32($sp)
    addiu	$ra,$sp,44
    sw	$ra,4($sp)
    bal __glkonim_IsTextureEXT
    li	$a5,1
    bltz	$v0,.L0d9712cc
    # Line 5674
    lw	$t8,44($sp)
    # Line 5667
    sll	$s1,$v0,0x2
    addu	$s1,$s0,$s1
    lw	$s1,31664($s1)
    # Line 5674
    lw	$a0,32($s1)
    dsll32	$ra,$a0,0xb
    bgez	$ra,.L0d9712a0
    # Line 5704
    li	$t9,1
    # Line 5674
    beqz	$t8,.L0d9712e8
    # Line 5704
    li	$t9,1
.L0d9712a0:
    lw	$ra,48($s1)
    sllv	$t9,$t9,$s2
    nor	$at,$t9,$zero
    and	$ra,$ra,$at
    or	$t9,$t9,$ra
    sw	$t9,48($s1)
.L0d9712b8:
    # Line 5707
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-6112
    move	$a1,$s1
    bal __glKonGetTexParameter
    addiu	$a0,$s0,31632
.L0d9712cc:
    ld	$s1,120($sp)
.L0d9712d0:
    ld	$ra,152($sp)
    ld	$s2,128($sp)
    ld	$s0,136($sp)
    # Line 5708
    ld	$gp,144($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9712e8:
    # Line 5675
    dsll32	$ra,$a0,0x7
    li	$v1,1
    bgez	$ra,.L0d971328
    sllv	$v1,$v1,$v0
    lw	$at,31632($s0)
    and	$at,$at,$v1
    beqz	$at,.L0d97132c
    # Line 5680
    dsll32	$ra,$a0,0x9
    # Line 5678
    # lw $t9, -32740($gp) # &sub_0d960000
    li	$a0,0x8aac
    addiu	$t9,$t9,20112
    addu	$a0,$a0,$s0
    move	$a1,$s1
    jal	sub_0d960000
    lw	$a0,0($a0)
    lw	$a0,32($s1)
.L0d971328:
    # Line 5680
    dsll32	$ra,$a0,0x9
.L0d97132c:
    bltz	$ra,.L0d97133c
    ld	$at,96($sp)
    bnez	$at,.L0d9713b4
    # Line 5699
    li	$a5,1
.L0d97133c:
    # Line 5688
    lw	$a7,32($sp)
    # Line 5683
    li	$a4,1
    sw	$a4,48($sp)
    # Line 5688
    lw	$v0,36($sp)
    # Line 5685
    ld	$a2,112($sp)
    # Line 5684
    ld	$a3,104($sp)
    sw	$a3,52($sp)
    # Line 5688
    lw	$a3,40($sp)
    # Line 5685
    sw	$a2,56($sp)
    # Line 5686
    ld	$a1,72($sp)
    sw	$a1,60($sp)
    # Line 5687
    ld	$a1,80($sp)
    # Line 5688
    li	$a0,0x8aac
    # Line 5687
    sw	$a1,64($sp)
    # Line 5688
    move	$a6,$zero
    addu	$a0,$a0,$s0
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a5,$zero
    move	$a4,$zero
    lw	$a0,0($a0)
    li	$v1,1
    sw	$v1,12($sp)
    addiu	$t9,$t9,-17280
    addiu	$ra,$sp,48
    move	$a2,$s2
    sw	$ra,20($sp)
    move	$a1,$s1
    bal __glKonGetTexParameter
    sw	$v0,4($sp)
    # Line 5699
    li	$a5,1
.L0d9713b4:
    # Line 5700
    lw	$t0,44($s1)
    # Line 5699
    sllv	$a5,$a5,$s2
    lw	$a6,40($s1)
    nor	$a7,$a5,$zero
    # Line 5700
    and	$t0,$t0,$a7
    # Line 5699
    and	$a6,$a6,$a7
    # Line 5700
    or	$t0,$a5,$t0
    sw	$t0,44($s1)
    # Line 5699
    or	$a5,$a5,$a6
    # Line 5700
    b	.L0d9712b8
    # Line 5699
    sw	$a5,40($s1)
.L0d9713e0:
    # Line 5655
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9712d0
    ld	$s1,120($sp)
.end __glkonim_CopyTexImage

# Function: __glkonim_TexImage3DEXT
# Declared: Line 5711 (Source lines: 5714-5724)
# Address: 0x0d971400 - 0x0d971468 (Size: 104 bytes, Frame: 224)
.globl __glkonim_TexImage3DEXT
.ent __glkonim_TexImage3DEXT
__glkonim_TexImage3DEXT:
    # Line 5714
    addiu	$sp,$sp,-96
    # Line 5715
    li	$at,0x806f
    # Line 5714
    lui	$v0,0x12
    sd	$ra,24($sp)
    addiu	$v0,$v0,-1064
    sd	$gp,16($sp)
    # Line 5715
    beq	$a0,$at,.L0d971448
    # Line 5714
    addu	$gp,$t9,$v0
    # Line 5715
    li	$v1,0x8070
    beq	$a0,$v1,.L0d97144c
    # Line 5722
    lw	$t1,100($sp)
    # Line 5718
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d97143c:
    # Line 5724
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d971448:
    # Line 5722
    lw	$t1,100($sp)
.L0d97144c:
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    sw	$t1,4($sp)
    lw	$t0,108($sp)
    bal __glkonim_TexImage
    sw	$t0,12($sp)
    b	.L0d97143c
    ld	$ra,24($sp)
.end __glkonim_TexImage3DEXT

# Function: __glkonim_TexImage2D
# Declared: Line 5727 (Source lines: 5730-5741)
# Address: 0x0d971470 - 0x0d9714f8 (Size: 136 bytes, Frame: 224)
.globl __glkonim_TexImage2D
.ent __glkonim_TexImage2D
__glkonim_TexImage2D:
    # Line 5730
    move	$t1,$a7
    move	$t2,$a6
    move	$t3,$a5
    addiu	$sp,$sp,-96
    # Line 5731
    li	$at,3553
    # Line 5730
    lui	$v0,0x12
    # Line 5731
    li	$a5,0x8064
    sd	$ra,24($sp)
    # Line 5730
    addiu	$v0,$v0,-1176
    sd	$gp,16($sp)
    # Line 5731
    beq	$a0,$at,.L0d9714d0
    # Line 5730
    addu	$gp,$t9,$v0
    # Line 5731
    li	$v1,0x8095
    beq	$a0,$v1,.L0d9714d4
    # Line 5739
    nop	# was lw $t9, -31804($gp) # &__glkonim_TexImage
    # Line 5731
    beq	$a0,$a5,.L0d9714d4
    # Line 5739
    nop	# was lw $t9, -31804($gp) # &__glkonim_TexImage
    # Line 5735
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d9714c4:
    # Line 5741
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9714d0:
    # Line 5739
    # lw $t9, -31804($gp) # &__glkonim_TexImage
.L0d9714d4:
    sw	$t1,4($sp)
    move	$a7,$t2
    move	$a6,$t3
    lw	$t0,100($sp)
    li	$a5,1
    bal __glkonim_TexImage
    sw	$t0,12($sp)
    b	.L0d9714c4
    ld	$ra,24($sp)
.end __glkonim_TexImage2D

# Function: __glkonim_TexImage1D
# Declared: Line 5744 (Source lines: 5747-5757)
# Address: 0x0d971500 - 0x0d97157c (Size: 124 bytes, Frame: 32)
.globl __glkonim_TexImage1D
.ent __glkonim_TexImage1D
__glkonim_TexImage1D:
    # Line 5747
    move	$t2,$a7
    move	$t3,$a6
    move	$t8,$a5
    addiu	$sp,$sp,-32
    # Line 5748
    li	$at,3552
    # Line 5747
    lui	$v0,0x12
    move	$t1,$a4
    sd	$ra,24($sp)
    addiu	$v0,$v0,-1320
    sd	$gp,16($sp)
    # Line 5748
    beq	$a0,$at,.L0d971554
    # Line 5747
    addu	$gp,$t9,$v0
    # Line 5748
    li	$v1,0x8063
    beq	$a0,$v1,.L0d971554
    # Line 5751
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d971548:
    # Line 5757
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d971554:
    # Line 5755
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    move	$a7,$t8
    sw	$t2,12($sp)
    move	$a6,$t1
    li	$a5,1
    sw	$t3,4($sp)
    bal __glkonim_TexImage
    li	$a4,1
    b	.L0d971548
    ld	$ra,24($sp)
.end __glkonim_TexImage1D

# Function: __glkonim_CopyTexImage1DEXT
# Declared: Line 5760 (Source lines: 5762-5770)
# Address: 0x0d971580 - 0x0d9715d4 (Size: 84 bytes, Frame: 16)
.globl __glkonim_CopyTexImage1DEXT
.ent __glkonim_CopyTexImage1DEXT
__glkonim_CopyTexImage1DEXT:
    # Line 5762
    addiu	$sp,$sp,-16
    li	$at,3552
    lui	$v0,0x12
    move	$a7,$a6
    sd	$ra,8($sp)
    addiu	$v0,$v0,-1448
    sd	$gp,0($sp)
    beq	$a0,$at,.L0d9715c0
    addu	$gp,$t9,$v0
    # Line 5764
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9715b4:
    # Line 5770
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9715c0:
    # Line 5768
    # lw $t9, -31800($gp) # &__glkonim_CopyTexImage
    bal __glkonim_CopyTexImage
    li	$a6,1
    b	.L0d9715b4
    ld	$ra,8($sp)
.end __glkonim_CopyTexImage1DEXT

# Function: __glkonim_CopyTexImage2DEXT
# Declared: Line 5773 (Source lines: 5775-5785)
# Address: 0x0d9715e0 - 0x0d97163c (Size: 92 bytes, Frame: 16)
.globl __glkonim_CopyTexImage2DEXT
.ent __glkonim_CopyTexImage2DEXT
__glkonim_CopyTexImage2DEXT:
    # Line 5775
    addiu	$sp,$sp,-16
    # Line 5776
    li	$at,3553
    # Line 5775
    lui	$v0,0x12
    sd	$ra,8($sp)
    addiu	$v0,$v0,-1544
    sd	$gp,0($sp)
    # Line 5776
    beq	$a0,$at,.L0d971628
    # Line 5775
    addu	$gp,$t9,$v0
    # Line 5776
    li	$v1,0x8095
    beq	$a0,$v1,.L0d97162c
    # Line 5783
    nop	# was lw $t9, -31800($gp) # &__glkonim_CopyTexImage
    # Line 5779
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d97161c:
    # Line 5785
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d971628:
    # Line 5783
    # lw $t9, -31800($gp) # &__glkonim_CopyTexImage
.L0d97162c:
    bal __glkonim_CopyTexImage
    nop
    b	.L0d97161c
    ld	$ra,8($sp)
.end __glkonim_CopyTexImage2DEXT

# Function: checkTexSubImage
# Declared: Line 5788 (Source lines: 5790-5842)
# Address: 0x0d971640 - 0x0d9718ac (Size: 620 bytes, Frame: 224)
.ent checkTexSubImage
checkTexSubImage:
    # Line 5790
    addiu	$sp,$sp,-96
    sd	$a3,16($sp)
    sd	$a4,24($sp)
    sd	$a5,8($sp)
    sd	$s4,64($sp)
    # Line 5791
    lw	$s4,4112($zero)
    # Line 5790
    sd	$a7,0($sp)
    # Line 5791
    lw	$v0,31640($s4)
    la	$at,index_2_target_map
    # Line 5790
    sd	$s5,40($sp)
    # Line 5791
    sll	$v1,$v0,0x2
    # Line 5790
    sd	$s1,48($sp)
    # Line 5791
    addu	$at,$at,$v1
    lw	$at,0($at)
    # Line 5790
    move	$s1,$a0
    sd	$s0,32($sp)
    move	$s0,$a1
    move	$s5,$a2
    sd	$s3,56($sp)
    move	$s3,$a6
    # Line 5791
    bne	$at,$a0,.L0d971824
    sd	$ra,80($sp)
    # Line 5804
    move	$s1,$v0
    sd	$s2,72($sp)
.L0d9716a0:
    # Line 5809
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 5806
    sll	$s2,$s1,0x2
    # Line 5809
    addiu	$t9,$t9,24144
    move	$a1,$s0
    # Line 5806
    addu	$s2,$s4,$s2
    # Line 5809
    move	$a0,$s1
    jal	sub_0d960000
    # Line 5806
    lw	$s2,31664($s2)
    # Line 5809
    beqz	$v0,.L0d9716e0
    nop
    # Line 5810
    lw	$v0,436($s2)
    slt	$ra,$s0,$v0
    beqz	$ra,.L0d97185c
    # Line 5811
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5810
    beqz	$v0,.L0d97185c
    # Line 5811
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9716e0:
    # Line 5812
    lw	$at,36($s2)
    li	$v0,1
    sllv	$v0,$v0,$s0
    and	$at,$at,$v0
    beqz	$at,.L0d971880
    # Line 5839
    ld	$a5,0($sp)
    # Line 5826
    sll	$v0,$s0,0x2
    addu	$v0,$s2,$v0
    lw	$v0,124($v0)
    # Line 5835
    lw	$a0,20($v0)
    negu	$a2,$a0
    # Line 5819
    lw	$v1,1796($s4)
    # Line 5835
    slt	$a3,$s5,$a2
    # Line 5823
    addiu	$a1,$s3,-1
    # Line 5819
    andi	$v1,$v1,0x20
    # Line 5835
    bnez	$a3,.L0d971734
    movn	$s3,$a1,$v1
    ld	$v1,16($sp)
    slt	$v1,$v1,$a2
    beqz	$v1,.L0d971848
    move	$a1,$zero
.L0d971734:
    li	$a1,1
.L0d971738:
    bnez	$a1,.L0d9717f4
    # Line 5834
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5835
    ld	$a7,24($sp)
    li	$a6,3
    ld	$s2,72($sp)
    # Line 5842
    ld	$s0,32($sp)
    # Line 5835
    beq	$s1,$a6,.L0d9717e8
    slt	$a7,$a7,$a2
    ld	$a1,24($sp)
    bltz	$a1,.L0d9717f0
    ld	$a3,8($sp)
.L0d971764:
    lw	$a2,8($v0)
    addu	$a3,$s5,$a3
    subu	$a2,$a2,$a0
    slt	$a2,$a2,$a3
    lw	$a3,12($v0)
    ld	$a1,24($sp)
    # Line 5842
    ld	$s5,40($sp)
    # Line 5835
    bnez	$a2,.L0d9717f0
    subu	$a3,$a3,$a0
    ld	$a4,16($sp)
    ld	$a2,0($sp)
    addu	$a4,$a4,$s3
    slt	$a3,$a3,$a4
    addu	$a1,$a1,$a2
    lw	$a2,16($v0)
    bnez	$a3,.L0d9717f0
    # Line 5839
    ld	$a4,8($sp)
    # Line 5835
    beq	$s1,$a6,.L0d97186c
    subu	$ra,$a2,$a0
    slt	$a3,$a2,$a1
    bnez	$a3,.L0d9717f4
    # Line 5834
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 5842
    move	$v0,$s1
.L0d9717c0:
    ld	$s1,48($sp)
    # Line 5839
    blez	$a4,.L0d971850
    ld	$ra,80($sp)
    blez	$s3,.L0d971850
    nop
    blez	$a5,.L0d971850
    # Line 5842
    ld	$s3,56($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9717e8:
    # Line 5835
    beqz	$a7,.L0d971764
    ld	$a3,8($sp)
.L0d9717f0:
    # Line 5834
    # lw $t9, -28616($gp) # &__glSetError
.L0d9717f4:
    jal	__glSetError
    li	$a0,1281
    # Line 5835
    li	$v0,-1
.L0d971800:
    ld	$s2,72($sp)
    # Line 5842
    ld	$s0,32($sp)
    ld	$s1,48($sp)
    ld	$ra,80($sp)
    ld	$s3,56($sp)
    ld	$s4,64($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d971824:
    # Line 5797
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    bltz	$v0,.L0d971894
    move	$s1,$v0
    # Line 5801
    sw	$v0,31640($s4)
    b	.L0d9716a0
    sd	$s2,72($sp)
.L0d971848:
    b	.L0d971738
    nop
.L0d971850:
    # Line 5840
    b	.L0d971800
    li	$v0,-1
    # Line 5811
    # lw $t9, -28616($gp) # &__glSetError
.L0d97185c:
    jal	__glSetError
    li	$a0,1281
    # Line 5812
    b	.L0d971800
    li	$v0,-1
.L0d97186c:
    # Line 5835
    slt	$ra,$ra,$a1
    beqz	$ra,.L0d9717c0
    # Line 5842
    move	$v0,$s1
    b	.L0d9717f4
    # Line 5834
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d971880:
    # Line 5818
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5819
    b	.L0d971800
    li	$v0,-1
.L0d971894:
    # Line 5798
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 5799
    li	$v0,-1
    b	.L0d971800
    sd	$s2,72($sp)
.end checkTexSubImage

# Function: __glkonim_TexSubImage
# Declared: Line 5846 (Source lines: 5849-6007)
# Address: 0x0d9718b0 - 0x0d971eb8 (Size: 1544 bytes, Frame: 144)
.globl __glkonim_TexSubImage
.ent __glkonim_TexSubImage
__glkonim_TexSubImage:
    # Line 5849
    addiu	$sp,$sp,-272
    sd	$a7,120($sp)
    sd	$a4,128($sp)
    sd	$a3,136($sp)
    sd	$a2,144($sp)
    sd	$ra,200($sp)
    sd	$gp,192($sp)
    sd	$s2,168($sp)
    sd	$s1,184($sp)
    move	$s1,$a6
    sd	$s0,176($sp)
    move	$s0,$a5
    move	$s2,$a1
    # Line 5856
    lw	$at,4120($zero)
    li	$v0,1
    # Line 5849
    lui	$v1,0x12
    sd	$s3,160($sp)
    addiu	$v1,$v1,-2264
    move	$s3,$a0
    # Line 5856
    lw	$a0,4112($zero)
    sd	$a0,152($sp)
    beq	$at,$v0,.L0d971b98
    # Line 5849
    addu	$gp,$t9,$v1
    # Line 5859
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$a5
    lw	$a5,292($sp)
    addiu	$t9,$t9,3312
    move	$a2,$zero
    lw	$a4,284($sp)
    move	$a1,$a6
    bal __glkonim_IsTextureEXT
    lw	$a3,276($sp)
    bltz	$v0,.L0d971ba4
    # Line 5864
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s3
    move	$a1,$s0
    addiu	$t9,$t9,2976
    move	$a2,$s1
    addiu	$a4,$sp,36
    bal __glkonim_IsTextureEXT
    addiu	$a3,$sp,32
    # Line 5866
    lw	$ra,292($sp)
    beqz	$ra,.L0d971ba4
    ld	$a2,144($sp)
    ld	$a3,136($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a4,128($sp)
    lw	$a6,36($sp)
    addiu	$t9,$t9,5696
    move	$a0,$s3
    ld	$a7,120($sp)
    move	$a1,$s2
    bal __glkonim_CopyTexImage2DEXT
    lw	$a5,32($sp)
    bltz	$v0,.L0d971ba4
    sd	$v0,112($sp)
    # Line 5872
    ld	$s3,112($sp)
    ld	$v0,152($sp)
    # Line 5871
    lui	$v1,0x1
    # Line 5875
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 5872
    sll	$s3,$s3,0x2
    addu	$s3,$v0,$s3
    # Line 5871
    addu	$v0,$v0,$v1
    sd	$v0,88($sp)
    # Line 5872
    lw	$s3,31664($s3)
    # Line 5873
    sll	$at,$s2,0x2
    # Line 5871
    lw	$v0,-30036($v0)
    # Line 5875
    addiu	$t9,$t9,24272
    # Line 5871
    sd	$v0,96($sp)
    # Line 5873
    addu	$at,$s3,$at
    # Line 5875
    move	$a1,$s2
    # Line 5873
    lw	$at,124($at)
    # Line 5875
    move	$a0,$s3
    jal	sub_0d960000
    sd	$at,104($sp)
    bnez	$v0,.L0d971ba4
    nop
    lw	$t8,284($s3)
    andi	$t9,$s2,0x1
    xor	$t8,$t8,$t9
    sltiu	$t8,$t8,1
    sll	$t8,$t8,0x2
    addu	$t8,$s3,$t8
    lw	$t8,264($t8)
    beqz	$t8,.L0d971ba4
    # Line 5878
    ld	$v0,104($sp)
    la	$at,intern_format_arr3
    lw	$v0,4($v0)
    # Line 5880
    lw	$ra,32($s3)
    # Line 5878
    sll	$v0,$v0,0x4
    # Line 5880
    dsll32	$ra,$ra,0x7
    # Line 5878
    addu	$at,$at,$v0
    lw	$at,8($at)
    # Line 5880
    bgez	$ra,.L0d971a60
    sd	$at,72($sp)
    ld	$v1,152($sp)
    ld	$a1,112($sp)
    li	$a0,1
    lw	$v1,31632($v1)
    sllv	$a0,$a0,$a1
    and	$v1,$v1,$a0
    beqz	$v1,.L0d971a60
    # Line 5883
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,88($sp)
    addiu	$t9,$t9,20112
    move	$a1,$s3
    jal	sub_0d960000
    lw	$a0,-30036($a0)
.L0d971a60:
    # Line 5885
    sw	$zero,40($sp)
    # Line 5886
    lw	$ra,32($s3)
    dsll32	$ra,$ra,0x9
    bgez	$ra,.L0d971bc4
    ld	$a1,104($sp)
.L0d971a74:
    lw	$at,44($s3)
    li	$v0,1
    sllv	$v0,$v0,$s2
    and	$at,$at,$v0
    beqz	$at,.L0d971d28
    sd	$v0,80($sp)
    # Line 5908
    ld	$a0,96($sp)
.L0d971a90:
    lw	$a7,32($sp)
    ld	$at,120($sp)
    lw	$ra,36($sp)
    # Line 5904
    sw	$s1,48($sp)
    # Line 5903
    sw	$s0,44($sp)
    # Line 5905
    lw	$a6,276($sp)
    sw	$a6,52($sp)
    # Line 5908
    ld	$a6,128($sp)
    ld	$a3,104($sp)
    # Line 5906
    lw	$a5,284($sp)
    sw	$a5,56($sp)
    # Line 5908
    ld	$a5,136($sp)
    # Line 5907
    lw	$a4,292($sp)
    sw	$a4,60($sp)
    # Line 5908
    lw	$a3,4($a3)
    # Line 5963
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 5908
    addiu	$v0,$sp,40
    sw	$v0,20($sp)
    ld	$a4,144($sp)
    # Line 5963
    addiu	$t9,$t9,-17280
    # Line 5908
    move	$a2,$s2
    sw	$ra,4($sp)
    move	$a1,$s3
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    ld	$s0,80($sp)
    lw	$a2,48($s3)
    and	$a7,$a2,$s0
    beqz	$a7,.L0d971b2c
    nor	$s1,$s0,$zero
    # Line 5915
    ld	$a0,152($sp)
    # Line 5914
    and	$a2,$a2,$s1
    sw	$a2,48($s3)
    # Line 5915
    lw	$t9,12($a0)
    ld	$a1,104($sp)
    jal	sub_0d970000
    lw	$a1,0($a1)
    # Line 5916
    ld	$a3,104($sp)
    sw	$zero,0($a3)
.L0d971b2c:
    # Line 5989
    lw	$a6,44($s3)
    # Line 5995
    lw	$a5,32($s3)
    # Line 5988
    lw	$a4,40($s3)
    # Line 5995
    lui	$a7,0x100
    # Line 5989
    and	$a6,$a6,$s1
    # Line 5995
    and	$a5,$a5,$a7
    # Line 5988
    and	$a4,$a4,$s1
    # Line 5989
    or	$a6,$s0,$a6
    sw	$a6,44($s3)
    # Line 5988
    or	$a4,$s0,$a4
    # Line 5995
    beqz	$a5,.L0d971ba4
    # Line 5988
    sw	$a4,40($s3)
    # Line 5995
    ld	$a7,152($sp)
    ld	$t1,112($sp)
    li	$t0,1
    lw	$a7,31632($a7)
    sllv	$t0,$t0,$t1
    and	$a7,$a7,$t0
    beqz	$a7,.L0d971ba4
    nop
    # Line 5998
    lw	$t9,256($s3)
    ld	$a0,152($sp)
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$a0,31632
    b	.L0d971ba8
    ld	$s3,160($sp)
.L0d971b98:
    # Line 5856
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d971ba4:
    ld	$s3,160($sp)
.L0d971ba8:
    ld	$s2,168($sp)
    ld	$ra,200($sp)
    ld	$s0,176($sp)
    ld	$s1,184($sp)
    # Line 6007
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d971bc4:
    # Line 5886
    lw	$a1,20($a1)
    beqz	$a1,.L0d971a74
    # Line 5920
    ld	$a2,144($sp)
    bltz	$a2,.L0d971d00
    ld	$a3,136($sp)
    bltz	$a3,.L0d971d00
    ld	$a4,128($sp)
    bltz	$a4,.L0d971d00
    lw	$a7,32($sp)
    ld	$t3,104($sp)
    ld	$a6,144($sp)
    lw	$t3,8($t3)
    sll	$t2,$a1,0x1
    addu	$a6,$a6,$a7
    subu	$a5,$t3,$t2
    slt	$a5,$a5,$a6
    bnez	$a5,.L0d971d00
    lw	$t8,36($sp)
    ld	$t9,104($sp)
    ld	$ra,136($sp)
    lw	$t9,12($t9)
    addu	$ra,$ra,$t8
    subu	$t9,$t9,$t2
    slt	$t9,$t9,$ra
    bnez	$t9,.L0d971d00
    ld	$v0,120($sp)
    ld	$ra,104($sp)
    ld	$at,128($sp)
    lw	$ra,16($ra)
    addu	$at,$at,$v0
    subu	$ra,$ra,$t2
    slt	$ra,$ra,$at
    bnez	$ra,.L0d971d04
    # Line 5963
    la	$a1,.rodata
    # Line 5920
    lw	$at,44($s3)
    li	$v0,1
    sllv	$v0,$v0,$s2
    and	$at,$at,$v0
    beqz	$at,.L0d971de8
    sd	$v0,80($sp)
.L0d971c64:
    # Line 5948
    ld	$a0,96($sp)
    ld	$ra,120($sp)
    # Line 5944
    sw	$s1,48($sp)
    # Line 5943
    sw	$s0,44($sp)
    # Line 5945
    lw	$a6,276($sp)
    sw	$a6,52($sp)
    # Line 5948
    ld	$a6,128($sp)
    ld	$a3,104($sp)
    # Line 5946
    lw	$a5,284($sp)
    sw	$a5,56($sp)
    # Line 5948
    ld	$a5,136($sp)
    # Line 5947
    lw	$a4,292($sp)
    sw	$a4,60($sp)
    # Line 5948
    lw	$a3,4($a3)
    # Line 5940
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 5948
    addiu	$at,$sp,40
    sw	$at,20($sp)
    ld	$a4,144($sp)
    # Line 5940
    addiu	$t9,$t9,-17280
    # Line 5948
    move	$a2,$s2
    sw	$ra,12($sp)
    move	$a1,$s3
    bal __glKonGetTexParameter
    sw	$t8,4($sp)
    ld	$s0,80($sp)
    lw	$a2,48($s3)
    and	$a7,$a2,$s0
    beqz	$a7,.L0d971b2c
    nor	$s1,$s0,$zero
    # Line 5955
    ld	$a0,152($sp)
    # Line 5954
    and	$a2,$a2,$s1
    sw	$a2,48($s3)
    # Line 5955
    lw	$t9,12($a0)
    ld	$a1,104($sp)
    jal	sub_0d970000
    lw	$a1,0($a1)
    ld	$a3,104($sp)
    b	.L0d971b2c
    # Line 5956
    sw	$zero,0($a3)
.L0d971d00:
    # Line 5963
    la	$a1,.rodata
.L0d971d04:
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-4776
    jal	fprintf
    addiu	$a0,$a0,32
    li	$s0,1
    sllv	$s0,$s0,$s2
    b	.L0d971b2c
    nor	$s1,$s0,$zero
.L0d971d28:
    # Line 5888
    ld	$t8,104($sp)
    # Line 5894
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    # Line 5888
    lw	$v1,8($t8)
    sw	$v1,44($sp)
    # Line 5890
    ld	$a0,72($sp)
    # Line 5889
    lw	$v1,12($t8)
    # Line 5891
    li	$ra,5123
    sw	$ra,56($sp)
    # Line 5890
    sll	$v0,$a0,0x2
    la	$at,rdbk_format2
    subu	$v0,$v0,$a0
    # Line 5889
    sw	$v1,48($sp)
    # Line 5890
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    sd	$at,64($sp)
    lw	$at,4($at)
    sw	$at,52($sp)
    # Line 5894
    lui	$a1,0x6000
    # Line 5892
    lw	$t8,0($t8)
    # Line 5894
    li	$a0,2
    jal	__glKonSetNoModeState
    # Line 5892
    sw	$t8,60($sp)
    # Line 5896
    ld	$a0,96($sp)
    ld	$a5,104($sp)
    ld	$a3,64($sp)
    lw	$a7,8($a5)
    lw	$a3,0($a3)
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$a6,12($a5)
    lw	$a4,20($a5)
    move	$a2,$s2
    move	$a1,$s3
    sw	$a6,4($sp)
    addiu	$t9,$t9,-17280
    lw	$a5,16($a5)
    negu	$a4,$a4
    addiu	$ra,$sp,40
    sw	$ra,20($sp)
    move	$a6,$a4
    sw	$a5,12($sp)
    bal __glKonGetTexParameter
    move	$a5,$a4
    # Line 5900
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    b	.L0d971a90
    # Line 5908
    ld	$a0,96($sp)
.L0d971de8:
    # Line 5928
    sw	$t3,44($sp)
    # Line 5930
    ld	$t0,72($sp)
    # Line 5929
    ld	$a4,104($sp)
    # Line 5934
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    # Line 5930
    sll	$a7,$t0,0x2
    subu	$a7,$a7,$t0
    # Line 5929
    lw	$t0,12($a4)
    # Line 5931
    li	$a5,5123
    sw	$a5,56($sp)
    # Line 5930
    la	$a6,rdbk_format2
    # Line 5929
    sw	$t0,48($sp)
    # Line 5930
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sd	$a6,64($sp)
    lw	$a6,4($a6)
    sw	$a6,52($sp)
    # Line 5934
    lui	$a1,0x6000
    # Line 5932
    lw	$a4,0($a4)
    # Line 5934
    li	$a0,2
    jal	__glKonSetNoModeState
    # Line 5932
    sw	$a4,60($sp)
    # Line 5936
    ld	$a0,96($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$t1,104($sp)
    ld	$a3,64($sp)
    lw	$a7,8($t1)
    lw	$t2,20($t1)
    move	$a6,$zero
    move	$a5,$zero
    lw	$t3,12($t1)
    move	$a4,$zero
    lw	$a3,0($a3)
    sll	$t2,$t2,0x1
    move	$a2,$s2
    subu	$t3,$t3,$t2
    sw	$t3,4($sp)
    move	$a1,$s3
    addiu	$t9,$t9,-17280
    lw	$t1,16($t1)
    addiu	$t0,$sp,40
    sw	$t0,20($sp)
    subu	$a7,$a7,$t2
    subu	$t1,$t1,$t2
    bal __glKonGetTexParameter
    sw	$t1,12($sp)
    # Line 5940
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    lw	$a7,32($sp)
    b	.L0d971c64
    lw	$t8,36($sp)
.end __glkonim_TexSubImage

# Function: __glkonim_CopyTexSubImage
# Declared: Line 6010 (Source lines: 6013-6158)
# Address: 0x0d971ec0 - 0x0d972598 (Size: 1752 bytes, Frame: 160)
.globl __glkonim_CopyTexSubImage
.ent __glkonim_CopyTexSubImage
__glkonim_CopyTexSubImage:
    # Line 6013
    addiu	$sp,$sp,-288
    sd	$a7,152($sp)
    sd	$a6,128($sp)
    sd	$a5,120($sp)
    sd	$a4,160($sp)
    sd	$a3,168($sp)
    sd	$a2,176($sp)
    sd	$ra,216($sp)
    sd	$gp,208($sp)
    sd	$s0,200($sp)
    move	$s0,$a1
    # Line 6020
    lw	$at,4120($zero)
    li	$v0,1
    # Line 6013
    lui	$v1,0x12
    sd	$s1,192($sp)
    addiu	$v1,$v1,-3816
    move	$s1,$a0
    # Line 6020
    lw	$a0,4112($zero)
    sd	$a0,184($sp)
    beq	$at,$v0,.L0d9721d4
    # Line 6013
    addu	$gp,$t9,$v1
    # Line 6025
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,2976
    addiu	$a4,$sp,36
    addiu	$a3,$sp,32
    ld	$a1,152($sp)
    move	$a0,$s1
    bal __glkonim_IsTextureEXT
    lw	$a2,292($sp)
    # Line 6027
    ld	$a2,176($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a3,168($sp)
    ld	$a4,160($sp)
    addiu	$t9,$t9,5696
    move	$a0,$s1
    move	$a1,$s0
    lw	$a6,36($sp)
    li	$a7,1
    bal __glkonim_CopyTexImage2DEXT
    lw	$a5,32($sp)
    bltz	$v0,.L0d9721bc
    sd	$v0,144($sp)
    # Line 6033
    ld	$s1,144($sp)
    ld	$v0,184($sp)
    # Line 6032
    lui	$v1,0x1
    # Line 6036
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 6033
    sll	$s1,$s1,0x2
    addu	$s1,$v0,$s1
    # Line 6032
    addu	$v0,$v0,$v1
    sd	$v0,104($sp)
    lw	$v0,-30036($v0)
    # Line 6033
    lw	$s1,31664($s1)
    # Line 6034
    sll	$at,$s0,0x2
    # Line 6032
    sd	$v0,112($sp)
    # Line 6036
    addiu	$t9,$t9,24272
    # Line 6034
    addu	$at,$s1,$at
    sd	$at,96($sp)
    # Line 6036
    move	$a1,$s0
    # Line 6034
    lw	$at,124($at)
    # Line 6036
    move	$a0,$s1
    jal	sub_0d960000
    sd	$at,136($sp)
    bnez	$v0,.L0d972188
    nop
    lw	$t8,284($s1)
    andi	$t9,$s0,0x1
    xor	$t8,$t8,$t9
    sltiu	$t8,$t8,1
    sll	$t8,$t8,0x2
    addu	$t8,$s1,$t8
    lw	$t8,264($t8)
    beqz	$t8,.L0d972188
    # Line 6039
    ld	$v0,136($sp)
    la	$at,intern_format_arr3
    lw	$v0,4($v0)
    # Line 6041
    lw	$t2,32($s1)
    # Line 6039
    sll	$v0,$v0,0x4
    # Line 6041
    dsll32	$ra,$t2,0x7
    # Line 6039
    addu	$at,$at,$v0
    lw	$at,8($at)
    # Line 6041
    bgez	$ra,.L0d972044
    sd	$at,72($sp)
    ld	$v1,184($sp)
    ld	$a1,144($sp)
    li	$a0,1
    lw	$v1,31632($v1)
    sllv	$a0,$a0,$a1
    and	$v1,$v1,$a0
    beqz	$v1,.L0d972048
    # Line 6046
    dsll32	$ra,$t2,0x9
    # Line 6044
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,104($sp)
    addiu	$t9,$t9,20112
    move	$a1,$s1
    jal	sub_0d960000
    lw	$a0,-30036($a0)
    lw	$t2,32($s1)
.L0d972044:
    # Line 6046
    dsll32	$ra,$t2,0x9
.L0d972048:
    bgez	$ra,.L0d9721e8
    ld	$t3,136($sp)
.L0d972050:
    lw	$at,44($s1)
    li	$v0,1
    sllv	$v0,$v0,$s0
    and	$at,$at,$v0
    beqz	$at,.L0d972384
    sd	$v0,88($sp)
    # Line 6069
    ld	$a0,112($sp)
.L0d97206c:
    lw	$ra,36($sp)
    # Line 6068
    ld	$a4,128($sp)
    # Line 6067
    ld	$a5,120($sp)
    # Line 6064
    li	$t0,1
    sw	$t0,40($sp)
    # Line 6065
    ld	$a7,152($sp)
    sw	$a7,44($sp)
    # Line 6066
    lw	$a6,292($sp)
    # Line 6067
    sw	$a5,52($sp)
    # Line 6069
    ld	$a5,168($sp)
    # Line 6068
    sw	$a4,56($sp)
    # Line 6069
    ld	$a4,176($sp)
    lw	$a7,32($sp)
    ld	$a3,136($sp)
    # Line 6066
    sw	$a6,48($sp)
    # Line 6069
    lw	$a3,4($a3)
    # Line 6137
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 6069
    addiu	$v0,$sp,40
    sw	$v0,20($sp)
    ld	$a6,160($sp)
    # Line 6137
    addiu	$t9,$t9,-17280
    # Line 6069
    move	$a2,$s0
    move	$a1,$s1
    sw	$ra,4($sp)
    move	$at,$t0
    bal __glKonGetTexParameter
    sw	$at,12($sp)
    ld	$s0,88($sp)
    lw	$a3,48($s1)
    and	$t1,$a3,$s0
    beqz	$t1,.L0d97211c
    nor	$a1,$s0,$zero
    sd	$a1,80($sp)
    # Line 6075
    ld	$a2,80($sp)
    # Line 6076
    ld	$a0,184($sp)
    # Line 6075
    and	$a2,$a3,$a2
    sw	$a2,48($s1)
    # Line 6076
    lw	$t9,12($a0)
    ld	$a1,136($sp)
    jal	sub_0d970000
    lw	$a1,0($a1)
    # Line 6077
    ld	$a3,136($sp)
    ld	$a1,80($sp)
    sw	$zero,0($a3)
.L0d97211c:
    lw	$a2,40($s1)
    lw	$t2,32($s1)
.L0d972124:
    # Line 6143
    lw	$a4,44($s1)
    # Line 6149
    lui	$a5,0x100
    # Line 6142
    and	$a6,$a2,$a1
    # Line 6149
    and	$a5,$t2,$a5
    # Line 6142
    or	$a6,$s0,$a6
    sw	$a6,40($s1)
    # Line 6143
    and	$a4,$a4,$a1
    or	$a4,$s0,$a4
    # Line 6149
    beqz	$a5,.L0d9721bc
    # Line 6143
    sw	$a4,44($s1)
    # Line 6149
    ld	$a6,184($sp)
    ld	$t0,144($sp)
    li	$a7,1
    lw	$a6,31632($a6)
    sllv	$a7,$a7,$t0
    and	$a6,$a6,$a7
    beqz	$a6,.L0d9721c0
    ld	$ra,216($sp)
    # Line 6152
    lw	$t9,256($s1)
    ld	$a0,184($sp)
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$a0,31632
    b	.L0d9721c0
    ld	$ra,216($sp)
.L0d972188:
    # Line 6158
    ld	$gp,208($sp)
    # Line 6156
    li	$a1,1
    lw	$a2,48($s1)
    sllv	$a1,$a1,$s0
    ld	$ra,216($sp)
    nor	$a3,$a1,$zero
    # Line 6158
    ld	$s0,200($sp)
    # Line 6156
    and	$a2,$a2,$a3
    or	$a1,$a1,$a2
    sw	$a1,48($s1)
    # Line 6158
    ld	$s1,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9721bc:
    ld	$ra,216($sp)
.L0d9721c0:
    ld	$s1,192($sp)
    ld	$s0,200($sp)
    ld	$gp,208($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9721d4:
    # Line 6020
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9721c0
    ld	$ra,216($sp)
.L0d9721e8:
    # Line 6046
    lw	$t3,20($t3)
    # Line 6081
    ld	$t9,168($sp)
    # Line 6122
    li	$a4,1
    # Line 6046
    beqz	$t3,.L0d972050
    # Line 6081
    ld	$ra,160($sp)
    ld	$t8,176($sp)
    bltz	$t8,.L0d972344
    nop
    bltz	$t9,.L0d972344
    nop
    bltz	$ra,.L0d972344
    lw	$a7,32($sp)
    ld	$at,136($sp)
    ld	$v0,176($sp)
    lw	$at,8($at)
    sll	$t8,$t3,0x1
    addu	$v0,$v0,$a7
    subu	$at,$at,$t8
    slt	$at,$at,$v0
    bnez	$at,.L0d972344
    lw	$t3,36($sp)
    ld	$v0,136($sp)
    ld	$v1,168($sp)
    lw	$v0,12($v0)
    addu	$v1,$v1,$t3
    subu	$v0,$v0,$t8
    slt	$v0,$v0,$v1
    bnez	$v0,.L0d972344
    ld	$v1,136($sp)
    lw	$v1,16($v1)
    ld	$a0,160($sp)
    subu	$v1,$v1,$t8
    slt	$v1,$v1,$a0
    bnez	$v1,.L0d972348
    # Line 6122
    sllv	$a4,$a4,$s0
    # Line 6081
    lw	$a0,44($s1)
    li	$a1,1
    sllv	$a1,$a1,$s0
    and	$a0,$a0,$a1
    beqz	$a0,.L0d9724c0
    sd	$a1,88($sp)
.L0d97228c:
    # Line 6110
    ld	$a0,112($sp)
    # Line 6109
    ld	$a4,128($sp)
    # Line 6108
    ld	$a5,120($sp)
    # Line 6105
    li	$t1,1
    sw	$t1,40($sp)
    # Line 6106
    ld	$t0,152($sp)
    sw	$t0,44($sp)
    # Line 6107
    lw	$a6,292($sp)
    # Line 6108
    sw	$a5,52($sp)
    # Line 6110
    ld	$a5,168($sp)
    # Line 6109
    sw	$a4,56($sp)
    # Line 6110
    ld	$a4,176($sp)
    ld	$a3,136($sp)
    # Line 6107
    sw	$a6,48($sp)
    # Line 6110
    lw	$a3,4($a3)
    # Line 6102
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 6110
    addiu	$at,$sp,40
    sw	$at,20($sp)
    ld	$a6,160($sp)
    # Line 6102
    addiu	$t9,$t9,-17280
    # Line 6110
    move	$a2,$s0
    move	$ra,$t1
    sw	$ra,12($sp)
    move	$a1,$s1
    bal __glKonGetTexParameter
    sw	$t3,4($sp)
    ld	$s0,88($sp)
    lw	$a3,48($s1)
    and	$t2,$a3,$s0
    beqz	$t2,.L0d972338
    nor	$a1,$s0,$zero
    sd	$a1,80($sp)
    # Line 6116
    ld	$a2,80($sp)
    # Line 6117
    ld	$a0,184($sp)
    # Line 6116
    and	$a2,$a3,$a2
    sw	$a2,48($s1)
    # Line 6117
    lw	$t9,12($a0)
    ld	$a1,136($sp)
    jal	sub_0d970000
    lw	$a1,0($a1)
    # Line 6118
    ld	$a3,136($sp)
    ld	$a1,80($sp)
    sw	$zero,0($a3)
.L0d972338:
    # Line 6115
    lw	$a2,40($s1)
    b	.L0d972124
    lw	$t2,32($s1)
.L0d972344:
    # Line 6122
    sllv	$a4,$a4,$s0
.L0d972348:
    lw	$a2,40($s1)
    sd	$a4,88($sp)
    and	$a4,$a2,$a4
    lw	$a3,48($s1)
    beqz	$a4,.L0d97236c
    ld	$a5,88($sp)
    and	$a5,$a3,$a5
    beqz	$a5,.L0d972448
    # Line 6126
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d97236c:
    # Line 6137
    ld	$s0,88($sp)
    nor	$a1,$s0,$zero
    and	$a6,$a3,$a1
    or	$a6,$s0,$a6
    b	.L0d972124
    sw	$a6,48($s1)
.L0d972384:
    # Line 6055
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    # Line 6049
    ld	$a7,136($sp)
    # Line 6048
    sw	$zero,40($sp)
    # Line 6049
    lw	$t3,8($a7)
    sw	$t3,44($sp)
    # Line 6051
    ld	$t8,72($sp)
    # Line 6050
    lw	$t3,12($a7)
    # Line 6052
    li	$t0,5123
    sw	$t0,56($sp)
    # Line 6051
    sll	$t2,$t8,0x2
    la	$t1,rdbk_format2
    subu	$t2,$t2,$t8
    # Line 6050
    sw	$t3,48($sp)
    # Line 6051
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    sd	$t1,64($sp)
    lw	$t1,4($t1)
    sw	$t1,52($sp)
    # Line 6055
    lui	$a1,0x6000
    # Line 6053
    lw	$a7,0($a7)
    # Line 6055
    li	$a0,2
    jal	__glKonSetNoModeState
    # Line 6053
    sw	$a7,60($sp)
    # Line 6057
    ld	$a0,112($sp)
    ld	$ra,136($sp)
    ld	$a3,64($sp)
    lw	$a7,8($ra)
    lw	$a3,0($a3)
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$at,12($ra)
    lw	$a4,20($ra)
    move	$a2,$s0
    move	$a1,$s1
    sw	$at,4($sp)
    addiu	$t9,$t9,-17280
    lw	$ra,16($ra)
    negu	$a4,$a4
    addiu	$at,$sp,40
    sw	$at,20($sp)
    move	$a6,$a4
    sw	$ra,12($sp)
    bal __glKonGetTexParameter
    move	$a5,$a4
    # Line 6061
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    b	.L0d97206c
    # Line 6069
    ld	$a0,112($sp)
.L0d972448:
    # Line 6126
    addiu	$t9,$t9,24784
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    # Line 6127
    lw	$a4,28($s1)
    la	$a3,intern_format_arr3
    ld	$a0,112($sp)
    sll	$a4,$a4,0x4
    ld	$a6,96($sp)
    addu	$a3,$a3,$a4
    lw	$t0,8($a3)
    # lw $t9, -32736($gp) # &sub_0d970000
    lw	$a6,124($a6)
    sll	$a7,$t0,0x2
    li	$a5,5123
    la	$a4,rdbk_format2
    subu	$a7,$a7,$t0
    addiu	$t9,$t9,-14992
    lw	$a6,0($a6)
    sll	$a7,$a7,0x2
    move	$a2,$s0
    lw	$a3,4($a3)
    addu	$a4,$a4,$a7
    move	$a1,$s1
    bal __glKonGetTexParameter
    lw	$a4,4($a4)
    lw	$a2,40($s1)
    lw	$t2,32($s1)
    b	.L0d97236c
    lw	$a3,48($s1)
.L0d9724c0:
    # Line 6096
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    # Line 6090
    ld	$a5,136($sp)
    # Line 6089
    sw	$zero,40($sp)
    # Line 6090
    lw	$t1,8($a5)
    sw	$t1,44($sp)
    # Line 6092
    ld	$t2,72($sp)
    # Line 6091
    lw	$t1,12($a5)
    # Line 6093
    li	$a6,5123
    sw	$a6,56($sp)
    # Line 6092
    sll	$t0,$t2,0x2
    la	$a7,rdbk_format2
    subu	$t0,$t0,$t2
    # Line 6091
    sw	$t1,48($sp)
    # Line 6092
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    sd	$a7,64($sp)
    lw	$a7,4($a7)
    sw	$a7,52($sp)
    # Line 6096
    lui	$a1,0x6000
    # Line 6094
    lw	$a5,0($a5)
    # Line 6096
    li	$a0,2
    jal	__glKonSetNoModeState
    # Line 6094
    sw	$a5,60($sp)
    # Line 6098
    ld	$a0,112($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$t3,136($sp)
    ld	$a3,64($sp)
    lw	$a7,8($t3)
    lw	$t8,20($t3)
    move	$a6,$zero
    move	$a5,$zero
    lw	$ra,12($t3)
    move	$a4,$zero
    lw	$a3,0($a3)
    sll	$t8,$t8,0x1
    move	$a2,$s0
    subu	$ra,$ra,$t8
    sw	$ra,4($sp)
    move	$a1,$s1
    addiu	$t9,$t9,-17280
    lw	$t3,16($t3)
    addiu	$t0,$sp,40
    sw	$t0,20($sp)
    subu	$a7,$a7,$t8
    subu	$t3,$t3,$t8
    bal __glKonGetTexParameter
    sw	$t3,12($sp)
    # Line 6102
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    jal	__glKonSetNoModeState
    li	$a0,2
    lw	$a7,32($sp)
    b	.L0d97228c
    lw	$t3,36($sp)
.end __glkonim_CopyTexSubImage

# Function: __glkonim_TexSubImage3DEXT
# Declared: Line 6161 (Source lines: 6165-6174)
# Address: 0x0d9725a0 - 0x0d972604 (Size: 100 bytes, Frame: 240)
.globl __glkonim_TexSubImage3DEXT
.ent __glkonim_TexSubImage3DEXT
__glkonim_TexSubImage3DEXT:
    # Line 6165
    addiu	$sp,$sp,-112
    li	$at,0x806f
    lui	$v0,0x12
    sd	$ra,40($sp)
    addiu	$v0,$v0,-5576
    sd	$gp,32($sp)
    beq	$a0,$at,.L0d9725dc
    addu	$gp,$t9,$v0
    # Line 6167
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,40($sp)
.L0d9725d0:
    # Line 6174
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9725dc:
    # Line 6171
    # lw $t9, -31776($gp) # &__glkonim_TexSubImage
    lw	$t1,116($sp)
    sw	$t1,4($sp)
    lw	$t0,124($sp)
    sw	$t0,12($sp)
    lw	$v1,132($sp)
    bal __glkonim_TexSubImage
    sw	$v1,20($sp)
    b	.L0d9725d0
    ld	$ra,40($sp)
.end __glkonim_TexSubImage3DEXT

# Function: __glkonim_TexSubImage2DEXT
# Declared: Line 6177 (Source lines: 6180-6191)
# Address: 0x0d972610 - 0x0d972694 (Size: 132 bytes, Frame: 240)
.globl __glkonim_TexSubImage2DEXT
.ent __glkonim_TexSubImage2DEXT
__glkonim_TexSubImage2DEXT:
    # Line 6180
    move	$t2,$a7
    move	$t3,$a6
    move	$t8,$a5
    addiu	$sp,$sp,-112
    # Line 6181
    li	$at,3553
    # Line 6180
    lui	$v0,0x12
    move	$t1,$a4
    sd	$ra,40($sp)
    addiu	$v0,$v0,-5688
    sd	$gp,32($sp)
    # Line 6181
    beq	$a0,$at,.L0d972664
    # Line 6180
    addu	$gp,$t9,$v0
    # Line 6181
    li	$v1,0x8095
    beq	$a0,$v1,.L0d972664
    # Line 6184
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,40($sp)
.L0d972658:
    # Line 6191
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d972664:
    # Line 6188
    sw	$t2,12($sp)
    # lw $t9, -31776($gp) # &__glkonim_TexSubImage
    move	$a4,$zero
    sw	$t3,4($sp)
    move	$a5,$t1
    move	$a6,$t8
    lw	$t0,116($sp)
    li	$a7,1
    bal __glkonim_TexSubImage
    sw	$t0,20($sp)
    b	.L0d972658
    ld	$ra,40($sp)
.end __glkonim_TexSubImage2DEXT

# Function: __glkonim_TexSubImage1DEXT
# Declared: Line 6194 (Source lines: 6197-6206)
# Address: 0x0d9726a0 - 0x0d97271c (Size: 124 bytes, Frame: 48)
.globl __glkonim_TexSubImage1DEXT
.ent __glkonim_TexSubImage1DEXT
__glkonim_TexSubImage1DEXT:
    # Line 6197
    move	$t3,$a6
    move	$t8,$a5
    move	$t1,$a4
    addiu	$sp,$sp,-48
    li	$at,3552
    lui	$v0,0x12
    move	$t2,$a3
    sd	$ra,40($sp)
    addiu	$v0,$v0,-5832
    sd	$gp,32($sp)
    beq	$a0,$at,.L0d9726ec
    addu	$gp,$t9,$v0
    # Line 6199
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,40($sp)
.L0d9726e0:
    # Line 6206
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9726ec:
    # Line 6203
    # lw $t9, -31776($gp) # &__glkonim_TexSubImage
    move	$a3,$zero
    move	$a4,$zero
    sw	$t8,12($sp)
    move	$a5,$t2
    li	$a7,1
    sw	$t1,4($sp)
    sw	$a6,20($sp)
    bal __glkonim_TexSubImage
    li	$a6,1
    b	.L0d9726e0
    ld	$ra,40($sp)
.end __glkonim_TexSubImage1DEXT

# Function: __glkonim_CopyTexSubImage1DEXT
# Declared: Line 6209 (Source lines: 6211-6219)
# Address: 0x0d972720 - 0x0d97278c (Size: 108 bytes, Frame: 32)
.globl __glkonim_CopyTexSubImage1DEXT
.ent __glkonim_CopyTexSubImage1DEXT
__glkonim_CopyTexSubImage1DEXT:
    # Line 6211
    move	$a7,$a5
    move	$a6,$a4
    addiu	$sp,$sp,-32
    li	$at,3552
    lui	$v0,0x12
    move	$t1,$a3
    sd	$ra,24($sp)
    addiu	$v0,$v0,-5960
    sd	$gp,16($sp)
    beq	$a0,$at,.L0d972768
    addu	$gp,$t9,$v0
    # Line 6213
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d97275c:
    # Line 6219
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d972768:
    # Line 6217
    # lw $t9, -31772($gp) # &__glkonim_CopyTexSubImage
    move	$a3,$zero
    move	$a4,$zero
    move	$a5,$t1
    li	$v1,1
    bal __glkonim_CopyTexSubImage
    sw	$v1,4($sp)
    b	.L0d97275c
    ld	$ra,24($sp)
.end __glkonim_CopyTexSubImage1DEXT

# Function: __glkonim_CopyTexSubImage2DEXT
# Declared: Line 6222 (Source lines: 6224-6234)
# Address: 0x0d972790 - 0x0d972808 (Size: 120 bytes, Frame: 32)
.globl __glkonim_CopyTexSubImage2DEXT
.ent __glkonim_CopyTexSubImage2DEXT
__glkonim_CopyTexSubImage2DEXT:
    # Line 6224
    move	$t2,$a7
    move	$t3,$a6
    move	$t8,$a5
    addiu	$sp,$sp,-32
    # Line 6225
    li	$at,3553
    # Line 6224
    lui	$v0,0x12
    move	$t1,$a4
    sd	$ra,24($sp)
    addiu	$v0,$v0,-6072
    sd	$gp,16($sp)
    # Line 6225
    beq	$a0,$at,.L0d9727e4
    # Line 6224
    addu	$gp,$t9,$v0
    # Line 6225
    li	$v1,0x8095
    beq	$a0,$v1,.L0d9727e4
    # Line 6228
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d9727d8:
    # Line 6234
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9727e4:
    # Line 6232
    # lw $t9, -31772($gp) # &__glkonim_CopyTexSubImage
    move	$a4,$zero
    move	$a5,$t1
    move	$a6,$t8
    move	$a7,$t3
    bal __glkonim_CopyTexSubImage
    sw	$t2,4($sp)
    b	.L0d9727d8
    ld	$ra,24($sp)
.end __glkonim_CopyTexSubImage2DEXT

# Function: __glkonim_CopyTexSubImage3DEXT
# Declared: Line 6237 (Source lines: 6239-6247)
# Address: 0x0d972810 - 0x0d972864 (Size: 84 bytes, Frame: 224)
.globl __glkonim_CopyTexSubImage3DEXT
.ent __glkonim_CopyTexSubImage3DEXT
__glkonim_CopyTexSubImage3DEXT:
    # Line 6239
    addiu	$sp,$sp,-96
    li	$at,0x806f
    lui	$v0,0x12
    sd	$ra,24($sp)
    addiu	$v0,$v0,-6200
    sd	$gp,16($sp)
    beq	$a0,$at,.L0d97284c
    addu	$gp,$t9,$v0
    # Line 6241
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d972840:
    # Line 6247
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d97284c:
    # Line 6245
    # lw $t9, -31772($gp) # &__glkonim_CopyTexSubImage
    lw	$v1,100($sp)
    bal __glkonim_CopyTexSubImage
    sw	$v1,4($sp)
    b	.L0d972840
    ld	$ra,24($sp)
.end __glkonim_CopyTexSubImage3DEXT

# Function: __glkonim_GetTexImage
# Declared: Line 6250 (Source lines: 6252-6319)
# Address: 0x0d972870 - 0x0d972a70 (Size: 512 bytes, Frame: 208)
.globl __glkonim_GetTexImage
.ent __glkonim_GetTexImage
__glkonim_GetTexImage:
    # Line 6252
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    # Line 6255
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    # Line 6252
    sd	$s0,40($sp)
    # Line 6255
    li	$a5,1
    # Line 6252
    lui	$v0,0x12
    move	$s0,$a1
    sd	$ra,56($sp)
    addiu	$v0,$v0,-6296
    sd	$gp,48($sp)
    # Line 6255
    beq	$at,$a5,.L0d972a44
    # Line 6252
    addu	$gp,$t9,$v0
    # Line 6257
    lw	$v0,31640($s1)
    la	$v1,index_2_target_map
    sll	$a1,$v0,0x2
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    sd	$a2,24($sp)
    sd	$a3,16($sp)
    bne	$v1,$a0,.L0d9729e0
    sd	$a4,8($sp)
    # Line 6266
    move	$a0,$v0
    sd	$s2,64($sp)
.L0d9728d0:
    # Line 6271
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 6268
    sll	$s2,$a0,0x2
    # Line 6271
    addiu	$t9,$t9,24144
    # Line 6268
    addu	$s2,$s1,$s2
    # Line 6271
    move	$a1,$s0
    jal	sub_0d960000
    # Line 6268
    lw	$s2,31664($s2)
    # Line 6271
    beqz	$v0,.L0d97290c
    li	$a1,1
    # Line 6272
    lw	$v0,436($s2)
    slt	$ra,$s0,$v0
    beqz	$ra,.L0d972a24
    # Line 6273
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6272
    beqz	$v0,.L0d972a24
    # Line 6273
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d97290c:
    # Line 6279
    lw	$a0,40($s2)
    sllv	$v0,$a1,$s0
    lw	$v1,48($s2)
    and	$a0,$a0,$v0
    # Line 6296
    li	$a2,3
    # Line 6279
    beqz	$a0,.L0d972a04
    and	$v0,$v0,$v1
    # Line 6282
    beqz	$v0,.L0d972950
    nop
    # Line 6287
    la	$a1,.rodata
.L0d972934:
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-4720
    jal	fprintf
    addiu	$a0,$a0,32
    b	.L0d9729c8
    ld	$s2,64($sp)
.L0d972950:
    # Line 6296
    lw	$v1,28($s2)
    la	$v0,intern_format_arr3
    sll	$v1,$v1,0x4
    addu	$v0,$v0,$v1
    lw	$a0,12($v0)
    beq	$a0,$a1,.L0d972a34
    # Line 6301
    li	$a3,8
    # Line 6296
    li	$a1,2
    beq	$a0,$a1,.L0d972a3c
    nop
    beq	$a0,$a2,.L0d972a18
    li	$a3,4
    beq	$a0,$a3,.L0d972a18
    lw	$a3,0($sp)
.L0d972988:
    # Line 6309
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d97298c:
    ld	$a6,8($sp)
    ld	$a5,16($sp)
    li	$a0,0x8aac
    addiu	$t9,$t9,-14992
    ld	$a4,24($sp)
    move	$a2,$s0
    addu	$a0,$a0,$s1
    move	$a1,$s2
    bal __glKonGetTexParameter
    lw	$a0,0($a0)
    # Line 6317
    lw	$t9,256($s2)
    move	$a1,$s2
    jal	sub_0d970000
    addiu	$a0,$s1,31632
    ld	$s2,64($sp)
.L0d9729c8:
    ld	$ra,56($sp)
.L0d9729cc:
    # Line 6319
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9729e0:
    # Line 6259
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    bltz	$v0,.L0d972a58
    move	$a0,$v0
    # Line 6263
    sw	$v0,31640($s1)
    b	.L0d9728d0
    sd	$s2,64($sp)
.L0d972a04:
    # Line 6279
    bnez	$v0,.L0d972934
    # Line 6287
    la	$a1,.rodata
    ld	$s2,64($sp)
    b	.L0d9729cc
    ld	$ra,56($sp)
.L0d972a18:
    # Line 6306
    b	.L0d972988
    # Line 6305
    li	$a3,16
    # Line 6273
    # lw $t9, -28616($gp) # &__glSetError
.L0d972a24:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9729c8
    ld	$s2,64($sp)
.L0d972a34:
    b	.L0d972988
    # Line 6298
    lw	$a3,4($v0)
.L0d972a3c:
    # Line 6302
    b	.L0d97298c
    # Line 6309
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d972a44:
    # Line 6255
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9729cc
    ld	$ra,56($sp)
.L0d972a58:
    # Line 6260
    # lw $t9, -28616($gp) # &__glSetError
    sd	$s2,64($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9729c8
    ld	$s2,64($sp)
.end __glkonim_GetTexImage

# Function: __glkon_EnableTexture
# Declared: Line 6322 (Source lines: 6323-6359)
# Address: 0x0d972a70 - 0x0d972b98 (Size: 296 bytes, Frame: 48)
.globl __glkon_EnableTexture
.ent __glkon_EnableTexture
__glkon_EnableTexture:
    # Line 6323
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    lui	$v1,0x12
    # Line 6324
    lw	$s0,4112($zero)
    sd	$gp,8($sp)
    # Line 6323
    addiu	$v1,$v1,-6808
    addu	$gp,$t9,$v1
    # Line 6324
    lw	$a3,31640($s0)
    la	$at,index_2_target_map
    sll	$v0,$a3,0x2
    addu	$at,$at,$v0
    lw	$at,0($at)
    bne	$at,$a0,.L0d972ae4
    # Line 6323
    move	$a4,$a1
    # Line 6335
    move	$a0,$a3
.L0d972aac:
    # Line 6337
    lw	$a5,31632($s0)
    li	$a6,1
    sll	$a1,$a0,0x2
    addu	$a1,$s0,$a1
    sllv	$a6,$a6,$a0
    and	$a3,$a5,$a6
    beqz	$a4,.L0d972b1c
    lw	$a1,31664($a1)
    beqz	$a3,.L0d972b5c
    # Line 6358
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
.L0d972ad4:
    # Line 6347
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d972ae4:
    # Line 6329
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    sd	$ra,32($sp)
    jal	sub_0d960000
    sd	$a1,24($sp)
    ld	$ra,32($sp)
    ld	$a4,24($sp)
    bgez	$v0,.L0d972aac
    move	$a0,$v0
    # Line 6330
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d972ad4
    ld	$ra,32($sp)
.L0d972b1c:
    # Line 6343
    beqz	$a3,.L0d972ad4
    # Line 6350
    nor	$v0,$a6,$zero
    and	$v0,$a5,$v0
    sw	$v0,31632($s0)
    lw	$at,272($a1)
    beqz	$at,.L0d972b80
    # Line 6358
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 6354
    # lw $t9, -32740($gp) # &sub_0d960000
    sd	$a1,0($sp)
    addiu	$t9,$t9,20320
    sd	$ra,32($sp)
    jal	sub_0d960000
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    b	.L0d972b7c
    ld	$a1,0($sp)
.L0d972b5c:
    # Line 6359
    ld	$gp,8($sp)
    # Line 6358
    addiu	$t9,$t9,-6112
    addiu	$a0,$s0,31632
    # Line 6343
    or	$at,$a5,$a6
    sw	$at,31632($s0)
    # Line 6359
    ld	$s0,16($sp)
    bgezl	$zero,__glKonGetTexParameter
    addiu	$sp,$sp,48
.L0d972b7c:
    # Line 6358
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d972b80:
    addiu	$t9,$t9,-6112
    # Line 6359
    ld	$gp,8($sp)
    # Line 6358
    addiu	$a0,$s0,31632
    # Line 6359
    ld	$s0,16($sp)
    bgezl	$zero,__glKonGetTexParameter
    addiu	$sp,$sp,48
.end __glkon_EnableTexture

# Function: __glkonim_TexParameterfv
# Declared: Line 6362 (Source lines: 6363-6388)
# Address: 0x0d972ba0 - 0x0d972cb8 (Size: 280 bytes, Frame: 48)
.globl __glkonim_TexParameterfv
.ent __glkonim_TexParameterfv
__glkonim_TexParameterfv:
    # Line 6363
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$v0,$a2
    # Line 6366
    li	$v1,1
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    # Line 6363
    move	$t0,$a1
    lui	$a1,0x12
    move	$a7,$a0
    sd	$ra,16($sp)
    addiu	$a0,$a1,-7112
    sd	$gp,8($sp)
    # Line 6366
    beq	$at,$v1,.L0d972c7c
    # Line 6363
    addu	$gp,$t9,$a0
    # Line 6367
    lw	$a0,31640($s0)
    la	$a2,index_2_target_map
    sll	$a3,$a0,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    bne	$a2,$a7,.L0d972c3c
    # Line 6370
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6377
    move	$a7,$a0
.L0d972bf8:
    # Line 6379
    # lw $t9, -31852($gp) # &__glKonTexParameter
    li	$a4,1
    move	$a3,$v0
    move	$a2,$t0
    move	$a1,$a7
    jal	__glKonTexParameter
    addiu	$a0,$s0,31632
    # Line 6380
    li	$a4,-1
    li	$a5,-2
    beq	$v0,$a4,.L0d972c90
    # Line 6379
    move	$a7,$v0
    # Line 6380
    beq	$v0,$a5,.L0d972c68
    ld	$ra,16($sp)
.L0d972c2c:
    # Line 6388
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d972c3c:
    # Line 6370
    addiu	$t9,$t9,24064
    sd	$t0,24($sp)
    sd	$v0,32($sp)
    jalr	$t9
    move	$a0,$a7
    ld	$t0,24($sp)
    bltz	$v0,.L0d972ca4
    move	$a7,$v0
    ld	$v0,32($sp)
    # Line 6374
    b	.L0d972bf8
    sw	$a7,31640($s0)
.L0d972c68:
    # Line 6385
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d972c2c
    ld	$ra,16($sp)
.L0d972c7c:
    # Line 6366
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d972c2c
    ld	$ra,16($sp)
.L0d972c90:
    # Line 6382
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d972c2c
    ld	$ra,16($sp)
.L0d972ca4:
    # Line 6371
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d972c2c
    ld	$ra,16($sp)
.end __glkonim_TexParameterfv

# Function: __glkonim_TexParameterf
# Declared: Line 6392 (Source lines: 6393-6445)
# Address: 0x0d972cc0 - 0x0d972fb0 (Size: 752 bytes, Frame: 192)
.globl __glkonim_TexParameterf
.ent __glkonim_TexParameterf
__glkonim_TexParameterf:
    # Line 6393
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    swc1	$f14,48($sp)
    # Line 6396
    lw	$s1,4112($zero)
    # Line 6393
    move	$a7,$a0
    # Line 6396
    lw	$at,4120($zero)
    # Line 6393
    sd	$s0,0($sp)
    # Line 6396
    li	$v0,1
    # Line 6393
    lui	$v1,0x12
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v1,$v1,-7400
    sd	$gp,16($sp)
    # Line 6396
    beq	$at,$v0,.L0d972f74
    # Line 6393
    addu	$gp,$t9,$v1
    # Line 6398
    lw	$v0,31640($s1)
    la	$a0,index_2_target_map
    sll	$a1,$v0,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    bne	$a0,$a7,.L0d972e34
    # Line 6401
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6408
    move	$a7,$v0
.L0d972d1c:
    # Line 6410
    li	$v0,0x8125
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0d972d6c
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0d972db8
    li	$v0,0x818e
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0d972e50
    sltu	$a5,$v0,$s0
    beqz	$a5,.L0d972db8
    li	$v0,0x819a
    sltu	$a6,$s0,$v0
    bnez	$a6,.L0d972ee0
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d972db8
    li	$t1,0x819b
    beq	$s0,$t1,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972d6c:
    # Line 6410
    li	$v0,0x8072
    sltu	$t2,$s0,$v0
    bnez	$t2,.L0d972e00
    sltu	$t3,$v0,$s0
    beqz	$t3,.L0d972db8
    li	$v0,0x80bf
    sltu	$t8,$s0,$v0
    bnez	$t8,.L0d972ec0
    sltu	$t9,$v0,$s0
    beqz	$t9,.L0d972db8
    li	$ra,0x8124
    beq	$s0,$ra,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972da8:
    # Line 6410
    bnez	$at,.L0d972e88
    li	$a1,10240
    beqz	$v0,.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972db8:
    # Line 6432
    # lw $t9, -31852($gp) # &__glKonTexParameter
.L0d972dbc:
    li	$a4,1
    addiu	$a3,$sp,48
    move	$a2,$s0
    move	$a1,$a7
    jal	__glKonTexParameter
    addiu	$a0,$s1,31632
    # Line 6433
    li	$v1,-1
    beq	$v0,$v1,.L0d972f88
    # Line 6432
    move	$a7,$v0
    # Line 6433
    li	$a0,-2
    beq	$v0,$a0,.L0d972f40
    ld	$ra,24($sp)
.L0d972dec:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 6445
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d972e00:
    # Line 6410
    sltiu	$v0,$s0,10242
    bnez	$v0,.L0d972da8
    sltiu	$at,$s0,10241
    sltiu	$a1,$s0,10243
    bnez	$a1,.L0d972db8
    li	$v0,0x8066
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0d972f2c
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972e34:
    # Line 6401
    addiu	$t9,$t9,24064
    jal	__glSetError
    move	$a0,$a7
    bltz	$v0,.L0d972f9c
    move	$a7,$v0
    # Line 6405
    b	.L0d972d1c
    sw	$v0,31640($s1)
.L0d972e50:
    # Line 6410
    li	$v0,0x813c
    sltu	$ra,$s0,$v0
    bnez	$ra,.L0d972ea0
    sltu	$at,$v0,$s0
    beqz	$at,.L0d972db8
    li	$t9,0x813d
    li	$v0,0x8172
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0d972f64
    sltu	$a0,$v0,$s0
    beqz	$a0,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972e88:
    # Line 6410
    beq	$s0,$a1,.L0d972db8
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972e90:
    jal	__glSetError
    li	$a0,1280
    b	.L0d972dec
    ld	$ra,24($sp)
.L0d972ea0:
    # Line 6410
    li	$v0,0x813b
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0d972f04
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972ec0:
    # Line 6410
    li	$v0,0x809b
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0d972f18
    sltu	$a5,$v0,$s0
    beqz	$a5,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972ee0:
    # Line 6410
    li	$v0,0x8190
    sltu	$a6,$s0,$v0
    li	$t8,0x818f
    bnez	$a6,.L0d972f54
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972f04:
    # Line 6410
    li	$t1,0x813a
    beq	$s0,$t1,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972f18:
    # Line 6410
    li	$t2,0x809a
    beq	$s0,$t2,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972f2c:
    # Line 6410
    li	$t3,10243
    beq	$s0,$t3,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972f40:
    # Line 6438
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d972dec
    ld	$ra,24($sp)
.L0d972f54:
    # Line 6410
    beq	$s0,$t8,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972f64:
    # Line 6410
    beq	$s0,$t9,.L0d972dbc
    # Line 6432
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d972e90
    # Line 6444
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d972f74:
    # Line 6396
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d972dec
    ld	$ra,24($sp)
.L0d972f88:
    # Line 6435
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d972dec
    ld	$ra,24($sp)
.L0d972f9c:
    # Line 6402
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d972dec
    ld	$ra,24($sp)
.end __glkonim_TexParameterf

# Function: __glkonim_TexParameteriv
# Declared: Line 6450 (Source lines: 6451-6477)
# Address: 0x0d972fb0 - 0x0d9730c8 (Size: 280 bytes, Frame: 48)
.globl __glkonim_TexParameteriv
.ent __glkonim_TexParameteriv
__glkonim_TexParameteriv:
    # Line 6451
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$v0,$a2
    # Line 6454
    li	$v1,1
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    # Line 6451
    move	$t0,$a1
    lui	$a1,0x12
    move	$a7,$a0
    sd	$ra,16($sp)
    addiu	$a0,$a1,-8152
    sd	$gp,8($sp)
    # Line 6454
    beq	$at,$v1,.L0d97308c
    # Line 6451
    addu	$gp,$t9,$a0
    # Line 6456
    lw	$a0,31640($s0)
    la	$a2,index_2_target_map
    sll	$a3,$a0,0x2
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    bne	$a2,$a7,.L0d973050
    # Line 6459
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6466
    move	$a7,$a0
.L0d973008:
    # Line 6468
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a4,$zero
    move	$a3,$v0
    move	$a2,$t0
    move	$a1,$a7
    jal	__glKonTexParameter
    addiu	$a0,$s0,31632
    # Line 6469
    li	$a4,-1
    li	$a5,-2
    beq	$v0,$a4,.L0d9730a0
    # Line 6468
    move	$a7,$v0
    # Line 6469
    beq	$v0,$a5,.L0d97307c
    # Line 6474
    nop	# was lw $t9, -28616($gp) # &__glSetError
    ld	$ra,16($sp)
.L0d973040:
    # Line 6477
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d973050:
    # Line 6459
    addiu	$t9,$t9,24064
    sd	$t0,24($sp)
    sd	$v0,32($sp)
    jal	__glSetError
    move	$a0,$a7
    ld	$t0,24($sp)
    bltz	$v0,.L0d9730b4
    move	$a7,$v0
    ld	$v0,32($sp)
    # Line 6463
    b	.L0d973008
    sw	$a7,31640($s0)
.L0d97307c:
    # Line 6474
    jalr	$t9
    li	$a0,1281
    b	.L0d973040
    ld	$ra,16($sp)
.L0d97308c:
    # Line 6454
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973040
    ld	$ra,16($sp)
.L0d9730a0:
    # Line 6471
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d973040
    ld	$ra,16($sp)
.L0d9730b4:
    # Line 6460
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d973040
    ld	$ra,16($sp)
.end __glkonim_TexParameteriv

# Function: __glkonim_TexParameteri
# Declared: Line 6481 (Source lines: 6482-6535)
# Address: 0x0d9730d0 - 0x0d9733d4 (Size: 772 bytes, Frame: 192)
.globl __glkonim_TexParameteri
.ent __glkonim_TexParameteri
__glkonim_TexParameteri:
    # Line 6482
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    sw	$a2,52($sp)
    # Line 6485
    lw	$s1,4112($zero)
    # Line 6482
    move	$a7,$a0
    # Line 6485
    lw	$at,4120($zero)
    # Line 6482
    sd	$s0,0($sp)
    # Line 6485
    li	$v0,1
    # Line 6482
    lui	$v1,0x12
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v1,$v1,-8440
    sd	$gp,16($sp)
    # Line 6485
    beq	$at,$v0,.L0d973398
    # Line 6482
    addu	$gp,$t9,$v1
    # Line 6487
    lw	$v0,31640($s1)
    la	$a0,index_2_target_map
    sll	$a1,$v0,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    bne	$a0,$a7,.L0d97325c
    # Line 6490
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6497
    move	$a7,$v0
.L0d97312c:
    # Line 6500
    li	$v0,0x8125
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0d973188
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 6500
    li	$v0,0x818e
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0d973278
    sltu	$a5,$v0,$s0
    beqz	$a5,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 6500
    li	$v0,0x819a
    sltu	$a6,$s0,$v0
    bnez	$a6,.L0d97330c
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 6500
    li	$t1,0x819b
    beq	$s0,$t1,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973188:
    # Line 6500
    li	$v0,0x8072
    sltu	$t2,$s0,$v0
    bnez	$t2,.L0d973224
    sltu	$t3,$v0,$s0
    beqz	$t3,.L0d9731d8
    li	$v0,0x80bf
    sltu	$t8,$s0,$v0
    bnez	$t8,.L0d9732ec
    sltu	$t9,$v0,$s0
    beqz	$t9,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 6500
    li	$ra,0x8124
    beq	$s0,$ra,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9731c8:
    # Line 6500
    sltiu	$at,$s0,10241
    bnez	$at,.L0d9732b0
    li	$a1,10240
    beqz	$v0,.L0d9732b8
.L0d9731d8:
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
.L0d9731dc:
    move	$a4,$zero
    addiu	$a3,$sp,52
    move	$a2,$s0
    move	$a1,$a7
    jal	__glKonTexParameter
    addiu	$a0,$s1,31632
    # Line 6523
    li	$v1,-1
    beq	$v0,$v1,.L0d9733ac
    # Line 6522
    move	$a7,$v0
    # Line 6523
    li	$a0,-2
    beq	$v0,$a0,.L0d973368
    # Line 6528
    nop	# was lw $t9, -28616($gp) # &__glSetError
    ld	$ra,24($sp)
.L0d973210:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 6535
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d973224:
    # Line 6500
    sltiu	$v0,$s0,10242
    bnez	$v0,.L0d9731c8
    sltiu	$a1,$s0,10243
    bnez	$a1,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 6500
    li	$v0,0x8066
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0d973358
    li	$t3,10243
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d97325c:
    # Line 6490
    addiu	$t9,$t9,24064
    jal	__glSetError
    move	$a0,$a7
    bltz	$v0,.L0d9733c0
    move	$a7,$v0
    # Line 6494
    b	.L0d97312c
    sw	$v0,31640($s1)
.L0d973278:
    # Line 6500
    li	$v0,0x813c
    sltu	$ra,$s0,$v0
    bnez	$ra,.L0d9732cc
    sltu	$at,$v0,$s0
    beqz	$at,.L0d9731d8
    li	$t9,0x813d
    li	$v0,0x8172
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0d973388
    sltu	$a0,$v0,$s0
    beqz	$a0,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9732b0:
    # Line 6500
    beq	$s0,$a1,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
.L0d9732b8:
    # Line 6534
    # lw $t9, -28616($gp) # &__glSetError
.L0d9732bc:
    jal	__glSetError
    li	$a0,1280
    b	.L0d973210
    ld	$ra,24($sp)
.L0d9732cc:
    # Line 6500
    li	$v0,0x813b
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0d973330
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9732ec:
    # Line 6500
    li	$v0,0x809b
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0d973344
    sltu	$a5,$v0,$s0
    beqz	$a5,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d97330c:
    # Line 6500
    li	$v0,0x8190
    sltu	$a6,$s0,$v0
    li	$t8,0x818f
    bnez	$a6,.L0d973378
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973330:
    # Line 6500
    li	$t1,0x813a
    beq	$s0,$t1,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973344:
    # Line 6500
    li	$t2,0x809a
    beq	$s0,$t2,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973358:
    # Line 6500
    beq	$s0,$t3,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973368:
    # Line 6528
    jal	__glSetError
    li	$a0,1281
    b	.L0d973210
    ld	$ra,24($sp)
.L0d973378:
    # Line 6500
    beq	$s0,$t8,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973388:
    # Line 6500
    beq	$s0,$t9,.L0d9731dc
    # Line 6522
    nop	# was lw $t9, -31852($gp) # &__glKonTexParameter
    b	.L0d9732bc
    # Line 6534
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d973398:
    # Line 6485
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973210
    ld	$ra,24($sp)
.L0d9733ac:
    # Line 6525
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d973210
    ld	$ra,24($sp)
.L0d9733c0:
    # Line 6491
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d973210
    ld	$ra,24($sp)
.end __glkonim_TexParameteri

# Function: __glkonim_DetailTexFuncSGIS
# Declared: Line 6540 (Source lines: 6541-6573)
# Address: 0x0d9733e0 - 0x0d973570 (Size: 400 bytes, Frame: 192)
.globl __glkonim_DetailTexFuncSGIS
.ent __glkonim_DetailTexFuncSGIS
__glkonim_DetailTexFuncSGIS:
    # Line 6544
    lw	$a3,4112($zero)
    # Line 6541
    addiu	$sp,$sp,-64
    # Line 6544
    lw	$at,4120($zero)
    # Line 6541
    sd	$s0,32($sp)
    # Line 6544
    li	$a4,1
    # Line 6541
    lui	$v0,0x12
    move	$s0,$a1
    sd	$ra,48($sp)
    addiu	$v0,$v0,-9224
    sd	$gp,40($sp)
    # Line 6544
    beq	$at,$a4,.L0d97355c
    # Line 6541
    addu	$gp,$t9,$v0
    # Line 6546
    li	$v1,3553
    beq	$a0,$v1,.L0d97343c
    # Line 6550
    slti	$a0,$a1,2
    # Line 6549
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d973428:
    ld	$ra,48($sp)
.L0d97342c:
    ld	$s0,32($sp)
    # Line 6573
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97343c:
    sd	$a2,24($sp)
    # Line 6550
    bnez	$a0,.L0d973548
    sd	$a3,16($sp)
    # Line 6558
    ld	$a0,16($sp)
    # Line 6559
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    lui	$a5,0x1
    addu	$a5,$a0,$a5
    sd	$a5,8($sp)
    lw	$a5,-30036($a5)
    li	$a1,1
    li	$a2,0xc074
    # Line 6558
    lw	$a3,31672($a0)
    sd	$a3,0($sp)
    # Line 6559
    jal	subtractTexTableUsage
    addu	$a2,$a2,$a5
    # Line 6560
    ld	$a5,8($sp)
    # lw $t9, -31860($gp) # &addTexTableUsage
    move	$a4,$s0
    lw	$a5,-30036($a5)
    ld	$a3,24($sp)
    li	$a2,1
    li	$a0,0xc074
    ld	$a1,0($sp)
    jal	addTexTableUsage
    addu	$a0,$a0,$a5
    # Line 6562
    ld	$s0,0($sp)
    lw	$a6,16($s0)
    li	$a1,1
    bne	$a6,$a1,.L0d97342c
    ld	$ra,48($sp)
    lw	$a7,32($s0)
    dsll32	$a7,$a7,0x7
    li	$t1,16
    bgez	$a7,.L0d973428
    ld	$t0,16($sp)
    lw	$a2,31636($t0)
    addu	$t2,$a2,$a1
    lw	$t0,31632($t0)
    sllv	$t2,$a1,$t2
    subu	$t1,$t1,$t2
    and	$t0,$t0,$t1
    beqz	$t0,.L0d973500
    # Line 6566
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,16($sp)
    addiu	$t9,$t9,20832
    jal	sub_0d960000
    addiu	$a0,$a0,31632
    ld	$a2,16($sp)
    lw	$a2,31636($a2)
.L0d973500:
    li	$a3,2
    bne	$a2,$a3,.L0d97342c
    ld	$ra,48($sp)
    # Line 6569
    ld	$a3,8($sp)
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a3,-30036($a3)
    move	$a1,$s0
    li	$a0,0xc074
    lw	$a2,16($s0)
    jal	bindTexTable
    addu	$a0,$a0,$a3
    # Line 6570
    lw	$t9,256($s0)
    ld	$a0,16($sp)
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$a0,31632
    b	.L0d97342c
    ld	$ra,48($sp)
.L0d973548:
    # Line 6554
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d97342c
    ld	$ra,48($sp)
.L0d97355c:
    # Line 6544
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97342c
    ld	$ra,48($sp)
.end __glkonim_DetailTexFuncSGIS

# Function: __glkonim_GetDetailTexFuncSGIS
# Declared: Line 6576 (Source lines: 6577-6589)
# Address: 0x0d973570 - 0x0d973600 (Size: 144 bytes, Frame: 16)
.globl __glkonim_GetDetailTexFuncSGIS
.ent __glkonim_GetDetailTexFuncSGIS
__glkonim_GetDetailTexFuncSGIS:
    # Line 6577
    move	$a3,$a1
    addiu	$sp,$sp,-16
    # Line 6579
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 6577
    lui	$v1,0x12
    # Line 6581
    li	$a1,3553
    sd	$ra,8($sp)
    # Line 6577
    addiu	$v1,$v1,-9624
    sd	$gp,0($sp)
    # Line 6579
    beq	$at,$v0,.L0d9735ec
    # Line 6577
    addu	$gp,$t9,$v1
    # Line 6581
    beq	$a0,$a1,.L0d9735c4
    # Line 6587
    li	$a0,0x8aac
    # Line 6583
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9735b8:
    # Line 6589
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9735c4:
    # Line 6587
    # lw $t9, -31864($gp) # &getTexTableUsage
    addu	$a0,$a0,$a5
    lw	$a0,0($a0)
    li	$a2,1
    li	$a4,0xc074
    lw	$a1,31672($a5)
    jal	getTexTableUsage
    addu	$a0,$a0,$a4
    b	.L0d9735b8
    ld	$ra,8($sp)
.L0d9735ec:
    # Line 6579
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9735b8
    ld	$ra,8($sp)
.end __glkonim_GetDetailTexFuncSGIS

# Function: __glkonim_SharpenTexFuncSGIS
# Declared: Line 6592 (Source lines: 6593-6628)
# Address: 0x0d973600 - 0x0d9737dc (Size: 476 bytes, Frame: 192)
.globl __glkonim_SharpenTexFuncSGIS
.ent __glkonim_SharpenTexFuncSGIS
__glkonim_SharpenTexFuncSGIS:
    # Line 6593
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 6596
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 6593
    sd	$s1,40($sp)
    # Line 6596
    li	$a3,1
    # Line 6593
    lui	$v0,0x12
    move	$s1,$a1
    sd	$ra,48($sp)
    addiu	$v0,$v0,-9768
    sd	$gp,24($sp)
    # Line 6596
    beq	$at,$a3,.L0d9737c8
    # Line 6593
    addu	$gp,$t9,$v0
    # Line 6598
    lw	$a7,31640($s0)
    la	$v1,index_2_target_map
    sll	$a1,$a7,0x2
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    bne	$v1,$a0,.L0d973690
    sd	$a2,8($sp)
    # Line 6602
    beq	$a7,$a3,.L0d9736b0
    # Line 6605
    slti	$ra,$s1,2
.L0d973658:
    # Line 6602
    li	$a2,2
    beq	$a7,$a2,.L0d9736ac
    li	$a4,3
    beq	$a7,$a4,.L0d9736b0
    # Line 6605
    slti	$ra,$s1,2
    # Line 6604
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d973678:
    ld	$ra,48($sp)
.L0d97367c:
    # Line 6628
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d973690:
    # Line 6599
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    # Line 6602
    li	$a3,1
    bne	$v0,$a3,.L0d973658
    # Line 6599
    move	$a7,$v0
.L0d9736ac:
    # Line 6605
    slti	$ra,$s1,2
.L0d9736b0:
    bnez	$ra,.L0d9737b4
    # Line 6614
    li	$a4,2
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    lui	$a5,0x1
    # Line 6613
    sll	$a3,$a7,0x2
    # Line 6614
    addu	$a5,$s0,$a5
    sd	$a5,16($sp)
    li	$a1,1
    # Line 6613
    addu	$a3,$s0,$a3
    # Line 6614
    lw	$a5,-30036($a5)
    move	$a0,$s0
    li	$a2,0xc074
    # Line 6613
    lw	$a3,31664($a3)
    sd	$a3,0($sp)
    # Line 6614
    jal	subtractTexTableUsage
    addu	$a2,$a2,$a5
    # Line 6615
    ld	$a5,16($sp)
    # lw $t9, -31860($gp) # &addTexTableUsage
    move	$a4,$s1
    lw	$a5,-30036($a5)
    ld	$a3,8($sp)
    li	$a2,2
    li	$a0,0xc074
    ld	$a1,0($sp)
    jal	addTexTableUsage
    addu	$a0,$a0,$a5
    # Line 6617
    ld	$s1,0($sp)
    lw	$a6,16($s1)
    li	$a7,2
    bne	$a6,$a7,.L0d97367c
    ld	$ra,48($sp)
    lw	$t0,32($s1)
    dsll32	$t0,$t0,0x7
    li	$t2,16
    bgez	$t0,.L0d973678
    li	$t3,1
    lw	$a0,31636($s0)
    addu	$t8,$a0,$t3
    lw	$t1,31632($s0)
    sllv	$t3,$t3,$t8
    subu	$t2,$t2,$t3
    and	$t1,$t1,$t2
    beqz	$t1,.L0d973770
    # Line 6621
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20832
    jal	sub_0d960000
    addiu	$a0,$s0,31632
    lw	$a0,31636($s0)
.L0d973770:
    lw	$ra,376($s1)
    bne	$ra,$a0,.L0d97367c
    ld	$ra,48($sp)
    # Line 6624
    ld	$a3,16($sp)
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a3,-30036($a3)
    move	$a1,$s1
    li	$a0,0xc074
    lw	$a2,16($s1)
    jal	bindTexTable
    addu	$a0,$a0,$a3
    # Line 6625
    lw	$t9,256($s1)
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,31632
    b	.L0d97367c
    ld	$ra,48($sp)
.L0d9737b4:
    # Line 6609
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d97367c
    ld	$ra,48($sp)
.L0d9737c8:
    # Line 6596
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97367c
    ld	$ra,48($sp)
.end __glkonim_SharpenTexFuncSGIS

# Function: __glkonim_GetSharpenTexFuncSGIS
# Declared: Line 6631 (Source lines: 6632-6648)
# Address: 0x0d9737e0 - 0x0d9738cc (Size: 236 bytes, Frame: 32)
.globl __glkonim_GetSharpenTexFuncSGIS
.ent __glkonim_GetSharpenTexFuncSGIS
__glkonim_GetSharpenTexFuncSGIS:
    # Line 6632
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 6634
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a4,1
    # Line 6632
    lui	$v0,0x12
    sd	$ra,24($sp)
    addiu	$v0,$v0,-10248
    sd	$gp,16($sp)
    # Line 6634
    beq	$at,$a4,.L0d9738b8
    # Line 6632
    addu	$gp,$t9,$v0
    # Line 6636
    lw	$a5,31640($s0)
    la	$v1,index_2_target_map
    sll	$a2,$a5,0x2
    addu	$v1,$v1,$a2
    lw	$v1,0($v1)
    bne	$v1,$a0,.L0d973864
    sd	$a1,0($sp)
    # Line 6640
    beq	$a5,$a4,.L0d973884
    # Line 6646
    li	$a0,0x8aac
.L0d973830:
    # Line 6640
    li	$a3,2
    beq	$a5,$a3,.L0d973880
    li	$a4,3
    beq	$a5,$a4,.L0d973884
    # Line 6646
    li	$a0,0x8aac
    # Line 6642
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d973854:
    ld	$s0,8($sp)
    # Line 6648
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d973864:
    # Line 6637
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    # Line 6640
    li	$ra,1
    bne	$v0,$ra,.L0d973830
    # Line 6637
    move	$a5,$v0
.L0d973880:
    # Line 6646
    li	$a0,0x8aac
.L0d973884:
    # lw $t9, -31864($gp) # &getTexTableUsage
    addu	$a0,$a0,$s0
    li	$a2,2
    sll	$a1,$a5,0x2
    lw	$a0,0($a0)
    ld	$a3,0($sp)
    li	$a4,0xc074
    addu	$a1,$s0,$a1
    lw	$a1,31664($a1)
    jal	getTexTableUsage
    addu	$a0,$a0,$a4
    b	.L0d973854
    ld	$ra,24($sp)
.L0d9738b8:
    # Line 6634
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973854
    ld	$ra,24($sp)
.end __glkonim_GetSharpenTexFuncSGIS

# Function: __glkonim_TexFilterFuncSGIS
# Declared: Line 6651 (Source lines: 6652-6687)
# Address: 0x0d9738d0 - 0x0d973aa0 (Size: 464 bytes, Frame: 192)
.globl __glkonim_TexFilterFuncSGIS
.ent __glkonim_TexFilterFuncSGIS
__glkonim_TexFilterFuncSGIS:
    # Line 6652
    addiu	$sp,$sp,-64
    # Line 6655
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$a7,1
    # Line 6652
    lui	$v0,0x12
    # Line 6655
    li	$v1,129
    sd	$ra,48($sp)
    # Line 6652
    addiu	$v0,$v0,-10488
    sd	$gp,32($sp)
    # Line 6655
    beq	$at,$a7,.L0d973a8c
    # Line 6652
    addu	$gp,$t9,$v0
    # Line 6655
    beq	$a2,$v1,.L0d973914
    # Line 6659
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d973958
    ld	$ra,48($sp)
.L0d973914:
    # Line 6663
    lw	$a6,31640($a5)
    la	$a2,index_2_target_map
    sll	$a4,$a6,0x2
    addu	$a2,$a2,$a4
    lw	$a2,0($a2)
    sd	$a5,24($sp)
    bne	$a2,$a0,.L0d973a6c
    sd	$a3,16($sp)
.L0d973934:
    # Line 6667
    beq	$a6,$a7,.L0d973940
    li	$a5,2
    bne	$a6,$a5,.L0d973948
.L0d973940:
    li	$t0,0x8146
    beq	$a1,$t0,.L0d973964
.L0d973948:
    # Line 6670
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,48($sp)
.L0d973958:
    # Line 6687
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d973964:
    # Line 6674
    ld	$a0,24($sp)
    # Line 6675
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    lui	$a5,0x1
    # Line 6674
    sll	$a3,$a6,0x2
    # Line 6675
    addu	$a5,$a0,$a5
    sd	$a5,0($sp)
    move	$a4,$zero
    # Line 6674
    addu	$a3,$a0,$a3
    # Line 6675
    lw	$a5,-30036($a5)
    li	$a1,1
    li	$a2,0xc074
    # Line 6674
    lw	$a3,31664($a3)
    sd	$a3,8($sp)
    # Line 6675
    jal	subtractTexTableUsage
    addu	$a2,$a2,$a5
    # Line 6676
    ld	$a5,0($sp)
    # lw $t9, -31860($gp) # &addTexTableUsage
    li	$a4,129
    lw	$a5,-30036($a5)
    ld	$a3,16($sp)
    move	$a2,$zero
    li	$a0,0xc074
    ld	$a1,8($sp)
    jal	addTexTableUsage
    addu	$a0,$a0,$a5
    ld	$a6,8($sp)
    lw	$a6,16($a6)
    bnez	$a6,.L0d973958
    ld	$ra,48($sp)
    ld	$a7,24($sp)
    lw	$a2,31636($a7)
    li	$t1,1
    addu	$t2,$a2,$t1
    li	$t0,16
    lw	$a7,31632($a7)
    sllv	$t1,$t1,$t2
    subu	$t0,$t0,$t1
    and	$a7,$a7,$t0
    beqz	$a7,.L0d973a1c
    # Line 6680
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    ld	$a0,24($sp)
    addiu	$t9,$t9,20832
    jal	sub_0d960000
    addiu	$a0,$a0,31632
    ld	$a2,24($sp)
    lw	$a2,31636($a2)
.L0d973a1c:
    ld	$a3,8($sp)
    lw	$a3,376($a3)
    bne	$a3,$a2,.L0d973958
    ld	$ra,48($sp)
    # Line 6683
    ld	$a2,8($sp)
    ld	$a3,0($sp)
    # lw $t9, -31868($gp) # &bindTexTable
    lw	$a3,-30036($a3)
    li	$a0,0xc074
    move	$a1,$a2
    lw	$a2,16($a2)
    jal	bindTexTable
    addu	$a0,$a0,$a3
    # Line 6684
    ld	$a1,8($sp)
    lw	$t9,256($a1)
    ld	$a0,24($sp)
    jalr	$t9
    addiu	$a0,$a0,31632
    b	.L0d973958
    ld	$ra,48($sp)
.L0d973a6c:
    # Line 6664
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    sd	$a1,40($sp)
    li	$a7,1
    ld	$a1,40($sp)
    b	.L0d973934
    move	$a6,$v0
.L0d973a8c:
    # Line 6655
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973958
    ld	$ra,48($sp)
.end __glkonim_TexFilterFuncSGIS

# Function: __glkonim_GetTexFilterFuncSGIS
# Declared: Line 6690 (Source lines: 6691-6708)
# Address: 0x0d973aa0 - 0x0d973b88 (Size: 232 bytes, Frame: 48)
.globl __glkonim_GetTexFilterFuncSGIS
.ent __glkonim_GetTexFilterFuncSGIS
__glkonim_GetTexFilterFuncSGIS:
    # Line 6691
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 6693
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a7,1
    # Line 6691
    lui	$v0,0x12
    sd	$ra,32($sp)
    addiu	$v0,$v0,-10952
    sd	$gp,16($sp)
    # Line 6693
    beq	$at,$a7,.L0d973b74
    # Line 6691
    addu	$gp,$t9,$v0
    # Line 6695
    lw	$a6,31640($s0)
    la	$v1,index_2_target_map
    sll	$a3,$a6,0x2
    addu	$v1,$v1,$a3
    lw	$v1,0($v1)
    bne	$v1,$a0,.L0d973b20
    sd	$a2,0($sp)
.L0d973ae8:
    # Line 6699
    beq	$a6,$a7,.L0d973af4
    li	$a4,2
    bne	$a6,$a4,.L0d973b00
.L0d973af4:
    li	$a5,0x8146
    beq	$a1,$a5,.L0d973b40
    # Line 6706
    li	$a0,0x8aac
.L0d973b00:
    # Line 6702
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d973b10:
    ld	$s0,8($sp)
    # Line 6708
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d973b20:
    # Line 6696
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    sd	$a1,24($sp)
    li	$a7,1
    ld	$a1,24($sp)
    b	.L0d973ae8
    move	$a6,$v0
.L0d973b40:
    # Line 6706
    # lw $t9, -31864($gp) # &getTexTableUsage
    addu	$a0,$a0,$s0
    move	$a2,$zero
    sll	$a1,$a6,0x2
    lw	$a0,0($a0)
    ld	$a3,0($sp)
    li	$a4,0xc074
    addu	$a1,$s0,$a1
    lw	$a1,31664($a1)
    jal	getTexTableUsage
    addu	$a0,$a0,$a4
    b	.L0d973b10
    ld	$ra,32($sp)
.L0d973b74:
    # Line 6693
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d973b10
    ld	$ra,32($sp)
.end __glkonim_GetTexFilterFuncSGIS

# Function: checkProxyTexture
# Declared: Line 6711 (Source lines: 6713-6856)
# Address: 0x0d973b90 - 0x0d973f7c (Size: 1004 bytes, Frame: 192)
.ent checkProxyTexture
checkProxyTexture:
    # Line 6721
    li	$at,-2
    # Line 6713
    addiu	$sp,$sp,-192
    # Line 6721
    and	$at,$a6,$at
    # Line 6713
    move	$v0,$a0
    # Line 6721
    move	$t3,$a5
    # Line 6720
    move	$t2,$a4
    # Line 6721
    beqz	$at,.L0d973bbc
    # Line 6714
    lw	$t1,4112($zero)
    # Line 6726
    li	$v0,-1
.L0d973bb4:
    # Line 6856
    jr	$ra
    addiu	$sp,$sp,192
.L0d973bbc:
    sd	$a2,96($sp)
    sd	$a5,88($sp)
    sd	$a5,80($sp)
    sd	$a4,72($sp)
    sd	$t1,64($sp)
    sd	$a4,56($sp)
    sd	$a3,48($sp)
    # Line 6744
    li	$v1,0x8063
    sd	$a6,40($sp)
    beq	$a0,$v1,.L0d973e64
    sd	$a1,32($sp)
    li	$a0,0x8064
    beq	$v0,$a0,.L0d973c0c
    # Line 6757
    ld	$a2,32($sp)
    # Line 6744
    li	$a1,0x8070
    beq	$v0,$a1,.L0d973cc4
    # Line 6784
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 6800
    li	$v0,-1
    # Line 6856
    jr	$ra
    addiu	$sp,$sp,192
.L0d973c0c:
    # Line 6757
    blez	$a2,.L0d973eb8
    sd	$ra,112($sp)
    # Line 6759
    ld	$a1,32($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,48($sp)
    addiu	$t9,$t9,-13840
    sllv	$a0,$a0,$a1
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973eb0
    ld	$ra,112($sp)
    ld	$a1,32($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,56($sp)
    addiu	$t9,$t9,-13840
    sllv	$a0,$a0,$a1
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973eb0
    ld	$ra,112($sp)
.L0d973c5c:
    # Line 6777
    ld	$a5,56($sp)
    # Line 6779
    ld	$a4,64($sp)
    # Line 6777
    ld	$a6,40($sp)
    # Line 6779
    lw	$a4,31684($a4)
    # Line 6777
    sll	$a6,$a6,0x1
    # Line 6779
    sd	$a4,24($sp)
    # Line 6777
    subu	$a5,$a5,$a6
    sd	$a5,72($sp)
    # Line 6780
    li	$a3,2
    sw	$a3,376($a4)
    # Line 6781
    sw	$zero,12($a4)
    # Line 6782
    li	$a2,5
    sw	$a2,132($sp)
.L0d973c90:
    # Line 6804
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24144
    lw	$a0,132($sp)
    jal	sub_0d960000
    ld	$a1,32($sp)
    beqz	$v0,.L0d973d6c
    # Line 6810
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 6805
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,112($sp)
    # Line 6806
    b	.L0d973bb4
    li	$v0,-1
.L0d973cc4:
    # Line 6784
    ld	$a0,48($sp)
    addiu	$t9,$t9,-13840
    sd	$ra,112($sp)
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973ea8
    ld	$ra,112($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973ea8
    ld	$ra,112($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,80($sp)
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973ea8
    ld	$ra,112($sp)
    # Line 6797
    ld	$a1,32($sp)
    # Line 6792
    ld	$a3,56($sp)
    # Line 6793
    ld	$a0,80($sp)
    # Line 6795
    ld	$v1,64($sp)
    # Line 6792
    ld	$a4,40($sp)
    # Line 6795
    lw	$v1,31688($v1)
    sd	$v1,24($sp)
    # Line 6792
    sll	$a4,$a4,0x1
    subu	$a3,$a3,$a4
    sd	$a3,72($sp)
    # Line 6796
    li	$v0,3
    # Line 6793
    subu	$a0,$a0,$a4
    sd	$a0,88($sp)
    # Line 6797
    li	$a2,1
    li	$a0,2
    # Line 6796
    sw	$v0,376($v1)
    # Line 6797
    movz	$a0,$a2,$a1
    sw	$a0,12($v1)
    # Line 6798
    li	$at,6
    b	.L0d973c90
    sw	$at,132($sp)
.L0d973d6c:
    # Line 6810
    addiu	$t9,$t9,-10544
    bal __glKonGetTexParameter
    ld	$a0,96($sp)
    ld	$ra,112($sp)
    bltz	$v0,.L0d973f24
    move	$t1,$v0
    # Line 6813
    ld	$t2,24($sp)
    ld	$t3,32($sp)
    li	$v0,1
    lw	$at,36($t2)
    sllv	$v0,$v0,$t3
    and	$at,$at,$v0
    sd	$t1,16($sp)
    sll	$t3,$t3,0x2
    sd	$v0,8($sp)
    beqz	$at,.L0d973f34
    addu	$t2,$t2,$t3
    # Line 6822
    lw	$t1,124($t2)
.L0d973db4:
    # Line 6829
    sw	$zero,20($t1)
    # Line 6827
    ld	$t9,72($sp)
    # Line 6830
    ld	$t3,16($sp)
    sw	$t3,4($t1)
    # Line 6827
    sw	$t9,12($t1)
    # Line 6830
    ld	$t2,24($sp)
    # Line 6826
    ld	$at,48($sp)
    # Line 6828
    ld	$t8,88($sp)
    # Line 6826
    ld	$v0,40($sp)
    # Line 6828
    sw	$t8,16($t1)
    # Line 6830
    ld	$t8,32($sp)
    # Line 6826
    sll	$v0,$v0,0x1
    subu	$at,$at,$v0
    sw	$at,8($t1)
    # Line 6830
    lw	$t2,64($t2)
    li	$t3,-29
    beqz	$t8,.L0d973ef8
    and	$t2,$t2,$t3
    # Line 6833
    ld	$a0,24($sp)
    sd	$t1,104($sp)
    ori	$v1,$t2,0x10
    sw	$v1,64($a0)
.L0d973e0c:
    # Line 6838
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,64($sp)
    addiu	$t9,$t9,-10416
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    bal __glKonGetTexParameter
    addiu	$a0,$a0,31632
    ld	$ra,112($sp)
    beqz	$v0,.L0d973f0c
    ld	$a2,104($sp)
    # Line 6849
    ld	$at,48($sp)
    # Line 6850
    ld	$v0,56($sp)
    # Line 6851
    ld	$v1,80($sp)
    # Line 6852
    ld	$a0,40($sp)
    # Line 6853
    ld	$a1,16($sp)
    sw	$a1,4($a2)
    # Line 6852
    sw	$a0,20($a2)
    # Line 6851
    sw	$v1,16($a2)
    # Line 6850
    sw	$v0,12($a2)
    # Line 6849
    sw	$at,8($a2)
.L0d973e5c:
    b	.L0d973bb4
    # Line 6856
    lw	$v0,132($sp)
.L0d973e64:
    # Line 6746
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$a0,48($sp)
    addiu	$t9,$t9,-13840
    sd	$ra,112($sp)
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973f2c
    ld	$ra,112($sp)
    # Line 6752
    ld	$v1,64($sp)
    lw	$v1,31680($v1)
    sd	$v1,24($sp)
    # Line 6753
    li	$v0,1
    sw	$v0,376($v1)
    # Line 6754
    sw	$zero,12($v1)
    li	$at,4
    b	.L0d973c90
    sw	$at,132($sp)
.L0d973ea8:
    # Line 6789
    b	.L0d973bb4
    li	$v0,-1
.L0d973eb0:
    # Line 6763
    b	.L0d973bb4
    li	$v0,-1
.L0d973eb8:
    # Line 6759
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    # Line 6768
    ld	$a0,48($sp)
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    beqz	$v0,.L0d973ef0
    ld	$ra,112($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13840
    ld	$a0,56($sp)
    bal __glKonGetTexParameter
    ld	$a1,40($sp)
    bnez	$v0,.L0d973c5c
    ld	$ra,112($sp)
.L0d973ef0:
    # Line 6772
    b	.L0d973bb4
    li	$v0,-1
.L0d973ef8:
    ld	$v0,24($sp)
    sd	$t1,104($sp)
    # Line 6835
    ori	$at,$t2,0x4
    b	.L0d973e0c
    sw	$at,64($v0)
.L0d973f0c:
    # Line 6846
    sw	$zero,4($a2)
    # Line 6845
    sw	$zero,20($a2)
    # Line 6844
    sw	$zero,16($a2)
    # Line 6843
    sw	$zero,12($a2)
    # Line 6846
    b	.L0d973e5c
    # Line 6842
    sw	$zero,8($a2)
.L0d973f24:
    # Line 6813
    b	.L0d973bb4
    li	$v0,-1
.L0d973f2c:
    # Line 6748
    b	.L0d973bb4
    li	$v0,-1
.L0d973f34:
    # Line 6818
    ld	$t9,64($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    sd	$t2,0($sp)
    jal	sub_0d970000
    li	$a1,24
    ld	$a1,0($sp)
    sw	$v0,124($a1)
    # Line 6819
    sw	$zero,0($v0)
    # Line 6818
    move	$t1,$v0
    # Line 6820
    ld	$v0,24($sp)
    ld	$at,8($sp)
    lw	$v1,36($v0)
    nor	$a0,$at,$zero
    and	$v1,$v1,$a0
    or	$at,$at,$v1
    b	.L0d973db4
    sw	$at,36($v0)
.end checkProxyTexture

# Function: __glkonim_GetTexLevelParameteriv
# Declared: Line 6860 (Source lines: 6861-6966)
# Address: 0x0d973f80 - 0x0d974504 (Size: 1412 bytes, Frame: 240)
.globl __glkonim_GetTexLevelParameteriv
.ent __glkonim_GetTexLevelParameteriv
__glkonim_GetTexLevelParameteriv:
    # Line 6861
    addiu	$sp,$sp,-112
    sd	$s2,48($sp)
    # Line 6865
    lw	$s2,4112($zero)
    # Line 6861
    sd	$s0,8($sp)
    move	$v0,$a3
    move	$s0,$a2
    # Line 6865
    lw	$at,4120($zero)
    # Line 6861
    sd	$s1,40($sp)
    # Line 6865
    li	$a6,1
    # Line 6861
    lui	$v1,0x12
    move	$s1,$a1
    sd	$ra,64($sp)
    addiu	$v1,$v1,-12200
    sd	$gp,56($sp)
    # Line 6865
    beq	$at,$a6,.L0d974484
    # Line 6861
    addu	$gp,$t9,$v1
    # Line 6869
    li	$a1,0x8063
    beq	$a0,$a1,.L0d9741c0
    sd	$a3,0($sp)
    li	$v0,0x8064
    beq	$a0,$v0,.L0d9741c8
    li	$a2,0x8070
    beq	$a0,$a2,.L0d974254
    nop
    # Line 6887
    lw	$v0,31640($s2)
    la	$a3,index_2_target_map
    sll	$a4,$v0,0x2
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    bne	$a3,$a0,.L0d974234
    # Line 6898
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6904
    move	$a0,$v0
.L0d974000:
    # Line 6906
    sll	$t0,$a0,0x2
    addu	$t0,$s2,$t0
    sd	$t0,24($sp)
    lw	$t0,31664($t0)
    # Line 6907
    sll	$t1,$s1,0x2
    # Line 6906
    lw	$a5,36($t0)
    # Line 6907
    addu	$t0,$t0,$t1
    lw	$t0,124($t0)
    # Line 6906
    sllv	$a7,$a6,$s1
    # Line 6907
    sd	$t0,32($sp)
    # Line 6906
    and	$a5,$a5,$a7
    sd	$a5,16($sp)
.L0d974030:
    # Line 6910
    # lw $t9, -32740($gp) # &sub_0d960000
.L0d974034:
    addiu	$t9,$t9,24144
    jal	sub_0d960000
    move	$a1,$s1
    beqz	$v0,.L0d974060
    # Line 6911
    ld	$v0,24($sp)
    lw	$v0,31664($v0)
    lw	$v0,436($v0)
    slt	$ra,$s1,$v0
    beqz	$ra,.L0d974364
    # Line 6912
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6911
    beqz	$v0,.L0d974360
.L0d974060:
    # Line 6917
    li	$v0,0x805d
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0d9740cc
    sltu	$a0,$v0,$s0
    bnez	$a0,.L0d974120
    li	$v0,0x8060
    ld	$a1,16($sp)
    beqz	$a1,.L0d974430
    ld	$s0,8($sp)
    # Line 6923
    ld	$a1,32($sp)
    lw	$a1,4($a1)
    la	$a0,intern_format_arr3
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    lw	$a0,4($a0)
.L0d97409c:
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10480
    bal __glKonGetTexParameter
    li	$a1,1
    ld	$ra,0($sp)
    sw	$v0,0($ra)
.L0d9740b4:
    ld	$ra,64($sp)
.L0d9740b8:
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    # Line 6966
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9740cc:
    # Line 6917
    sltiu	$at,$s0,4099
    bnez	$at,.L0d974174
    sltiu	$v0,$s0,4100
    beqz	$v0,.L0d9742c8
    ld	$v1,16($sp)
    beqz	$v1,.L0d97449c
    # Line 6945
    ld	$v1,32($sp)
    lw	$v1,4($v1)
    la	$v0,intern_format_arr3
    sll	$v1,$v1,0x4
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
.L0d9740fc:
    # Line 6966
    ld	$gp,56($sp)
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$ra,64($sp)
    # Line 6945
    ld	$a0,0($sp)
    # Line 6966
    ld	$s2,48($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 6945
    sw	$v0,0($a0)
.L0d974120:
    # Line 6917
    sltu	$a1,$s0,$v0
    bnez	$a1,.L0d97426c
    sltu	$a2,$v0,$s0
    bnez	$a2,.L0d974390
    li	$v0,0x8071
    ld	$a3,16($sp)
    beqz	$a3,.L0d9744b4
    ld	$s0,8($sp)
    # Line 6935
    ld	$a1,32($sp)
    lw	$a1,4($a1)
    la	$a0,intern_format_arr3
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    lw	$a0,4($a0)
.L0d974158:
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10480
    bal __glKonGetTexParameter
    li	$a1,4
    # Line 6937
    ld	$ra,0($sp)
    b	.L0d9740b4
    # Line 6935
    sw	$v0,0($ra)
.L0d974174:
    # Line 6917
    sltiu	$at,$s0,4097
    bnez	$at,.L0d974324
    li	$at,4096
    sltiu	$v0,$s0,4098
    beqz	$v0,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$v1,16($sp)
    beqz	$v1,.L0d9744a4
    # Line 6953
    ld	$v0,32($sp)
    lw	$v0,12($v0)
.L0d97419c:
    # Line 6966
    ld	$gp,56($sp)
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$ra,64($sp)
    # Line 6953
    ld	$v1,0($sp)
    # Line 6966
    ld	$s2,48($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 6953
    sw	$v0,0($v1)
.L0d9741c0:
    # Line 6876
    b	.L0d9741cc
    li	$a0,4
.L0d9741c8:
    # Line 6878
    li	$a0,5
.L0d9741cc:
    # Line 6885
    sll	$a2,$a0,0x2
    addu	$a2,$s2,$a2
    sd	$a2,24($sp)
    lw	$a2,31664($a2)
    # Line 6886
    sll	$a3,$s1,0x2
    # Line 6885
    lw	$a1,36($a2)
    sllv	$a4,$a6,$s1
    # Line 6886
    addu	$a2,$a2,$a3
    lw	$a2,124($a2)
    # Line 6885
    and	$a1,$a1,$a4
    sd	$a1,16($sp)
    # Line 6886
    beqz	$a1,.L0d974030
    sd	$a2,32($sp)
    ld	$a3,32($sp)
    lw	$a3,8($a3)
    bnez	$a3,.L0d974034
    # Line 6910
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6966
    ld	$gp,56($sp)
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$ra,64($sp)
    # Line 6892
    ld	$a4,0($sp)
    # Line 6966
    ld	$s2,48($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 6892
    sw	$zero,0($a4)
.L0d974234:
    # Line 6898
    addiu	$t9,$t9,24064
    jal	sub_0d960000
    nop
    li	$a6,1
    bltz	$v0,.L0d9744e4
    move	$a0,$v0
    # Line 6902
    b	.L0d974000
    sw	$v0,31640($s2)
.L0d974254:
    # Line 6873
    beq	$a0,$v0,.L0d9741c8
    # Line 6882
    li	$at,6
    # Line 6873
    li	$ra,0x8070
    xor	$ra,$a0,$ra
    # Line 6882
    b	.L0d9741cc
    movz	$a0,$at,$ra
.L0d97426c:
    # Line 6917
    li	$v0,0x805f
    sltu	$at,$s0,$v0
    bnez	$at,.L0d9743c0
    li	$a0,0x805e
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$a0,16($sp)
    beqz	$a0,.L0d9744bc
    ld	$s0,8($sp)
    # Line 6931
    ld	$a1,32($sp)
    lw	$a1,4($a1)
    la	$a0,intern_format_arr3
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    lw	$a0,4($a0)
.L0d9742ac:
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10480
    bal __glKonGetTexParameter
    li	$a1,3
    # Line 6933
    ld	$ra,0($sp)
    b	.L0d9740b4
    # Line 6931
    sw	$v0,0($ra)
.L0d9742c8:
    # Line 6917
    li	$v0,0x805c
    sltu	$at,$s0,$v0
    bnez	$at,.L0d974408
    li	$at,4101
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$a0,16($sp)
    beqz	$a0,.L0d9744c4
    ld	$s0,8($sp)
    # Line 6919
    ld	$a1,32($sp)
    lw	$a1,4($a1)
    la	$a0,intern_format_arr3
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    lw	$a0,4($a0)
.L0d974308:
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10480
    bal __glKonGetTexParameter
    move	$a1,$zero
    # Line 6921
    ld	$ra,0($sp)
    b	.L0d9740b4
    # Line 6919
    sw	$v0,0($ra)
.L0d974324:
    # Line 6917
    bne	$s0,$at,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$v0,16($sp)
    beqz	$v0,.L0d9744ac
    # Line 6949
    ld	$v0,32($sp)
    lw	$v0,8($v0)
.L0d97433c:
    # Line 6966
    ld	$gp,56($sp)
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$ra,64($sp)
    # Line 6949
    ld	$v1,0($sp)
    # Line 6966
    ld	$s2,48($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 6949
    sw	$v0,0($v1)
.L0d974360:
    # Line 6912
    # lw $t9, -28616($gp) # &__glSetError
.L0d974364:
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d9740b8
    ld	$ra,64($sp)
.L0d974378:
    # Line 6965
    # lw $t9, -28616($gp) # &__glSetError
.L0d97437c:
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d9740b8
    ld	$ra,64($sp)
.L0d974390:
    # Line 6917
    sltu	$a0,$s0,$v0
    ld	$a2,16($sp)
    bnez	$a0,.L0d974438
    sltu	$a1,$v0,$s0
    bnez	$a1,.L0d974378
    ld	$s0,8($sp)
    beqz	$a2,.L0d9744dc
    # Line 6958
    ld	$v1,0($sp)
    # Line 6957
    ld	$v0,32($sp)
    lw	$v0,16($v0)
.L0d9743b8:
    # Line 6958
    b	.L0d9740b4
    # Line 6957
    sw	$v0,0($v1)
.L0d9743c0:
    # Line 6917
    bne	$s0,$a0,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$a1,16($sp)
    # Line 6927
    la	$a0,intern_format_arr3
    # Line 6917
    beqz	$a1,.L0d9744cc
    ld	$s0,8($sp)
    # Line 6927
    ld	$a1,32($sp)
    lw	$a1,4($a1)
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    lw	$a0,4($a0)
.L0d9743ec:
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10480
    bal __glKonGetTexParameter
    li	$a1,2
    # Line 6929
    ld	$ra,0($sp)
    b	.L0d9740b4
    # Line 6927
    sw	$v0,0($ra)
.L0d974408:
    # Line 6917
    bne	$s0,$at,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$v0,16($sp)
    beqz	$v0,.L0d9744d4
    ld	$s0,8($sp)
    # Line 6961
    ld	$v0,32($sp)
    lw	$v0,20($v0)
.L0d974424:
    # Line 6962
    ld	$v1,0($sp)
    b	.L0d9740b4
    # Line 6961
    sw	$v0,0($v1)
.L0d974430:
    b	.L0d97409c
    # Line 6923
    li	$a0,13
.L0d974438:
    # Line 6917
    li	$a0,0x8061
    bne	$s0,$a0,.L0d97437c
    # Line 6965
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 6917
    ld	$a1,16($sp)
    beqz	$a1,.L0d9744fc
    ld	$s0,8($sp)
    # Line 6940
    ld	$a1,32($sp)
    lw	$a1,4($a1)
    la	$a0,intern_format_arr3
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    lw	$a0,4($a0)
.L0d974468:
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-10480
    bal __glKonGetTexParameter
    li	$a1,5
    # Line 6942
    ld	$ra,0($sp)
    b	.L0d9740b4
    # Line 6940
    sw	$v0,0($ra)
.L0d974484:
    # Line 6865
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9740b8
    ld	$ra,64($sp)
.L0d97449c:
    b	.L0d9740fc
    # Line 6945
    li	$v0,1
.L0d9744a4:
    b	.L0d97419c
    # Line 6953
    move	$v0,$zero
.L0d9744ac:
    b	.L0d97433c
    # Line 6949
    move	$v0,$zero
.L0d9744b4:
    b	.L0d974158
    # Line 6935
    li	$a0,13
.L0d9744bc:
    b	.L0d9742ac
    # Line 6931
    li	$a0,13
.L0d9744c4:
    b	.L0d974308
    # Line 6919
    li	$a0,13
.L0d9744cc:
    b	.L0d9743ec
    # Line 6927
    li	$a0,13
.L0d9744d4:
    b	.L0d974424
    # Line 6961
    move	$v0,$zero
.L0d9744dc:
    b	.L0d9743b8
    # Line 6957
    move	$v0,$zero
.L0d9744e4:
    # Line 6899
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9740b8
    ld	$ra,64($sp)
.L0d9744fc:
    b	.L0d974468
    # Line 6940
    li	$a0,13
.end __glkonim_GetTexLevelParameteriv

# Function: __glkonim_GetTexLevelParameterfv
# Declared: Line 6971 (Source lines: 6972-6975)
# Address: 0x0d974510 - 0x0d97455c (Size: 76 bytes, Frame: 32)
.globl __glkonim_GetTexLevelParameterfv
.ent __glkonim_GetTexLevelParameterfv
__glkonim_GetTexLevelParameterfv:
    # Line 6972
    lui	$at,0x12
    addiu	$sp,$sp,-32
    addiu	$at,$at,-13624
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 6973
    # lw $t9, -31696($gp) # &__glkonim_GetTexLevelParameteriv
    # Line 6972
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 6973
    bal __glkonim_GetTexLevelParameteriv
    # Line 6972
    move	$s8,$a3
    # Line 6974
    lw	$v0,0($s8)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    ld	$ra,0($sp)
    # Line 6975
    ld	$gp,16($sp)
    # Line 6974
    swc1	$f0,0($s8)
    # Line 6975
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonim_GetTexLevelParameterfv

# Function: __glkonim_GetTexParameteriv
# Declared: Line 6978 (Source lines: 6979-6996)
# Address: 0x0d974560 - 0x0d974650 (Size: 240 bytes, Frame: 48)
.globl __glkonim_GetTexParameteriv
.ent __glkonim_GetTexParameteriv
__glkonim_GetTexParameteriv:
    # Line 6979
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$a3,$a2
    move	$t0,$a1
    # Line 6981
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 6979
    lui	$v1,0x12
    move	$a7,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-13704
    sd	$gp,8($sp)
    # Line 6981
    beq	$at,$v0,.L0d974628
    # Line 6979
    addu	$gp,$t9,$v1
    # Line 6983
    lw	$v0,31640($s0)
    la	$a0,index_2_target_map
    sll	$a1,$v0,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    bne	$a0,$a7,.L0d9745ec
    # Line 6985
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 6992
    move	$a7,$v0
.L0d9745b8:
    # Line 6994
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a4,$zero
    move	$a2,$t0
    move	$a1,$a7
    jal	__glKonGetTexParameter
    addiu	$a0,$s0,31632
    bltz	$v0,.L0d974618
    # Line 6995
    nop	# was lw $t9, -28616($gp) # &__glSetError
    ld	$ra,16($sp)
.L0d9745dc:
    # Line 6996
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9745ec:
    # Line 6985
    addiu	$t9,$t9,24064
    sd	$t0,24($sp)
    sd	$a2,32($sp)
    jal	__glSetError
    move	$a0,$a7
    ld	$a3,32($sp)
    bltz	$v0,.L0d97463c
    move	$a7,$v0
    ld	$t0,24($sp)
    # Line 6989
    b	.L0d9745b8
    sw	$v0,31640($s0)
.L0d974618:
    # Line 6995
    jalr	$t9
    li	$a0,1280
    b	.L0d9745dc
    ld	$ra,16($sp)
.L0d974628:
    # Line 6981
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9745dc
    ld	$ra,16($sp)
.L0d97463c:
    # Line 6986
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9745dc
    ld	$ra,16($sp)
.end __glkonim_GetTexParameteriv

# Function: __glkonim_GetTexParameterfv
# Declared: Line 6999 (Source lines: 7000-7017)
# Address: 0x0d974650 - 0x0d974740 (Size: 240 bytes, Frame: 48)
.globl __glkonim_GetTexParameterfv
.ent __glkonim_GetTexParameterfv
__glkonim_GetTexParameterfv:
    # Line 7000
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$a3,$a2
    move	$t0,$a1
    # Line 7002
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 7000
    lui	$v1,0x12
    move	$a7,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-13944
    sd	$gp,8($sp)
    # Line 7002
    beq	$at,$v0,.L0d974718
    # Line 7000
    addu	$gp,$t9,$v1
    # Line 7004
    lw	$v0,31640($s0)
    la	$a0,index_2_target_map
    sll	$a1,$v0,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    bne	$a0,$a7,.L0d9746d8
    # Line 7006
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 7013
    move	$a7,$v0
.L0d9746a8:
    # Line 7015
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    li	$a4,1
    move	$a2,$t0
    move	$a1,$a7
    jal	__glKonGetTexParameter
    addiu	$a0,$s0,31632
    bltz	$v0,.L0d974704
    ld	$ra,16($sp)
.L0d9746c8:
    # Line 7017
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9746d8:
    # Line 7006
    addiu	$t9,$t9,24064
    sd	$t0,24($sp)
    sd	$a2,32($sp)
    jalr	$t9
    move	$a0,$a7
    ld	$a3,32($sp)
    bltz	$v0,.L0d97472c
    move	$a7,$v0
    ld	$t0,24($sp)
    # Line 7010
    b	.L0d9746a8
    sw	$v0,31640($s0)
.L0d974704:
    # Line 7016
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9746c8
    ld	$ra,16($sp)
.L0d974718:
    # Line 7002
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9746c8
    ld	$ra,16($sp)
.L0d97472c:
    # Line 7007
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9746c8
    ld	$ra,16($sp)
.end __glkonim_GetTexParameterfv

# Function: __glkon_InitSharedTextureState
# Declared: Line 7021 (Source lines: 7022-7032)
# Address: 0x0d974740 - 0x0d9747a8 (Size: 104 bytes, Frame: 16)
.ent __glkon_InitSharedTextureState
__glkon_InitSharedTextureState:
    # Line 7023
    # lw $t9, -31596($gp) # &__glKonInitTextureMemory
    # Line 7022
    addiu	$sp,$sp,-16
    sd	$s0,8($sp)
    sd	$ra,0($sp)
    # Line 7023
    bal __glKonInitTextureMemory
    # Line 7022
    move	$s0,$a0
    # Line 7025
    # lw $t9, -31560($gp) # &__glKonInitTextureHash
    bal __glKonInitTextureHash
    addiu	$a0,$s0,40
    # Line 7027
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,23664
    li	$a0,0xc074
    jal	sub_0d960000
    addu	$a0,$s0,$a0
    # Line 7029
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,23968
    li	$a0,0xc03c
    jal	sub_0d960000
    addu	$a0,$s0,$a0
    ld	$ra,0($sp)
    # Line 7031
    lui	$at,0x4000
    ori	$at,$at,0x4000
    sw	$at,28($s0)
    # Line 7032
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_InitSharedTextureState

# Function: freeTextureAttrib
# Declared: Line 7035 (Source lines: 7036-7044)
# Address: 0x0d9747b0 - 0x0d974850 (Size: 160 bytes, Frame: 48)
.ent freeTextureAttrib
freeTextureAttrib:
    # Line 7036
    addiu	$sp,$sp,-48
    sd	$s3,24($sp)
    # Line 7038
    lw	$s3,28($a1)
    # Line 7036
    sd	$s2,32($sp)
    move	$a3,$a1
    sd	$s1,40($sp)
    move	$s1,$a0
    # Line 7038
    blez	$s3,.L0d974834
    # Line 7037
    lw	$s2,24($a1)
    sd	$a1,8($sp)
    sd	$s0,16($sp)
    # Line 7038
    move	$s0,$zero
    sd	$ra,0($sp)
    nop
    nop
    # Line 7042
    lw	$t9,12($s1)
.L0d9747f0:
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1164($s2)
    # Line 7041
    addiu	$s0,$s0,1
    bnel	$s3,$s0,.L0d9747f0
    # Line 7042
    lw	$t9,12($s1)
    # Line 7044
    ld	$ra,0($sp)
    ld	$s0,16($sp)
    # Line 7043
    lw	$t9,12($s1)
    move	$a0,$s1
    # Line 7044
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    # Line 7041
    ld	$a1,8($sp)
    # Line 7044
    ld	$s3,24($sp)
    # Line 7041
    lw	$a1,24($a1)
    jr	$t9
    # Line 7044
    addiu	$sp,$sp,48
.L0d974834:
    # Line 7043
    lw	$t9,12($s1)
    ld	$s3,24($sp)
    # Line 7044
    ld	$s1,40($sp)
    # Line 7043
    move	$a1,$s2
    # Line 7044
    ld	$s2,32($sp)
    jr	$t9
    addiu	$sp,$sp,48
.end freeTextureAttrib

# Function: initProxyTextures
# Declared: Line 7048 (Source lines: 7049-7061)
# Address: 0x0d974850 - 0x0d9748dc (Size: 140 bytes, Frame: 16)
.ent initProxyTextures
initProxyTextures:
    # Line 7053
    # lw $t9, -18524($gp) # &bzero
    # Line 7052
    addiu	$at,$a0,2236
    sw	$at,48($a0)
    # Line 7049
    addiu	$sp,$sp,-16
    # Line 7053
    li	$a1,544
    # Line 7049
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$ra,0($sp)
    # Line 7053
    jal	bzero
    move	$a0,$at
    # Line 7054
    lw	$a0,48($s0)
    # Line 7056
    # lw $t9, -18524($gp) # &bzero
    li	$a1,544
    # Line 7054
    li	$v1,4
    # Line 7055
    addiu	$v0,$s0,2780
    # Line 7054
    sw	$v1,376($a0)
    # Line 7056
    move	$a0,$v0
    jal	bzero
    # Line 7055
    sw	$v0,52($s0)
    # Line 7057
    lw	$a4,52($s0)
    # Line 7059
    # lw $t9, -18524($gp) # &bzero
    li	$a1,544
    # Line 7057
    li	$a3,5
    # Line 7058
    addiu	$a2,$s0,3324
    # Line 7057
    sw	$a3,376($a4)
    # Line 7059
    move	$a0,$a2
    jal	bzero
    # Line 7058
    sw	$a2,56($s0)
    ld	$ra,0($sp)
    # Line 7060
    lw	$a6,56($s0)
    # Line 7061
    ld	$s0,8($sp)
    addiu	$sp,$sp,16
    # Line 7060
    li	$a5,6
    # Line 7061
    jr	$ra
    # Line 7060
    sw	$a5,376($a6)
.end initProxyTextures

# Function: __glkon_InitTextureState
# Declared: Line 7065 (Source lines: 7066-7128)
# Address: 0x0d9748e0 - 0x0d974a98 (Size: 440 bytes, Frame: 192)
.globl __glkon_InitTextureState
.ent __glkon_InitTextureState
__glkon_InitTextureState:
    # Line 7066
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$s4,0($sp)
    # Line 7070
    lw	$s4,31644($a0)
    # Line 7066
    sd	$s3,8($sp)
    lui	$s3,0x12
    sd	$s0,32($sp)
    addiu	$s3,$s3,-14600
    sd	$gp,48($sp)
    addu	$gp,$t9,$s3
    # Line 7073
    li	$a1,3872
    # lw $t9, -18524($gp) # &bzero
    # Line 7066
    move	$s0,$a0
    sd	$s2,16($sp)
    # Line 7068
    lui	$s2,0x1
    # Line 7066
    sd	$s1,40($sp)
    # Line 7073
    addiu	$s1,$a0,31632
    # Line 7068
    addu	$s2,$a0,$s2
    # Line 7073
    move	$a0,$s1
    jal	bzero
    # Line 7068
    lw	$s3,-30036($s2)
    # Line 7076
    li	$t9,1024
    # Line 7073
    lui	$t8,0x100
    # Line 7080
    li	$v0,128
    # Line 7079
    li	$at,2048
    # Line 7073
    bne	$s4,$t8,.L0d974958
    # Line 7077
    li	$ra,64
    sw	$ra,3728($s0)
    b	.L0d974960
    # Line 7076
    sw	$t9,3724($s0)
.L0d974958:
    # Line 7080
    sw	$v0,3728($s0)
    # Line 7079
    sw	$at,3724($s0)
.L0d974960:
    # Line 7091
    li	$a0,32
    sw	$a0,31652($s0)
    # Line 7090
    li	$a2,16
    sw	$a2,31648($s0)
    # Line 7088
    sra	$a1,$s4,0x6
    sw	$a1,31644($s0)
    # Line 7091
    lw	$v1,0($s3)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d974a78
    sdc1	$f20,56($sp)
.L0d974988:
    ld	$s4,0($sp)
    # Line 7098
    sw	$s3,-30036($s2)
    # Line 7105
    sw	$zero,32616($s0)
    # Line 7103
    addiu	$a1,$s0,32236
    sw	$a1,31668($s0)
    # Line 7101
    sw	$zero,31636($s0)
    # Line 7107
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 7100
    li	$a3,2
    sw	$a3,31640($s0)
    # Line 7106
    lwc1	$f20,_lit_3f800000
    # Line 7107
    addiu	$t9,$t9,-22320
    # Line 7104
    li	$ra,1
    sw	$ra,32612($s0)
    # Line 7107
    move	$a0,$s1
    jal	sub_0d970000
    # Line 7106
    swc1	$f20,32564($s0)
    ld	$s3,8($sp)
    # Line 7109
    li	$a1,0x800c
    # Line 7113
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 7109
    addu	$a1,$s0,$a1
    sw	$a1,31672($s0)
    # Line 7112
    swc1	$f20,-32428($s2)
    # Line 7113
    addiu	$t9,$t9,-22320
    move	$a0,$s1
    # Line 7111
    sw	$zero,-32376($s2)
    # Line 7110
    li	$at,2
    # Line 7113
    jal	sub_0d970000
    # Line 7110
    sw	$at,-32380($s2)
    # Line 7115
    li	$a1,0x822c
    # Line 7119
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 7115
    addu	$a1,$s0,$a1
    sw	$a1,31676($s0)
    # Line 7118
    swc1	$f20,-31884($s2)
    # Line 7119
    addiu	$t9,$t9,-22320
    move	$a0,$s1
    # Line 7117
    sw	$zero,-31832($s2)
    # Line 7116
    li	$a2,3
    # Line 7119
    jal	sub_0d970000
    # Line 7116
    sw	$a2,-31836($s2)
    ld	$s2,16($sp)
    # Line 7125
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 7124
    swc1	$f20,32020($s0)
    # Line 7123
    sw	$zero,32072($s0)
    # Line 7125
    addiu	$t9,$t9,-22320
    move	$a0,$s1
    # Line 7122
    sw	$zero,32068($s0)
    # Line 7121
    addiu	$a1,$s0,31692
    # Line 7125
    jal	sub_0d970000
    # Line 7121
    sw	$a1,31664($s0)
    # Line 7127
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,18512
    ld	$s0,32($sp)
    ldc1	$f20,56($sp)
    bal __glkonim_GetTexParameterfv
    move	$a0,$s1
    ld	$ra,24($sp)
    ld	$s1,40($sp)
    # Line 7128
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d974a78:
    # Line 7094
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,18240
    bal __glkonim_GetTexParameterfv
    move	$a0,$s3
    # Line 7095
    lw	$ra,0($s3)
    ori	$ra,$ra,0x1
    b	.L0d974988
    sw	$ra,0($s3)
.end __glkon_InitTextureState

# Function: __glKonValidateTextureState
# Declared: Line 7132 (Source lines: 7133-7154)
# Address: 0x0d974aa0 - 0x0d974ba0 (Size: 256 bytes, Frame: 32)
.globl __glKonValidateTextureState
.ent __glKonValidateTextureState
__glKonValidateTextureState:
    # Line 7133
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 7136
    li	$s1,0x8aac
    addu	$s1,$s1,$a0
    lw	$s1,0($s1)
    # Line 7139
    lw	$at,4($s1)
    sd	$ra,24($sp)
    # Line 7133
    sd	$s0,16($sp)
    lui	$v0,0x12
    # Line 7139
    slti	$at,$at,2
    # Line 7133
    move	$s0,$a0
    sd	$gp,0($sp)
    addiu	$v0,$v0,-15048
    addu	$gp,$t9,$v0
    # Line 7139
    beqz	$at,.L0d974af8
    lw	$t8,0($s1)
    # Line 7144
    li	$a3,1
    # Line 7139
    andi	$t8,$t8,0x4
    bnez	$t8,.L0d974afc
    # Line 7142
    nop	# was lw $t9, -31528($gp) # &__glKonInvalidateARMTexCache
    b	.L0d974b20
    # Line 7150
    lw	$a0,31640($s0)
.L0d974af8:
    # Line 7142
    # lw $t9, -31528($gp) # &__glKonInvalidateARMTexCache
.L0d974afc:
    move	$a0,$s0
    li	$a1,0xc074
    bal __glKonInvalidateARMTexCache
    addu	$a1,$s1,$a1
    lw	$a2,4($s1)
    li	$a3,1
    beq	$a2,$a3,.L0d974b8c
    nop
.L0d974b1c:
    # Line 7150
    lw	$a0,31640($s0)
.L0d974b20:
    sll	$a1,$a0,0x2
    addu	$a1,$s0,$a1
    lw	$a1,31664($a1)
    # Line 7151
    lw	$a6,24($a1)
    lw	$a5,20($a1)
    lw	$a4,40($a1)
    sllv	$a6,$a3,$a6
    addu	$a5,$a5,$a3
    sllv	$a5,$a3,$a5
    nor	$a4,$a4,$zero
    subu	$a5,$a5,$a6
    and	$a4,$a4,$a5
    beqz	$a4,.L0d974b74
    lw	$a2,31632($s0)
    sllv	$a4,$a3,$a0
    and	$a2,$a2,$a4
    beqz	$a2,.L0d974b78
    ld	$ra,24($sp)
    # Line 7153
    lw	$t9,256($a1)
    jal	__glKonInvalidateARMTexCache
    addiu	$a0,$s0,31632
.L0d974b74:
    ld	$ra,24($sp)
.L0d974b78:
    # Line 7154
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d974b8c:
    # Line 7144
    lw	$a5,0($s1)
    li	$a6,-5
    and	$a5,$a5,$a6
    b	.L0d974b1c
    sw	$a5,0($s1)
.end __glKonValidateTextureState

# Function: __glkon_FreeTextureState
# Declared: Line 7158 (Source lines: 7159-7218)
# Address: 0x0d974ba0 - 0x0d974d98 (Size: 504 bytes, Frame: 192)
.globl __glkon_FreeTextureState
.ent __glkon_FreeTextureState
__glkon_FreeTextureState:
    # Line 7159
    addiu	$sp,$sp,-64
    sd	$s2,16($sp)
    # Line 7161
    lui	$s2,0x1
    addu	$s2,$a0,$s2
    sd	$s2,8($sp)
    lw	$s2,-30036($s2)
    sd	$ra,40($sp)
    # Line 7163
    lw	$at,0($s2)
    # Line 7159
    sd	$s0,32($sp)
    lui	$a2,0x12
    addiu	$a2,$a2,-15304
    # Line 7163
    lw	$a1,4($s2)
    andi	$at,$at,0x1
    # Line 7159
    move	$s0,$a0
    sd	$gp,24($sp)
    addu	$gp,$t9,$a2
    # Line 7163
    addiu	$a1,$a1,-1
    beqz	$at,.L0d974d58
    sw	$a1,4($s2)
    sd	$s1,48($sp)
    li	$s1,0xc074
    blez	$a1,.L0d974cd4
    addu	$s1,$s2,$s1
    # Line 7174
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    li	$a4,2
    move	$a2,$s1
    move	$a1,$zero
    addiu	$s2,$s0,32236
    jal	subtractTexTableUsage
    move	$a3,$s2
    # Line 7176
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s0
    move	$a1,$zero
    move	$a2,$s1
    move	$a3,$s2
    jal	subtractTexTableUsage
    move	$a4,$zero
    # Line 7178
    li	$a4,1
    move	$a2,$s1
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a1,$zero
    li	$s2,0x800c
    move	$a0,$s0
    addu	$s2,$s0,$s2
    jal	subtractTexTableUsage
    move	$a3,$s2
    # Line 7180
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s0
    move	$a1,$zero
    move	$a2,$s1
    move	$a3,$s2
    jal	subtractTexTableUsage
    li	$a4,2
    # Line 7182
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a0,$s0
    move	$a1,$zero
    move	$a2,$s1
    move	$a3,$s2
    jal	subtractTexTableUsage
    move	$a4,$zero
    # Line 7184
    move	$a0,$s0
    # lw $t9, -31856($gp) # &subtractTexTableUsage
    move	$a1,$zero
    move	$a2,$s1
    li	$a4,2
    li	$a3,0x822c
    jal	subtractTexTableUsage
    addu	$a3,$s0,$a3
    ld	$s1,48($sp)
    # Line 7218
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    # Line 7186
    ld	$a4,8($sp)
    # Line 7218
    ld	$s2,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 7186
    sw	$zero,-30036($a4)
.L0d974cd4:
    # Line 7191
    # lw $t9, -31556($gp) # &__glKonFreeTextures
    addiu	$a1,$s2,40
    bal __glKonFreeTextures
    sd	$a1,0($sp)
    # Line 7194
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,18352
    move	$a0,$s0
    bal __glkonim_GetTexParameterfv
    addiu	$a1,$s0,31632
    # Line 7197
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	sub_0d970000
    lw	$a1,16($s2)
    # Line 7200
    # lw $t9, -31552($gp) # &__glKonFreeTextureHash
    move	$a0,$s0
    bal __glKonFreeTextureHash
    ld	$a1,0($sp)
    # Line 7203
    # lw $t9, -31524($gp) # &__glKonFreeARMTexCache
    move	$a0,$s0
    li	$a1,0xc03c
    bal __glKonFreeARMTexCache
    addu	$a1,$s2,$a1
    # Line 7206
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,23760
    move	$a0,$s0
    jal	sub_0d960000
    move	$a1,$s1
    # Line 7209
    # lw $t9, -31592($gp) # &__glKonFreeTextureMemory
    move	$a0,$s0
    ld	$s1,48($sp)
    bal __glKonFreeTextureMemory
    move	$a1,$s2
    lw	$a1,4($s2)
.L0d974d58:
    beqz	$a1,.L0d974d80
    nop
    # Line 7218
    ld	$gp,24($sp)
.L0d974d64:
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    # Line 7217
    ld	$at,8($sp)
    # Line 7218
    ld	$s2,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 7217
    sw	$zero,-30036($at)
.L0d974d80:
    # Line 7214
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	__glKonFreeTextureMemory
    move	$a1,$s2
    b	.L0d974d64
    # Line 7218
    ld	$gp,24($sp)
.end __glkon_FreeTextureState

# Function: __glKonFreeAllocedTexObjBank
# Declared: Line 7225 (Source lines: 7226-7254)
# Address: 0x0d974da0 - 0x0d974eb4 (Size: 276 bytes, Frame: 32)
.globl __glKonFreeAllocedTexObjBank
.ent __glKonFreeAllocedTexObjBank
__glKonFreeAllocedTexObjBank:
    # Line 7226
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # Line 7227
    lw	$a3,32($a1)
    lui	$a4,0xfeff
    # Line 7226
    sd	$s0,8($sp)
    lui	$v1,0x12
    # Line 7227
    ori	$a4,$a4,0xffff
    and	$a3,$a3,$a4
    sw	$a3,32($a1)
    # Line 7226
    addiu	$v1,$v1,-15816
    sd	$gp,0($sp)
    addu	$gp,$t9,$v1
    # Line 7227
    la	$v0,__glNop
    # Line 7226
    move	$a5,$a2
    # Line 7229
    lw	$a4,12($a1)
    li	$t1,4
    li	$a6,1
    # Line 7227
    la	$at,sub_0d970000
    # Line 7229
    li	$t0,3
    # Line 7226
    move	$s0,$a1
    # Line 7227
    sw	$v0,260($a1)
    addiu	$at,$at,-6112
    # Line 7229
    beq	$a4,$a6,.L0d974e50
    # Line 7227
    sw	$at,256($a1)
    # Line 7229
    li	$a7,2
    beq	$a4,$a7,.L0d974e54
    # Line 7234
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 7229
    beq	$a4,$t0,.L0d974e54
    # Line 7234
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 7229
    beq	$a4,$t1,.L0d974e54
    # Line 7234
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 7244
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-13392
    move	$a2,$a6
    jal	sub_0d970000
    movn	$a2,$a7,$a5
    lw	$ra,272($s0)
    bnez	$ra,.L0d974e84
    ld	$ra,16($sp)
.L0d974e3c:
    # Line 7254
    move	$v0,$zero
    # Line 7241
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d974e50:
    # Line 7234
    # lw $t9, -32736($gp) # &sub_0d970000
.L0d974e54:
    addiu	$t9,$t9,-13392
    move	$a1,$s0
    jal	sub_0d970000
    li	$a2,3
    lw	$ra,272($s0)
    bnez	$ra,.L0d974e9c
    ld	$ra,16($sp)
.L0d974e70:
    # Line 7241
    li	$v0,1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d974e84:
    # Line 7253
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20320
    jal	sub_0d960000
    move	$a0,$s0
    b	.L0d974e3c
    ld	$ra,16($sp)
.L0d974e9c:
    # Line 7240
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,20320
    jal	sub_0d960000
    move	$a0,$s0
    b	.L0d974e70
    ld	$ra,16($sp)
.end __glKonFreeAllocedTexObjBank

# Function: __glKonShareTexture
# Declared: Line 7262 (Source lines: 7263-7275)
# Address: 0x0d974ec0 - 0x0d974f80 (Size: 192 bytes, Frame: 48)
.globl __glKonShareTexture
.ent __glKonShareTexture
__glKonShareTexture:
    # Line 7263
    addiu	$sp,$sp,-48
    sd	$s2,24($sp)
    move	$s2,$a0
    lui	$at,0x12
    sd	$s0,16($sp)
    lui	$s0,0x1
    sd	$s1,8($sp)
    addiu	$at,$at,-16104
    # Line 7267
    addu	$s1,$s0,$a1
    sd	$gp,0($sp)
    # Line 7263
    beqz	$a1,.L0d974f54
    addu	$gp,$t9,$at
    # Line 7267
    lw	$s1,-30036($s1)
.L0d974ef4:
    # Line 7272
    lw	$t8,4($s1)
    # Line 7273
    lw	$at,0($s1)
    # Line 7272
    slti	$t9,$t8,1
    # Line 7275
    ld	$gp,0($sp)
    # Line 7274
    addu	$v0,$s0,$s2
    # Line 7273
    ori	$at,$at,0x4
    # Line 7272
    addiu	$t8,$t8,1
    bnez	$t9,.L0d974f38
    sw	$t8,4($s1)
    # Line 7274
    addu	$t9,$s0,$s2
    # Line 7275
    ld	$s0,16($sp)
    ld	$s2,24($sp)
    # Line 7273
    sw	$at,0($s1)
    # Line 7274
    sw	$s1,-30036($t9)
    # Line 7275
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d974f38:
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s2,24($sp)
    # Line 7274
    sw	$s1,-30036($v0)
    # Line 7275
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d974f54:
    # Line 7269
    lw	$t9,0($s2)
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,0xc2d8
    # Line 7270
    # lw $t9, -18524($gp) # &bzero
    # Line 7269
    move	$a0,$v0
    move	$s1,$v0
    # Line 7270
    jal	bzero
    li	$a1,0xc2d8
    b	.L0d974ef4
    ld	$ra,32($sp)
.end __glKonShareTexture

# Function: __glKonPushTextureAttrib
# Declared: Line 7278 (Source lines: 7279-7341)
# Address: 0x0d974f80 - 0x0d97521c (Size: 668 bytes, Frame: 192)
.globl __glKonPushTextureAttrib
.ent __glKonPushTextureAttrib
__glKonPushTextureAttrib:
    # Line 7279
    addiu	$sp,$sp,-64
    sd	$s3,16($sp)
    # Line 7287
    lw	$at,4120($zero)
    lw	$s3,4112($zero)
    li	$v0,1
    # Line 7279
    lui	$v1,0x12
    sd	$ra,56($sp)
    addiu	$v1,$v1,-16296
    sd	$gp,24($sp)
    # Line 7287
    beq	$at,$v0,.L0d975204
    # Line 7279
    addu	$gp,$t9,$v1
    sd	$s1,48($sp)
    sd	$s0,0($sp)
    sd	$s4,40($sp)
    # Line 7290
    lw	$a0,31656($s3)
    sd	$s2,32($sp)
    lw	$a1,31660($s3)
    beqz	$a0,.L0d9751cc
    sd	$a1,8($sp)
.L0d974fcc:
    # Line 7299
    ld	$s4,8($sp)
    sll	$s2,$s4,0x3
    addu	$s2,$s2,$s4
    sll	$s2,$s2,0x3
    addu	$s2,$s2,$s4
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$s4
    sll	$s2,$s2,0x2
    move	$s0,$zero
    addu	$s2,$a0,$s2
    addiu	$s4,$s3,31632
    move	$s1,$s2
    # Line 7304
    # lw $t9, -19592($gp) # &__glKonGetTexParams
    move	$a0,$s4
    move	$a1,$zero
    jal	__glKonGetTexParams
    move	$a2,$s2
    # lw $t9, -19592($gp) # &__glKonGetTexParams
    # Line 7305
    lw	$t8,31664($s3)
    # Line 7304
    move	$a0,$s4
    # Line 7303
    addiu	$s1,$s1,160
    addiu	$s0,$s0,1
    # Line 7304
    move	$a2,$s1
    # Line 7305
    lw	$t8,380($t8)
    # Line 7304
    move	$a1,$s0
    jal	__glKonGetTexParams
    # Line 7305
    sw	$t8,1120($s2)
    # Line 7304
    # lw $t9, -19592($gp) # &__glKonGetTexParams
    # Line 7305
    lw	$at,31668($s3)
    # Line 7304
    move	$a0,$s4
    # Line 7303
    addiu	$s1,$s1,160
    addiu	$s0,$s0,1
    # Line 7304
    move	$a2,$s1
    # Line 7305
    lw	$at,380($at)
    # Line 7304
    move	$a1,$s0
    jal	__glKonGetTexParams
    # Line 7305
    sw	$at,1124($s2)
    # Line 7304
    # lw $t9, -19592($gp) # &__glKonGetTexParams
    # Line 7305
    lw	$v0,31672($s3)
    # Line 7304
    move	$a0,$s4
    # Line 7303
    addiu	$s1,$s1,160
    addiu	$s0,$s0,1
    # Line 7304
    move	$a2,$s1
    # Line 7305
    lw	$v0,380($v0)
    # Line 7304
    move	$a1,$s0
    jal	__glKonGetTexParams
    # Line 7305
    sw	$v0,1128($s2)
    lw	$v1,31676($s3)
    ld	$s4,40($sp)
    lw	$v1,380($v1)
    sw	$v1,1132($s2)
    # Line 7309
    lw	$a2,31632($s3)
    sw	$a2,1168($s2)
    # Line 7312
    lw	$a1,31672($s3)
    lw	$a1,304($a1)
    lw	$a1,8($a1)
    sw	$a1,1148($s2)
    # Line 7314
    lw	$a4,31668($s3)
    lw	$a4,308($a4)
    lw	$a4,8($a4)
    sw	$a4,1152($s2)
    # Line 7316
    lw	$a2,31672($s3)
    lw	$a2,308($a2)
    lw	$a2,8($a2)
    sw	$a2,1156($s2)
    # Line 7318
    lw	$a3,31676($s3)
    lw	$a3,308($a3)
    lw	$a3,8($a3)
    sw	$a3,1160($s2)
    # Line 7320
    addu	$a1,$a1,$a4
    lw	$t9,0($s3)
    addu	$a2,$a2,$a3
    addu	$a1,$a1,$a2
    move	$a0,$s3
    sll	$a1,$a1,0x3
    jalr	$t9
    addiu	$a1,$a1,1032
    # Line 7327
    # lw $t9, -31700($gp) # &__glkonim_GetTexFilterFuncSGIS
    # Line 7320
    move	$s0,$v0
    # Line 7327
    move	$a2,$v0
    li	$a1,0x8146
    li	$a0,3552
    bal __glkonim_GetTexFilterFuncSGIS
    # Line 7320
    sw	$v0,1164($s2)
    # Line 7329
    # lw $t9, -31700($gp) # &__glkonim_GetTexFilterFuncSGIS
    addiu	$a2,$s0,516
    li	$a1,0x8146
    bal __glkonim_GetTexFilterFuncSGIS
    li	$a0,3553
    # Line 7331
    # lw $t9, -31716($gp) # &__glkonim_GetDetailTexFuncSGIS
    addiu	$a1,$s0,1032
    bal __glkonim_GetDetailTexFuncSGIS
    li	$a0,3553
    # Line 7332
    lw	$s1,1148($s2)
    # Line 7333
    # lw $t9, -31708($gp) # &__glkonim_GetSharpenTexFuncSGIS
    # Line 7332
    sll	$s1,$s1,0x3
    addu	$s1,$s0,$s1
    # Line 7333
    li	$a0,3552
    # Line 7332
    addiu	$s1,$s1,1032
    # Line 7333
    bal __glkonim_GetSharpenTexFuncSGIS
    move	$a1,$s1
    # Line 7334
    lw	$t8,1152($s2)
    # Line 7335
    # lw $t9, -31708($gp) # &__glkonim_GetSharpenTexFuncSGIS
    # Line 7334
    sll	$t8,$t8,0x3
    # Line 7335
    li	$a0,3553
    # Line 7334
    addu	$s1,$s1,$t8
    # Line 7335
    bal __glkonim_GetSharpenTexFuncSGIS
    move	$a1,$s1
    # Line 7337
    # lw $t9, -31708($gp) # &__glkonim_GetSharpenTexFuncSGIS
    # Line 7336
    lw	$a1,1156($s2)
    # Line 7337
    li	$a0,0x806f
    # Line 7336
    sll	$a1,$a1,0x3
    ld	$s0,8($sp)
    # Line 7337
    bal __glkonim_GetSharpenTexFuncSGIS
    # Line 7336
    addu	$a1,$s1,$a1
    ld	$s1,48($sp)
    ld	$s2,32($sp)
    # Line 7341
    ld	$gp,24($sp)
    ld	$ra,56($sp)
    # Line 7339
    addiu	$a2,$s0,1
    # Line 7341
    ld	$s0,0($sp)
    # Line 7339
    sw	$a2,31660($s3)
    # Line 7341
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9751c0:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9751cc:
    # Line 7294
    lw	$a2,3776($s3)
    sll	$a1,$a2,0x3
    addu	$a1,$a1,$a2
    lw	$t9,0($s3)
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$a2
    move	$a0,$s3
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    jal	__glkonim_GetSharpenTexFuncSGIS
    sll	$a1,$a1,0x2
    move	$a0,$v0
    b	.L0d974fcc
    sw	$v0,31656($s3)
.L0d975204:
    # Line 7287
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s3,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9751c0
    ld	$ra,56($sp)
.end __glKonPushTextureAttrib

# Function: __glKonPopTextureAttrib
# Declared: Line 7344 (Source lines: 7345-7390)
# Address: 0x0d975220 - 0x0d975408 (Size: 488 bytes, Frame: 224)
.globl __glKonPopTextureAttrib
.ent __glKonPopTextureAttrib
__glKonPopTextureAttrib:
    # Line 7353
    lw	$a0,4112($zero)
    # Line 7345
    addiu	$sp,$sp,-96
    sd	$s2,16($sp)
    sd	$s3,24($sp)
    sd	$ra,40($sp)
    sd	$s4,48($sp)
    sd	$s1,64($sp)
    sd	$s7,80($sp)
    sd	$s0,56($sp)
    # Line 7353
    lw	$at,4120($zero)
    # Line 7345
    lui	$v0,0x12
    sd	$s8,0($sp)
    # Line 7353
    li	$s8,1
    sd	$s6,32($sp)
    # Line 7345
    addiu	$v0,$v0,-16968
    sd	$gp,8($sp)
    # Line 7353
    beq	$at,$s8,.L0d9753f4
    # Line 7345
    addu	$gp,$t9,$v0
    # Line 7360
    lw	$v1,31660($a0)
    addiu	$v1,$v1,-1
    # Line 7361
    sll	$t8,$v1,0x3
    addu	$t8,$t8,$v1
    sll	$t8,$t8,0x3
    addu	$t8,$t8,$v1
    sll	$t8,$t8,0x2
    addiu	$s6,$a0,31632
    lw	$s4,31656($a0)
    addu	$t8,$t8,$v1
    move	$s0,$zero
    la	$s2,index_2_target_map
    sll	$t8,$t8,0x2
    li	$s7,4
    sd	$s5,72($sp)
    addu	$s4,$s4,$t8
    # Line 7360
    sw	$v1,31660($a0)
    # Line 7361
    move	$s3,$s4
    move	$s1,$s4
.L0d9752b4:
    # Line 7366
    # lw $t9, -31820($gp) # &__glkonim_BindTextureEXT
    lw	$s5,0($s2)
    lw	$a1,1120($s1)
    bal __glkonim_BindTextureEXT
    move	$a0,$s5
    # Line 7367
    # lw $t9, -19588($gp) # &__glKonSetTexParams
    move	$a0,$s6
    move	$a1,$s0
    jal	__glKonSetTexParams
    move	$a2,$s3
    # Line 7368
    # lw $t9, -31740($gp) # &__glkon_EnableTexture
    lw	$a1,1168($s4)
    move	$a0,$s5
    sllv	$a2,$s8,$s0
    bal __glkon_EnableTexture
    and	$a1,$a1,$a2
    # Line 7365
    addiu	$s0,$s0,1
    addiu	$s2,$s2,4
    addiu	$s1,$s1,4
    bne	$s0,$s7,.L0d9752b4
    addiu	$s3,$s3,160
    # Line 7377
    # lw $t9, -31704($gp) # &__glkonim_TexFilterFuncSGIS
    li	$a2,129
    # Line 7376
    lw	$s0,1164($s4)
    # Line 7377
    li	$a1,0x8146
    li	$a0,3552
    bal __glkonim_TexFilterFuncSGIS
    move	$a3,$s0
    # Line 7379
    # lw $t9, -31704($gp) # &__glkonim_TexFilterFuncSGIS
    li	$a2,129
    li	$a1,0x8146
    li	$a0,3553
    # Line 7378
    addiu	$s0,$s0,516
    # Line 7379
    bal __glkonim_TexFilterFuncSGIS
    move	$a3,$s0
    # Line 7381
    # lw $t9, -31720($gp) # &__glkonim_DetailTexFuncSGIS
    li	$a0,3553
    # Line 7380
    addiu	$s0,$s0,516
    # Line 7381
    lw	$a1,1148($s4)
    bal __glkonim_DetailTexFuncSGIS
    move	$a2,$s0
    # Line 7382
    lw	$a3,1148($s4)
    # Line 7383
    # lw $t9, -31712($gp) # &__glkonim_SharpenTexFuncSGIS
    # Line 7382
    sll	$a3,$a3,0x3
    # Line 7383
    li	$a0,3552
    # Line 7382
    addu	$s0,$s0,$a3
    # Line 7383
    lw	$a1,1152($s4)
    bal __glkonim_SharpenTexFuncSGIS
    move	$a2,$s0
    # Line 7384
    lw	$a4,1152($s4)
    # Line 7385
    # lw $t9, -31712($gp) # &__glkonim_SharpenTexFuncSGIS
    # Line 7384
    sll	$a4,$a4,0x3
    # Line 7385
    li	$a0,3553
    # Line 7384
    addu	$s0,$s0,$a4
    # Line 7385
    lw	$a1,1156($s4)
    bal __glkonim_SharpenTexFuncSGIS
    move	$a2,$s0
    # Line 7387
    # lw $t9, -31712($gp) # &__glkonim_SharpenTexFuncSGIS
    # Line 7386
    lw	$a2,1160($s4)
    # Line 7387
    li	$a0,0x806f
    move	$a1,$a2
    sll	$a2,$a2,0x3
    bal __glkonim_SharpenTexFuncSGIS
    addu	$a2,$s0,$a2
    # Line 7389
    # lw $t9, -18580($gp) # &free
    jal	free
    lw	$a0,1164($s4)
.L0d9753c0:
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s6,32($sp)
    ld	$s4,48($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s5,72($sp)
    ld	$ra,40($sp)
    ld	$s7,80($sp)
    ld	$s8,0($sp)
    # Line 7390
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9753f4:
    # Line 7353
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9753c0
    sd	$s5,72($sp)
.end __glKonPopTextureAttrib

# Function: __glkonlc_TexImage
# Declared: Line 7406 (Source lines: 7411-7485)
# Address: 0x0d975410 - 0x0d975534 (Size: 292 bytes, Frame: 144)
.ent __glkonlc_TexImage
__glkonlc_TexImage:
    # Line 7411
    addiu	$sp,$sp,-144
    sd	$a0,0($sp)
    sd	$a2,32($sp)
    sd	$a3,24($sp)
    sd	$a7,8($sp)
    sd	$s2,64($sp)
    sd	$s0,48($sp)
    move	$s0,$a1
    sd	$s3,40($sp)
    # Line 7459
    li	$at,0x8063
    # Line 7411
    move	$s3,$a4
    move	$s2,$a5
    sd	$s1,56($sp)
    move	$s1,$a6
    # Line 7459
    beq	$a1,$at,.L0d975464
    sd	$ra,72($sp)
    li	$v0,0x8064
    beq	$a1,$v0,.L0d975464
    li	$v1,0x8070
    bne	$a1,$v1,.L0d97546c
    # Line 7464
    nop	# was lw $t9, -28020($gp) # &__glImageSize3D
.L0d975464:
    # Line 7462
    b	.L0d975488
    move	$a4,$zero
.L0d97546c:
    # Line 7464
    move	$a1,$a5
    move	$a0,$a4
    lw	$a4,156($sp)
    move	$a2,$a6
    jal	__glImageSize3D
    lw	$a3,148($sp)
    move	$a4,$v0
.L0d975488:
    # Line 7467
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a2,-4
    addiu	$a0,$a4,3
    li	$a1,208
    and	$a0,$a0,$a2
    sd	$a0,16($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    beqz	$v0,.L0d975518
    nop
    # Line 7475
    sw	$s1,20($v0)
    # Line 7474
    sw	$s2,16($v0)
    # Line 7473
    sw	$s3,12($v0)
    # Line 7470
    sw	$s0,0($v0)
    # Line 7476
    ld	$a6,8($sp)
    # Line 7479
    ld	$a3,16($sp)
    sw	$a3,36($v0)
    # Line 7476
    sw	$a6,24($v0)
    # Line 7471
    ld	$a4,32($sp)
    # Line 7472
    ld	$a5,24($sp)
    sw	$a5,8($v0)
    # Line 7478
    lw	$a5,156($sp)
    # Line 7471
    sw	$a4,4($v0)
    # Line 7477
    lw	$a4,148($sp)
    sw	$a4,28($v0)
    # Line 7481
    blez	$a3,.L0d975518
    # Line 7478
    sw	$a5,32($v0)
    # Line 7481
    lw	$a6,164($sp)
    beqz	$a6,.L0d975518
    # Line 7482
    nop	# was lw $t9, -28016($gp) # &__glFillImage3D
    move	$a1,$s3
    move	$a2,$s2
    move	$a3,$s1
    ld	$a0,0($sp)
    jal	__glFillImage3D
    addiu	$a7,$v0,40
.L0d975518:
    ld	$s3,40($sp)
    ld	$ra,72($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    # Line 7485
    jr	$ra
    addiu	$sp,$sp,144
.end __glkonlc_TexImage

# Function: __glkonlc_TexImage1D
# Declared: Line 7488 (Source lines: 7492-7508)
# Address: 0x0d975540 - 0x0d975620 (Size: 224 bytes, Frame: 208)
.globl __glkonlc_TexImage1D
.ent __glkonlc_TexImage1D
__glkonlc_TexImage1D:
    # Line 7492
    addiu	$sp,$sp,-80
    move	$t2,$a4
    move	$t3,$a3
    sd	$a7,48($sp)
    move	$t8,$a2
    move	$t1,$a0
    sd	$a6,40($sp)
    sd	$a5,32($sp)
    # Line 7495
    li	$at,3552
    # Line 7492
    lui	$v0,0x12
    # Line 7495
    li	$v1,0x8063
    sd	$ra,72($sp)
    # Line 7492
    addiu	$v0,$v0,-17768
    sd	$gp,56($sp)
    # Line 7495
    beq	$a0,$at,.L0d9755d0
    # Line 7492
    addu	$gp,$t9,$v0
    # Line 7495
    beq	$a0,$v1,.L0d9755a0
    # Line 7505
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,72($sp)
.L0d975594:
    # Line 7508
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9755a0:
    # Line 7501
    ld	$a7,32($sp)
    move	$a6,$a4
    ld	$a4,40($sp)
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    ld	$a5,48($sp)
    sw	$a5,12($sp)
    li	$a5,1
    sw	$a4,4($sp)
    bal __glkonim_TexImage
    li	$a4,1
    b	.L0d975594
    ld	$ra,72($sp)
.L0d9755d0:
    # Line 7497
    lw	$a0,4112($zero)
    ld	$ra,48($sp)
    ld	$t0,32($sp)
    ld	$t2,40($sp)
    sw	$t2,12($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    li	$a6,1
    li	$a5,1
    sd	$a1,64($sp)
    move	$a1,$t1
    sw	$t0,4($sp)
    addiu	$t9,$t9,21520
    move	$a7,$a4
    move	$a4,$a3
    sw	$ra,20($sp)
    move	$a3,$a2
    bal __glKonPopTextureAttrib
    ld	$a2,64($sp)
    b	.L0d975594
    ld	$ra,72($sp)
.end __glkonlc_TexImage1D

# Function: __glkonlc_TexImage2D
# Declared: Line 7511 (Source lines: 7516-7532)
# Address: 0x0d975620 - 0x0d9756fc (Size: 220 bytes, Frame: 144)
.globl __glkonlc_TexImage2D
.ent __glkonlc_TexImage2D
__glkonlc_TexImage2D:
    # Line 7516
    addiu	$sp,$sp,-144
    move	$t2,$a4
    move	$t3,$a3
    sd	$a7,48($sp)
    move	$t8,$a2
    move	$t1,$a0
    sd	$a6,40($sp)
    sd	$a5,32($sp)
    # Line 7519
    li	$at,3553
    # Line 7516
    lui	$v0,0x12
    # Line 7519
    li	$v1,0x8064
    sd	$ra,72($sp)
    # Line 7516
    addiu	$v0,$v0,-17992
    sd	$gp,56($sp)
    # Line 7519
    beq	$a0,$at,.L0d9756ac
    # Line 7516
    addu	$gp,$t9,$v0
    # Line 7519
    beq	$a0,$v1,.L0d975684
    # Line 7525
    ld	$a7,40($sp)
    # Line 7529
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,72($sp)
.L0d975678:
    # Line 7532
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d975684:
    # Line 7525
    ld	$a6,32($sp)
    ld	$t1,48($sp)
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    sw	$t1,4($sp)
    lw	$t0,148($sp)
    li	$a5,1
    bal __glkonim_TexImage
    sw	$t0,12($sp)
    b	.L0d975678
    ld	$ra,72($sp)
.L0d9756ac:
    # Line 7521
    ld	$a7,32($sp)
    lw	$a0,4112($zero)
    sd	$a1,64($sp)
    ld	$at,40($sp)
    ld	$ra,48($sp)
    sw	$ra,12($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    li	$a6,1
    sw	$at,4($sp)
    move	$a5,$a4
    lw	$t2,148($sp)
    addiu	$t9,$t9,21520
    move	$a4,$a3
    move	$a3,$a2
    ld	$a2,64($sp)
    move	$a1,$t1
    bal __glKonPopTextureAttrib
    sw	$t2,20($sp)
    b	.L0d975678
    ld	$ra,72($sp)
.end __glkonlc_TexImage2D

# Function: __glkonlc_TexImage3DEXT
# Declared: Line 7535 (Source lines: 7540-7556)
# Address: 0x0d975700 - 0x0d9757d0 (Size: 208 bytes, Frame: 144)
.globl __glkonlc_TexImage3DEXT
.ent __glkonlc_TexImage3DEXT
__glkonlc_TexImage3DEXT:
    # Line 7540
    move	$t2,$a4
    move	$t3,$a3
    move	$t8,$a2
    addiu	$sp,$sp,-144
    # Line 7543
    li	$at,0x806f
    # Line 7540
    lui	$v0,0x12
    move	$t1,$a0
    sd	$ra,72($sp)
    addiu	$v0,$v0,-18216
    sd	$gp,40($sp)
    # Line 7543
    beq	$a0,$at,.L0d975774
    # Line 7540
    addu	$gp,$t9,$v0
    # Line 7543
    li	$v1,0x8070
    beq	$a0,$v1,.L0d975754
    # Line 7553
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,72($sp)
.L0d975748:
    # Line 7556
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d975754:
    # Line 7549
    lw	$t1,148($sp)
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    sw	$t1,4($sp)
    lw	$t0,156($sp)
    bal __glkonim_TexImage
    sw	$t0,12($sp)
    b	.L0d975748
    ld	$ra,72($sp)
.L0d975774:
    # Line 7545
    lw	$a0,4112($zero)
    sd	$a1,48($sp)
    sd	$a5,56($sp)
    sd	$a6,64($sp)
    sd	$a7,32($sp)
    ld	$a7,64($sp)
    move	$a5,$a4
    ld	$a6,56($sp)
    move	$a4,$a3
    move	$a3,$a2
    ld	$a2,48($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$at,32($sp)
    sw	$at,4($sp)
    lw	$ra,148($sp)
    addiu	$t9,$t9,21520
    sw	$ra,12($sp)
    lw	$t2,156($sp)
    move	$a1,$t1
    bal __glKonPopTextureAttrib
    sw	$t2,20($sp)
    b	.L0d975748
    ld	$ra,72($sp)
.end __glkonlc_TexImage3DEXT

# Function: __glkonle_TexImage
# Declared: Line 7559 (Source lines: 7560-7572)
# Address: 0x0d9757d0 - 0x0d97586c (Size: 156 bytes, Frame: 144)
.globl __glkonle_TexImage
.ent __glkonle_TexImage
__glkonle_TexImage:
    # Line 7560
    lui	$at,0x12
    addiu	$sp,$sp,-144
    addiu	$at,$at,-18424
    sd	$gp,120($sp)
    addu	$gp,$t9,$at
    # Line 7564
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 7560
    sd	$s0,128($sp)
    move	$s0,$a0
    sd	$ra,112($sp)
    # Line 7564
    jal	__glKonSetPixelLEModes
    addiu	$a0,$sp,16
    # Line 7566
    lw	$a7,28($s0)
    lw	$a6,24($s0)
    lw	$a5,20($s0)
    lw	$a4,16($s0)
    lw	$a3,12($s0)
    lw	$a2,8($s0)
    lw	$a1,4($s0)
    lw	$a0,0($s0)
    # lw $t9, -31804($gp) # &__glkonim_TexImage
    lw	$v0,32($s0)
    addiu	$v1,$s0,40
    sw	$v1,12($sp)
    bal __glkonim_TexImage
    sw	$v0,4($sp)
    # Line 7570
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    jal	__glKonUnsetLEModes
    addiu	$a0,$sp,16
    # Line 7572
    lw	$v0,36($s0)
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,120($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,128($sp)
    addiu	$sp,$sp,144
    jr	$ra
    addiu	$v0,$v0,40
.end __glkonle_TexImage

# Function: __glkonle_TexSubImage1DEXT
# Declared: Line 7576 (Source lines: 7576-7588)
# Address: 0x0d975870 - 0x0d975914 (Size: 164 bytes, Frame: 160)
.globl __glkonle_TexSubImage1DEXT
.ent __glkonle_TexSubImage1DEXT
__glkonle_TexSubImage1DEXT:
    # Line 7576
    lui	$at,0x12
    addiu	$sp,$sp,-160
    addiu	$at,$at,-18584
    sd	$gp,136($sp)
    addu	$gp,$t9,$at
    # Line 7580
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 7576
    sd	$s0,144($sp)
    move	$s0,$a0
    sd	$ra,128($sp)
    # Line 7580
    jal	__glKonSetPixelLEModes
    addiu	$a0,$sp,32
    # Line 7582
    lw	$a5,12($s0)
    lw	$a2,8($s0)
    lw	$a1,4($s0)
    lw	$a0,0($s0)
    lw	$a3,16($s0)
    sw	$a3,4($sp)
    # lw $t9, -31776($gp) # &__glkonim_TexSubImage
    li	$a7,1
    li	$a6,1
    lw	$v0,20($s0)
    move	$a4,$zero
    addiu	$v1,$s0,28
    sw	$v1,20($sp)
    move	$a3,$zero
    bal __glkonim_TexSubImage
    sw	$v0,12($sp)
    # Line 7586
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    jal	__glKonUnsetLEModes
    addiu	$a0,$sp,32
    # Line 7588
    lw	$v0,24($s0)
    ld	$ra,128($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,136($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,144($sp)
    addiu	$sp,$sp,160
    jr	$ra
    addiu	$v0,$v0,28
.end __glkonle_TexSubImage1DEXT

# Function: __glkonle_TexSubImage2DEXT
# Declared: Line 7592 (Source lines: 7592-7604)
# Address: 0x0d975920 - 0x0d9759c4 (Size: 164 bytes, Frame: 160)
.globl __glkonle_TexSubImage2DEXT
.ent __glkonle_TexSubImage2DEXT
__glkonle_TexSubImage2DEXT:
    # Line 7592
    lui	$at,0x12
    addiu	$sp,$sp,-160
    addiu	$at,$at,-18760
    sd	$gp,136($sp)
    addu	$gp,$t9,$at
    # Line 7596
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 7592
    sd	$s0,144($sp)
    move	$s0,$a0
    sd	$ra,128($sp)
    # Line 7596
    jal	__glKonSetPixelLEModes
    addiu	$a0,$sp,32
    # Line 7598
    lw	$a6,20($s0)
    lw	$a5,16($s0)
    lw	$a3,12($s0)
    lw	$a2,8($s0)
    lw	$a1,4($s0)
    lw	$a0,0($s0)
    lw	$a4,24($s0)
    sw	$a4,4($sp)
    # lw $t9, -31776($gp) # &__glkonim_TexSubImage
    lw	$v0,28($s0)
    li	$a7,1
    addiu	$v1,$s0,36
    sw	$v1,20($sp)
    move	$a4,$zero
    bal __glkonim_TexSubImage
    sw	$v0,12($sp)
    # Line 7602
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    jal	__glKonUnsetLEModes
    addiu	$a0,$sp,32
    # Line 7604
    lw	$v0,32($s0)
    ld	$ra,128($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,136($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,144($sp)
    addiu	$sp,$sp,160
    jr	$ra
    addiu	$v0,$v0,36
.end __glkonle_TexSubImage2DEXT

# Function: __glkonle_TexSubImage3DEXT
# Declared: Line 7608 (Source lines: 7608-7620)
# Address: 0x0d9759d0 - 0x0d975a74 (Size: 164 bytes, Frame: 160)
.globl __glkonle_TexSubImage3DEXT
.ent __glkonle_TexSubImage3DEXT
__glkonle_TexSubImage3DEXT:
    # Line 7608
    lui	$at,0x12
    addiu	$sp,$sp,-160
    addiu	$at,$at,-18936
    sd	$gp,136($sp)
    addu	$gp,$t9,$at
    # Line 7612
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 7608
    sd	$s0,144($sp)
    move	$s0,$a0
    sd	$ra,128($sp)
    # Line 7612
    jal	__glKonSetPixelLEModes
    addiu	$a0,$sp,32
    # Line 7614
    lw	$a7,28($s0)
    lw	$a6,24($s0)
    lw	$a5,20($s0)
    lw	$a4,16($s0)
    lw	$a3,12($s0)
    lw	$a2,8($s0)
    lw	$a1,4($s0)
    lw	$a0,0($s0)
    lw	$t0,32($s0)
    sw	$t0,4($sp)
    # lw $t9, -31776($gp) # &__glkonim_TexSubImage
    lw	$v0,36($s0)
    addiu	$v1,$s0,44
    sw	$v1,20($sp)
    bal __glkonim_TexSubImage
    sw	$v0,12($sp)
    # Line 7618
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    jal	__glKonUnsetLEModes
    addiu	$a0,$sp,32
    # Line 7620
    lw	$v0,40($s0)
    ld	$ra,128($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,136($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,144($sp)
    addiu	$sp,$sp,160
    jr	$ra
    addiu	$v0,$v0,44
.end __glkonle_TexSubImage3DEXT

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4090000000000000:
    .word 0x40900000, 0x00000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_427c0000:
    .word 0x427c0000
_lit_42800000:
    .word 0x42800000
_lit_43000000:
    .word 0x43000000
_lit_43010000:
    .word 0x43010000
_lit_437f0000:
    .word 0x437f0000
_lit_44000000:
    .word 0x44000000

