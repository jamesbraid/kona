# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_zspan.ma
# Category: mips
# Compiler Options: 
# Total Functions: 4

.text

# Function: __glDepthTestSpan_asm
# Declared: Line 42 (Source lines: 42-592)
# Address: 0x0da7bbc0 - 0x0da7bf70 (Size: 944 bytes, Frame: 0)
.globl __glDepthTestSpan_asm
.ent __glDepthTestSpan_asm
__glDepthTestSpan_asm:
    # Line 42
    addiu	$sp,$sp,-64
    # Line 60
    move	$t8,$ra
    # Line 43
    sw	$s0,56($sp)
    # Line 63
    move	$a6,$zero
    # Line 44
    sw	$s1,48($sp)
    # Line 49
    lw	$v1,31372($a0)
    # Line 51
    lw	$t3,30380($a0)
    # Line 55
    lw	$a3,30304($a0)
    # Line 48
    lw	$v0,30260($a0)
    # Line 50
    lw	$a1,31364($a0)
    # Line 53
    lw	$a2,30384($a0)
    # Line 52
    srav	$t3,$t3,$v1
    # Line 54
    lw	$t2,30496($a0)
    # Line 62
    move	$t9,$a3
    # Line 56
    lw	$a7,12292($a0)
    # Line 57
    lw	$s0,30528($a0)
.L0da7bc00:
    # Line 68
    beqz	$t9,.L0da7bc58
    # Line 69
    move	$s1,$t9
    # Line 71
    sltiu	$at,$s1,33
    bnez	$at,.L0da7bc18
    # Line 72
    move	$a4,$zero
    # Line 73
    li	$s1,32
.L0da7bc18:
    # Line 76
    sub	$t9,$t9,$s1
    # Line 77
    srlv	$t0,$v0,$v1
    # Line 78
    addu	$t0,$t0,$a1
    # Line 79
    lui	$a5,0x8000
.L0da7bc28:
    # Line 82
    blez	$s1,.L0da7bc44
    # Line 85
    lw	$t1,0($t2)
    # Line 86
    jalr	$a7
    # Line 87
    addi	$s1,$s1,-1
    # Line 93
    addiu	$t2,$t2,4
    # Line 96
    b	.L0da7bc28
    # Line 95
    srl	$a5,$a5,0x1
.L0da7bc44:
    # Line 98
    nor	$a4,$a4,$zero
    # Line 100
    addi	$s0,$s0,4
    # Line 99
    sw	$a4,-4($s0)
    # Line 102
    b	.L0da7bc00
    # Line 101
    addu	$v0,$v0,$a2
.L0da7bc58:
    # Line 107
    lw	$s1,48($sp)
    # Line 108
    lw	$s0,56($sp)
    # Line 112
    bnez	$a6,.L0da7bc70
    # Line 109
    addiu	$sp,$sp,64
    # Line 116
    jr	$t8
    # Line 115
    li	$v0,0
.L0da7bc70:
    # Line 120
    beq	$a6,$a3,.L0da7bc80
    nop
    # Line 122
    jr	$t8
    # Line 121
    li	$v0,1
.L0da7bc80:
    # Line 126
    li	$v0,1
    # Line 128
    jr	$t8
    # Line 127
    sb	$v0,30532($a0)
    # Line 148
    addi	$a6,$a6,1
    # Line 149
    addu	$t0,$t0,$t3
    # Line 150
    jr	$ra
    # Line 151
    or	$a4,$a4,$a5
    # Line 160
    sltu	$at,$t1,$t0
    bnez	$at,.L0da7bcb4
    # Line 161
    nop
    # Line 164
    sw	$t0,0($t2)
    # Line 165
    jr	$ra
    # Line 166
    addu	$t0,$t0,$t3
.L0da7bcb4:
    # Line 170
    addi	$a6,$a6,1
    # Line 171
    addu	$t0,$t0,$t3
    # Line 172
    jr	$ra
    # Line 173
    or	$a4,$a4,$a5
    # Line 182
    slt	$at,$t1,$t0
    bnez	$at,.L0da7bcdc
    # Line 183
    nop
    # Line 186
    sw	$t0,0($t2)
    # Line 187
    jr	$ra
    # Line 188
    addu	$t0,$t0,$t3
.L0da7bcdc:
    # Line 192
    addi	$a6,$a6,1
    # Line 193
    addu	$t0,$t0,$t3
    # Line 194
    jr	$ra
    # Line 195
    or	$a4,$a4,$a5
    # Line 204
    sltu	$at,$t0,$t1
    beqz	$at,.L0da7bd04
    # Line 205
    nop
    # Line 208
    sw	$t0,0($t2)
    # Line 209
    jr	$ra
    # Line 210
    addu	$t0,$t0,$t3
.L0da7bd04:
    # Line 214
    addi	$a6,$a6,1
    # Line 215
    addu	$t0,$t0,$t3
    # Line 216
    jr	$ra
    # Line 217
    or	$a4,$a4,$a5
    # Line 226
    slt	$at,$t0,$t1
    beqz	$at,.L0da7bd2c
    # Line 227
    nop
    # Line 230
    sw	$t0,0($t2)
    # Line 231
    jr	$ra
    # Line 232
    addu	$t0,$t0,$t3
.L0da7bd2c:
    # Line 236
    addi	$a6,$a6,1
    # Line 237
    addu	$t0,$t0,$t3
    # Line 238
    jr	$ra
    # Line 239
    or	$a4,$a4,$a5
    # Line 248
    bne	$t0,$t1,.L0da7bd50
    # Line 249
    nop
    # Line 252
    sw	$t0,0($t2)
    # Line 253
    jr	$ra
    # Line 254
    addu	$t0,$t0,$t3
.L0da7bd50:
    # Line 258
    addi	$a6,$a6,1
    # Line 259
    addu	$t0,$t0,$t3
    # Line 260
    jr	$ra
    # Line 261
    or	$a4,$a4,$a5
    # Line 270
    sltu	$at,$t1,$t0
    beqz	$at,.L0da7bd78
    # Line 271
    nop
    # Line 274
    sw	$t0,0($t2)
    # Line 275
    jr	$ra
    # Line 276
    addu	$t0,$t0,$t3
.L0da7bd78:
    # Line 280
    addi	$a6,$a6,1
    # Line 281
    addu	$t0,$t0,$t3
    # Line 282
    jr	$ra
    # Line 283
    or	$a4,$a4,$a5
    # Line 292
    slt	$at,$t1,$t0
    beqz	$at,.L0da7bda0
    # Line 293
    nop
    # Line 296
    sw	$t0,0($t2)
    # Line 297
    jr	$ra
    # Line 298
    addu	$t0,$t0,$t3
.L0da7bda0:
    # Line 302
    addi	$a6,$a6,1
    # Line 303
    addu	$t0,$t0,$t3
    # Line 304
    jr	$ra
    # Line 305
    or	$a4,$a4,$a5
    # Line 314
    beq	$t0,$t1,.L0da7bdc4
    # Line 315
    nop
    # Line 318
    sw	$t0,0($t2)
    # Line 319
    jr	$ra
    # Line 320
    addu	$t0,$t0,$t3
.L0da7bdc4:
    # Line 324
    addi	$a6,$a6,1
    # Line 325
    addu	$t0,$t0,$t3
    # Line 326
    jr	$ra
    # Line 327
    or	$a4,$a4,$a5
    # Line 336
    sltu	$at,$t0,$t1
    bnez	$at,.L0da7bdec
    # Line 337
    nop
    # Line 340
    sw	$t0,0($t2)
    # Line 341
    jr	$ra
    # Line 342
    addu	$t0,$t0,$t3
.L0da7bdec:
    # Line 346
    addi	$a6,$a6,1
    # Line 347
    addu	$t0,$t0,$t3
    # Line 348
    jr	$ra
    # Line 349
    or	$a4,$a4,$a5
    # Line 358
    slt	$at,$t0,$t1
    bnez	$at,.L0da7be14
    # Line 359
    nop
    # Line 362
    sw	$t0,0($t2)
    # Line 363
    jr	$ra
    # Line 364
    addu	$t0,$t0,$t3
.L0da7be14:
    # Line 368
    addi	$a6,$a6,1
    # Line 369
    addu	$t0,$t0,$t3
    # Line 370
    jr	$ra
    # Line 371
    or	$a4,$a4,$a5
    # Line 380
    sw	$t0,0($t2)
    # Line 381
    jr	$ra
    # Line 382
    addu	$t0,$t0,$t3
    # Line 391
    sltu	$at,$t1,$t0
    bnez	$at,.L0da7be44
    # Line 392
    addu	$t0,$t0,$t3
    # Line 395
    jr	$ra
    # Line 396
    nop
.L0da7be44:
    # Line 400
    addi	$a6,$a6,1
    # Line 401
    jr	$ra
    # Line 402
    or	$a4,$a4,$a5
    # Line 411
    slt	$at,$t1,$t0
    bnez	$at,.L0da7be64
    # Line 412
    addu	$t0,$t0,$t3
    # Line 415
    jr	$ra
    # Line 416
    nop
.L0da7be64:
    # Line 420
    addi	$a6,$a6,1
    # Line 421
    jr	$ra
    # Line 422
    or	$a4,$a4,$a5
    # Line 431
    sltu	$at,$t0,$t1
    beqz	$at,.L0da7be84
    # Line 432
    addu	$t0,$t0,$t3
    # Line 435
    jr	$ra
    # Line 436
    nop
.L0da7be84:
    # Line 440
    addi	$a6,$a6,1
    # Line 441
    jr	$ra
    # Line 442
    or	$a4,$a4,$a5
    # Line 451
    slt	$at,$t0,$t1
    beqz	$at,.L0da7bea4
    # Line 452
    addu	$t0,$t0,$t3
    # Line 455
    jr	$ra
    # Line 456
    nop
.L0da7bea4:
    # Line 460
    addi	$a6,$a6,1
    # Line 461
    jr	$ra
    # Line 462
    or	$a4,$a4,$a5
    # Line 471
    bne	$t0,$t1,.L0da7bec0
    # Line 472
    addu	$t0,$t0,$t3
    # Line 475
    jr	$ra
    # Line 476
    nop
.L0da7bec0:
    # Line 480
    addi	$a6,$a6,1
    # Line 481
    jr	$ra
    # Line 482
    or	$a4,$a4,$a5
    # Line 491
    sltu	$at,$t1,$t0
    beqz	$at,.L0da7bee0
    # Line 492
    addu	$t0,$t0,$t3
    # Line 495
    jr	$ra
    # Line 496
    nop
.L0da7bee0:
    # Line 500
    addi	$a6,$a6,1
    # Line 501
    jr	$ra
    # Line 502
    or	$a4,$a4,$a5
    # Line 511
    slt	$at,$t1,$t0
    beqz	$at,.L0da7bf00
    # Line 512
    addu	$t0,$t0,$t3
    # Line 515
    jr	$ra
    # Line 516
    nop
.L0da7bf00:
    # Line 520
    addi	$a6,$a6,1
    # Line 521
    jr	$ra
    # Line 522
    or	$a4,$a4,$a5
    # Line 531
    beq	$t0,$t1,.L0da7bf1c
    # Line 532
    addu	$t0,$t0,$t3
    # Line 535
    jr	$ra
    # Line 536
    nop
.L0da7bf1c:
    # Line 540
    addi	$a6,$a6,1
    # Line 541
    jr	$ra
    # Line 542
    or	$a4,$a4,$a5
    # Line 551
    sltu	$at,$t0,$t1
    bnez	$at,.L0da7bf3c
    # Line 552
    addu	$t0,$t0,$t3
    # Line 555
    jr	$ra
    # Line 556
    nop
.L0da7bf3c:
    # Line 560
    addi	$a6,$a6,1
    # Line 561
    jr	$ra
    # Line 562
    or	$a4,$a4,$a5
    # Line 571
    slt	$at,$t0,$t1
    bnez	$at,.L0da7bf5c
    # Line 572
    addu	$t0,$t0,$t3
    # Line 575
    jr	$ra
    # Line 576
    nop
.L0da7bf5c:
    # Line 580
    addi	$a6,$a6,1
    # Line 581
    jr	$ra
    # Line 582
    or	$a4,$a4,$a5
    # Line 591
    jr	$ra
    # Line 592
    addu	$t0,$t0,$t3
.end __glDepthTestSpan_asm

# Function: __glDepthTestStippledSpan_asm
# Declared: Line 610 (Source lines: 610-699)
# Address: 0x0da7bf70 - 0x0da7c054 (Size: 228 bytes, Frame: 0)
.globl __glDepthTestStippledSpan_asm
.ent __glDepthTestStippledSpan_asm
__glDepthTestStippledSpan_asm:
    # Line 610
    addiu	$sp,$sp,-64
    # Line 629
    move	$a7,$ra
    # Line 611
    sw	$s0,56($sp)
    # Line 632
    move	$a6,$zero
    # Line 612
    sw	$s1,48($sp)
    # Line 618
    lw	$t9,31372($a0)
    # Line 621
    lw	$t3,30380($a0)
    # Line 624
    lw	$a1,30304($a0)
    # Line 617
    lw	$t8,30260($a0)
    # Line 619
    lw	$v0,31364($a0)
    # Line 620
    lw	$t2,30496($a0)
    # Line 622
    srav	$t3,$t3,$t9
    # Line 623
    lw	$v1,30384($a0)
    # Line 631
    move	$s0,$a1
    # Line 625
    lw	$a2,12292($a0)
    # Line 626
    lw	$a3,30528($a0)
.L0da7bfb0:
    # Line 635
    beqz	$s0,.L0da7c034
    nop
    # Line 637
    move	$s1,$s0
    # Line 639
    sltiu	$at,$s1,33
    bnez	$at,.L0da7bfcc
    nop
    # Line 641
    li	$s1,32
.L0da7bfcc:
    # Line 645
    srlv	$t0,$t8,$t9
    # Line 648
    lw	$a0,0($a3)
    # Line 644
    sub	$s0,$s0,$s1
    # Line 646
    addu	$t0,$t0,$v0
    # Line 649
    move	$a4,$zero
    # Line 651
    lui	$a5,0x8000
.L0da7bfe4:
    # Line 654
    addi	$s1,$s1,-1
    # Line 655
    bltz	$s1,.L0da7c01c
    nop
    # Line 657
    and	$t1,$a0,$a5
    # Line 658
    bnez	$t1,.L0da7c008
    nop
    # Line 661
    addu	$t0,$t0,$t3
    # Line 663
    b	.L0da7c010
    # Line 662
    addi	$a6,$a6,1
.L0da7c008:
    # Line 667
    jalr	$a2
    # Line 666
    lw	$t1,0($t2)
.L0da7c010:
    # Line 672
    addiu	$t2,$t2,4
    # Line 675
    b	.L0da7bfe4
    # Line 673
    srl	$a5,$a5,0x1
.L0da7c01c:
    # Line 677
    nor	$a4,$a4,$zero
    # Line 680
    addi	$a3,$a3,4
    # Line 678
    and	$a4,$a4,$a0
    # Line 681
    addu	$t8,$t8,$v1
    # Line 682
    b	.L0da7bfb0
    # Line 679
    sw	$a4,-4($a3)
.L0da7c034:
    # Line 687
    lw	$s1,48($sp)
    # Line 688
    lw	$s0,56($sp)
    # Line 692
    beq	$a6,$a1,.L0da7c04c
    # Line 689
    addiu	$sp,$sp,64
    # Line 694
    jr	$a7
    # Line 693
    li	$v0,0
.L0da7c04c:
    # Line 699
    jr	$a7
    # Line 698
    li	$v0,1
.end __glDepthTestStippledSpan_asm

# Function: __glDepthTestStencilSpan_asm
# Declared: Line 715 (Source lines: 715-839)
# Address: 0x0da7c054 - 0x0da7c180 (Size: 300 bytes, Frame: 0)
.globl __glDepthTestStencilSpan_asm
.ent __glDepthTestStencilSpan_asm
__glDepthTestStencilSpan_asm:
    # Line 715
    addiu	$sp,$sp,-64
    # Line 739
    move	$a1,$ra
    # Line 716
    sw	$s0,56($sp)
    # Line 742
    move	$a6,$zero
    # Line 717
    sw	$s1,48($sp)
    # Line 718
    sw	$s2,40($sp)
    # Line 719
    sw	$s3,32($sp)
    # Line 720
    sw	$s4,24($sp)
    # Line 725
    lw	$s0,31372($a0)
    # Line 731
    lw	$t3,30380($a0)
    # Line 734
    lw	$t9,30304($a0)
    # Line 724
    lw	$a7,30260($a0)
    # Line 726
    lw	$s1,31364($a0)
    # Line 727
    lw	$t2,30496($a0)
    # Line 732
    srav	$t3,$t3,$s0
    # Line 728
    lw	$s2,30508($a0)
    # Line 741
    move	$a2,$t9
    # Line 729
    lw	$s3,31244($a0)
    # Line 730
    lw	$s4,31248($a0)
    # Line 733
    lw	$t8,30384($a0)
    # Line 735
    lw	$v0,12292($a0)
    # Line 736
    lw	$v1,30528($a0)
.L0da7c0ac:
    # Line 745
    beqz	$a2,.L0da7c140
    nop
    # Line 747
    move	$a3,$a2
    # Line 749
    sltiu	$at,$a3,33
    bnez	$at,.L0da7c0c8
    nop
    # Line 751
    li	$a3,32
.L0da7c0c8:
    # Line 755
    srlv	$t0,$a7,$s0
    # Line 754
    sub	$a2,$a2,$a3
    # Line 756
    addu	$t0,$t0,$s1
    # Line 757
    move	$a4,$zero
    # Line 758
    lui	$a5,0x8000
.L0da7c0dc:
    # Line 761
    addi	$a3,$a3,-1
    # Line 762
    bltz	$a3,.L0da7c12c
    nop
    # Line 765
    jalr	$v0
    # Line 764
    lw	$t1,0($t2)
    # Line 774
    and	$at,$a4,$a5
    # Line 772
    lbu	$t1,0($s2)
    # Line 775
    beqz	$at,.L0da7c10c
    # Line 780
    move	$at,$s3
    # Line 781
    add	$at,$at,$t1
    # Line 783
    b	.L0da7c118
    # Line 782
    lbu	$t1,0($at)
.L0da7c10c:
    # Line 788
    move	$at,$s4
    # Line 789
    add	$at,$at,$t1
    # Line 790
    lbu	$t1,0($at)
.L0da7c118:
    # Line 794
    sb	$t1,0($s2)
    # Line 796
    addiu	$t2,$t2,4
    # Line 797
    addiu	$s2,$s2,1
    # Line 800
    b	.L0da7c0dc
    # Line 798
    srl	$a5,$a5,0x1
.L0da7c12c:
    # Line 802
    nor	$a4,$a4,$zero
    # Line 804
    addi	$v1,$v1,4
    # Line 803
    sw	$a4,-4($v1)
    # Line 806
    b	.L0da7c0ac
    # Line 805
    addu	$a7,$a7,$t8
.L0da7c140:
    # Line 812
    lw	$s4,24($sp)
    # Line 813
    lw	$s3,32($sp)
    # Line 814
    lw	$s2,40($sp)
    # Line 815
    lw	$s1,48($sp)
    # Line 816
    lw	$s0,56($sp)
    # Line 820
    bnez	$a6,.L0da7c164
    # Line 817
    addiu	$sp,$sp,64
    # Line 824
    jr	$a1
    # Line 823
    li	$v0,0
.L0da7c164:
    # Line 829
    beq	$a6,$t9,.L0da7c174
    nop
    # Line 833
    jr	$a1
    # Line 832
    li	$v0,1
.L0da7c174:
    # Line 837
    li	$v0,1
    # Line 839
    jr	$a1
    # Line 838
    sw	$v0,30532($a0)
.end __glDepthTestStencilSpan_asm

# Function: __glDepthTestStencilStippledSpan_asm
# Declared: Line 855 (Source lines: 855-981)
# Address: 0x0da7c180 - 0x0da7c2b8 (Size: 312 bytes, Frame: 0)
.globl __glDepthTestStencilStippledSpan_asm
.ent __glDepthTestStencilStippledSpan_asm
__glDepthTestStencilStippledSpan_asm:
    # Line 855
    addiu	$sp,$sp,-64
    # Line 882
    move	$a6,$zero
    # Line 856
    sw	$s0,56($sp)
    # Line 857
    sw	$s1,48($sp)
    # Line 858
    sw	$s2,40($sp)
    # Line 859
    sw	$s3,32($sp)
    # Line 860
    sw	$s4,24($sp)
    # Line 865
    lw	$s0,31372($a0)
    # Line 871
    lw	$t3,30380($a0)
    # Line 874
    lw	$t9,30304($a0)
    # Line 864
    lw	$a7,30260($a0)
    # Line 866
    lw	$s1,31364($a0)
    # Line 867
    lw	$t2,30496($a0)
    # Line 872
    srav	$t3,$t3,$s0
    # Line 868
    lw	$s2,30508($a0)
    # Line 881
    move	$a1,$t9
    # Line 869
    lw	$s3,31244($a0)
    # Line 870
    lw	$s4,31248($a0)
    # Line 873
    lw	$t8,30384($a0)
    # Line 875
    lw	$v0,12292($a0)
    # Line 876
    lw	$v1,30528($a0)
    # Line 879
    move	$a0,$ra
.L0da7c1d8:
    # Line 885
    beqz	$a1,.L0da7c28c
    nop
    # Line 887
    move	$a2,$a1
    # Line 889
    sltiu	$at,$a2,33
    bnez	$at,.L0da7c1f4
    nop
    # Line 891
    li	$a2,32
.L0da7c1f4:
    # Line 895
    srlv	$t0,$a7,$s0
    # Line 897
    lw	$a3,0($v1)
    # Line 894
    sub	$a1,$a1,$a2
    # Line 896
    addu	$t0,$t0,$s1
    # Line 898
    move	$a4,$zero
    # Line 899
    lui	$a5,0x8000
.L0da7c20c:
    # Line 902
    addi	$a2,$a2,-1
    # Line 903
    bltz	$a2,.L0da7c274
    nop
    # Line 905
    and	$t1,$a3,$a5
    # Line 906
    bnez	$t1,.L0da7c230
    nop
    # Line 909
    addu	$t0,$t0,$t3
    # Line 911
    b	.L0da7c264
    # Line 910
    addi	$a6,$a6,1
.L0da7c230:
    # Line 915
    jalr	$v0
    # Line 914
    lw	$t1,0($t2)
    # Line 924
    and	$at,$a4,$a5
    # Line 922
    lbu	$t1,0($s2)
    # Line 925
    beqz	$at,.L0da7c254
    # Line 930
    move	$at,$s3
    # Line 931
    add	$at,$at,$t1
    # Line 933
    b	.L0da7c260
    # Line 932
    lbu	$t1,0($at)
.L0da7c254:
    # Line 938
    move	$at,$s4
    # Line 939
    add	$at,$at,$t1
    # Line 940
    lbu	$t1,0($at)
.L0da7c260:
    # Line 944
    sb	$t1,0($s2)
.L0da7c264:
    # Line 947
    addiu	$t2,$t2,4
    # Line 948
    addiu	$s2,$s2,1
    # Line 951
    b	.L0da7c20c
    # Line 949
    srl	$a5,$a5,0x1
.L0da7c274:
    # Line 953
    nor	$a4,$a4,$zero
    # Line 956
    addi	$v1,$v1,4
    # Line 954
    and	$a4,$a4,$a3
    # Line 957
    addu	$a7,$a7,$t8
    # Line 958
    b	.L0da7c1d8
    # Line 955
    sw	$a4,-4($v1)
.L0da7c28c:
    # Line 964
    lw	$s4,24($sp)
    # Line 965
    lw	$s3,32($sp)
    # Line 966
    lw	$s2,40($sp)
    # Line 967
    lw	$s1,48($sp)
    # Line 968
    lw	$s0,56($sp)
    # Line 973
    beq	$a6,$t9,.L0da7c2b0
    # Line 969
    addiu	$sp,$sp,64
    # Line 976
    jr	$a0
    # Line 975
    li	$v0,0
.L0da7c2b0:
    # Line 981
    jr	$a0
    # Line 980
    li	$v0,1
.end __glDepthTestStencilStippledSpan_asm

