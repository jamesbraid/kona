# Source: ../soft/so_rasterpos.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_rasterpos.c
# Total Functions: 3

.text

# Function: __glRasterPos2
# Declared: Line 23 (Source lines: 24-72)
# Address: 0x0da03380 - 0x0da034f8 (Size: 376 bytes, Frame: 48)
.globl __glRasterPos2
.ent __glRasterPos2
__glRasterPos2:
    # Line 24
    addiu	$sp,$sp,-48
    sd	$gp,32($sp)
    # Line 35
    lw	$a2,29716($a0)
    # Line 30
    lwc1	$f3,0($a1)
    # Line 33
    lwc1	$f0,3544($a0)
    # Line 30
    swc1	$f3,256($a0)
    # Line 32
    mtc1	$zero,$f1
    # Line 31
    lwc1	$f2,4($a1)
    # Line 33
    swc1	$f0,268($a0)
    # Line 24
    lui	$a3,0x9
    # Line 32
    swc1	$f1,264($a0)
    # Line 24
    addiu	$a3,$a3,-9128
    # Line 31
    swc1	$f2,260($a0)
    # Line 24
    addu	$gp,$t9,$a3
    # Line 36
    lw	$t9,248($a2)
    # Line 24
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 36
    addiu	$a0,$a0,352
    addiu	$a1,$s0,256
    # Line 24
    sd	$ra,8($sp)
    # Line 36
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 39
    sw	$zero,240($s0)
    # Line 41
    lw	$t9,11980($s0)
    addiu	$a1,$s0,240
    sd	$a1,16($sp)
    # Line 40
    la	$a4,__glValidateVertex2
    # Line 41
    move	$a0,$s0
    jalr	$t9
    # Line 40
    sw	$a4,252($s0)
    # Line 41
    beqz	$v0,.L0da03428
    # Line 45
    li	$a6,1
    # Line 72
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    # Line 42
    sb	$zero,452($s0)
    # Line 72
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03418:
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03428:
    # Line 45
    sb	$a6,452($s0)
    # Line 48
    lwc1	$f4,208($s0)
    lwc1	$f5,212($s0)
    lwc1	$f7,220($s0)
    lwc1	$f6,216($s0)
    swc1	$f7,284($s0)
    lbu	$a5,3220($s0)
    swc1	$f6,280($s0)
    swc1	$f5,276($s0)
    beqz	$a5,.L0da034ec
    swc1	$f4,272($s0)
    # Line 50
    lwc1	$f9,196($s0)
    swc1	$f9,388($s0)
    lwc1	$f8,192($s0)
    lwc1	$f11,204($s0)
    lwc1	$f10,200($s0)
    swc1	$f11,396($s0)
    swc1	$f10,392($s0)
    swc1	$f8,384($s0)
.L0da03474:
    # Line 66
    ld	$a1,16($sp)
    # Line 65
    lw	$a3,12068($s0)
    # Line 64
    lw	$a4,12060($s0)
    sd	$a4,0($sp)
    # Line 65
    sw	$a3,12060($s0)
    # Line 54
    lwc1	$f12,224($s0)
    # Line 57
    lw	$a2,28132($s0)
    # Line 54
    lwc1	$f13,228($s0)
    lwc1	$f15,236($s0)
    lwc1	$f14,232($s0)
    swc1	$f15,300($s0)
    # Line 66
    lw	$t9,252($s0)
    # Line 54
    swc1	$f14,296($s0)
    # Line 66
    move	$a0,$s0
    # Line 54
    swc1	$f13,292($s0)
    # Line 57
    ori	$a2,$a2,0x1d
    # Line 66
    jalr	$t9
    # Line 54
    swc1	$f12,288($s0)
    # Line 67
    lw	$a6,3204($s0)
    ld	$ra,8($sp)
    li	$a7,7170
    ld	$a5,0($sp)
    bne	$a6,$a7,.L0da03418
    sw	$a5,12060($s0)
    # Line 70
    # lw $t9, -26944($gp) # &__glSelectPoint
    move	$a0,$s0
    bal __glSelectPoint
    ld	$a1,16($sp)
    b	.L0da03418
    ld	$ra,8($sp)
.L0da034ec:
    # Line 52
    lwc1	$f16,448($s0)
    b	.L0da03474
    swc1	$f16,384($s0)
.end __glRasterPos2

# Function: __glRasterPos3
# Declared: Line 74 (Source lines: 75-123)
# Address: 0x0da03500 - 0x0da03678 (Size: 376 bytes, Frame: 48)
.globl __glRasterPos3
.ent __glRasterPos3
__glRasterPos3:
    # Line 75
    addiu	$sp,$sp,-48
    sd	$gp,32($sp)
    # Line 81
    lwc1	$f3,0($a1)
    # Line 86
    lw	$a2,29716($a0)
    # Line 81
    swc1	$f3,256($a0)
    # Line 82
    lwc1	$f2,4($a1)
    # Line 84
    lwc1	$f0,3544($a0)
    # Line 82
    swc1	$f2,260($a0)
    # Line 83
    lwc1	$f1,8($a1)
    # Line 75
    lui	$a3,0x9
    # Line 84
    swc1	$f0,268($a0)
    # Line 75
    addiu	$a3,$a3,-9512
    # Line 83
    swc1	$f1,264($a0)
    # Line 75
    addu	$gp,$t9,$a3
    # Line 87
    lw	$t9,252($a2)
    # Line 75
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 87
    addiu	$a0,$a0,352
    addiu	$a1,$s0,256
    # Line 75
    sd	$ra,8($sp)
    # Line 87
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 90
    sw	$zero,240($s0)
    # Line 92
    lw	$t9,11984($s0)
    addiu	$a1,$s0,240
    sd	$a1,16($sp)
    # Line 91
    la	$a4,__glValidateVertex3
    # Line 92
    move	$a0,$s0
    jalr	$t9
    # Line 91
    sw	$a4,252($s0)
    # Line 92
    beqz	$v0,.L0da035a4
    # Line 123
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    # Line 93
    sb	$zero,452($s0)
    # Line 123
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03594:
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da035a4:
    # Line 96
    li	$a6,1
    sb	$a6,452($s0)
    # Line 99
    lwc1	$f4,208($s0)
    lwc1	$f5,212($s0)
    lwc1	$f7,220($s0)
    lwc1	$f6,216($s0)
    swc1	$f7,284($s0)
    lbu	$a5,3220($s0)
    swc1	$f6,280($s0)
    swc1	$f5,276($s0)
    beqz	$a5,.L0da0366c
    swc1	$f4,272($s0)
    # Line 101
    lwc1	$f9,196($s0)
    swc1	$f9,388($s0)
    lwc1	$f8,192($s0)
    lwc1	$f11,204($s0)
    lwc1	$f10,200($s0)
    swc1	$f11,396($s0)
    swc1	$f10,392($s0)
    swc1	$f8,384($s0)
.L0da035f4:
    # Line 117
    ld	$a1,16($sp)
    # Line 116
    lw	$a3,12068($s0)
    # Line 115
    lw	$a4,12060($s0)
    sd	$a4,0($sp)
    # Line 116
    sw	$a3,12060($s0)
    # Line 105
    lwc1	$f12,224($s0)
    # Line 108
    lw	$a2,28132($s0)
    # Line 105
    lwc1	$f13,228($s0)
    lwc1	$f15,236($s0)
    lwc1	$f14,232($s0)
    swc1	$f15,300($s0)
    # Line 117
    lw	$t9,252($s0)
    # Line 105
    swc1	$f14,296($s0)
    # Line 117
    move	$a0,$s0
    # Line 105
    swc1	$f13,292($s0)
    # Line 108
    ori	$a2,$a2,0x1d
    # Line 117
    jalr	$t9
    # Line 105
    swc1	$f12,288($s0)
    # Line 118
    lw	$a6,3204($s0)
    ld	$ra,8($sp)
    li	$a7,7170
    ld	$a5,0($sp)
    bne	$a6,$a7,.L0da03594
    sw	$a5,12060($s0)
    # Line 121
    # lw $t9, -26944($gp) # &__glSelectPoint
    move	$a0,$s0
    bal __glSelectPoint
    ld	$a1,16($sp)
    b	.L0da03594
    ld	$ra,8($sp)
.L0da0366c:
    # Line 103
    lwc1	$f16,448($s0)
    b	.L0da035f4
    swc1	$f16,384($s0)
.end __glRasterPos3

# Function: __glRasterPos4
# Declared: Line 125 (Source lines: 126-174)
# Address: 0x0da03680 - 0x0da037f8 (Size: 376 bytes, Frame: 48)
.globl __glRasterPos4
.ent __glRasterPos4
__glRasterPos4:
    # Line 132
    lwc1	$f3,0($a1)
    swc1	$f3,256($a0)
    # Line 133
    lwc1	$f2,4($a1)
    swc1	$f2,260($a0)
    # Line 126
    addiu	$sp,$sp,-48
    # Line 134
    lwc1	$f1,8($a1)
    sd	$gp,32($sp)
    swc1	$f1,264($a0)
    # Line 135
    lwc1	$f0,12($a1)
    # Line 137
    lw	$a2,29716($a0)
    # Line 126
    lui	$a3,0x9
    addiu	$a3,$a3,-9896
    # Line 135
    swc1	$f0,268($a0)
    # Line 126
    addu	$gp,$t9,$a3
    # Line 138
    lw	$t9,256($a2)
    # Line 126
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 138
    addiu	$a0,$a0,352
    addiu	$a1,$s0,256
    # Line 126
    sd	$ra,8($sp)
    # Line 138
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 141
    sw	$zero,240($s0)
    # Line 143
    lw	$t9,11988($s0)
    addiu	$a1,$s0,240
    sd	$a1,16($sp)
    # Line 142
    la	$a4,__glValidateVertex4
    # Line 143
    move	$a0,$s0
    jalr	$t9
    # Line 142
    sw	$a4,252($s0)
    # Line 143
    beqz	$v0,.L0da03728
    # Line 147
    li	$a6,1
    # Line 174
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    # Line 144
    sb	$zero,452($s0)
    # Line 174
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03718:
    ld	$s0,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da03728:
    # Line 147
    sb	$a6,452($s0)
    # Line 150
    lwc1	$f4,208($s0)
    lwc1	$f5,212($s0)
    lwc1	$f7,220($s0)
    lwc1	$f6,216($s0)
    swc1	$f7,284($s0)
    lbu	$a5,3220($s0)
    swc1	$f6,280($s0)
    swc1	$f5,276($s0)
    beqz	$a5,.L0da037ec
    swc1	$f4,272($s0)
    # Line 152
    lwc1	$f9,196($s0)
    swc1	$f9,388($s0)
    lwc1	$f8,192($s0)
    lwc1	$f11,204($s0)
    lwc1	$f10,200($s0)
    swc1	$f11,396($s0)
    swc1	$f10,392($s0)
    swc1	$f8,384($s0)
.L0da03774:
    # Line 168
    ld	$a1,16($sp)
    # Line 167
    lw	$a3,12068($s0)
    # Line 166
    lw	$a4,12060($s0)
    sd	$a4,0($sp)
    # Line 167
    sw	$a3,12060($s0)
    # Line 156
    lwc1	$f12,224($s0)
    # Line 159
    lw	$a2,28132($s0)
    # Line 156
    lwc1	$f13,228($s0)
    lwc1	$f15,236($s0)
    lwc1	$f14,232($s0)
    swc1	$f15,300($s0)
    # Line 168
    lw	$t9,252($s0)
    # Line 156
    swc1	$f14,296($s0)
    # Line 168
    move	$a0,$s0
    # Line 156
    swc1	$f13,292($s0)
    # Line 159
    ori	$a2,$a2,0x1d
    # Line 168
    jalr	$t9
    # Line 156
    swc1	$f12,288($s0)
    # Line 169
    lw	$a6,3204($s0)
    ld	$ra,8($sp)
    li	$a7,7170
    ld	$a5,0($sp)
    bne	$a6,$a7,.L0da03718
    sw	$a5,12060($s0)
    # Line 172
    # lw $t9, -26944($gp) # &__glSelectPoint
    move	$a0,$s0
    bal __glSelectPoint
    ld	$a1,16($sp)
    b	.L0da03718
    ld	$ra,8($sp)
.L0da037ec:
    # Line 154
    lwc1	$f16,448($s0)
    b	.L0da03774
    swc1	$f16,384($s0)
.end __glRasterPos4

