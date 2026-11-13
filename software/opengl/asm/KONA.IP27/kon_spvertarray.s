# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27/kon_spvertarray.s
# Category: KONA.IP27
# Compiler Options: 
# Total Functions: 12

.text

# Function: __glkonSendPackedVertexV3F
# Declared: Line 607 (Source lines: 607-629)
# Address: 0x0da77330 - 0x0da7737c (Size: 76 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F
.ent __glkonSendPackedVertexV3F
__glkonSendPackedVertexV3F:
    # Line 607
    lw	$a0,4112($zero)
    # Line 608
    lw	$t1,5100($a0)
    # Line 609
    lw	$t0,5088($a0)
    # Line 610
    multu	$a1,$t1
    # Line 611
    mflo	$t8
    # Line 612
    li	$a3,1
    # Line 613
    addu	$t0,$t0,$t8
.L0da7734c:
    # Line 617
    li	$t9,427
    # Line 618
    sw	$t9,16384($zero)
    # Line 619
    ldl	$v0,0($t0)
    # Line 620
    ldr	$v0,7($t0)
    # Line 621
    lw	$v1,8($t0)
    # Line 622
    subu	$a2,$a2,$a3
    # Line 623
    sd	$v0,16384($zero)
    # Line 624
    addu	$t0,$t0,$t1
    # Line 625
    bnez	$a2,.L0da7734c
    # Line 626
    sw	$v1,16384($zero)
    # Line 628
    jr	$ra
    # Line 629
    nop
.end __glkonSendPackedVertexV3F

# Function: __glkonSendPackedVertexV3F_C4UB
# Declared: Line 636 (Source lines: 636-667)
# Address: 0x0da7737c - 0x0da773ec (Size: 112 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_C4UB
.ent __glkonSendPackedVertexV3F_C4UB
__glkonSendPackedVertexV3F_C4UB:
    # Line 636
    lw	$a0,4112($zero)
    # Line 637
    lw	$t1,5100($a0)
    # Line 638
    lw	$t0,5088($a0)
    # Line 639
    lw	$t3,5152($a0)
    # Line 640
    lw	$t2,5140($a0)
    # Line 641
    multu	$a1,$t1
    # Line 642
    mflo	$t8
    # Line 643
    li	$a3,1
    # Line 644
    addu	$t0,$t0,$t8
    # Line 645
    multu	$a1,$t3
    # Line 646
    mflo	$t9
    # Line 647
    addu	$t2,$t2,$t9
.L0da773ac:
    # Line 651
    li	$t9,428
    # Line 652
    sw	$t9,16384($zero)
    # Line 653
    lwu	$t8,0($t2)
    # Line 654
    ldl	$v0,0($t0)
    # Line 655
    ldr	$v0,7($t0)
    # Line 656
    subu	$a2,$a2,$a3
    # Line 657
    ldr	$v1,11($t0)
    # Line 658
    addu	$t2,$t2,$t3
    # Line 659
    sd	$v0,16384($zero)
    # Line 660
    dsll32	$v1,$v1,0x0
    # Line 661
    or	$v1,$v1,$t8
    # Line 662
    addu	$t0,$t0,$t1
    # Line 663
    bnez	$a2,.L0da773ac
    # Line 664
    sd	$v1,16384($zero)
    # Line 666
    jr	$ra
    # Line 667
    nop
.end __glkonSendPackedVertexV3F_C4UB

# Function: __glkonSendPackedVertexV3F_N3S
# Declared: Line 674 (Source lines: 674-711)
# Address: 0x0da773ec - 0x0da77470 (Size: 132 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_N3S
.ent __glkonSendPackedVertexV3F_N3S
__glkonSendPackedVertexV3F_N3S:
    # Line 674
    lw	$a0,4112($zero)
    # Line 675
    lw	$t1,5100($a0)
    # Line 676
    lw	$t0,5088($a0)
    # Line 677
    lw	$a5,5124($a0)
    # Line 678
    lw	$a4,5116($a0)
    # Line 679
    multu	$a1,$t1
    # Line 680
    li	$at,-2
    # Line 681
    mflo	$t8
    # Line 682
    li	$a3,1
    # Line 683
    addu	$t0,$t0,$t8
    # Line 684
    multu	$a1,$a5
    # Line 685
    mflo	$t9
    # Line 686
    addu	$a4,$a4,$t9
.L0da77420:
    # Line 691
    li	$t9,429
    # Line 692
    sw	$t9,16384($zero)
    # Line 693
    lwu	$t8,0($a4)
    # Line 694
    lwu	$t9,4($a4)
    # Line 695
    subu	$a2,$a2,$a3
    # Line 696
    ldl	$v0,0($t0)
    # Line 697
    ldr	$v0,7($t0)
    # Line 698
    addu	$a4,$a4,$a5
    # Line 699
    ldr	$v1,11($t0)
    # Line 700
    dsll32	$v1,$v1,0x0
    # Line 701
    and	$t8,$t8,$at
    # Line 702
    srl	$t9,$t9,0x1f
    # Line 703
    or	$t8,$t8,$t9
    # Line 704
    sd	$v0,16384($zero)
    # Line 705
    or	$v1,$v1,$t8
    # Line 706
    addu	$t0,$t0,$t1
    # Line 707
    bnez	$a2,.L0da77420
    # Line 708
    sd	$v1,16384($zero)
    # Line 710
    jr	$ra
    # Line 711
    nop
.end __glkonSendPackedVertexV3F_N3S

# Function: __glkonSendPackedVertexV3F_C4UB_N3S
# Declared: Line 718 (Source lines: 718-764)
# Address: 0x0da77470 - 0x0da77518 (Size: 168 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_C4UB_N3S
.ent __glkonSendPackedVertexV3F_C4UB_N3S
__glkonSendPackedVertexV3F_C4UB_N3S:
    # Line 718
    lw	$a0,4112($zero)
    # Line 719
    lw	$t1,5100($a0)
    # Line 720
    lw	$t0,5088($a0)
    # Line 721
    lw	$t3,5152($a0)
    # Line 722
    lw	$t2,5140($a0)
    # Line 723
    lw	$a5,5124($a0)
    # Line 724
    lw	$a4,5116($a0)
    # Line 725
    multu	$a1,$t1
    # Line 726
    li	$at,-2
    # Line 727
    mflo	$t8
    # Line 728
    li	$a3,1
    # Line 729
    addu	$t0,$t0,$t8
    # Line 730
    multu	$a1,$t3
    # Line 731
    mflo	$t9
    # Line 732
    nop
    # Line 733
    addu	$t2,$t2,$t9
    # Line 734
    multu	$a1,$a5
    # Line 735
    mflo	$t8
    # Line 736
    addu	$a4,$a4,$t8
.L0da774bc:
    # Line 741
    li	$t9,430
    # Line 742
    sw	$t9,16384($zero)
    # Line 743
    lwu	$t8,0($a4)
    # Line 744
    lwu	$t9,4($a4)
    # Line 745
    and	$t8,$t8,$at
    # Line 746
    srl	$t9,$t9,0x1f
    # Line 747
    or	$t8,$t8,$t9
    # Line 748
    lwu	$t9,0($t2)
    # Line 749
    ldl	$v0,0($t0)
    # Line 750
    ldr	$v0,7($t0)
    # Line 751
    ldr	$v1,11($t0)
    # Line 752
    subu	$a2,$a2,$a3
    # Line 753
    addu	$a4,$a4,$a5
    # Line 754
    sd	$v0,16384($zero)
    # Line 755
    dsll32	$v1,$v1,0x0
    # Line 756
    or	$v1,$v1,$t9
    # Line 757
    addu	$t2,$t2,$t3
    # Line 758
    sd	$v1,16384($zero)
    # Line 759
    addu	$t0,$t0,$t1
    # Line 760
    bnez	$a2,.L0da774bc
    # Line 761
    sw	$t8,16384($zero)
    # Line 763
    jr	$ra
    # Line 764
    nop
.end __glkonSendPackedVertexV3F_C4UB_N3S

# Function: __glkonSendPackedVertexV3F_T2F
# Declared: Line 771 (Source lines: 771-804)
# Address: 0x0da77518 - 0x0da77590 (Size: 120 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_T2F
.ent __glkonSendPackedVertexV3F_T2F
__glkonSendPackedVertexV3F_T2F:
    # Line 771
    lw	$a0,4112($zero)
    # Line 772
    lw	$t1,5100($a0)
    # Line 773
    lw	$t0,5088($a0)
    # Line 774
    lw	$a7,5204($a0)
    # Line 775
    lw	$a6,5192($a0)
    # Line 776
    multu	$a1,$t1
    # Line 777
    mflo	$t8
    # Line 778
    li	$a3,1
    # Line 779
    addu	$t0,$t0,$t8
    # Line 780
    multu	$a1,$a7
    # Line 781
    mflo	$t9
    # Line 782
    addu	$a6,$a6,$t9
.L0da77548:
    # Line 786
    li	$t9,431
    # Line 787
    sw	$t9,16384($zero)
    # Line 788
    lwu	$t8,0($a6)
    # Line 789
    lwu	$t9,4($a6)
    # Line 790
    subu	$a2,$a2,$a3
    # Line 791
    ldl	$v0,0($t0)
    # Line 792
    ldr	$v0,7($t0)
    # Line 793
    ldr	$v1,11($t0)
    # Line 794
    sd	$v0,16384($zero)
    # Line 795
    dsll32	$v1,$v1,0x0
    # Line 796
    or	$v1,$v1,$t8
    # Line 797
    addu	$a6,$a6,$a7
    # Line 798
    sd	$v1,16384($zero)
    # Line 799
    addu	$t0,$t0,$t1
    # Line 800
    bnez	$a2,.L0da77548
    # Line 801
    sw	$t9,16384($zero)
    # Line 803
    jr	$ra
    # Line 804
    nop
.end __glkonSendPackedVertexV3F_T2F

# Function: __glkonSendPackedVertexV3F_C4UB_T2F
# Declared: Line 811 (Source lines: 811-852)
# Address: 0x0da77590 - 0x0da77628 (Size: 152 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_C4UB_T2F
.ent __glkonSendPackedVertexV3F_C4UB_T2F
__glkonSendPackedVertexV3F_C4UB_T2F:
    # Line 811
    lw	$a0,4112($zero)
    # Line 812
    lw	$t1,5100($a0)
    # Line 813
    lw	$t0,5088($a0)
    # Line 814
    lw	$t3,5152($a0)
    # Line 815
    lw	$t2,5140($a0)
    # Line 816
    lw	$a7,5204($a0)
    # Line 817
    lw	$a6,5192($a0)
    # Line 818
    multu	$a1,$t1
    # Line 819
    mflo	$t8
    # Line 820
    li	$a3,1
    # Line 821
    addu	$t0,$t0,$t8
    # Line 822
    multu	$a1,$t3
    # Line 823
    mflo	$t9
    # Line 824
    nop
    # Line 825
    addu	$t2,$t2,$t9
    # Line 826
    multu	$a1,$a7
    # Line 827
    mflo	$t8
    # Line 828
    addu	$a6,$a6,$t8
.L0da775d8:
    # Line 832
    li	$t9,432
    # Line 833
    sw	$t9,16384($zero)
    # Line 834
    lwu	$t8,0($t2)
    # Line 835
    ldl	$v1,0($a6)
    # Line 836
    ldr	$v1,7($a6)
    # Line 837
    subu	$a2,$a2,$a3
    # Line 838
    ldl	$v0,0($t0)
    # Line 839
    ldr	$v0,7($t0)
    # Line 840
    addu	$t2,$t2,$t3
    # Line 841
    sd	$v0,16384($zero)
    # Line 842
    ldr	$v0,11($t0)
    # Line 843
    dsll32	$v0,$v0,0x0
    # Line 844
    or	$v0,$v0,$t8
    # Line 845
    addu	$a6,$a6,$a7
    # Line 846
    sd	$v0,16384($zero)
    # Line 847
    addu	$t0,$t0,$t1
    # Line 848
    bnez	$a2,.L0da775d8
    # Line 849
    sd	$v1,16384($zero)
    # Line 851
    jr	$ra
    # Line 852
    nop
.end __glkonSendPackedVertexV3F_C4UB_T2F

# Function: __glkonSendPackedVertexV3F_N3S_T2F
# Declared: Line 859 (Source lines: 859-905)
# Address: 0x0da77628 - 0x0da776d0 (Size: 168 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_N3S_T2F
.ent __glkonSendPackedVertexV3F_N3S_T2F
__glkonSendPackedVertexV3F_N3S_T2F:
    # Line 859
    lw	$a0,4112($zero)
    # Line 860
    lw	$t1,5100($a0)
    # Line 861
    lw	$t0,5088($a0)
    # Line 862
    lw	$a5,5124($a0)
    # Line 863
    lw	$a4,5116($a0)
    # Line 864
    lw	$a7,5204($a0)
    # Line 865
    lw	$a6,5192($a0)
    # Line 866
    multu	$a1,$t1
    # Line 867
    mflo	$t8
    # Line 868
    li	$at,-2
    # Line 869
    addu	$t0,$t0,$t8
    # Line 870
    multu	$a1,$a5
    # Line 871
    mflo	$t9
    # Line 872
    li	$a3,1
    # Line 873
    addu	$a4,$a4,$t9
    # Line 874
    multu	$a1,$a7
    # Line 875
    mflo	$t8
    # Line 876
    addu	$a6,$a6,$t8
.L0da77670:
    # Line 881
    li	$t9,433
    # Line 882
    sw	$t9,16384($zero)
    # Line 883
    lwu	$t8,0($a4)
    # Line 884
    lwu	$t9,4($a4)
    # Line 885
    and	$t8,$t8,$at
    # Line 886
    srl	$t9,$t9,0x1f
    # Line 887
    or	$t8,$t8,$t9
    # Line 888
    ldl	$t9,0($a6)
    # Line 889
    ldr	$t9,7($a6)
    # Line 890
    ldl	$v0,0($t0)
    # Line 891
    ldr	$v0,7($t0)
    # Line 892
    subu	$a2,$a2,$a3
    # Line 893
    sd	$v0,16384($zero)
    # Line 894
    ldr	$v1,11($t0)
    # Line 895
    dsll32	$v1,$v1,0x0
    # Line 896
    or	$v1,$v1,$t8
    # Line 897
    addu	$a4,$a4,$a5
    # Line 898
    sd	$v1,16384($zero)
    # Line 899
    addu	$t0,$t0,$t1
    # Line 900
    addu	$a6,$a6,$a7
    # Line 901
    bnez	$a2,.L0da77670
    # Line 902
    sd	$t9,16384($zero)
    # Line 904
    jr	$ra
    # Line 905
    nop
.end __glkonSendPackedVertexV3F_N3S_T2F

# Function: __glkonSendPackedVertexV3F_C4UB_N3S_T2F
# Declared: Line 912 (Source lines: 912-967)
# Address: 0x0da776d0 - 0x0da7779c (Size: 204 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_C4UB_N3S_T2F
.ent __glkonSendPackedVertexV3F_C4UB_N3S_T2F
__glkonSendPackedVertexV3F_C4UB_N3S_T2F:
    # Line 912
    lw	$a0,4112($zero)
    # Line 913
    lw	$t1,5100($a0)
    # Line 914
    lw	$t0,5088($a0)
    # Line 915
    lw	$t3,5152($a0)
    # Line 916
    lw	$t2,5140($a0)
    # Line 917
    lw	$a5,5124($a0)
    # Line 918
    lw	$a4,5116($a0)
    # Line 919
    lw	$a7,5204($a0)
    # Line 920
    lw	$a6,5192($a0)
    # Line 921
    multu	$a1,$t1
    # Line 922
    mflo	$t8
    # Line 923
    li	$at,-2
    # Line 924
    addu	$t0,$t0,$t8
    # Line 925
    multu	$a1,$t3
    # Line 926
    mflo	$t9
    # Line 927
    li	$a3,1
    # Line 928
    addu	$t2,$t2,$t9
    # Line 929
    multu	$a1,$a5
    # Line 930
    mflo	$t8
    # Line 931
    nop
    # Line 932
    addu	$a4,$a4,$t8
    # Line 933
    multu	$a1,$a7
    # Line 934
    mflo	$t9
    # Line 935
    addu	$a6,$a6,$t9
.L0da77730:
    # Line 940
    li	$t9,434
    # Line 941
    sw	$t9,16384($zero)
    # Line 942
    lwu	$t8,0($a4)
    # Line 943
    lwu	$t9,4($a4)
    # Line 944
    and	$t8,$t8,$at
    # Line 945
    srl	$t9,$t9,0x1f
    # Line 946
    or	$t8,$t8,$t9
    # Line 947
    lwu	$v1,0($t2)
    # Line 948
    ldl	$t9,0($a6)
    # Line 949
    ldr	$t9,7($a6)
    # Line 950
    addu	$a4,$a4,$a5
    # Line 951
    ldl	$v0,0($t0)
    # Line 952
    ldr	$v0,7($t0)
    # Line 953
    subu	$a2,$a2,$a3
    # Line 954
    sd	$v0,16384($zero)
    # Line 955
    ldr	$v0,11($t0)
    # Line 956
    dsll32	$v0,$v0,0x0
    # Line 957
    or	$v0,$v0,$v1
    # Line 958
    addu	$t2,$t2,$t3
    # Line 959
    sd	$v0,16384($zero)
    # Line 960
    addu	$a6,$a6,$a7
    # Line 961
    sw	$t8,16384($zero)
    # Line 962
    addu	$t0,$t0,$t1
    # Line 963
    bnez	$a2,.L0da77730
    # Line 964
    sd	$t9,16384($zero)
    # Line 966
    jr	$ra
    # Line 967
    nop
.end __glkonSendPackedVertexV3F_C4UB_N3S_T2F

# Function: __glkonSendPackedVertexV3F_T2S
# Declared: Line 974 (Source lines: 974-1005)
# Address: 0x0da7779c - 0x0da7780c (Size: 112 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_T2S
.ent __glkonSendPackedVertexV3F_T2S
__glkonSendPackedVertexV3F_T2S:
    # Line 974
    lw	$a0,4112($zero)
    # Line 975
    lw	$t1,5100($a0)
    # Line 976
    lw	$t0,5088($a0)
    # Line 977
    lw	$a7,5204($a0)
    # Line 978
    lw	$a6,5192($a0)
    # Line 979
    multu	$a1,$t1
    # Line 980
    mflo	$t8
    # Line 981
    li	$a3,1
    # Line 982
    addu	$t0,$t0,$t8
    # Line 983
    multu	$a1,$a7
    # Line 984
    mflo	$t9
    # Line 985
    addu	$a6,$a6,$t9
.L0da777cc:
    # Line 989
    li	$t9,435
    # Line 990
    sw	$t9,16384($zero)
    # Line 991
    lwu	$t8,0($a6)
    # Line 992
    addu	$a6,$a6,$a7
    # Line 993
    ldl	$v0,0($t0)
    # Line 994
    ldr	$v0,7($t0)
    # Line 995
    subu	$a2,$a2,$a3
    # Line 996
    sd	$v0,16384($zero)
    # Line 997
    ldr	$v1,11($t0)
    # Line 998
    dsll32	$v1,$v1,0x0
    # Line 999
    or	$v1,$v1,$t8
    # Line 1000
    addu	$t0,$t0,$t1
    # Line 1001
    bnez	$a2,.L0da777cc
    # Line 1002
    sd	$v1,16384($zero)
    # Line 1004
    jr	$ra
    # Line 1005
    nop
.end __glkonSendPackedVertexV3F_T2S

# Function: __glkonSendPackedVertexV3F_C4UB_T2S
# Declared: Line 1012 (Source lines: 1012-1052)
# Address: 0x0da7780c - 0x0da778a0 (Size: 148 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_C4UB_T2S
.ent __glkonSendPackedVertexV3F_C4UB_T2S
__glkonSendPackedVertexV3F_C4UB_T2S:
    # Line 1012
    lw	$a0,4112($zero)
    # Line 1013
    lw	$t1,5100($a0)
    # Line 1014
    lw	$t0,5088($a0)
    # Line 1015
    lw	$t3,5152($a0)
    # Line 1016
    lw	$t2,5140($a0)
    # Line 1017
    lw	$a7,5204($a0)
    # Line 1018
    lw	$a6,5192($a0)
    # Line 1019
    multu	$a1,$t1
    # Line 1020
    mflo	$t8
    # Line 1021
    li	$a3,1
    # Line 1022
    addu	$t0,$t0,$t8
    # Line 1023
    multu	$a1,$t3
    # Line 1024
    mflo	$t9
    # Line 1025
    nop
    # Line 1026
    addu	$t2,$t2,$t9
    # Line 1027
    multu	$a1,$a7
    # Line 1028
    mflo	$t8
    # Line 1029
    addu	$a6,$a6,$t8
.L0da77854:
    # Line 1033
    li	$t9,436
    # Line 1034
    sw	$t9,16384($zero)
    # Line 1035
    lwu	$t8,0($t2)
    # Line 1036
    lwu	$t9,0($a6)
    # Line 1037
    subu	$a2,$a2,$a3
    # Line 1038
    ldl	$v0,0($t0)
    # Line 1039
    ldr	$v0,7($t0)
    # Line 1040
    addu	$t2,$t2,$t3
    # Line 1041
    sd	$v0,16384($zero)
    # Line 1042
    ldr	$v1,11($t0)
    # Line 1043
    dsll32	$v1,$v1,0x0
    # Line 1044
    or	$v1,$v1,$t8
    # Line 1045
    addu	$a6,$a6,$a7
    # Line 1046
    sd	$v1,16384($zero)
    # Line 1047
    addu	$t0,$t0,$t1
    # Line 1048
    bnez	$a2,.L0da77854
    # Line 1049
    sw	$t9,16384($zero)
    # Line 1051
    jr	$ra
    # Line 1052
    nop
.end __glkonSendPackedVertexV3F_C4UB_T2S

# Function: __glkonSendPackedVertexV3F_N3S_T2S
# Declared: Line 1059 (Source lines: 1059-1104)
# Address: 0x0da778a0 - 0x0da77944 (Size: 164 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_N3S_T2S
.ent __glkonSendPackedVertexV3F_N3S_T2S
__glkonSendPackedVertexV3F_N3S_T2S:
    # Line 1059
    lw	$a0,4112($zero)
    # Line 1060
    lw	$t1,5100($a0)
    # Line 1061
    lw	$t0,5088($a0)
    # Line 1062
    lw	$a5,5124($a0)
    # Line 1063
    lw	$a4,5116($a0)
    # Line 1064
    lw	$a7,5204($a0)
    # Line 1065
    lw	$a6,5192($a0)
    # Line 1066
    multu	$a1,$t1
    # Line 1067
    mflo	$t8
    # Line 1068
    li	$at,-2
    # Line 1069
    addu	$t0,$t0,$t8
    # Line 1070
    multu	$a1,$a5
    # Line 1071
    mflo	$t9
    # Line 1072
    li	$a3,1
    # Line 1073
    addu	$a4,$a4,$t9
    # Line 1074
    multu	$a1,$a7
    # Line 1075
    mflo	$t8
    # Line 1076
    addu	$a6,$a6,$t8
.L0da778e8:
    # Line 1081
    li	$t9,437
    # Line 1082
    sw	$t9,16384($zero)
    # Line 1083
    lwu	$t8,0($a4)
    # Line 1084
    lwu	$t9,4($a4)
    # Line 1085
    and	$t8,$t8,$at
    # Line 1086
    srl	$t9,$t9,0x1f
    # Line 1087
    or	$t8,$t8,$t9
    # Line 1088
    lwu	$t9,0($a6)
    # Line 1089
    ldl	$v0,0($t0)
    # Line 1090
    ldr	$v0,7($t0)
    # Line 1091
    subu	$a2,$a2,$a3
    # Line 1092
    sd	$v0,16384($zero)
    # Line 1093
    ldr	$v1,11($t0)
    # Line 1094
    dsll32	$v1,$v1,0x0
    # Line 1095
    or	$v1,$v1,$t8
    # Line 1096
    addu	$a6,$a6,$a7
    # Line 1097
    sd	$v1,16384($zero)
    # Line 1098
    addu	$t0,$t0,$t1
    # Line 1099
    addu	$a4,$a4,$a5
    # Line 1100
    bnez	$a2,.L0da778e8
    # Line 1101
    sw	$t9,16384($zero)
    # Line 1103
    jr	$ra
    # Line 1104
    nop
.end __glkonSendPackedVertexV3F_N3S_T2S

# Function: __glkonSendPackedVertexV3F_C4UB_N3S_T2S
# Declared: Line 1111 (Source lines: 1111-1166)
# Address: 0x0da77944 - 0x0da77a10 (Size: 204 bytes, Frame: 0)
.globl __glkonSendPackedVertexV3F_C4UB_N3S_T2S
.ent __glkonSendPackedVertexV3F_C4UB_N3S_T2S
__glkonSendPackedVertexV3F_C4UB_N3S_T2S:
    # Line 1111
    lw	$a0,4112($zero)
    # Line 1112
    lw	$t1,5100($a0)
    # Line 1113
    lw	$t0,5088($a0)
    # Line 1114
    lw	$t3,5152($a0)
    # Line 1115
    lw	$t2,5140($a0)
    # Line 1116
    lw	$a5,5124($a0)
    # Line 1117
    lw	$a4,5116($a0)
    # Line 1118
    lw	$a7,5204($a0)
    # Line 1119
    lw	$a6,5192($a0)
    # Line 1120
    multu	$a1,$t1
    # Line 1121
    mflo	$t8
    # Line 1122
    li	$at,-2
    # Line 1123
    addu	$t0,$t0,$t8
    # Line 1124
    multu	$a1,$t3
    # Line 1125
    mflo	$t9
    # Line 1126
    li	$a3,1
    # Line 1127
    addu	$t2,$t2,$t9
    # Line 1128
    multu	$a1,$a5
    # Line 1129
    mflo	$t8
    # Line 1130
    nop
    # Line 1131
    addu	$a4,$a4,$t8
    # Line 1132
    multu	$a1,$a7
    # Line 1133
    mflo	$t9
    # Line 1134
    addu	$a6,$a6,$t9
.L0da779a4:
    # Line 1139
    li	$t9,438
    # Line 1140
    sw	$t9,16384($zero)
    # Line 1141
    lwu	$t8,0($a4)
    # Line 1142
    lwu	$t9,4($a4)
    # Line 1143
    and	$t8,$t8,$at
    # Line 1144
    srl	$t9,$t9,0x1f
    # Line 1145
    or	$t8,$t8,$t9
    # Line 1146
    lwu	$v1,0($t2)
    # Line 1147
    lwu	$t9,0($a6)
    # Line 1148
    addu	$a4,$a4,$a5
    # Line 1149
    ldl	$v0,0($t0)
    # Line 1150
    ldr	$v0,7($t0)
    # Line 1151
    subu	$a2,$a2,$a3
    # Line 1152
    sd	$v0,16384($zero)
    # Line 1153
    ldr	$v0,11($t0)
    # Line 1154
    addu	$t2,$t2,$t3
    # Line 1155
    dsll32	$v0,$v0,0x0
    # Line 1156
    or	$v0,$v0,$v1
    # Line 1157
    addu	$a6,$a6,$a7
    # Line 1158
    sd	$v0,16384($zero)
    # Line 1159
    dsll32	$t8,$t8,0x0
    # Line 1160
    or	$t8,$t8,$t9
    # Line 1161
    addu	$t0,$t0,$t1
    # Line 1162
    bnez	$a2,.L0da779a4
    # Line 1163
    sd	$t8,16384($zero)
    # Line 1165
    jr	$ra
    # Line 1166
    nop
.end __glkonSendPackedVertexV3F_C4UB_N3S_T2S

