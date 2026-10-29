# Source: ../KONA/kon_colortable.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_colortable.c
# Total Functions: 18

.text

# Function: __glKonInitColortableState
# Declared: Line 38 (Source lines: 42-50)
# Address: 0x0d981330 - 0x0d98135c (Size: 44 bytes, Frame: 0)
.globl __glKonInitColortableState
.ent __glKonInitColortableState
__glKonInitColortableState:
    # Line 42
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    # Line 48
    addiu	$a2,$a0,5912
    sw	$a2,-29824($v0)
    # Line 46
    addiu	$a1,$a0,5752
    sw	$a1,-29848($v0)
    # Line 44
    addiu	$v1,$a0,5592
    sw	$v1,-29872($v0)
    # Line 42
    addiu	$at,$a0,5432
    # Line 50
    jr	$ra
    # Line 42
    sw	$at,-29896($v0)
.end __glKonInitColortableState

# Function: EramAlloc
# Declared: Line 53 (Source lines: 54-96)
# Address: 0x0d981360 - 0x0d981414 (Size: 180 bytes, Frame: 32)
.ent EramAlloc
EramAlloc:
    # Line 54
    move	$a7,$a3
    addiu	$sp,$sp,-32
    move	$a1,$a4
    beq	$a2,$a3,.L0d981404
    sd	$ra,16($sp)
    sd	$a4,8($sp)
    # Line 73
    beqz	$a2,.L0d9813ac
    sd	$a0,0($sp)
    # Line 79
    # lw $t9, -32456($gp) # &__glkon_mem_free
    sd	$a3,24($sp)
    ld	$a1,0($sp)
    jal	__glkon_mem_free
    li	$a0,2
    beqz	$v0,.L0d9813ac
    ld	$a7,24($sp)
    ld	$ra,16($sp)
    # Line 83
    li	$v0,1
    # Line 96
    jr	$ra
    addiu	$sp,$sp,32
.L0d9813ac:
    # Line 83
    beqz	$a7,.L0d9813f8
    ld	$ra,16($sp)
    # Line 88
    # lw $t9, -32464($gp) # &__glkon_mem_alloc
    sll	$a3,$a7,0x2
    move	$a2,$zero
    ld	$a4,8($sp)
    ld	$a1,0($sp)
    li	$a0,2
    jal	__glkon_mem_alloc
    sll	$a4,$a4,0x2
    beqz	$v0,.L0d9813f4
    # Line 90
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$ra,16($sp)
    # Line 91
    li	$v0,1
    # Line 96
    jr	$ra
    addiu	$sp,$sp,32
.L0d9813f4:
    ld	$ra,16($sp)
.L0d9813f8:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0d981404:
    move	$ra,$ra
    # Line 73
    move	$v0,$zero
    # Line 96
    jr	$ra
    addiu	$sp,$sp,32
.end EramAlloc

# Function: __glkonim_ColorTableSGI
# Declared: Line 100 (Source lines: 106-332)
# Address: 0x0d981420 - 0x0d981cb8 (Size: 2200 bytes, Frame: 208)
.globl __glkonim_ColorTableSGI
.ent __glkonim_ColorTableSGI
__glkonim_ColorTableSGI:
    # Line 115
    lw	$a7,4112($zero)
    # Line 106
    addiu	$sp,$sp,-336
    sd	$s1,256($sp)
    move	$s1,$a2
    # Line 115
    lw	$at,4120($zero)
    # Line 106
    sd	$s0,248($sp)
    # Line 115
    li	$t1,1
    # Line 106
    lui	$v0,0x11
    move	$s0,$a1
    sd	$ra,272($sp)
    addiu	$v0,$v0,-1096
    sd	$gp,264($sp)
    # Line 115
    beq	$at,$t1,.L0d981840
    # Line 106
    addu	$gp,$t9,$v0
    # Line 121
    sltiu	$v1,$a3,6403
    bnez	$v1,.L0d981468
    sltiu	$a1,$a3,6411
    bnez	$a1,.L0d981498
.L0d981468:
    li	$a2,0x8000
    beq	$a3,$a2,.L0d98149c
    # Line 128
    sltiu	$a6,$a4,5120
    # Line 123
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d981480:
    ld	$ra,272($sp)
.L0d981484:
    ld	$s0,248($sp)
    ld	$s1,256($sp)
    # Line 216
    ld	$gp,264($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d981498:
    # Line 128
    sltiu	$a6,$a4,5120
.L0d98149c:
    beqz	$a6,.L0d9814d0
    # Line 136
    sltiu	$t8,$s0,6406
    # Line 128
    sltiu	$t0,$a4,5127
    bnez	$t0,.L0d9814d0
    # Line 136
    sltiu	$t8,$s0,6406
    # Line 128
    li	$t2,0x8032
    sltu	$t2,$a4,$t2
    beqz	$t2,.L0d9814cc
    li	$t3,0x8036
    sltu	$t3,$t3,$a4
    bnez	$t3,.L0d9819a8
    # Line 131
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9814cc:
    # Line 136
    sltiu	$t8,$s0,6406
.L0d9814d0:
    bnez	$t8,.L0d9814e8
    li	$ra,0x803b
    sltiu	$t9,$s0,6411
    bnez	$t9,.L0d981508
    # Line 143
    li	$v0,0x8032
    # Line 136
    li	$ra,0x803b
.L0d9814e8:
    sltu	$ra,$s0,$ra
    bnez	$ra,.L0d9815bc
    # Line 138
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 136
    li	$at,0x805b
    sltu	$at,$at,$s0
    bnez	$at,.L0d9815bc
    # Line 138
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 143
    li	$v0,0x8032
.L0d981508:
    beq	$a4,$v0,.L0d98159c
.L0d98150c:
    li	$v1,0x8033
    sltu	$v1,$a4,$v1
    bnez	$v1,.L0d981538
    li	$a1,0x8036
    sltu	$a1,$a1,$a4
    bnez	$a1,.L0d981538
    li	$a2,6408
    beq	$a3,$a2,.L0d981538
    li	$a6,0x8000
    bne	$a3,$a6,.L0d9815a8
    # Line 147
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d981538:
    # Line 152
    bltz	$s1,.L0d98155c
    # Line 153
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 152
    beqz	$s1,.L0d981570
    # Line 154
    lui	$a2,0xffff
    # Line 152
    addiu	$t0,$s1,-1
    and	$t0,$s1,$t0
    beqz	$t0,.L0d981570
    # Line 154
    lui	$a2,0xffff
    # Line 153
    # lw $t9, -28616($gp) # &__glSetError
.L0d98155c:
    jal	__glSetError
    li	$a0,1281
    b	.L0d981484
    ld	$ra,272($sp)
    # Line 154
    lui	$a2,0xffff
.L0d981570:
    ori	$a2,$a2,0x7f44
    la	$a1,.rodata
    addu	$a2,$a0,$a2
    sltiu	$a6,$a2,26
    addiu	$a1,$a1,1216
    sll	$a2,$a2,0x2
    beqz	$a6,.L0d9815cc
    addu	$a1,$a1,$a2
    lw	$a6,0($a1)
    jr	$a6
    # Line 171
    lui	$a6,0x1
.L0d98159c:
    # Line 143
    li	$t0,6407
    beq	$a3,$t0,.L0d98150c
    # Line 147
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9815a8:
    jal	__glSetError
    li	$a0,1282
    b	.L0d981484
    ld	$ra,272($sp)
    # Line 138
    # lw $t9, -28616($gp) # &__glSetError
.L0d9815bc:
    jal	__glSetError
    li	$a0,1280
    b	.L0d981484
    ld	$ra,272($sp)
.L0d9815cc:
    # Line 215
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d981484
    ld	$ra,272($sp)
.L0d9815e0:
    # Line 159
    lui	$t2,0x1
    slt	$t2,$t2,$s1
    addiu	$t3,$a7,5512
    beqz	$t2,.L0d9818c0
    sd	$t3,232($sp)
    li	$t3,1
    sd	$t3,240($sp)
    b	.L0d981624
    sd	$zero,224($sp)
.L0d981604:
    # Line 165
    lui	$t8,0x1
    slt	$t8,$t8,$s1
    addiu	$t9,$a7,5672
    beqz	$t8,.L0d9818e8
    sd	$t9,232($sp)
    li	$t9,1
    sd	$t9,240($sp)
    sd	$zero,224($sp)
.L0d981624:
    # Line 224
    move	$s1,$zero
    sd	$a0,216($sp)
.L0d98162c:
    # Line 264
    sw	$t1,32($sp)
    # Line 263
    sw	$a5,28($sp)
    # Line 262
    sw	$a4,24($sp)
    # Line 265
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 261
    sw	$a3,20($sp)
    # Line 260
    sw	$t1,12($sp)
    # Line 265
    addiu	$a0,$sp,8
    jal	__glKonParseInput
    # Line 259
    sw	$s1,8($sp)
    # Line 265
    bnez	$v0,.L0d981480
    ld	$ra,240($sp)
    beqz	$ra,.L0d9819b8
    li	$a4,232
    # Line 269
    lwc1	$f1,_lit_bf800000
    # Line 216
    ld	$gp,264($sp)
    # Line 269
    sw	$a4,16384($zero)
    lw	$at,192($sp)
    lw	$v0,188($sp)
    lw	$a0,156($sp)
    lw	$a1,152($sp)
    ld	$a2,216($sp)
    mtc1	$s1,$f0
    sw	$a2,16384($zero)
    sw	$s0,16384($zero)
    # Line 216
    ld	$s0,248($sp)
    # Line 269
    cvt.s.w	$f0,$f0
    sw	$s1,16384($zero)
    # Line 216
    ld	$s1,256($sp)
    # Line 269
    lw	$v1,28($sp)
    ld	$ra,272($sp)
    add.s	$f0,$f0,$f1
    swc1	$f0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    andi	$v1,$v1,0x3
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    # Line 216
    addiu	$sp,$sp,336
    jr	$ra
    # Line 269
    sw	$at,16384($zero)
.L0d9816cc:
    # Line 171
    slt	$a6,$a6,$s1
    addiu	$t0,$a7,5832
    beqz	$a6,.L0d9818d4
    sd	$t0,232($sp)
    li	$a7,1
    sd	$a7,240($sp)
    b	.L0d981624
    sd	$zero,224($sp)
.L0d9816ec:
    # Line 199
    li	$t8,0x8b60
    addu	$t8,$a7,$t8
    # Line 200
    lui	$t3,0x1
    # Line 199
    sd	$t8,224($sp)
    # Line 201
    slt	$t2,$t3,$s1
    # Line 200
    addu	$t3,$t3,$a7
    lw	$t3,-29848($t3)
    # Line 201
    li	$t0,6
    beqz	$t2,.L0d981940
    sd	$t3,232($sp)
.L0d981714:
    # Line 222
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,0x8031
    b	.L0d981484
    ld	$ra,272($sp)
.L0d981728:
    # Line 191
    li	$ra,0x8b48
    addu	$ra,$a7,$ra
    # Line 192
    lui	$t9,0x1
    # Line 191
    sd	$ra,224($sp)
    # Line 193
    slt	$t8,$t9,$s1
    # Line 192
    addu	$t9,$t9,$a7
    # lw $t9, -29872($gp) # &__glSpanSlowSkipPixels4
    # Line 193
    li	$t0,5
    bnez	$t8,.L0d981714
    sd	$t9,232($sp)
    # Line 231
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981760:
    # Line 183
    li	$v0,0x8b30
    addu	$v0,$a7,$v0
    # Line 184
    lui	$at,0x1
    # Line 183
    sd	$v0,224($sp)
    # Line 185
    slt	$ra,$at,$s1
    # Line 184
    addu	$at,$at,$a7
    lw	$at,-29896($at)
    # Line 185
    li	$t0,4
    bnez	$ra,.L0d981714
    sd	$at,232($sp)
    # Line 231
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981798:
    # Line 177
    slti	$v0,$s1,4097
    addiu	$v1,$a7,5992
    bnez	$v0,.L0d981854
    sd	$v1,232($sp)
    li	$a1,1
    sd	$a1,240($sp)
    sd	$zero,224($sp)
    # Line 231
    move	$s1,$zero
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d9817c0:
    # Line 209
    li	$t0,7
    slti	$a6,$s1,4097
    # Line 208
    li	$a2,0x8b80
    # Line 207
    li	$a1,0x8b78
    # Line 208
    addu	$a2,$a2,$a7
    # Line 207
    addu	$a1,$a7,$a1
    # Line 209
    beqz	$a6,.L0d981aec
    # Line 208
    lw	$a2,0($a2)
    # Line 209
    slti	$a6,$s1,2049
    bnez	$a6,.L0d9818fc
    # Line 234
    slti	$t8,$s1,1025
    li	$a7,0x8049
    sltu	$a7,$s0,$a7
    bnez	$a7,.L0d98180c
    li	$t3,0x803f
    li	$t2,0x804d
    sltu	$t2,$t2,$s0
    beqz	$t2,.L0d981ad4
    li	$t3,0x803f
.L0d98180c:
    sltu	$t3,$s0,$t3
    bnez	$t3,.L0d981828
    li	$t9,6409
    li	$t8,0x8042
    sltu	$t8,$t8,$s0
    beqz	$t8,.L0d981b18
    li	$t9,6409
.L0d981828:
    beq	$s0,$t9,.L0d981b00
    # Line 240
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,0x8031
    b	.L0d981484
    ld	$ra,272($sp)
.L0d981840:
    # Line 115
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d981484
    ld	$ra,272($sp)
.L0d981854:
    # Line 177
    slti	$ra,$s1,2049
    bnez	$ra,.L0d981950
    # Line 234
    slti	$v1,$s1,1025
    li	$at,0x8049
    sltu	$at,$s0,$at
    bnez	$at,.L0d981884
    li	$v1,0x803f
    li	$v0,0x804d
    sltu	$v0,$v0,$s0
    beqz	$v0,.L0d981c10
    # Line 250
    li	$a6,1
    # Line 234
    li	$v1,0x803f
.L0d981884:
    sltu	$v1,$s0,$v1
    bnez	$v1,.L0d9818a4
    li	$a7,1
    li	$a1,0x8042
    sltu	$a1,$a1,$s0
    beqz	$a1,.L0d981c34
    # Line 250
    li	$t0,1
    # Line 234
    li	$a7,1
.L0d9818a4:
    sd	$a7,240($sp)
    sd	$zero,224($sp)
    li	$a2,6409
    sd	$a0,216($sp)
    xor	$a2,$s0,$a2
    # Line 250
    b	.L0d98162c
    movn	$s1,$zero,$a2
.L0d9818c0:
    # Line 231
    li	$t0,1
    sd	$t0,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d9818d4:
    li	$t2,1
    sd	$t2,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d9818e8:
    li	$t3,1
    sd	$t3,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d9818fc:
    # Line 234
    bnez	$t8,.L0d981a94
    # Line 246
    li	$t9,6409
    beq	$s0,$t9,.L0d981c44
    li	$ra,6410
    beq	$s0,$ra,.L0d981c70
    li	$at,0x803f
    sltu	$at,$s0,$at
    bnez	$at,.L0d981930
    # Line 251
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 246
    li	$v0,0x804d
    sltu	$v0,$v0,$s0
    beqz	$v0,.L0d981bf8
    # Line 251
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d981930:
    jal	__glSetError
    li	$a0,0x8031
    b	.L0d981484
    ld	$ra,272($sp)
.L0d981940:
    # Line 231
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981950:
    # Line 234
    bnez	$v1,.L0d981aac
    # Line 246
    li	$t2,1
    li	$a1,6409
    beq	$s0,$a1,.L0d981c98
    li	$t8,1
    li	$a2,6410
    beq	$s0,$a2,.L0d981ca8
    li	$t9,1
    li	$a6,0x803f
    sltu	$a6,$s0,$a6
    bnez	$a6,.L0d981994
    li	$t0,1
    li	$a7,0x804d
    sltu	$a7,$a7,$s0
    beqz	$a7,.L0d981c88
    li	$t3,1
    li	$t0,1
.L0d981994:
    sd	$t0,240($sp)
    sd	$zero,224($sp)
    move	$s1,$zero
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d9819a8:
    # Line 131
    jalr	$t9
    li	$a0,1280
    b	.L0d981484
    ld	$ra,272($sp)
.L0d9819b8:
    # Line 278
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    jal	__glKonParseHostImage
    addiu	$a0,$sp,8
    # Line 280
    slti	$t1,$s1,4097
    bnez	$t1,.L0d981abc
    sw	$zero,188($sp)
    # Line 283
    move	$a1,$s1
    # Line 284
    li	$a4,256
.L0d9819d8:
    # Line 298
    li	$t2,0x8049
    sltu	$t2,$s0,$t2
    bnez	$t2,.L0d9819f4
    li	$t3,0x804d
    sltu	$t3,$t3,$s0
    beqz	$t3,.L0d9819fc
    nop
.L0d9819f4:
    # Line 300
    addu	$a1,$a1,$a1
    sd	$a1,208($sp)
.L0d9819fc:
    sd	$a1,208($sp)
    # Line 303
    lw	$a1,204($sp)
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a2,224($sp)
    lw	$a0,0($sp)
    addiu	$t9,$t9,4960
    lw	$a2,0($a2)
    bal __glKonInitColortableState
    ld	$a3,208($sp)
    beqz	$v0,.L0d981b30
    li	$a1,232
    # Line 216
    ld	$gp,264($sp)
    ld	$s1,256($sp)
    # Line 306
    sw	$a1,16384($zero)
    ld	$a7,216($sp)
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    # Line 216
    ld	$s0,248($sp)
    # Line 306
    mtc1	$zero,$f1
    sw	$zero,16384($zero)
    swc1	$f1,16384($zero)
    ld	$ra,272($sp)
    # Line 304
    ld	$t1,224($sp)
    # Line 305
    ld	$t0,232($sp)
    # Line 304
    sw	$zero,0($t1)
    # Line 305
    sw	$zero,12($t0)
    # Line 306
    lw	$a3,192($sp)
    lw	$a5,156($sp)
    lw	$a6,152($sp)
    sw	$a6,16384($zero)
    lw	$a4,28($sp)
    sw	$a5,16384($zero)
    andi	$a4,$a4,0x3
    sw	$a4,16384($zero)
    sw	$zero,16384($zero)
    # Line 216
    addiu	$sp,$sp,336
    jr	$ra
    # Line 306
    sw	$a3,16384($zero)
.L0d981a94:
    # Line 246
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981aac:
    sd	$t2,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981abc:
    # Line 284
    slti	$t3,$s1,1025
    bnez	$t3,.L0d981c20
    # Line 287
    slti	$a7,$s1,257
    li	$a1,4096
    b	.L0d9819d8
    li	$a4,4096
.L0d981ad4:
    # Line 250
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981aec:
    # Line 229
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,0x8031
    b	.L0d981484
    ld	$ra,272($sp)
.L0d981b00:
    # Line 250
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981b18:
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981b30:
    # Line 317
    li	$a7,273
    sw	$a7,16384($zero)
    li	$a5,8
    sw	$a5,16384($zero)
    lui	$a0,0x4000
    sw	$a0,16384($zero)
    # Line 319
    sw	$a1,16384($zero)
    ld	$v1,216($sp)
    sw	$v1,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    # Line 314
    ld	$a3,208($sp)
    ld	$a4,224($sp)
    # Line 315
    ld	$a2,232($sp)
    # Line 314
    sw	$a3,0($a4)
    # Line 319
    mtc1	$s1,$f2
    # Line 315
    sw	$s1,12($a2)
    # Line 319
    lw	$t8,192($sp)
    lw	$t9,188($sp)
    cvt.s.w	$f2,$f2
    lwc1	$f3,_lit_bf800000
    lw	$at,156($sp)
    lw	$v0,152($sp)
    lw	$ra,28($sp)
    add.s	$f2,$f2,$f3
    swc1	$f2,16384($zero)
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    andi	$ra,$ra,0x3
    sw	$ra,16384($zero)
    sw	$t9,16384($zero)
    beqz	$s1,.L0d981bd4
    sw	$t8,16384($zero)
    # Line 329
    # lw $t9, -32300($gp) # &__glKonSendData
    move	$a3,$zero
    lw	$a2,12($sp)
    lw	$a1,8($sp)
    jal	__glKonSendData
    addiu	$a0,$sp,8
    li	$a5,8
    li	$a7,273
.L0d981bd4:
    # Line 332
    sw	$a7,16384($zero)
    sw	$a5,16384($zero)
    sw	$zero,16384($zero)
    ld	$ra,272($sp)
    # Line 216
    ld	$gp,264($sp)
    ld	$s0,248($sp)
    ld	$s1,256($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d981bf8:
    # Line 246
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981c10:
    # Line 250
    sd	$a6,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981c20:
    # Line 287
    bnez	$a7,.L0d981c5c
    # Line 293
    li	$a1,256
    # Line 290
    li	$a1,1024
    b	.L0d9819d8
    li	$a4,1024
.L0d981c34:
    # Line 250
    sd	$t0,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981c44:
    # Line 246
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981c5c:
    movz	$a1,$zero,$s1
    # Line 294
    lw	$t2,200($sp)
    # Line 293
    li	$a4,256
    b	.L0d9819d8
    movz	$a4,$t2,$s1
.L0d981c70:
    # Line 246
    sw	$t0,0($sp)
    sd	$zero,240($sp)
    sd	$a2,232($sp)
    sd	$a1,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981c88:
    sd	$t3,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981c98:
    sd	$t8,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.L0d981ca8:
    sd	$t9,240($sp)
    sd	$zero,224($sp)
    b	.L0d98162c
    sd	$a0,216($sp)
.end __glkonim_ColorTableSGI

# Function: __glkonle_ColorTableSGI
# Declared: Line 337 (Source lines: 343-349)
# Address: 0x0d981cc0 - 0x0d981d40 (Size: 128 bytes, Frame: 160)
.globl __glkonle_ColorTableSGI
.ent __glkonle_ColorTableSGI
__glkonle_ColorTableSGI:
    # Line 343
    addiu	$sp,$sp,-160
    sd	$a6,120($sp)
    sd	$a5,128($sp)
    sd	$a4,136($sp)
    lui	$at,0x11
    sd	$a3,144($sp)
    addiu	$at,$at,-3304
    sd	$gp,112($sp)
    addu	$gp,$t9,$at
    # Line 345
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 343
    sd	$a2,152($sp)
    # Line 345
    addiu	$a0,$sp,0
    # Line 343
    sd	$s8,104($sp)
    sd	$ra,96($sp)
    # Line 345
    jal	__glKonSetPixelLEModes
    # Line 343
    move	$s8,$a1
    # Line 346
    ld	$a1,152($sp)
    ld	$a2,144($sp)
    # lw $t9, -31320($gp) # &__glkonim_ColorTableSGI
    ld	$a3,136($sp)
    ld	$a4,128($sp)
    move	$a0,$s8
    bal __glkonim_ColorTableSGI
    ld	$a5,120($sp)
    # Line 348
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    ld	$s8,104($sp)
    jal	__glKonUnsetLEModes
    addiu	$a0,$sp,0
    ld	$ra,96($sp)
    # Line 349
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glkonle_ColorTableSGI

# Function: PixelMapHostReadback
# Declared: Line 352 (Source lines: 354-359)
# Address: 0x0d981d40 - 0x0d981df0 (Size: 176 bytes, Frame: 48)
.ent PixelMapHostReadback
PixelMapHostReadback:
    # Line 354
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    sd	$s3,0($sp)
    move	$s3,$a0
    sd	$s2,8($sp)
    move	$s2,$a2
    move	$s0,$a3
    sd	$s1,24($sp)
    move	$s1,$a4
    bnez	$a1,.L0d981da0
    sd	$ra,32($sp)
.L0d981d6c:
    # Line 355
    bnez	$s2,.L0d981db4
    # Line 356
    nop	# was lw $t9, -31284($gp) # &__glkonim_GetPixelMapusv
.L0d981d74:
    bnez	$s0,.L0d981dc8
    # Line 357
    nop	# was lw $t9, -31284($gp) # &__glkonim_GetPixelMapusv
.L0d981d7c:
    bnez	$s1,.L0d981ddc
    # Line 358
    nop	# was lw $t9, -31284($gp) # &__glkonim_GetPixelMapusv
    ld	$s3,0($sp)
.L0d981d88:
    ld	$ra,32($sp)
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 359
    jr	$ra
    addiu	$sp,$sp,48
.L0d981da0:
    # Line 355
    # lw $t9, -31284($gp) # &__glkonim_GetPixelMapusv
    bal __glkonim_GetPixelMapusv
    nop
    b	.L0d981d6c
    nop
.L0d981db4:
    # Line 356
    move	$a1,$s2
    bal __glkonim_GetPixelMapusv
    addiu	$a0,$s3,1
    b	.L0d981d74
    nop
.L0d981dc8:
    # Line 357
    move	$a1,$s0
    bal __glkonim_GetPixelMapusv
    addiu	$a0,$s3,2
    b	.L0d981d7c
    nop
.L0d981ddc:
    # Line 358
    move	$a1,$s1
    bal __glkonim_GetPixelMapusv
    addiu	$a0,$s3,3
    b	.L0d981d88
    ld	$s3,0($sp)
.end PixelMapHostReadback

# Function: PixelMapHostDownload
# Declared: Line 368 (Source lines: 371-384)
# Address: 0x0d981df0 - 0x0d981eb8 (Size: 200 bytes, Frame: 48)
.ent PixelMapHostDownload
PixelMapHostDownload:
    # Line 371
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$s4,16($sp)
    sd	$s3,8($sp)
    move	$s3,$a0
    move	$s4,$a1
    sd	$s2,0($sp)
    move	$s2,$a3
    move	$s0,$a4
    sd	$s1,32($sp)
    move	$s1,$a5
    bnez	$a2,.L0d981e58
    sd	$ra,40($sp)
.L0d981e24:
    # Line 373
    bnez	$s2,.L0d981e6c
    # Line 376
    nop	# was lw $t9, -31304($gp) # &__glkonim_PixelMapusv
.L0d981e2c:
    bnez	$s0,.L0d981e84
    # Line 379
    nop	# was lw $t9, -31304($gp) # &__glkonim_PixelMapusv
.L0d981e34:
    bnez	$s1,.L0d981e9c
    ld	$s2,0($sp)
.L0d981e3c:
    ld	$s3,8($sp)
    ld	$ra,40($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 384
    jr	$ra
    addiu	$sp,$sp,48
.L0d981e58:
    # Line 373
    # lw $t9, -31304($gp) # &__glkonim_PixelMapusv
    bal __glkonim_PixelMapusv
    lw	$a1,8($a1)
    b	.L0d981e24
    nop
.L0d981e6c:
    # Line 376
    move	$a2,$s2
    lw	$a1,12($s4)
    bal __glkonim_PixelMapusv
    addiu	$a0,$s3,1
    b	.L0d981e2c
    nop
.L0d981e84:
    # Line 379
    move	$a2,$s0
    lw	$a1,16($s4)
    bal __glkonim_PixelMapusv
    addiu	$a0,$s3,2
    b	.L0d981e34
    nop
.L0d981e9c:
    # Line 382
    # lw $t9, -31304($gp) # &__glkonim_PixelMapusv
    move	$a2,$s1
    lw	$a1,20($s4)
    bal __glkonim_PixelMapusv
    addiu	$a0,$s3,3
    b	.L0d981e3c
    ld	$s2,0($sp)
.end PixelMapHostDownload

# Function: do_pixelmap
# Declared: Line 387 (Source lines: 388-566)
# Address: 0x0d981ec0 - 0x0d982644 (Size: 1924 bytes, Frame: 0)
.ent do_pixelmap
do_pixelmap:
    # Line 388
    addiu	$sp,$sp,-176
    move	$v0,$s8
    addiu	$s8,$sp,176
    sd	$v0,-136($s8)
    # Line 398
    sw	$zero,-44($s8)
    # Line 401
    lw	$a4,4112($zero)
    sd	$ra,-144($s8)
    lw	$at,4120($zero)
    li	$a7,1
    # Line 388
    sd	$s0,-128($s8)
    move	$a5,$a2
    move	$s0,$a0
    sd	$s1,-120($s8)
    move	$s1,$a1
    # Line 401
    beq	$at,$a7,.L0d9825f0
    sd	$s2,-64($s8)
    # Line 403
    beqz	$a1,.L0d9820e4
    # Line 419
    li	$t0,3184
    # Line 412
    blez	$a1,.L0d98245c
    slti	$v1,$a1,4097
    beqz	$v1,.L0d98245c
    # Line 419
    li	$t0,3184
    beq	$t0,$a0,.L0d981fac
    li	$a0,3185
    beq	$s0,$a0,.L0d981fac
    li	$a1,3186
    beq	$s0,$a1,.L0d981fac
    li	$a2,3187
    beq	$s0,$a2,.L0d981fac
    li	$a6,3188
    beq	$s0,$a6,.L0d981fb0
    addiu	$at,$s1,-1
    li	$a7,3189
    beq	$s0,$a7,.L0d981fb0
    addiu	$at,$s1,-1
.L0d981f4c:
    # Line 422
    beq	$t0,$s0,.L0d982140
.L0d981f50:
    # Line 430
    li	$t1,3185
    beq	$s0,$t1,.L0d982470
    # Line 439
    sltiu	$t2,$s0,3186
    bnez	$t2,.L0d981fcc
    sltiu	$t3,$s0,3190
    beqz	$t3,.L0d981fd0
    # Line 444
    sltiu	$v0,$s0,3190
    # Line 456
    li	$a7,1
    # Line 440
    li	$a2,3186
    # Line 441
    li	$s2,0x8b00
    move	$a0,$a2
    # Line 456
    beq	$a2,$s0,.L0d982604
    # Line 441
    addu	$s2,$a4,$s2
    # Line 456
    li	$t8,3187
    beq	$s0,$t8,.L0d98262c
    li	$t9,3188
    beq	$s0,$t9,.L0d982638
    li	$ra,3189
    move	$a0,$a2
    bne	$s0,$ra,.L0d9820c4
    # Line 468
    li	$a7,1
    b	.L0d982024
    # Line 470
    lw	$a4,16($s2)
.L0d981fac:
    # Line 419
    addiu	$at,$s1,-1
.L0d981fb0:
    and	$at,$s1,$at
    beqz	$at,.L0d981f4c
    # Line 423
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9820c8
    ld	$s1,-120($s8)
.L0d981fcc:
    # Line 444
    sltiu	$v0,$s0,3190
.L0d981fd0:
    bnez	$v0,.L0d982498
    # Line 450
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 444
    sltiu	$v1,$s0,3194
    beqz	$v1,.L0d982498
    # Line 450
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 445
    li	$a1,3190
    # Line 446
    li	$s2,0x8b18
    # Line 456
    beq	$a1,$s0,.L0d9824a8
    # Line 446
    addu	$s2,$a4,$s2
    # Line 456
    li	$t8,3191
    beq	$s0,$t8,.L0d9824b8
    # Line 460
    li	$a2,3186
    # Line 456
    li	$t9,3192
    beq	$s0,$t9,.L0d982508
    # Line 464
    li	$a2,3186
    # Line 456
    li	$ra,3193
    bne	$s0,$ra,.L0d9820c4
    # Line 468
    li	$a2,3186
    move	$a0,$a1
    li	$a7,2
    # Line 470
    lw	$a4,16($s2)
.L0d982024:
    lw	$t2,12($s2)
    slt	$t3,$s1,$a4
    move	$a1,$a4
    lw	$t9,8($s2)
    movz	$a1,$s1,$t3
    slt	$t8,$t2,$t9
    move	$t1,$t9
    movz	$t1,$t2,$t8
    slt	$at,$a1,$t1
    beqz	$at,.L0d982488
    nop
    move	$a1,$t1
    b	.L0d98248c
    sd	$s3,-152($s8)
.L0d98205c:
    # Line 503
    sd	$zero,-112($s8)
    sd	$zero,-80($s8)
    sd	$zero,-96($s8)
    sd	$zero,-104($s8)
    sw	$a5,-12($s8)
    sw	$a3,-4($s8)
    sd	$a1,-72($s8)
    sd	$a0,-88($s8)
.L0d98207c:
    # Line 532
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,4960
    ld	$a3,-72($s8)
    move	$a0,$a7
    bal __glKonInitColortableState
    lw	$a1,-52($s8)
    beqz	$v0,.L0d9822d8
    # Line 538
    ld	$at,-88($s8)
    ld	$s3,-152($s8)
    # Line 451
    ld	$s0,-128($s8)
    ld	$s1,-120($s8)
    # Line 534
    sw	$zero,0($s2)
    ld	$ra,-144($s8)
    # Line 451
    ld	$at,-136($s8)
    ld	$s2,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d9820c4:
    ld	$s1,-120($s8)
.L0d9820c8:
    ld	$s2,-64($s8)
    ld	$ra,-144($s8)
    ld	$v0,-136($s8)
    ld	$s0,-128($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L0d9820e4:
    # Line 419
    beq	$t0,$a0,.L0d982134
    li	$s1,1
    li	$v1,3185
    beq	$a0,$v1,.L0d982134
    li	$s1,1
    li	$a0,3186
    beq	$s0,$a0,.L0d982134
    li	$s1,1
    li	$a1,3187
    beq	$s0,$a1,.L0d982130
    li	$a2,3188
    beq	$s0,$a2,.L0d982130
    li	$a3,3189
    beq	$s0,$a3,.L0d982134
    li	$s1,1
    # Line 424
    addiu	$a5,$s8,-44
    li	$a3,5124
    b	.L0d981f4c
    move	$s1,$a7
.L0d982130:
    # Line 419
    li	$s1,1
.L0d982134:
    addiu	$a5,$s8,-44
    # Line 422
    bne	$t0,$s0,.L0d981f50
    # Line 419
    li	$a3,5124
.L0d982140:
    # Line 430
    li	$a2,3186
    li	$a0,3184
    # Line 431
    li	$s2,0x8ad0
    # Line 430
    move	$a7,$zero
    # Line 431
    addu	$s2,$a4,$s2
.L0d982154:
    # Line 458
    lw	$t3,20($s2)
.L0d982158:
    lw	$a4,16($s2)
    slt	$t8,$t3,$a4
    move	$a1,$a4
    lw	$t2,12($s2)
    movz	$a1,$t3,$t8
    slt	$t9,$t2,$s1
    move	$t1,$s1
    movz	$t1,$t2,$t9
    slt	$ra,$a1,$t1
    beqz	$ra,.L0d982190
    nop
    move	$a1,$t1
    b	.L0d982194
    sd	$s3,-152($s8)
.L0d982190:
    sd	$s3,-152($s8)
.L0d982194:
    move	$s3,$a1
.L0d982198:
    # Line 476
    slti	$at,$s3,1025
    bnez	$at,.L0d9822c4
    # Line 485
    slti	$ra,$s3,257
    li	$s3,4096
    li	$a4,4096
.L0d9821ac:
    # Line 495
    beq	$a2,$a0,.L0d982390
    li	$v0,3190
    beq	$a0,$v0,.L0d982390
    # Line 498
    move	$a1,$s3
.L0d9821bc:
    # Line 501
    lw	$a2,0($s2)
    beqz	$a2,.L0d98205c
    nop
    beqz	$a1,.L0d98205c
    nop
    beq	$a2,$a1,.L0d98205c
    nop
    beq	$t0,$s0,.L0d98205c
    li	$v1,3185
    beq	$s0,$v1,.L0d98205c
    # Line 503
    subu	$t0,$s0,$a0
    sd	$a4,-168($s8)
    beqz	$t0,.L0d982558
    sd	$a1,-72($s8)
    # Line 510
    lw	$a4,8($s2)
    # Line 512
    li	$a1,1
    # Line 510
    addu	$a4,$a4,$a4
    li	$a6,-16
    addiu	$a4,$a4,15
    and	$a4,$a4,$a6
    subu	$sp,$sp,$a4
    # Line 512
    beq	$a1,$t0,.L0d982564
    # Line 510
    sd	$sp,-112($s8)
.L0d982218:
    # Line 515
    lw	$t1,12($s2)
    addu	$t1,$t1,$t1
    li	$t2,-16
    addiu	$t1,$t1,15
    and	$t1,$t1,$t2
    subu	$sp,$sp,$t1
    sd	$sp,-80($s8)
.L0d982234:
    # Line 517
    li	$t2,2
    beq	$t0,$t2,.L0d98260c
    nop
    # Line 520
    lw	$t8,16($s2)
    addu	$t8,$t8,$t8
    li	$t9,-16
    addiu	$t8,$t8,15
    and	$t8,$t8,$t9
    subu	$sp,$sp,$t8
    sd	$sp,-96($s8)
.L0d98225c:
    # Line 522
    li	$t9,3
    beq	$t0,$t9,.L0d982614
    nop
    # Line 525
    lw	$at,20($s2)
    sd	$a7,-160($s8)
    sw	$a5,-12($s8)
    addu	$at,$at,$at
    sw	$a3,-4($s8)
    li	$v0,-16
    addiu	$at,$at,15
    sd	$a0,-88($s8)
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    sd	$sp,-104($s8)
.L0d982294:
    # Line 529
    ld	$a0,-88($s8)
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a1,-112($s8)
    ld	$a2,-80($s8)
    addiu	$t9,$t9,7488
    ld	$a3,-96($s8)
    bal __glkonle_ColorTableSGI
    ld	$a4,-104($s8)
    ld	$a4,-168($s8)
    ld	$a7,-160($s8)
    b	.L0d98207c
    lw	$a2,0($s2)
.L0d9822c4:
    # Line 485
    bnez	$ra,.L0d982448
    # Line 491
    lw	$at,-48($s8)
    # Line 488
    li	$s3,1024
    b	.L0d9821ac
    li	$a4,1024
.L0d9822d8:
    # Line 537
    lw	$v0,-4($s8)
    # Line 538
    subu	$at,$s0,$at
    # Line 537
    ld	$a0,-72($s8)
    # Line 540
    li	$v1,5123
    # Line 538
    sll	$at,$at,0x2
    # Line 537
    sw	$a0,0($s2)
    # Line 538
    addu	$at,$s2,$at
    # Line 540
    beq	$v0,$v1,.L0d982398
    # Line 538
    sw	$s1,8($at)
    # Line 540
    lw	$v0,-4($s8)
    li	$v1,5125
    beq	$v0,$v1,.L0d98256c
    # Line 550
    addiu	$t3,$s1,-1
    # Line 540
    li	$a1,5126
    bne	$v0,$a1,.L0d982418
    # Line 557
    addiu	$t3,$s1,-1
    mtc1	$t3,$f0
    lw	$t1,-12($s8)
    li	$t2,52
    sw	$t2,16384($zero)
    cvt.s.w	$f0,$f0
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    sll	$a7,$s1,0x2
    move	$t0,$s1
    andi	$a3,$s1,0x1
    swc1	$f0,16384($zero)
    sra	$t8,$t0,0x1
    move	$a2,$t1
    sw	$s3,16384($zero)
    addu	$a7,$a7,$t1
    beqz	$a3,.L0d982368
    ld	$s3,-152($s8)
    # Line 559
    lwc1	$f1,0($t1)
    # Line 558
    addiu	$a2,$t1,4
    # Line 559
    swc1	$f1,16384($zero)
.L0d982368:
    beqz	$t8,.L0d982388
    nop
.L0d982370:
    lwc1	$f3,0($a2)
    lwc1	$f2,4($a2)
    # Line 558
    addiu	$a2,$a2,8
    # Line 559
    swc1	$f3,16384($zero)
    # Line 558
    bne	$a2,$a7,.L0d982370
    # Line 559
    swc1	$f2,16384($zero)
.L0d982388:
    b	.L0d98241c
    ld	$s3,-152($s8)
.L0d982390:
    # Line 496
    b	.L0d9821bc
    addu	$a1,$s3,$s3
.L0d982398:
    # Line 543
    addiu	$t3,$s1,-1
    mtc1	$t3,$f4
    lw	$t1,-12($s8)
    li	$t2,54
    sw	$t2,16384($zero)
    cvt.s.w	$f4,$f4
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    move	$t0,$s1
    andi	$t9,$s1,0x1
    swc1	$f4,16384($zero)
    addu	$a7,$s1,$s1
    move	$a2,$t1
    sw	$s3,16384($zero)
    addu	$a7,$a7,$t1
    beqz	$t9,.L0d9823e8
    ld	$s3,-152($s8)
    # Line 545
    lhu	$t8,0($t1)
    # Line 544
    addiu	$a2,$t1,2
    # Line 545
    sw	$t8,16384($zero)
.L0d9823e8:
    sra	$t9,$t0,0x1
    beqz	$t9,.L0d982418
    nop
    nop
    nop
    nop
.L0d982400:
    lhu	$ra,2($a2)
    lhu	$at,0($a2)
    # Line 544
    addiu	$a2,$a2,4
    # Line 545
    sw	$at,16384($zero)
    # Line 544
    bne	$a2,$a7,.L0d982400
    # Line 545
    sw	$ra,16384($zero)
.L0d982418:
    ld	$s3,-152($s8)
.L0d98241c:
    # Line 566
    ld	$a0,-88($s8)
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a2,-112($s8)
    ld	$a3,-80($s8)
    addiu	$t9,$t9,7664
    ld	$a4,-96($s8)
    move	$a1,$s2
    bal __glkonle_ColorTableSGI
    ld	$a5,-104($s8)
    b	.L0d9820c8
    ld	$s1,-120($s8)
.L0d982448:
    # Line 491
    li	$a4,256
    movz	$a4,$at,$s3
    li	$ra,256
    b	.L0d9821ac
    movn	$s3,$ra,$s3
.L0d98245c:
    # Line 413
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9820c8
    ld	$s1,-120($s8)
.L0d982470:
    # Line 435
    li	$a2,3186
    li	$a0,3185
    li	$a7,3
    # Line 436
    li	$s2,0x8ae8
    # Line 435
    b	.L0d982154
    # Line 436
    addu	$s2,$a4,$s2
.L0d982488:
    sd	$s3,-152($s8)
.L0d98248c:
    b	.L0d982198
    # Line 470
    move	$s3,$a1
    # Line 450
    # lw $t9, -28616($gp) # &__glSetError
.L0d982498:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9820c8
    ld	$s1,-120($s8)
.L0d9824a8:
    # Line 456
    li	$a2,3186
    move	$a0,$a1
    b	.L0d982154
    li	$a7,2
.L0d9824b8:
    move	$a0,$a1
    # Line 460
    li	$a7,2
.L0d9824c0:
    # Line 462
    lw	$a4,16($s2)
    lw	$t9,8($s2)
    lw	$t3,20($s2)
    move	$a1,$a4
    move	$t1,$t9
    slt	$t2,$s1,$t9
    slt	$t8,$t3,$a4
    movz	$t1,$s1,$t2
    movz	$a1,$t3,$t8
    slt	$ra,$a1,$t1
    beqz	$ra,.L0d9824fc
    nop
    move	$a1,$t1
    b	.L0d982500
    sd	$s3,-152($s8)
.L0d9824fc:
    sd	$s3,-152($s8)
.L0d982500:
    # Line 464
    b	.L0d982198
    # Line 462
    move	$s3,$a1
.L0d982508:
    move	$a0,$a1
    # Line 464
    li	$a7,2
.L0d982510:
    # Line 466
    lw	$t2,12($s2)
    lw	$t9,8($s2)
    move	$a1,$s1
    lw	$t3,20($s2)
    move	$t1,$t9
    slt	$t8,$t2,$t9
    slt	$a4,$t3,$s1
    movz	$t1,$t2,$t8
    movz	$a1,$t3,$a4
    slt	$at,$a1,$t1
    beqz	$at,.L0d98254c
    nop
    move	$a1,$t1
    b	.L0d982550
    sd	$s3,-152($s8)
.L0d98254c:
    sd	$s3,-152($s8)
.L0d982550:
    # Line 468
    b	.L0d982198
    # Line 466
    move	$s3,$a1
.L0d982558:
    # Line 512
    li	$v0,1
    bne	$v0,$t0,.L0d982218
    sd	$zero,-112($s8)
.L0d982564:
    b	.L0d982234
    # Line 517
    sd	$zero,-80($s8)
.L0d98256c:
    # Line 550
    mtc1	$t3,$f5
    lw	$t1,-12($s8)
    li	$t2,53
    sw	$t2,16384($zero)
    cvt.s.w	$f5,$f5
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    sll	$a7,$s1,0x2
    move	$t0,$s1
    andi	$v1,$s1,0x1
    swc1	$f5,16384($zero)
    sra	$t9,$t0,0x1
    move	$a2,$t1
    sw	$s3,16384($zero)
    addu	$a7,$a7,$t1
    beqz	$v1,.L0d9825bc
    ld	$s3,-152($s8)
    # Line 552
    lw	$t8,0($t1)
    # Line 551
    addiu	$a2,$t1,4
    # Line 552
    sw	$t8,16384($zero)
.L0d9825bc:
    beqz	$t9,.L0d9825e8
    nop
    nop
    nop
    nop
.L0d9825d0:
    lw	$ra,4($a2)
    lw	$at,0($a2)
    # Line 551
    addiu	$a2,$a2,8
    # Line 552
    sw	$at,16384($zero)
    # Line 551
    bne	$a2,$a7,.L0d9825d0
    # Line 552
    sw	$ra,16384($zero)
.L0d9825e8:
    b	.L0d98241c
    ld	$s3,-152($s8)
.L0d9825f0:
    # Line 401
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9820c8
    ld	$s1,-120($s8)
.L0d982604:
    # Line 456
    b	.L0d982158
    # Line 458
    lw	$t3,20($s2)
.L0d98260c:
    b	.L0d98225c
    # Line 522
    sd	$zero,-96($s8)
.L0d982614:
    # Line 527
    sd	$zero,-104($s8)
    sd	$a7,-160($s8)
    sw	$a5,-12($s8)
    sw	$a3,-4($s8)
    b	.L0d982294
    sd	$a0,-88($s8)
.L0d98262c:
    # Line 460
    li	$a7,1
    b	.L0d9824c0
    move	$a0,$a2
.L0d982638:
    # Line 464
    li	$a7,1
    b	.L0d982510
    move	$a0,$a2
.end do_pixelmap

# Function: __glkonim_PixelMapfv
# Declared: Line 571 (Source lines: 572-574)
# Address: 0x0d982650 - 0x0d982688 (Size: 56 bytes, Frame: 16)
.globl __glkonim_PixelMapfv
.ent __glkonim_PixelMapfv
__glkonim_PixelMapfv:
    # Line 572
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-5752
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 573
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,7872
    bal __glkonle_ColorTableSGI
    li	$a3,5126
    ld	$ra,0($sp)
    # Line 574
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PixelMapfv

# Function: __glkonim_PixelMapuiv
# Declared: Line 577 (Source lines: 578-580)
# Address: 0x0d982690 - 0x0d9826c8 (Size: 56 bytes, Frame: 16)
.globl __glkonim_PixelMapuiv
.ent __glkonim_PixelMapuiv
__glkonim_PixelMapuiv:
    # Line 578
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-5816
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 579
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,7872
    bal __glkonle_ColorTableSGI
    li	$a3,5125
    ld	$ra,0($sp)
    # Line 580
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PixelMapuiv

# Function: __glkonim_PixelMapusv
# Declared: Line 583 (Source lines: 584-586)
# Address: 0x0d9826d0 - 0x0d982708 (Size: 56 bytes, Frame: 16)
.globl __glkonim_PixelMapusv
.ent __glkonim_PixelMapusv
__glkonim_PixelMapusv:
    # Line 584
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-5880
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 585
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,7872
    bal __glkonle_ColorTableSGI
    li	$a3,5123
    ld	$ra,0($sp)
    # Line 586
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PixelMapusv

# Function: __glkonim_CopyColorTableSGI
# Declared: Line 589 (Source lines: 594-624)
# Address: 0x0d982710 - 0x0d982868 (Size: 344 bytes, Frame: 0)
.globl __glkonim_CopyColorTableSGI
.ent __glkonim_CopyColorTableSGI
__glkonim_CopyColorTableSGI:
    # Line 594
    addiu	$sp,$sp,-224
    move	$a5,$s8
    addiu	$s8,$sp,224
    # Line 602
    addiu	$a6,$a4,-1
    # Line 594
    sd	$a5,-200($s8)
    # Line 602
    and	$a6,$a4,$a6
    # Line 594
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x11
    sd	$s0,-216($s8)
    addiu	$v1,$v1,-5944
    move	$s0,$a4
    sd	$gp,-208($s8)
    addu	$gp,$t9,$v1
    beq	$at,$v0,.L0d982854
    sd	$ra,-224($s8)
    # Line 602
    bltz	$a4,.L0d982778
    # Line 603
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$a2,-192($s8)
    sd	$a3,-184($s8)
    sd	$a0,-176($s8)
    # Line 602
    beqz	$a4,.L0d98279c
    sd	$a1,-168($s8)
    beqz	$a6,.L0d9827a0
    # Line 614
    li	$a0,15
    # Line 603
    # lw $t9, -28616($gp) # &__glSetError
.L0d982778:
    jal	__glSetError
    li	$a0,1281
    # Line 624
    ld	$gp,-208($s8)
.L0d982784:
    ld	$ra,-224($s8)
    ld	$a7,-200($s8)
    ld	$s0,-216($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0d98279c:
    # Line 614
    li	$a0,15
.L0d9827a0:
    # Line 604
    addiu	$a1,$s8,-152
    # Line 613
    li	$ra,273
    sw	$ra,16384($zero)
    li	$t3,8
    # Line 614
    # lw $t9, -32296($gp) # &__glKonPushState
    # Line 610
    sll	$t2,$s0,0x3
    # Line 613
    sw	$t3,16384($zero)
    # Line 610
    li	$t8,-16
    addiu	$t2,$t2,15
    # Line 613
    lui	$t1,0x4000
    sw	$t1,16384($zero)
    # Line 610
    and	$t2,$t2,$t8
    subu	$sp,$sp,$t2
    # Line 614
    jal	__glKonPushState
    sd	$sp,-160($s8)
    # Line 615
    # lw $t9, -32292($gp) # &__glKonDefaultState
    jal	__glKonDefaultState
    li	$a0,15
    # Line 616
    # lw $t9, -32256($gp) # &__glkonim_ReadPixels
    ld	$a0,-192($s8)
    move	$a2,$s0
    ld	$a1,-184($s8)
    li	$a5,5123
    li	$a4,6408
    ld	$a6,-160($s8)
    jal	__glkonim_ReadPixels
    li	$a3,1
    # Line 620
    ld	$a5,-160($s8)
    ld	$a1,-168($s8)
    ld	$a0,-176($s8)
    # lw $t9, -31320($gp) # &__glkonim_ColorTableSGI
    li	$a4,5123
    # Line 618
    li	$t8,273
    sw	$t8,16384($zero)
    # Line 620
    li	$a3,6408
    # Line 618
    li	$t3,8
    sw	$t3,16384($zero)
    # Line 620
    move	$a2,$s0
    bal __glkonim_ColorTableSGI
    # Line 618
    sw	$zero,16384($zero)
    # Line 623
    # lw $t9, -32288($gp) # &__glKonPopState
    jal	__glKonPopState
    addiu	$a0,$s8,-152
    b	.L0d982784
    # Line 624
    ld	$gp,-208($s8)
.L0d982854:
    # Line 597
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d982784
    # Line 624
    ld	$gp,-208($s8)
.end __glkonim_CopyColorTableSGI

# Function: __glkonim_GetColorTableSGI
# Declared: Line 627 (Source lines: 631-714)
# Address: 0x0d982870 - 0x0d982bd0 (Size: 864 bytes, Frame: 224)
.globl __glkonim_GetColorTableSGI
.ent __glkonim_GetColorTableSGI
__glkonim_GetColorTableSGI:
    # Line 631
    addiu	$sp,$sp,-608
    sd	$s0,536($sp)
    # Line 632
    lw	$s0,4112($zero)
    # Line 631
    sd	$s6,512($sp)
    sd	$s3,504($sp)
    move	$s3,$a1
    move	$s6,$a0
    sd	$s7,528($sp)
    move	$s7,$a3
    # Line 632
    li	$a4,1
    lw	$at,4120($zero)
    # Line 631
    lui	$v0,0x11
    sd	$s4,520($sp)
    move	$s4,$a2
    sd	$ra,576($sp)
    addiu	$v0,$v0,-6296
    # Line 648
    sltiu	$a3,$s4,5127
    sd	$gp,544($sp)
    # Line 632
    beq	$at,$a4,.L0d982ba8
    # Line 631
    addu	$gp,$t9,$v0
    # Line 641
    sltiu	$v1,$a1,6403
    bnez	$v1,.L0d9828d4
    # Line 664
    li	$t9,0x80d2
    # Line 641
    sltiu	$a0,$a1,6411
    bnez	$a0,.L0d982908
.L0d9828d4:
    li	$a1,0x8000
    beq	$s3,$a1,.L0d98290c
    # Line 656
    li	$t2,0x8000
    ld	$s3,504($sp)
    ld	$s6,512($sp)
    # Line 643
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s4,520($sp)
    ld	$s7,528($sp)
    ld	$s0,536($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d982b08
    ld	$ra,576($sp)
.L0d982908:
    # Line 656
    li	$t2,0x8000
.L0d98290c:
    # Line 648
    sltiu	$a2,$s4,5120
    # Line 664
    li	$ra,0x80bc
    # Line 652
    li	$a0,0x8032
    # Line 648
    bnez	$a2,.L0d982928
    # Line 656
    li	$t1,6408
    # Line 648
    bnez	$a3,.L0d982b14
    nop
.L0d982928:
    li	$a0,0x8032
    sltu	$a5,$s4,$a0
    bnez	$a5,.L0d982b50
    li	$a6,0x8036
    sltu	$a6,$a6,$s4
    bnez	$a6,.L0d982b50
    nop
.L0d982944:
    # Line 656
    beq	$a0,$s4,.L0d982b1c
    li	$a7,0x8033
.L0d98294c:
    sltu	$a7,$s4,$a7
    li	$t0,0x8036
    bnez	$a7,.L0d982970
    sltu	$t0,$t0,$s4
    bnez	$t0,.L0d982974
    # Line 664
    li	$t3,0x80d0
    # Line 656
    beq	$s3,$t1,.L0d982974
    # Line 664
    li	$t3,0x80d0
    # Line 656
    bne	$s3,$t2,.L0d982b28
.L0d982970:
    # Line 664
    li	$t3,0x80d0
.L0d982974:
    beq	$s6,$t3,.L0d982b78
    # Line 675
    addiu	$a2,$s0,5912
    # Line 664
    li	$t8,0x80d1
    beq	$s6,$t8,.L0d982b88
    nop
    beq	$s6,$t9,.L0d982b98
    nop
    beq	$s6,$ra,.L0d9829c0
    nop
    ld	$s3,504($sp)
    ld	$s6,512($sp)
    # Line 678
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s4,520($sp)
    ld	$s7,528($sp)
    ld	$s0,536($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d982b08
    ld	$ra,576($sp)
.L0d9829c0:
    sd	$s8,568($sp)
    sd	$s5,560($sp)
.L0d9829c8:
    # Line 686
    lui	$s8,0x1
    # Line 682
    lw	$s5,12($a2)
    # Line 686
    addu	$s8,$s0,$s8
    lw	$a0,-29588($s8)
    blez	$s5,.L0d982ad8
    lw	$a1,12($a0)
    sd	$a1,552($sp)
    sd	$s2,592($sp)
    move	$s2,$zero
    sd	$s1,584($sp)
.L0d9829f0:
    # Line 690
    move	$a3,$s2
    move	$a2,$s3
    move	$a1,$s6
    # lw $t9, -32108($gp) # &__glkon_get_special4
    # Line 686
    subu	$s1,$s5,$s2
    # Line 689
    li	$at,512
    # Line 686
    slti	$ra,$s1,512
    # Line 690
    li	$a0,234
    movz	$s1,$at,$ra
    jal	__glkon_get_special4
    move	$a4,$s1
    # Line 698
    move	$a0,$s0
    # lw $t9, -30108($gp) # &__glInitMemGet
    li	$a4,6408
    li	$a3,1
    lw	$a5,31588($s0)
    move	$a2,$s1
    addiu	$a1,$sp,0
    jal	__glInitMemGet
    addiu	$a5,$a5,8
    # Line 700
    move	$a0,$s0
    move	$a7,$s7
    move	$a6,$s4
    # lw $t9, -30100($gp) # &__glInitMemPack
    move	$a5,$s3
    move	$a4,$zero
    li	$a3,1
    move	$a2,$s1
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 701
    # lw $t9, -29940($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 702
    # lw $t9, -30488($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 705
    li	$a6,1
    sb	$a6,430($sp)
    # Line 704
    sb	$zero,428($sp)
    # Line 703
    sb	$zero,424($sp)
    # Line 708
    lw	$t9,12628($s0)
    move	$a2,$zero
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s0
    # Line 709
    lw	$t0,-29588($s8)
    # Line 710
    addu	$s2,$s1,$s2
    slt	$t1,$s2,$s5
    # Line 709
    lw	$a7,12($t0)
    addu	$a7,$s1,$a7
    # Line 710
    bnez	$t1,.L0d9829f0
    # Line 709
    sw	$a7,12($t0)
    ld	$a1,552($sp)
    # Line 710
    lw	$a0,-29588($s8)
    ld	$s2,592($sp)
    ld	$s1,584($sp)
.L0d982ad8:
    # Line 712
    sw	$a1,12($a0)
    ld	$s8,568($sp)
    ld	$s5,560($sp)
    # Line 714
    ld	$gp,544($sp)
    ld	$s0,536($sp)
    ld	$s3,504($sp)
    ld	$ra,576($sp)
    ld	$s4,520($sp)
    ld	$s6,512($sp)
    ld	$s7,528($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d982b08:
    ld	$gp,544($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d982b14:
    b	.L0d982944
    nop
.L0d982b1c:
    # Line 656
    li	$t0,6407
    beq	$s3,$t0,.L0d98294c
    li	$a7,0x8033
.L0d982b28:
    ld	$s3,504($sp)
    ld	$s6,512($sp)
    # Line 660
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s4,520($sp)
    ld	$s7,528($sp)
    ld	$s0,536($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d982b08
    ld	$ra,576($sp)
.L0d982b50:
    ld	$s3,504($sp)
    ld	$s6,512($sp)
    # Line 651
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s4,520($sp)
    ld	$s7,528($sp)
    ld	$s0,536($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d982b08
    ld	$ra,576($sp)
.L0d982b78:
    sd	$s8,568($sp)
    # Line 666
    addiu	$a2,$s0,5432
    b	.L0d9829c8
    sd	$s5,560($sp)
.L0d982b88:
    sd	$s8,568($sp)
    # Line 669
    addiu	$a2,$s0,5592
    # Line 670
    b	.L0d9829c8
    sd	$s5,560($sp)
.L0d982b98:
    sd	$s8,568($sp)
    # Line 672
    addiu	$a2,$s0,5752
    # Line 673
    b	.L0d9829c8
    sd	$s5,560($sp)
.L0d982ba8:
    ld	$s3,504($sp)
    ld	$s6,512($sp)
    # Line 638
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s4,520($sp)
    ld	$s7,528($sp)
    ld	$s0,536($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d982b08
    ld	$ra,576($sp)
.end __glkonim_GetColorTableSGI

# Function: get_pixel_map_setup
# Declared: Line 717 (Source lines: 718-742)
# Address: 0x0d982bd0 - 0x0d982c60 (Size: 144 bytes, Frame: 16)
.ent get_pixel_map_setup
get_pixel_map_setup:
    # Line 718
    move	$a4,$a0
    la	$a5,.rodata
    addiu	$a6,$a0,-3184
    addiu	$sp,$sp,-16
    sltiu	$at,$a6,10
    sll	$a6,$a6,0x2
    addiu	$a5,$a5,1320
    sd	$ra,0($sp)
    beqz	$at,.L0d982c44
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    # Line 728
    li	$t1,2
    # Line 731
    li	$t0,3
    # Line 718
    jr	$a6
    # Line 725
    li	$a7,1
.L0d982c0c:
    # Line 723
    b	.L0d982c18
    # Line 722
    sw	$zero,0($a2)
.L0d982c14:
    # Line 725
    sw	$a7,0($a2)
.L0d982c18:
    # Line 738
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    jal	__glkonim_GetIntegerv
    addiu	$a0,$a4,64
    ld	$ra,0($sp)
    # Line 742
    move	$v0,$zero
    # Line 735
    jr	$ra
    addiu	$sp,$sp,16
.L0d982c34:
    # Line 732
    b	.L0d982c18
    # Line 731
    sw	$t0,0($a2)
.L0d982c3c:
    # Line 729
    b	.L0d982c18
    # Line 728
    sw	$t1,0($a2)
.L0d982c44:
    # Line 734
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 735
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end get_pixel_map_setup

# Function: __glkonim_GetPixelMapfv
# Declared: Line 746 (Source lines: 747-768)
# Address: 0x0d982c60 - 0x0d982dcc (Size: 364 bytes, Frame: 192)
.globl __glkonim_GetPixelMapfv
.ent __glkonim_GetPixelMapfv
__glkonim_GetPixelMapfv:
    # Line 747
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    sd	$s2,56($sp)
    sd	$ra,40($sp)
    sd	$s4,32($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    # Line 751
    lw	$v0,4120($zero)
    # Line 747
    sd	$s3,48($sp)
    # Line 751
    li	$v1,1
    # Line 747
    lui	$at,0x11
    move	$s3,$a0
    # Line 751
    lw	$s4,4112($zero)
    # Line 747
    addiu	$at,$at,-7304
    sd	$gp,8($sp)
    # Line 751
    beq	$v0,$v1,.L0d982db8
    # Line 747
    addu	$gp,$t9,$at
    # Line 754
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,11216
    addiu	$a2,$sp,4
    bal __glkonim_GetColorTableSGI
    addiu	$a1,$sp,0
    lw	$a5,0($sp)
    blez	$a5,.L0d982d94
    move	$s2,$zero
    nop
    nop
    # Line 759
    move	$a2,$s2
.L0d982cd0:
    move	$a1,$s3
    # lw $t9, -32112($gp) # &__glkon_get_special3
    # Line 754
    subu	$s0,$a5,$s2
    # Line 758
    li	$at,512
    # Line 754
    slti	$ra,$s0,512
    # Line 759
    li	$a0,72
    movz	$s0,$at,$ra
    jal	__glkon_get_special3
    move	$a3,$s0
    # Line 761
    lw	$a6,4($sp)
    # Line 760
    addu	$s2,$s0,$s2
    sra	$a7,$s0,0x2
    # Line 761
    lw	$a5,31588($s4)
    andi	$a2,$s0,0x3
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    move	$a6,$zero
    blez	$s0,.L0d982d84
    addiu	$a5,$a5,8
    beqz	$a2,.L0d982d3c
.L0d982d20:
    addiu	$a2,$a2,-1
    # Line 763
    lwc1	$f0,0($a5)
    # Line 762
    addiu	$a6,$a6,1
    # Line 764
    addiu	$s1,$s1,4
    # Line 765
    addiu	$a5,$a5,16
    bnez	$a2,.L0d982d20
    # Line 763
    swc1	$f0,-4($s1)
.L0d982d3c:
    beqz	$a7,.L0d982d84
    move	$a1,$s1
    nop
    nop
    nop
.L0d982d50:
    lwc1	$f4,0($a5)
    swc1	$f4,0($a1)
    lwc1	$f3,16($a5)
    swc1	$f3,4($a1)
    lwc1	$f2,32($a5)
    swc1	$f2,8($a1)
    # Line 762
    addiu	$a6,$a6,4
    # Line 763
    lwc1	$f1,48($a5)
    # Line 764
    addiu	$a1,$a1,16
    # Line 765
    addiu	$a5,$a5,64
    # Line 762
    bne	$s0,$a6,.L0d982d50
    # Line 763
    swc1	$f1,-4($a1)
    move	$s1,$a1
.L0d982d84:
    # Line 762
    lw	$a5,0($sp)
    slt	$t0,$s2,$a5
    bnez	$t0,.L0d982cd0
    # Line 759
    move	$a2,$s2
.L0d982d94:
    # Line 768
    ld	$gp,8($sp)
.L0d982d98:
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d982db8:
    # Line 752
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d982d98
    # Line 768
    ld	$gp,8($sp)
.end __glkonim_GetPixelMapfv

# Function: __glkonim_GetPixelMapuiv
# Declared: Line 771 (Source lines: 772-799)
# Address: 0x0d982dd0 - 0x0d982fc8 (Size: 504 bytes, Frame: 224)
.globl __glkonim_GetPixelMapuiv
.ent __glkonim_GetPixelMapuiv
__glkonim_GetPixelMapuiv:
    # Line 772
    addiu	$sp,$sp,-96
    sd	$s6,80($sp)
    # Line 776
    lw	$s6,4112($zero)
    sd	$s4,48($sp)
    # Line 772
    sd	$s0,72($sp)
    move	$s0,$a1
    # Line 776
    lw	$at,4120($zero)
    # Line 772
    sd	$s1,64($sp)
    # Line 776
    li	$v0,1
    # Line 772
    lui	$v1,0x11
    move	$s1,$a0
    sd	$ra,40($sp)
    addiu	$v1,$v1,-7672
    sd	$gp,56($sp)
    # Line 776
    beq	$at,$v0,.L0d982f7c
    # Line 772
    addu	$gp,$t9,$v1
    # Line 779
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,11216
    addiu	$a2,$sp,4
    bal __glkonim_GetColorTableSGI
    addiu	$a1,$sp,0
    sdc1	$f20,8($sp)
    lw	$a5,0($sp)
    sd	$s5,32($sp)
    sd	$s3,24($sp)
    blez	$a5,.L0d982f98
    sd	$s2,16($sp)
    move	$s5,$zero
    li	$s3,3185
    lwc1	$f20,_lit_4f800000
    b	.L0d982e80
    li	$s2,3184
.L0d982e50:
    # Line 793
    lwc1	$f0,0($a5)
    mul.s	$f0,$f0,$f20
    trunc.l.s	$f0,$f0
    dmfc1	$ra,$f0
    sw	$ra,0($s0)
.L0d982e64:
    # Line 796
    addiu	$a5,$a5,16
    # Line 795
    addiu	$s0,$s0,4
.L0d982e6c:
    bnez	$at,.L0d982f20
    nop
.L0d982e74:
    # Line 789
    lw	$a5,0($sp)
    slt	$v0,$s5,$a5
    beqz	$v0,.L0d982f98
.L0d982e80:
    # Line 786
    move	$a2,$s5
    move	$a1,$s1
    # lw $t9, -32112($gp) # &__glkon_get_special3
    # Line 779
    subu	$s4,$a5,$s5
    # Line 785
    li	$a3,512
    # Line 779
    slti	$v1,$s4,512
    # Line 786
    li	$a0,72
    movz	$s4,$a3,$v1
    jal	__glkon_get_special3
    move	$a3,$s4
    # Line 788
    lw	$a6,4($sp)
    # Line 787
    addu	$s5,$s4,$s5
    sra	$at,$s4,0x1
    # Line 788
    lw	$a5,31588($s6)
    andi	$a7,$s4,0x1
    sll	$a6,$a6,0x2
    move	$a0,$zero
    addu	$a5,$a5,$a6
    blez	$s4,.L0d982e74
    addiu	$a5,$a5,8
    beqz	$a7,.L0d982e6c
    nop
    # Line 790
    beq	$s2,$s1,.L0d982ee8
    # Line 789
    addiu	$a0,$a0,1
    # Line 790
    bne	$s3,$s1,.L0d982e50
    nop
.L0d982ee8:
    # Line 791
    lwc1	$f1,0($a5)
    trunc.l.s	$f1,$f1
    dmfc1	$t0,$f1
    b	.L0d982e64
    sw	$t0,0($s0)
    nop
.L0d982f00:
    # Line 793
    lwc1	$f2,16($a5)
    mul.s	$f2,$f2,$f20
    trunc.l.s	$f2,$f2
    dmfc1	$t1,$f2
    sw	$t1,0($s0)
.L0d982f14:
    # Line 796
    addiu	$a5,$a5,32
    # Line 789
    beq	$s4,$a0,.L0d982e74
    # Line 795
    addiu	$s0,$s0,4
.L0d982f20:
    # Line 790
    beq	$s2,$s1,.L0d982f68
    # Line 789
    addiu	$a0,$a0,2
    # Line 790
    beq	$s3,$s1,.L0d982f68
    nop
    # Line 793
    lwc1	$f3,0($a5)
    mul.s	$f3,$f3,$f20
    trunc.l.s	$f3,$f3
    dmfc1	$t2,$f3
    sw	$t2,0($s0)
.L0d982f44:
    # Line 790
    beq	$s2,$s1,.L0d982f54
    # Line 795
    addiu	$s0,$s0,4
    # Line 790
    bne	$s3,$s1,.L0d982f00
    nop
.L0d982f54:
    # Line 791
    lwc1	$f4,16($a5)
    trunc.l.s	$f4,$f4
    dmfc1	$t3,$f4
    b	.L0d982f14
    sw	$t3,0($s0)
.L0d982f68:
    lwc1	$f5,0($a5)
    trunc.l.s	$f5,$f5
    dmfc1	$t8,$f5
    b	.L0d982f44
    sw	$t8,0($s0)
.L0d982f7c:
    sdc1	$f20,8($sp)
    # Line 777
    # lw $t9, -28616($gp) # &__glSetError
    sd	$s5,32($sp)
    sd	$s3,24($sp)
    li	$a0,1282
    jal	__glSetError
    sd	$s2,16($sp)
.L0d982f98:
    # Line 799
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s4,48($sp)
    ld	$ra,40($sp)
    ld	$s5,32($sp)
    ld	$s6,80($sp)
    ldc1	$f20,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonim_GetPixelMapuiv

# Function: __glkonim_GetPixelMapusv
# Declared: Line 802 (Source lines: 803-828)
# Address: 0x0d982fd0 - 0x0d9831d0 (Size: 512 bytes, Frame: 224)
.globl __glkonim_GetPixelMapusv
.ent __glkonim_GetPixelMapusv
__glkonim_GetPixelMapusv:
    # Line 803
    addiu	$sp,$sp,-96
    sd	$s6,80($sp)
    # Line 807
    lw	$s6,4112($zero)
    sd	$s4,48($sp)
    # Line 803
    sd	$s0,72($sp)
    move	$s0,$a1
    # Line 807
    lw	$at,4120($zero)
    # Line 803
    sd	$s1,64($sp)
    # Line 807
    li	$v0,1
    # Line 803
    lui	$v1,0x11
    move	$s1,$a0
    sd	$ra,40($sp)
    addiu	$v1,$v1,-8184
    sd	$gp,56($sp)
    # Line 807
    beq	$at,$v0,.L0d983184
    # Line 803
    addu	$gp,$t9,$v1
    # Line 810
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,11216
    addiu	$a2,$sp,4
    bal __glkonim_GetColorTableSGI
    addiu	$a1,$sp,0
    sdc1	$f20,8($sp)
    lw	$a5,0($sp)
    sd	$s5,32($sp)
    sd	$s3,24($sp)
    blez	$a5,.L0d9831a0
    sd	$s2,16($sp)
    move	$s5,$zero
    li	$s3,3185
    ldc1	$f20,_lit8_40efffff5c28f5c3
    b	.L0d983084
    li	$s2,3184
.L0d983050:
    # Line 822
    lwc1	$f0,0($a5)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f20
    trunc.w.d	$f0,$f0
    mfc1	$ra,$f0
    sh	$ra,0($s0)
.L0d983068:
    # Line 825
    addiu	$a5,$a5,16
    # Line 824
    addiu	$s0,$s0,2
.L0d983070:
    bnez	$at,.L0d983124
    nop
.L0d983078:
    # Line 818
    lw	$a5,0($sp)
    slt	$v0,$s5,$a5
    beqz	$v0,.L0d9831a0
.L0d983084:
    # Line 815
    move	$a2,$s5
    move	$a1,$s1
    # lw $t9, -32112($gp) # &__glkon_get_special3
    # Line 810
    subu	$s4,$a5,$s5
    # Line 814
    li	$a3,512
    # Line 810
    slti	$v1,$s4,512
    # Line 815
    li	$a0,72
    movz	$s4,$a3,$v1
    jal	__glkon_get_special3
    move	$a3,$s4
    # Line 817
    lw	$a6,4($sp)
    # Line 816
    addu	$s5,$s4,$s5
    sra	$at,$s4,0x1
    # Line 817
    lw	$a5,31588($s6)
    andi	$a7,$s4,0x1
    sll	$a6,$a6,0x2
    move	$a0,$zero
    addu	$a5,$a5,$a6
    blez	$s4,.L0d983078
    addiu	$a5,$a5,8
    beqz	$a7,.L0d983070
    nop
    # Line 819
    beq	$s2,$s1,.L0d9830ec
    # Line 818
    addiu	$a0,$a0,1
    # Line 819
    bne	$s3,$s1,.L0d983050
    nop
.L0d9830ec:
    # Line 820
    lwc1	$f1,0($a5)
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    b	.L0d983068
    sh	$t0,0($s0)
.L0d983100:
    # Line 822
    lwc1	$f2,16($a5)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f20
    trunc.w.d	$f2,$f2
    mfc1	$t1,$f2
    sh	$t1,0($s0)
.L0d983118:
    # Line 825
    addiu	$a5,$a5,32
    # Line 818
    beq	$s4,$a0,.L0d983078
    # Line 824
    addiu	$s0,$s0,2
.L0d983124:
    # Line 819
    beq	$s2,$s1,.L0d983170
    # Line 818
    addiu	$a0,$a0,2
    # Line 819
    beq	$s3,$s1,.L0d983170
    nop
    # Line 822
    lwc1	$f3,0($a5)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f20
    trunc.w.d	$f3,$f3
    mfc1	$t2,$f3
    sh	$t2,0($s0)
.L0d98314c:
    # Line 819
    beq	$s2,$s1,.L0d98315c
    # Line 824
    addiu	$s0,$s0,2
    # Line 819
    bne	$s3,$s1,.L0d983100
    nop
.L0d98315c:
    # Line 820
    lwc1	$f4,16($a5)
    trunc.w.s	$f4,$f4
    mfc1	$t3,$f4
    b	.L0d983118
    sh	$t3,0($s0)
.L0d983170:
    lwc1	$f5,0($a5)
    trunc.w.s	$f5,$f5
    mfc1	$t8,$f5
    b	.L0d98314c
    sh	$t8,0($s0)
.L0d983184:
    sdc1	$f20,8($sp)
    # Line 808
    # lw $t9, -28616($gp) # &__glSetError
    sd	$s5,32($sp)
    sd	$s3,24($sp)
    li	$a0,1282
    jal	__glSetError
    sd	$s2,16($sp)
.L0d9831a0:
    # Line 828
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s4,48($sp)
    ld	$ra,40($sp)
    ld	$s5,32($sp)
    ld	$s6,80($sp)
    ldc1	$f20,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonim_GetPixelMapusv

# Function: __glkonim_GetColorTableParameterfvSGI
# Declared: Line 831 (Source lines: 834-856)
# Address: 0x0d9831d0 - 0x0d9832d4 (Size: 260 bytes, Frame: 48)
.globl __glkonim_GetColorTableParameterfvSGI
.ent __glkonim_GetColorTableParameterfvSGI
__glkonim_GetColorTableParameterfvSGI:
    # Line 834
    move	$a4,$a0
    # Line 835
    lw	$a0,4112($zero)
    # Line 834
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    # Line 835
    sd	$a0,8($sp)
    lw	$at,4120($zero)
    # Line 834
    sd	$s0,16($sp)
    # Line 835
    li	$v0,1
    # Line 834
    lui	$v1,0x11
    move	$s0,$a1
    sd	$ra,32($sp)
    addiu	$v1,$v1,-8696
    sd	$gp,24($sp)
    # Line 835
    beq	$at,$v0,.L0d9832bc
    # Line 834
    addu	$gp,$t9,$v1
    # Line 840
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$a1
    move	$a1,$a4
    jal	__glkon_get_special2
    li	$a0,236
    # Line 856
    ld	$gp,24($sp)
    # Line 843
    li	$a0,0x80d6
    ld	$ra,32($sp)
    li	$a1,0x80d7
    beq	$s0,$a0,.L0d983270
    # Line 853
    ld	$a3,8($sp)
    # Line 843
    beq	$s0,$a1,.L0d983274
    # Line 846
    ld	$a5,8($sp)
    # Line 853
    lw	$a3,31588($a3)
    lw	$a3,8($a3)
    mtc1	$a3,$f0
    cvt.s.w	$f0,$f0
    ld	$a2,0($sp)
    # Line 856
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 853
    swc1	$f0,0($a2)
.L0d983264:
    # Line 856
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d983270:
    # Line 846
    ld	$a5,8($sp)
.L0d983274:
    lw	$t0,31588($a5)
    ld	$a4,0($sp)
    lwc1	$f4,8($t0)
    swc1	$f4,0($a4)
    # Line 847
    lw	$a7,31588($a5)
    lwc1	$f3,12($a7)
    swc1	$f3,4($a4)
    # Line 848
    lw	$a6,31588($a5)
    lwc1	$f2,16($a6)
    # Line 856
    ld	$gp,24($sp)
    # Line 848
    swc1	$f2,8($a4)
    # Line 849
    lw	$a5,31588($a5)
    ld	$ra,32($sp)
    lwc1	$f1,20($a5)
    # Line 856
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 849
    swc1	$f1,12($a4)
.L0d9832bc:
    # Line 836
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d983264
    ld	$ra,32($sp)
.end __glkonim_GetColorTableParameterfvSGI

# Function: __glkonim_GetColorTableParameterivSGI
# Declared: Line 859 (Source lines: 862-885)
# Address: 0x0d9832e0 - 0x0d9833ec (Size: 268 bytes, Frame: 48)
.globl __glkonim_GetColorTableParameterivSGI
.ent __glkonim_GetColorTableParameterivSGI
__glkonim_GetColorTableParameterivSGI:
    # Line 862
    move	$a4,$a0
    # Line 863
    lw	$a0,4112($zero)
    # Line 862
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    # Line 863
    sd	$a0,8($sp)
    lw	$at,4120($zero)
    # Line 862
    sd	$s0,16($sp)
    # Line 863
    li	$v0,1
    # Line 862
    lui	$v1,0x11
    move	$s0,$a1
    sd	$ra,32($sp)
    addiu	$v1,$v1,-8968
    sd	$gp,24($sp)
    # Line 863
    beq	$at,$v0,.L0d9833d4
    # Line 862
    addu	$gp,$t9,$v1
    # Line 869
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$a1
    move	$a1,$a4
    jal	__glkon_get_special2
    li	$a0,236
    # Line 882
    ld	$a2,8($sp)
    # Line 872
    li	$a0,0x80d6
    ld	$ra,32($sp)
    li	$a1,0x80d7
    beq	$s0,$a0,.L0d983378
    # Line 885
    ld	$gp,24($sp)
    # Line 872
    beq	$s0,$a1,.L0d98337c
    # Line 875
    ld	$a4,8($sp)
    # Line 885
    ld	$s0,16($sp)
    # Line 882
    lw	$a2,31588($a2)
    ld	$a3,0($sp)
    lw	$a2,8($a2)
    # Line 885
    addiu	$sp,$sp,48
    jr	$ra
    # Line 882
    sw	$a2,0($a3)
.L0d98336c:
    # Line 885
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d983378:
    # Line 875
    ld	$a4,8($sp)
.L0d98337c:
    lw	$a7,31588($a4)
    lwc1	$f3,8($a7)
    ld	$a3,0($sp)
    trunc.w.s	$f3,$f3
    swc1	$f3,0($a3)
    # Line 876
    lw	$a6,31588($a4)
    lwc1	$f2,12($a6)
    trunc.w.s	$f2,$f2
    swc1	$f2,4($a3)
    # Line 877
    lw	$a5,31588($a4)
    lwc1	$f1,16($a5)
    trunc.w.s	$f1,$f1
    swc1	$f1,8($a3)
    # Line 878
    lw	$a4,31588($a4)
    lwc1	$f0,20($a4)
    ld	$ra,32($sp)
    # Line 885
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    # Line 878
    trunc.w.s	$f0,$f0
    # Line 885
    addiu	$sp,$sp,48
    jr	$ra
    # Line 878
    swc1	$f0,12($a3)
.L0d9833d4:
    # Line 864
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d98336c
    ld	$ra,32($sp)
.end __glkonim_GetColorTableParameterivSGI

.late_rodata
jtbl_0da804c0:
    .word .L0d9817c0
    .word .L0d981798
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d9815cc
    .word .L0d981760
    .word .L0d981728
    .word .L0d9816ec
    .word .L0d9815e0
    .word .L0d981604
    .word .L0d9816cc
jtbl_0da80528:
    .word .L0d982c0c
    .word .L0d982c0c
    .word .L0d982c0c
    .word .L0d982c14
    .word .L0d982c3c
    .word .L0d982c34
    .word .L0d982c0c
    .word .L0d982c14
    .word .L0d982c3c
    .word .L0d982c34

.rdata
_lit8_40efffff5c28f5c3:
    .word 0x40efffff, 0x5c28f5c3
_lit_4f800000:
    .word 0x4f800000
_lit_bf800000:
    .word 0xbf800000

