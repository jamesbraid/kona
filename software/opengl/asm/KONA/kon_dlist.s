# Source: ../KONA/kon_dlist.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_dlist.c
# Total Functions: 55

.text

# Function: __glkonCompressPlist
# Declared: Line 78 (Source lines: 79-100)
# Address: 0x0d94a380 - 0x0d94a444 (Size: 196 bytes, Frame: 0)
.ent __glkonCompressPlist
__glkonCompressPlist:
    # Line 79
    lw	$at,24($a0)
    addiu	$at,$at,-1
    blez	$at,.L0d94a430
    lw	$t0,20($a0)
    lui	$t1,0x100
    move	$a6,$zero
    move	$a5,$zero
    move	$a7,$zero
    move	$a2,$t0
    b	.L0d94a438
    move	$a3,$t0
    nop
.L0d94a3b0:
    # Line 94
    sw	$a4,0($a3)
    # Line 93
    addiu	$a3,$a3,8
    # Line 94
    lw	$v0,4($a2)
    # Line 95
    li	$a6,1
    # Line 93
    addiu	$a7,$a7,1
    # Line 94
    sw	$v0,-4($a3)
.L0d94a3c8:
    # Line 83
    lw	$v1,24($a0)
    addiu	$v1,$v1,-1
    slt	$v1,$a5,$v1
    addiu	$a2,$a2,8
    beqz	$v1,.L0d94a428
    addiu	$a5,$a5,1
.L0d94a3e0:
    # Line 85
    beq	$a2,$t0,.L0d94a3b0
    lw	$a4,0($a2)
    sll	$t2,$a6,0xa
    lw	$a1,-8($a3)
    addu	$a1,$a1,$t2
    # Line 91
    addiu	$a6,$a6,1
    # Line 85
    bne	$a4,$a1,.L0d94a3b0
    lw	$t3,-4($a3)
    lw	$t2,4($a2)
    addu	$t2,$t2,$t3
    andi	$t3,$t3,0xff
    subu	$t2,$t2,$t3
    addiu	$t2,$t2,256
    slt	$t3,$t2,$t1
    beqz	$t3,.L0d94a3b0
    nop
    b	.L0d94a3c8
    # Line 90
    sw	$t2,-4($a3)
.L0d94a428:
    # Line 100
    jr	$ra
    # Line 99
    sw	$a7,28($a0)
.L0d94a430:
    # Line 100
    jr	$ra
    # Line 99
    sw	$zero,28($a0)
.L0d94a438:
    # Line 83
    addiu	$a5,$a5,1
    b	.L0d94a3e0
    nop
.end __glkonCompressPlist

# Function: __glSdramFree
# Declared: Line 105 (Source lines: 106-106)
# Address: 0x0d94a450 - 0x0d94a458 (Size: 8 bytes, Frame: 0)
.ent __glSdramFree
__glSdramFree:
    # Line 106
    jr	$ra
    li	$v0,1
.end __glSdramFree

# Function: __glSdramSbrk
# Declared: Line 110 (Source lines: 110-144)
# Address: 0x0d94a460 - 0x0d94a5d8 (Size: 376 bytes, Frame: 48)
.ent __glSdramSbrk
__glSdramSbrk:
    # Line 113
    lw	$a3,8($a1)
    lw	$a5,16($a1)
    # Line 110
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    sd	$s2,24($sp)
    # Line 111
    lw	$v0,0($a1)
    # Line 110
    move	$s2,$a1
    # Line 111
    lw	$a4,4($a1)
    # Line 110
    move	$s0,$a0
    sd	$ra,40($sp)
    lui	$at,0x14
    sd	$gp,16($sp)
    addiu	$at,$at,27512
    # Line 111
    addu	$v0,$a4,$v0
    sd	$v0,0($sp)
    # Line 113
    bltz	$a0,.L0d94a540
    # Line 110
    addu	$gp,$t9,$at
    # Line 118
    blez	$a0,.L0d94a570
    # Line 121
    mtc1	$a5,$f1
    addu	$v1,$a4,$a0
    subu	$v1,$v1,$a3
    addu	$v1,$a5,$v1
    addiu	$v1,$v1,-1
    mtc1	$v1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    teq	$a5,$zero,0x7
    sd	$s1,8($sp)
    mfc1	$a0,$f0
.L0d94a4dc:
    # Line 123
    mult	$a5,$a0
    mflo	$s1
    addu	$s1,$a3,$s1
    beq	$a3,$s1,.L0d94a518
    # Line 144
    ld	$v0,0($sp)
    # Line 123
    beqz	$a3,.L0d94a5ac
    # Line 131
    nop	# was lw $t9, -32452($gp) # &__glkon_dlist_mem_alloc
    # Line 132
    beqz	$s1,.L0d94a57c
    # Line 134
    nop	# was lw $t9, -32448($gp) # &__glkon_dlist_mem_realloc
    bal __glkon_dlist_mem_realloc
    move	$a0,$s1
    bltz	$v0,.L0d94a590
    # Line 144
    ld	$gp,16($sp)
.L0d94a510:
    # Line 137
    lw	$a4,4($s2)
.L0d94a514:
    # Line 144
    ld	$v0,0($sp)
.L0d94a518:
    ld	$gp,16($sp)
    # Line 141
    addu	$v1,$a4,$s0
    # Line 144
    ld	$s0,32($sp)
    # Line 142
    sw	$s1,8($s2)
    ld	$ra,40($sp)
    # Line 144
    ld	$s1,8($sp)
    # Line 141
    sw	$v1,4($s2)
    # Line 144
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94a540:
    # Line 118
    addu	$a0,$a4,$a0
    mtc1	$a5,$f2
    subu	$a0,$a0,$a3
    mtc1	$a0,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    teq	$a5,$zero,0x7
    sd	$s1,8($sp)
    b	.L0d94a4dc
    mfc1	$a0,$f1
.L0d94a570:
    # Line 121
    move	$a0,$zero
    b	.L0d94a4dc
    sd	$s1,8($sp)
.L0d94a57c:
    # Line 137
    # lw $t9, -32444($gp) # &__glkon_dlist_mem_free
    bal __glkon_dlist_mem_free
    nop
    b	.L0d94a514
    lw	$a4,4($s2)
.L0d94a590:
    ld	$ra,40($sp)
    # Line 144
    ld	$s0,32($sp)
    # Line 135
    li	$v0,-1
    # Line 144
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94a5ac:
    # Line 131
    bal __glkon_dlist_mem_alloc
    move	$a0,$s1
    bgez	$v0,.L0d94a510
    # Line 144
    ld	$gp,16($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    # Line 132
    li	$v0,-1
    # Line 144
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glSdramSbrk

# Function: __glSdramInit
# Declared: Line 148 (Source lines: 149-153)
# Address: 0x0d94a5e0 - 0x0d94a5fc (Size: 28 bytes, Frame: 0)
.ent __glSdramInit
__glSdramInit:
    # Line 152
    sw	$zero,4($a0)
    # Line 151
    sw	$zero,0($a0)
    # Line 150
    sw	$zero,8($a0)
    # Line 153
    li	$v0,1
    # Line 149
    li	$at,1024
    # Line 153
    jr	$ra
    # Line 149
    sw	$at,16($a0)
.end __glSdramInit

# Function: __glSdramMemmove
# Declared: Line 158 (Source lines: 160-162)
# Address: 0x0d94a600 - 0x0d94a61c (Size: 28 bytes, Frame: 0)
.ent __glSdramMemmove
__glSdramMemmove:
    # Line 161
    li	$at,367
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 160
    move	$v0,$a0
    # Line 162
    jr	$ra
    # Line 161
    sw	$a2,16384($zero)
.end __glSdramMemmove

# Function: __glSdramCopyIn
# Declared: Line 166 (Source lines: 167-183)
# Address: 0x0d94a620 - 0x0d94a6b0 (Size: 144 bytes, Frame: 176)
.ent __glSdramCopyIn
__glSdramCopyIn:
    # Line 167
    addiu	$sp,$sp,-176
    # Line 174
    li	$at,1
    # Line 179
    sw	$at,152($sp)
    # Line 171
    sll	$v0,$a2,0x2
    # Line 178
    sw	$v0,36($sp)
    # Line 176
    li	$v1,2
    sw	$v1,28($sp)
    # Line 174
    sw	$at,20($sp)
    # Line 173
    sw	$sp,16($sp)
    # Line 172
    sw	$zero,12($sp)
    # Line 171
    sw	$v0,8($sp)
    sw	$v0,4($sp)
    # Line 177
    sw	$a0,32($sp)
    sd	$ra,160($sp)
    # Line 170
    sw	$a1,0($sp)
    # Line 180
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 175
    li	$a1,456
    sw	$a1,24($sp)
    # Line 180
    addiu	$a2,$sp,16
    li	$a1,10001
    # Line 167
    sd	$s8,168($sp)
    move	$s8,$a0
    # Line 180
    jal	__glKon_ioctl
    lw	$a0,4112($zero)
    bltz	$v0,.L0d94a698
    ld	$ra,160($sp)
.L0d94a688:
    # Line 183
    move	$v0,$s8
    ld	$s8,168($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d94a698:
    # Line 181
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,-7032
    b	.L0d94a688
    ld	$ra,160($sp)
.end __glSdramCopyIn

# Function: __glSdramPushIn
# Declared: Line 187 (Source lines: 188-195)
# Address: 0x0d94a6b0 - 0x0d94a6d4 (Size: 36 bytes, Frame: 0)
.ent __glSdramPushIn
__glSdramPushIn:
    # Line 191
    li	$v1,359
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sll	$at,$a2,0x2
    sw	$at,16384($zero)
    # Line 188
    move	$v0,$a0
    # Line 195
    jr	$ra
    # Line 191
    sw	$zero,16384($zero)
.end __glSdramPushIn

# Function: __glKonSdramInvalidate
# Declared: Line 205 (Source lines: 206-238)
# Address: 0x0d94a6e0 - 0x0d94a810 (Size: 304 bytes, Frame: 208)
.ent __glKonSdramInvalidate
__glKonSdramInvalidate:
    # Line 208
    lw	$a3,20($a1)
    # Line 206
    addiu	$sp,$sp,-80
    sd	$s2,24($sp)
    sd	$s3,32($sp)
    sd	$ra,40($sp)
    sd	$s4,48($sp)
    sd	$s0,56($sp)
    sd	$s1,64($sp)
    sd	$s6,0($sp)
    # Line 209
    lw	$at,28($a1)
    # Line 206
    sd	$s7,16($sp)
    # Line 209
    lw	$s7,4924($a0)
    # Line 206
    move	$s6,$a0
    sd	$s5,8($sp)
    move	$s5,$a1
    # Line 209
    blez	$at,.L0d94a774
    lw	$s7,16($s7)
    addiu	$s3,$s7,64
    move	$s2,$a3
    move	$s4,$zero
.L0d94a730:
    # Line 215
    lw	$s1,4($s2)
    move	$s0,$zero
    nop
    nop
.L0d94a740:
    # Line 218
    # lw $t9, -31016($gp) # &__glDlistFreeBlock
    lw	$a1,0($s2)
    move	$a0,$s3
    jal	__glDlistFreeBlock
    addu	$a1,$a1,$s0
    # Line 221
    addiu	$s1,$s1,-256
    # Line 222
    bgtz	$s1,.L0d94a740
    addiu	$s0,$s0,1024
    # Line 214
    lw	$a2,28($s5)
    addiu	$s4,$s4,1
    slt	$a2,$s4,$a2
    bnez	$a2,.L0d94a730
    addiu	$s2,$s2,8
.L0d94a774:
    # Line 226
    # lw $t9, -30984($gp) # &__glDlistHeapRemove
    addiu	$a1,$s5,60
    jal	__glDlistHeapRemove
    addiu	$a0,$s7,128
    lw	$a1,20($s5)
    beqz	$a1,.L0d94a7a0
    nop
    # Line 229
    lw	$t9,5024($s6)
    jalr	$t9
    move	$a0,$s6
    # Line 230
    sw	$zero,20($s5)
.L0d94a7a0:
    # Line 232
    lw	$a5,32($s5)
    li	$a6,-33
    and	$a5,$a5,$a6
    sw	$a5,32($s5)
    # Line 233
    la	$a4,__glkonSPValidateDlist
    sw	$a4,8($s5)
    lw	$a3,31580($s6)
    andi	$a3,$a3,0x20
    beqz	$a3,.L0d94a7e4
    ld	$s2,24($sp)
    # Line 236
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s6
    li	$a2,-1
    bal __glkon_InitDlistState
    li	$a1,4
    ld	$s2,24($sp)
.L0d94a7e4:
    ld	$s3,32($sp)
    ld	$s6,0($sp)
    ld	$s4,48($sp)
    ld	$s0,56($sp)
    ld	$ra,40($sp)
    ld	$s1,64($sp)
    # Line 238
    move	$v0,$zero
    ld	$s5,8($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glKonSdramInvalidate

# Function: __glKonSdramSwapIn
# Declared: Line 246 (Source lines: 247-315)
# Address: 0x0d94a810 - 0x0d94aa7c (Size: 620 bytes, Frame: 240)
.ent __glKonSdramSwapIn
__glKonSdramSwapIn:
    # Line 250
    lw	$v0,20($a1)
    # Line 247
    addiu	$sp,$sp,-112
    # Line 250
    sd	$v0,64($sp)
    # Line 247
    sd	$s1,32($sp)
    sd	$s8,16($sp)
    sd	$s0,40($sp)
    # Line 267
    lw	$at,24($a1)
    # Line 247
    sd	$s7,48($sp)
    # Line 248
    lw	$s7,4924($a0)
    # Line 267
    # lw $t9, -31024($gp) # &__glDlistPreallocBlocks
    # Line 248
    lw	$s7,16($s7)
    # Line 247
    move	$s0,$a0
    move	$s8,$a1
    # Line 251
    lw	$s1,16($a1)
    # Line 247
    sd	$s6,56($sp)
    # Line 267
    addiu	$a1,$at,-1
    addiu	$s6,$s7,64
    sd	$ra,24($sp)
    jal	__glDlistPreallocBlocks
    move	$a0,$s6
    sd	$s5,96($sp)
    sd	$s4,88($sp)
    beqz	$v0,.L0d94aa4c
    sd	$s3,80($sp)
    # Line 268
    ld	$t8,64($sp)
    beqz	$t8,.L0d94aa28
    sd	$s0,8($sp)
.L0d94a87c:
    # Line 273
    ld	$t9,8($sp)
    lw	$t9,31580($t9)
    andi	$t9,$t9,0x10
    beqz	$t9,.L0d94aa0c
    li	$s4,1
    lw	$ra,32($s8)
    andi	$ra,$ra,0x2
    beqz	$ra,.L0d94aa0c
    nop
    sd	$s2,72($sp)
.L0d94a8a4:
    # Line 277
    sw	$zero,0($sp)
    lw	$at,12($s8)
    beqz	$at,.L0d94aa18
    move	$s2,$at
    b	.L0d94a924
    la	$s3,sub_0d950000
    nop
.L0d94a8c0:
    # Line 288
    lw	$a1,44($s7)
    move	$a0,$s0
    move	$t9,$s3
    li	$a2,253
    subu	$a1,$s2,$a1
    bal __glKonCreateContext
    addiu	$a1,$a1,12
.L0d94a8dc:
    # Line 296
    lw	$a6,0($sp)
    ld	$a4,64($sp)
    sll	$a6,$a6,0x3
    addu	$a6,$a4,$a6
    sw	$s0,0($a6)
    # Line 297
    lw	$a5,0($sp)
    sll	$a5,$a5,0x3
    addu	$a4,$a4,$a5
    sw	$s5,4($a4)
    # Line 277
    lw	$a3,0($sp)
    addiu	$a3,$a3,1
    sw	$a3,0($sp)
    lw	$a2,0($s2)
    # Line 298
    addiu	$s1,$s1,8
    # Line 277
    beqz	$a2,.L0d94a964
    move	$s2,$a2
    nop
    la	$s3,sub_0d950000
.L0d94a924:
    # Line 280
    # lw $t9, -31020($gp) # &__glDlistAllocBlock
    # Line 278
    lw	$s5,4($s1)
    # Line 280
    move	$a0,$s6
    # Line 278
    lw	$s5,0($s5)
    # Line 280
    jal	__glDlistAllocBlock
    # Line 277
    addiu	$s3,$s3,-22864
    # Line 280
    bnez	$s4,.L0d94a8c0
    move	$s0,$v0
    # Line 292
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-23008
    move	$a0,$v0
    li	$a2,253
    bal __glKonCreateContext
    addiu	$a1,$s2,12
    b	.L0d94a8dc
    nop
.L0d94a964:
    # Line 277
    beqz	$s4,.L0d94a980
    ld	$s5,96($sp)
    # Line 302
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
.L0d94a970:
    addiu	$a1,$sp,0
    jal	__glkonim_GetIntegerv
    li	$a0,3024
    ld	$s5,96($sp)
.L0d94a980:
    ld	$s4,88($sp)
    ld	$s3,80($sp)
    # Line 305
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$s0,8($sp)
    ld	$s2,72($sp)
    addiu	$t9,$t9,-23680
    ld	$at,64($sp)
    move	$a0,$s8
    bal __glKonCreateContext
    # Line 304
    sw	$at,20($s8)
    # Line 310
    # lw $t9, -30988($gp) # &__glDlistHeapInsert
    # Line 308
    lw	$at,32($s8)
    # Line 310
    addiu	$a1,$s8,60
    addiu	$a0,$s7,128
    # Line 308
    ori	$at,$at,0x20
    # Line 310
    jal	__glDlistHeapInsert
    # Line 308
    sw	$at,32($s8)
    # Line 310
    lw	$v0,31580($s0)
    andi	$v0,$v0,0x20
    beqz	$v0,.L0d94a9e8
    # Line 313
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s0
    li	$a2,1
    bal __glkon_InitDlistState
    li	$a1,4
.L0d94a9e8:
    # Line 315
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    ld	$s6,56($sp)
    li	$v0,1
    ld	$s7,48($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d94aa0c:
    # Line 273
    move	$s4,$zero
    b	.L0d94a8a4
    sd	$s2,72($sp)
.L0d94aa18:
    # Line 277
    bnez	$s4,.L0d94a970
    # Line 302
    nop	# was lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    b	.L0d94a980
    ld	$s5,96($sp)
.L0d94aa28:
    # Line 271
    ld	$t9,8($sp)
    lw	$a1,24($s8)
    move	$a0,$t9
    lw	$t9,0($t9)
    sll	$a1,$a1,0x3
    jal	__glkonim_GetIntegerv
    addiu	$a1,$a1,-8
    b	.L0d94a87c
    sd	$v0,64($sp)
.L0d94aa4c:
    # Line 315
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    move	$s3,$s3
    move	$s4,$s4
    ld	$s6,56($sp)
    move	$s5,$s5
    # Line 268
    move	$v0,$zero
    # Line 315
    ld	$s7,48($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glKonSdramSwapIn

# Function: __glKonSdramForceSwapIn
# Declared: Line 324 (Source lines: 325-384)
# Address: 0x0d94aa80 - 0x0d94abc4 (Size: 324 bytes, Frame: 48)
.ent __glKonSdramForceSwapIn
__glKonSdramForceSwapIn:
    # Line 327
    lw	$at,32($a1)
    # Line 325
    addiu	$sp,$sp,-48
    # Line 327
    lw	$a3,4924($a0)
    andi	$at,$at,0x20
    sd	$ra,32($sp)
    beqz	$at,.L0d94aaac
    lw	$a3,16($a3)
.L0d94aa9c:
    ld	$ra,32($sp)
.L0d94aaa0:
    # Line 382
    li	$v0,1
    # Line 384
    jr	$ra
    addiu	$sp,$sp,48
.L0d94aaac:
    # Line 327
    addiu	$v0,$a3,128
    sd	$v0,8($sp)
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    # Line 335
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d94aac0:
    addiu	$t9,$t9,-22512
    ld	$a0,16($sp)
    bal __glKonCreateContext
    ld	$a1,24($sp)
    beqz	$v0,.L0d94ab18
    ld	$ra,24($sp)
    lw	$ra,32($ra)
    andi	$ra,$ra,0x2
    beqz	$ra,.L0d94ab08
    # Line 344
    nop	# was lw $t9, -30980($gp) # &__glDlistHeapPriorityChanged
    # Line 343
    ld	$a1,24($sp)
    lwc1	$f0,_lit_3a83126f
    # Line 344
    ld	$a0,16($sp)
    # Line 343
    swc1	$f0,48($a1)
    # Line 344
    lw	$a0,4924($a0)
    addiu	$a1,$a1,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
.L0d94ab08:
    ld	$ra,32($sp)
    # Line 347
    li	$v0,1
    # Line 384
    jr	$ra
    addiu	$sp,$sp,48
.L0d94ab18:
    # Line 357
    # lw $t9, -30992($gp) # &__glDlistHeapQueryMin
    jal	__glDlistHeapQueryMin
    ld	$a0,8($sp)
    lw	$a4,8($v0)
    # Line 358
    beqz	$a4,.L0d94ab44
    ld	$a1,24($sp)
    lwc1	$f2,60($a4)
    lwc1	$f1,60($a1)
    c.le.s	$f1,$f2
    bc1f	.L0d94ab64
    sd	$a4,0($sp)
.L0d94ab44:
    ld	$a2,24($sp)
    lw	$a2,32($a2)
    andi	$a2,$a2,0x20
    # Line 381
    bnez	$a2,.L0d94aa9c
    ld	$ra,32($sp)
    # Line 384
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0d94ab64:
    # Line 373
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-22816
    ld	$a0,16($sp)
    bal __glKonCreateContext
    ld	$a1,0($sp)
    # Line 375
    ld	$a3,0($sp)
    lw	$ra,32($a3)
    lwc1	$f3,60($a3)
    andi	$ra,$ra,0x2
    beqz	$ra,.L0d94aba8
    swc1	$f3,48($a3)
    # Line 377
    ld	$a0,16($sp)
    # lw $t9, -30980($gp) # &__glDlistHeapPriorityChanged
    lw	$a0,4924($a0)
    addiu	$a1,$a3,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
.L0d94aba8:
    ld	$a1,24($sp)
    lw	$a1,32($a1)
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d94aac0
    # Line 335
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    b	.L0d94aaa0
    ld	$ra,32($sp)
.end __glKonSdramForceSwapIn

# Function: __glLockedMemoryInit
# Declared: Line 401 (Source lines: 401-433)
# Address: 0x0d94abd0 - 0x0d94ad18 (Size: 328 bytes, Frame: 32)
.ent __glLockedMemoryInit
__glLockedMemoryInit:
    # Line 409
    # lw $t9, -18552($gp) # &sysconf
    # Line 401
    addiu	$sp,$sp,-32
    sd	$a0,16($sp)
    sd	$ra,24($sp)
    # Line 409
    jal	sysconf
    li	$a0,11
    # Line 412
    la	$a0,.rodata
    # lw $t9, -18568($gp) # &open
    # Line 409
    ld	$a2,16($sp)
    # Line 412
    li	$a1,2
    # Line 409
    sw	$v0,16($a2)
    # Line 412
    jal	open
    addiu	$a0,$a0,-7016
    li	$a3,-1
    beq	$v0,$a3,.L0d94aca0
    sd	$v0,8($sp)
    # Line 415
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-7000
    bnez	$v0,.L0d94ac88
    # Line 416
    nop	# was lw $t9, -18548($gp) # &atoi
    # Line 418
    lui	$a1,0x80
    ld	$a2,16($sp)
    sw	$a1,12($a2)
.L0d94ac34:
    # Line 419
    # lw $t9, -18564($gp) # &mmap
    move	$a0,$zero
    move	$a5,$zero
    li	$a3,257
    ld	$a4,8($sp)
    jal	mmap
    li	$a2,3
    li	$a3,-1
    beq	$a3,$v0,.L0d94ad00
    sd	$v0,0($sp)
    # Line 425
    # lw $t9, -18544($gp) # &close
    jal	close
    ld	$a0,8($sp)
    beqz	$v0,.L0d94acb0
    # Line 431
    la	$a0,.rodata
    # Line 433
    ld	$ra,24($sp)
    # Line 425
    move	$v0,$zero
    # Line 433
    jr	$ra
    addiu	$sp,$sp,32
.L0d94ac80:
    jr	$ra
    addiu	$sp,$sp,32
.L0d94ac88:
    # Line 416
    jalr	$t9
    move	$a0,$v0
    ld	$a5,16($sp)
    move	$a1,$v0
    b	.L0d94ac34
    sw	$v0,12($a5)
.L0d94aca0:
    # Line 433
    ld	$ra,24($sp)
    # Line 413
    move	$v0,$zero
    # Line 433
    jr	$ra
    addiu	$sp,$sp,32
.L0d94acb0:
    # Line 426
    ld	$a2,16($sp)
    # Line 427
    ld	$a1,0($sp)
    # Line 428
    sw	$zero,4($a2)
    # Line 431
    # lw $t9, -18588($gp) # &getenv
    # Line 427
    sw	$a1,0($a2)
    # Line 426
    sw	$zero,8($a2)
    # Line 429
    sb	$zero,0($a1)
    # Line 431
    jal	getenv
    addiu	$a0,$a0,-6984
    beqz	$v0,.L0d94acf8
    ld	$ra,24($sp)
    # Line 432
    # lw $t9, -18540($gp) # &strtol
    move	$a0,$v0
    move	$a1,$zero
    jal	strtol
    move	$a2,$zero
    ld	$ra,24($sp)
    sw	$v0,-16520($gp)
.L0d94acf8:
    b	.L0d94ac80
    # Line 433
    li	$v0,1
.L0d94ad00:
    # Line 422
    # lw $t9, -18584($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-16392
    ld	$ra,24($sp)
    # Line 423
    b	.L0d94ac80
    move	$v0,$zero
.end __glLockedMemoryInit

# Function: __glLockedMemoryFree
# Declared: Line 437 (Source lines: 437-441)
# Address: 0x0d94ad20 - 0x0d94ad60 (Size: 64 bytes, Frame: 16)
.ent __glLockedMemoryFree
__glLockedMemoryFree:
    # Line 439
    # lw $t9, -18536($gp) # &munmap
    lw	$a1,12($a0)
    # Line 437
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 439
    jal	munmap
    lw	$a0,0($a0)
    bltz	$v0,.L0d94ad50
    # Line 440
    nop	# was lw $t9, -18584($gp) # &perror
    ld	$ra,0($sp)
.L0d94ad44:
    # Line 441
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d94ad50:
    # Line 440
    jal	perror
    addiu	$a0,$gp,-16384
    b	.L0d94ad44
    ld	$ra,0($sp)
.end __glLockedMemoryFree

# Function: __glLockedMemorySbrk
# Declared: Line 445 (Source lines: 446-529)
# Address: 0x0d94ad60 - 0x0d94b01c (Size: 700 bytes, Frame: 224)
.ent __glLockedMemorySbrk
__glLockedMemorySbrk:
    # Line 446
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    # Line 454
    lw	$a6,8($a1)
    # Line 459
    lw	$a7,4($a1)
    # Line 446
    move	$s1,$a1
    # Line 459
    lw	$a5,0($a1)
    # Line 446
    lui	$at,0x14
    sd	$s0,56($sp)
    addiu	$at,$at,25208
    # Line 460
    addu	$s0,$a7,$a0
    # Line 456
    lw	$a4,4112($zero)
    # Line 459
    addu	$a5,$a7,$a5
    # Line 454
    move	$v0,$a6
    sd	$gp,40($sp)
    # Line 460
    beqz	$a0,.L0d94aeac
    # Line 446
    addu	$gp,$t9,$at
    # Line 460
    bltz	$a0,.L0d94aeb4
    # Line 466
    subu	$t3,$a7,$a6
    blez	$a0,.L0d94af8c
    lw	$a7,-16520($gp)
    slt	$a7,$a7,$s0
    bnez	$a7,.L0d94aea4
    nop
    # Line 470
    lw	$t0,12($a1)
    slt	$t0,$t0,$s0
    bnez	$t0,.L0d94aef0
    # Line 500
    move	$a1,$zero
.L0d94adcc:
    slt	$t1,$v0,$s0
    beqz	$t1,.L0d94ae04
    nop
    nop
    nop
.L0d94ade0:
    # Line 506
    lw	$a2,0($s1)
    addu	$a2,$v0,$a2
    sw	$zero,0($a2)
    # Line 507
    lw	$v0,8($s1)
    lw	$v1,16($s1)
    addu	$v0,$v0,$v1
    slt	$t2,$v0,$s0
    bnez	$t2,.L0d94ade0
    sw	$v0,8($s1)
.L0d94ae04:
    # Line 510
    sw	$s0,4($s1)
    # Line 513
    lw	$a3,31580($a4)
    andi	$a3,$a3,0x10
    beqz	$a3,.L0d94ae78
    nop
    bnez	$a1,.L0d94ae30
    nop
.L0d94ae20:
    bnez	$a6,.L0d94ae78
    nop
    beqz	$a0,.L0d94ae78
    sd	$a4,32($sp)
.L0d94ae30:
    sd	$ra,88($sp)
    sd	$a4,32($sp)
    # Line 516
    li	$a6,1
    sw	$a6,12($sp)
    # Line 515
    sw	$zero,8($sp)
    sd	$a5,72($sp)
    # Line 517
    lw	$a5,0($s1)
    sw	$a5,0($sp)
    # Line 521
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 519
    lw	$a4,12($s1)
    # Line 521
    addiu	$a2,$sp,0
    ld	$a0,32($sp)
    li	$a1,10018
    jal	__glKon_ioctl
    # Line 519
    sw	$a4,4($sp)
    ld	$ra,88($sp)
    # Line 521
    bltz	$v0,.L0d94afe0
    ld	$a5,72($sp)
.L0d94ae78:
    # Line 529
    ld	$gp,40($sp)
.L0d94ae7c:
    move	$v0,$a5
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d94ae90:
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d94aea4:
    # Line 470
    b	.L0d94ae90
    li	$v0,-1
.L0d94aeac:
    # Line 460
    b	.L0d94ae04
    move	$a1,$zero
.L0d94aeb4:
    # Line 466
    lw	$t1,16($a1)
    mtc1	$t3,$f0
    mtc1	$t1,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$t2,$f0
    mult	$t1,$t2
    mflo	$t0
    teq	$t1,$zero,0x7
    addu	$t0,$a6,$t0
    sw	$t0,8($a1)
    b	.L0d94ae04
    move	$a1,$zero
.L0d94aef0:
    sd	$a6,64($sp)
    sd	$a5,72($sp)
    sd	$a0,80($sp)
    # Line 481
    # lw $t9, -18568($gp) # &open
    la	$a0,.rodata
    sd	$a4,32($sp)
    li	$a1,2
    sd	$ra,88($sp)
    jal	open
    addiu	$a0,$a0,-7016
    ld	$ra,88($sp)
    bltz	$v0,.L0d94affc
    sd	$v0,24($sp)
    # Line 484
    lw	$a6,0($s1)
    # Line 485
    # lw $t9, -18564($gp) # &mmap
    move	$a5,$zero
    li	$a3,257
    # Line 484
    lw	$a0,12($s1)
    # Line 485
    ld	$a4,24($sp)
    li	$a2,3
    lui	$a1,0x40
    # Line 484
    addu	$a0,$a0,$a6
    # Line 485
    jal	mmap
    # Line 484
    sd	$a0,16($sp)
    # Line 485
    li	$a7,-1
    beq	$v0,$a7,.L0d94b004
    # Line 489
    ld	$t0,16($sp)
    beq	$v0,$t0,.L0d94afa8
    # Line 500
    nop	# was lw $t9, -18544($gp) # &close
    # Line 493
    # lw $t9, -18536($gp) # &munmap
    move	$a0,$v0
    jal	munmap
    lui	$a1,0x40
    # Line 494
    # lw $t9, -18544($gp) # &close
    jal	close
    ld	$a0,24($sp)
    ld	$ra,88($sp)
    # Line 495
    b	.L0d94ae90
    li	$v0,-1
.L0d94af8c:
    # Line 510
    sw	$s0,4($a1)
    # Line 513
    lw	$t1,31580($a4)
    andi	$t1,$t1,0x10
    bnez	$t1,.L0d94ae20
    nop
    b	.L0d94ae7c
    # Line 529
    ld	$gp,40($sp)
.L0d94afa8:
    # Line 498
    lw	$t2,12($s1)
    # Line 500
    ld	$a0,24($sp)
    # Line 498
    lui	$t3,0x40
    addu	$t2,$t2,$t3
    # Line 500
    jalr	$t9
    # Line 498
    sw	$t2,12($s1)
    ld	$ra,88($sp)
    ld	$a0,80($sp)
    ld	$a4,32($sp)
    ld	$a5,72($sp)
    ld	$a6,64($sp)
    # Line 500
    li	$a1,1
    b	.L0d94adcc
    lw	$v0,8($s1)
.L0d94afe0:
    # Line 522
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,-6960
    ld	$ra,88($sp)
    # Line 523
    b	.L0d94ae90
    li	$v0,-1
.L0d94affc:
    # Line 482
    b	.L0d94ae90
    li	$v0,-1
.L0d94b004:
    # Line 488
    # lw $t9, -18544($gp) # &close
    jal	close
    ld	$a0,24($sp)
    ld	$ra,88($sp)
    # Line 489
    b	.L0d94ae90
    li	$v0,-1
.end __glLockedMemorySbrk

# Function: __glLockedMemoryMemmove
# Declared: Line 534 (Source lines: 536-543)
# Address: 0x0d94b020 - 0x0d94b054 (Size: 52 bytes, Frame: 16)
.ent __glLockedMemoryMemmove
__glLockedMemoryMemmove:
    # Line 536
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,24504
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 543
    # lw $t9, -18532($gp) # &memmove
    # Line 536
    sd	$ra,0($sp)
    # Line 543
    jal	memmove
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glLockedMemoryMemmove

# Function: __glKonExecuteLDMA
# Declared: Line 548 (Source lines: 549-565)
# Address: 0x0d94b060 - 0x0d94b080 (Size: 32 bytes, Frame: 0)
.ent __glKonExecuteLDMA
__glKonExecuteLDMA:
    # Line 549
    lw	$v0,20($a1)
    # Line 560
    li	$v1,365
    sw	$v1,16384($zero)
    # Line 556
    lw	$at,4($v0)
    # Line 555
    lw	$v0,0($v0)
    # Line 560
    sw	$v0,16384($zero)
    # Line 565
    jr	$ra
    # Line 560
    sw	$at,16384($zero)
.end __glKonExecuteLDMA

# Function: __glKonExecuteLDMAn
# Declared: Line 569 (Source lines: 570-588)
# Address: 0x0d94b080 - 0x0d94b0ec (Size: 108 bytes, Frame: 0)
.ent __glKonExecuteLDMAn
__glKonExecuteLDMAn:
    # Line 571
    lw	$a3,28($a1)
    # Line 572
    li	$a6,368
    addiu	$a4,$a3,7
    li	$a5,8
    # Line 570
    lw	$a2,20($a1)
    # Line 572
    srl	$a4,$a4,0x3
    nop
    # Line 587
    addiu	$a4,$a4,-1
.L0d94b0a0:
    # Line 578
    sltiu	$a7,$a3,8
    # Line 579
    sw	$a6,16384($zero)
    # Line 578
    move	$a1,$a3
    xori	$a7,$a7,0x1
    # Line 586
    addiu	$a3,$a3,-8
    # Line 578
    movn	$a1,$a5,$a7
    # Line 579
    sw	$a1,16384($zero)
    nop
.L0d94b0c0:
    # Line 582
    lw	$t0,4($a2)
    # Line 583
    lw	$t1,0($a2)
    # Line 585
    addiu	$a1,$a1,-1
    # Line 583
    sw	$t1,16384($zero)
    # Line 584
    addiu	$a2,$a2,8
    # Line 585
    bnez	$a1,.L0d94b0c0
    # Line 583
    sw	$t0,16384($zero)
    # Line 587
    bnez	$a4,.L0d94b0a0
    addiu	$a4,$a4,-1
    # Line 588
    jr	$ra
    nop
.end __glKonExecuteLDMAn

# Function: __glKonExecuteIDMA
# Declared: Line 592 (Source lines: 593-606)
# Address: 0x0d94b0f0 - 0x0d94b128 (Size: 56 bytes, Frame: 0)
.ent __glKonExecuteIDMA
__glKonExecuteIDMA:
    # Line 594
    lw	$a3,28($a1)
    li	$a4,366
    # Line 593
    lw	$a2,20($a1)
    nop
.L0d94b100:
    # Line 598
    lw	$at,4($a2)
    # Line 597
    lw	$v0,0($a2)
    # Line 603
    sw	$a4,16384($zero)
    # Line 605
    addiu	$a3,$a3,-1
    # Line 603
    sw	$v0,16384($zero)
    # Line 604
    addiu	$a2,$a2,8
    # Line 605
    bnez	$a3,.L0d94b100
    # Line 603
    sw	$at,16384($zero)
    # Line 606
    jr	$ra
    nop
.end __glKonExecuteIDMA

# Function: __glKonExecuteIDMAn
# Declared: Line 610 (Source lines: 611-630)
# Address: 0x0d94b130 - 0x0d94b19c (Size: 108 bytes, Frame: 0)
.ent __glKonExecuteIDMAn
__glKonExecuteIDMAn:
    # Line 612
    lw	$a3,28($a1)
    # Line 613
    li	$a6,369
    addiu	$a4,$a3,3
    li	$a5,4
    # Line 611
    lw	$a2,20($a1)
    # Line 613
    srl	$a4,$a4,0x2
    nop
    # Line 629
    addiu	$a4,$a4,-1
.L0d94b150:
    # Line 620
    sltiu	$a7,$a3,4
    # Line 621
    sw	$a6,16384($zero)
    # Line 620
    move	$a1,$a3
    xori	$a7,$a7,0x1
    # Line 628
    addiu	$a3,$a3,-4
    # Line 620
    movn	$a1,$a5,$a7
    # Line 621
    sw	$a1,16384($zero)
    nop
.L0d94b170:
    # Line 624
    lw	$t0,4($a2)
    # Line 625
    lw	$t1,0($a2)
    # Line 627
    addiu	$a1,$a1,-1
    # Line 625
    sw	$t1,16384($zero)
    # Line 626
    addiu	$a2,$a2,8
    # Line 627
    bnez	$a1,.L0d94b170
    # Line 625
    sw	$t0,16384($zero)
    # Line 629
    bnez	$a4,.L0d94b150
    addiu	$a4,$a4,-1
    # Line 630
    jr	$ra
    nop
.end __glKonExecuteIDMAn

# Function: __glkonAdjustPlist
# Declared: Line 633 (Source lines: 634-650)
# Address: 0x0d94b1a0 - 0x0d94b244 (Size: 164 bytes, Frame: 0)
.ent __glkonAdjustPlist
__glkonAdjustPlist:
    # Line 635
    lw	$a4,28($a1)
    # Line 642
    li	$a7,1
    lw	$a3,4924($a0)
    slt	$a5,$a4,$a7
    movz	$a7,$a4,$a5
    lw	$a3,16($a3)
    andi	$a6,$a7,0x3
    # Line 634
    lw	$a5,20($a1)
    sra	$t1,$a7,0x2
    beqz	$a6,.L0d94b1e8
    # Line 642
    lw	$a3,44($a3)
.L0d94b1cc:
    addiu	$a6,$a6,-1
    # Line 647
    lw	$t0,0($a5)
    # Line 649
    addiu	$a4,$a4,-1
    # Line 648
    addiu	$a5,$a5,8
    # Line 647
    subu	$t0,$t0,$a3
    bnez	$a6,.L0d94b1cc
    sw	$t0,-8($a5)
.L0d94b1e8:
    move	$a1,$a5
    beqz	$t1,.L0d94b23c
    move	$a2,$a4
    nop
    nop
    nop
.L0d94b200:
    # Line 648
    addiu	$a1,$a1,32
    # Line 647
    lw	$t9,-8($a1)
    lw	$t8,-16($a1)
    subu	$t9,$t9,$a3
    sw	$t9,-8($a1)
    subu	$t8,$t8,$a3
    sw	$t8,-16($a1)
    lw	$t3,-24($a1)
    # Line 649
    addiu	$a2,$a2,-4
    # Line 647
    lw	$t2,-32($a1)
    subu	$t3,$t3,$a3
    sw	$t3,-24($a1)
    subu	$t2,$t2,$a3
    # Line 649
    bnez	$a2,.L0d94b200
    # Line 647
    sw	$t2,-32($a1)
.L0d94b23c:
    # Line 650
    jr	$ra
    nop
.end __glkonAdjustPlist

# Function: __glkonim_ListParameterfvSGIX
# Declared: Line 659 (Source lines: 661-707)
# Address: 0x0d94b250 - 0x0d94b3a4 (Size: 340 bytes, Frame: 48)
.globl __glkonim_ListParameterfvSGIX
.ent __glkonim_ListParameterfvSGIX
__glkonim_ListParameterfvSGIX:
    # Line 661
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    # Line 677
    dmtc1	$zero,$f0
    # Line 665
    lw	$s1,4112($zero)
    # Line 677
    mtc1	$zero,$f1
    # Line 669
    li	$a4,0x8182
    # Line 665
    lw	$at,4120($zero)
    sd	$ra,40($sp)
    li	$v1,1
    # Line 661
    lui	$a3,0x14
    move	$v0,$a0
    sd	$s0,32($sp)
    addiu	$a0,$a3,23944
    sd	$gp,16($sp)
    # Line 665
    beq	$at,$v1,.L0d94b380
    # Line 661
    addu	$gp,$t9,$a0
    # Line 665
    beqz	$v0,.L0d94b394
    # Line 668
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 669
    beq	$a1,$a4,.L0d94b2b4
    # Line 680
    lwc1	$f2,_lit_3f800000
    # Line 673
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d94b36c
    ld	$ra,40($sp)
.L0d94b2b4:
    # Line 677
    lwc1	$f4,0($a2)
    cvt.d.s	$f5,$f4
    c.lt.d	$f5,$f0
    bc1f	.L0d94b2d0
    # Line 680
    ldc1	$f3,_lit8_3ff0000000000000
    # Line 677
    b	.L0d94b2dc
    sdc1	$f1,0($sp)
.L0d94b2d0:
    # Line 680
    c.lt.d $f3,$f5
    movt.s	$f4,$f2,$fcc1
    sdc1	$f4,0($sp)
.L0d94b2dc:
    # Line 684
    # lw $t9, -27532($gp) # &__glNamesLockData
    # Line 683
    lw	$a5,4924($s1)
    # Line 684
    lw	$a1,4928($s1)
    move	$a2,$v0
    # Line 683
    lw	$a5,16($a5)
    # Line 684
    move	$a0,$s1
    jal	__glNamesLockData
    sd	$a5,8($sp)
    # Line 694
    ldc1	$f4,0($sp)
    # Line 684
    beqz	$v0,.L0d94b368
    move	$s0,$v0
    # Line 694
    lw	$v0,32($v0)
    swc1	$f4,60($s0)
    andi	$a6,$v0,0x2
    # Line 693
    swc1	$f4,48($s0)
    # Line 694
    beqz	$a6,.L0d94b338
    # Line 692
    swc1	$f4,44($s0)
    # Line 697
    # lw $t9, -30980($gp) # &__glDlistHeapPriorityChanged
    lw	$a0,4924($s1)
    addiu	$a1,$s0,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
    lw	$v0,32($s0)
.L0d94b338:
    andi	$a1,$v0,0x20
    beqz	$a1,.L0d94b35c
    # Line 706
    nop	# was lw $t9, -27524($gp) # &__glNamesUnlockData
    # Line 702
    # lw $t9, -30980($gp) # &__glDlistHeapPriorityChanged
    ld	$a0,8($sp)
    addiu	$a1,$s0,60
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,128
    # Line 706
    # lw $t9, -27524($gp) # &__glNamesUnlockData
.L0d94b35c:
    move	$a0,$s1
    jal	__glNamesUnlockData
    move	$a1,$s0
.L0d94b368:
    ld	$ra,40($sp)
.L0d94b36c:
    ld	$s0,32($sp)
    # Line 707
    ld	$gp,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94b380:
    # Line 665
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d94b36c
    ld	$ra,40($sp)
.L0d94b394:
    # Line 668
    jalr	$t9
    li	$a0,1281
    b	.L0d94b36c
    ld	$ra,40($sp)
.end __glkonim_ListParameterfvSGIX

# Function: __glkonim_ListParameterfSGIX
# Declared: Line 709 (Source lines: 711-713)
# Address: 0x0d94b3b0 - 0x0d94b3e8 (Size: 56 bytes, Frame: 48)
.globl __glkonim_ListParameterfSGIX
.ent __glkonim_ListParameterfSGIX
__glkonim_ListParameterfSGIX:
    # Line 711
    lui	$at,0x14
    addiu	$sp,$sp,-48
    addiu	$at,$at,23592
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 712
    # lw $t9, -32560($gp) # &__glkonim_ListParameterfvSGIX
    # Line 711
    sd	$ra,0($sp)
    # Line 712
    addiu	$a2,$sp,32
    bal __glkonim_ListParameterfvSGIX
    # Line 711
    swc1	$f14,32($sp)
    ld	$ra,0($sp)
    # Line 713
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_ListParameterfSGIX

# Function: __glkonim_ListParameterivSGIX
# Declared: Line 716 (Source lines: 718-764)
# Address: 0x0d94b3f0 - 0x0d94b538 (Size: 328 bytes, Frame: 48)
.globl __glkonim_ListParameterivSGIX
.ent __glkonim_ListParameterivSGIX
__glkonim_ListParameterivSGIX:
    # Line 718
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 722
    lw	$s1,4112($zero)
    # Line 718
    move	$a5,$a2
    # Line 722
    lw	$at,4120($zero)
    sd	$ra,40($sp)
    li	$a6,1
    # Line 718
    lui	$v1,0x14
    move	$v0,$a0
    sd	$s0,32($sp)
    addiu	$v1,$v1,23528
    sd	$gp,24($sp)
    # Line 722
    beq	$at,$a6,.L0d94b514
    # Line 718
    addu	$gp,$t9,$v1
    # Line 722
    beqz	$a0,.L0d94b528
    # Line 725
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 726
    li	$a0,0x8182
    beq	$a1,$a0,.L0d94b44c
    # Line 730
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d94b500
    ld	$ra,40($sp)
.L0d94b44c:
    # Line 741
    lw	$a1,4928($s1)
    # Line 734
    lw	$t0,0($a2)
    # Line 740
    lw	$a5,4924($s1)
    # Line 734
    move	$a3,$zero
    # Line 741
    # lw $t9, -27532($gp) # &__glNamesLockData
    # Line 737
    slt	$a7,$a6,$t0
    slti	$a4,$t0,0
    # Line 740
    lw	$a5,16($a5)
    # Line 737
    movz	$a6,$t0,$a7
    # Line 741
    move	$a2,$v0
    # Line 740
    sd	$a5,0($sp)
    movz	$a3,$a6,$a4
    # Line 741
    move	$a0,$s1
    jal	__glNamesLockData
    sd	$a3,8($sp)
    # Line 749
    ld	$t2,8($sp)
    # Line 741
    beqz	$v0,.L0d94b4fc
    move	$s0,$v0
    # Line 749
    mtc1	$t2,$f0
    cvt.s.w	$f0,$f0
    # Line 751
    lw	$v0,32($v0)
    andi	$t1,$v0,0x2
    swc1	$f0,60($s0)
    # Line 750
    swc1	$f0,48($s0)
    # Line 751
    beqz	$t1,.L0d94b4cc
    # Line 749
    swc1	$f0,44($s0)
    # Line 754
    # lw $t9, -30980($gp) # &__glDlistHeapPriorityChanged
    lw	$a0,4924($s1)
    addiu	$a1,$s0,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
    lw	$v0,32($s0)
.L0d94b4cc:
    andi	$a1,$v0,0x20
    beqz	$a1,.L0d94b4f0
    # Line 763
    nop	# was lw $t9, -27524($gp) # &__glNamesUnlockData
    # Line 759
    # lw $t9, -30980($gp) # &__glDlistHeapPriorityChanged
    ld	$a0,0($sp)
    addiu	$a1,$s0,60
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,128
    # Line 763
    # lw $t9, -27524($gp) # &__glNamesUnlockData
.L0d94b4f0:
    move	$a0,$s1
    jal	__glNamesUnlockData
    move	$a1,$s0
.L0d94b4fc:
    ld	$ra,40($sp)
.L0d94b500:
    ld	$s0,32($sp)
    # Line 764
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94b514:
    # Line 722
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d94b500
    ld	$ra,40($sp)
.L0d94b528:
    # Line 725
    jalr	$t9
    li	$a0,1281
    b	.L0d94b500
    ld	$ra,40($sp)
.end __glkonim_ListParameterivSGIX

# Function: __glkonim_ListParameteriSGIX
# Declared: Line 767 (Source lines: 769-771)
# Address: 0x0d94b540 - 0x0d94b578 (Size: 56 bytes, Frame: 48)
.globl __glkonim_ListParameteriSGIX
.ent __glkonim_ListParameteriSGIX
__glkonim_ListParameteriSGIX:
    # Line 769
    lui	$at,0x14
    addiu	$sp,$sp,-48
    addiu	$at,$at,23192
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 770
    # lw $t9, -32552($gp) # &__glkonim_ListParameterivSGIX
    # Line 769
    sw	$a2,36($sp)
    sd	$ra,0($sp)
    # Line 770
    bal __glkonim_ListParameterivSGIX
    addiu	$a2,$sp,36
    ld	$ra,0($sp)
    # Line 771
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_ListParameteriSGIX

# Function: __glkonim_GetListParameterfvSGIX
# Declared: Line 776 (Source lines: 778-797)
# Address: 0x0d94b580 - 0x0d94b648 (Size: 200 bytes, Frame: 32)
.globl __glkonim_GetListParameterfvSGIX
.ent __glkonim_GetListParameterfvSGIX
__glkonim_GetListParameterfvSGIX:
    # Line 784
    li	$a4,0x8182
    # Line 778
    addiu	$sp,$sp,-32
    # Line 780
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v1,1
    # Line 778
    lui	$a3,0x14
    move	$v0,$a0
    sd	$ra,24($sp)
    addiu	$a0,$a3,23128
    sd	$gp,16($sp)
    # Line 780
    beq	$at,$v1,.L0d94b624
    # Line 778
    addu	$gp,$t9,$a0
    # Line 780
    beqz	$v0,.L0d94b638
    # Line 783
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$a2,0($sp)
    # Line 784
    beq	$a1,$a4,.L0d94b5e0
    sd	$a5,8($sp)
    # Line 788
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d94b5d4:
    # Line 797
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94b5e0:
    # Line 792
    # lw $t9, -27532($gp) # &__glNamesLockData
    ld	$a1,8($sp)
    move	$a2,$v0
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4928($a1)
    beqz	$v0,.L0d94b5d4
    ld	$ra,24($sp)
    # Line 796
    ld	$a2,0($sp)
    # lw $t9, -27524($gp) # &__glNamesUnlockData
    # Line 795
    lwc1	$f0,44($v0)
    # Line 796
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glNamesUnlockData
    # Line 795
    swc1	$f0,0($a2)
    b	.L0d94b5d4
    ld	$ra,24($sp)
.L0d94b624:
    # Line 780
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d94b5d4
    ld	$ra,24($sp)
.L0d94b638:
    # Line 783
    jalr	$t9
    li	$a0,1281
    b	.L0d94b5d4
    ld	$ra,24($sp)
.end __glkonim_GetListParameterfvSGIX

# Function: __glkonim_GetListParameterivSGIX
# Declared: Line 799 (Source lines: 801-820)
# Address: 0x0d94b650 - 0x0d94b71c (Size: 204 bytes, Frame: 32)
.globl __glkonim_GetListParameterivSGIX
.ent __glkonim_GetListParameterivSGIX
__glkonim_GetListParameterivSGIX:
    # Line 807
    li	$a4,0x8182
    # Line 801
    addiu	$sp,$sp,-32
    # Line 803
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v1,1
    # Line 801
    lui	$a3,0x14
    move	$v0,$a0
    sd	$ra,24($sp)
    addiu	$a0,$a3,22920
    sd	$gp,16($sp)
    # Line 803
    beq	$at,$v1,.L0d94b6f8
    # Line 801
    addu	$gp,$t9,$a0
    # Line 803
    beqz	$v0,.L0d94b70c
    # Line 806
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$a2,0($sp)
    # Line 807
    beq	$a1,$a4,.L0d94b6b0
    sd	$a5,8($sp)
    # Line 811
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
.L0d94b6a4:
    # Line 820
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94b6b0:
    # Line 815
    # lw $t9, -27532($gp) # &__glNamesLockData
    ld	$a1,8($sp)
    move	$a2,$v0
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4928($a1)
    beqz	$v0,.L0d94b6a4
    ld	$ra,24($sp)
    # Line 818
    lwc1	$f0,44($v0)
    # Line 819
    # lw $t9, -27524($gp) # &__glNamesUnlockData
    ld	$a2,0($sp)
    ld	$a0,8($sp)
    # Line 818
    trunc.w.s	$f0,$f0
    # Line 819
    move	$a1,$v0
    jal	__glNamesUnlockData
    # Line 818
    swc1	$f0,0($a2)
    b	.L0d94b6a4
    ld	$ra,24($sp)
.L0d94b6f8:
    # Line 803
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d94b6a4
    ld	$ra,24($sp)
.L0d94b70c:
    # Line 806
    jalr	$t9
    li	$a0,1281
    b	.L0d94b6a4
    ld	$ra,24($sp)
.end __glkonim_GetListParameterivSGIX

# Function: __glKonLockedMemorySwapOut
# Declared: Line 826 (Source lines: 827-899)
# Address: 0x0d94b720 - 0x0d94b880 (Size: 352 bytes, Frame: 208)
.ent __glKonLockedMemorySwapOut
__glKonLockedMemorySwapOut:
    # Line 827
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    # Line 829
    lw	$s0,16($a0)
    sd	$s2,40($sp)
    # Line 827
    sd	$s4,16($sp)
    # Line 836
    lw	$at,24($a0)
    # Line 827
    sd	$s5,32($sp)
    # Line 834
    lw	$s5,4112($zero)
    # Line 827
    sd	$s6,8($sp)
    # Line 836
    addiu	$at,$at,-1
    lw	$s6,4924($s5)
    # Line 827
    move	$s4,$a0
    sd	$s3,48($sp)
    # Line 836
    move	$s3,$zero
    blez	$at,.L0d94b870
    lw	$s6,16($s6)
    move	$s2,$zero
    sd	$ra,56($sp)
    b	.L0d94b7ac
    sd	$s1,64($sp)
.L0d94b770:
    # Line 861
    sw	$s1,0($s2)
.L0d94b774:
    # Line 866
    # lw $t9, -31008($gp) # &__glDlistTransientBlock
    lw	$a1,4($s0)
    move	$a0,$s6
    jal	__glDlistTransientBlock
    addiu	$a1,$a1,-8
    # Line 871
    addiu	$a3,$s1,8
    sw	$a3,4($s0)
    # Line 845
    lw	$a2,24($s4)
    addiu	$s3,$s3,1
    addiu	$a2,$a2,-1
    slt	$a2,$s3,$a2
    # Line 883
    addiu	$s0,$s0,8
    # Line 845
    beqz	$a2,.L0d94b7e8
    # Line 882
    move	$s2,$s1
.L0d94b7ac:
    # Line 853
    lw	$t9,0($s5)
    move	$a0,$s5
    jalr	$t9
    li	$a1,1024
    # Line 856
    # lw $t9, -18532($gp) # &memmove
    # Line 853
    move	$s1,$v0
    # Line 856
    lw	$a1,4($s0)
    move	$a0,$v0
    li	$a2,1024
    jal	memmove
    addiu	$a1,$a1,-8
    bnez	$s2,.L0d94b770
    nop
    b	.L0d94b774
    # Line 863
    sw	$s1,12($s4)
.L0d94b7e8:
    # Line 845
    move	$v0,$s1
.L0d94b7ec:
    # Line 885
    sw	$zero,0($v0)
    # Line 888
    # lw $t9, -30984($gp) # &__glDlistHeapRemove
    lw	$a0,4924($s5)
    addiu	$a1,$s4,48
    jal	__glDlistHeapRemove
    addiu	$a0,$a0,4
    # Line 893
    la	$a2,__glkonSPValidateDlist
    # Line 892
    lw	$a3,32($s4)
    li	$a4,-3
    # Line 893
    sw	$a2,8($s4)
    # Line 892
    and	$a3,$a3,$a4
    sw	$a3,32($s4)
    # Line 893
    lw	$a1,31580($s5)
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d94b848
    ld	$s2,40($sp)
    # Line 896
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s5
    li	$a2,-1
    bal __glkon_InitDlistState
    li	$a1,5
    ld	$s2,40($sp)
.L0d94b848:
    ld	$s3,48($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$ra,56($sp)
    ld	$s0,24($sp)
    # Line 899
    li	$v0,1
    ld	$s1,64($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94b870:
    # Line 845
    lw	$v0,0($sp)
    sd	$ra,56($sp)
    b	.L0d94b7ec
    sd	$s1,64($sp)
.end __glKonLockedMemorySwapOut

# Function: __glKonLockedMemoryForceSwapIn
# Declared: Line 903 (Source lines: 903-932)
# Address: 0x0d94b880 - 0x0d94b958 (Size: 216 bytes, Frame: 32)
.ent __glKonLockedMemoryForceSwapIn
__glKonLockedMemoryForceSwapIn:
    # Line 903
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    addiu	$t9,$t9,-18080
    sd	$ra,16($sp)
    # Line 908
    bal __glkonim_GetListParameterivSGIX
    # Line 903
    sd	$a1,8($sp)
    # Line 908
    beqz	$v0,.L0d94b8b0
    # Line 932
    ld	$ra,16($sp)
    # Line 908
    li	$v0,1
    # Line 932
    jr	$ra
    addiu	$sp,$sp,32
.L0d94b8b0:
    # Line 908
    ld	$ra,8($sp)
    lw	$ra,32($ra)
    andi	$ra,$ra,0x2
    beqz	$ra,.L0d94b8d0
.L0d94b8c0:
    # Line 932
    ld	$ra,16($sp)
.L0d94b8c4:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0d94b8d0:
    # Line 915
    ld	$a0,0($sp)
.L0d94b8d4:
    # lw $t9, -30992($gp) # &__glDlistHeapQueryMin
    lw	$a0,4924($a0)
    jal	__glDlistHeapQueryMin
    addiu	$a0,$a0,4
    lw	$a0,8($v0)
    # Line 918
    beqz	$a0,.L0d94b8c0
    ld	$a1,8($sp)
    lwc1	$f1,48($a0)
    lwc1	$f0,48($a1)
    c.le.s	$f0,$f1
    bc1t	.L0d94b8c4
    # Line 932
    ld	$ra,16($sp)
    # Line 927
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-18656
    bal __glkonim_GetListParameterivSGIX
    nop
    # Line 929
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-18080
    ld	$a0,0($sp)
    bal __glkonim_GetListParameterivSGIX
    ld	$a1,8($sp)
    beqz	$v0,.L0d94b93c
    # Line 932
    ld	$ra,16($sp)
    # Line 929
    li	$v0,1
    # Line 932
    jr	$ra
    addiu	$sp,$sp,32
.L0d94b93c:
    # Line 929
    ld	$ra,8($sp)
    lw	$ra,32($ra)
    andi	$ra,$ra,0x2
    beqz	$ra,.L0d94b8d4
    # Line 915
    ld	$a0,0($sp)
    b	.L0d94b8c4
    # Line 932
    ld	$ra,16($sp)
.end __glKonLockedMemoryForceSwapIn

# Function: __glKonLockedMemorySwapIn
# Declared: Line 955 (Source lines: 956-1040)
# Address: 0x0d94b960 - 0x0d94bba4 (Size: 580 bytes, Frame: 208)
.ent __glKonLockedMemorySwapIn
__glKonLockedMemorySwapIn:
    # Line 956
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    # Line 960
    lw	$s0,16($a1)
    # Line 956
    sd	$s3,8($sp)
    sd	$s5,32($sp)
    sd	$s6,16($sp)
    # Line 974
    lw	$at,24($a1)
    # Line 956
    sd	$s7,40($sp)
    # Line 964
    lw	$s7,4924($a0)
    # Line 974
    # lw $t9, -31024($gp) # &__glDlistPreallocBlocks
    # Line 956
    move	$s6,$a0
    # Line 964
    lw	$s7,16($s7)
    # Line 956
    move	$s5,$a1
    # Line 959
    lw	$s3,20($a1)
    # Line 974
    addiu	$a1,$at,-1
    sd	$ra,48($sp)
    jal	__glDlistPreallocBlocks
    move	$a0,$s7
    beqz	$v0,.L0d94bb10
    nop
.L0d94b9b0:
    # Line 988
    lw	$t8,24($s5)
    addiu	$t8,$t8,-1
    blez	$t8,.L0d94ba70
    # Line 992
    lw	$a0,4($sp)
    sd	$s4,72($sp)
    # Line 988
    move	$s4,$zero
    sd	$s2,64($sp)
    move	$s2,$zero
    b	.L0d94ba28
    sd	$s1,56($sp)
    nop
    nop
.L0d94b9e0:
    # Line 1004
    sw	$s1,0($s2)
.L0d94b9e4:
    # Line 1009
    lw	$t9,5024($s6)
    move	$a0,$s6
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1011
    addiu	$t9,$s1,8
    beqz	$s3,.L0d94ba0c
    sw	$t9,4($s0)
    # Line 1016
    addiu	$ra,$s1,12
    # Line 1018
    addiu	$s3,$s3,8
    # Line 1016
    sw	$ra,-8($s3)
.L0d94ba0c:
    # Line 992
    lw	$at,24($s5)
    addiu	$s4,$s4,1
    addiu	$at,$at,-1
    slt	$at,$s4,$at
    # Line 1021
    move	$s2,$s1
    # Line 992
    beqz	$at,.L0d94ba60
    # Line 1022
    addiu	$s0,$s0,8
.L0d94ba28:
    # Line 997
    # lw $t9, -31020($gp) # &__glDlistAllocBlock
    jal	__glDlistAllocBlock
    move	$a0,$s7
    # Line 1000
    # lw $t9, -18532($gp) # &memmove
    # Line 997
    move	$s1,$v0
    # Line 1000
    lw	$a1,4($s0)
    move	$a0,$v0
    li	$a2,1024
    jal	memmove
    addiu	$a1,$a1,-8
    bnez	$s2,.L0d94b9e0
    nop
    b	.L0d94b9e4
    # Line 1006
    sw	$s1,12($s5)
.L0d94ba60:
    ld	$s2,64($sp)
    ld	$s4,72($sp)
    # Line 992
    move	$a0,$s1
    ld	$s1,56($sp)
.L0d94ba70:
    # Line 1025
    beqz	$s3,.L0d94bb74
    sw	$zero,0($a0)
    # Line 1029
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d94ba7c:
    addiu	$t9,$t9,-23680
    bal __glKonCreateContext
    move	$a0,$s5
    # Line 1030
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-20064
    move	$a0,$s6
    bal __glKonCreateContext
    move	$a1,$s5
    # Line 1033
    lw	$a1,32($s5)
    # Line 1034
    # lw $t9, -30988($gp) # &__glDlistHeapInsert
    # Line 1033
    ori	$a1,$a1,0x2
    sw	$a1,32($s5)
    # Line 1034
    lw	$a0,4924($s6)
    addiu	$a1,$s5,48
    jal	__glDlistHeapInsert
    addiu	$a0,$a0,4
    lw	$a2,31580($s6)
    andi	$a2,$a2,0x20
    beqz	$a2,.L0d94bae0
    # Line 1038
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s6
    li	$a2,1
    bal __glkon_InitDlistState
    li	$a1,5
.L0d94bae0:
    # Line 1040
    ld	$s0,24($sp)
    ld	$s3,8($sp)
    ld	$ra,48($sp)
    ld	$s5,32($sp)
    li	$v0,1
    ld	$s6,16($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94bb04:
    ld	$ra,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94bb10:
    # Line 974
    lw	$ra,40($s7)
    sltiu	$ra,$ra,32
    bnez	$ra,.L0d94bb8c
    # Line 988
    move	$v0,$zero
    # Line 983
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glkonim_GetIntegerv
    li	$a0,3024
    # Line 984
    # lw $t9, -31004($gp) # &__glDlistFreeTransient
    jal	__glDlistFreeTransient
    move	$a0,$s7
    # Line 985
    # lw $t9, -31024($gp) # &__glDlistPreallocBlocks
    lw	$a1,24($s5)
    move	$a0,$s7
    jal	__glDlistPreallocBlocks
    addiu	$a1,$a1,-1
    bnez	$v0,.L0d94b9b0
    nop
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s5,32($sp)
    ld	$s7,40($sp)
    # Line 986
    b	.L0d94bb04
    move	$v0,$zero
.L0d94bb74:
    # Line 1026
    # lw $t9, -30640($gp) # &__glSPCreatePlist
    move	$a0,$s6
    jal	__glSPCreatePlist
    move	$a1,$s5
    b	.L0d94ba7c
    # Line 1029
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
.L0d94bb8c:
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s5,32($sp)
    # Line 988
    b	.L0d94bb04
    ld	$s7,40($sp)
.end __glKonLockedMemorySwapIn

# Function: __glkonSwapOutList
# Declared: Line 1081 (Source lines: 1082-1146)
# Address: 0x0d94bbb0 - 0x0d94bd70 (Size: 448 bytes, Frame: 192)
.ent __glkonSwapOutList
__glkonSwapOutList:
    # Line 1082
    addiu	$sp,$sp,-64
    sd	$s4,8($sp)
    # Line 1087
    lw	$s4,4112($zero)
    # Line 1089
    lw	$a1,5076($s4)
    andi	$at,$a1,0x2
    beqz	$at,.L0d94bd48
    # Line 1101
    move	$v0,$a0
    # Line 1089
    beqz	$a0,.L0d94bd4c
    # Line 1090
    li	$t3,-3
    sd	$s5,56($sp)
    # Line 1100
    lw	$s5,5084($s4)
    sd	$s3,48($sp)
    # Line 1099
    lw	$s3,5080($s4)
    sd	$s1,32($sp)
    sd	$s0,0($sp)
    sd	$ra,24($sp)
    sd	$s2,40($sp)
    # Line 1101
    move	$s2,$zero
    b	.L0d94bc14
    sd	$s6,16($sp)
.L0d94bc00:
    # Line 1119
    addiu	$s3,$s3,8
    # Line 1120
    addiu	$s5,$s5,-1
    # Line 1118
    sw	$v0,-4($s3)
.L0d94bc0c:
    # Line 1125
    beqz	$s6,.L0d94bc80
    move	$v0,$s6
.L0d94bc14:
    # Line 1106
    lw	$t9,0($s4)
    # Line 1104
    move	$s1,$v0
    # Line 1106
    li	$a1,1024
    move	$a0,$s4
    jalr	$t9
    # Line 1104
    lw	$s6,0($v0)
    # Line 1108
    # lw $t9, -18532($gp) # &memmove
    # Line 1106
    move	$s0,$v0
    # Line 1108
    move	$a0,$v0
    move	$a1,$s1
    jal	memmove
    li	$a2,1024
    # Line 1109
    lw	$t9,5032($s4)
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s1
    beqz	$s2,.L0d94bc78
    nop
    # Line 1113
    sw	$s0,0($s2)
.L0d94bc60:
    # Line 1117
    beqz	$s3,.L0d94bc0c
    # Line 1123
    move	$s2,$s0
    # Line 1117
    bgtz	$s5,.L0d94bc00
    # Line 1118
    addiu	$v0,$s0,8
    b	.L0d94bc0c
    nop
.L0d94bc78:
    b	.L0d94bc60
    # Line 1115
    sw	$s0,5004($s4)
.L0d94bc80:
    ld	$s2,40($sp)
    ld	$s6,16($sp)
    # Line 1145
    li	$t1,-3
    ld	$ra,24($sp)
    # Line 1125
    blez	$s5,.L0d94bd64
    move	$a0,$s5
    andi	$v0,$s5,0x3
    subu	$a5,$s0,$s1
    beqz	$v0,.L0d94bcc4
    sra	$a1,$a0,0x2
.L0d94bca8:
    addiu	$v0,$v0,-1
    # Line 1133
    lw	$v1,4($s3)
    # Line 1136
    addiu	$s5,$s5,-1
    # Line 1135
    addiu	$s3,$s3,8
    # Line 1133
    addu	$v1,$a5,$v1
    bnez	$v0,.L0d94bca8
    sw	$v1,-4($s3)
.L0d94bcc4:
    beqz	$a1,.L0d94bd0c
    move	$a4,$s3
    move	$a1,$s5
.L0d94bcd0:
    # Line 1135
    addiu	$a4,$a4,32
    # Line 1133
    lw	$a7,-4($a4)
    lw	$a6,-12($a4)
    addu	$a7,$a5,$a7
    sw	$a7,-4($a4)
    addu	$a6,$a5,$a6
    sw	$a6,-12($a4)
    lw	$a3,-20($a4)
    # Line 1136
    addiu	$a1,$a1,-4
    # Line 1133
    lw	$a2,-28($a4)
    addu	$a3,$a5,$a3
    sw	$a3,-20($a4)
    addu	$a2,$a5,$a2
    # Line 1136
    bnez	$a1,.L0d94bcd0
    # Line 1133
    sw	$a2,-28($a4)
.L0d94bd0c:
    ld	$s5,56($sp)
    ld	$s3,48($sp)
    ld	$s1,32($sp)
    # Line 1141
    sw	$s0,4140($zero)
    # Line 1142
    lw	$t2,4144($zero)
    # Line 1146
    ld	$s0,0($sp)
    # Line 1142
    addu	$t2,$a5,$t2
    sw	$t2,4144($zero)
    # Line 1145
    lw	$t0,5076($s4)
    # Line 1146
    lw	$v0,5004($s4)
    # Line 1145
    and	$t0,$t0,$t1
    sw	$t0,5076($s4)
    # Line 1146
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d94bd48:
    # Line 1090
    li	$t3,-3
.L0d94bd4c:
    # Line 1091
    move	$v0,$a0
    # Line 1090
    and	$t3,$a1,$t3
    sw	$t3,5076($s4)
    # Line 1146
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d94bd64:
    # Line 1136
    subu	$a5,$s0,$s1
    b	.L0d94bd0c
    nop
.end __glkonSwapOutList

# Function: __glkonSPBalloc
# Declared: Line 1152 (Source lines: 1152-1200)
# Address: 0x0d94bd70 - 0x0d94be9c (Size: 300 bytes, Frame: 48)
.ent __glkonSPBalloc
__glkonSPBalloc:
    # Line 1152
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    # Line 1154
    lw	$v0,5076($a0)
    li	$v1,3
    # Line 1152
    sd	$s0,24($sp)
    lui	$t8,0x14
    # Line 1154
    lw	$s0,4924($a0)
    andi	$at,$v0,0x3
    # Line 1152
    sd	$a0,16($sp)
    addiu	$a0,$t8,21096
    addu	$gp,$t9,$a0
    # Line 1154
    beq	$at,$v1,.L0d94be50
    lw	$s0,16($s0)
.L0d94bdac:
    # Line 1166
    andi	$a5,$v0,0x2
    beqz	$a5,.L0d94be70
    # Line 1174
    ld	$t9,16($sp)
    lw	$a6,40($s0)
    sltiu	$a6,$a6,32
    beqz	$a6,.L0d94bdf0
    # Line 1185
    nop	# was lw $t9, -31020($gp) # &__glDlistAllocBlock
.L0d94bdc8:
    jal	__glDlistAllocBlock
    move	$a0,$s0
    li	$a7,-1
    ld	$ra,40($sp)
    # Line 1200
    ld	$s0,24($sp)
    # Line 1185
    beq	$v0,$a7,.L0d94be14
    move	$a1,$v0
    # Line 1200
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94bdf0:
    # Line 1180
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    jal	__glkonim_GetIntegerv
    li	$a0,3024
    # Line 1181
    # lw $t9, -31004($gp) # &__glDlistFreeTransient
    jal	__glDlistFreeTransient
    move	$a0,$s0
    b	.L0d94bdc8
    # Line 1185
    nop	# was lw $t9, -31020($gp) # &__glDlistAllocBlock
.L0d94be14:
    # Line 1199
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a0,16($sp)
    addiu	$t9,$t9,-17488
    bal __glkonim_GetListParameterivSGIX
    lw	$a0,5004($a0)
    # Line 1200
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d950000
    li	$a1,1024
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94be50:
    # Line 1166
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a0,16($sp)
    addiu	$t9,$t9,-17488
    bal __glkonim_GetListParameterivSGIX
    lw	$a0,5004($a0)
    ld	$v0,16($sp)
    b	.L0d94bdac
    lw	$v0,5076($v0)
.L0d94be70:
    # Line 1174
    ld	$a1,8($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    lw	$a1,0($a1)
    jal	sub_0d950000
    sll	$a1,$a1,0x2
    ld	$ra,40($sp)
    # Line 1200
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonSPBalloc

# Function: __glkonSPBfree
# Declared: Line 1204 (Source lines: 1204-1217)
# Address: 0x0d94bea0 - 0x0d94bf20 (Size: 128 bytes, Frame: 48)
.ent __glkonSPBfree
__glkonSPBfree:
    # Line 1204
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$s3,24($sp)
    lui	$v0,0x14
    # Line 1205
    lw	$at,4924($a0)
    # Line 1204
    addiu	$v0,$v0,20792
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1209
    # lw $t9, -31012($gp) # &__glDlistIsBlock
    # Line 1205
    lw	$at,16($at)
    # Line 1204
    move	$s3,$a1
    sd	$ra,16($sp)
    # Line 1205
    sd	$at,8($sp)
    # Line 1209
    jal	__glDlistIsBlock
    move	$a0,$at
    beqz	$v0,.L0d94bf04
    # Line 1210
    nop	# was lw $t9, -31008($gp) # &__glDlistTransientBlock
    ld	$a0,8($sp)
    jal	__glDlistTransientBlock
    move	$a1,$s3
    ld	$ra,16($sp)
.L0d94bef4:
    ld	$s3,24($sp)
    # Line 1217
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94bf04:
    # Line 1215
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,5024($t9)
    jalr	$t9
    move	$a1,$s3
    b	.L0d94bef4
    ld	$ra,16($sp)
.end __glkonSPBfree

# Function: __glkonDlistNewArray
# Declared: Line 1224 (Source lines: 1225-1280)
# Address: 0x0d94bf20 - 0x0d94c04c (Size: 300 bytes, Frame: 48)
.globl __glkonDlistNewArray
.ent __glkonDlistNewArray
__glkonDlistNewArray:
    # Line 1225
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    sd	$ra,8($sp)
    lui	$at,0x14
    sd	$gp,16($sp)
    addiu	$at,$at,20664
    addu	$gp,$t9,$at
    # Line 1228
    lw	$t9,5016($a0)
    # Line 1225
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s2,0($sp)
    move	$s2,$a1
    # Line 1228
    li	$a1,140
    jalr	$t9
    sd	$s8,40($sp)
    # Line 1230
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-21552
    # Line 1228
    move	$s0,$v0
    # Line 1230
    addiu	$s8,$v0,44
    # Line 1228
    sw	$v0,16($s2)
    # Line 1230
    bal __glKonCreateContext
    move	$a0,$s8
    # Line 1235
    la	$a3,sub_0d950000
    move	$a0,$s1
    # lw $t9, -31032($gp) # &__glDlistBlockStateInit
    move	$a5,$s0
    move	$a4,$s8
    la	$a2,sub_0d950000
    li	$a1,1024
    addiu	$a3,$a3,-20448
    jal	__glDlistBlockStateInit
    addiu	$a2,$a2,-21152
    # Line 1246
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-23072
    addiu	$s8,$s0,108
    bal __glKonCreateContext
    move	$a0,$s8
    # Line 1250
    la	$a3,sub_0d950000
    move	$a0,$s1
    # lw $t9, -31032($gp) # &__glDlistBlockStateInit
    addiu	$a5,$s0,64
    move	$a4,$s8
    la	$a2,sub_0d950000
    li	$a1,1024
    addiu	$a3,$a3,-23040
    jal	__glDlistBlockStateInit
    addiu	$a2,$a2,-23456
    # Line 1264
    # lw $t9, -31000($gp) # &__glDlistHeapInit
    jal	__glDlistHeapInit
    addiu	$a0,$s2,4
    # Line 1270
    # lw $t9, -31000($gp) # &__glDlistHeapInit
    jal	__glDlistHeapInit
    addiu	$a0,$s0,128
    lw	$a4,31580($s1)
    andi	$a4,$a4,0x20
    beqz	$a4,.L0d94c020
    ld	$s2,0($sp)
    # Line 1275
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s1
    move	$a2,$zero
    bal __glkon_InitDlistState
    li	$a1,6
    ld	$s2,0($sp)
.L0d94c020:
    ld	$s0,32($sp)
    ld	$s8,40($sp)
    # Line 1279
    la	$v0,__glkonle_Push
    # Line 1278
    la	$at,__glkon_spop
    # Line 1280
    ld	$gp,16($sp)
    ld	$ra,8($sp)
    # Line 1279
    sw	$v0,5048($s1)
    # Line 1278
    sw	$at,5044($s1)
    # Line 1280
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonDlistNewArray

# Function: __glkonDlistFreeArray
# Declared: Line 1283 (Source lines: 1284-1298)
# Address: 0x0d94c050 - 0x0d94c110 (Size: 192 bytes, Frame: 48)
.globl __glkonDlistFreeArray
.ent __glkonDlistFreeArray
__glkonDlistFreeArray:
    # Line 1284
    addiu	$sp,$sp,-48
    sd	$s2,0($sp)
    lui	$at,0x14
    sd	$s0,8($sp)
    addiu	$at,$at,20360
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1287
    # lw $t9, -31004($gp) # &__glDlistFreeTransient
    # Line 1286
    lw	$s0,16($a1)
    # Line 1284
    move	$s2,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    # Line 1287
    jal	__glDlistFreeTransient
    move	$a0,$s0
    # Line 1288
    # lw $t9, -31028($gp) # &__glDlistBlockStateFree
    move	$a0,$s1
    jal	__glDlistBlockStateFree
    move	$a1,$s0
    # Line 1289
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-21216
    bal __glKonCreateContext
    addiu	$a0,$s0,44
    # Line 1290
    # lw $t9, -31028($gp) # &__glDlistBlockStateFree
    move	$a0,$s1
    jal	__glDlistBlockStateFree
    addiu	$a1,$s0,64
    # Line 1291
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-23472
    bal __glKonCreateContext
    addiu	$a0,$s0,108
    # Line 1292
    # lw $t9, -30996($gp) # &__glDlistHeapFree
    jal	__glDlistHeapFree
    addiu	$a0,$s0,128
    # Line 1293
    lw	$t9,5024($s1)
    ld	$s0,8($sp)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,16($s2)
    # Line 1296
    # lw $t9, -30996($gp) # &__glDlistHeapFree
    ld	$s1,24($sp)
    jal	__glDlistHeapFree
    addiu	$a0,$s2,4
    ld	$ra,16($sp)
    ld	$s2,0($sp)
    # Line 1298
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonDlistFreeArray

# Function: __glkonDlistOptimizer
# Declared: Line 1301 (Source lines: 1303-1303)
# Address: 0x0d94c110 - 0x0d94c118 (Size: 8 bytes, Frame: 0)
.globl __glkonDlistOptimizer
.ent __glkonDlistOptimizer
__glkonDlistOptimizer:
    # Line 1303
    jr	$ra
    nop
.end __glkonDlistOptimizer

# Function: __glkonPadBlocks
# Declared: Line 1308 (Source lines: 1309-1348)
# Address: 0x0d94c120 - 0x0d94c214 (Size: 244 bytes, Frame: 0)
.ent __glkonPadBlocks
__glkonPadBlocks:
    # Line 1309
    li	$t1,472
    li	$t0,474
    li	$a3,473
    li	$a7,252
    b	.L0d94c158
    lw	$a4,12($a0)
    nop
    nop
.L0d94c140:
    # Line 1336
    addiu	$a2,$a2,-2
    # Line 1335
    addiu	$a1,$a1,8
    # Line 1336
    beqz	$a2,.L0d94c204
    # Line 1334
    sw	$t1,-8($a1)
.L0d94c150:
    # Line 1341
    sw	$t0,0($a1)
.L0d94c154:
    # Line 1346
    lw	$a4,0($a4)
.L0d94c158:
    # Line 1315
    lw	$at,0($a4)
    beqz	$at,.L0d94c20c
    nop
    # Line 1319
    lw	$a1,8($a4)
    # Line 1321
    subu	$a2,$a7,$a1
    # Line 1319
    sll	$a1,$a1,0x2
    # Line 1321
    slti	$a5,$a2,4
    addiu	$a6,$a2,3
    # Line 1319
    addu	$a1,$a4,$a1
    # Line 1321
    bnez	$a5,.L0d94c1f0
    # Line 1319
    addiu	$a1,$a1,12
    # Line 1321
    slt	$t2,$a2,$zero
    movz	$a6,$a2,$t2
    sra	$a6,$a6,0x2
    andi	$a5,$a6,0x7
    beqz	$a5,.L0d94c1b0
    sra	$t3,$a6,0x3
.L0d94c19c:
    addiu	$a5,$a5,-1
    # Line 1328
    addiu	$a1,$a1,16
    # Line 1329
    addiu	$a2,$a2,-4
    bnez	$a5,.L0d94c19c
    # Line 1327
    sw	$a3,-16($a1)
.L0d94c1b0:
    beqz	$t3,.L0d94c1f0
    nop
    nop
    nop
.L0d94c1c0:
    # Line 1328
    addiu	$a1,$a1,128
    # Line 1327
    sw	$a3,-16($a1)
    sw	$a3,-32($a1)
    sw	$a3,-48($a1)
    sw	$a3,-64($a1)
    sw	$a3,-80($a1)
    # Line 1329
    addiu	$a2,$a2,-32
    # Line 1327
    sw	$a3,-96($a1)
    # Line 1329
    slti	$t8,$a2,4
    # Line 1327
    sw	$a3,-112($a1)
    # Line 1329
    beqz	$t8,.L0d94c1c0
    # Line 1327
    sw	$a3,-128($a1)
.L0d94c1f0:
    # Line 1329
    slti	$t9,$a2,2
    beqz	$t9,.L0d94c140
    nop
    # Line 1336
    bnez	$a2,.L0d94c150
    nop
.L0d94c204:
    b	.L0d94c154
    # Line 1343
    sw	$a3,0($a1)
.L0d94c20c:
    # Line 1348
    jr	$ra
    nop
.end __glkonPadBlocks

# Function: __glkonSPPostCompiler
# Declared: Line 1356 (Source lines: 1357-1393)
# Address: 0x0d94c220 - 0x0d94c340 (Size: 288 bytes, Frame: 32)
.globl __glkonSPPostCompiler
.ent __glkonSPPostCompiler
__glkonSPPostCompiler:
    # Line 1367
    sw	$a1,68($a1)
    # Line 1365
    sw	$a1,56($a1)
    # Line 1357
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    sd	$s0,0($sp)
    sd	$s1,8($sp)
    # Line 1367
    lw	$a3,32($a1)
    # Line 1357
    move	$s1,$a1
    move	$s0,$a0
    # Line 1364
    lwc1	$f0,44($a1)
    sd	$gp,16($sp)
    # Line 1357
    lui	$v0,0x14
    # Line 1367
    andi	$at,$a3,0x1
    # Line 1357
    addiu	$v0,$v0,19896
    # Line 1366
    swc1	$f0,60($a1)
    # Line 1372
    andi	$v1,$a3,0x2
    # Line 1364
    swc1	$f0,48($a1)
    # Line 1367
    beqz	$at,.L0d94c2f0
    # Line 1357
    addu	$gp,$t9,$v0
    # Line 1372
    beqz	$v1,.L0d94c298
    # Line 1377
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-17488
    bal __glkonim_GetListParameterivSGIX
    lw	$a0,5004($a0)
    # Line 1378
    lw	$at,32($s1)
    li	$v0,-3
    and	$at,$at,$v0
    sw	$at,32($s1)
    # Line 1379
    lw	$ra,5004($s0)
    sw	$ra,12($s1)
.L0d94c298:
    lw	$v1,31580($s0)
.L0d94c29c:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0d94c2c4
    # Line 1384
    lw	$ra,-15912($gp)
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s0
    lw	$a2,32($s1)
    bal __glkon_InitDlistState
    li	$a1,1
    lw	$ra,-15912($gp)
.L0d94c2c4:
    beqz	$ra,.L0d94c2dc
    ld	$ra,24($sp)
    lw	$at,32($s1)
    andi	$at,$at,0x1
    beqz	$at,.L0d94c328
    ld	$ra,24($sp)
.L0d94c2dc:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 1393
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94c2f0:
    # Line 1370
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-16096
    bal __glkonDlistOptimizer
    move	$a0,$a1
    lw	$ra,32($s1)
    andi	$ra,$ra,0x2
    beqz	$ra,.L0d94c298
    # Line 1372
    nop	# was lw $t9, -30988($gp) # &__glDlistHeapInsert
    lw	$a0,4924($s0)
    addiu	$a1,$s1,48
    jal	__glDlistHeapInsert
    addiu	$a0,$a0,4
    b	.L0d94c29c
    # Line 1379
    lw	$v1,31580($s0)
.L0d94c328:
    # Line 1391
    # lw $t9, -32496($gp) # &__glkonSPValidateOnlyDlist
    move	$a0,$s0
    bal __glkonSPValidateOnlyDlist
    move	$a1,$s1
    b	.L0d94c2dc
    ld	$ra,24($sp)
.end __glkonSPPostCompiler

# Function: __glkon_DlistInit
# Declared: Line 1396 (Source lines: 1396-1416)
# Address: 0x0d94c340 - 0x0d94c39c (Size: 92 bytes, Frame: 16)
.ent __glkon_DlistInit
__glkon_DlistInit:
    # Line 1400
    sw	$zero,4148($zero)
    # Line 1399
    sw	$zero,4144($zero)
    # Line 1398
    sw	$zero,4136($zero)
    # Line 1397
    sw	$zero,4140($zero)
    # Line 1411
    li	$v0,2
    sw	$v0,5076($a0)
    # Line 1404
    sw	$zero,5084($a0)
    # Line 1396
    lui	$at,0x14
    # Line 1403
    sw	$zero,5080($a0)
    # Line 1396
    addiu	$sp,$sp,-16
    addiu	$at,$at,19608
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1415
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    # Line 1402
    sw	$zero,5072($a0)
    # Line 1401
    sw	$zero,5068($a0)
    # Line 1396
    sd	$ra,0($sp)
    # Line 1415
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 1416
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_DlistInit

# Function: __glkon_InitDlistState
# Declared: Line 1419 (Source lines: 1419-1447)
# Address: 0x0d94c3a0 - 0x0d94c46c (Size: 204 bytes, Frame: 16)
.globl __glkon_InitDlistState
.ent __glkon_InitDlistState
__glkon_InitDlistState:
    # Line 1434
    sw	$zero,4972($a0)
    # Line 1432
    sw	$zero,4964($a0)
    # Line 1431
    sw	$zero,4960($a0)
    # Line 1430
    sw	$zero,4956($a0)
    # Line 1428
    sw	$zero,4948($a0)
    # Line 1419
    addiu	$sp,$sp,-16
    lui	$t8,0x14
    sd	$ra,0($sp)
    addiu	$t8,$t8,19512
    sd	$gp,8($sp)
    addu	$gp,$t9,$t8
    # Line 1423
    la	$v0,__glSPDlistCompiler
    # Line 1424
    la	$v1,__glkonSPPostCompiler
    # Line 1425
    la	$a1,__glkonDlistNewArray
    # Line 1426
    la	$a2,__glkonDlistFreeArray
    # Line 1427
    la	$a3,__glkonDlistOptimizer
    # Line 1433
    la	$a5,__glkonSPFreeDlist
    # Line 1435
    la	$a6,__glkonSPValidateDlist
    # Line 1440
    la	$t2,__glkon_spop
    # Line 1441
    la	$t3,__glkonle_Push
    sw	$t3,5048($a0)
    # Line 1440
    sw	$t2,5044($a0)
    # Line 1435
    sw	$a6,4976($a0)
    # Line 1433
    sw	$a5,4968($a0)
    # Line 1427
    sw	$a3,4940($a0)
    # Line 1426
    sw	$a2,4936($a0)
    # Line 1425
    sw	$a1,4932($a0)
    # Line 1424
    sw	$v1,5036($a0)
    # Line 1423
    sw	$v0,4944($a0)
    # Line 1443
    la	$at,.rodata
    # Line 1429
    la	$a4,sub_0d950000
    # Line 1436
    la	$a7,sub_0d950000
    # Line 1438
    la	$t1,sub_0d950000
    # Line 1437
    la	$t0,sub_0d950000
    # Line 1438
    addiu	$t1,$t1,-14352
    sw	$t1,5040($a0)
    # Line 1443
    # lw $t9, -18588($gp) # &getenv
    # Line 1437
    addiu	$t0,$t0,-16736
    sw	$t0,5032($a0)
    # Line 1436
    addiu	$a7,$a7,-17040
    sw	$a7,5028($a0)
    # Line 1429
    addiu	$a4,$a4,-15552
    sw	$a4,4952($a0)
    # Line 1443
    jal	getenv
    addiu	$a0,$at,-6944
    ld	$ra,0($sp)
    sltu	$t9,$zero,$v0
    sw	$t9,-15912($gp)
    # Line 1447
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_InitDlistState

# Function: __glkonDlistMemUsage
# Declared: Line 1449 (Source lines: 1450-1514)
# Address: 0x0d94c470 - 0x0d94c7ec (Size: 892 bytes, Frame: 32)
.ent __glkonDlistMemUsage
__glkonDlistMemUsage:
    # Line 1458
    la	$a7,.rodata
    # Line 1450
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 1458
    li	$at,1
    # Line 1452
    lw	$s0,4924($a0)
    sd	$ra,16($sp)
    # Line 1458
    addiu	$a7,$a7,8536
    beq	$a1,$at,.L0d94c6c8
    # Line 1452
    lw	$s0,16($s0)
    # Line 1458
    li	$t8,2
    beq	$a1,$t8,.L0d94c72c
    li	$at,6
    li	$t9,4
    beq	$a1,$t9,.L0d94c780
    nop
    li	$ra,5
    beq	$a1,$ra,.L0d94c7a4
    # Line 1478
    nop	# was lw $t9, -32620($gp) # &.rodata
    # Line 1458
    beq	$a1,$at,.L0d94c7c4
    lw	$a2,1104($a7)
    la	$v0,__iob
    addiu	$v0,$v0,32
    beqz	$a2,.L0d94c538
    sd	$v0,0($sp)
    # Line 1487
    lw	$a3,1116($a7)
    mtc1	$a3,$f0
    ldc1	$f4,_lit8_4059000000000000
    mtc1	$a2,$f3
    cvt.d.w	$f0,$f0
    cvt.d.w	$f3,$f3
    mul.d	$f0,$f0,$f4
    div.d	$f0,$f0,$f3
    lw	$a4,1108($a7)
    mtc1	$a4,$f1
    cvt.d.w	$f1,$f1
    mul.d	$f1,$f1,$f4
    div.d	$f1,$f1,$f3
    lw	$a5,1112($a7)
    mtc1	$a5,$f2
    cvt.d.w	$f2,$f2
    mul.d	$f2,$f2,$f4
    div.d	$f2,$f2,$f3
    # lw $t9, -18560($gp) # &fprintf
    la	$a1,.rodata
    dmfc1	$a5,$f2
    dmfc1	$a4,$f1
    ld	$a0,0($sp)
    addiu	$a1,$a1,-6920
    jal	fprintf
    dmfc1	$a3,$f0
.L0d94c538:
    lw	$a7,4($s0)
    beqz	$a7,.L0d94c5f8
    nop
    # Line 1494
    lw	$a6,28($s0)
    dsll32	$a5,$a7,0x0
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f5
    dsrl32	$a5,$a5,0x0
    ldc1	$f3,_lit8_4059000000000000
    dmtc1	$a5,$f6
    cvt.d.l	$f5,$f5
    cvt.d.l	$f6,$f6
    mul.d	$f5,$f5,$f3
    div.d	$f5,$f5,$f6
    # Line 1495
    lw	$a4,40($s0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f4
    cvt.d.l	$f4,$f4
    mul.d	$f4,$f4,$f3
    div.d	$f4,$f4,$f6
    # Line 1497
    lw	$a3,0($s0)
    multu	$a3,$a7
    mflo	$a2
    dsll32	$a2,$a2,0x0
    # Line 1494
    cvt.s.d	$f5,$f5
    # Line 1497
    dsrl32	$a2,$a2,0x0
    # Line 1495
    cvt.s.d	$f4,$f4
    # Line 1497
    dmtc1	$a2,$f6
    cvt.d.s	$f5,$f5
    cvt.d.s	$f4,$f4
    ldc1	$f7,_lit8_3eb0000000000000
    sub.d	$f3,$f3,$f5
    cvt.d.l	$f6,$f6
    sub.d	$f3,$f3,$f4
    mul.d	$f6,$f6,$f7
    cvt.s.d	$f3,$f3
    # lw $t9, -18560($gp) # &fprintf
    dmfc1	$a5,$f6
    la	$a1,.rodata
    dmfc1	$a4,$f5
    cvt.d.s	$f3,$f3
    dmfc1	$a3,$f4
    ld	$a0,0($sp)
    addiu	$a1,$a1,-6864
    jal	fprintf
    dmfc1	$a2,$f3
.L0d94c5f8:
    lw	$a7,68($s0)
    beqz	$a7,.L0d94c76c
    # Line 1511
    nop	# was lw $t9, -18560($gp) # &fprintf
    # Line 1504
    lw	$a6,92($s0)
    dsll32	$a5,$a7,0x0
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f8
    dsrl32	$a5,$a5,0x0
    ldc1	$f6,_lit8_4059000000000000
    dmtc1	$a5,$f9
    cvt.d.l	$f8,$f8
    cvt.d.l	$f9,$f9
    mul.d	$f8,$f8,$f6
    div.d	$f8,$f8,$f9
    # Line 1505
    lw	$a4,104($s0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f7
    cvt.d.l	$f7,$f7
    mul.d	$f7,$f7,$f6
    div.d	$f7,$f7,$f9
    # Line 1507
    lw	$a3,64($s0)
    multu	$a3,$a7
    mflo	$a2
    dsll32	$a2,$a2,0x0
    # Line 1504
    cvt.s.d	$f8,$f8
    # Line 1507
    dsrl32	$a2,$a2,0x0
    # Line 1505
    cvt.s.d	$f7,$f7
    # Line 1507
    dmtc1	$a2,$f9
    cvt.d.s	$f8,$f8
    cvt.d.s	$f7,$f7
    ldc1	$f10,_lit8_3eb0000000000000
    sub.d	$f6,$f6,$f8
    cvt.d.l	$f9,$f9
    sub.d	$f6,$f6,$f7
    mul.d	$f9,$f9,$f10
    cvt.s.d	$f6,$f6
    # lw $t9, -18560($gp) # &fprintf
    dmfc1	$a5,$f9
    la	$a1,.rodata
    dmfc1	$a4,$f8
    cvt.d.s	$f6,$f6
    dmfc1	$a3,$f7
    ld	$a0,0($sp)
    addiu	$a1,$a1,-6816
    jal	fprintf
    dmfc1	$a2,$f6
.L0d94c6b8:
    ld	$ra,16($sp)
.L0d94c6bc:
    # Line 1514
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94c6c8:
    # Line 1461
    la	$a7,.rodata
    addiu	$a7,$a7,8536
    andi	$t1,$a2,0x2
    lw	$t0,1104($a7)
    # Line 1463
    andi	$t3,$a2,0x1
    lw	$t2,1112($a7)
    # Line 1461
    addiu	$t0,$t0,1
    beqz	$t1,.L0d94c6f8
    sw	$t0,1104($a7)
    # Line 1462
    lw	$t0,1108($a7)
    addiu	$t0,$t0,1
    sw	$t0,1108($a7)
.L0d94c6f8:
    # Line 1463
    addiu	$t2,$t2,1
    # Line 1462
    andi	$t1,$a2,0x20
    beqz	$t1,.L0d94c70c
    nop
    # Line 1463
    sw	$t2,1112($a7)
.L0d94c70c:
    bnez	$t3,.L0d94c6b8
    # Line 1464
    lw	$s0,1116($a7)
    ld	$ra,16($sp)
    addiu	$s0,$s0,1
    sw	$s0,1116($a7)
    # Line 1514
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94c72c:
    # Line 1468
    la	$a7,.rodata
    addiu	$a7,$a7,8536
    andi	$t9,$a2,0x2
    lw	$t8,1104($a7)
    # Line 1469
    andi	$t1,$a2,0x1
    lw	$t0,1108($a7)
    # Line 1468
    addiu	$t8,$t8,-1
    beqz	$t9,.L0d94c758
    sw	$t8,1104($a7)
    # Line 1469
    addiu	$t0,$t0,-1
    sw	$t0,1108($a7)
.L0d94c758:
    bnez	$t1,.L0d94c6b8
    # Line 1470
    lw	$t2,1116($a7)
    addiu	$t2,$t2,-1
    b	.L0d94c6b8
    sw	$t2,1116($a7)
.L0d94c76c:
    # Line 1511
    ld	$a0,0($sp)
    jalr	$t9
    addiu	$a1,$gp,-16376
    b	.L0d94c6bc
    ld	$ra,16($sp)
.L0d94c780:
    # Line 1474
    la	$s0,.rodata
    addiu	$s0,$s0,8536
    lw	$t3,1112($s0)
    move	$ra,$ra
    addu	$t3,$t3,$a2
    sw	$t3,1112($s0)
    # Line 1514
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94c7a4:
    ld	$ra,16($sp)
    # Line 1478
    addiu	$t9,$t9,8536
    lw	$t8,1108($t9)
    # Line 1514
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    # Line 1478
    addu	$t8,$t8,$a2
    # Line 1514
    jr	$ra
    # Line 1478
    sw	$t8,1108($t9)
.L0d94c7c4:
    # Line 1482
    la	$at,.rodata
    # Line 1514
    ld	$s0,8($sp)
    ld	$ra,16($sp)
    # Line 1482
    addiu	$at,$at,8536
    sw	$zero,1104($at)
    sw	$zero,1108($at)
    sw	$zero,1112($at)
    # Line 1514
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1482
    sw	$zero,1116($at)
.end __glkonDlistMemUsage

# Function: __glkon_dlerror
# Declared: Line 1547 (Source lines: 1547-1552)
# Address: 0x0d94c7f0 - 0x0d94c8a4 (Size: 180 bytes, Frame: 32)
.ent __glkon_dlerror
__glkon_dlerror:
    # Line 1547
    addiu	$sp,$sp,-32
    # Line 1548
    lw	$a2,4136($zero)
    # Line 1549
    li	$a1,228
    # Line 1547
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x14
    # Line 1548
    slti	$v0,$a2,2
    # Line 1547
    addiu	$at,$at,18408
    # Line 1551
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 1548
    bnez	$v0,.L0d94c854
    # Line 1547
    addu	$gp,$t9,$at
    # Line 1548
    lw	$a0,4144($zero)
    # Line 1552
    ld	$gp,8($sp)
    # Line 1549
    sw	$a1,0($a0)
    # Line 1550
    sw	$s8,4($a0)
    # Line 1551
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 1552
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1551
    addiu	$v0,$v0,2
    # Line 1552
    jr	$ra
    # Line 1551
    sw	$v0,4148($zero)
.L0d94c854:
    # Line 1548
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 1552
    ld	$gp,8($sp)
    # Line 1549
    li	$a5,228
    sw	$a5,0($a4)
    # Line 1550
    sw	$s8,4($a4)
    # Line 1551
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 1552
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 1551
    addiu	$a2,$a2,2
    # Line 1552
    jr	$ra
    # Line 1551
    sw	$a2,4148($zero)
.end __glkon_dlerror

# Function: __glSPDlalloc
# Declared: Line 1558 (Source lines: 1558-1603)
# Address: 0x0d94c8b0 - 0x0d94cac8 (Size: 536 bytes, Frame: 192)
.globl __glSPDlalloc
.ent __glSPDlalloc
__glSPDlalloc:
    # Line 1558
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    # Line 1559
    lw	$s1,4112($zero)
    # Line 1571
    li	$a5,152
    lw	$a2,5076($s1)
    li	$a4,150
    li	$a3,156
    # Line 1558
    sd	$s0,16($sp)
    lui	$v0,0x14
    # Line 1571
    andi	$at,$a2,0x4
    # Line 1558
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v0,$v0,18216
    sd	$gp,0($sp)
    # Line 1571
    beqz	$at,.L0d94c948
    # Line 1558
    addu	$gp,$t9,$v0
    # Line 1571
    li	$v1,210
    beq	$a1,$v1,.L0d94c94c
    # Line 1579
    ori	$ra,$a2,0x1
    # Line 1571
    li	$a1,154
    beq	$s0,$a1,.L0d94c94c
    # Line 1579
    ori	$ra,$a2,0x1
    # Line 1571
    beq	$s0,$a3,.L0d94c94c
    # Line 1579
    ori	$ra,$a2,0x1
    # Line 1571
    beq	$s0,$a4,.L0d94c94c
    # Line 1579
    ori	$ra,$a2,0x1
    # Line 1571
    beq	$s0,$a5,.L0d94c948
    # Line 1574
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-14352
    bal __glkon_InitDlistState
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 1603
    ld	$gp,0($sp)
    # Line 1575
    move	$v0,$zero
    # Line 1603
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d94c948:
    # Line 1579
    ori	$ra,$a2,0x1
.L0d94c94c:
    sw	$ra,5076($s1)
    # Line 1584
    lw	$a5,4148($zero)
    bnez	$a5,.L0d94c97c
    lw	$a4,4144($zero)
    addiu	$a2,$a4,-4
    sw	$a2,4144($zero)
    sd	$s3,48($sp)
    lw	$a1,4136($zero)
    sd	$s2,32($sp)
    addiu	$a1,$a1,1
    b	.L0d94c9c8
    sw	$a1,4136($zero)
.L0d94c97c:
    sll	$a3,$a5,0x1e
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a4,$a3
    sw	$a5,-4($a3)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    sd	$a0,56($sp)
    addu	$a1,$a4,$a1
    lw	$a0,5048($s1)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    ld	$a0,56($sp)
    lw	$a1,4136($zero)
    sd	$s3,48($sp)
    sd	$s2,32($sp)
.L0d94c9c8:
    # Line 1585
    sra	$s3,$a0,0x2
    slt	$a4,$a1,$s3
    move	$s2,$a1
    bnez	$a4,.L0d94ca68
    sd	$s4,40($sp)
.L0d94c9dc:
    lw	$a0,5044($s1)
    sll	$a1,$s0,0x2
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    lw	$s4,4144($zero)
    beqz	$a0,.L0d94caa0
    subu	$s2,$s2,$s3
    # Line 1591
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    jal	__glsplc_AddIlist
    move	$a1,$s4
    # Line 1592
    sw	$s2,4136($zero)
    # Line 1593
    move	$a1,$s2
    # Line 1592
    sll	$a0,$s3,0x2
    addu	$a0,$s4,$a0
    # Line 1593
    blez	$s2,.L0d94ca88
    # Line 1592
    sw	$a0,4144($zero)
.L0d94ca1c:
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    ld	$s2,32($sp)
    # Line 1603
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    # Line 1593
    addiu	$a0,$a0,4
    sw	$a0,4144($zero)
    addiu	$a1,$a1,-1
    sw	$a1,4136($zero)
    sw	$zero,4148($zero)
    # Line 1603
    lw	$v1,5084($s1)
    lw	$v0,5080($s1)
    ld	$s0,16($sp)
    sll	$v1,$v1,0x3
    ld	$s1,8($sp)
    addu	$v0,$v0,$v1
    lw	$v0,-4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.L0d94ca68:
    # Line 1585
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    li	$a0,1
    slti	$a2,$s3,256
    xori	$a2,$a2,0x1
    jal	__glSPDlistSpace
    movn	$a0,$s3,$a2
    b	.L0d94c9dc
    move	$s2,$v0
.L0d94ca88:
    # Line 1593
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    move	$a1,$v0
    b	.L0d94ca1c
    lw	$a0,4144($zero)
.L0d94caa0:
    # Line 1587
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    move	$a2,$s0
    addiu	$a1,$a1,-6768
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 1588
    # lw $t9, -18604($gp) # &exit
    jal	exit
    li	$a0,1
.end __glSPDlalloc

# Function: __glSPDlalloc2
# Declared: Line 1610 (Source lines: 1610-1654)
# Address: 0x0d94cad0 - 0x0d94ccf4 (Size: 548 bytes, Frame: 208)
.globl __glSPDlalloc2
.ent __glSPDlalloc2
__glSPDlalloc2:
    # Line 1610
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    # Line 1612
    lw	$s0,4112($zero)
    # Line 1624
    lw	$a2,5076($s0)
    # Line 1610
    sd	$s1,16($sp)
    lui	$v0,0x14
    # Line 1624
    andi	$at,$a2,0x4
    # Line 1610
    move	$s1,$a1
    sd	$ra,48($sp)
    addiu	$v0,$v0,17672
    sd	$gp,32($sp)
    # Line 1624
    beqz	$at,.L0d94cb40
    # Line 1610
    addu	$gp,$t9,$v0
    # Line 1624
    li	$v1,149
    beq	$a1,$v1,.L0d94cb40
    li	$a1,151
    beq	$s1,$a1,.L0d94cb40
    # Line 1626
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-14352
    bal __glkon_InitDlistState
    li	$a0,1282
    ld	$ra,48($sp)
    # Line 1654
    ld	$gp,32($sp)
    # Line 1627
    move	$v0,$zero
    # Line 1654
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94cb40:
    # Line 1631
    ori	$ra,$a2,0x1
    sw	$ra,5076($s0)
    # Line 1633
    lw	$a5,4148($zero)
    bnez	$a5,.L0d94cb70
    lw	$a4,4144($zero)
    addiu	$a5,$a4,-4
    sw	$a5,4144($zero)
    lw	$a2,4136($zero)
    sd	$s3,64($sp)
    addiu	$a2,$a2,1
    b	.L0d94cbbc
    sw	$a2,4136($zero)
.L0d94cb70:
    sll	$a3,$a5,0x1e
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a4,$a3
    sw	$a5,-4($a3)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    sd	$a0,72($sp)
    addu	$a1,$a4,$a1
    lw	$a0,5048($s0)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    ld	$a0,72($sp)
    lw	$a2,4136($zero)
    lw	$a5,4144($zero)
    sd	$s3,64($sp)
.L0d94cbbc:
    # Line 1634
    andi	$a6,$a5,0x4
    # Line 1638
    sra	$a1,$a0,0x2
    # Line 1634
    sltu	$a6,$zero,$a6
    # Line 1638
    sd	$a1,8($sp)
    addu	$a1,$a1,$a6
    slt	$a4,$a2,$a1
    beqz	$a4,.L0d94cc10
    move	$s3,$a2
    sd	$a1,0($sp)
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    ld	$t0,0($sp)
    li	$a0,1
    sd	$a6,40($sp)
    slti	$a7,$t0,256
    jal	__glSPDlistSpace
    movz	$a0,$t0,$a7
    ld	$a1,0($sp)
    ld	$a6,40($sp)
    lw	$a5,4144($zero)
    move	$s3,$v0
    sd	$s2,56($sp)
.L0d94cc10:
    lw	$a0,5044($s0)
    sll	$a2,$s1,0x2
    addu	$a0,$a0,$a2
    lw	$a0,0($a0)
    sd	$s2,56($sp)
    move	$s2,$a5
    # Line 1648
    addiu	$a4,$a5,4
    # Line 1641
    andi	$a3,$a5,0x4
    # Line 1638
    beqz	$a0,.L0d94cccc
    subu	$s3,$s3,$a1
    # Line 1641
    beqz	$a6,.L0d94cc48
    # Line 1650
    nop	# was lw $t9, -30644($gp) # &__glsplc_AddIlist
    movn	$s2,$a4,$a3
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
.L0d94cc48:
    jal	__glsplc_AddIlist
    move	$a1,$s2
    # Line 1651
    ld	$a5,8($sp)
    sw	$s3,4136($zero)
    # Line 1652
    move	$a0,$s3
    # Line 1651
    sll	$a5,$a5,0x2
    addu	$a5,$s2,$a5
    # Line 1652
    blez	$s3,.L0d94ccb4
    # Line 1651
    sw	$a5,4144($zero)
.L0d94cc6c:
    ld	$s3,64($sp)
    ld	$s2,56($sp)
    # Line 1654
    ld	$gp,32($sp)
    ld	$ra,48($sp)
    # Line 1652
    addiu	$a1,$a0,-1
    addiu	$a0,$a5,4
    sw	$a0,4144($zero)
    sw	$a1,4136($zero)
    sw	$zero,4148($zero)
    # Line 1654
    lw	$v1,5084($s0)
    lw	$v0,5080($s0)
    ld	$s0,24($sp)
    sll	$v1,$v1,0x3
    ld	$s1,16($sp)
    addu	$v0,$v0,$v1
    lw	$v0,-4($v0)
    jr	$ra
    addiu	$sp,$sp,80
.L0d94ccb4:
    # Line 1652
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    move	$a0,$v0
    b	.L0d94cc6c
    lw	$a5,4144($zero)
.L0d94cccc:
    # Line 1640
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    move	$a2,$s1
    addiu	$a1,$a1,-6768
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 1641
    # lw $t9, -18604($gp) # &exit
    jal	exit
    li	$a0,1
.end __glSPDlalloc2

# Function: __glkonle_SetBegin
# Declared: Line 1660 (Source lines: 1660-1662)
# Address: 0x0d94cd00 - 0x0d94cd10 (Size: 16 bytes, Frame: 0)
.ent __glkonle_SetBegin
__glkonle_SetBegin:
    # Line 1660
    move	$v0,$a0
    # Line 1661
    li	$at,1
    # Line 1662
    jr	$ra
    # Line 1661
    sw	$at,4120($zero)
.end __glkonle_SetBegin

# Function: __glsplc_AddSentinel
# Declared: Line 1666 (Source lines: 1666-1677)
# Address: 0x0d94cd10 - 0x0d94cddc (Size: 204 bytes, Frame: 32)
.globl __glsplc_AddSentinel
.ent __glsplc_AddSentinel
__glsplc_AddSentinel:
    # Line 1668
    lw	$a3,4144($zero)
    # Line 1666
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1668
    lw	$a4,4148($zero)
    # Line 1667
    lw	$s0,4112($zero)
    # Line 1666
    lui	$at,0x14
    sd	$ra,16($sp)
    addiu	$at,$at,17096
    sd	$gp,8($sp)
    # Line 1668
    bnez	$a4,.L0d94cd54
    # Line 1666
    addu	$gp,$t9,$at
    # Line 1668
    addiu	$v1,$a3,-4
    lw	$v0,4136($zero)
    sw	$v1,4144($zero)
    addiu	$v0,$v0,1
    b	.L0d94cd8c
    sw	$v0,4136($zero)
.L0d94cd54:
    sll	$a5,$a4,0x1e
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a3,$a5
    sw	$a4,-4($a5)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a3,$a1
    lw	$a0,5048($s0)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
.L0d94cd8c:
    lw	$a3,5076($s0)
    andi	$a6,$a3,0x4
    beqz	$a6,.L0d94cdbc
    # Line 1676
    nop	# was lw $t9, -30644($gp) # &__glsplc_AddIlist
    # Line 1674
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    la	$a0,sub_0d950000
    move	$a1,$zero
    # Line 1673
    ori	$a2,$a3,0x1
    sw	$a2,5076($s0)
    # Line 1674
    jal	__glsplc_AddIlist
    addiu	$a0,$a0,-13056
    # Line 1676
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
.L0d94cdbc:
    ld	$s0,0($sp)
    move	$a1,$zero
    jal	__glsplc_AddIlist
    la	$a0,__glsple_Sentinel
    ld	$ra,16($sp)
    # Line 1677
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_AddSentinel

# Function: __glkonlc_End
# Declared: Line 1680 (Source lines: 1680-1691)
# Address: 0x0d94cde0 - 0x0d94ce90 (Size: 176 bytes, Frame: 16)
.globl __glkonlc_End
.ent __glkonlc_End
__glkonlc_End:
    # Line 1681
    lw	$a1,4112($zero)
    lw	$a3,5076($a1)
    # Line 1680
    addiu	$sp,$sp,-16
    lui	$v0,0x14
    addiu	$v0,$v0,16888
    # Line 1681
    andi	$at,$a3,0x4
    # Line 1685
    li	$a0,-5
    sd	$gp,0($sp)
    # Line 1680
    addu	$gp,$t9,$v0
    sd	$ra,8($sp)
    # Line 1681
    beqz	$at,.L0d94ce78
    # Line 1685
    and	$a0,$a3,$a0
    sw	$a0,5076($a1)
    # Line 1686
    lw	$a2,4136($zero)
    slti	$v1,$a2,2
    beqz	$v1,.L0d94ce30
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a2,$v0
.L0d94ce30:
    lw	$a3,4144($zero)
    # Line 1691
    ld	$gp,0($sp)
    # Line 1687
    li	$a4,113
    sw	$a4,0($a3)
    # Line 1688
    sw	$zero,4($a3)
    # Line 1689
    addiu	$a3,$a3,8
    sw	$a3,4144($zero)
    ld	$ra,8($sp)
    lw	$a1,4148($zero)
    addiu	$a2,$a2,-2
    sw	$a2,4136($zero)
    # Line 1691
    addiu	$sp,$sp,16
    # Line 1689
    addiu	$a1,$a1,2
    # Line 1691
    jr	$ra
    # Line 1689
    sw	$a1,4148($zero)
.L0d94ce6c:
    # Line 1691
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94ce78:
    # Line 1683
    # lw $t9, -32516($gp) # &__glSPDlalloc
    move	$a0,$zero
    bal __glSPDlalloc
    li	$a1,22
    b	.L0d94ce6c
    ld	$ra,8($sp)
.end __glkonlc_End

# Function: __glkonSPFreeDlist
# Declared: Line 1694 (Source lines: 1694-1714)
# Address: 0x0d94ce90 - 0x0d94cf54 (Size: 196 bytes, Frame: 32)
.globl __glkonSPFreeDlist
.ent __glkonSPFreeDlist
__glkonSPFreeDlist:
    # Line 1694
    addiu	$sp,$sp,-32
    lw	$at,31580($a0)
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    lui	$v0,0x14
    andi	$at,$at,0x20
    move	$s1,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,16712
    sd	$gp,16($sp)
    beqz	$at,.L0d94ced8
    addu	$gp,$t9,$v0
    # Line 1698
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    lw	$a2,32($a1)
    bal __glkon_InitDlistState
    li	$a1,2
.L0d94ced8:
    lw	$a0,32($s0)
    andi	$ra,$a0,0x20
    beqz	$ra,.L0d94cf04
    # Line 1702
    andi	$ra,$a0,0x2
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-22816
    move	$a0,$s1
    bal __glKonCreateContext
    move	$a1,$s0
    lw	$a0,32($s0)
    andi	$ra,$a0,0x2
.L0d94cf04:
    beqz	$ra,.L0d94cf2c
    # Line 1707
    nop	# was lw $t9, -30984($gp) # &__glDlistHeapRemove
    lw	$a0,4924($s1)
    addiu	$a1,$s0,48
    jal	__glDlistHeapRemove
    addiu	$a0,$a0,4
    # Line 1709
    lw	$a1,32($s0)
    li	$a2,-3
    and	$a1,$a1,$a2
    sw	$a1,32($s0)
.L0d94cf2c:
    # Line 1713
    # lw $t9, -30656($gp) # &__glSPFreeDlist
    move	$a0,$s1
    jal	__glSPFreeDlist
    move	$a1,$s0
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 1714
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonSPFreeDlist

# Function: __glkonSPValidateLocalDlist
# Declared: Line 1720 (Source lines: 1720-1732)
# Address: 0x0d94cf60 - 0x0d94cf90 (Size: 48 bytes, Frame: 16)
.ent __glkonSPValidateLocalDlist
__glkonSPValidateLocalDlist:
    # Line 1722
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-21888
    # Line 1720
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 1722
    bal __glKonCreateContext
    nop
    ld	$ra,0($sp)
    # Line 1732
    li	$at,1
    addiu	$sp,$sp,16
    movz	$at,$zero,$v0
    jr	$ra
    move	$v0,$at
.end __glkonSPValidateLocalDlist

# Function: __glkonSPValidateOnlyDlist
# Declared: Line 1736 (Source lines: 1736-1807)
# Address: 0x0d94cf90 - 0x0d94d144 (Size: 436 bytes, Frame: 32)
.globl __glkonSPValidateOnlyDlist
.ent __glkonSPValidateOnlyDlist
__glkonSPValidateOnlyDlist:
    # Line 1736
    lui	$v0,0x14
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,16456
    sd	$gp,0($sp)
    addu	$gp,$t9,$v0
    la	$a3,__glSPExecuteDlist
    # Line 1747
    sw	$a3,8($a1)
    lw	$at,4120($zero)
    # Line 1736
    sd	$s1,16($sp)
    # Line 1747
    li	$a4,1
    # Line 1736
    move	$s1,$a1
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 1747
    beq	$at,$a4,.L0d94d01c
    sd	$ra,24($sp)
    # Line 1751
    lw	$v1,32($a1)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d94d024
    nop
    # Line 1753
    lw	$a0,31580($a0)
.L0d94cfe0:
    andi	$a1,$a0,0x20
.L0d94cfe4:
    beqz	$a1,.L0d94d008
    ld	$ra,24($sp)
    # Line 1805
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-15248
    move	$a0,$s0
    move	$a2,$zero
    bal __glkon_InitDlistState
    li	$a1,3
    ld	$ra,24($sp)
.L0d94d008:
    # Line 1807
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94d01c:
    b	.L0d94cfe0
    # Line 1753
    lw	$a0,31580($a0)
.L0d94d024:
    # Line 1751
    lw	$ra,24($a1)
    slti	$ra,$ra,2
    bnez	$ra,.L0d94cfe0
    lw	$a0,31580($a0)
    # Line 1753
    andi	$at,$a0,0x2
    beqz	$at,.L0d94d088
    andi	$v0,$a0,0x10
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-12448
    bal __glkonSPFreeDlist
    move	$a0,$s0
    # Line 1755
    la	$ra,sub_0d950000
    # Line 1753
    beqz	$v0,.L0d94d080
    li	$a4,1
    # Line 1755
    addiu	$ra,$ra,-20352
    # Line 1753
    lw	$at,28($s1)
    # Line 1755
    la	$v0,sub_0d950000
    addiu	$v0,$v0,-20384
    xor	$at,$at,$a4
    movz	$ra,$v0,$at
    sw	$ra,8($s1)
    # Line 1753
    b	.L0d94cfe0
    lw	$a0,31580($s0)
.L0d94d080:
    lw	$a0,31580($s0)
    andi	$v0,$a0,0x10
.L0d94d088:
    beqz	$v0,.L0d94cfe4
    andi	$a1,$a0,0x20
    lw	$v1,20($s1)
    beqz	$v1,.L0d94d0ec
    # Line 1761
    nop	# was lw $t9, -30640($gp) # &__glSPCreatePlist
.L0d94d09c:
    # Line 1763
    lw	$a0,28($s1)
    # Line 1775
    la	$a1,sub_0d950000
    # Line 1763
    beq	$a0,$a4,.L0d94d0c8
    # Line 1775
    addiu	$a1,$a1,-20176
    sw	$a1,8($s1)
.L0d94d0b0:
    lw	$a2,32($s1)
    andi	$a2,$a2,0x2
    beqz	$a2,.L0d94d124
    # Line 1779
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
.L0d94d0c0:
    b	.L0d94cfe0
    # Line 1786
    lw	$a0,31580($s0)
.L0d94d0c8:
    # Line 1763
    lw	$a4,20($s1)
    # Line 1772
    la	$a5,sub_0d950000
    # Line 1763
    lw	$a4,4($a4)
    # Line 1772
    la	$a3,__glSPExecuteDlist
    addiu	$a5,$a5,-20240
    # Line 1763
    sltiu	$a4,$a4,76
    movz	$a3,$a5,$a4
    # Line 1772
    b	.L0d94d0b0
    sw	$a3,8($s1)
.L0d94d0ec:
    # Line 1761
    move	$a0,$s0
    jal	sub_0d950000
    move	$a1,$s1
    # Line 1762
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-23680
    bal __glKonCreateContext
    move	$a0,$s1
    # Line 1763
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-20064
    move	$a0,$s0
    bal __glKonCreateContext
    move	$a1,$s1
    b	.L0d94d09c
    li	$a4,1
.L0d94d124:
    # Line 1779
    addiu	$t9,$t9,-18304
    move	$a0,$s0
    bal __glkonim_GetListParameterivSGIX
    move	$a1,$s1
    bnez	$v0,.L0d94d0c0
    # Line 1786
    la	$ra,__glSPExecuteDlist
    b	.L0d94d0c0
    sw	$ra,8($s1)
.end __glkonSPValidateOnlyDlist

# Function: __glkonSPValidateDlist
# Declared: Line 1811 (Source lines: 1811-1816)
# Address: 0x0d94d150 - 0x0d94d1a8 (Size: 88 bytes, Frame: 32)
.globl __glkonSPValidateDlist
.ent __glkonSPValidateDlist
__glkonSPValidateDlist:
    # Line 1811
    lui	$at,0x14
    addiu	$sp,$sp,-32
    addiu	$at,$at,16008
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1814
    # lw $t9, -32496($gp) # &__glkonSPValidateOnlyDlist
    # Line 1811
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # Line 1814
    nop
    # Line 1811
    sd	$ra,0($sp)
    # Line 1814
    bal __glkonSPValidateOnlyDlist
    # Line 1811
    move	$s8,$a0
    # Line 1815
    ld	$t9,24($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    jal	__glkonSPValidateOnlyDlist
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 1816
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonSPValidateDlist

# Function: __glkonlc_Begin
# Declared: Line 2114 (Source lines: 2114-2125)
# Address: 0x0d94d1b0 - 0x0d94d28c (Size: 220 bytes, Frame: 32)
.globl __glkonlc_Begin
.ent __glkonlc_Begin
__glkonlc_Begin:
    # Line 2115
    sltiu	$v0,$a0,10
    # Line 2114
    lui	$at,0x14
    # Line 2115
    lw	$a2,4112($zero)
    # Line 2114
    addiu	$sp,$sp,-32
    addiu	$at,$at,15912
    sd	$gp,8($sp)
    # Line 2115
    beqz	$v0,.L0d94d274
    # Line 2114
    addu	$gp,$t9,$at
    # Line 2120
    lw	$v1,5076($a2)
    ori	$v1,$v1,0x4
    sw	$v1,5076($a2)
    # Line 2121
    lw	$a3,4136($zero)
    slti	$v0,$a3,2
    bnez	$v0,.L0d94d220
    # Line 2124
    addiu	$a1,$a3,-2
    # Line 2121
    lw	$a2,4144($zero)
    # Line 2125
    ld	$gp,8($sp)
    # Line 2122
    addiu	$a4,$a0,87
    sw	$a4,0($a2)
    # Line 2123
    sw	$zero,4($a2)
    # Line 2124
    addiu	$a2,$a2,8
    sw	$a2,4144($zero)
    lw	$a0,4148($zero)
    sw	$a1,4136($zero)
    # Line 2125
    addiu	$sp,$sp,32
    # Line 2124
    addiu	$a0,$a0,2
    # Line 2125
    jr	$ra
    # Line 2124
    sw	$a0,4148($zero)
.L0d94d220:
    # Line 2121
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a7,4144($zero)
    # Line 2122
    ld	$t0,0($sp)
    # Line 2125
    ld	$gp,8($sp)
    # Line 2122
    addiu	$t0,$t0,87
    sw	$t0,0($a7)
    # Line 2123
    sw	$zero,4($a7)
    # Line 2124
    addiu	$a7,$a7,8
    sw	$a7,4144($zero)
    ld	$ra,16($sp)
    lw	$a5,4148($zero)
    addiu	$a6,$v0,-2
    sw	$a6,4136($zero)
    # Line 2125
    addiu	$sp,$sp,32
    # Line 2124
    addiu	$a5,$a5,2
    # Line 2125
    jr	$ra
    # Line 2124
    sw	$a5,4148($zero)
.L0d94d274:
    # Line 2117
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-14352
    li	$a0,1280
    # Line 2118
    ld	$gp,8($sp)
    bgezl	$zero,__glkon_InitDlistState
    addiu	$sp,$sp,32
.end __glkonlc_Begin

# Function: __glkonlc_CallList
# Declared: Line 2127 (Source lines: 2127-2140)
# Address: 0x0d94d290 - 0x0d94d3a0 (Size: 272 bytes, Frame: 32)
.globl __glkonlc_CallList
.ent __glkonlc_CallList
__glkonlc_CallList:
    # Line 2128
    lw	$a2,4112($zero)
    lw	$at,5076($a2)
    # Line 2127
    addiu	$sp,$sp,-32
    lui	$v0,0x14
    # Line 2128
    andi	$at,$at,0x4
    sd	$ra,16($sp)
    # Line 2127
    addiu	$v0,$v0,15688
    sd	$gp,8($sp)
    # Line 2128
    beqz	$at,.L0d94d374
    # Line 2127
    addu	$gp,$t9,$v0
    # Line 2130
    lw	$a4,4148($zero)
    lw	$a3,4144($zero)
    sd	$a2,0($sp)
    sd	$a0,24($sp)
    bnez	$a4,.L0d94d2e4
    addiu	$v1,$a3,-4
    lw	$v0,4136($zero)
    sw	$v1,4144($zero)
    addiu	$v0,$v0,1
    b	.L0d94d320
    sw	$v0,4136($zero)
.L0d94d2e4:
    sll	$a5,$a4,0x1e
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a3,$a5
    sw	$a4,-4($a5)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    ld	$a0,0($sp)
    sll	$a1,$a1,0x2
    addu	$a1,$a3,$a1
    lw	$a0,5048($a0)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
.L0d94d320:
    # Line 2136
    la	$a0,sub_0d950000
    # Line 2131
    ld	$a7,0($sp)
    # Line 2136
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    # Line 2131
    lw	$a6,5076($a7)
    # Line 2136
    move	$a1,$zero
    # Line 2131
    li	$t0,-5
    # Line 2136
    addiu	$a0,$a0,-13056
    # Line 2131
    and	$a6,$a6,$t0
    # Line 2132
    ori	$a6,$a6,0x1
    # Line 2136
    jal	__glsplc_AddIlist
    # Line 2132
    sw	$a6,5076($a7)
    # Line 2137
    lw	$a3,4136($zero)
    blez	$a3,.L0d94d390
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d94d358:
    ld	$a0,24($sp)
    addiu	$a2,$a3,-1
    sw	$a2,4136($zero)
    lw	$a1,4144($zero)
    sw	$zero,4148($zero)
    addiu	$a1,$a1,4
    sw	$a1,4144($zero)
.L0d94d374:
    # Line 2139
    # lw $t9, -30736($gp) # &__glsplc_CallList
    jal	__glsplc_CallList
    nop
    ld	$ra,16($sp)
    # Line 2140
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94d390:
    # Line 2137
    jalr	$t9
    li	$a0,1
    b	.L0d94d358
    move	$a3,$v0
.end __glkonlc_CallList

# Function: __glkonlc_CallLists
# Declared: Line 2142 (Source lines: 2142-2155)
# Address: 0x0d94d3a0 - 0x0d94d4c0 (Size: 288 bytes, Frame: 48)
.globl __glkonlc_CallLists
.ent __glkonlc_CallLists
__glkonlc_CallLists:
    # Line 2143
    lw	$a4,4112($zero)
    lw	$at,5076($a4)
    # Line 2142
    addiu	$sp,$sp,-48
    lui	$v0,0x14
    # Line 2143
    andi	$at,$at,0x4
    sd	$ra,16($sp)
    # Line 2142
    addiu	$v0,$v0,15416
    sd	$gp,8($sp)
    # Line 2143
    beqz	$at,.L0d94d494
    # Line 2142
    addu	$gp,$t9,$v0
    sd	$a4,0($sp)
    sd	$a2,24($sp)
    # Line 2145
    lw	$a6,4148($zero)
    lw	$a5,4144($zero)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    bnez	$a6,.L0d94d3fc
    addiu	$v1,$a5,-4
    lw	$v0,4136($zero)
    sw	$v1,4144($zero)
    addiu	$v0,$v0,1
    b	.L0d94d438
    sw	$v0,4136($zero)
.L0d94d3fc:
    sll	$a3,$a6,0x1e
    subu	$a3,$a3,$a6
    sll	$a3,$a3,0x2
    addu	$a3,$a5,$a3
    sw	$a6,-4($a3)
    lw	$a2,4148($zero)
    sll	$a1,$a2,0x1e
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    subu	$a1,$a1,$a2
    ld	$a0,0($sp)
    sll	$a1,$a1,0x2
    addu	$a1,$a5,$a1
    lw	$a0,5048($a0)
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
.L0d94d438:
    # Line 2151
    la	$a0,sub_0d950000
    # Line 2146
    ld	$a5,0($sp)
    # Line 2151
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    # Line 2146
    lw	$a4,5076($a5)
    # Line 2151
    move	$a1,$zero
    # Line 2146
    li	$a6,-5
    # Line 2151
    addiu	$a0,$a0,-13056
    # Line 2146
    and	$a4,$a4,$a6
    # Line 2147
    ori	$a4,$a4,0x1
    # Line 2151
    jal	__glsplc_AddIlist
    # Line 2147
    sw	$a4,5076($a5)
    # Line 2152
    lw	$a5,4136($zero)
    blez	$a5,.L0d94d4b0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d94d470:
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    ld	$a2,24($sp)
    addiu	$a4,$a5,-1
    sw	$a4,4136($zero)
    lw	$a3,4144($zero)
    sw	$zero,4148($zero)
    addiu	$a3,$a3,4
    sw	$a3,4144($zero)
.L0d94d494:
    # Line 2154
    # lw $t9, -30732($gp) # &__glsplc_CallLists
    jal	__glsplc_CallLists
    nop
    ld	$ra,16($sp)
    # Line 2155
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94d4b0:
    # Line 2152
    jalr	$t9
    li	$a0,1
    b	.L0d94d470
    move	$a5,$v0
.end __glkonlc_CallLists

# Function: __glkonlc_ClearColor
# Declared: Line 2187 (Source lines: 2187-2206)
# Address: 0x0d94d4c0 - 0x0d94d60c (Size: 332 bytes, Frame: 48)
.globl __glkonlc_ClearColor
.ent __glkonlc_ClearColor
__glkonlc_ClearColor:
    # Line 2188
    lw	$a1,4112($zero)
    # Line 2187
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sdc1	$f26,8($sp)
    # Line 2190
    mov.s	$f0,$f12
    # Line 2187
    sdc1	$f24,24($sp)
    mov.s	$f24,$f15
    # Line 2188
    lw	$at,4120($zero)
    # Line 2187
    mov.s	$f26,$f14
    sdc1	$f22,16($sp)
    # Line 2188
    li	$v0,1
    # Line 2187
    lui	$v1,0x14
    # Line 2190
    mtc1	$zero,$f3
    # Line 2187
    mov.s	$f22,$f13
    sdc1	$f20,0($sp)
    addiu	$v1,$v1,15128
    mov.s	$f20,$f12
    sd	$gp,32($sp)
    # Line 2188
    beq	$at,$v0,.L0d94d5e8
    # Line 2187
    addu	$gp,$t9,$v1
    # Line 2194
    mov.s	$f2,$f14
    c.lt.s $f14,$f3
    # Line 2192
    mov.s	$f1,$f13
    c.lt.s $f13,$f3
    # Line 2190
    c.lt.s $f12,$f3
    # Line 2194
    movt.s	$f2,$f3,$fcc7
    # Line 2190
    lwc1	$f20,3544($a1)
    # Line 2196
    c.lt.s $f15,$f3
    # Line 2192
    movt.s	$f1,$f3,$fcc6
    # Line 2190
    movt.s	$f0,$f3,$fcc5
    # Line 2196
    movf.s	$f3,$f15,$fcc4
    # Line 2193
    mov.s	$f22,$f20
    # Line 2197
    mov.s	$f24,$f20
    # Line 2196
    c.lt.s $f20,$f3
    # Line 2199
    lw	$a2,4136($zero)
    # Line 2195
    mov.s	$f26,$f20
    # Line 2194
    c.lt.s $f20,$f2
    # Line 2192
    c.lt.s $f20,$f1
    movf.s	$f24,$f3,$fcc3
    # Line 2199
    slti	$a0,$a2,5
    # Line 2190
    c.lt.s	$f20,$f0
    movf.s	$f26,$f2,$fcc2
    movf.s	$f22,$f1,$fcc1
    # Line 2199
    beqz	$a0,.L0d94d584
    movf.s	$f20,$f0,$fcc0
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a2,$v0
.L0d94d584:
    lw	$a3,4144($zero)
    # Line 2206
    ld	$gp,32($sp)
    # Line 2200
    li	$a4,29
    sw	$a4,0($a3)
    # Line 2201
    swc1	$f20,4($a3)
    # Line 2202
    swc1	$f22,8($a3)
    # Line 2203
    swc1	$f26,12($a3)
    # Line 2204
    swc1	$f24,16($a3)
    # Line 2205
    addiu	$a3,$a3,20
    sw	$a3,4144($zero)
    addiu	$a2,$a2,-5
    sw	$a2,4136($zero)
    # Line 2206
    ldc1	$f20,0($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,24($sp)
    ld	$ra,40($sp)
    # Line 2205
    lw	$a1,4148($zero)
    # Line 2206
    ldc1	$f26,8($sp)
    addiu	$sp,$sp,48
    # Line 2205
    addiu	$a1,$a1,5
    # Line 2206
    jr	$ra
    # Line 2205
    sw	$a1,4148($zero)
.L0d94d5dc:
    # Line 2206
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94d5e8:
    ldc1	$f20,0($sp)
    # Line 2188
    # lw $t9, -28616($gp) # &__glSetError
    ldc1	$f26,8($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d94d5dc
    ld	$ra,40($sp)
.end __glkonlc_ClearColor

# Function: __glkonlc_ClearAccum
# Declared: Line 2213 (Source lines: 2213-2232)
# Address: 0x0d94d610 - 0x0d94d740 (Size: 304 bytes, Frame: 48)
.globl __glkonlc_ClearAccum
.ent __glkonlc_ClearAccum
__glkonlc_ClearAccum:
    # Line 2213
    mov.s	$f4,$f15
    addiu	$sp,$sp,-48
    lw	$at,4120($zero)
    mov.s	$f5,$f14
    li	$v0,1
    lui	$v1,0x14
    mov.s	$f6,$f13
    sd	$ra,40($sp)
    addiu	$v1,$v1,14792
    mov.s	$f7,$f12
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d94d72c
    addu	$gp,$t9,$v1
    # Line 2225
    lw	$a2,4136($zero)
    slti	$a0,$a2,5
    beqz	$a0,.L0d94d688
    # Line 2227
    lwc1	$f1,_lit_bf800000
    sdc1	$f12,8($sp)
    # Line 2225
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    sdc1	$f14,24($sp)
    sdc1	$f15,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,32($sp)
    ldc1	$f5,24($sp)
    ldc1	$f6,16($sp)
    ldc1	$f7,8($sp)
    move	$a2,$v0
    # Line 2227
    lwc1	$f1,_lit_bf800000
.L0d94d688:
    # Line 2229
    c.lt.s $f5,$f1
    # Line 2228
    c.lt.s $f6,$f1
    # Line 2227
    c.lt.s $f7,$f1
    # Line 2229
    movt.s	$f5,$f1,$fcc7
    # Line 2230
    c.lt.s $f4,$f1
    # Line 2228
    movt.s	$f6,$f1,$fcc6
    # Line 2227
    lwc1	$f0,_lit_3f800000
    movt.s	$f7,$f1,$fcc5
    # Line 2230
    movf.s	$f1,$f4,$fcc4
    # Line 2232
    ld	$gp,0($sp)
    # Line 2229
    mov.s	$f2,$f5
    # Line 2225
    lw	$a3,4144($zero)
    # Line 2227
    mov.s	$f4,$f7
    c.lt.s $f0,$f7
    ld	$ra,40($sp)
    # Line 2228
    mov.s	$f3,$f6
    c.lt.s $f0,$f6
    # Line 2226
    li	$a4,27
    sw	$a4,0($a3)
    # Line 2229
    c.lt.s $f0,$f5
    # Line 2227
    movt.s	$f4,$f0,$fcc3
    # Line 2230
    c.lt.s	$f0,$f1
    # Line 2228
    movt.s	$f3,$f0,$fcc2
    # Line 2227
    swc1	$f4,4($a3)
    # Line 2229
    movt.s	$f2,$f0,$fcc1
    # Line 2228
    swc1	$f3,8($a3)
    # Line 2230
    movf.s	$f0,$f1,$fcc0
    # Line 2229
    swc1	$f2,12($a3)
    # Line 2230
    swc1	$f0,16($a3)
    # Line 2231
    addiu	$a3,$a3,20
    sw	$a3,4144($zero)
    lw	$a1,4148($zero)
    addiu	$a2,$a2,-5
    sw	$a2,4136($zero)
    # Line 2232
    addiu	$sp,$sp,48
    # Line 2231
    addiu	$a1,$a1,5
    # Line 2232
    jr	$ra
    # Line 2231
    sw	$a1,4148($zero)
.L0d94d720:
    # Line 2232
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94d72c:
    # Line 2214
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d94d720
    ld	$ra,40($sp)
.end __glkonlc_ClearAccum

# Function: __glkonlc_ClearDepth
# Declared: Line 2239 (Source lines: 2239-2249)
# Address: 0x0d94d740 - 0x0d94d820 (Size: 224 bytes, Frame: 32)
.globl __glkonlc_ClearDepth
.ent __glkonlc_ClearDepth
__glkonlc_ClearDepth:
    # Line 2240
    lw	$a1,4112($zero)
    # Line 2239
    addiu	$sp,$sp,-32
    # Line 2240
    lw	$at,4120($zero)
    sd	$ra,24($sp)
    li	$v0,1
    # Line 2239
    lui	$v1,0x14
    sdc1	$f20,8($sp)
    addiu	$v1,$v1,14488
    mov.d	$f20,$f12
    sd	$gp,16($sp)
    # Line 2240
    beq	$at,$v0,.L0d94d808
    # Line 2239
    addu	$gp,$t9,$v1
    # Line 2242
    dmtc1	$zero,$f0
    lwc1	$f1,3544($a1)
    c.lt.d $f12,$f0
    # Line 2245
    lw	$a2,4136($zero)
    # Line 2242
    cvt.d.s	$f1,$f1
    movf.d	$f0,$f12,$fcc1
    # Line 2245
    slti	$a0,$a2,3
    # Line 2243
    mov.d	$f20,$f1
    # Line 2242
    c.lt.d	$f1,$f0
    # Line 2245
    beqz	$a0,.L0d94d7ac
    movf.d	$f20,$f0,$fcc0
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$a2,$v0
.L0d94d7ac:
    # Line 2249
    ld	$gp,16($sp)
    # Line 2247
    sdc1	$f20,0($sp)
    # Line 2249
    ldc1	$f20,8($sp)
    # Line 2247
    lw	$a4,4($sp)
    # Line 2245
    lw	$a3,4144($zero)
    # Line 2247
    lw	$a5,0($sp)
    # Line 2246
    li	$a6,31
    sw	$a6,0($a3)
    # Line 2247
    sw	$a5,4($a3)
    sw	$a4,8($a3)
    # Line 2248
    addiu	$a3,$a3,12
    sw	$a3,4144($zero)
    ld	$ra,24($sp)
    lw	$a1,4148($zero)
    addiu	$a2,$a2,-3
    sw	$a2,4136($zero)
    # Line 2249
    addiu	$sp,$sp,32
    # Line 2248
    addiu	$a1,$a1,3
    # Line 2249
    jr	$ra
    # Line 2248
    sw	$a1,4148($zero)
.L0d94d7fc:
    # Line 2249
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94d808:
    # Line 2240
    # lw $t9, -28616($gp) # &__glSetError
    ldc1	$f20,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d94d7fc
    ld	$ra,24($sp)
.end __glkonlc_ClearDepth

.rdata
_lit8_3eb0000000000000:
    .word 0x3eb00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4059000000000000:
    .word 0x40590000, 0x00000000
_lit_3a83126f:
    .word 0x3a83126f
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

