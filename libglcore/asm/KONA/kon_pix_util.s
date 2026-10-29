# Source: ../KONA/kon_pix_util.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_pix_util.c
# Total Functions: 3

.text

# Function: __glkon_formatToBaseFormat
# Declared: Line 57 (Source lines: 59-105)
# Address: 0x0d9876e0 - 0x0d987a1c (Size: 828 bytes, Frame: 0)
.globl __glkon_formatToBaseFormat
.ent __glkon_formatToBaseFormat
__glkon_formatToBaseFormat:
    # Line 59
    li	$a2,0x8049
    sltu	$at,$a0,$a2
    bnez	$at,.L0d987748
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0d987868
    li	$a2,0x8053
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0d9877d4
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0d987844
    li	$a2,0x8058
    sltu	$a3,$a0,$a2
    bnez	$a3,.L0d98792c
    sltu	$a4,$a2,$a0
    beqz	$a4,.L0d987970
    li	$a2,0x805a
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0d9879ac
    li	$a5,0x8059
    sltu	$a6,$a2,$a0
    beqz	$a6,.L0d987970
    li	$a7,0x805b
    bne	$a0,$a7,.L0d98782c
    nop
    b	.L0d987970
    nop
.L0d987748:
    li	$a2,0x803f
    sltu	$t0,$a0,$a2
    bnez	$t0,.L0d98779c
    sltiu	$v0,$a0,6410
    sltu	$t1,$a2,$a0
    beqz	$t1,.L0d987900
    li	$a2,0x8044
    sltu	$t2,$a0,$a2
    bnez	$t2,.L0d9878bc
    sltu	$t3,$a2,$a0
    beqz	$t3,.L0d98788c
    li	$a2,0x8047
    sltu	$t8,$a0,$a2
    bnez	$t8,.L0d987870
    sltu	$t9,$a2,$a0
    beqz	$t9,.L0d98788c
    li	$at,0x8048
    bne	$a0,$at,.L0d98782c
    nop
    b	.L0d98788c
    nop
.L0d98779c:
    bnez	$v0,.L0d987810
    sltiu	$a2,$a0,6408
    sltiu	$v1,$a0,6411
    bnez	$v1,.L0d98788c
    li	$a2,0x803d
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d987908
    sltu	$a3,$a2,$a0
    beqz	$a3,.L0d987924
    li	$a4,0x803e
    bne	$a0,$a4,.L0d98782c
    nop
    b	.L0d987924
    nop
.L0d9877d4:
    li	$a2,0x804e
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0d987894
    sltu	$a6,$a2,$a0
    beqz	$a6,.L0d987844
    li	$a2,0x8051
    sltu	$a7,$a0,$a2
    bnez	$a7,.L0d987978
    sltu	$t0,$a2,$a0
    beqz	$t0,.L0d987844
    li	$t1,0x8052
    bne	$a0,$t1,.L0d98782c
    nop
    b	.L0d987844
    nop
.L0d987810:
    bnez	$a2,.L0d987834
    sltiu	$t8,$a0,6407
    sltiu	$t2,$a0,6409
    bnez	$t2,.L0d987970
    li	$t3,6409
    beq	$a0,$t3,.L0d987900
    nop
.L0d98782c:
    # Line 105
    jr	$ra
    move	$v0,$zero
.L0d987834:
    # Line 59
    bnez	$t8,.L0d98799c
    li	$a4,6406
    beqz	$a2,.L0d98782c
    nop
.L0d987844:
    # Line 105
    jr	$ra
    # Line 94
    li	$v0,6407
.L0d98784c:
    # Line 59
    li	$a2,0x804b
    sltu	$t9,$a0,$a2
    bnez	$t9,.L0d9879bc
    li	$a6,0x804a
    sltu	$at,$a2,$a0
    bnez	$at,.L0d98782c
    nop
.L0d987868:
    # Line 105
    jr	$ra
    # Line 85
    li	$v0,0x8049
.L0d987870:
    # Line 59
    li	$a2,0x8046
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d987a0c
    li	$t3,0x8045
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0d98782c
    nop
.L0d98788c:
    # Line 105
    jr	$ra
    # Line 79
    li	$v0,6410
.L0d987894:
    # Line 59
    li	$a2,0x804c
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d98784c
    sltu	$a3,$a2,$a0
    beqz	$a3,.L0d987868
    li	$a4,0x804d
    bne	$a0,$a4,.L0d98782c
    nop
    b	.L0d987868
    nop
.L0d9878bc:
    li	$a2,0x8042
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0d9878e4
    sltu	$a6,$a2,$a0
    beqz	$a6,.L0d987900
    li	$a7,0x8043
    bne	$a0,$a7,.L0d98782c
    nop
    b	.L0d98788c
    nop
.L0d9878e4:
    li	$a2,0x8041
    sltu	$t0,$a0,$a2
    bnez	$t0,.L0d9879cc
    li	$a7,0x8040
    sltu	$t1,$a2,$a0
    bnez	$t1,.L0d98782c
    nop
.L0d987900:
    # Line 105
    jr	$ra
    # Line 71
    li	$v0,6409
.L0d987908:
    # Line 59
    li	$a2,0x803c
    sltu	$t2,$a0,$a2
    bnez	$t2,.L0d9879dc
    li	$t0,0x803b
    sltu	$t3,$a2,$a0
    bnez	$t3,.L0d98782c
    nop
.L0d987924:
    # Line 105
    jr	$ra
    # Line 65
    li	$v0,6406
.L0d98792c:
    # Line 59
    li	$a2,0x8056
    sltu	$t8,$a0,$a2
    bnez	$t8,.L0d987954
    sltu	$t9,$a2,$a0
    beqz	$t9,.L0d987970
    li	$at,0x8057
    bne	$a0,$at,.L0d98782c
    nop
    b	.L0d987970
    nop
.L0d987954:
    li	$a2,0x8055
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d9879ec
    li	$t1,0x8054
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0d98782c
    nop
.L0d987970:
    # Line 105
    jr	$ra
    # Line 103
    li	$v0,6408
.L0d987978:
    # Line 59
    li	$a2,0x8050
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d9879fc
    li	$t2,0x804f
    sltu	$a3,$a2,$a0
    beqz	$a3,.L0d987844
    nop
    b	.L0d98782c
    nop
.L0d98799c:
    bne	$a0,$a4,.L0d98782c
    nop
    b	.L0d987924
    nop
.L0d9879ac:
    bne	$a0,$a5,.L0d98782c
    nop
    b	.L0d987970
    nop
.L0d9879bc:
    bne	$a0,$a6,.L0d98782c
    nop
    b	.L0d987868
    nop
.L0d9879cc:
    bne	$a0,$a7,.L0d98782c
    nop
    b	.L0d987900
    nop
.L0d9879dc:
    bne	$a0,$t0,.L0d98782c
    nop
    b	.L0d987924
    nop
.L0d9879ec:
    bne	$a0,$t1,.L0d98782c
    nop
    b	.L0d987844
    nop
.L0d9879fc:
    bne	$a0,$t2,.L0d98782c
    nop
    b	.L0d987844
    nop
.L0d987a0c:
    bne	$a0,$t3,.L0d98782c
    nop
    b	.L0d98788c
    nop
.end __glkon_formatToBaseFormat

# Function: __glkon_byteSwapMaybe
# Declared: Line 113 (Source lines: 115-155)
# Address: 0x0d987a20 - 0x0d987bc4 (Size: 420 bytes, Frame: 0)
.globl __glkon_byteSwapMaybe
.ent __glkon_byteSwapMaybe
__glkon_byteSwapMaybe:
    # Line 115
    move	$a6,$a0
    # Line 116
    beqz	$a4,.L0d987b14
    lw	$a7,4112($zero)
    # Line 120
    lbu	$a4,1188($a7)
    sltiu	$a4,$a4,1
.L0d987a34:
    bnez	$a4,.L0d987b0c
    # Line 121
    sltiu	$a4,$a1,5126
    bnez	$a4,.L0d987a8c
    sltiu	$a5,$a1,5121
    sltiu	$a5,$a1,5127
    bnez	$a5,.L0d987abc
    nop
    li	$a3,0x8034
    sltu	$a7,$a1,$a3
    sltu	$t0,$a3,$a1
    li	$a3,0x8036
    bnez	$a7,.L0d987b74
    sltu	$t1,$a1,$a3
    beqz	$t0,.L0d987b48
    nop
    bnez	$t1,.L0d987bb4
    li	$at,0x8035
    sltu	$t2,$a3,$a1
    beqz	$t2,.L0d987acc
    nop
    b	.L0d987b0c
    nop
.L0d987a8c:
    sltiu	$t3,$a1,5123
    li	$t0,5122
    sltiu	$t8,$a1,5124
    bnez	$t3,.L0d987b20
    sltiu	$a7,$a1,5122
    sltiu	$t9,$a1,5125
    bnez	$t8,.L0d987b38
    nop
    bnez	$t9,.L0d987b9c
    li	$t9,5124
    beqz	$a4,.L0d987b0c
    nop
.L0d987abc:
    # Line 141
    multu	$a2,$a3
    mflo	$a2
    nop
    nop
.L0d987acc:
    # Line 143
    beqz	$a2,.L0d987b0c
    nop
    nop
    nop
    nop
.L0d987ae0:
    # Line 145
    addiu	$a6,$a6,4
    # Line 150
    lbu	$v1,-2($a6)
    # Line 149
    lbu	$a0,-3($a6)
    # Line 151
    sb	$a0,-2($a6)
    # Line 150
    sb	$v1,-3($a6)
    # Line 147
    lbu	$at,-1($a6)
    # Line 146
    lbu	$v0,-4($a6)
    # Line 145
    addiu	$a2,$a2,-1
    # Line 148
    sb	$v0,-1($a6)
    # Line 145
    bnez	$a2,.L0d987ae0
    # Line 147
    sb	$at,-4($a6)
.L0d987b0c:
    # Line 155
    jr	$ra
    nop
.L0d987b14:
    # Line 120
    lbu	$a4,1144($a7)
    b	.L0d987a34
    sltiu	$a4,$a4,1
.L0d987b20:
    # Line 121
    bnez	$a5,.L0d987b94
    nop
    bnez	$a7,.L0d987b0c
    nop
    bne	$a1,$t0,.L0d987b0c
    nop
.L0d987b38:
    # Line 128
    multu	$a2,$a3
    mflo	$a2
    nop
    nop
.L0d987b48:
    # Line 130
    beqz	$a2,.L0d987b0c
    nop
.L0d987b50:
    # Line 132
    addiu	$a6,$a6,2
    # Line 134
    lbu	$t1,-1($a6)
    # Line 133
    lbu	$t2,-2($a6)
    # Line 132
    addiu	$a2,$a2,-1
    # Line 135
    sb	$t2,-1($a6)
    # Line 132
    bnez	$a2,.L0d987b50
    # Line 134
    sb	$t1,-2($a6)
    b	.L0d987b0c
    nop
.L0d987b74:
    # Line 121
    li	$a3,0x8033
    sltu	$t3,$a1,$a3
    bnez	$t3,.L0d987bac
    sltu	$t8,$a3,$a1
    beqz	$t8,.L0d987b48
    nop
    b	.L0d987b0c
    nop
.L0d987b94:
    # Line 155
    jr	$ra
    nop
.L0d987b9c:
    # Line 121
    bne	$a1,$t9,.L0d987b0c
    nop
    b	.L0d987abc
    nop
.L0d987bac:
    # Line 155
    jr	$ra
    nop
.L0d987bb4:
    # Line 121
    bne	$a1,$at,.L0d987b0c
    nop
    b	.L0d987acc
    nop
.end __glkon_byteSwapMaybe

# Function: __glkon_packPixelRow
# Declared: Line 163 (Source lines: 167-197)
# Address: 0x0d987bd0 - 0x0d988198 (Size: 1480 bytes, Frame: 0)
.globl __glkon_packPixelRow
.ent __glkon_packPixelRow
__glkon_packPixelRow:
    # Line 167
    li	$at,0x8032
    li	$v1,0x8034
    beq	$a2,$at,.L0d987d68
    li	$a4,0x8036
    li	$v0,0x8033
    beq	$a2,$v0,.L0d987e98
    nop
    beq	$a2,$v1,.L0d988018
    nop
    bne	$a2,$a4,.L0d987d60
    nop
    # Line 190
    blez	$a3,.L0d987d60
    andi	$a5,$a3,0x3
    move	$a2,$zero
    beqz	$a5,.L0d987c60
    sra	$a7,$a3,0x2
.L0d987c10:
    # Line 191
    addiu	$a0,$a0,16
    # Line 192
    lw	$a6,-12($a0)
    # Line 191
    addiu	$a1,$a1,4
    # Line 192
    lw	$t1,-16($a0)
    # Line 191
    addiu	$a2,$a2,1
    # Line 192
    sltu	$a6,$zero,$a6
    lw	$t0,-8($a0)
    addiu	$a5,$a5,-1
    sll	$a6,$a6,0xc
    lw	$a7,-4($a0)
    sll	$t1,$t1,0x16
    andi	$t0,$t0,0x3ff
    andi	$a7,$a7,0x3
    sll	$t0,$t0,0x2
    or	$a6,$a6,$t1
    or	$a7,$a7,$t0
    or	$a6,$a6,$a7
    bnez	$a5,.L0d987c10
    sw	$a6,-4($a1)
    sra	$a7,$a3,0x2
.L0d987c60:
    beqz	$a7,.L0d987d60
    nop
    nop
    nop
.L0d987c70:
    lw	$t3,4($a0)
    lw	$at,0($a0)
    sltu	$t3,$zero,$t3
    lw	$t9,8($a0)
    sll	$t3,$t3,0xc
    lw	$t8,12($a0)
    sll	$at,$at,0x16
    andi	$t9,$t9,0x3ff
    andi	$t8,$t8,0x3
    sll	$t9,$t9,0x2
    or	$t3,$t3,$at
    or	$t8,$t8,$t9
    or	$t3,$t3,$t8
    sw	$t3,0($a1)
    lw	$t2,20($a0)
    lw	$t9,16($a0)
    sltu	$t2,$zero,$t2
    lw	$t8,24($a0)
    sll	$t2,$t2,0xc
    lw	$t3,28($a0)
    sll	$t9,$t9,0x16
    andi	$t8,$t8,0x3ff
    andi	$t3,$t3,0x3
    sll	$t8,$t8,0x2
    or	$t2,$t2,$t9
    or	$t3,$t3,$t8
    or	$t2,$t2,$t3
    sw	$t2,4($a1)
    lw	$t1,36($a0)
    lw	$t8,32($a0)
    sltu	$t1,$zero,$t1
    lw	$t3,40($a0)
    sll	$t1,$t1,0xc
    lw	$t2,44($a0)
    sll	$t8,$t8,0x16
    andi	$t3,$t3,0x3ff
    andi	$t2,$t2,0x3
    sll	$t3,$t3,0x2
    or	$t1,$t1,$t8
    or	$t2,$t2,$t3
    # Line 191
    addiu	$a0,$a0,64
    # Line 192
    or	$t1,$t1,$t2
    sw	$t1,8($a1)
    lw	$t0,-12($a0)
    lw	$t3,-16($a0)
    # Line 191
    addiu	$a1,$a1,16
    # Line 192
    sltu	$t0,$zero,$t0
    lw	$t2,-8($a0)
    # Line 191
    addiu	$a2,$a2,4
    # Line 192
    sll	$t0,$t0,0xc
    lw	$t1,-4($a0)
    sll	$t3,$t3,0x16
    andi	$t2,$t2,0x3ff
    andi	$t1,$t1,0x3
    sll	$t2,$t2,0x2
    or	$t0,$t0,$t3
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 191
    bne	$a3,$a2,.L0d987c70
    # Line 192
    sw	$t0,-4($a1)
.L0d987d60:
    # Line 197
    jr	$ra
    nop
.L0d987d68:
    # Line 169
    blez	$a3,.L0d987d60
    andi	$a5,$a3,0x3
    move	$a2,$zero
    beqz	$a5,.L0d987dc0
    sra	$at,$a3,0x2
.L0d987d7c:
    # Line 170
    addiu	$a0,$a0,12
    # Line 171
    lw	$t9,-8($a0)
    # Line 170
    addiu	$a1,$a1,1
    # Line 171
    lw	$at,-12($a0)
    # Line 170
    addiu	$a2,$a2,1
    # Line 171
    sltu	$t9,$zero,$t9
    sll	$t9,$t9,0x2
    andi	$at,$at,0x7
    lw	$t8,-4($a0)
    addiu	$a5,$a5,-1
    sll	$at,$at,0x5
    andi	$t8,$t8,0x3
    or	$t9,$t9,$at
    or	$t8,$t8,$t9
    bnez	$a5,.L0d987d7c
    sb	$t8,-1($a1)
    sra	$at,$a3,0x2
.L0d987dc0:
    beqz	$at,.L0d987d60
    nop
    nop
    nop
.L0d987dd0:
    lw	$t1,4($a0)
    lw	$t2,0($a0)
    sltu	$t1,$zero,$t1
    sll	$t1,$t1,0x2
    andi	$t2,$t2,0x7
    lw	$t0,8($a0)
    sll	$t2,$t2,0x5
    andi	$t0,$t0,0x3
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sb	$t0,0($a1)
    lw	$a7,16($a0)
    lw	$t0,12($a0)
    sltu	$a7,$zero,$a7
    sll	$a7,$a7,0x2
    andi	$t0,$t0,0x7
    lw	$a6,20($a0)
    sll	$t0,$t0,0x5
    andi	$a6,$a6,0x3
    or	$a7,$a7,$t0
    or	$a6,$a6,$a7
    sb	$a6,1($a1)
    lw	$a5,28($a0)
    lw	$a6,24($a0)
    sltu	$a5,$zero,$a5
    sll	$a5,$a5,0x2
    andi	$a6,$a6,0x7
    lw	$a4,32($a0)
    sll	$a6,$a6,0x5
    andi	$a4,$a4,0x3
    or	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sb	$a4,2($a1)
    lw	$v1,40($a0)
    # Line 170
    addiu	$a1,$a1,4
    # Line 171
    lw	$a4,36($a0)
    # Line 170
    addiu	$a0,$a0,48
    # Line 171
    sltu	$v1,$zero,$v1
    sll	$v1,$v1,0x2
    andi	$a4,$a4,0x7
    lw	$v0,-4($a0)
    # Line 170
    addiu	$a2,$a2,4
    # Line 171
    sll	$a4,$a4,0x5
    andi	$v0,$v0,0x3
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    # Line 170
    bne	$a3,$a2,.L0d987dd0
    # Line 171
    sb	$v0,-1($a1)
    b	.L0d987d60
    nop
.L0d987e98:
    # Line 176
    blez	$a3,.L0d987d60
    move	$a2,$zero
    andi	$a5,$a3,0x3
    beqz	$a5,.L0d987f00
    sra	$t3,$a3,0x2
.L0d987eac:
    # Line 177
    addiu	$a0,$a0,16
    # Line 178
    lw	$t2,-12($a0)
    # Line 177
    addiu	$a1,$a1,2
    addiu	$a2,$a2,1
    # Line 178
    lw	$t9,-16($a0)
    addiu	$a5,$a5,-1
    sltu	$t2,$zero,$t2
    lw	$t8,-8($a0)
    sll	$t2,$t2,0x8
    andi	$t9,$t9,0xf
    lw	$t3,-4($a0)
    sll	$t9,$t9,0xc
    andi	$t8,$t8,0xf
    andi	$t3,$t3,0xf
    sll	$t8,$t8,0x4
    or	$t2,$t2,$t9
    or	$t3,$t3,$t8
    or	$t2,$t2,$t3
    bnez	$a5,.L0d987eac
    sh	$t2,-2($a1)
    sra	$t3,$a3,0x2
.L0d987f00:
    beqz	$t3,.L0d987d60
    nop
    nop
    nop
.L0d987f10:
    lw	$v0,4($a0)
    lw	$a5,0($a0)
    sltu	$v0,$zero,$v0
    lw	$a4,8($a0)
    sll	$v0,$v0,0x8
    andi	$a5,$a5,0xf
    lw	$v1,12($a0)
    sll	$a5,$a5,0xc
    andi	$a4,$a4,0xf
    andi	$v1,$v1,0xf
    sll	$a4,$a4,0x4
    or	$v0,$v0,$a5
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sh	$v0,0($a1)
    lw	$at,20($a0)
    lw	$a4,16($a0)
    sltu	$at,$zero,$at
    lw	$v1,24($a0)
    sll	$at,$at,0x8
    andi	$a4,$a4,0xf
    lw	$v0,28($a0)
    sll	$a4,$a4,0xc
    andi	$v1,$v1,0xf
    andi	$v0,$v0,0xf
    sll	$v1,$v1,0x4
    or	$at,$at,$a4
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sh	$at,2($a1)
    lw	$t9,36($a0)
    lw	$v1,32($a0)
    sltu	$t9,$zero,$t9
    lw	$v0,40($a0)
    sll	$t9,$t9,0x8
    andi	$v1,$v1,0xf
    lw	$at,44($a0)
    sll	$v1,$v1,0xc
    andi	$v0,$v0,0xf
    andi	$at,$at,0xf
    sll	$v0,$v0,0x4
    or	$t9,$t9,$v1
    or	$at,$at,$v0
    # Line 177
    addiu	$a0,$a0,64
    # Line 178
    or	$t9,$t9,$at
    sh	$t9,4($a1)
    lw	$t8,-12($a0)
    # Line 177
    addiu	$a1,$a1,8
    # Line 178
    lw	$v0,-16($a0)
    # Line 177
    addiu	$a2,$a2,4
    # Line 178
    sltu	$t8,$zero,$t8
    lw	$at,-8($a0)
    sll	$t8,$t8,0x8
    andi	$v0,$v0,0xf
    lw	$t9,-4($a0)
    sll	$v0,$v0,0xc
    andi	$at,$at,0xf
    andi	$t9,$t9,0xf
    sll	$at,$at,0x4
    or	$t8,$t8,$v0
    or	$t9,$t9,$at
    or	$t8,$t8,$t9
    # Line 177
    bne	$a3,$a2,.L0d987f10
    # Line 178
    sh	$t8,-2($a1)
    b	.L0d987d60
    nop
.L0d988018:
    # Line 183
    blez	$a3,.L0d987d60
    andi	$a5,$a3,0x3
    move	$a2,$zero
    beqz	$a5,.L0d988080
    sra	$a4,$a3,0x2
.L0d98802c:
    # Line 184
    addiu	$a0,$a0,16
    # Line 185
    lw	$v1,-12($a0)
    # Line 184
    addiu	$a1,$a1,2
    addiu	$a2,$a2,1
    # Line 185
    lw	$a7,-16($a0)
    addiu	$a5,$a5,-1
    sltu	$v1,$zero,$v1
    lw	$a6,-8($a0)
    sll	$v1,$v1,0x6
    andi	$a7,$a7,0x1f
    lw	$a4,-4($a0)
    sll	$a7,$a7,0xb
    andi	$a6,$a6,0x1f
    andi	$a4,$a4,0x1
    sll	$a6,$a6,0x1
    or	$v1,$v1,$a7
    or	$a4,$a4,$a6
    or	$v1,$v1,$a4
    bnez	$a5,.L0d98802c
    sh	$v1,-2($a1)
    sra	$a4,$a3,0x2
.L0d988080:
    beqz	$a4,.L0d987d60
    nop
    nop
    nop
.L0d988090:
    lw	$t0,4($a0)
    lw	$t3,0($a0)
    sltu	$t0,$zero,$t0
    lw	$t2,8($a0)
    sll	$t0,$t0,0x6
    andi	$t3,$t3,0x1f
    lw	$t1,12($a0)
    sll	$t3,$t3,0xb
    andi	$t2,$t2,0x1f
    andi	$t1,$t1,0x1
    sll	$t2,$t2,0x1
    or	$t0,$t0,$t3
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sh	$t0,0($a1)
    lw	$a7,20($a0)
    lw	$t2,16($a0)
    sltu	$a7,$zero,$a7
    lw	$t1,24($a0)
    sll	$a7,$a7,0x6
    andi	$t2,$t2,0x1f
    lw	$t0,28($a0)
    sll	$t2,$t2,0xb
    andi	$t1,$t1,0x1f
    andi	$t0,$t0,0x1
    sll	$t1,$t1,0x1
    or	$a7,$a7,$t2
    or	$t0,$t0,$t1
    or	$a7,$a7,$t0
    sh	$a7,2($a1)
    lw	$a6,36($a0)
    lw	$t1,32($a0)
    sltu	$a6,$zero,$a6
    lw	$t0,40($a0)
    sll	$a6,$a6,0x6
    andi	$t1,$t1,0x1f
    lw	$a7,44($a0)
    sll	$t1,$t1,0xb
    andi	$t0,$t0,0x1f
    andi	$a7,$a7,0x1
    sll	$t0,$t0,0x1
    or	$a6,$a6,$t1
    or	$a7,$a7,$t0
    # Line 184
    addiu	$a0,$a0,64
    # Line 185
    or	$a6,$a6,$a7
    sh	$a6,4($a1)
    lw	$a5,-12($a0)
    # Line 184
    addiu	$a1,$a1,8
    # Line 185
    lw	$t0,-16($a0)
    # Line 184
    addiu	$a2,$a2,4
    # Line 185
    sltu	$a5,$zero,$a5
    lw	$a7,-8($a0)
    sll	$a5,$a5,0x6
    andi	$t0,$t0,0x1f
    lw	$a6,-4($a0)
    sll	$t0,$t0,0xb
    andi	$a7,$a7,0x1f
    andi	$a6,$a6,0x1
    sll	$a7,$a7,0x1
    or	$a5,$a5,$t0
    or	$a6,$a6,$a7
    or	$a5,$a5,$a6
    # Line 184
    bne	$a3,$a2,.L0d988090
    # Line 185
    sh	$a5,-2($a1)
    b	.L0d987d60
    nop
.end __glkon_packPixelRow

