# Source: ../KONA/kon_histogram.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_histogram.c
# Total Functions: 10

.text

# Function: ValidateHistogramSink
# Declared: Line 45 (Source lines: 47-60)
# Address: 0x0d984870 - 0x0d9848c8 (Size: 88 bytes, Frame: 0)
.globl ValidateHistogramSink
.ent ValidateHistogramSink
ValidateHistogramSink:
    # Line 47
    lw	$a1,4112($zero)
    # Line 52
    lw	$a2,1792($a1)
    dsll32	$at,$a2,0x3
    bgez	$at,.L0d984890
    dsll32	$v1,$a2,0x2
    lbu	$v0,1280($a1)
    bnez	$v0,.L0d9848a8
    # Line 56
    li	$a2,0x8c10
.L0d984890:
    # Line 52
    bgez	$v1,.L0d9848bc
    # Line 58
    li	$a3,0x8c10
    # Line 52
    lbu	$a0,1376($a1)
    beqz	$a0,.L0d9848bc
    # Line 58
    li	$a3,0x8c10
    # Line 56
    li	$a2,0x8c10
.L0d9848a8:
    addu	$a2,$a2,$a1
    li	$a1,1
    # Line 60
    jr	$ra
    # Line 56
    sw	$a1,0($a2)
    # Line 58
    li	$a3,0x8c10
.L0d9848bc:
    addu	$a3,$a3,$a1
    # Line 60
    jr	$ra
    # Line 58
    sw	$zero,0($a3)
.end ValidateHistogramSink

# Function: EramAlloc
# Declared: Line 63 (Source lines: 64-133)
# Address: 0x0d9848d0 - 0x0d984a08 (Size: 312 bytes, Frame: 32)
.ent EramAlloc
EramAlloc:
    # Line 64
    slti	$v0,$a0,257
    slti	$at,$a0,1025
    # Line 85
    li	$v1,256
    # Line 64
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    bnez	$at,.L0d9848f4
    move	$s0,$a1
    b	.L0d984908
    li	$a0,4096
.L0d9848f4:
    # Line 85
    slt	$a2,$zero,$a0
    # Line 64
    li	$a1,1024
    # Line 85
    movz	$v1,$a0,$a2
    move	$a0,$a1
    movn	$a0,$v1,$v0
.L0d984908:
    # Line 95
    li	$t2,256
    # Line 85
    slti	$a4,$s0,1025
    # Line 95
    slt	$t1,$zero,$s0
    # Line 85
    bnez	$a4,.L0d984998
    # Line 92
    slti	$t0,$s0,257
    li	$s0,4096
    beq	$a0,$s0,.L0d9849f4
    sd	$ra,8($sp)
    # Line 108
    bnez	$a0,.L0d9849b4
    # Line 111
    nop	# was lw $t9, -32456($gp) # &__glkon_mem_free
.L0d984930:
    # Line 115
    beqz	$s0,.L0d9849dc
    ld	$ra,8($sp)
    # Line 125
    sll	$a3,$s0,0x4
    li	$a2,1
    # Line 115
    li	$a6,4096
    # Line 121
    li	$t0,256
    slti	$a7,$s0,1024
    # Line 125
    # lw $t9, -32464($gp) # &__glkon_mem_alloc
    # Line 121
    li	$a4,1024
    xori	$a7,$a7,0x1
    # Line 115
    slti	$a5,$s0,4096
    # Line 121
    movz	$a4,$t0,$a7
    # Line 125
    li	$a1,8
    movz	$a4,$a6,$a5
    li	$a0,2
    jal	__glkon_mem_alloc
    sll	$a4,$a4,0x2
    beqz	$v0,.L0d9849d8
    # Line 127
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$ra,8($sp)
    # Line 128
    li	$v0,1
    # Line 133
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d984998:
    # Line 92
    bnez	$t0,.L0d9849ec
    sd	$ra,8($sp)
    # Line 94
    li	$s0,1024
    beq	$a0,$s0,.L0d9849f8
    ld	$ra,8($sp)
.L0d9849ac:
    # Line 108
    beqz	$a0,.L0d984930
    # Line 111
    nop	# was lw $t9, -32456($gp) # &__glkon_mem_free
.L0d9849b4:
    li	$a1,8
    jal	__glkon_mem_free
    li	$a0,2
    beqz	$v0,.L0d984930
    ld	$ra,8($sp)
    # Line 115
    li	$v0,1
    # Line 133
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9849d8:
    ld	$ra,8($sp)
.L0d9849dc:
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9849ec:
    # Line 95
    movn	$s0,$t2,$t1
    bne	$s0,$a0,.L0d9849ac
.L0d9849f4:
    ld	$ra,8($sp)
.L0d9849f8:
    # Line 108
    move	$v0,$zero
    # Line 133
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end EramAlloc

# Function: __glkonim_HistogramEXT
# Declared: Line 137 (Source lines: 139-190)
# Address: 0x0d984a10 - 0x0d984bfc (Size: 492 bytes, Frame: 208)
.globl __glkonim_HistogramEXT
.ent __glkonim_HistogramEXT
__glkonim_HistogramEXT:
    # Line 142
    lw	$a6,4112($zero)
    li	$v1,1
    lw	$at,4120($zero)
    # Line 139
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    move	$s0,$a1
    lui	$a1,0x11
    move	$v0,$a0
    sd	$ra,64($sp)
    addiu	$a0,$a1,-14904
    sd	$gp,56($sp)
    # Line 142
    beq	$at,$v1,.L0d984bac
    # Line 139
    addu	$gp,$t9,$a0
    # Line 148
    bltz	$s0,.L0d984a64
    addiu	$a4,$s0,-1
    sd	$a6,40($sp)
    sd	$a3,32($sp)
    and	$a4,$s0,$a4
    sd	$a2,24($sp)
    beqz	$a4,.L0d984a84
    sd	$v0,16($sp)
.L0d984a64:
    # Line 149
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,64($sp)
.L0d984a74:
    ld	$s0,48($sp)
    # Line 190
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d984a84:
    # Line 153
    # lw $t9, -31120($gp) # &__glkon_formatToBaseFormat
    bal __glkon_formatToBaseFormat
    ld	$a0,24($sp)
    # Line 174
    li	$a7,4096
    # Line 153
    beqz	$v0,.L0d984bd4
    ld	$a0,16($sp)
    # Line 160
    slti	$t8,$s0,4097
    # Line 158
    li	$a5,0x8024
    beq	$a0,$a5,.L0d984b3c
    li	$a6,0x8025
    beq	$a0,$a6,.L0d984ac8
    # Line 174
    slt	$a7,$a7,$s0
    # Line 179
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d984a74
    ld	$ra,64($sp)
.L0d984ac8:
    # Line 176
    ld	$t0,40($sp)
    ld	$t1,32($sp)
    sb	$t1,1324($t0)
    # Line 174
    movn	$s0,$zero,$a7
    # Line 173
    addiu	$t0,$t0,1288
    sd	$t0,8($sp)
.L0d984ae0:
    # Line 183
    # lw $t9, -31184($gp) # &ValidateHistogramSink
    ld	$t0,8($sp)
    bal ValidateHistogramSink
    # Line 182
    sw	$s0,4($t0)
    ld	$v0,24($sp)
    # Line 188
    addiu	$t3,$s0,-1
    ld	$ra,64($sp)
    # Line 183
    beqz	$s0,.L0d984b74
    li	$a1,258
    # Line 190
    ld	$gp,56($sp)
    # Line 188
    sw	$a1,16384($zero)
    mtc1	$t3,$f0
    ld	$t1,32($sp)
    ld	$t2,16($sp)
    sw	$t2,16384($zero)
    cvt.s.w	$f0,$f0
    sw	$s0,16384($zero)
    # Line 190
    ld	$s0,48($sp)
    # Line 188
    swc1	$f0,16384($zero)
    sw	$v0,16384($zero)
    # Line 190
    addiu	$sp,$sp,80
    jr	$ra
    # Line 188
    sw	$t1,16384($zero)
.L0d984b3c:
    # Line 160
    beqz	$t8,.L0d984bc0
    sd	$v0,0($sp)
    # Line 165
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$ra,40($sp)
    addiu	$t9,$t9,18640
    lw	$a0,1248($ra)
    # Line 164
    addiu	$ra,$ra,1244
    sd	$ra,8($sp)
    # Line 165
    bal ValidateHistogramSink
    move	$a1,$s0
    beqz	$v0,.L0d984be8
    ld	$v0,32($sp)
    b	.L0d984ae0
    move	$s0,$zero
.L0d984b74:
    # Line 190
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    # Line 185
    sw	$a1,16384($zero)
    ld	$v1,16($sp)
    sw	$v1,16384($zero)
    mtc1	$zero,$f1
    sw	$zero,16384($zero)
    swc1	$f1,16384($zero)
    ld	$at,8($sp)
    sw	$v0,16384($zero)
    lbu	$at,36($at)
    # Line 190
    addiu	$sp,$sp,80
    jr	$ra
    # Line 185
    sw	$at,16384($zero)
.L0d984bac:
    # Line 142
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d984a74
    ld	$ra,64($sp)
.L0d984bc0:
    # Line 161
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,0x8031
    b	.L0d984a74
    ld	$ra,64($sp)
.L0d984bd4:
    # Line 154
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d984a74
    ld	$ra,64($sp)
.L0d984be8:
    # Line 169
    ld	$v1,40($sp)
    ld	$a0,0($sp)
    sw	$a0,1276($v1)
    b	.L0d984ae0
    # Line 168
    sb	$v0,1280($v1)
.end __glkonim_HistogramEXT

# Function: __glkonim_GetHistogramEXT
# Declared: Line 211 (Source lines: 213-438)
# Address: 0x0d984c00 - 0x0d9869b4 (Size: 7604 bytes, Frame: 0)
.globl __glkonim_GetHistogramEXT
.ent __glkonim_GetHistogramEXT
__glkonim_GetHistogramEXT:
    # Line 213
    addiu	$sp,$sp,-416
    move	$v1,$s8
    addiu	$s8,$sp,416
    sd	$v1,-352($s8)
    sd	$s2,-320($s8)
    # Line 230
    lw	$s2,4112($zero)
    sd	$ra,-376($s8)
    # Line 213
    sd	$s6,-336($s8)
    sd	$s7,-328($s8)
    lui	$v0,0x11
    # Line 230
    lw	$at,4120($zero)
    # Line 213
    addiu	$v0,$v0,-15400
    sd	$s4,-344($s8)
    # Line 230
    li	$s4,1
    # Line 213
    move	$s7,$a4
    move	$s6,$a3
    sd	$gp,-360($s8)
    addu	$gp,$t9,$v0
    # Line 230
    beq	$at,$s4,.L0d985204
    sd	$s0,-384($s8)
    # Line 232
    li	$a6,0x8024
    bne	$a6,$a0,.L0d984ca8
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sltiu	$a0,$a2,6403
    bnez	$a0,.L0d984ca4
    sltiu	$a3,$a2,6411
    bnez	$a3,.L0d984c74
    li	$a4,0x8000
    bne	$a2,$a4,.L0d984ca4
.L0d984c74:
    sltiu	$a5,$s6,5120
    bnez	$a5,.L0d984c8c
    li	$a0,0x8032
    sltiu	$a7,$s6,5127
    bnez	$a7,.L0d984cdc
    li	$a0,0x8032
.L0d984c8c:
    sltu	$t0,$s6,$a0
    beqz	$t0,.L0d984ce0
    li	$t1,0x8036
    sltu	$t1,$t1,$s6
    beqz	$t1,.L0d984ce8
    li	$t3,0x8033
.L0d984ca4:
    # lw $t9, -28616($gp) # &__glSetError
.L0d984ca8:
    jal	__glSetError
    li	$a0,1280
.L0d984cb0:
    ld	$s2,-320($s8)
.L0d984cb4:
    ld	$s7,-328($s8)
    ld	$s6,-336($s8)
    ld	$s4,-344($s8)
    ld	$s0,-384($s8)
    ld	$ra,-376($s8)
    # Line 438
    ld	$t2,-352($s8)
    ld	$gp,-360($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t2
.L0d984cdc:
    # Line 232
    li	$a0,0x8032
.L0d984ce0:
    beq	$a0,$s6,.L0d985100
    li	$t3,0x8033
.L0d984ce8:
    sltu	$t3,$s6,$t3
    bnez	$t3,.L0d984d08
    li	$t8,0x8036
    sltu	$t8,$t8,$s6
    bnez	$t8,.L0d984d08
    li	$t9,6408
    bne	$a2,$t9,.L0d985110
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d984d08:
    # Line 235
    lw	$s0,1248($s2)
    beqz	$s0,.L0d984cb0
    nop
    # Line 238
    lw	$a0,1276($s2)
    li	$a4,0x8000
    sd	$s5,-400($s8)
    beq	$a4,$a0,.L0d9850e8
    lw	$s5,31568($s2)
    # Line 240
    li	$at,9
    addiu	$a3,$a0,-6403
    li	$ra,0x8049
    xor	$ra,$a0,$ra
    beq	$a4,$a2,.L0d9850f0
    movz	$a3,$at,$ra
.L0d984d40:
    # Line 241
    li	$v0,9
    li	$at,0x8049
    sd	$s3,-392($s8)
    addiu	$a4,$a2,-6403
    xor	$at,$a2,$at
    sd	$s1,-408($s8)
    movz	$a4,$v0,$at
.L0d984d5c:
    # Line 243
    slti	$v0,$s0,4
    sll	$a2,$a4,0x2
    addu	$a2,$a2,$a4
    # Line 241
    la	$s3,__glkon_formats
    # Line 242
    sll	$t8,$a3,0x2
    # Line 243
    sll	$a2,$a2,0x3
    # Line 242
    addu	$t8,$t8,$a3
    # Line 243
    addu	$a2,$s3,$a2
    # Line 242
    sll	$t8,$t8,0x3
    # Line 243
    lw	$s1,0($a2)
    # Line 242
    addu	$s3,$s3,$t8
    # Line 243
    beqz	$v0,.L0d984db4
    # Line 242
    lw	$a0,0($s3)
    # Line 249
    beq	$a0,$s4,.L0d9851f4
    # Line 251
    li	$a4,4
    # Line 249
    li	$a3,2
    # Line 254
    andi	$a5,$s0,0x1
    xor	$a3,$a0,$a3
    addu	$a5,$a5,$a5
    # Line 257
    move	$a4,$zero
    # Line 255
    b	.L0d984db8
    movz	$a4,$a5,$a3
.L0d984db4:
    # Line 260
    move	$a4,$zero
.L0d984db8:
    mult	$s0,$a0
    mflo	$a7
    nop
    nop
    mult	$s5,$a7
    sd	$a0,-288($s8)
    mflo	$a3
    sd	$a4,-256($s8)
    sltiu	$a5,$a3,4093
    sd	$a2,-368($s8)
    bnez	$a5,.L0d984e58
    sd	$a1,-272($s8)
    # Line 272
    sll	$t8,$a3,0x2
    sw	$t8,-204($s8)
    # Line 273
    sw	$zero,-196($s8)
    # Line 272
    sw	$t8,-200($s8)
    # Line 278
    li	$t3,-16
    addiu	$t2,$t8,15
    # Line 285
    # lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    # Line 278
    and	$t2,$t2,$t3
    subu	$sp,$sp,$t2
    # Line 283
    sw	$s4,-64($s8)
    # Line 282
    sw	$s0,-184($s8)
    # Line 281
    sw	$s4,-188($s8)
    # Line 280
    li	$t1,260
    sw	$t1,-192($s8)
    # Line 279
    sw	$sp,-208($s8)
    # Line 285
    jal	__glkon_SuspendSelectfeed
    sd	$sp,-280($s8)
    # Line 286
    # lw $t9, -31952($gp) # &__glKon_ioctl
    move	$a0,$s2
    addiu	$a2,$s8,-208
    jal	__glKon_ioctl
    li	$a1,10000
    bltz	$v0,.L0d985240
    # Line 293
    nop	# was lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
    jal	__glkon_ResumeSelectfeed
    nop
    b	.L0d984e74
    # Line 297
    ld	$ra,-272($s8)
.L0d984e58:
    # Line 296
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$s0
    jal	__glkon_get_special
    li	$a0,260
    # Line 297
    addiu	$t9,$v0,-4
    sd	$t9,-280($s8)
    ld	$ra,-272($s8)
.L0d984e74:
    beqz	$ra,.L0d984e90
    # Line 300
    li	$v1,0x8035
    li	$v0,259
    sw	$v0,16384($zero)
    li	$at,0x8024
    sw	$at,16384($zero)
    li	$v1,0x8035
.L0d984e90:
    beq	$s6,$v1,.L0d9850d0
    # Line 310
    sltiu	$a0,$s6,5120
    bnez	$a0,.L0d984eac
    # Line 309
    sd	$s6,-304($s8)
    # Line 310
    sltiu	$a2,$s6,5127
    bnez	$a2,.L0d9850e0
    li	$t9,1
.L0d984eac:
    sd	$zero,-296($s8)
.L0d984eb0:
    # Line 311
    # lw $t9, -29944($gp) # &__glSpecBytesPerElement
    jal	__glSpecBytesPerElement
    move	$a0,$s6
    # Line 313
    li	$v1,0x8c6c
    mult	$v0,$s1
    addu	$v1,$v1,$s2
    lw	$v1,0($v1)
    # Line 311
    ld	$a7,-296($s8)
    # Line 313
    lw	$a6,4($v1)
    # Line 311
    andi	$a7,$a7,0xff
    # Line 315
    move	$a5,$a6
    # Line 313
    mflo	$a4
    movz	$a5,$s0,$a6
    movz	$a4,$v0,$a7
    # Line 315
    multu	$a4,$a5
    # Line 320
    lw	$a3,12($v1)
    # Line 315
    mflo	$a1
    nop
    nop
    # Line 320
    multu	$a4,$a3
    lw	$a2,24($v1)
    lw	$a0,20($v1)
    mflo	$ra
    nop
    nop
    multu	$a0,$a2
    # Line 315
    lw	$v0,16($v1)
    addiu	$at,$v0,-1
    # Line 318
    subu	$v0,$v0,$a1
    # Line 315
    and	$a0,$at,$a1
    # Line 318
    and	$at,$at,$v0
    # Line 320
    lw	$v0,8($v1)
    # Line 318
    addu	$at,$a1,$at
    # Line 320
    mflo	$v1
    movz	$at,$a1,$a0
    addu	$v0,$v0,$v1
    multu	$at,$v0
    ld	$t8,-368($s8)
    addu	$s7,$s7,$ra
    mflo	$t9
    # Line 311
    sd	$a7,-312($s8)
    # Line 320
    blez	$s1,.L0d9851fc
    addu	$s7,$s7,$t9
    move	$t3,$zero
    move	$s2,$zero
    andi	$a0,$s1,0x1
    move	$a6,$t8
    addiu	$t0,$s8,-240
    lw	$t2,4($s3)
    beqz	$a0,.L0d984fb4
    addiu	$t1,$s8,-224
    lw	$a7,24($t8)
    sllv	$a1,$s4,$a7
    and	$a1,$t2,$a1
    beqz	$a1,.L0d984fac
    # Line 345
    sll	$a2,$a7,0x2
    # Line 346
    sw	$zero,-240($s8)
    # Line 345
    addu	$a2,$s3,$a2
    # Line 347
    addiu	$t1,$t1,4
    # Line 345
    lw	$a2,8($a2)
    # Line 347
    addiu	$t0,$t0,4
    li	$s2,1
    # Line 345
    sw	$a2,-4($t1)
.L0d984fac:
    # Line 343
    addiu	$a6,$a6,4
    addiu	$t3,$t3,1
.L0d984fb4:
    sra	$a3,$s1,0x1
    beqz	$a3,.L0d985040
    nop
    nop
    nop
    nop
    # Line 320
    lw	$a7,24($a6)
.L0d984fd0:
    sllv	$a5,$s4,$a7
    and	$a5,$t2,$a5
    beqz	$a5,.L0d984ffc
    # Line 345
    sll	$t8,$a7,0x2
    # Line 346
    sw	$t3,0($t0)
    # Line 345
    addu	$t8,$s3,$t8
    # Line 347
    addiu	$t1,$t1,4
    # Line 345
    lw	$t8,8($t8)
    # Line 347
    addiu	$t0,$t0,4
    addiu	$s2,$s2,1
    # Line 345
    sw	$t8,-4($t1)
.L0d984ffc:
    # Line 320
    lw	$a7,28($a6)
    sllv	$t9,$s4,$a7
    # Line 343
    addiu	$a6,$a6,8
    # Line 320
    and	$t9,$t2,$t9
    # Line 343
    addiu	$t3,$t3,1
    # Line 345
    sll	$ra,$a7,0x2
    # Line 320
    beqz	$t9,.L0d985034
    # Line 345
    addu	$ra,$s3,$ra
    # Line 346
    sw	$t3,0($t0)
    # Line 347
    addiu	$t1,$t1,4
    # Line 345
    lw	$ra,8($ra)
    # Line 347
    addiu	$t0,$t0,4
    addiu	$s2,$s2,1
    # Line 345
    sw	$ra,-4($t1)
.L0d985034:
    # Line 343
    addiu	$t3,$t3,1
    bnel	$s1,$t3,.L0d984fd0
    # Line 320
    lw	$a7,24($a6)
.L0d985040:
    # Line 350
    mult	$s0,$a4
    # lw $t9, -18524($gp) # &bzero
    mflo	$a1
    ld	$s3,-280($s8)
    jal	bzero
    move	$a0,$s7
    ld	$at,-312($s8)
    beqz	$at,.L0d985120
    nop
    sd	$s7,-264($s8)
.L0d985068:
    # Line 360
    lw	$a3,-224($s8)
    sll	$a7,$a3,0x2
    # Line 361
    beq	$s2,$s4,.L0d98514c
    # Line 360
    addu	$a7,$s3,$a7
    # Line 361
    li	$t0,2
    beq	$s2,$t0,.L0d985178
    # Line 376
    la	$a4,.rodata
    # Line 361
    li	$t1,3
    beq	$s2,$t1,.L0d9851a0
    # Line 392
    la	$a6,.rodata
    # Line 361
    li	$t2,4
    beq	$s2,$t2,.L0d9851c8
    sd	$s7,-248($s8)
.L0d98509c:
    # Line 434
    ld	$t3,-312($s8)
.L0d9850a0:
    ld	$s5,-400($s8)
    beqz	$t3,.L0d985218
    ld	$s3,-392($s8)
    # Line 437
    # lw $t9, -31116($gp) # &__glkon_byteSwapMaybe
.L0d9850b0:
    ld	$a0,-248($s8)
    move	$a2,$s0
    move	$a3,$s1
    ld	$a1,-304($s8)
    bal __glkon_byteSwapMaybe
    move	$a4,$zero
    b	.L0d984cb0
    ld	$s1,-408($s8)
.L0d9850d0:
    # Line 306
    li	$s6,5121
    li	$t8,0x8035
    sd	$t8,-304($s8)
    # Line 310
    li	$t9,1
.L0d9850e0:
    b	.L0d984eb0
    sd	$t9,-296($s8)
.L0d9850e8:
    # Line 240
    bne	$a4,$a2,.L0d984d40
    li	$a3,8
.L0d9850f0:
    sd	$s3,-392($s8)
    # Line 241
    li	$a4,8
    b	.L0d984d5c
    sd	$s1,-408($s8)
.L0d985100:
    # Line 232
    li	$ra,6407
    beq	$a2,$ra,.L0d984ce8
    li	$t3,0x8033
    # lw $t9, -28616($gp) # &__glSetError
.L0d985110:
    jal	__glSetError
    li	$a0,1282
    b	.L0d984cb4
    ld	$s2,-320($s8)
.L0d985120:
    # Line 358
    mult	$s0,$s1
    mflo	$v0
    sll	$v0,$v0,0x2
    li	$v1,-16
    addiu	$v0,$v0,15
    # Line 355
    sd	$s6,-304($s8)
    # Line 358
    li	$s6,5125
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    b	.L0d985068
    sd	$sp,-264($s8)
.L0d98514c:
    # Line 373
    la	$a3,.rodata
    addiu	$a4,$s6,-5120
    sltiu	$v1,$a4,7
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,1508
    sd	$s7,-248($s8)
    beqz	$v1,.L0d98509c
    addu	$a3,$a3,$a4
    lw	$a4,0($a3)
    jr	$a4
    sd	$s7,-248($s8)
.L0d985178:
    # Line 376
    addiu	$a6,$s6,-5120
    sltiu	$a5,$a6,7
    sll	$a6,$a6,0x2
    addiu	$a4,$a4,1480
    sd	$s7,-248($s8)
    beqz	$a5,.L0d98509c
    addu	$a4,$a4,$a6
    lw	$a5,0($a4)
    jr	$a5
    sd	$s7,-248($s8)
.L0d9851a0:
    # Line 392
    addiu	$t1,$s6,-5120
    sltiu	$t0,$t1,7
    sll	$t1,$t1,0x2
    addiu	$a6,$a6,1452
    sd	$s7,-248($s8)
    beqz	$t0,.L0d98509c
    addu	$a6,$a6,$t1
    lw	$t0,0($a6)
    jr	$t0
    nop
.L0d9851c8:
    # Line 412
    la	$a6,.rodata
    addiu	$t0,$s6,-5120
    sltiu	$t1,$t0,7
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,1424
    sd	$s7,-248($s8)
    beqz	$t1,.L0d98509c
    addu	$a6,$a6,$t0
    lw	$t0,0($a6)
    jr	$t0
    nop
.L0d9851f4:
    b	.L0d984db8
    # Line 251
    subu	$a4,$a4,$s0
.L0d9851fc:
    b	.L0d985040
    # Line 343
    move	$s2,$zero
.L0d985204:
    # Line 230
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d984cb4
    ld	$s2,-320($s8)
.L0d985218:
    # Line 436
    # lw $t9, -31112($gp) # &__glkon_packPixelRow
    ld	$a0,-264($s8)
    move	$s5,$s5
    move	$s3,$s3
    ld	$a1,-248($s8)
    ld	$a2,-304($s8)
    bal __glkon_packPixelRow
    move	$a3,$s0
    b	.L0d9850b0
    # Line 437
    nop	# was lw $t9, -31116($gp) # &__glkon_byteSwapMaybe
.L0d985240:
    ld	$s1,-408($s8)
    ld	$s5,-400($s8)
    # Line 287
    # lw $t9, -18492($gp) # &strerror
    la	$s0,errno
    ld	$s3,-392($s8)
    jal	strerror
    lw	$a0,0($s0)
    lw	$t9,16($s2)
    la	$a1,.rodata
    move	$a2,$v0
    move	$a0,$s2
    lw	$a3,0($s0)
    jalr	$t9
    addiu	$a1,$a1,1360
    # Line 290
    # lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
    jal	__glkon_ResumeSelectfeed
    nop
    b	.L0d984cb4
    ld	$s2,-320($s8)
.L0d98528c:
    # Line 373
    blez	$s5,.L0d98509c
    ld	$t8,-264($s8)
    ld	$a6,-288($s8)
    ld	$t9,-256($s8)
    lw	$s3,-240($s8)
    sll	$a6,$a6,0x2
    move	$t3,$zero
    sll	$t9,$t9,0x2
    b	.L0d986924
    addu	$s3,$s3,$t8
.L0d9852b4:
    blez	$s5,.L0d98509c
    ld	$a6,-288($s8)
    sll	$t2,$s1,0x2
    ld	$t9,-256($s8)
    sll	$a6,$a6,0x2
    lw	$s4,-240($s8)
    ld	$t8,-264($s8)
    sll	$t9,$t9,0x2
    move	$t3,$zero
    sll	$s4,$s4,0x2
    b	.L0d986930
    addu	$s4,$s4,$t8
.L0d9852e4:
    blez	$s5,.L0d98509c
    ld	$a6,-288($s8)
    sll	$t2,$s1,0x2
    ld	$t9,-256($s8)
    sll	$a6,$a6,0x2
    lw	$s4,-240($s8)
    ld	$t8,-264($s8)
    sll	$t9,$t9,0x2
    move	$t3,$zero
    sll	$s4,$s4,0x2
    b	.L0d98693c
    addu	$s4,$s4,$t8
.L0d985314:
    blez	$s5,.L0d98509c
    ld	$t9,-256($s8)
    ld	$a6,-288($s8)
    addu	$t2,$s1,$s1
    lw	$s4,-240($s8)
    move	$t3,$zero
    ld	$t8,-264($s8)
    sll	$a6,$a6,0x2
    sll	$t9,$t9,0x2
    addu	$s4,$s4,$s4
    b	.L0d986948
    addu	$s4,$s4,$t8
.L0d985344:
    beqz	$t1,.L0d985388
    nop
    nop
.L0d985350:
    lbu	$t1,0($a3)
    lw	$t2,0($a7)
    addu	$t8,$s1,$a3
    addu	$t1,$t1,$t2
    sb	$t1,0($a3)
    lbu	$t2,0($t8)
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    lw	$ra,0($a7)
    addu	$a7,$a6,$a7
    addu	$a3,$s1,$t8
    addu	$t2,$t2,$ra
    bne	$s0,$t0,.L0d985350
    sb	$t2,0($t8)
.L0d985388:
    move	$a3,$s3
    beq	$s5,$t3,.L0d98509c
    addu	$a7,$t9,$a7
.L0d985394:
    blez	$s0,.L0d985388
    addiu	$t3,$t3,1
    move	$t0,$zero
    andi	$t8,$s0,0x1
    beqz	$t8,.L0d985344
    sra	$t1,$s0,0x1
    lbu	$ra,0($s3)
    li	$t0,1
    lw	$at,0($a7)
    addu	$a3,$s1,$s3
    addu	$a7,$a6,$a7
    addu	$ra,$ra,$at
    b	.L0d985344
    sb	$ra,0($s3)
.L0d9853cc:
    lw	$v0,0($a7)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    cvt.s.l	$f0,$f0
    lwc1	$f1,0($a3)
    addiu	$t1,$t1,-1
    addiu	$t0,$t0,1
    addu	$a7,$a6,$a7
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    bnez	$t1,.L0d9853cc
    addu	$a3,$t2,$a3
.L0d985400:
    beqz	$v1,.L0d9854b8
    nop
    nop
    nop
.L0d985410:
    lw	$t8,0($a7)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f4
    cvt.s.l	$f4,$f4
    lwc1	$f5,0($a3)
    add.s	$f4,$f4,$f5
    addu	$a7,$a6,$a7
    swc1	$f4,0($a3)
    lw	$t1,0($a7)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f3
    cvt.s.l	$f3,$f3
    addu	$a0,$t2,$a3
    lwc1	$f4,0($a0)
    add.s	$f3,$f3,$f4
    addu	$a7,$a6,$a7
    swc1	$f3,0($a0)
    lw	$a1,0($a7)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    cvt.s.l	$f2,$f2
    addu	$a0,$t2,$a0
    lwc1	$f3,0($a0)
    add.s	$f2,$f2,$f3
    addu	$a7,$a6,$a7
    swc1	$f2,0($a0)
    lw	$a1,0($a7)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    cvt.s.l	$f1,$f1
    addu	$a0,$t2,$a0
    lwc1	$f2,0($a0)
    addiu	$t0,$t0,4
    addu	$a7,$a6,$a7
    add.s	$f1,$f1,$f2
    addu	$a3,$t2,$a0
    bne	$s0,$t0,.L0d985410
    swc1	$f1,0($a0)
.L0d9854b8:
    move	$a3,$s4
    beq	$s5,$t3,.L0d98509c
    addu	$a7,$t9,$a7
.L0d9854c4:
    blez	$s0,.L0d9854b8
    addiu	$t3,$t3,1
    andi	$t1,$s0,0x3
    sra	$v1,$s0,0x2
    move	$t0,$zero
    bnez	$t1,.L0d9853cc
    nop
    b	.L0d985400
    nop
.L0d9854e8:
    sra	$ra,$s0,0x1
.L0d9854ec:
    beqz	$ra,.L0d985538
    nop
    nop
    nop
    nop
.L0d985500:
    lw	$t1,0($a7)
    lw	$t8,0($a3)
    addu	$a7,$a6,$a7
    addu	$t1,$t1,$t8
    sw	$t1,0($a3)
    lw	$at,0($a7)
    addu	$v0,$t2,$a3
    addiu	$t0,$t0,2
    lw	$v1,0($v0)
    addu	$a7,$a6,$a7
    addu	$a3,$t2,$v0
    addu	$at,$at,$v1
    bne	$s0,$t0,.L0d985500
    sw	$at,0($v0)
.L0d985538:
    move	$a3,$s4
    beq	$s5,$t3,.L0d98509c
    addu	$a7,$t9,$a7
.L0d985544:
    blez	$s0,.L0d985538
    addiu	$t3,$t3,1
    move	$t0,$zero
    andi	$ra,$s0,0x1
    beqz	$ra,.L0d9854ec
    sra	$ra,$s0,0x1
    lw	$v0,0($s4)
    li	$t0,1
    lw	$at,0($a7)
    addu	$a3,$t2,$s4
    addu	$a7,$a6,$a7
    addu	$at,$at,$v0
    b	.L0d9854e8
    sw	$at,0($s4)
.L0d98557c:
    beqz	$v1,.L0d9855c8
    nop
    nop
    nop
    nop
.L0d985590:
    lhu	$t1,0($a3)
    lw	$t8,0($a7)
    addu	$a1,$t2,$a3
    addu	$t1,$t1,$t8
    sh	$t1,0($a3)
    lhu	$a0,0($a1)
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    lw	$a2,0($a7)
    addu	$a7,$a6,$a7
    addu	$a3,$t2,$a1
    addu	$a0,$a0,$a2
    bne	$s0,$t0,.L0d985590
    sh	$a0,0($a1)
.L0d9855c8:
    move	$a3,$s4
    beq	$s5,$t3,.L0d98509c
    addu	$a7,$t9,$a7
.L0d9855d4:
    blez	$s0,.L0d9855c8
    addiu	$t3,$t3,1
    move	$t0,$zero
    andi	$ra,$s0,0x1
    beqz	$ra,.L0d98557c
    sra	$v1,$s0,0x1
    lhu	$at,0($s4)
    li	$t0,1
    lw	$v0,0($a7)
    addu	$a3,$t2,$s4
    addu	$a7,$a6,$a7
    addu	$at,$at,$v0
    b	.L0d98557c
    sh	$at,0($s4)
.L0d98560c:
    # Line 389
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 389
    ld	$t9,-256($s8)
    ld	$a6,-288($s8)
    lw	$s6,-220($s8)
    lw	$s3,-240($s8)
    lw	$s4,-236($s8)
    move	$t3,$zero
    sll	$a6,$a6,0x2
    ld	$t8,-264($s8)
    sll	$t9,$t9,0x2
    subu	$s4,$s4,$s3
    addu	$s3,$s3,$t8
    subu	$s6,$s6,$a3
    sll	$s6,$s6,0x2
    addu	$s4,$s4,$s3
    move	$a3,$s3
.L0d985650:
    blez	$s0,.L0d9856a8
    addiu	$t3,$t3,1
    move	$t0,$zero
    addu	$t1,$s6,$a7
    move	$t2,$s4
    nop
    nop
    nop
.L0d985670:
    lbu	$at,0($a3)
    lw	$v0,0($a7)
    addu	$at,$at,$v0
    sb	$at,0($a3)
    lw	$ra,0($t1)
    addu	$a7,$a6,$a7
    lbu	$t8,0($t2)
    addiu	$t0,$t0,1
    addu	$a3,$s1,$a3
    addu	$t1,$t1,$a6
    addu	$t8,$t8,$ra
    sb	$t8,0($t2)
    bne	$s0,$t0,.L0d985670
    addu	$t2,$s1,$t2
.L0d9856a8:
    move	$a3,$s3
    bne	$s5,$t3,.L0d985650
    addu	$a7,$t9,$a7
    b	.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
.L0d9856bc:
    # Line 389
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 389
    ld	$t9,-256($s8)
    ld	$a6,-288($s8)
    sll	$t2,$s1,0x2
    lw	$s6,-220($s8)
    sll	$a6,$a6,0x2
    lw	$s4,-240($s8)
    sll	$t9,$t9,0x2
    subu	$s6,$s6,$a3
    lw	$s7,-236($s8)
    move	$t3,$zero
    ld	$t8,-264($s8)
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$s4
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t8
    sll	$s7,$s7,0x2
    b	.L0d986954
    addu	$s7,$s7,$s4
.L0d98570c:
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 389
    ld	$t9,-256($s8)
    ld	$a6,-288($s8)
    lw	$s6,-220($s8)
    sll	$t2,$s1,0x2
    lw	$s4,-240($s8)
    move	$t3,$zero
    sll	$a6,$a6,0x2
    lw	$s7,-236($s8)
    sll	$t9,$t9,0x2
    ld	$t8,-264($s8)
    subu	$s6,$s6,$a3
    subu	$s7,$s7,$s4
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    addu	$s7,$s7,$s4
    move	$a3,$s4
.L0d98575c:
    blez	$s0,.L0d9857a8
    addiu	$t3,$t3,1
    move	$t0,$zero
    addu	$t1,$s6,$a7
    move	$t8,$s7
.L0d985770:
    lw	$v0,0($a7)
    lw	$v1,0($a3)
    addu	$v0,$v0,$v1
    sw	$v0,0($a3)
    lw	$at,0($t1)
    addu	$a7,$a6,$a7
    lw	$ra,0($t8)
    addiu	$t0,$t0,1
    addu	$a3,$t2,$a3
    addu	$t1,$t1,$a6
    addu	$ra,$ra,$at
    sw	$ra,0($t8)
    bne	$s0,$t0,.L0d985770
    addu	$t8,$t8,$t2
.L0d9857a8:
    move	$a3,$s4
    bne	$s5,$t3,.L0d98575c
    addu	$a7,$t9,$a7
    b	.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
.L0d9857bc:
    # Line 389
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 389
    ld	$t9,-256($s8)
    ld	$a6,-288($s8)
    lw	$s6,-220($s8)
    addu	$t2,$s1,$s1
    lw	$s4,-240($s8)
    move	$t3,$zero
    sll	$a6,$a6,0x2
    lw	$s7,-236($s8)
    sll	$t9,$t9,0x2
    ld	$t8,-264($s8)
    subu	$s6,$s6,$a3
    subu	$s7,$s7,$s4
    addu	$s4,$s4,$s4
    addu	$s4,$s4,$t8
    addu	$s7,$s7,$s7
    sll	$s6,$s6,0x2
    addu	$s7,$s7,$s4
    move	$a3,$s4
.L0d98580c:
    blez	$s0,.L0d985858
    addiu	$t3,$t3,1
    move	$t0,$zero
    addu	$t1,$s6,$a7
    move	$t8,$s7
.L0d985820:
    lhu	$v0,0($a3)
    lw	$v1,0($a7)
    addu	$v0,$v0,$v1
    sh	$v0,0($a3)
    lw	$at,0($t1)
    addu	$a7,$a6,$a7
    lhu	$ra,0($t8)
    addiu	$t0,$t0,1
    addu	$a3,$t2,$a3
    addu	$t1,$t1,$a6
    addu	$ra,$ra,$at
    sh	$ra,0($t8)
    bne	$s0,$t0,.L0d985820
    addu	$t8,$t8,$t2
.L0d985858:
    move	$a3,$s4
    bne	$s5,$t3,.L0d98580c
    addu	$a7,$t9,$a7
    b	.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
.L0d98586c:
    sra	$a0,$s0,0x1
    beqz	$a0,.L0d985928
    nop
    nop
    nop
.L0d985880:
    # Line 389
    lw	$v1,0($a7)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f8
    cvt.s.l	$f8,$f8
    lwc1	$f9,0($t8)
    add.s	$f8,$f8,$f9
    swc1	$f8,0($t8)
    lw	$v0,0($t1)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f7
    cvt.s.l	$f7,$f7
    lwc1	$f8,0($a3)
    add.s	$f7,$f7,$f8
    addu	$a7,$a6,$a7
    swc1	$f7,0($a3)
    lw	$at,0($a7)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f6
    cvt.s.l	$f6,$f6
    addu	$t8,$t2,$t8
    lwc1	$f7,0($t8)
    add.s	$f6,$f6,$f7
    addu	$t1,$t1,$a6
    swc1	$f6,0($t8)
    lw	$ra,0($t1)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f5
    cvt.s.l	$f5,$f5
    addu	$a1,$a3,$t2
    lwc1	$f6,0($a1)
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    addu	$t8,$t2,$t8
    addu	$t1,$t1,$a6
    add.s	$f5,$f5,$f6
    addu	$a3,$a1,$t2
    bne	$s0,$t0,.L0d985880
    swc1	$f5,0($a1)
.L0d985928:
    move	$t8,$s4
    beq	$s5,$t3,.L0d98509c
    addu	$a7,$t9,$a7
.L0d985934:
    blez	$s0,.L0d985928
    addiu	$t3,$t3,1
    addu	$t1,$s6,$a7
    andi	$a0,$s0,0x1
    move	$t0,$zero
    beqz	$a0,.L0d98586c
    move	$a3,$s7
    lw	$a2,0($a7)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f10
    cvt.s.l	$f10,$f10
    lwc1	$f11,0($s4)
    add.s	$f10,$f10,$f11
    swc1	$f10,0($s4)
    lw	$a1,0($t1)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f9
    cvt.s.l	$f9,$f9
    lwc1	$f10,0($s7)
    li	$t0,1
    addu	$a3,$s7,$t2
    addu	$t8,$t2,$s4
    addu	$a7,$a6,$a7
    add.s	$f9,$f9,$f10
    addu	$t1,$t1,$a6
    b	.L0d98586c
    swc1	$f9,0($s7)
.L0d9859a8:
    # Line 409
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 409
    ld	$a6,-288($s8)
    lw	$a4,-216($s8)
    lw	$s6,-220($s8)
    lw	$t8,-240($s8)
    lw	$s4,-236($s8)
    move	$t3,$zero
    sll	$a6,$a6,0x2
    ld	$s3,-264($s8)
    lw	$s7,-232($s8)
    subu	$s4,$s4,$t8
    subu	$s6,$s6,$a3
    addu	$s3,$t8,$s3
    subu	$a4,$a4,$a3
    subu	$s7,$s7,$t8
    sll	$a4,$a4,0x2
    addu	$s7,$s7,$s3
    sll	$s6,$s6,0x2
    b	.L0d986960
    addu	$s4,$s4,$s3
.L0d9859fc:
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 409
    ld	$a6,-288($s8)
    lw	$a4,-216($s8)
    lw	$s4,-240($s8)
    sll	$t2,$s1,0x2
    lw	$a0,-232($s8)
    sll	$a6,$a6,0x2
    lw	$s6,-220($s8)
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    subu	$a0,$a0,$s4
    subu	$s6,$s6,$a3
    sll	$a0,$a0,0x2
    lw	$s7,-236($s8)
    move	$t3,$zero
    ld	$t8,-264($s8)
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$s4
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t8
    sll	$s7,$s7,0x2
    b	.L0d98696c
    addu	$s7,$s7,$s4
.L0d985a5c:
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 409
    ld	$a6,-288($s8)
    lw	$a4,-216($s8)
    lw	$s4,-240($s8)
    sll	$t2,$s1,0x2
    lw	$a0,-232($s8)
    sll	$a6,$a6,0x2
    lw	$s6,-220($s8)
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    subu	$a0,$a0,$s4
    subu	$s6,$s6,$a3
    sll	$a0,$a0,0x2
    lw	$s7,-236($s8)
    move	$t3,$zero
    ld	$t8,-264($s8)
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$s4
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t8
    sll	$s7,$s7,0x2
    b	.L0d986978
    addu	$s7,$s7,$s4
.L0d985abc:
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 409
    ld	$a6,-288($s8)
    lw	$a4,-216($s8)
    lw	$s6,-220($s8)
    addu	$t2,$s1,$s1
    lw	$s4,-240($s8)
    move	$t3,$zero
    sll	$a6,$a6,0x2
    lw	$a0,-232($s8)
    subu	$s6,$s6,$a3
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    lw	$s7,-236($s8)
    subu	$a0,$a0,$s4
    ld	$t8,-264($s8)
    addu	$a0,$a0,$a0
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$s4
    addu	$s4,$s4,$s4
    addu	$s4,$s4,$t8
    addu	$s7,$s7,$s7
    b	.L0d986984
    addu	$s7,$s7,$s4
.L0d985b1c:
    lbu	$a1,0($t2)
    lw	$a2,0($a7)
    addu	$a1,$a1,$a2
    sb	$a1,0($t2)
    lbu	$v1,0($t9)
    lw	$a0,0($t1)
    addu	$v1,$v1,$a0
    sb	$v1,0($t9)
    addiu	$t0,$t0,1
    addu	$a7,$a6,$a7
    lw	$v0,0($t8)
    addiu	$ra,$ra,-1
    addu	$t2,$s1,$t2
    lbu	$at,0($a3)
    addu	$t1,$t1,$a6
    addu	$t9,$s1,$t9
    addu	$t8,$t8,$a6
    addu	$at,$at,$v0
    sb	$at,0($a3)
    bnez	$ra,.L0d985b1c
    addu	$a3,$s1,$a3
.L0d985b70:
    beqz	$a5,.L0d985ca8
    nop
    nop
    nop
.L0d985b80:
    lbu	$at,0($t2)
    lw	$v0,0($a7)
    addu	$at,$at,$v0
    sb	$at,0($t2)
    lbu	$a5,0($t9)
    lw	$ra,0($t1)
    addu	$a5,$a5,$ra
    sb	$a5,0($t9)
    lbu	$a1,0($a3)
    lw	$a2,0($t8)
    addu	$t2,$s1,$t2
    addu	$a1,$a1,$a2
    sb	$a1,0($a3)
    lbu	$v1,0($t2)
    addu	$a7,$a6,$a7
    lw	$a0,0($a7)
    addu	$t9,$s1,$t9
    addu	$v1,$v1,$a0
    sb	$v1,0($t2)
    lbu	$ra,0($t9)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$at,$s1,$a3
    addu	$ra,$ra,$v0
    sb	$ra,0($t9)
    lbu	$ra,0($at)
    addu	$t8,$t8,$a6
    lw	$v0,0($t8)
    addu	$t2,$s1,$t2
    addu	$ra,$ra,$v0
    sb	$ra,0($at)
    lbu	$ra,0($t2)
    addu	$a7,$a6,$a7
    lw	$v0,0($a7)
    addu	$t9,$s1,$t9
    addu	$ra,$ra,$v0
    sb	$ra,0($t2)
    lbu	$ra,0($t9)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$at,$s1,$at
    addu	$ra,$ra,$v0
    sb	$ra,0($t9)
    lbu	$ra,0($at)
    addu	$t8,$t8,$a6
    lw	$v0,0($t8)
    addu	$t2,$s1,$t2
    addu	$ra,$ra,$v0
    sb	$ra,0($at)
    lbu	$ra,0($t2)
    addu	$a7,$a6,$a7
    lw	$v0,0($a7)
    addu	$t9,$s1,$t9
    addu	$ra,$ra,$v0
    sb	$ra,0($t2)
    lbu	$ra,0($t9)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addiu	$t0,$t0,4
    addu	$t2,$s1,$t2
    addu	$at,$s1,$at
    addu	$ra,$ra,$v0
    sb	$ra,0($t9)
    addu	$t1,$t1,$a6
    lbu	$ra,0($at)
    addu	$t8,$t8,$a6
    addu	$a7,$a6,$a7
    addu	$t9,$s1,$t9
    lw	$v0,0($t8)
    addu	$t8,$t8,$a6
    addu	$a3,$s1,$at
    addu	$ra,$ra,$v0
    bne	$s0,$t0,.L0d985b80
    sb	$ra,0($at)
.L0d985ca8:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$t2,$s3
.L0d985cb4:
    blez	$s0,.L0d985ca8
    addu	$t1,$s6,$a7
    sra	$a5,$s0,0x2
    addu	$t8,$a4,$a7
    andi	$ra,$s0,0x3
    move	$t0,$zero
    move	$a3,$s7
    move	$t9,$s4
    bnez	$ra,.L0d985b1c
    nop
    b	.L0d985b70
    nop
.L0d985ce4:
    beqz	$v1,.L0d985de8
    nop
    nop
.L0d985cf0:
    lw	$a5,0($a7)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f16
    cvt.s.l	$f16,$f16
    lwc1	$f17,0($ra)
    add.s	$f16,$f16,$f17
    swc1	$f16,0($ra)
    lw	$a2,0($t1)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f15
    cvt.s.l	$f15,$f15
    lwc1	$f16,0($a3)
    add.s	$f15,$f15,$f16
    swc1	$f15,0($a3)
    lw	$a1,0($t8)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f14
    cvt.s.l	$f14,$f14
    lwc1	$f15,0($t9)
    add.s	$f14,$f14,$f15
    addu	$a7,$a6,$a7
    swc1	$f14,0($t9)
    lw	$v1,0($a7)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f13
    cvt.s.l	$f13,$f13
    addu	$ra,$t2,$ra
    lwc1	$f14,0($ra)
    add.s	$f13,$f13,$f14
    addu	$t1,$t1,$a6
    swc1	$f13,0($ra)
    lw	$v0,0($t1)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f12
    cvt.s.l	$f12,$f12
    addu	$a3,$a3,$t2
    lwc1	$f13,0($a3)
    add.s	$f12,$f12,$f13
    addu	$t8,$t8,$a6
    swc1	$f12,0($a3)
    lw	$at,0($t8)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f11
    cvt.s.l	$f11,$f11
    addu	$a1,$t9,$t2
    lwc1	$f12,0($a1)
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    addu	$ra,$t2,$ra
    addu	$t1,$t1,$a6
    addu	$a3,$a3,$t2
    addu	$t8,$t8,$a6
    add.s	$f11,$f11,$f12
    addu	$t9,$a1,$t2
    bne	$s0,$t0,.L0d985cf0
    swc1	$f11,0($a1)
.L0d985de8:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$ra,$s4
.L0d985df4:
    blez	$s0,.L0d985de8
    sra	$v1,$s0,0x1
    addu	$t9,$a0,$s4
    addu	$t8,$a4,$a7
    andi	$t1,$s0,0x1
    move	$t0,$zero
    move	$a3,$s7
    beqz	$t1,.L0d985ce4
    addu	$t1,$s6,$a7
    lw	$v0,0($a7)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f19
    cvt.s.l	$f19,$f19
    lwc1	$f21,0($s4)
    add.s	$f19,$f19,$f21
    swc1	$f19,0($s4)
    lw	$at,0($t1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f18
    cvt.s.l	$f18,$f18
    lwc1	$f19,0($s7)
    add.s	$f18,$f18,$f19
    swc1	$f18,0($s7)
    lw	$ra,0($t8)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f17
    cvt.s.l	$f17,$f17
    lwc1	$f18,0($t9)
    li	$t0,1
    addu	$a3,$s7,$t2
    addu	$a7,$a6,$a7
    addu	$t1,$t1,$a6
    addu	$t8,$t8,$a6
    addu	$ra,$t2,$s4
    add.s	$f17,$f17,$f18
    swc1	$f17,0($t9)
    b	.L0d985ce4
    addu	$t9,$t9,$t2
.L0d985e98:
    lw	$at,0($a7)
    lw	$v0,0($t9)
    addu	$at,$at,$v0
    sw	$at,0($t9)
    lw	$a2,0($ra)
    lw	$a5,0($t1)
    addu	$a2,$a2,$a5
    sw	$a2,0($ra)
    addiu	$t0,$t0,1
    addu	$a7,$a6,$a7
    lw	$a1,0($t8)
    addiu	$s2,$s2,-1
    addu	$t9,$t2,$t9
    lw	$v1,0($a3)
    addu	$t1,$t1,$a6
    addu	$ra,$ra,$t2
    addu	$t8,$t8,$a6
    addu	$v1,$v1,$a1
    sw	$v1,0($a3)
    bnez	$s2,.L0d985e98
    addu	$a3,$a3,$t2
.L0d985eec:
    sra	$v1,$s0,0x2
    beqz	$v1,.L0d986028
    nop
    nop
    nop
.L0d985f00:
    lw	$v1,0($a7)
    lw	$a1,0($t9)
    addu	$v1,$v1,$a1
    sw	$v1,0($t9)
    lw	$at,0($ra)
    lw	$v0,0($t1)
    addu	$at,$at,$v0
    sw	$at,0($ra)
    lw	$a2,0($a3)
    lw	$a5,0($t8)
    addu	$a7,$a6,$a7
    addu	$a2,$a2,$a5
    sw	$a2,0($a3)
    lw	$v1,0($a7)
    addu	$t9,$t2,$t9
    lw	$a1,0($t9)
    addu	$ra,$ra,$t2
    addu	$v1,$v1,$a1
    sw	$v1,0($t9)
    lw	$at,0($ra)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$a2,$a3,$t2
    addu	$at,$at,$v0
    sw	$at,0($ra)
    lw	$at,0($a2)
    addu	$t8,$t8,$a6
    lw	$v0,0($t8)
    addu	$a7,$a6,$a7
    addu	$at,$at,$v0
    sw	$at,0($a2)
    lw	$at,0($a7)
    addu	$t9,$t2,$t9
    lw	$v0,0($t9)
    addu	$ra,$ra,$t2
    addu	$at,$at,$v0
    sw	$at,0($t9)
    lw	$at,0($ra)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$a2,$a2,$t2
    addu	$at,$at,$v0
    sw	$at,0($ra)
    lw	$at,0($a2)
    addu	$t8,$t8,$a6
    lw	$v0,0($t8)
    addu	$a7,$a6,$a7
    addu	$at,$at,$v0
    sw	$at,0($a2)
    lw	$at,0($a7)
    addu	$t9,$t2,$t9
    lw	$v0,0($t9)
    addu	$ra,$ra,$t2
    addu	$at,$at,$v0
    sw	$at,0($t9)
    lw	$at,0($ra)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addiu	$t0,$t0,4
    addu	$t9,$t2,$t9
    addu	$a2,$a2,$t2
    addu	$at,$at,$v0
    sw	$at,0($ra)
    addu	$t1,$t1,$a6
    lw	$a1,0($a2)
    addu	$t8,$t8,$a6
    addu	$a7,$a6,$a7
    addu	$ra,$ra,$t2
    lw	$a5,0($t8)
    addu	$t8,$t8,$a6
    addu	$a3,$a2,$t2
    addu	$a1,$a1,$a5
    bne	$s0,$t0,.L0d985f00
    sw	$a1,0($a2)
.L0d986028:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$t9,$s4
.L0d986034:
    blez	$s0,.L0d986028
    addu	$t1,$s6,$a7
    addu	$a3,$a0,$s4
    andi	$s2,$s0,0x3
    addu	$t8,$a4,$a7
    move	$t0,$zero
    move	$ra,$s7
    bnez	$s2,.L0d985e98
    nop
    b	.L0d985eec
    nop
.L0d986060:
    lhu	$v1,0($t9)
    lw	$a1,0($a7)
    addu	$v1,$v1,$a1
    sh	$v1,0($t9)
    lhu	$at,0($ra)
    lw	$v0,0($t1)
    addu	$at,$at,$v0
    sh	$at,0($ra)
    addiu	$t0,$t0,1
    addu	$a7,$a6,$a7
    lw	$a5,0($t8)
    addiu	$s2,$s2,-1
    addu	$t9,$t2,$t9
    lhu	$a2,0($a3)
    addu	$t1,$t1,$a6
    addu	$ra,$ra,$t2
    addu	$t8,$t8,$a6
    addu	$a2,$a2,$a5
    sh	$a2,0($a3)
    bnez	$s2,.L0d986060
    addu	$a3,$a3,$t2
.L0d9860b4:
    sra	$a2,$s0,0x2
    beqz	$a2,.L0d9861e8
    nop
.L0d9860c0:
    lhu	$a1,0($t9)
    lw	$a2,0($a7)
    addu	$a1,$a1,$a2
    sh	$a1,0($t9)
    lhu	$v0,0($ra)
    lw	$v1,0($t1)
    addu	$v0,$v0,$v1
    sh	$v0,0($ra)
    lhu	$a5,0($a3)
    lw	$at,0($t8)
    addu	$t9,$t2,$t9
    addu	$a5,$a5,$at
    sh	$a5,0($a3)
    lhu	$a1,0($t9)
    addu	$a7,$a6,$a7
    lw	$a2,0($a7)
    addu	$ra,$ra,$t2
    addu	$a1,$a1,$a2
    sh	$a1,0($t9)
    lhu	$v0,0($ra)
    addu	$t1,$t1,$a6
    lw	$v1,0($t1)
    addu	$at,$a3,$t2
    addu	$v0,$v0,$v1
    sh	$v0,0($ra)
    lhu	$v0,0($at)
    addu	$t8,$t8,$a6
    lw	$v1,0($t8)
    addu	$t9,$t2,$t9
    addu	$v0,$v0,$v1
    sh	$v0,0($at)
    lhu	$v0,0($t9)
    addu	$a7,$a6,$a7
    lw	$v1,0($a7)
    addu	$ra,$ra,$t2
    addu	$v0,$v0,$v1
    sh	$v0,0($t9)
    lhu	$v0,0($ra)
    addu	$t1,$t1,$a6
    lw	$v1,0($t1)
    addu	$at,$at,$t2
    addu	$v0,$v0,$v1
    sh	$v0,0($ra)
    lhu	$v0,0($at)
    addu	$t8,$t8,$a6
    lw	$v1,0($t8)
    addu	$t9,$t2,$t9
    addu	$v0,$v0,$v1
    sh	$v0,0($at)
    lhu	$v0,0($t9)
    addu	$a7,$a6,$a7
    lw	$v1,0($a7)
    addu	$ra,$ra,$t2
    addu	$v0,$v0,$v1
    sh	$v0,0($t9)
    lhu	$v0,0($ra)
    addu	$t1,$t1,$a6
    lw	$v1,0($t1)
    addiu	$t0,$t0,4
    addu	$t9,$t2,$t9
    addu	$at,$at,$t2
    addu	$v0,$v0,$v1
    sh	$v0,0($ra)
    addu	$t1,$t1,$a6
    lhu	$a5,0($at)
    addu	$t8,$t8,$a6
    addu	$a7,$a6,$a7
    addu	$ra,$ra,$t2
    lw	$v0,0($t8)
    addu	$t8,$t8,$a6
    addu	$a3,$at,$t2
    addu	$a5,$a5,$v0
    bne	$s0,$t0,.L0d9860c0
    sh	$a5,0($at)
.L0d9861e8:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$t9,$s4
.L0d9861f4:
    blez	$s0,.L0d9861e8
    addu	$t1,$s6,$a7
    addu	$a3,$a0,$s4
    andi	$s2,$s0,0x3
    addu	$t8,$a4,$a7
    move	$t0,$zero
    move	$ra,$s7
    bnez	$s2,.L0d986060
    nop
    b	.L0d9860b4
    nop
.L0d986220:
    # Line 432
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 432
    lw	$a0,-228($s8)
    ld	$a6,-288($s8)
    lw	$a1,-212($s8)
    lw	$s6,-220($s8)
    lw	$t8,-240($s8)
    move	$t3,$zero
    lw	$s4,-236($s8)
    sll	$a6,$a6,0x2
    subu	$a0,$a0,$t8
    ld	$s3,-264($s8)
    lw	$a4,-216($s8)
    subu	$s4,$s4,$t8
    subu	$s6,$s6,$a3
    lw	$s7,-232($s8)
    addu	$s3,$t8,$s3
    subu	$a1,$a1,$a3
    subu	$a4,$a4,$a3
    sll	$a1,$a1,0x2
    subu	$s7,$s7,$t8
    sll	$a4,$a4,0x2
    addu	$s7,$s7,$s3
    sll	$s6,$s6,0x2
    b	.L0d986990
    addu	$s4,$s4,$s3
.L0d986288:
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 432
    ld	$a6,-288($s8)
    lw	$a1,-212($s8)
    lw	$s4,-240($s8)
    sll	$t2,$s1,0x2
    move	$t3,$zero
    lw	$a2,-228($s8)
    sll	$a6,$a6,0x2
    lw	$a4,-216($s8)
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    lw	$a0,-232($s8)
    subu	$a2,$a2,$s4
    lw	$s6,-220($s8)
    subu	$a4,$a4,$a3
    sll	$a2,$a2,0x2
    sll	$a4,$a4,0x2
    lw	$s7,-236($s8)
    subu	$a0,$a0,$s4
    ld	$t8,-264($s8)
    subu	$s6,$s6,$a3
    sll	$a0,$a0,0x2
    subu	$s7,$s7,$s4
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    addu	$s7,$s7,$s4
    move	$a3,$s4
.L0d986300:
    blez	$s0,.L0d9863c8
    move	$t0,$zero
    addu	$t1,$s6,$a7
    addu	$s2,$a0,$s4
    addu	$t8,$a4,$a7
    addu	$s3,$a2,$s4
    addu	$t9,$a1,$a7
    move	$ra,$s7
.L0d986320:
    lw	$a5,0($a7)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f27
    cvt.s.l	$f27,$f27
    lwc1	$f29,0($a3)
    add.s	$f27,$f27,$f29
    swc1	$f27,0($a3)
    lw	$v1,0($t1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f25
    cvt.s.l	$f25,$f25
    lwc1	$f27,0($ra)
    add.s	$f25,$f25,$f27
    swc1	$f25,0($ra)
    lw	$v0,0($t8)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f23
    cvt.s.l	$f23,$f23
    lwc1	$f25,0($s2)
    add.s	$f23,$f23,$f25
    swc1	$f23,0($s2)
    lw	$at,0($t9)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f21
    cvt.s.l	$f21,$f21
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,1
    lwc1	$f23,0($s3)
    addu	$a3,$t2,$a3
    addu	$t1,$t1,$a6
    addu	$ra,$ra,$t2
    addu	$t8,$t8,$a6
    addu	$s2,$s2,$t2
    addu	$t9,$t9,$a6
    add.s	$f21,$f21,$f23
    swc1	$f21,0($s3)
    bne	$s0,$t0,.L0d986320
    addu	$s3,$s3,$t2
.L0d9863c8:
    addiu	$t3,$t3,1
    bne	$s5,$t3,.L0d986300
    move	$a3,$s4
    b	.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
.L0d9863dc:
    # Line 432
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 432
    ld	$a6,-288($s8)
    lw	$a1,-212($s8)
    lw	$s4,-240($s8)
    sll	$t2,$s1,0x2
    lw	$a2,-228($s8)
    sll	$a6,$a6,0x2
    lw	$a4,-216($s8)
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    lw	$a0,-232($s8)
    subu	$a2,$a2,$s4
    lw	$s6,-220($s8)
    subu	$a4,$a4,$a3
    sll	$a2,$a2,0x2
    sll	$a4,$a4,0x2
    subu	$a0,$a0,$s4
    subu	$s6,$s6,$a3
    sll	$a0,$a0,0x2
    lw	$s7,-236($s8)
    move	$t3,$zero
    ld	$t8,-264($s8)
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$s4
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$t8
    sll	$s7,$s7,0x2
    b	.L0d98699c
    addu	$s7,$s7,$s4
.L0d986454:
    blez	$s5,.L0d9850a0
    # Line 434
    ld	$t3,-312($s8)
    # Line 432
    ld	$a6,-288($s8)
    lw	$a1,-212($s8)
    lw	$a4,-216($s8)
    lw	$s6,-220($s8)
    addu	$t2,$s1,$s1
    lw	$s4,-240($s8)
    move	$t3,$zero
    sll	$a6,$a6,0x2
    lw	$a2,-228($s8)
    subu	$s6,$s6,$a3
    subu	$a4,$a4,$a3
    subu	$a1,$a1,$a3
    lw	$a0,-232($s8)
    subu	$a2,$a2,$s4
    sll	$a1,$a1,0x2
    addu	$a2,$a2,$a2
    sll	$a4,$a4,0x2
    lw	$s7,-236($s8)
    subu	$a0,$a0,$s4
    ld	$t8,-264($s8)
    addu	$a0,$a0,$a0
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$s4
    addu	$s4,$s4,$s4
    addu	$s4,$s4,$t8
    addu	$s7,$s7,$s7
    b	.L0d9869a8
    addu	$s7,$s7,$s4
.L0d9864cc:
    sra	$at,$s0,0x1
    beqz	$at,.L0d9865a8
    nop
    nop
    nop
.L0d9864e0:
    lbu	$at,0($s2)
    lw	$v0,0($a7)
    addu	$at,$at,$v0
    sb	$at,0($s2)
    lbu	$a2,0($a3)
    lw	$a5,0($t1)
    addu	$a2,$a2,$a5
    sb	$a2,0($a3)
    lbu	$v0,0($t2)
    lw	$v1,0($t8)
    addu	$v0,$v0,$v1
    sb	$v0,0($t2)
    lbu	$a5,0($ra)
    lw	$at,0($t9)
    addu	$s2,$s1,$s2
    addu	$a5,$a5,$at
    sb	$a5,0($ra)
    lbu	$v1,0($s2)
    addu	$a7,$a6,$a7
    lw	$a2,0($a7)
    addu	$a3,$s1,$a3
    addu	$v1,$v1,$a2
    sb	$v1,0($s2)
    lbu	$at,0($a3)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$t2,$s1,$t2
    addu	$at,$at,$v0
    sb	$at,0($a3)
    lbu	$a5,0($t2)
    addu	$t8,$t8,$a6
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    lw	$at,0($t8)
    addu	$s2,$s1,$s2
    addu	$t1,$t1,$a6
    addu	$v1,$s1,$ra
    addu	$a5,$a5,$at
    sb	$a5,0($t2)
    addu	$a3,$s1,$a3
    lbu	$v0,0($v1)
    addu	$t9,$t9,$a6
    addu	$t8,$t8,$a6
    addu	$t2,$s1,$t2
    lw	$a2,0($t9)
    addu	$t9,$t9,$a6
    addu	$ra,$s1,$v1
    addu	$v0,$v0,$a2
    bne	$s0,$t0,.L0d9864e0
    sb	$v0,0($v1)
.L0d9865a8:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$s2,$s3
.L0d9865b4:
    blez	$s0,.L0d9865a8
    addu	$ra,$a0,$s3
    addu	$t1,$s6,$a7
    addu	$t8,$a4,$a7
    addu	$t9,$a1,$a7
    andi	$v1,$s0,0x1
    move	$t0,$zero
    move	$t2,$s7
    beqz	$v1,.L0d9864cc
    move	$a3,$s4
    lw	$a2,0($a7)
    lbu	$v1,0($s3)
    addu	$v1,$v1,$a2
    sb	$v1,0($s3)
    lw	$v0,0($t1)
    lbu	$at,0($s4)
    addu	$at,$at,$v0
    sb	$at,0($s4)
    lw	$s2,0($t8)
    lbu	$t2,0($s7)
    li	$t0,1
    addu	$t2,$t2,$s2
    sb	$t2,0($s7)
    addu	$a3,$s1,$s4
    addu	$a7,$a6,$a7
    lbu	$a2,0($ra)
    addu	$t1,$t1,$a6
    addu	$t8,$t8,$a6
    lw	$a5,0($t9)
    addu	$t2,$s1,$s7
    addu	$s2,$s1,$s3
    addu	$t9,$t9,$a6
    addu	$a2,$a2,$a5
    sb	$a2,0($ra)
    b	.L0d9864cc
    addu	$ra,$s1,$ra
.L0d986644:
    sra	$a5,$s0,0x1
    beqz	$a5,.L0d986718
    nop
.L0d986650:
    lw	$v1,0($a7)
    lw	$a5,0($a3)
    addu	$v1,$v1,$a5
    sw	$v1,0($a3)
    lw	$at,0($s3)
    lw	$v0,0($t1)
    addu	$at,$at,$v0
    sw	$at,0($s3)
    lw	$v1,0($s2)
    lw	$a5,0($t8)
    addu	$v1,$v1,$a5
    sw	$v1,0($s2)
    lw	$at,0($ra)
    lw	$v0,0($t9)
    addu	$a7,$a6,$a7
    addu	$at,$at,$v0
    sw	$at,0($ra)
    lw	$v1,0($a7)
    addu	$a3,$t2,$a3
    lw	$a5,0($a3)
    addu	$s3,$s3,$t2
    addu	$v1,$v1,$a5
    sw	$v1,0($a3)
    lw	$at,0($s3)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$s2,$s2,$t2
    addu	$at,$at,$v0
    sw	$at,0($s3)
    lw	$at,0($s2)
    addu	$t8,$t8,$a6
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    lw	$v1,0($t8)
    addu	$a3,$t2,$a3
    addu	$t1,$t1,$a6
    addu	$v0,$ra,$t2
    addu	$ra,$at,$v1
    sw	$ra,0($s2)
    addu	$s3,$s3,$t2
    lw	$at,0($v0)
    addu	$t9,$t9,$a6
    addu	$t8,$t8,$a6
    addu	$s2,$s2,$t2
    lw	$v1,0($t9)
    addu	$t9,$t9,$a6
    addu	$ra,$v0,$t2
    addu	$at,$at,$v1
    bne	$s0,$t0,.L0d986650
    sw	$at,0($v0)
.L0d986718:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$a3,$s4
.L0d986724:
    blez	$s0,.L0d986718
    addu	$s2,$a0,$s4
    addu	$t8,$a4,$a7
    addu	$ra,$a2,$s4
    addu	$t9,$a1,$a7
    andi	$t1,$s0,0x1
    move	$t0,$zero
    move	$s3,$s7
    beqz	$t1,.L0d986644
    addu	$t1,$s6,$a7
    lw	$at,0($s4)
    lw	$s3,0($a7)
    addu	$s3,$s3,$at
    sw	$s3,0($s4)
    lw	$t0,0($t1)
    lw	$a5,0($s7)
    addu	$a5,$a5,$t0
    sw	$a5,0($s7)
    lw	$a3,0($t8)
    lw	$v1,0($s2)
    addu	$a7,$a6,$a7
    addu	$v1,$v1,$a3
    sw	$v1,0($s2)
    addu	$s3,$s7,$t2
    addu	$t1,$t1,$a6
    lw	$at,0($ra)
    li	$t0,1
    addu	$t8,$t8,$a6
    lw	$v0,0($t9)
    addu	$a3,$t2,$s4
    addu	$s2,$s2,$t2
    addu	$t9,$t9,$a6
    addu	$at,$at,$v0
    sw	$at,0($ra)
    b	.L0d986644
    addu	$ra,$ra,$t2
.L0d9867b4:
    sra	$v0,$s0,0x1
    beqz	$v0,.L0d986888
    nop
.L0d9867c0:
    lhu	$v1,0($s2)
    lw	$a5,0($a7)
    addu	$v1,$v1,$a5
    sh	$v1,0($s2)
    lhu	$at,0($s3)
    lw	$v0,0($t1)
    addu	$at,$at,$v0
    sh	$at,0($s3)
    lhu	$v1,0($a3)
    lw	$a5,0($t8)
    addu	$v1,$v1,$a5
    sh	$v1,0($a3)
    lhu	$at,0($ra)
    lw	$v0,0($t9)
    addu	$s2,$t2,$s2
    addu	$at,$at,$v0
    sh	$at,0($ra)
    lhu	$v1,0($s2)
    addu	$a7,$a6,$a7
    lw	$a5,0($a7)
    addu	$s3,$s3,$t2
    addu	$v1,$v1,$a5
    sh	$v1,0($s2)
    lhu	$at,0($s3)
    addu	$t1,$t1,$a6
    lw	$v0,0($t1)
    addu	$a3,$a3,$t2
    addu	$at,$at,$v0
    sh	$at,0($s3)
    lhu	$at,0($a3)
    addu	$t8,$t8,$a6
    addu	$a7,$a6,$a7
    addiu	$t0,$t0,2
    lw	$v0,0($t8)
    addu	$s2,$t2,$s2
    addu	$t1,$t1,$a6
    addu	$a5,$ra,$t2
    addu	$ra,$at,$v0
    sh	$ra,0($a3)
    addu	$s3,$s3,$t2
    lhu	$v1,0($a5)
    addu	$t9,$t9,$a6
    addu	$t8,$t8,$a6
    addu	$a3,$a3,$t2
    lw	$at,0($t9)
    addu	$t9,$t9,$a6
    addu	$ra,$a5,$t2
    addu	$v1,$v1,$at
    bne	$s0,$t0,.L0d9867c0
    sh	$v1,0($a5)
.L0d986888:
    addiu	$t3,$t3,1
    beq	$s5,$t3,.L0d98509c
    move	$s2,$s4
.L0d986894:
    blez	$s0,.L0d986888
    addu	$a3,$a0,$s4
    addu	$t8,$a4,$a7
    addu	$ra,$a2,$s4
    addu	$t9,$a1,$a7
    andi	$t1,$s0,0x1
    move	$t0,$zero
    move	$s3,$s7
    beqz	$t1,.L0d9867b4
    addu	$t1,$s6,$a7
    lw	$at,0($a7)
    lhu	$s3,0($s4)
    addu	$s3,$s3,$at
    sh	$s3,0($s4)
    lw	$s2,0($t1)
    lhu	$t0,0($s7)
    addu	$t0,$t0,$s2
    sh	$t0,0($s7)
    lw	$a5,0($t8)
    lhu	$v1,0($a3)
    addu	$a7,$a6,$a7
    addu	$v1,$v1,$a5
    sh	$v1,0($a3)
    addu	$s3,$s7,$t2
    addu	$t1,$t1,$a6
    lhu	$at,0($ra)
    li	$t0,1
    addu	$s2,$t2,$s4
    lw	$v0,0($t9)
    addu	$t8,$t8,$a6
    addu	$a3,$a3,$t2
    addu	$t9,$t9,$a6
    addu	$at,$at,$v0
    sh	$at,0($ra)
    b	.L0d9867b4
    addu	$ra,$ra,$t2
.L0d986924:
    # Line 373
    move	$a3,$s3
    b	.L0d985394
    nop
.L0d986930:
    move	$a3,$s4
    b	.L0d9854c4
    nop
.L0d98693c:
    move	$a3,$s4
    b	.L0d985544
    nop
.L0d986948:
    move	$a3,$s4
    b	.L0d9855d4
    nop
.L0d986954:
    # Line 389
    move	$t8,$s4
    b	.L0d985934
    nop
.L0d986960:
    # Line 409
    move	$t2,$s3
    b	.L0d985cb4
    nop
.L0d98696c:
    move	$ra,$s4
    b	.L0d985df4
    nop
.L0d986978:
    move	$t9,$s4
    b	.L0d986034
    nop
.L0d986984:
    move	$t9,$s4
    b	.L0d9861f4
    nop
.L0d986990:
    # Line 432
    move	$s2,$s3
    b	.L0d9865b4
    nop
.L0d98699c:
    move	$a3,$s4
    b	.L0d986724
    nop
.L0d9869a8:
    move	$s2,$s4
    b	.L0d986894
    nop
.end __glkonim_GetHistogramEXT

# Function: __glkonim_GetHistogramParameterivEXT
# Declared: Line 441 (Source lines: 443-454)
# Address: 0x0d9869c0 - 0x0d986aac (Size: 236 bytes, Frame: 32)
.globl __glkonim_GetHistogramParameterivEXT
.ent __glkonim_GetHistogramParameterivEXT
__glkonim_GetHistogramParameterivEXT:
    # Line 443
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 444
    lw	$s0,4112($zero)
    # Line 443
    move	$a5,$a1
    move	$a4,$a0
    # Line 444
    lw	$at,4120($zero)
    # Line 443
    sd	$s1,8($sp)
    # Line 444
    li	$v0,1
    # Line 443
    lui	$v1,0x11
    move	$s1,$a2
    sd	$ra,24($sp)
    addiu	$v1,$v1,-23016
    sd	$gp,16($sp)
    # Line 444
    beq	$at,$v0,.L0d986a98
    # Line 443
    addu	$gp,$t9,$v1
    # Line 448
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$a1
    move	$a1,$a0
    jal	__glkon_get_special2
    li	$a0,261
    # Line 450
    lw	$a5,31588($s0)
    lw	$a2,4($a5)
    move	$a0,$s1
    move	$a1,$zero
    blez	$a2,.L0d986a80
    andi	$a6,$a2,0x1
    sll	$a4,$a2,0x2
    beqz	$a6,.L0d986a44
    addu	$a4,$a4,$s1
    # Line 452
    lw	$a7,8($a5)
    # Line 451
    addiu	$a0,$s1,4
    li	$a1,4
    # Line 452
    sw	$a7,0($s1)
.L0d986a44:
    sra	$t0,$a2,0x1
    beqz	$t0,.L0d986a80
    nop
.L0d986a50:
    lw	$t3,31588($s0)
    addu	$t3,$t3,$a1
    lw	$t3,8($t3)
    sw	$t3,0($a0)
    lw	$t1,31588($s0)
    # Line 451
    addiu	$t2,$a1,4
    addiu	$a0,$a0,8
    # Line 452
    addu	$t1,$t1,$t2
    lw	$t1,8($t1)
    # Line 451
    addiu	$a1,$a1,8
    bne	$a0,$a4,.L0d986a50
    # Line 452
    sw	$t1,-4($a0)
.L0d986a80:
    ld	$ra,24($sp)
.L0d986a84:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 454
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d986a98:
    # Line 446
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d986a84
    ld	$ra,24($sp)
.end __glkonim_GetHistogramParameterivEXT

# Function: __glkonim_GetHistogramParameterfvEXT
# Declared: Line 457 (Source lines: 459-470)
# Address: 0x0d986ab0 - 0x0d986c00 (Size: 336 bytes, Frame: 32)
.globl __glkonim_GetHistogramParameterfvEXT
.ent __glkonim_GetHistogramParameterfvEXT
__glkonim_GetHistogramParameterfvEXT:
    # Line 459
    addiu	$sp,$sp,-32
    sd	$a2,0($sp)
    sd	$s0,8($sp)
    move	$a5,$a1
    # Line 460
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 459
    lui	$v1,0x11
    move	$a4,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,-23256
    sd	$gp,16($sp)
    # Line 460
    beq	$at,$v0,.L0d986bec
    # Line 459
    addu	$gp,$t9,$v1
    # Line 464
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$a1
    move	$a1,$a0
    jal	__glkon_get_special2
    li	$a0,261
    # Line 466
    lw	$a5,31588($s0)
    lw	$a5,4($a5)
    move	$a0,$zero
    ld	$a3,0($sp)
    andi	$a4,$a5,0x3
    blez	$a5,.L0d986bd8
    sra	$a7,$a5,0x2
    sll	$a1,$a5,0x2
    move	$a2,$a3
    beqz	$a4,.L0d986b50
    addu	$a1,$a1,$a3
.L0d986b28:
    # Line 468
    lw	$a6,31588($s0)
    addu	$a6,$a6,$a0
    lw	$a6,8($a6)
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    addiu	$a4,$a4,-1
    # Line 467
    addiu	$a2,$a2,4
    addiu	$a0,$a0,4
    bnez	$a4,.L0d986b28
    # Line 468
    swc1	$f0,-4($a2)
.L0d986b50:
    beqz	$a7,.L0d986bd8
    nop
    nop
    nop
.L0d986b60:
    lw	$ra,31588($s0)
    addu	$ra,$ra,$a0
    lw	$ra,8($ra)
    mtc1	$ra,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($a2)
    lw	$t8,31588($s0)
    # Line 467
    addiu	$t9,$a0,4
    # Line 468
    addu	$t8,$t8,$t9
    lw	$t8,8($t8)
    mtc1	$t8,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lw	$t2,31588($s0)
    # Line 467
    addiu	$t3,$a0,8
    # Line 468
    addu	$t2,$t2,$t3
    lw	$t2,8($t2)
    mtc1	$t2,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lw	$t0,31588($s0)
    # Line 467
    addiu	$t1,$a0,12
    # Line 468
    addu	$t0,$t0,$t1
    lw	$t0,8($t0)
    mtc1	$t0,$f1
    cvt.s.w	$f1,$f1
    # Line 467
    addiu	$a2,$a2,16
    addiu	$a0,$a0,16
    bne	$a2,$a1,.L0d986b60
    # Line 468
    swc1	$f1,-4($a2)
.L0d986bd8:
    ld	$ra,24($sp)
.L0d986bdc:
    ld	$s0,8($sp)
    # Line 470
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d986bec:
    # Line 462
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d986bdc
    ld	$ra,24($sp)
.end __glkonim_GetHistogramParameterfvEXT

# Function: __glkonim_MinmaxEXT
# Declared: Line 473 (Source lines: 474-490)
# Address: 0x0d986c00 - 0x0d986d00 (Size: 256 bytes, Frame: 32)
.globl __glkonim_MinmaxEXT
.ent __glkonim_MinmaxEXT
__glkonim_MinmaxEXT:
    # Line 477
    li	$t0,0x805b
    # Line 474
    addiu	$sp,$sp,-32
    lw	$at,4120($zero)
    sd	$s0,16($sp)
    li	$v0,1
    lui	$v1,0x11
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v1,$v1,-23592
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d986cec
    addu	$gp,$t9,$v1
    # Line 477
    li	$a1,0x802e
    bne	$a0,$a1,.L0d986c94
    # Line 482
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 477
    li	$a6,0x8048
    sltiu	$a3,$s0,6406
    sltiu	$a4,$s0,6411
    sd	$a2,0($sp)
    bnez	$a3,.L0d986c5c
    sltu	$a6,$a6,$s0
    bnez	$a4,.L0d986cb4
    # Line 487
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
.L0d986c5c:
    # Line 477
    li	$a5,0x803b
    sltu	$a5,$s0,$a5
    bnez	$a5,.L0d986c78
    li	$a7,0x804e
    beqz	$a6,.L0d986cb4
    # Line 487
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 477
    li	$a7,0x804e
.L0d986c78:
    sltu	$a7,$s0,$a7
    bnez	$a7,.L0d986c94
    # Line 482
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 477
    sltu	$t0,$t0,$s0
    beqz	$t0,.L0d986cb4
    # Line 487
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 482
    # lw $t9, -28616($gp) # &__glSetError
.L0d986c94:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d986ca0:
    # Line 490
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 487
    # lw $t9, -31184($gp) # &ValidateHistogramSink
.L0d986cb4:
    # Line 485
    lw	$t2,4112($zero)
    # Line 487
    ld	$t1,0($sp)
    bal ValidateHistogramSink
    # Line 485
    sb	$t1,1376($t2)
    # Line 490
    ld	$gp,8($sp)
    # Line 489
    li	$t8,263
    sw	$t8,16384($zero)
    sw	$s0,16384($zero)
    ld	$ra,24($sp)
    # Line 490
    ld	$s0,16($sp)
    # Line 489
    ld	$t3,0($sp)
    # Line 490
    addiu	$sp,$sp,32
    jr	$ra
    # Line 489
    sw	$t3,16384($zero)
.L0d986cec:
    # Line 475
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d986ca0
    ld	$ra,24($sp)
.end __glkonim_MinmaxEXT

# Function: __glkonim_GetMinmaxEXT
# Declared: Line 493 (Source lines: 495-629)
# Address: 0x0d986d00 - 0x0d987454 (Size: 1876 bytes, Frame: 128)
.globl __glkonim_GetMinmaxEXT
.ent __glkonim_GetMinmaxEXT
__glkonim_GetMinmaxEXT:
    # Line 495
    addiu	$sp,$sp,-256
    sd	$s7,104($sp)
    # Line 506
    lw	$s7,4112($zero)
    # Line 495
    sd	$s0,112($sp)
    sd	$s2,96($sp)
    move	$s2,$a4
    move	$s0,$a3
    # Line 506
    lw	$at,4120($zero)
    # Line 495
    sd	$s1,120($sp)
    # Line 506
    li	$v0,1
    # Line 495
    lui	$v1,0x11
    move	$s1,$a2
    sd	$ra,144($sp)
    addiu	$v1,$v1,-23848
    sd	$gp,128($sp)
    # Line 506
    beq	$at,$v0,.L0d987420
    # Line 495
    addu	$gp,$t9,$v1
    # Line 508
    li	$a2,0x802e
    bne	$a0,$a2,.L0d986d98
    sltiu	$a3,$s1,6403
    bnez	$a3,.L0d986d98
    sltiu	$a4,$s1,6411
    bnez	$a4,.L0d986d70
    sltiu	$a6,$s0,5120
    li	$a5,0x8000
    bne	$s1,$a5,.L0d986d9c
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sltiu	$a6,$s0,5120
.L0d986d70:
    bnez	$a6,.L0d986d84
    li	$v0,0x8032
    sltiu	$a7,$s0,5127
    bnez	$a7,.L0d986dc4
    li	$v0,0x8032
.L0d986d84:
    sltu	$t0,$s0,$v0
    beqz	$t0,.L0d986dc8
    li	$t1,0x8036
    sltu	$t1,$t1,$s0
    beqz	$t1,.L0d986dd0
.L0d986d98:
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d986d9c:
    jal	__glSetError
    li	$a0,1280
    ld	$s2,96($sp)
.L0d986da8:
    ld	$s7,104($sp)
    ld	$ra,144($sp)
    ld	$s0,112($sp)
    ld	$s1,120($sp)
    # Line 629
    ld	$gp,128($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d986dc4:
    # Line 508
    li	$v0,0x8032
.L0d986dc8:
    beq	$v0,$s0,.L0d987410
    li	$a3,6407
.L0d986dd0:
    li	$t2,0x8033
.L0d986dd4:
    sltu	$t2,$s0,$t2
    bnez	$t2,.L0d986e08
    li	$t3,0x8036
    sltu	$t3,$t3,$s0
    bnez	$t3,.L0d986e0c
    # Line 516
    nop	# was lw $t9, -32120($gp) # &__glkon_get_special
    # Line 508
    li	$t8,6408
    beq	$s1,$t8,.L0d986e08
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d986df8:
    jal	__glSetError
    li	$a0,1282
    b	.L0d986da8
    ld	$s2,96($sp)
.L0d986e08:
    # Line 516
    # lw $t9, -32120($gp) # &__glkon_get_special
.L0d986e0c:
    jal	__glkon_get_special
    li	$a0,265
    # Line 517
    lw	$a0,-4($v0)
    li	$a1,0x8000
    beq	$a1,$a0,.L0d9873fc
    # Line 516
    sd	$v0,40($sp)
    # Line 519
    li	$v0,9
    li	$at,0x8049
    addiu	$ra,$a0,-6403
    xor	$at,$a0,$at
    movz	$ra,$v0,$at
    beq	$a1,$s1,.L0d987408
    sd	$ra,64($sp)
.L0d986e40:
    # Line 520
    li	$v1,9
    li	$v0,0x8049
    addiu	$a0,$s1,-6403
    xor	$v0,$s1,$v0
    movz	$a0,$v1,$v0
.L0d986e54:
    # Line 521
    sll	$a4,$a0,0x2
    # Line 520
    la	$a7,__glkon_formats
    # Line 521
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x3
    li	$v1,0x8035
    addu	$a4,$a7,$a4
    lw	$a1,0($a4)
    beq	$s0,$v1,.L0d9873e4
    sd	$a1,80($sp)
    # Line 530
    sltiu	$a5,$s0,5120
    bnez	$a5,.L0d986e8c
    # Line 529
    sd	$s0,88($sp)
    # Line 530
    sltiu	$a7,$s0,5127
    bnez	$a7,.L0d9873f0
.L0d986e8c:
    move	$s1,$zero
    sd	$a4,48($sp)
.L0d986e94:
    # Line 531
    # lw $t9, -29944($gp) # &__glSpecBytesPerElement
    jal	__glSpecBytesPerElement
    move	$a0,$s0
    # Line 533
    ld	$t0,80($sp)
    li	$v1,0x8c6c
    addu	$v1,$v1,$s7
    mult	$v0,$t0
    lw	$v1,0($v1)
    lw	$a7,4($v1)
    # Line 531
    andi	$t2,$s1,0xff
    # Line 535
    li	$t1,2
    move	$a6,$a7
    movz	$a6,$t1,$a7
    # Line 533
    mflo	$a4
    nop
    movz	$a4,$v0,$t2
    # Line 535
    multu	$a4,$a6
    # Line 540
    lw	$a5,12($v1)
    # Line 535
    mflo	$a2
    nop
    nop
    # Line 540
    multu	$a4,$a5
    lw	$a3,24($v1)
    lw	$a1,20($v1)
    mflo	$ra
    nop
    nop
    multu	$a1,$a3
    # Line 535
    lw	$a0,16($v1)
    addiu	$v0,$a0,-1
    # Line 538
    subu	$a0,$a0,$a2
    # Line 540
    lw	$v1,8($v1)
    # Line 535
    and	$a1,$v0,$a2
    # Line 538
    and	$v0,$v0,$a0
    addu	$v0,$a2,$v0
    # Line 540
    mflo	$a0
    movz	$v0,$a2,$a1
    addu	$v1,$v1,$a0
    # Line 531
    sd	$t2,72($sp)
    # Line 540
    multu	$v0,$v1
    sdc1	$f20,136($sp)
    sd	$s5,152($sp)
    sd	$s4,160($sp)
    sd	$s6,168($sp)
    sd	$s3,176($sp)
    # Line 550
    li	$t9,5125
    ld	$at,88($sp)
    sd	$s8,184($sp)
    # Line 540
    addu	$s2,$s2,$ra
    mflo	$t8
    movz	$at,$s0,$t2
    sd	$at,88($sp)
    addu	$s2,$s2,$t8
    movz	$s0,$t9,$t2
    sw	$s0,236($sp)
    # Line 545
    move	$t1,$s2
    # Line 540
    sd	$s2,32($sp)
    movz	$t1,$sp,$t2
    # Line 550
    blez	$t0,.L0d9873a0
    sd	$t1,56($sp)
    ld	$s8,48($sp)
    ld	$t8,32($sp)
    li	$a2,1
    lw	$a1,236($sp)
    move	$s3,$t8
    move	$s1,$t8
    ld	$s6,80($sp)
    move	$s5,$t8
    addiu	$a1,$a1,-5120
    move	$s0,$s8
    addu	$s4,$s6,$t8
    ld	$v1,64($sp)
    sll	$ra,$s6,0x2
    addu	$s6,$s6,$s6
    addu	$s2,$ra,$t8
    sll	$v0,$v1,0x2
    addu	$s6,$s6,$t8
    addu	$v0,$v0,$v1
    la	$v1,__glkon_formats
    ld	$a0,40($sp)
    addu	$s8,$s8,$ra
    sll	$v0,$v0,0x3
    sdc1	$f20,136($sp)
    b	.L0d987040
    addu	$v0,$v0,$v1
    nop
    nop
.L0d986ff0:
    # Line 592
    lwc1	$f3,3564($s7)
    lwc1	$f2,3540($s7)
    madd.s	$f2,$f2,$f3,$f13
    trunc.l.s	$f2,$f2
    dmfc1	$a4,$f2
    sw	$a4,0($s1)
    # Line 593
    lwc1	$f1,3564($s7)
    lwc1	$f0,3540($s7)
    madd.s	$f0,$f0,$f1,$f20
    trunc.l.s	$f0,$f0
    dmfc1	$a3,$f0
    sw	$a3,0($s2)
.L0d987020:
    # Line 553
    addiu	$s1,$s1,4
    addiu	$s6,$s6,2
    addiu	$s2,$s2,4
    addiu	$s0,$s0,4
    addiu	$s4,$s4,1
    addiu	$s3,$s3,2
    beq	$s0,$s8,.L0d9873a0
    addiu	$s5,$s5,1
.L0d987040:
    # Line 562
    li	$t8,1
    # Line 550
    lw	$t0,24($s0)
    lw	$a5,4($v0)
    sllv	$a6,$a2,$t0
    and	$a5,$a5,$a6
    # Line 559
    sll	$t2,$t0,0x2
    # Line 550
    beqz	$a5,.L0d9871b4
    # Line 559
    addu	$t2,$a0,$t2
    # Line 562
    lw	$t1,31568($s7)
    slti	$t3,$t1,2
    # Line 561
    lwc1	$f20,16($t2)
    # Line 562
    addiu	$a7,$t2,32
    bnez	$t3,.L0d987190
    # Line 560
    lwc1	$f13,0($t2)
    # Line 562
    li	$t0,1
    addiu	$ra,$t1,-1
    move	$t9,$t3
    movz	$t8,$ra,$t9
    andi	$t2,$t8,0x3
    beqz	$t2,.L0d9870bc
    sra	$at,$t8,0x2
.L0d987094:
    # Line 564
    lwc1	$f5,16($a7)
    # Line 562
    lwc1	$f4,0($a7)
    # Line 564
    c.lt.s $f20,$f5
    addiu	$t2,$t2,-1
    # Line 562
    c.lt.s	$f4,$f13
    addiu	$a7,$a7,32
    movt.s	$f20,$f5,$fcc1
    addiu	$t0,$t0,1
    bnez	$t2,.L0d987094
    movt.s	$f13,$f4,$fcc0
.L0d9870bc:
    mov.s	$f9,$f20
    mov.s	$f5,$f20
    beqz	$at,.L0d987190
    mov.s	$f4,$f20
    mov.s	$f10,$f13
    mov.s	$f8,$f20
    mov.s	$f6,$f13
    mov.s	$f11,$f13
    mov.s	$f7,$f13
.L0d9870e0:
    # Line 564
    lwc1	$f19,112($a7)
    # Line 562
    lwc1	$f18,96($a7)
    # Line 564
    lwc1	$f17,80($a7)
    c.lt.s $f8,$f19
    # Line 562
    lwc1	$f16,64($a7)
    c.lt.s	$f18,$f10
    # Line 564
    lwc1	$f15,48($a7)
    movt.s	$f8,$f19,$fcc1
    c.lt.s $f9,$f17
    # Line 562
    lwc1	$f14,32($a7)
    movt.s	$f10,$f18,$fcc0
    c.lt.s $f16,$f11
    # Line 564
    lwc1	$f13,16($a7)
    movt.s	$f9,$f17,$fcc7
    c.lt.s $f5,$f15
    # Line 562
    lwc1	$f12,0($a7)
    movt.s	$f11,$f16,$fcc6
    c.lt.s $f14,$f6
    addiu	$t0,$t0,4
    movt.s	$f5,$f15,$fcc5
    # Line 564
    c.lt.s $f4,$f13
    # Line 562
    slt	$v1,$t0,$t1
    movt.s	$f6,$f14,$fcc4
    c.lt.s $f12,$f7
    movt.s	$f4,$f13,$fcc3
    addiu	$a7,$a7,128
    bnez	$v1,.L0d9870e0
    movt.s	$f7,$f12,$fcc2
    mov.s	$f20,$f5
    mov.s	$f23,$f10
    mov.s	$f21,$f4
    c.lt.s $f9,$f4
    mov.s	$f13,$f11
    c.lt.s $f11,$f7
    c.lt.s $f10,$f6
    movf.s	$f21,$f9,$fcc5
    c.lt.s $f8,$f5
    movf.s	$f13,$f7,$fcc6
    movf.s	$f23,$f6,$fcc7
    movf.s	$f20,$f8,$fcc4
    c.lt.s $f23,$f13
    c.lt.s $f20,$f21
    movt.s	$f13,$f23,$fcc3
    movt.s	$f20,$f21,$fcc2
.L0d987190:
    la	$a7,.rodata
    sltiu	$t1,$a1,7
    sll	$t0,$a1,0x2
    addiu	$a7,$a7,1536
    beqz	$t1,.L0d987020
    addu	$a7,$a7,$t0
    lw	$t0,0($a7)
    jr	$t0
    nop
.L0d9871b4:
    # Line 600
    la	$a7,.rodata
    sltiu	$t1,$a1,7
    sll	$t0,$a1,0x2
    addiu	$a7,$a7,1564
    beqz	$t1,.L0d987020
    addu	$a7,$a7,$t0
    lw	$t0,0($a7)
    jr	$t0
    # Line 619
    mtc1	$zero,$f21
.L0d9871d8:
    # Line 570
    lwc1	$f14,3548($s7)
    lwc1	$f12,3540($s7)
    # lw $t9, -18488($gp) # &floorf
    mul.s	$f13,$f14,$f13
    sd	$a1,192($sp)
    sd	$v0,200($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f14,$f0
    mfc1	$t1,$f14
    sb	$t1,0($s5)
    # Line 571
    lwc1	$f13,3548($s7)
    # lw $t9, -18488($gp) # &floorf
    lwc1	$f12,3540($s7)
    mul.s	$f13,$f13,$f20
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v0,200($sp)
    trunc.w.s	$f15,$f0
    ld	$a1,192($sp)
    ld	$a0,40($sp)
    mfc1	$t2,$f15
    li	$a2,1
    # Line 572
    b	.L0d987020
    # Line 571
    sb	$t2,0($s4)
.L0d98723c:
    # Line 597
    swc1	$f13,0($s1)
    # Line 599
    b	.L0d987020
    # Line 598
    swc1	$f20,0($s2)
.L0d987248:
    # Line 588
    lwc1	$f14,3564($s7)
    lwc1	$f12,3540($s7)
    # lw $t9, -18488($gp) # &floorf
    mul.s	$f13,$f14,$f13
    sd	$a1,192($sp)
    sd	$v0,200($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f14,$f0
    swc1	$f14,0($s1)
    # Line 589
    lwc1	$f13,3564($s7)
    # lw $t9, -18488($gp) # &floorf
    lwc1	$f12,3540($s7)
    mul.s	$f13,$f13,$f20
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v0,200($sp)
    ld	$a1,192($sp)
    ld	$a0,40($sp)
    trunc.w.s	$f15,$f0
    li	$a2,1
    # Line 590
    b	.L0d987020
    # Line 589
    swc1	$f15,0($s2)
.L0d9872a4:
    # Line 583
    lwc1	$f19,3556($s7)
    lwc1	$f18,3540($s7)
    madd.s	$f18,$f18,$f19,$f13
    trunc.w.s	$f18,$f18
    mfc1	$t8,$f18
    sh	$t8,0($s3)
    # Line 584
    lwc1	$f17,3556($s7)
    lwc1	$f16,3540($s7)
    madd.s	$f16,$f16,$f17,$f20
    trunc.w.s	$f16,$f16
    mfc1	$t3,$f16
    # Line 586
    b	.L0d987020
    # Line 584
    sh	$t3,0($s6)
.L0d9872d8:
    # Line 578
    lwc1	$f14,3556($s7)
    lwc1	$f12,3540($s7)
    # lw $t9, -18488($gp) # &floorf
    mul.s	$f13,$f14,$f13
    sd	$a1,192($sp)
    sd	$v0,200($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f14,$f0
    mfc1	$t9,$f14
    sh	$t9,0($s3)
    # Line 579
    lwc1	$f13,3556($s7)
    lwc1	$f12,3540($s7)
    # lw $t9, -18488($gp) # &floorf
    mul.s	$f13,$f13,$f20
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v0,200($sp)
    trunc.w.s	$f15,$f0
    ld	$a1,192($sp)
    ld	$a0,40($sp)
    mfc1	$ra,$f15
    li	$a2,1
    # Line 581
    b	.L0d987020
    # Line 579
    sh	$ra,0($s6)
.L0d98733c:
    # Line 574
    lwc1	$f19,3548($s7)
    lwc1	$f18,3540($s7)
    madd.s	$f18,$f18,$f19,$f13
    trunc.w.s	$f18,$f18
    mfc1	$v1,$f18
    sb	$v1,0($s5)
    # Line 575
    lwc1	$f17,3548($s7)
    lwc1	$f16,3540($s7)
    madd.s	$f16,$f16,$f17,$f20
    trunc.w.s	$f16,$f16
    mfc1	$at,$f16
    b	.L0d987020
    sb	$at,0($s4)
.L0d987370:
    # Line 605
    sb	$zero,0($s4)
    # Line 607
    b	.L0d987020
    # Line 605
    sb	$zero,0($s5)
.L0d98737c:
    # Line 619
    swc1	$f21,0($s2)
    # Line 621
    b	.L0d987020
    # Line 619
    swc1	$f21,0($s1)
.L0d987388:
    # Line 615
    sw	$zero,0($s2)
    # Line 617
    b	.L0d987020
    # Line 615
    sw	$zero,0($s1)
.L0d987394:
    # Line 610
    sh	$zero,0($s6)
    b	.L0d987020
    sh	$zero,0($s3)
.L0d9873a0:
    # Line 553
    ld	$a0,72($sp)
    beqz	$a0,.L0d987434
    ld	$s8,184($sp)
.L0d9873ac:
    ld	$s3,176($sp)
    ld	$s6,168($sp)
    ld	$s4,160($sp)
    ld	$s5,152($sp)
    ldc1	$f20,136($sp)
    # Line 628
    # lw $t9, -31116($gp) # &__glkon_byteSwapMaybe
    ld	$a0,32($sp)
    ld	$a1,88($sp)
    move	$a4,$zero
    ld	$a3,80($sp)
    bal __glkon_byteSwapMaybe
    li	$a2,2
    b	.L0d986da8
    ld	$s2,96($sp)
.L0d9873e4:
    # Line 526
    li	$s0,5121
    li	$a1,0x8035
    sd	$a1,88($sp)
.L0d9873f0:
    # Line 530
    li	$s1,1
    b	.L0d986e94
    sd	$a4,48($sp)
.L0d9873fc:
    # Line 519
    li	$a2,8
    bne	$a1,$s1,.L0d986e40
    sd	$a2,64($sp)
.L0d987408:
    # Line 520
    b	.L0d986e54
    li	$a0,8
.L0d987410:
    # Line 508
    beq	$s1,$a3,.L0d986dd4
    li	$t2,0x8033
    b	.L0d986df8
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d987420:
    # Line 506
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d986da8
    ld	$s2,96($sp)
.L0d987434:
    # Line 626
    # lw $t9, -31112($gp) # &__glkon_packPixelRow
    ld	$a0,56($sp)
    ld	$a1,32($sp)
    ld	$a2,88($sp)
    bal __glkon_packPixelRow
    li	$a3,2
    b	.L0d9873ac
    ld	$s8,184($sp)
.end __glkonim_GetMinmaxEXT

# Function: __glkonim_GetMinmaxParameterivEXT
# Declared: Line 632 (Source lines: 633-645)
# Address: 0x0d987460 - 0x0d9874f8 (Size: 152 bytes, Frame: 32)
.globl __glkonim_GetMinmaxParameterivEXT
.ent __glkonim_GetMinmaxParameterivEXT
__glkonim_GetMinmaxParameterivEXT:
    # Line 633
    addiu	$sp,$sp,-32
    # Line 634
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 633
    lui	$v1,0x11
    # Line 635
    li	$a3,0x802e
    sd	$ra,24($sp)
    # Line 633
    addiu	$v1,$v1,-25736
    sd	$gp,16($sp)
    # Line 634
    beq	$at,$v0,.L0d9874e4
    # Line 633
    addu	$gp,$t9,$v1
    sd	$a2,0($sp)
    # Line 635
    beq	$a0,$a3,.L0d9874b4
    sd	$a4,8($sp)
    # Line 638
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d9874a8:
    # Line 645
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9874b4:
    # Line 642
    # lw $t9, -32120($gp) # &__glkon_get_special
    jal	__glkon_get_special
    li	$a0,266
    # Line 645
    ld	$gp,16($sp)
    # Line 644
    ld	$a4,8($sp)
    ld	$ra,24($sp)
    lw	$a4,31588($a4)
    ld	$a5,0($sp)
    lw	$a4,8($a4)
    # Line 645
    addiu	$sp,$sp,32
    jr	$ra
    # Line 644
    sw	$a4,0($a5)
.L0d9874e4:
    # Line 635
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9874a8
    ld	$ra,24($sp)
.end __glkonim_GetMinmaxParameterivEXT

# Function: __glkonim_GetMinmaxParameterfvEXT
# Declared: Line 648 (Source lines: 649-661)
# Address: 0x0d987500 - 0x0d9875a0 (Size: 160 bytes, Frame: 32)
.globl __glkonim_GetMinmaxParameterfvEXT
.ent __glkonim_GetMinmaxParameterfvEXT
__glkonim_GetMinmaxParameterfvEXT:
    # Line 649
    addiu	$sp,$sp,-32
    # Line 650
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 649
    lui	$v1,0x11
    # Line 651
    li	$a3,0x802e
    sd	$ra,24($sp)
    # Line 649
    addiu	$v1,$v1,-25896
    sd	$gp,16($sp)
    # Line 650
    beq	$at,$v0,.L0d98758c
    # Line 649
    addu	$gp,$t9,$v1
    sd	$a2,0($sp)
    # Line 651
    beq	$a0,$a3,.L0d987554
    sd	$a4,8($sp)
    # Line 654
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d987548:
    # Line 661
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d987554:
    # Line 658
    # lw $t9, -32120($gp) # &__glkon_get_special
    jal	__glkon_get_special
    li	$a0,266
    # Line 660
    ld	$a5,8($sp)
    lw	$a5,31588($a5)
    lw	$a5,8($a5)
    mtc1	$a5,$f0
    ld	$ra,24($sp)
    cvt.s.w	$f0,$f0
    ld	$a4,0($sp)
    # Line 661
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 660
    swc1	$f0,0($a4)
.L0d98758c:
    # Line 651
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d987548
    ld	$ra,24($sp)
.end __glkonim_GetMinmaxParameterfvEXT

.late_rodata
jtbl_0da80590:
    .word .L0d986220
    .word .L0d986220
    .word .L0d986454
    .word .L0d986454
    .word .L0d9863dc
    .word .L0d9863dc
    .word .L0d986288
    .word .L0d9859a8
    .word .L0d9859a8
    .word .L0d985abc
    .word .L0d985abc
    .word .L0d985a5c
    .word .L0d985a5c
    .word .L0d9859fc
    .word .L0d98560c
    .word .L0d98560c
    .word .L0d9857bc
    .word .L0d9857bc
    .word .L0d98570c
    .word .L0d98570c
    .word .L0d9856bc
    .word .L0d98528c
    .word .L0d98528c
    .word .L0d985314
    .word .L0d985314
    .word .L0d9852e4
    .word .L0d9852e4
    .word .L0d9852b4
jtbl_0da80600:
    .word .L0d9871d8
    .word .L0d98733c
    .word .L0d9872d8
    .word .L0d9872a4
    .word .L0d987248
    .word .L0d986ff0
    .word .L0d98723c
    .word .L0d987370
    .word .L0d987370
    .word .L0d987394
    .word .L0d987394
    .word .L0d987388
    .word .L0d987388
    .word .L0d98737c

