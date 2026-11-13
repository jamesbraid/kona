# Source: ../KONA/kon_pipeline_instruments.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_pipeline_instruments.c
# Total Functions: 3

.text

# Function: __glkonim_InstrumentsBufferSGIX
# Declared: Line 16 (Source lines: 16-131)
# Address: 0x0d9640e0 - 0x0d96450c (Size: 1068 bytes, Frame: 224)
.globl __glkonim_InstrumentsBufferSGIX
.ent __glkonim_InstrumentsBufferSGIX
__glkonim_InstrumentsBufferSGIX:
    # Line 16
    addiu	$sp,$sp,-96
    sd	$s2,72($sp)
    sd	$s1,64($sp)
    sd	$s0,56($sp)
    # Line 17
    lw	$s0,4112($zero)
    # Line 16
    move	$s1,$a1
    lui	$a6,0x13
    # Line 21
    lw	$at,4120($zero)
    li	$a5,1
    # Line 16
    addiu	$a6,$a6,-12552
    # Line 21
    lw	$a4,31588($s0)
    # Line 16
    move	$s2,$a0
    sd	$gp,80($sp)
    addu	$gp,$t9,$a6
    sd	$ra,88($sp)
    # Line 21
    beq	$at,$a5,.L0d9644d0
    addiu	$a4,$a4,16376
    # Line 26
    bltz	$a0,.L0d9644f0
    # Line 30
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 34
    lw	$a0,31608($s0)
    bne	$a0,$a1,.L0d964204
    nop
    beqz	$a1,.L0d964204
    nop
    # Line 41
    lw	$a0,31612($s0)
    sll	$a3,$s2,0x2
    addu	$a3,$a1,$a3
    sltu	$a7,$a0,$a3
    beqz	$a7,.L0d9641e0
    # Line 48
    li	$ra,444
    # Line 41
    subu	$t2,$a3,$a0
    addiu	$t2,$t2,39
    li	$t1,0xcccc
    srl	$a6,$t2,0x1f
    negu	$t0,$t2
    dsll	$t1,$t1,0x10
    ori	$t1,$t1,0xcccd
    movz	$t0,$t2,$a6
    multu	$t0,$t1
    mfhi	$a7
    sra	$a7,$a7,0x5
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    andi	$a1,$a5,0x7
    beqz	$a1,.L0d9641a8
    sra	$t3,$a5,0x3
.L0d964198:
    addiu	$a1,$a1,-1
    addiu	$a0,$a0,40
    bnez	$a1,.L0d964198
    # Line 42
    sw	$zero,-40($a0)
.L0d9641a8:
    beqz	$t3,.L0d9641dc
    nop
.L0d9641b0:
    sw	$zero,280($a0)
    sw	$zero,240($a0)
    sw	$zero,200($a0)
    sw	$zero,160($a0)
    sw	$zero,120($a0)
    # Line 41
    addiu	$a0,$a0,320
    # Line 42
    sw	$zero,-240($a0)
    # Line 41
    sltu	$t8,$a0,$a3
    # Line 42
    sw	$zero,-280($a0)
    # Line 41
    bnez	$t8,.L0d9641b0
    # Line 42
    sw	$zero,-320($a0)
.L0d9641dc:
    # Line 48
    li	$ra,444
.L0d9641e0:
    sw	$ra,16384($zero)
    sw	$zero,16384($zero)
    # Line 49
    li	$t9,440
    sw	$t9,16384($zero)
    sw	$zero,16384($zero)
    # Line 50
    sw	$zero,0($a4)
    # Line 52
    sw	$s1,31616($s0)
    b	.L0d964248
    sw	$s1,31612($s0)
.L0d964204:
    beqz	$a0,.L0d9643b4
    nop
    bnez	$s1,.L0d964274
    sd	$a4,40($sp)
    # Line 63
    # lw $t9, -31952($gp) # &__glKon_ioctl
    move	$a0,$s0
    addiu	$a2,$sp,0
    bal __glKon_ioctl
    li	$a1,10003
    beqz	$v0,.L0d96423c
    # Line 64
    nop	# was lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,-6632
.L0d96423c:
    # Line 66
    sw	$zero,31616($s0)
    sw	$zero,31612($s0)
    sw	$zero,31608($s0)
.L0d964248:
    # Line 131
    ld	$gp,80($sp)
.L0d96424c:
    # Line 128
    sw	$zero,31620($s0)
    ld	$ra,88($sp)
    # Line 131
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d964268:
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d964274:
    # Line 77
    # lw $t9, -31952($gp) # &__glKon_ioctl
    move	$a0,$s0
    addiu	$a2,$sp,8
    bal __glKon_ioctl
    li	$a1,10003
    beqz	$v0,.L0d96429c
    # Line 78
    nop	# was lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,-6632
.L0d96429c:
    # Line 81
    sw	$s1,31616($s0)
    sw	$s1,31612($s0)
    sw	$s1,31608($s0)
    # Line 86
    li	$a4,1
    sw	$a4,32($sp)
    # Line 85
    sw	$zero,28($sp)
    # Line 84
    sll	$a3,$s2,0x2
    sd	$a3,48($sp)
    # Line 88
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 84
    sw	$a3,20($sp)
    # Line 88
    addiu	$a2,$sp,16
    li	$a1,10002
    # Line 84
    sw	$a3,24($sp)
    # Line 88
    move	$a0,$s0
    bal __glKon_ioctl
    # Line 83
    sw	$s1,16($sp)
    # Line 88
    beqz	$v0,.L0d964308
    # Line 96
    li	$a3,440
    ld	$s0,56($sp)
    # Line 89
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    jal	perror
    addiu	$a0,$a0,-6600
    b	.L0d964268
    ld	$ra,88($sp)
.L0d964308:
    # Line 96
    sw	$a3,16384($zero)
    # Line 97
    ld	$a1,40($sp)
    slti	$a2,$s2,10
    # Line 96
    sw	$zero,16384($zero)
    # Line 97
    bnez	$a2,.L0d964248
    sw	$zero,0($a1)
    srl	$a5,$s2,0x1f
    li	$t0,0xcccc
    negu	$a7,$s2
    dsll	$t0,$t0,0x10
    movz	$a7,$s2,$a5
    ori	$t0,$t0,0xcccd
    multu	$a7,$t0
    mfhi	$a6
    sra	$a6,$a6,0x3
    negu	$a4,$a6
    movz	$a4,$a6,$a5
    ld	$a3,48($sp)
    andi	$a0,$a4,0x7
    addiu	$a1,$s1,36
    addu	$a3,$a3,$s1
    beqz	$a0,.L0d964374
    sra	$t1,$a4,0x3
.L0d964364:
    addiu	$a0,$a0,-1
    # Line 98
    addiu	$a1,$a1,40
    bnez	$a0,.L0d964364
    # Line 99
    sw	$zero,-40($a1)
.L0d964374:
    beqz	$t1,.L0d9643ac
    nop
    nop
.L0d964380:
    sw	$zero,280($a1)
    sw	$zero,240($a1)
    sw	$zero,200($a1)
    sw	$zero,160($a1)
    sw	$zero,120($a1)
    # Line 98
    addiu	$a1,$a1,320
    # Line 99
    sw	$zero,-240($a1)
    # Line 98
    sltu	$t2,$a1,$a3
    # Line 99
    sw	$zero,-280($a1)
    # Line 98
    bnez	$t2,.L0d964380
    # Line 99
    sw	$zero,-320($a1)
.L0d9643ac:
    b	.L0d96424c
    # Line 131
    ld	$gp,80($sp)
.L0d9643b4:
    # Line 98
    beqz	$s1,.L0d964248
    sd	$a4,40($sp)
    # Line 107
    sw	$s2,31628($s0)
    # Line 106
    sw	$s1,31616($s0)
    sw	$s1,31612($s0)
    sw	$s1,31608($s0)
    # Line 112
    sw	$a5,32($sp)
    # Line 111
    sw	$zero,28($sp)
    # Line 110
    sll	$t3,$s2,0x2
    sd	$t3,48($sp)
    # Line 114
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 110
    sw	$t3,20($sp)
    # Line 114
    addiu	$a2,$sp,16
    li	$a1,10002
    # Line 110
    sw	$t3,24($sp)
    # Line 114
    move	$a0,$s0
    bal __glKon_ioctl
    # Line 109
    sw	$s1,16($sp)
    # Line 123
    ld	$a1,40($sp)
    # Line 114
    beqz	$v0,.L0d96442c
    # Line 122
    li	$a3,440
    ld	$s0,56($sp)
    # Line 115
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    jal	perror
    addiu	$a0,$a0,-6600
    b	.L0d964268
    ld	$ra,88($sp)
.L0d96442c:
    # Line 123
    slti	$a2,$s2,10
    # Line 122
    sw	$a3,16384($zero)
    sw	$zero,16384($zero)
    # Line 123
    bnez	$a2,.L0d964248
    sw	$zero,0($a1)
    srl	$a5,$s2,0x1f
    li	$t0,0xcccc
    negu	$a7,$s2
    dsll	$t0,$t0,0x10
    movz	$a7,$s2,$a5
    ori	$t0,$t0,0xcccd
    multu	$a7,$t0
    mfhi	$a6
    sra	$a6,$a6,0x3
    negu	$a4,$a6
    movz	$a4,$a6,$a5
    ld	$a3,48($sp)
    andi	$a0,$a4,0x7
    addiu	$a1,$s1,36
    addu	$a3,$a3,$s1
    beqz	$a0,.L0d964494
    sra	$t1,$a4,0x3
.L0d964484:
    addiu	$a0,$a0,-1
    # Line 124
    addiu	$a1,$a1,40
    bnez	$a0,.L0d964484
    # Line 125
    sw	$zero,-40($a1)
.L0d964494:
    beqz	$t1,.L0d9644c8
    nop
.L0d96449c:
    sw	$zero,280($a1)
    sw	$zero,240($a1)
    sw	$zero,200($a1)
    sw	$zero,160($a1)
    sw	$zero,120($a1)
    # Line 124
    addiu	$a1,$a1,320
    # Line 125
    sw	$zero,-240($a1)
    # Line 124
    sltu	$t2,$a1,$a3
    # Line 125
    sw	$zero,-280($a1)
    # Line 124
    bnez	$t2,.L0d96449c
    # Line 125
    sw	$zero,-320($a1)
.L0d9644c8:
    b	.L0d96424c
    # Line 131
    ld	$gp,80($sp)
.L0d9644d0:
    # Line 25
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d964268
    ld	$ra,88($sp)
.L0d9644f0:
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    # Line 30
    jalr	$t9
    li	$a0,1281
    b	.L0d964268
    ld	$ra,88($sp)
.end __glkonim_InstrumentsBufferSGIX

# Function: __glkonim_PollInstrumentsSGIX
# Declared: Line 191 (Source lines: 191-235)
# Address: 0x0d964510 - 0x0d9645d0 (Size: 192 bytes, Frame: 16)
.globl __glkonim_PollInstrumentsSGIX
.ent __glkonim_PollInstrumentsSGIX
__glkonim_PollInstrumentsSGIX:
    # Line 193
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 191
    lui	$at,0x13
    # Line 193
    lw	$a3,4112($zero)
    # Line 191
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13624
    sd	$gp,0($sp)
    # Line 193
    beq	$v0,$v1,.L0d9645ac
    # Line 191
    addu	$gp,$t9,$at
    # Line 200
    lw	$v0,31588($a3)
    lw	$v0,16376($v0)
    beqz	$v0,.L0d964550
    # Line 204
    li	$v0,-1
    # Line 235
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d964550:
    # Line 204
    lw	$a4,31612($a3)
    lw	$a1,31620($a3)
    lw	$v1,36($a4)
    addiu	$a1,$a1,1
    # Line 235
    ld	$gp,0($sp)
    # Line 232
    li	$v0,1
    # Line 204
    bne	$v1,$a1,.L0d96459c
    # Line 228
    lw	$a6,32($a4)
    sw	$a6,0($a0)
    # Line 229
    lw	$a5,31620($a3)
    # Line 230
    lw	$a4,31612($a3)
    # Line 229
    addiu	$a5,$a5,1
    sw	$a5,31620($a3)
    # Line 230
    sw	$zero,36($a4)
    # Line 231
    lw	$a2,31612($a3)
    # Line 235
    addiu	$sp,$sp,16
    # Line 231
    addiu	$a2,$a2,40
    # Line 235
    jr	$ra
    # Line 231
    sw	$a2,31612($a3)
.L0d96459c:
    # Line 235
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9645ac:
    # Line 199
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 200
    move	$v0,$zero
    # Line 235
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PollInstrumentsSGIX

# Function: __glkonim_GetInstrumentsSGIX
# Declared: Line 242 (Source lines: 242-277)
# Address: 0x0d9645d0 - 0x0d9646c4 (Size: 244 bytes, Frame: 16)
.globl __glkonim_GetInstrumentsSGIX
.ent __glkonim_GetInstrumentsSGIX
__glkonim_GetInstrumentsSGIX:
    # Line 243
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 242
    lui	$at,0x13
    # Line 243
    lw	$a3,4112($zero)
    # Line 242
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13816
    sd	$gp,0($sp)
    # Line 243
    beq	$v0,$v1,.L0d9646a0
    # Line 242
    addu	$gp,$t9,$at
    # Line 253
    lw	$v0,31588($a3)
    lw	$v0,16376($v0)
    beqz	$v0,.L0d964610
    # Line 257
    li	$v0,-1
    # Line 277
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d964610:
    # Line 257
    lw	$a4,31612($a3)
    lw	$a1,31616($a3)
    sltu	$v1,$a1,$a4
    # Line 277
    ld	$gp,0($sp)
    # Line 261
    subu	$a5,$a4,$a1
    # Line 257
    beqz	$v1,.L0d964634
    # Line 261
    sra	$a5,$a5,0x2
    # Line 262
    b	.L0d964638
    sw	$a4,31616($a3)
.L0d964634:
    # Line 265
    move	$a5,$zero
.L0d964638:
    # Line 269
    move	$a2,$a4
    # Line 270
    lw	$a1,31620($a3)
    lw	$a6,36($a4)
    addiu	$a1,$a1,1
    bne	$a6,$a1,.L0d96468c
    # Line 274
    subu	$v0,$a2,$a4
.L0d964650:
    # Line 272
    lw	$a6,76($a2)
    addiu	$a1,$a1,1
    addiu	$a2,$a2,40
    bne	$a6,$a1,.L0d964688
    nop
    lw	$a7,76($a2)
    addiu	$a1,$a1,1
    addiu	$a2,$a2,40
    bne	$a7,$a1,.L0d964688
    nop
    lw	$t0,76($a2)
    addiu	$a1,$a1,1
    beq	$t0,$a1,.L0d964650
    addiu	$a2,$a2,40
.L0d964688:
    # Line 274
    subu	$v0,$a2,$a4
.L0d96468c:
    # Line 277
    addiu	$sp,$sp,16
    # Line 274
    sra	$v0,$v0,0x2
    # Line 275
    sw	$a2,31616($a3)
    # Line 277
    jr	$ra
    # Line 274
    addu	$v0,$a5,$v0
.L0d9646a0:
    # Line 252
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 253
    move	$v0,$zero
    # Line 277
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_GetInstrumentsSGIX

