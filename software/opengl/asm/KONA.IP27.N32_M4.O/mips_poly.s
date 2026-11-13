# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/mips_poly.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 5

.text

# Function: __glRenderFlatTriangle
# Declared: Line 201 (Source lines: 201-484)
# Address: 0x0da7c6d0 - 0x0da7c910 (Size: 576 bytes, Frame: 192)
.globl __glRenderFlatTriangle
.ent __glRenderFlatTriangle
__glRenderFlatTriangle:
    # Line 201
    addiu	$sp,$sp,-64
    # Line 205
    lw	$v0,132($a1)
    # Line 206
    lw	$v1,132($a2)
    # Line 207
    lw	$t0,132($a3)
    # Line 208
    move	$t1,$zero
    # Line 209
    slt	$t2,$v0,$v1
    # Line 210
    beqz	$t2,.L0da7c724
    # Line 212
    slt	$t3,$v1,$t0
    # Line 213
    bnez	$t3,.L0da7c760
    # Line 217
    slt	$a4,$v0,$t0
    # Line 218
    beqz	$a4,.L0da7c710
    # Line 220
    move	$a5,$a2
    # Line 221
    move	$a2,$a3
    # Line 222
    move	$a3,$a5
    # Line 224
    b	.L0da7c760
    # Line 225
    li	$t1,1
.L0da7c710:
    # Line 229
    move	$a6,$a1
    # Line 230
    move	$a1,$a3
    # Line 231
    move	$a3,$a2
    # Line 232
    b	.L0da7c760
    # Line 233
    move	$a2,$a6
.L0da7c724:
    # Line 239
    slt	$a7,$v1,$t0
    # Line 240
    beqz	$a7,.L0da7c754
    # Line 241
    move	$t8,$a1
    # Line 243
    slt	$v1,$v0,$t0
    # Line 244
    beqz	$v1,.L0da7c748
    # Line 246
    move	$a1,$a2
    # Line 247
    move	$a2,$t8
    # Line 249
    b	.L0da7c760
    # Line 250
    li	$t1,1
.L0da7c748:
    # Line 254
    move	$a2,$a3
    # Line 255
    b	.L0da7c760
    # Line 256
    move	$a3,$t8
.L0da7c754:
    # Line 261
    move	$a1,$a3
    # Line 262
    move	$a3,$t8
    # Line 264
    li	$t1,1
.L0da7c760:
    # Line 282
    lwc1	$f0,128($a3)
    # Line 283
    lwc1	$f1,128($a1)
    # Line 284
    lwc1	$f2,128($a2)
    # Line 285
    lwc1	$f3,132($a3)
    # Line 286
    sub.s	$f4,$f1,$f0
    # Line 287
    lwc1	$f5,132($a1)
    # Line 288
    lwc1	$f6,132($a2)
    # Line 289
    sub.s	$f7,$f2,$f0
    # Line 290
    sw	$ra,52($sp)
    # Line 292
    sub.s	$f8,$f5,$f3
    # Line 293
    sw	$a0,32($sp)
    # Line 294
    sw	$a1,36($sp)
    # Line 295
    sub.s	$f9,$f6,$f3
    # Line 296
    mul.s	$f10,$f7,$f8
    # Line 297
    sw	$a2,40($sp)
    # Line 298
    swc1	$f7,30240($a0)
    # Line 302
    mul.s	$f11,$f4,$f9
    # Line 303
    sw	$a3,44($sp)
    # Line 304
    swc1	$f4,30236($a0)
    # Line 305
    swc1	$f8,30244($a0)
    # Line 306
    swc1	$f9,30248($a0)
    # Line 307
    lbu	$a1,30577($a0)
    # Line 308
    lw	$a2,30492($a0)
    # Line 309
    sub.s	$f11,$f11,$f10
    # Line 310
    nop
    # Line 311
    swc1	$f11,30232($a0)
    # Line 315
    nop
    # Line 316
    lw	$a3,30232($a0)
    # Line 317
    nop
    # Line 318
    sll	$t0,$a3,0x1
    # Line 320
    sra	$t2,$a3,0x1f
    # Line 321
    sltiu	$t2,$t2,1
    # Line 327
    xor	$t3,$t2,$t1
    # Line 328
    addu	$t3,$a0,$t3
    # Line 329
    lbu	$t3,30572($t3)
    # Line 331
    beqz	$t0,.L0da7c908
    # Line 332
    sw	$t2,16($sp)
    # Line 333
    beq	$t3,$a1,.L0da7c908
    # Line 339
    andi	$a2,$a2,0x400
    # Line 340
    beqz	$a2,.L0da7c854
    # Line 343
    sll	$a4,$t3,0x2
    # Line 344
    addu	$a4,$a0,$a4
    # Line 351
    lw	$a4,28136($a4)
    # Line 352
    b	.L0da7c85c
    # Line 353
    nop
.L0da7c814:
    # Line 356
    jalr	$t9
    # Line 357
    nop
    # Line 359
    b	.L0da7c88c
    # Line 360
    lw	$a0,32($sp)
.L0da7c824:
    # Line 363
    jalr	$t9
    # Line 364
    nop
    # Line 366
    b	.L0da7c8a8
    # Line 367
    lw	$a0,32($sp)
.L0da7c834:
    # Line 370
    jalr	$t9
    # Line 371
    move	$a1,$a3
    # Line 373
    b	.L0da7c8c4
    # Line 374
    lw	$a0,32($sp)
.L0da7c844:
    # Line 377
    jalr	$t9
    # Line 378
    nop
    # Line 380
    b	.L0da7c8e0
    # Line 381
    lw	$a0,32($sp)
.L0da7c854:
    # Line 387
    lw	$a4,28136($a0)
    # Line 388
    li	$t3,0
.L0da7c85c:
    # Line 398
    lw	$a1,28128($a0)
    # Line 399
    sll	$t3,$t3,0x4
    # Line 400
    addiu	$t3,$t3,144
    # Line 401
    addu	$t3,$a1,$t3
    # Line 402
    sw	$a1,28($sp)
    # Line 407
    lw	$a5,0($a1)
    # Line 408
    lw	$t9,12($a1)
    # Line 409
    andi	$a2,$a4,0x1b
    # Line 410
    nor	$a5,$a5,$zero
    # Line 411
    and	$a5,$a5,$a2
    # Line 415
    bnez	$a5,.L0da7c814
    # Line 416
    sw	$t3,8($a1)
.L0da7c88c:
    # Line 423
    lw	$a1,36($sp)
    # Line 424
    lw	$a2,28132($a0)
    # Line 425
    lw	$a6,0($a1)
    # Line 426
    lw	$t9,12($a1)
    # Line 427
    nor	$a6,$a6,$zero
    # Line 428
    and	$a6,$a6,$a2
    # Line 429
    bnez	$a6,.L0da7c824
.L0da7c8a8:
    # Line 433
    lw	$a3,40($sp)
    # Line 434
    lw	$a2,28132($a0)
    # Line 435
    lw	$a7,0($a3)
    # Line 436
    lw	$t9,12($a3)
    # Line 437
    nor	$a7,$a7,$zero
    # Line 438
    and	$a7,$a7,$a2
    # Line 439
    bnez	$a7,.L0da7c834
.L0da7c8c4:
    # Line 443
    lw	$a1,44($sp)
    # Line 444
    lw	$a2,28132($a0)
    # Line 445
    lw	$t8,0($a1)
    # Line 446
    lw	$t9,12($a1)
    # Line 447
    nor	$t8,$t8,$zero
    # Line 448
    and	$t8,$t8,$a2
    # Line 449
    bnez	$t8,.L0da7c844
.L0da7c8e0:
    # Line 455
    lw	$a3,44($sp)
    # Line 467
    lw	$t9,12136($a0)
    # Line 468
    lw	$a2,40($sp)
    # Line 469
    lw	$a4,16($sp)
    # Line 470
    jalr	$t9
    # Line 471
    lw	$a1,36($sp)
    # Line 477
    lw	$v0,28($sp)
    # Line 478
    lw	$ra,52($sp)
    # Line 479
    addiu	$v1,$v0,144
    # Line 480
    sw	$v1,8($v0)
.L0da7c908:
    # Line 483
    jr	$ra
    # Line 484
    addiu	$sp,$sp,64
.end __glRenderFlatTriangle

# Function: __glRenderFlatOneFaceTriangle
# Declared: Line 495 (Source lines: 495-735)
# Address: 0x0da7c910 - 0x0da7cb24 (Size: 532 bytes, Frame: 192)
.globl __glRenderFlatOneFaceTriangle
.ent __glRenderFlatOneFaceTriangle
__glRenderFlatOneFaceTriangle:
    # Line 495
    addiu	$sp,$sp,-64
    # Line 498
    lw	$t0,132($a1)
    # Line 499
    lw	$t1,132($a2)
    # Line 500
    lw	$t2,132($a3)
    # Line 501
    move	$t3,$zero
    # Line 502
    slt	$a4,$t0,$t1
    # Line 503
    beqz	$a4,.L0da7c964
    # Line 505
    slt	$a5,$t1,$t2
    # Line 506
    bnez	$a5,.L0da7c9a0
    # Line 510
    slt	$a6,$t0,$t2
    # Line 511
    beqz	$a6,.L0da7c950
    # Line 513
    move	$a7,$a2
    # Line 514
    move	$a2,$a3
    # Line 515
    move	$a3,$a7
    # Line 517
    b	.L0da7c9a0
    # Line 518
    li	$t3,1
.L0da7c950:
    # Line 522
    move	$t8,$a1
    # Line 523
    move	$a1,$a3
    # Line 524
    move	$a3,$a2
    # Line 525
    b	.L0da7c9a0
    # Line 526
    move	$a2,$t8
.L0da7c964:
    # Line 530
    slt	$v0,$t1,$t2
    # Line 531
    beqz	$v0,.L0da7c994
    # Line 532
    move	$v1,$a1
    # Line 534
    slt	$a1,$t0,$t2
    # Line 535
    beqz	$a1,.L0da7c988
    # Line 537
    move	$a1,$a2
    # Line 538
    move	$a2,$v1
    # Line 539
    b	.L0da7c9a0
    # Line 540
    li	$t3,1
.L0da7c988:
    # Line 544
    move	$a2,$a3
    # Line 545
    b	.L0da7c9a0
    # Line 546
    move	$a3,$v1
.L0da7c994:
    # Line 551
    move	$a1,$a3
    # Line 552
    move	$a3,$v1
    # Line 553
    li	$t3,1
.L0da7c9a0:
    # Line 569
    lwc1	$f12,128($a3)
    # Line 570
    lwc1	$f13,128($a1)
    # Line 571
    lwc1	$f14,128($a2)
    # Line 572
    lwc1	$f15,132($a3)
    # Line 573
    sub.s	$f16,$f13,$f12
    # Line 574
    lwc1	$f17,132($a1)
    # Line 575
    lwc1	$f18,132($a2)
    # Line 576
    sub.s	$f19,$f14,$f12
    # Line 577
    sw	$ra,52($sp)
    # Line 579
    sub.s	$f0,$f17,$f15
    # Line 580
    sw	$a0,32($sp)
    # Line 581
    sw	$a1,36($sp)
    # Line 582
    sub.s	$f1,$f18,$f15
    # Line 583
    mul.s	$f2,$f19,$f0
    # Line 584
    sw	$a2,40($sp)
    # Line 585
    swc1	$f19,30240($a0)
    # Line 589
    mul.s	$f3,$f16,$f1
    # Line 590
    sw	$a3,44($sp)
    # Line 591
    swc1	$f16,30236($a0)
    # Line 592
    swc1	$f0,30244($a0)
    # Line 593
    swc1	$f1,30248($a0)
    # Line 594
    lbu	$a2,30577($a0)
    # Line 595
    sub.s	$f3,$f3,$f2
    # Line 596
    nop
    # Line 597
    swc1	$f3,30232($a0)
    # Line 601
    nop
    # Line 602
    lw	$a3,30232($a0)
    # Line 603
    nop
    # Line 604
    sll	$t0,$a3,0x1
    # Line 606
    sra	$t1,$a3,0x1f
    # Line 607
    sltiu	$t1,$t1,1
    # Line 618
    xor	$t2,$t1,$t3
    # Line 619
    addu	$t2,$a0,$t2
    # Line 620
    lbu	$t2,30572($t2)
    # Line 621
    beqz	$t0,.L0da7cb1c
    # Line 622
    sw	$t1,16($sp)
    # Line 626
    lw	$a1,28128($a0)
    # Line 627
    beq	$t2,$a2,.L0da7cb1c
    # Line 628
    nop
    # Line 629
    lw	$t3,28136($a0)
    # Line 630
    b	.L0da7ca88
    # Line 631
    nop
.L0da7ca48:
    # Line 634
    jalr	$t9
    # Line 635
    nop
    # Line 637
    b	.L0da7caa8
    # Line 638
    lw	$a0,32($sp)
.L0da7ca58:
    # Line 641
    jalr	$t9
    # Line 642
    nop
    # Line 644
    b	.L0da7cac4
    # Line 645
    lw	$a0,32($sp)
.L0da7ca68:
    # Line 648
    jalr	$t9
    # Line 649
    move	$a1,$a3
    # Line 651
    b	.L0da7cae0
    # Line 652
    lw	$a0,32($sp)
.L0da7ca78:
    # Line 655
    jalr	$t9
    # Line 656
    nop
    # Line 658
    b	.L0da7cafc
    # Line 659
    lw	$a0,32($sp)
.L0da7ca88:
    # Line 664
    sw	$a1,28($sp)
    # Line 669
    lw	$a4,0($a1)
    # Line 670
    lw	$t9,12($a1)
    # Line 671
    andi	$a2,$t3,0x1b
    # Line 672
    nor	$a4,$a4,$zero
    # Line 673
    and	$a4,$a4,$a2
    # Line 677
    bnez	$a4,.L0da7ca48
    # Line 678
    nop
.L0da7caa8:
    # Line 682
    lw	$a1,36($sp)
    # Line 683
    lw	$a2,28132($a0)
    # Line 684
    lw	$a5,0($a1)
    # Line 685
    lw	$t9,12($a1)
    # Line 686
    nor	$a5,$a5,$zero
    # Line 687
    and	$a5,$a5,$a2
    # Line 688
    bnez	$a5,.L0da7ca58
.L0da7cac4:
    # Line 692
    lw	$a3,40($sp)
    # Line 693
    lw	$a2,28132($a0)
    # Line 694
    lw	$a6,0($a3)
    # Line 695
    lw	$t9,12($a3)
    # Line 696
    nor	$a6,$a6,$zero
    # Line 697
    and	$a6,$a6,$a2
    # Line 698
    bnez	$a6,.L0da7ca68
.L0da7cae0:
    # Line 702
    lw	$a1,44($sp)
    # Line 703
    lw	$a2,28132($a0)
    # Line 704
    lw	$a7,0($a1)
    # Line 705
    lw	$t9,12($a1)
    # Line 706
    nor	$a7,$a7,$zero
    # Line 707
    and	$a7,$a7,$a2
    # Line 708
    bnez	$a7,.L0da7ca78
.L0da7cafc:
    # Line 712
    lw	$a3,44($sp)
    # Line 723
    lw	$t9,12136($a0)
    # Line 724
    lw	$a2,40($sp)
    # Line 725
    lw	$a4,16($sp)
    # Line 726
    jalr	$t9
    # Line 727
    lw	$a1,36($sp)
    # Line 731
    lw	$ra,52($sp)
    # Line 732
    nop
.L0da7cb1c:
    # Line 734
    jr	$ra
    # Line 735
    addiu	$sp,$sp,64
.end __glRenderFlatOneFaceTriangle

# Function: __glRenderSmoothTriangle
# Declared: Line 747 (Source lines: 747-1013)
# Address: 0x0da7cb24 - 0x0da7cd64 (Size: 576 bytes, Frame: 192)
.globl __glRenderSmoothTriangle
.ent __glRenderSmoothTriangle
__glRenderSmoothTriangle:
    # Line 747
    addiu	$sp,$sp,-64
    # Line 751
    lw	$t8,132($a1)
    # Line 752
    lw	$v0,132($a2)
    # Line 753
    lw	$v1,132($a3)
    # Line 754
    move	$t0,$zero
    # Line 755
    slt	$t1,$t8,$v0
    # Line 756
    beqz	$t1,.L0da7cb78
    # Line 758
    slt	$t2,$v0,$v1
    # Line 759
    bnez	$t2,.L0da7cbb4
    # Line 763
    slt	$t3,$t8,$v1
    # Line 764
    beqz	$t3,.L0da7cb64
    # Line 766
    move	$a4,$a2
    # Line 767
    move	$a2,$a3
    # Line 768
    move	$a3,$a4
    # Line 770
    b	.L0da7cbb4
    # Line 771
    li	$t0,1
.L0da7cb64:
    # Line 775
    move	$a5,$a1
    # Line 776
    move	$a1,$a3
    # Line 777
    move	$a3,$a2
    # Line 778
    b	.L0da7cbb4
    # Line 779
    move	$a2,$a5
.L0da7cb78:
    # Line 785
    slt	$a6,$v0,$v1
    # Line 786
    beqz	$a6,.L0da7cba8
    # Line 787
    move	$a7,$a1
    # Line 789
    slt	$v0,$t8,$v1
    # Line 790
    beqz	$v0,.L0da7cb9c
    # Line 792
    move	$a1,$a2
    # Line 793
    move	$a2,$a7
    # Line 795
    b	.L0da7cbb4
    # Line 796
    li	$t0,1
.L0da7cb9c:
    # Line 800
    move	$a2,$a3
    # Line 801
    b	.L0da7cbb4
    # Line 802
    move	$a3,$a7
.L0da7cba8:
    # Line 807
    move	$a1,$a3
    # Line 808
    move	$a3,$a7
    # Line 810
    li	$t0,1
.L0da7cbb4:
    # Line 828
    lwc1	$f4,128($a3)
    # Line 829
    lwc1	$f5,128($a1)
    # Line 830
    lwc1	$f6,128($a2)
    # Line 831
    lwc1	$f7,132($a3)
    # Line 832
    sub.s	$f8,$f5,$f4
    # Line 833
    lwc1	$f9,132($a1)
    # Line 834
    lwc1	$f10,132($a2)
    # Line 835
    sub.s	$f11,$f6,$f4
    # Line 836
    sw	$ra,52($sp)
    # Line 838
    sub.s	$f12,$f9,$f7
    # Line 839
    sw	$a0,32($sp)
    # Line 840
    sw	$a1,36($sp)
    # Line 841
    sub.s	$f13,$f10,$f7
    # Line 842
    mul.s	$f14,$f11,$f12
    # Line 843
    sw	$a2,40($sp)
    # Line 844
    swc1	$f11,30240($a0)
    # Line 848
    mul.s	$f15,$f8,$f13
    # Line 849
    sw	$a3,44($sp)
    # Line 850
    swc1	$f8,30236($a0)
    # Line 851
    swc1	$f12,30244($a0)
    # Line 852
    swc1	$f13,30248($a0)
    # Line 853
    lbu	$v1,30577($a0)
    # Line 854
    lw	$t1,30492($a0)
    # Line 855
    sub.s	$f15,$f15,$f14
    # Line 856
    nop
    # Line 857
    swc1	$f15,30232($a0)
    # Line 861
    nop
    # Line 862
    lw	$t2,30232($a0)
    # Line 864
    lw	$t3,28132($a0)
    # Line 865
    sll	$a4,$t2,0x1
    # Line 867
    sra	$a5,$t2,0x1f
    # Line 868
    sltiu	$a5,$a5,1
    # Line 874
    xor	$a6,$a5,$t0
    # Line 875
    addu	$a6,$a0,$a6
    # Line 876
    lbu	$a6,30572($a6)
    # Line 878
    beqz	$a4,.L0da7cd5c
    # Line 879
    sw	$a5,16($sp)
    # Line 883
    beq	$a6,$v1,.L0da7cd5c
    # Line 889
    andi	$t1,$t1,0x400
    # Line 890
    beqz	$t1,.L0da7cc68
    # Line 893
    sll	$a7,$a6,0x2
    # Line 894
    addu	$a7,$a0,$a7
    # Line 901
    lw	$a7,28136($a7)
    # Line 902
    b	.L0da7cc70
    # Line 903
    nop
.L0da7cc68:
    # Line 908
    lw	$a7,28136($a0)
    # Line 909
    li	$a6,0
.L0da7cc70:
    # Line 916
    sll	$a6,$a6,0x4
    # Line 917
    or	$t3,$t3,$a7
    # Line 918
    sw	$t3,28($sp)
    # Line 920
    addu	$t8,$a1,$a6
    # Line 921
    addiu	$t8,$t8,144
    # Line 922
    sw	$t8,8($a1)
    # Line 924
    addu	$v0,$a2,$a6
    # Line 925
    addiu	$v0,$v0,144
    # Line 926
    sw	$v0,8($a2)
    # Line 928
    addu	$v1,$a3,$a6
    # Line 929
    addiu	$v1,$v1,144
    # Line 933
    lw	$t0,0($a1)
    # Line 934
    lw	$a2,28($sp)
    # Line 935
    lw	$t9,12($a1)
    # Line 936
    nor	$t0,$t0,$zero
    # Line 937
    and	$t0,$t0,$a2
    # Line 938
    beqz	$t0,.L0da7ccc4
    # Line 939
    sw	$v1,8($a3)
    # Line 940
    jalr	$t9
    # Line 941
    nop
    # Line 943
    lw	$a0,32($sp)
.L0da7ccc4:
    # Line 946
    lw	$a1,40($sp)
    # Line 947
    lw	$a2,28($sp)
    # Line 948
    lw	$t1,0($a1)
    # Line 949
    lw	$t9,12($a1)
    # Line 950
    nor	$t1,$t1,$zero
    # Line 951
    and	$t1,$t1,$a2
    # Line 952
    beqz	$t1,.L0da7ccf0
    # Line 953
    nop
    # Line 954
    jalr	$t9
    # Line 955
    nop
    # Line 957
    lw	$a0,32($sp)
.L0da7ccf0:
    # Line 960
    lw	$a1,44($sp)
    # Line 961
    lw	$a2,28($sp)
    # Line 962
    lw	$t2,0($a1)
    # Line 963
    lw	$t9,12($a1)
    # Line 964
    nor	$t2,$t2,$zero
    # Line 965
    and	$t2,$t2,$a2
    # Line 966
    beqz	$t2,.L0da7cd1c
    # Line 967
    nop
    # Line 968
    jalr	$t9
    # Line 969
    nop
    # Line 971
    lw	$a0,32($sp)
.L0da7cd1c:
    # Line 987
    lw	$a1,36($sp)
    # Line 988
    lw	$t9,12136($a0)
    # Line 989
    lw	$a2,40($sp)
    # Line 990
    lw	$a4,16($sp)
    # Line 991
    jalr	$t9
    # Line 992
    lw	$a3,44($sp)
    # Line 995
    lw	$t3,36($sp)
    # Line 996
    lw	$a4,40($sp)
    # Line 997
    lw	$a5,44($sp)
    # Line 998
    lw	$ra,52($sp)
    # Line 1002
    addiu	$a6,$t3,144
    # Line 1003
    sw	$a6,8($t3)
    # Line 1005
    addiu	$a7,$a4,144
    # Line 1006
    sw	$a7,8($a4)
    # Line 1008
    addiu	$t8,$a5,144
    # Line 1009
    sw	$t8,8($a5)
.L0da7cd5c:
    # Line 1012
    jr	$ra
    # Line 1013
    addiu	$sp,$sp,64
.end __glRenderSmoothTriangle

# Function: __glRenderSmoothOneFaceTriangle
# Declared: Line 1026 (Source lines: 1026-1230)
# Address: 0x0da7cd64 - 0x0da7cf3c (Size: 472 bytes, Frame: 192)
.globl __glRenderSmoothOneFaceTriangle
.ent __glRenderSmoothOneFaceTriangle
__glRenderSmoothOneFaceTriangle:
    # Line 1026
    addiu	$sp,$sp,-64
    # Line 1030
    lw	$v0,132($a1)
    # Line 1031
    lw	$v1,132($a2)
    # Line 1032
    lw	$t0,132($a3)
    # Line 1033
    move	$t1,$zero
    # Line 1034
    slt	$t2,$v0,$v1
    # Line 1035
    beqz	$t2,.L0da7cdb8
    # Line 1037
    slt	$t3,$v1,$t0
    # Line 1038
    bnez	$t3,.L0da7cdf4
    # Line 1042
    slt	$a4,$v0,$t0
    # Line 1043
    beqz	$a4,.L0da7cda4
    # Line 1045
    move	$a5,$a2
    # Line 1046
    move	$a2,$a3
    # Line 1047
    move	$a3,$a5
    # Line 1049
    b	.L0da7cdf4
    # Line 1050
    li	$t1,1
.L0da7cda4:
    # Line 1054
    move	$a6,$a1
    # Line 1055
    move	$a1,$a3
    # Line 1056
    move	$a3,$a2
    # Line 1057
    b	.L0da7cdf4
    # Line 1058
    move	$a2,$a6
.L0da7cdb8:
    # Line 1064
    slt	$a7,$v1,$t0
    # Line 1065
    beqz	$a7,.L0da7cde8
    # Line 1066
    move	$t8,$a1
    # Line 1068
    slt	$v1,$v0,$t0
    # Line 1069
    beqz	$v1,.L0da7cddc
    # Line 1071
    move	$a1,$a2
    # Line 1072
    move	$a2,$t8
    # Line 1074
    b	.L0da7cdf4
    # Line 1075
    li	$t1,1
.L0da7cddc:
    # Line 1079
    move	$a2,$a3
    # Line 1080
    b	.L0da7cdf4
    # Line 1081
    move	$a3,$t8
.L0da7cde8:
    # Line 1086
    move	$a1,$a3
    # Line 1087
    move	$a3,$t8
    # Line 1089
    li	$t1,1
.L0da7cdf4:
    # Line 1103
    lwc1	$f16,128($a3)
    # Line 1104
    lwc1	$f17,128($a1)
    # Line 1105
    lwc1	$f18,128($a2)
    # Line 1106
    lwc1	$f19,132($a3)
    # Line 1107
    sub.s	$f0,$f17,$f16
    # Line 1108
    lwc1	$f1,132($a1)
    # Line 1109
    lwc1	$f2,132($a2)
    # Line 1110
    sub.s	$f3,$f18,$f16
    # Line 1111
    sw	$ra,52($sp)
    # Line 1113
    sub.s	$f4,$f1,$f19
    # Line 1114
    sw	$a0,32($sp)
    # Line 1115
    sw	$a1,36($sp)
    # Line 1116
    sub.s	$f5,$f2,$f19
    # Line 1117
    mul.s	$f6,$f3,$f4
    # Line 1118
    sw	$a2,40($sp)
    # Line 1119
    swc1	$f3,30240($a0)
    # Line 1123
    mul.s	$f7,$f0,$f5
    # Line 1124
    sw	$a3,44($sp)
    # Line 1125
    swc1	$f0,30236($a0)
    # Line 1126
    swc1	$f4,30244($a0)
    # Line 1127
    swc1	$f5,30248($a0)
    # Line 1128
    lbu	$a2,30577($a0)
    # Line 1129
    lw	$a3,28136($a0)
    # Line 1130
    sub.s	$f7,$f7,$f6
    # Line 1131
    nop
    # Line 1132
    swc1	$f7,30232($a0)
    # Line 1136
    nop
    # Line 1137
    lw	$t0,30232($a0)
    # Line 1139
    lw	$t2,28132($a0)
    # Line 1140
    sll	$t3,$t0,0x1
    # Line 1142
    sra	$a4,$t0,0x1f
    # Line 1143
    sltiu	$a4,$a4,1
    # Line 1149
    xor	$a5,$a4,$t1
    # Line 1150
    addu	$a5,$a0,$a5
    # Line 1151
    lbu	$a5,30572($a5)
    # Line 1152
    beqz	$t3,.L0da7cf34
    # Line 1153
    sw	$a4,16($sp)
    # Line 1157
    beq	$a5,$a2,.L0da7cf34
    # Line 1160
    or	$t2,$t2,$a3
    # Line 1161
    sw	$t2,28($sp)
    # Line 1165
    lw	$a6,0($a1)
    # Line 1166
    lw	$a2,28($sp)
    # Line 1167
    lw	$t9,12($a1)
    # Line 1168
    nor	$a6,$a6,$zero
    # Line 1169
    and	$a6,$a6,$a2
    # Line 1170
    beqz	$a6,.L0da7cebc
    # Line 1171
    nop
    # Line 1172
    jalr	$t9
    # Line 1173
    nop
    # Line 1175
    lw	$a0,32($sp)
.L0da7cebc:
    # Line 1178
    lw	$a1,40($sp)
    # Line 1179
    lw	$a2,28($sp)
    # Line 1180
    lw	$a7,0($a1)
    # Line 1181
    lw	$t9,12($a1)
    # Line 1182
    nor	$a7,$a7,$zero
    # Line 1183
    and	$a7,$a7,$a2
    # Line 1184
    beqz	$a7,.L0da7cee8
    # Line 1185
    nop
    # Line 1186
    jalr	$t9
    # Line 1187
    nop
    # Line 1189
    lw	$a0,32($sp)
.L0da7cee8:
    # Line 1192
    lw	$a1,44($sp)
    # Line 1193
    lw	$a2,28($sp)
    # Line 1194
    lw	$t8,0($a1)
    # Line 1195
    lw	$t9,12($a1)
    # Line 1196
    nor	$t8,$t8,$zero
    # Line 1197
    and	$t8,$t8,$a2
    # Line 1198
    beqz	$t8,.L0da7cf14
    # Line 1199
    nop
    # Line 1200
    jalr	$t9
    # Line 1201
    nop
    # Line 1203
    lw	$a0,32($sp)
.L0da7cf14:
    # Line 1218
    lw	$a1,36($sp)
    # Line 1219
    lw	$t9,12136($a0)
    # Line 1220
    lw	$a2,40($sp)
    # Line 1221
    lw	$a4,16($sp)
    # Line 1222
    jalr	$t9
    # Line 1223
    lw	$a3,44($sp)
    # Line 1226
    lw	$ra,52($sp)
    # Line 1227
    nop
.L0da7cf34:
    # Line 1229
    jr	$ra
    # Line 1230
    addiu	$sp,$sp,64
.end __glRenderSmoothOneFaceTriangle

# Function: __glRenderSmoothOneFaceTmesh
# Declared: Line 1245 (Source lines: 1245-1476)
# Address: 0x0da7cf3c - 0x0da7d158 (Size: 540 bytes, Frame: 192)
.globl __glRenderSmoothOneFaceTmesh
.ent __glRenderSmoothOneFaceTmesh
__glRenderSmoothOneFaceTmesh:
    # Line 1245
    addiu	$sp,$sp,-64
    # Line 1249
    move	$v0,$a1
    # Line 1250
    lw	$v1,132($a1)
    # Line 1251
    lw	$t0,132($a2)
    # Line 1252
    lw	$t1,132($a3)
    # Line 1253
    move	$t2,$zero
    # Line 1254
    slt	$t3,$v1,$t0
    # Line 1255
    beqz	$t3,.L0da7cf94
    # Line 1257
    slt	$a4,$t0,$t1
    # Line 1258
    bnez	$a4,.L0da7cfd0
    # Line 1262
    slt	$a5,$v1,$t1
    # Line 1263
    beqz	$a5,.L0da7cf80
    # Line 1265
    move	$a6,$a2
    # Line 1266
    move	$a2,$a3
    # Line 1267
    move	$a3,$a6
    # Line 1269
    b	.L0da7cfd0
    # Line 1270
    li	$t2,1
.L0da7cf80:
    # Line 1274
    move	$a7,$a1
    # Line 1275
    move	$a1,$a3
    # Line 1276
    move	$a3,$a2
    # Line 1277
    b	.L0da7cfd0
    # Line 1278
    move	$a2,$a7
.L0da7cf94:
    # Line 1284
    slt	$t8,$t0,$t1
    # Line 1285
    beqz	$t8,.L0da7cfc4
    # Line 1286
    move	$t0,$a1
    # Line 1288
    slt	$t3,$v1,$t1
    # Line 1289
    beqz	$t3,.L0da7cfb8
    # Line 1291
    move	$a1,$a2
    # Line 1292
    move	$a2,$t0
    # Line 1294
    b	.L0da7cfd0
    # Line 1295
    li	$t2,1
.L0da7cfb8:
    # Line 1299
    move	$a2,$a3
    # Line 1300
    b	.L0da7cfd0
    # Line 1301
    move	$a3,$t0
.L0da7cfc4:
    # Line 1306
    move	$a1,$a3
    # Line 1307
    move	$a3,$t0
    # Line 1309
    li	$t2,1
.L0da7cfd0:
    # Line 1323
    lwc1	$f8,128($a3)
    # Line 1324
    lwc1	$f9,128($a1)
    # Line 1325
    lwc1	$f10,128($a2)
    # Line 1326
    lwc1	$f11,132($a3)
    # Line 1327
    sub.s	$f12,$f9,$f8
    # Line 1328
    lwc1	$f13,132($a1)
    # Line 1329
    lwc1	$f14,132($a2)
    # Line 1330
    sub.s	$f15,$f10,$f8
    # Line 1331
    sw	$ra,52($sp)
    # Line 1333
    sub.s	$f16,$f13,$f11
    # Line 1334
    sw	$a0,32($sp)
    # Line 1335
    sw	$a1,36($sp)
    # Line 1336
    sub.s	$f17,$f14,$f11
    # Line 1337
    mul.s	$f18,$f15,$f16
    # Line 1338
    sw	$a2,40($sp)
    # Line 1339
    swc1	$f15,30240($a0)
    # Line 1343
    mul.s	$f19,$f12,$f17
    # Line 1344
    sw	$a3,44($sp)
    # Line 1345
    swc1	$f12,30236($a0)
    # Line 1346
    swc1	$f16,30244($a0)
    # Line 1347
    swc1	$f17,30248($a0)
    # Line 1348
    lbu	$a4,30577($a0)
    # Line 1349
    lw	$a5,28136($a0)
    # Line 1350
    sub.s	$f19,$f19,$f18
    # Line 1351
    nop
    # Line 1352
    swc1	$f19,30232($a0)
    # Line 1356
    nop
    # Line 1357
    lw	$a6,30232($a0)
    # Line 1359
    lw	$a7,28132($a0)
    # Line 1360
    sll	$t8,$a6,0x1
    # Line 1362
    sra	$v1,$a6,0x1f
    # Line 1363
    sltiu	$v1,$v1,1
    # Line 1369
    xor	$a2,$v1,$t2
    # Line 1370
    addu	$a2,$a0,$a2
    # Line 1371
    lbu	$a2,30572($a2)
    # Line 1372
    beqz	$t8,.L0da7d148
    # Line 1373
    sw	$v1,16($sp)
    # Line 1377
    beq	$a2,$a4,.L0da7d148
    # Line 1380
    or	$a7,$a7,$a5
    # Line 1381
    lbu	$a3,30578($a0)
    # Line 1382
    sw	$a7,28($sp)
    # Line 1384
    bnez	$a3,.L0da7d0c4
    # Line 1385
    lw	$t0,0($v0)
    # Line 1391
    lw	$t9,12($v0)
    # Line 1392
    nor	$t0,$t0,$zero
    # Line 1393
    and	$t0,$t0,$a7
    # Line 1394
    beqz	$t0,.L0da7d09c
    # Line 1395
    move	$a1,$v0
    # Line 1396
    jalr	$t9
    # Line 1397
    move	$a2,$a7
    # Line 1399
    lw	$a0,32($sp)
.L0da7d09c:
    # Line 1415
    lw	$a1,36($sp)
    # Line 1416
    lw	$t9,12136($a0)
    # Line 1417
    lw	$a2,40($sp)
    # Line 1418
    lw	$a4,16($sp)
    # Line 1419
    jalr	$t9
    # Line 1420
    lw	$a3,44($sp)
    # Line 1423
    lw	$ra,52($sp)
    # Line 1424
    addiu	$sp,$sp,64
    # Line 1425
    jr	$ra
    # Line 1426
    nop
.L0da7d0c4:
    # Line 1431
    lw	$t1,0($a1)
    # Line 1432
    lw	$a2,28($sp)
    # Line 1433
    lw	$t9,12($a1)
    # Line 1434
    nor	$t1,$t1,$zero
    # Line 1435
    and	$t1,$t1,$a2
    # Line 1436
    beqz	$t1,.L0da7d0ec
    # Line 1437
    nop
    # Line 1438
    jalr	$t9
    # Line 1439
    nop
    # Line 1441
    lw	$a0,32($sp)
.L0da7d0ec:
    # Line 1444
    lw	$a1,40($sp)
    # Line 1445
    lw	$a2,28($sp)
    # Line 1446
    lw	$t2,0($a1)
    # Line 1447
    lw	$t9,12($a1)
    # Line 1448
    nor	$t2,$t2,$zero
    # Line 1449
    and	$t2,$t2,$a2
    # Line 1450
    beqz	$t2,.L0da7d118
    # Line 1451
    nop
    # Line 1452
    jalr	$t9
    # Line 1453
    nop
    # Line 1455
    lw	$a0,32($sp)
.L0da7d118:
    # Line 1458
    lw	$a1,44($sp)
    # Line 1459
    lw	$a2,28($sp)
    # Line 1460
    lw	$t3,0($a1)
    # Line 1461
    lw	$t9,12($a1)
    # Line 1462
    nor	$t3,$t3,$zero
    # Line 1463
    and	$t3,$t3,$a2
    # Line 1464
    beqz	$t3,.L0da7d09c
    # Line 1465
    nop
    # Line 1466
    jalr	$t9
    # Line 1467
    nop
    # Line 1469
    b	.L0da7d09c
    # Line 1470
    lw	$a0,32($sp)
.L0da7d148:
    # Line 1473
    li	$a4,1
    # Line 1474
    sb	$a4,30578($a0)
    # Line 1475
    jr	$ra
    # Line 1476
    addiu	$sp,$sp,64
.end __glRenderSmoothOneFaceTmesh

