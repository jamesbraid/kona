# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/mips_xform.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 15

.text

# Function: __glMipsXForm2_2DNRW
# Declared: Line 260 (Source lines: 260-279)
# Address: 0x0da7d4c0 - 0x0da7d510 (Size: 80 bytes, Frame: 0)
.globl __glMipsXForm2_2DNRW
.ent __glMipsXForm2_2DNRW
__glMipsXForm2_2DNRW:
    # Line 260
    lwc1	$f0,0($a1)
    # Line 261
    lwc1	$f1,0($a2)
    # Line 262
    lwc1	$f2,4($a1)
    # Line 263
    lwc1	$f3,20($a2)
    # Line 264
    mul.s	$f4,$f0,$f1
    # Line 265
    lwc1	$f5,48($a2)
    # Line 266
    lwc1	$f6,52($a2)
    # Line 267
    mul.s	$f7,$f2,$f3
    # Line 268
    lwc1	$f8,56($a2)
    # Line 269
    lui	$v0,0x3f80
    # Line 271
    nop
    nop
    # Line 272
    add.s	$f4,$f4,$f5
    # Line 273
    swc1	$f8,8($a0)
    # Line 274
    sw	$v0,12($a0)
    # Line 275
    add.s	$f7,$f7,$f6
    # Line 276
    nop
    # Line 277
    swc1	$f4,0($a0)
    # Line 278
    jr	$ra
    # Line 279
    swc1	$f7,4($a0)
.end __glMipsXForm2_2DNRW

# Function: __glMipsXForm2_2DW
# Declared: Line 296 (Source lines: 296-321)
# Address: 0x0da7d510 - 0x0da7d578 (Size: 104 bytes, Frame: 0)
.globl __glMipsXForm2_2DW
.ent __glMipsXForm2_2DW
__glMipsXForm2_2DW:
    # Line 296
    lwc1	$f9,0($a1)
    # Line 297
    lwc1	$f10,0($a2)
    # Line 298
    lwc1	$f11,4($a2)
    # Line 299
    lwc1	$f12,4($a1)
    # Line 300
    mul.s	$f13,$f9,$f10
    # Line 301
    lwc1	$f14,16($a2)
    # Line 302
    lwc1	$f15,48($a2)
    # Line 303
    mul.s	$f16,$f9,$f11
    # Line 304
    lwc1	$f17,20($a2)
    # Line 305
    lwc1	$f18,52($a2)
    # Line 306
    mul.s	$f14,$f12,$f14
    # Line 307
    lwc1	$f19,56($a2)
    # Line 308
    add.s	$f13,$f13,$f15
    # Line 309
    mul.s	$f17,$f12,$f17
    # Line 310
    lui	$v1,0x3f80
    # Line 311
    add.s	$f16,$f16,$f18
    # Line 312
    nop
    # Line 313
    swc1	$f19,8($a0)
    # Line 314
    add.s	$f13,$f13,$f14
    # Line 315
    nop
    # Line 316
    sw	$v1,12($a0)
    # Line 317
    add.s	$f16,$f16,$f17
    # Line 318
    nop
    # Line 319
    swc1	$f13,0($a0)
    # Line 320
    jr	$ra
    # Line 321
    swc1	$f16,4($a0)
.end __glMipsXForm2_2DW

# Function: __glMipsXForm2_W
# Declared: Line 338 (Source lines: 338-369)
# Address: 0x0da7d578 - 0x0da7d5f8 (Size: 128 bytes, Frame: 0)
.globl __glMipsXForm2_W
.ent __glMipsXForm2_W
__glMipsXForm2_W:
    # Line 338
    lwc1	$f0,0($a1)
    # Line 339
    lwc1	$f1,0($a2)
    # Line 340
    lwc1	$f2,4($a2)
    # Line 341
    lwc1	$f3,4($a1)
    # Line 342
    mul.s	$f4,$f0,$f1
    # Line 343
    lwc1	$f5,16($a2)
    # Line 344
    lwc1	$f6,48($a2)
    # Line 345
    mul.s	$f7,$f0,$f2
    # Line 346
    lwc1	$f8,8($a2)
    # Line 347
    lwc1	$f9,52($a2)
    # Line 348
    mul.s	$f5,$f3,$f5
    # Line 349
    lwc1	$f10,20($a2)
    # Line 350
    add.s	$f4,$f4,$f6
    # Line 351
    mul.s	$f11,$f0,$f8
    # Line 352
    lwc1	$f12,24($a2)
    # Line 353
    add.s	$f7,$f7,$f9
    # Line 354
    mul.s	$f10,$f3,$f10
    # Line 355
    lwc1	$f13,56($a2)
    # Line 356
    add.s	$f4,$f4,$f5
    # Line 357
    mul.s	$f12,$f3,$f12
    # Line 358
    lui	$a1,0x3f80
    # Line 359
    add.s	$f11,$f11,$f13
    # Line 360
    nop
    # Line 361
    swc1	$f4,0($a0)
    # Line 362
    add.s	$f7,$f7,$f10
    # Line 363
    nop
    # Line 364
    sw	$a1,12($a0)
    # Line 365
    add.s	$f11,$f11,$f12
    # Line 366
    nop
    # Line 367
    swc1	$f7,4($a0)
    # Line 368
    jr	$ra
    # Line 369
    swc1	$f11,8($a0)
.end __glMipsXForm2_W

# Function: __glMipsXForm2
# Declared: Line 386 (Source lines: 386-424)
# Address: 0x0da7d5f8 - 0x0da7d694 (Size: 156 bytes, Frame: 0)
.globl __glMipsXForm2
.ent __glMipsXForm2
__glMipsXForm2:
    # Line 386
    lwc1	$f14,0($a1)
    # Line 387
    lwc1	$f15,0($a2)
    # Line 388
    lwc1	$f16,4($a2)
    # Line 389
    lwc1	$f17,4($a1)
    # Line 390
    mul.s	$f18,$f14,$f15
    # Line 391
    lwc1	$f19,16($a2)
    # Line 392
    lwc1	$f0,48($a2)
    # Line 393
    mul.s	$f1,$f14,$f16
    # Line 394
    lwc1	$f2,20($a2)
    # Line 395
    lwc1	$f3,52($a2)
    # Line 396
    mul.s	$f19,$f17,$f19
    # Line 397
    lwc1	$f4,8($a2)
    # Line 398
    add.s	$f18,$f18,$f0
    # Line 399
    mul.s	$f2,$f17,$f2
    # Line 400
    lwc1	$f5,12($a2)
    # Line 401
    add.s	$f1,$f1,$f3
    # Line 402
    mul.s	$f6,$f14,$f4
    # Line 403
    lwc1	$f7,24($a2)
    # Line 404
    add.s	$f18,$f18,$f19
    # Line 405
    mul.s	$f8,$f14,$f5
    # Line 406
    lwc1	$f9,56($a2)
    # Line 407
    add.s	$f1,$f1,$f2
    # Line 408
    lwc1	$f10,28($a2)
    # Line 409
    mul.s	$f7,$f17,$f7
    # Line 410
    lwc1	$f11,60($a2)
    # Line 411
    add.s	$f6,$f6,$f9
    # Line 412
    mul.s	$f10,$f17,$f10
    # Line 413
    swc1	$f18,0($a0)
    # Line 414
    add.s	$f8,$f8,$f11
    # Line 415
    nop
    # Line 416
    swc1	$f1,4($a0)
    # Line 417
    add.s	$f6,$f6,$f7
    # Line 419
    nop
    nop
    # Line 420
    add.s	$f8,$f8,$f10
    # Line 421
    nop
    # Line 422
    swc1	$f6,8($a0)
    # Line 423
    jr	$ra
    # Line 424
    swc1	$f8,12($a0)
.end __glMipsXForm2

# Function: __glMipsXForm3_2DNRW
# Declared: Line 441 (Source lines: 441-463)
# Address: 0x0da7d694 - 0x0da7d6f0 (Size: 92 bytes, Frame: 0)
.globl __glMipsXForm3_2DNRW
.ent __glMipsXForm3_2DNRW
__glMipsXForm3_2DNRW:
    # Line 441
    lwc1	$f12,0($a1)
    # Line 442
    lwc1	$f13,0($a2)
    # Line 443
    lwc1	$f14,4($a1)
    # Line 444
    lwc1	$f15,20($a2)
    # Line 445
    mul.s	$f16,$f12,$f13
    # Line 446
    lwc1	$f17,8($a1)
    # Line 447
    lwc1	$f18,40($a2)
    # Line 448
    mul.s	$f19,$f14,$f15
    # Line 449
    lwc1	$f0,48($a2)
    # Line 450
    lwc1	$f1,52($a2)
    # Line 451
    mul.s	$f2,$f17,$f18
    # Line 452
    lwc1	$f3,56($a2)
    # Line 453
    add.s	$f16,$f16,$f0
    # Line 454
    lui	$a2,0x3f80
    # Line 455
    nop
    # Line 456
    add.s	$f19,$f19,$f1
    # Line 457
    nop
    # Line 458
    sw	$a2,12($a0)
    # Line 459
    add.s	$f2,$f2,$f3
    # Line 460
    swc1	$f16,0($a0)
    # Line 461
    swc1	$f19,4($a0)
    # Line 462
    jr	$ra
    # Line 463
    swc1	$f2,8($a0)
.end __glMipsXForm3_2DNRW

# Function: __glMipsXForm3_2DW
# Declared: Line 480 (Source lines: 480-509)
# Address: 0x0da7d6f0 - 0x0da7d768 (Size: 120 bytes, Frame: 0)
.globl __glMipsXForm3_2DW
.ent __glMipsXForm3_2DW
__glMipsXForm3_2DW:
    # Line 480
    lwc1	$f4,0($a1)
    # Line 481
    lwc1	$f5,0($a2)
    # Line 482
    lwc1	$f6,4($a2)
    # Line 483
    lwc1	$f7,4($a1)
    # Line 484
    mul.s	$f8,$f4,$f5
    # Line 485
    lwc1	$f9,16($a2)
    # Line 486
    lwc1	$f10,48($a2)
    # Line 487
    mul.s	$f11,$f4,$f6
    # Line 488
    lwc1	$f12,20($a2)
    # Line 489
    lwc1	$f13,52($a2)
    # Line 490
    mul.s	$f9,$f7,$f9
    # Line 491
    lwc1	$f14,40($a2)
    # Line 492
    add.s	$f8,$f8,$f10
    # Line 493
    lwc1	$f15,8($a1)
    # Line 494
    mul.s	$f12,$f7,$f12
    # Line 495
    lwc1	$f16,56($a2)
    # Line 496
    add.s	$f11,$f11,$f13
    # Line 497
    mul.s	$f17,$f15,$f14
    # Line 498
    lui	$a3,0x3f80
    # Line 499
    add.s	$f8,$f8,$f9
    # Line 501
    nop
    nop
    # Line 502
    add.s	$f11,$f11,$f12
    # Line 503
    nop
    # Line 504
    sw	$a3,12($a0)
    # Line 505
    add.s	$f17,$f17,$f16
    # Line 506
    swc1	$f8,0($a0)
    # Line 507
    swc1	$f11,4($a0)
    # Line 508
    jr	$ra
    # Line 509
    swc1	$f17,8($a0)
.end __glMipsXForm3_2DW

# Function: __glMipsXForm3_W
# Declared: Line 529 (Source lines: 529-571)
# Address: 0x0da7d768 - 0x0da7d814 (Size: 172 bytes, Frame: 0)
.globl __glMipsXForm3_W
.ent __glMipsXForm3_W
__glMipsXForm3_W:
    # Line 529
    lwc1	$f18,0($a1)
    # Line 530
    lwc1	$f19,0($a2)
    # Line 531
    lwc1	$f0,4($a2)
    # Line 532
    lwc1	$f1,8($a1)
    # Line 533
    mul.s	$f2,$f18,$f19
    # Line 534
    lwc1	$f3,4($a1)
    # Line 535
    lwc1	$f4,16($a2)
    # Line 536
    mul.s	$f5,$f18,$f0
    # Line 537
    lwc1	$f6,48($a2)
    # Line 538
    lwc1	$f7,20($a2)
    # Line 539
    mul.s	$f4,$f3,$f4
    # Line 540
    lwc1	$f8,52($a2)
    # Line 541
    add.s	$f2,$f2,$f6
    # Line 542
    lwc1	$f9,8($a2)
    # Line 543
    mul.s	$f7,$f3,$f7
    # Line 544
    lwc1	$f10,32($a2)
    # Line 545
    add.s	$f5,$f5,$f8
    # Line 546
    mul.s	$f11,$f18,$f9
    # Line 547
    lwc1	$f12,24($a2)
    # Line 548
    add.s	$f2,$f2,$f4
    # Line 549
    mul.s	$f10,$f1,$f10
    # Line 550
    lwc1	$f13,36($a2)
    # Line 551
    add.s	$f5,$f5,$f7
    # Line 552
    lwc1	$f14,56($a2)
    # Line 553
    mul.s	$f12,$f3,$f12
    # Line 554
    lwc1	$f15,40($a2)
    # Line 555
    add.s	$f11,$f11,$f14
    # Line 556
    mul.s	$f13,$f1,$f13
    # Line 557
    lui	$a4,0x3f80
    # Line 558
    add.s	$f2,$f2,$f10
    # Line 559
    mul.s	$f15,$f1,$f15
    # Line 560
    nop
    # Line 561
    add.s	$f11,$f11,$f12
    # Line 562
    swc1	$f2,0($a0)
    # Line 563
    nop
    # Line 564
    add.s	$f5,$f5,$f13
    # Line 565
    nop
    # Line 566
    sw	$a4,12($a0)
    # Line 567
    add.s	$f11,$f11,$f15
    # Line 568
    nop
    # Line 569
    swc1	$f5,4($a0)
    # Line 570
    jr	$ra
    # Line 571
    swc1	$f11,8($a0)
.end __glMipsXForm3_W

# Function: __glMipsXForm3AsmLink_W
# Declared: Line 588 (Source lines: 588-627)
# Address: 0x0da7d814 - 0x0da7d8b4 (Size: 160 bytes, Frame: 0)
.globl __glMipsXForm3AsmLink_W
.ent __glMipsXForm3AsmLink_W
__glMipsXForm3AsmLink_W:
    # Line 588
    lwc1	$f16,0($a2)
    # Line 589
    lwc1	$f17,4($a2)
    # Line 590
    lwc1	$f18,16($a2)
    # Line 591
    mul.s	$f19,$f10,$f16
    # Line 592
    lwc1	$f0,48($a2)
    # Line 593
    lwc1	$f1,20($a2)
    # Line 594
    mul.s	$f2,$f10,$f17
    # Line 595
    lwc1	$f3,52($a2)
    # Line 596
    lwc1	$f4,8($a2)
    # Line 597
    mul.s	$f18,$f12,$f18
    # Line 598
    add.s	$f19,$f19,$f0
    # Line 599
    lwc1	$f5,32($a2)
    # Line 600
    mul.s	$f1,$f12,$f1
    # Line 601
    add.s	$f2,$f2,$f3
    # Line 602
    mul.s	$f6,$f10,$f4
    # Line 603
    lwc1	$f7,24($a2)
    # Line 604
    add.s	$f19,$f19,$f18
    # Line 605
    mul.s	$f5,$f14,$f5
    # Line 606
    lwc1	$f8,36($a2)
    # Line 607
    add.s	$f2,$f2,$f1
    # Line 608
    lwc1	$f9,56($a2)
    # Line 609
    mul.s	$f7,$f12,$f7
    # Line 610
    lwc1	$f10,40($a2)
    # Line 611
    add.s	$f6,$f6,$f9
    # Line 612
    mul.s	$f8,$f14,$f8
    # Line 613
    lui	$a5,0x3f80
    # Line 614
    add.s	$f19,$f19,$f5
    # Line 615
    mul.s	$f10,$f14,$f10
    # Line 616
    nop
    # Line 617
    add.s	$f6,$f6,$f7
    # Line 618
    swc1	$f19,0($a0)
    # Line 619
    nop
    # Line 620
    add.s	$f2,$f2,$f8
    # Line 621
    nop
    # Line 622
    sw	$a5,12($a0)
    # Line 623
    add.s	$f6,$f6,$f10
    # Line 624
    nop
    # Line 625
    swc1	$f2,4($a0)
    # Line 626
    jr	$ra
    # Line 627
    swc1	$f6,8($a0)
.end __glMipsXForm3AsmLink_W

# Function: __glMipsXForm3
# Declared: Line 647 (Source lines: 647-699)
# Address: 0x0da7d8b4 - 0x0da7d988 (Size: 212 bytes, Frame: 0)
.globl __glMipsXForm3
.ent __glMipsXForm3
__glMipsXForm3:
    # Line 647
    lwc1	$f11,0($a1)
    # Line 648
    lwc1	$f12,0($a2)
    # Line 649
    lwc1	$f13,4($a2)
    # Line 650
    lwc1	$f14,4($a1)
    # Line 651
    mul.s	$f15,$f11,$f12
    # Line 652
    lwc1	$f16,16($a2)
    # Line 653
    lwc1	$f17,48($a2)
    # Line 654
    mul.s	$f18,$f11,$f13
    # Line 655
    lwc1	$f19,20($a2)
    # Line 656
    lwc1	$f0,8($a1)
    # Line 657
    mul.s	$f16,$f14,$f16
    # Line 658
    lwc1	$f1,32($a2)
    # Line 659
    add.s	$f15,$f15,$f17
    # Line 660
    lwc1	$f2,52($a2)
    # Line 661
    mul.s	$f19,$f14,$f19
    # Line 662
    lwc1	$f3,36($a2)
    # Line 663
    add.s	$f18,$f18,$f2
    # Line 664
    mul.s	$f1,$f0,$f1
    # Line 665
    lwc1	$f4,8($a2)
    # Line 666
    add.s	$f15,$f15,$f16
    # Line 667
    mul.s	$f3,$f0,$f3
    # Line 668
    lwc1	$f5,12($a2)
    # Line 669
    add.s	$f18,$f18,$f19
    # Line 670
    mul.s	$f6,$f11,$f4
    # Line 671
    lwc1	$f7,24($a2)
    # Line 672
    add.s	$f15,$f15,$f1
    # Line 673
    mul.s	$f8,$f11,$f5
    # Line 674
    lwc1	$f9,28($a2)
    # Line 675
    add.s	$f18,$f18,$f3
    # Line 676
    lwc1	$f10,56($a2)
    # Line 677
    mul.s	$f7,$f14,$f7
    # Line 678
    lwc1	$f11,40($a2)
    # Line 679
    add.s	$f6,$f6,$f10
    # Line 680
    lwc1	$f12,60($a2)
    # Line 681
    mul.s	$f9,$f14,$f9
    # Line 682
    lwc1	$f13,44($a2)
    # Line 683
    add.s	$f8,$f8,$f12
    # Line 684
    mul.s	$f11,$f0,$f11
    # Line 685
    swc1	$f15,0($a0)
    # Line 686
    add.s	$f6,$f6,$f7
    # Line 687
    mul.s	$f13,$f0,$f13
    # Line 688
    swc1	$f18,4($a0)
    # Line 689
    add.s	$f8,$f8,$f9
    # Line 691
    nop
    nop
    # Line 692
    add.s	$f6,$f6,$f11
    # Line 694
    nop
    nop
    # Line 695
    add.s	$f8,$f8,$f13
    # Line 696
    swc1	$f6,8($a0)
    # Line 697
    nop
    # Line 698
    jr	$ra
    # Line 699
    swc1	$f8,12($a0)
.end __glMipsXForm3

# Function: __glMipsXForm3AsmLink
# Declared: Line 717 (Source lines: 717-766)
# Address: 0x0da7d988 - 0x0da7da50 (Size: 200 bytes, Frame: 0)
.globl __glMipsXForm3AsmLink
.ent __glMipsXForm3AsmLink
__glMipsXForm3AsmLink:
    # Line 717
    lwc1	$f15,0($a2)
    # Line 718
    lwc1	$f16,4($a2)
    # Line 719
    lwc1	$f17,16($a2)
    # Line 720
    mul.s	$f18,$f10,$f15
    # Line 721
    lwc1	$f19,48($a2)
    # Line 722
    lwc1	$f0,20($a2)
    # Line 723
    mul.s	$f1,$f10,$f16
    # Line 724
    lwc1	$f2,32($a2)
    # Line 725
    lwc1	$f3,52($a2)
    # Line 726
    mul.s	$f17,$f12,$f17
    # Line 727
    add.s	$f18,$f18,$f19
    # Line 728
    lwc1	$f4,36($a2)
    # Line 729
    mul.s	$f0,$f12,$f0
    # Line 730
    add.s	$f1,$f1,$f3
    # Line 731
    lwc1	$f5,8($a2)
    # Line 732
    mul.s	$f2,$f14,$f2
    # Line 733
    add.s	$f18,$f18,$f17
    # Line 734
    lwc1	$f6,12($a2)
    # Line 735
    mul.s	$f4,$f14,$f4
    # Line 736
    add.s	$f1,$f1,$f0
    # Line 737
    mul.s	$f7,$f10,$f5
    # Line 738
    lwc1	$f8,24($a2)
    # Line 739
    add.s	$f18,$f18,$f2
    # Line 740
    mul.s	$f9,$f10,$f6
    # Line 741
    lwc1	$f10,28($a2)
    # Line 742
    add.s	$f1,$f1,$f4
    # Line 743
    lwc1	$f11,56($a2)
    # Line 744
    mul.s	$f8,$f12,$f8
    # Line 745
    lwc1	$f13,40($a2)
    # Line 746
    add.s	$f7,$f7,$f11
    # Line 747
    lwc1	$f15,60($a2)
    # Line 748
    mul.s	$f10,$f12,$f10
    # Line 749
    lwc1	$f16,44($a2)
    # Line 750
    add.s	$f9,$f9,$f15
    # Line 751
    mul.s	$f13,$f14,$f13
    # Line 752
    swc1	$f18,0($a0)
    # Line 753
    add.s	$f7,$f7,$f8
    # Line 754
    mul.s	$f16,$f14,$f16
    # Line 755
    swc1	$f1,4($a0)
    # Line 756
    add.s	$f9,$f9,$f10
    # Line 758
    nop
    nop
    # Line 759
    add.s	$f7,$f7,$f13
    # Line 761
    nop
    nop
    # Line 762
    add.s	$f9,$f9,$f16
    # Line 763
    swc1	$f7,8($a0)
    # Line 764
    nop
    # Line 765
    jr	$ra
    # Line 766
    swc1	$f9,12($a0)
.end __glMipsXForm3AsmLink

# Function: __glMipsXForm4_2DNRW
# Declared: Line 783 (Source lines: 783-813)
# Address: 0x0da7da50 - 0x0da7dacc (Size: 124 bytes, Frame: 0)
.globl __glMipsXForm4_2DNRW
.ent __glMipsXForm4_2DNRW
__glMipsXForm4_2DNRW:
    # Line 783
    lwc1	$f17,0($a1)
    # Line 784
    lwc1	$f18,0($a2)
    # Line 785
    lwc1	$f19,12($a1)
    # Line 786
    lwc1	$f0,48($a2)
    # Line 787
    mul.s	$f1,$f17,$f18
    # Line 788
    lwc1	$f2,4($a1)
    # Line 789
    lwc1	$f3,20($a2)
    # Line 790
    mul.s	$f0,$f19,$f0
    # Line 791
    lwc1	$f4,52($a2)
    # Line 792
    swc1	$f19,12($a0)
    # Line 793
    mul.s	$f5,$f2,$f3
    # Line 794
    lwc1	$f6,8($a1)
    # Line 795
    lwc1	$f7,40($a2)
    # Line 796
    mul.s	$f4,$f19,$f4
    # Line 797
    lwc1	$f8,56($a2)
    # Line 798
    add.s	$f1,$f1,$f0
    # Line 799
    mul.s	$f9,$f6,$f7
    # Line 801
    nop
    nop
    # Line 802
    mul.s	$f8,$f19,$f8
    # Line 803
    swc1	$f1,0($a0)
    # Line 804
    add.s	$f5,$f5,$f4
    # Line 807
    nop
    nop
    nop
    # Line 808
    swc1	$f5,4($a0)
    # Line 809
    add.s	$f9,$f9,$f8
    # Line 811
    nop
    nop
    # Line 812
    jr	$ra
    # Line 813
    swc1	$f9,8($a0)
.end __glMipsXForm4_2DNRW

# Function: __glMipsXForm4_2DW
# Declared: Line 831 (Source lines: 831-867)
# Address: 0x0da7dacc - 0x0da7db60 (Size: 148 bytes, Frame: 0)
.globl __glMipsXForm4_2DW
.ent __glMipsXForm4_2DW
__glMipsXForm4_2DW:
    # Line 831
    lwc1	$f10,0($a1)
    # Line 832
    lwc1	$f11,0($a2)
    # Line 833
    lwc1	$f12,4($a1)
    # Line 834
    lwc1	$f13,16($a2)
    # Line 835
    mul.s	$f14,$f10,$f11
    # Line 836
    lwc1	$f15,4($a2)
    # Line 837
    nop
    # Line 838
    mul.s	$f13,$f12,$f13
    # Line 839
    lwc1	$f16,20($a2)
    # Line 840
    nop
    # Line 841
    mul.s	$f17,$f10,$f15
    # Line 842
    lwc1	$f18,12($a1)
    # Line 843
    lwc1	$f19,48($a2)
    # Line 844
    mul.s	$f16,$f12,$f16
    # Line 845
    lwc1	$f0,52($a2)
    # Line 846
    add.s	$f14,$f14,$f13
    # Line 847
    mul.s	$f19,$f18,$f19
    # Line 848
    lwc1	$f1,8($a1)
    # Line 849
    lwc1	$f2,40($a2)
    # Line 850
    mul.s	$f0,$f18,$f0
    # Line 851
    lwc1	$f3,56($a2)
    # Line 852
    add.s	$f17,$f17,$f16
    # Line 853
    mul.s	$f4,$f1,$f2
    # Line 854
    swc1	$f18,12($a0)
    # Line 855
    add.s	$f14,$f14,$f19
    # Line 856
    mul.s	$f3,$f18,$f3
    # Line 857
    nop
    # Line 858
    add.s	$f17,$f17,$f0
    # Line 859
    swc1	$f14,0($a0)
    # Line 862
    nop
    nop
    nop
    # Line 863
    add.s	$f4,$f4,$f3
    # Line 864
    swc1	$f17,4($a0)
    # Line 865
    nop
    # Line 866
    jr	$ra
    # Line 867
    swc1	$f4,8($a0)
.end __glMipsXForm4_2DW

# Function: __glMipsXForm4_W
# Declared: Line 889 (Source lines: 889-936)
# Address: 0x0da7db60 - 0x0da7dc20 (Size: 192 bytes, Frame: 0)
.globl __glMipsXForm4_W
.ent __glMipsXForm4_W
__glMipsXForm4_W:
    # Line 889
    lwc1	$f5,0($a1)
    # Line 890
    lwc1	$f6,0($a2)
    # Line 891
    lwc1	$f7,4($a1)
    # Line 892
    lwc1	$f8,16($a2)
    # Line 893
    mul.s	$f9,$f5,$f6
    # Line 894
    mfc1	$a6,$f21
    # Line 895
    lwc1	$f10,4($a2)
    # Line 896
    mul.s	$f8,$f7,$f8
    # Line 897
    lwc1	$f11,20($a2)
    # Line 898
    mul.s	$f12,$f5,$f10
    # Line 899
    lwc1	$f13,8($a1)
    # Line 900
    lwc1	$f14,32($a2)
    # Line 901
    mul.s	$f11,$f7,$f11
    # Line 902
    lwc1	$f15,36($a2)
    # Line 903
    add.s	$f9,$f9,$f8
    # Line 904
    mul.s	$f14,$f13,$f14
    # Line 905
    lwc1	$f16,12($a1)
    # Line 906
    lwc1	$f17,8($a2)
    # Line 907
    mul.s	$f15,$f13,$f15
    # Line 908
    lwc1	$f18,24($a2)
    # Line 909
    add.s	$f12,$f12,$f11
    # Line 910
    mul.s	$f19,$f5,$f17
    # Line 911
    lwc1	$f0,48($a2)
    # Line 912
    add.s	$f9,$f9,$f14
    # Line 913
    mul.s	$f18,$f7,$f18
    # Line 914
    lwc1	$f1,40($a2)
    # Line 915
    add.s	$f12,$f12,$f15
    # Line 916
    mul.s	$f0,$f16,$f0
    # Line 917
    nop
    # Line 918
    lwc1	$f2,52($a2)
    # Line 919
    mul.s	$f1,$f13,$f1
    # Line 920
    lwc1	$f3,56($a2)
    # Line 921
    add.s	$f19,$f19,$f18
    # Line 922
    mul.s	$f2,$f16,$f2
    # Line 923
    nop
    # Line 924
    add.s	$f9,$f9,$f0
    # Line 925
    mul.s	$f3,$f16,$f3
    # Line 926
    nop
    # Line 927
    add.s	$f19,$f19,$f1
    # Line 928
    mtc1	$a6,$f21
    # Line 929
    add.s	$f12,$f12,$f2
    # Line 930
    swc1	$f16,12($a0)
    # Line 931
    nop
    # Line 932
    add.s	$f19,$f19,$f3
    # Line 933
    swc1	$f9,0($a0)
    # Line 934
    swc1	$f12,4($a0)
    # Line 935
    jr	$ra
    # Line 936
    swc1	$f19,8($a0)
.end __glMipsXForm4_W

# Function: __glMipsXForm4
# Declared: Line 958 (Source lines: 958-1022)
# Address: 0x0da7dc20 - 0x0da7dd10 (Size: 240 bytes, Frame: 0)
.globl __glMipsXForm4
.ent __glMipsXForm4
__glMipsXForm4:
    # Line 958
    lwc1	$f4,0($a1)
    # Line 959
    lwc1	$f5,0($a2)
    # Line 960
    lwc1	$f6,4($a1)
    # Line 961
    lwc1	$f7,16($a2)
    # Line 962
    mul.s	$f8,$f4,$f5
    # Line 963
    lwc1	$f9,4($a2)
    # Line 964
    mfc1	$a7,$f21
    # Line 965
    mul.s	$f7,$f6,$f7
    # Line 966
    lwc1	$f10,20($a2)
    # Line 967
    lwc1	$f11,8($a1)
    # Line 968
    mul.s	$f12,$f4,$f9
    # Line 969
    lwc1	$f13,32($a2)
    # Line 970
    lwc1	$f14,36($a2)
    # Line 971
    mul.s	$f10,$f6,$f10
    # Line 972
    add.s	$f8,$f8,$f7
    # Line 973
    mul.s	$f13,$f11,$f13
    # Line 974
    lwc1	$f15,48($a2)
    # Line 975
    lwc1	$f16,12($a1)
    # Line 976
    mul.s	$f14,$f11,$f14
    # Line 977
    lwc1	$f17,52($a2)
    # Line 978
    add.s	$f12,$f12,$f10
    # Line 979
    mul.s	$f15,$f16,$f15
    # Line 980
    lwc1	$f18,8($a2)
    # Line 981
    add.s	$f8,$f8,$f13
    # Line 982
    mul.s	$f17,$f16,$f17
    # Line 983
    lwc1	$f19,24($a2)
    # Line 984
    add.s	$f12,$f12,$f14
    # Line 985
    mul.s	$f0,$f4,$f18
    # Line 986
    lwc1	$f1,12($a2)
    # Line 987
    add.s	$f8,$f8,$f15
    # Line 988
    mul.s	$f19,$f6,$f19
    # Line 989
    lwc1	$f2,28($a2)
    # Line 990
    add.s	$f12,$f12,$f17
    # Line 991
    mul.s	$f3,$f4,$f1
    # Line 992
    lwc1	$f4,40($a2)
    # Line 993
    swc1	$f8,0($a0)
    # Line 994
    mul.s	$f2,$f6,$f2
    # Line 995
    lwc1	$f5,44($a2)
    # Line 996
    add.s	$f0,$f0,$f19
    # Line 997
    mul.s	$f4,$f11,$f4
    # Line 998
    lwc1	$f6,56($a2)
    # Line 999
    swc1	$f12,4($a0)
    # Line 1000
    mul.s	$f5,$f11,$f5
    # Line 1001
    lwc1	$f7,60($a2)
    # Line 1002
    add.s	$f3,$f3,$f2
    # Line 1003
    mul.s	$f6,$f16,$f6
    # Line 1004
    nop
    # Line 1010
    add.s	$f8,$f0,$f4
    # Line 1011
    mul.s	$f7,$f16,$f7
    # Line 1012
    nop
    # Line 1013
    add.s	$f9,$f3,$f5
    # Line 1014
    mtc1	$a7,$f21
    # Line 1015
    add.s	$f8,$f8,$f6
    # Line 1017
    nop
    nop
    # Line 1018
    add.s	$f9,$f9,$f7
    # Line 1019
    swc1	$f8,8($a0)
    # Line 1020
    nop
    # Line 1021
    jr	$ra
    # Line 1022
    swc1	$f9,12($a0)
.end __glMipsXForm4

# Function: __glMipsMultMatrix
# Declared: Line 1044 (Source lines: 1043-1108)
# Address: 0x0da7dd10 - 0x0da7dddc (Size: 204 bytes, Frame: 0)
.globl __glMipsMultMatrix
.ent __glMipsMultMatrix
__glMipsMultMatrix:
    # Line 1044
    bne	$a0,$a2,.L0da7dd9c
    # Line 1043
    addiu	$sp,$sp,-64
    # Line 1047
    lwc1	$f10,0($a2)
    # Line 1048
    lwc1	$f11,8($a2)
    # Line 1049
    lwc1	$f12,16($a2)
    # Line 1050
    lwc1	$f13,24($a2)
    # Line 1051
    lwc1	$f14,32($a2)
    # Line 1052
    lwc1	$f15,40($a2)
    # Line 1053
    lwc1	$f16,48($a2)
    # Line 1054
    lwc1	$f17,56($a2)
    # Line 1055
    swc1	$f10,0($sp)
    # Line 1056
    swc1	$f11,8($sp)
    # Line 1057
    swc1	$f12,16($sp)
    # Line 1058
    swc1	$f13,24($sp)
    # Line 1059
    swc1	$f14,32($sp)
    # Line 1060
    swc1	$f15,40($sp)
    # Line 1061
    swc1	$f16,48($sp)
    # Line 1062
    swc1	$f17,56($sp)
    # Line 1063
    lwc1	$f18,4($a2)
    # Line 1064
    lwc1	$f19,12($a2)
    # Line 1065
    lwc1	$f0,20($a2)
    # Line 1066
    lwc1	$f1,28($a2)
    # Line 1067
    lwc1	$f2,36($a2)
    # Line 1068
    lwc1	$f3,44($a2)
    # Line 1069
    lwc1	$f4,52($a2)
    # Line 1070
    lwc1	$f5,60($a2)
    # Line 1079
    move	$a2,$sp
    # Line 1071
    swc1	$f18,4($sp)
    # Line 1072
    swc1	$f19,12($sp)
    # Line 1073
    swc1	$f0,20($sp)
    # Line 1074
    swc1	$f1,28($sp)
    # Line 1075
    swc1	$f2,36($sp)
    # Line 1076
    swc1	$f3,44($sp)
    # Line 1077
    swc1	$f4,52($sp)
    # Line 1078
    swc1	$f5,60($sp)
.L0da7dd9c:
    # Line 1087
    move	$t0,$ra
    # Line 1088
    bal	__glMipsXForm4
    nop
    # Line 1091
    addi	$a0,$a0,16
    # Line 1093
    bal	__glMipsXForm4
    # Line 1092
    addi	$a1,$a1,16
    # Line 1096
    addi	$a0,$a0,16
    # Line 1098
    bal	__glMipsXForm4
    # Line 1097
    addi	$a1,$a1,16
    # Line 1101
    addi	$a0,$a0,16
    # Line 1103
    bal	__glMipsXForm4
    # Line 1102
    addi	$a1,$a1,16
    # Line 1106
    move	$ra,$t0
    # Line 1107
    addiu	$sp,$sp,64
    # Line 1108
    jr	$ra
    nop
.end __glMipsMultMatrix

