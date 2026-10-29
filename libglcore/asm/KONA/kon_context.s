# Source: ../KONA/kon_context.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_context.c
# Total Functions: 24

.text

# Function: GetBoardInfo
# Declared: Line 91 (Source lines: 91-161)
# Address: 0x0d947f60 - 0x0d948214 (Size: 692 bytes, Frame: 208)
.ent GetBoardInfo
GetBoardInfo:
    # Line 91
    addiu	$sp,$sp,-2000
    sd	$s0,1992($sp)
    move	$s0,$a0
    # Line 104
    lw	$t9,32($s0)
    sd	$ra,1984($sp)
    jalr	$t9
    nop
    # Line 110
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 106
    li	$at,1952
    sw	$at,1960($sp)
    # Line 110
    addiu	$a2,$sp,1952
    li	$a1,102
    # Line 105
    sw	$sp,1956($sp)
    # Line 110
    move	$a0,$s0
    jal	__glKon_ioctl
    # Line 104
    sw	$v0,1952($sp)
    # Line 110
    bltz	$v0,.L0d9481e0
    # Line 113
    nop	# was lw $t9, -18608($gp) # &strncmp
.L0d947fa8:
    li	$a2,4
    addiu	$a1,$gp,-16464
    jal	strncmp
    addiu	$a0,$sp,0
    beqz	$v0,.L0d947fe0
    # Line 117
    lbu	$a2,5($sp)
    # Line 114
    lw	$t9,20($s0)
    la	$a1,.rodata
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-8712
    # Line 115
    # lw $t9, -18604($gp) # &exit
    jal	exit
    li	$a0,1
.L0d947fe0:
    # Line 117
    li	$a3,73
    beq	$a2,$a3,.L0d9481b8
    sb	$zero,1968($sp)
    # Line 119
    # lw $t9, -18600($gp) # &strcat
    addiu	$a1,$gp,-16456
    jal	strcat
    addiu	$a0,$sp,1968
    # Line 120
    # lw $t9, -18596($gp) # &strncat
    li	$a2,1
    # Line 119
    lw	$a4,40($sp)
    # Line 120
    addiu	$a0,$sp,1968
    li	$a5,2
    addiu	$a1,$sp,4
    xor	$a4,$a4,$a5
    addiu	$a5,$gp,-16452
    jal	strncat
    movz	$a1,$a5,$a4
    # Line 124
    lw	$a6,40($sp)
.L0d948028:
    li	$a7,4
    beq	$a6,$a7,.L0d9481fc
    # Line 129
    nop	# was lw $t9, -18600($gp) # &strcat
.L0d948034:
    addiu	$a1,$gp,-16448
    jal	strcat
    addiu	$a0,$sp,1968
    # Line 130
    lw	$t0,40($sp)
    li	$t1,2
    li	$a3,3
    addiu	$a1,$gp,-16536
    beq	$t0,$t1,.L0d9481d0
    lw	$a0,180($sp)
    addu	$a1,$a0,$a1
.L0d94805c:
    # lw $t9, -18596($gp) # &strncat
    li	$a2,1
    jal	strncat
    addiu	$a0,$sp,1968
    # Line 135
    # lw $t9, -18600($gp) # &strcat
    addiu	$a1,$gp,-16448
    jal	strcat
    addiu	$a0,$sp,1968
    # Line 136
    # lw $t9, -18596($gp) # &strncat
    li	$a2,1
    lw	$a1,128($sp)
    addiu	$a0,$sp,1968
    addiu	$a3,$gp,-16532
    jal	strncat
    addu	$a1,$a1,$a3
    # Line 137
    # lw $t9, -18600($gp) # &strcat
    addiu	$a1,$gp,-16448
    jal	strcat
    addiu	$a0,$sp,1968
    # Line 138
    la	$a1,.rodata
    lw	$a2,80($sp)
    # lw $t9, -18600($gp) # &strcat
    sll	$a2,$a2,0x2
    addiu	$a1,$a1,4712
    addu	$a1,$a1,$a2
    addiu	$a0,$sp,1968
    jal	strcat
    lw	$a1,16($a1)
    # Line 139
    # lw $t9, -18600($gp) # &strcat
    addiu	$a1,$gp,-16448
    jal	strcat
    addiu	$a0,$sp,1968
    # Line 140
    # lw $t9, -18596($gp) # &strncat
    la	$a3,.rodata
    li	$a2,1
    lw	$a1,124($sp)
    addiu	$a0,$sp,1968
    addiu	$a3,$a3,4712
    jal	strncat
    addu	$a1,$a1,$a3
    # Line 141
    # lw $t9, -18592($gp) # &strdup
    jal	strdup
    addiu	$a0,$sp,1968
    sw	$v0,3576($s0)
    # Line 146
    lw	$a3,124($sp)
    sw	$a3,31568($s0)
    # Line 149
    lw	$a2,292($sp)
    lw	$a1,288($sp)
    mult	$a1,$a2
    # Line 151
    la	$a0,.rodata
    # lw $t9, -18588($gp) # &getenv
    addiu	$a0,$a0,-8656
    # Line 149
    mflo	$a4
    # Line 151
    jal	getenv
    # Line 149
    sw	$a4,31644($s0)
    # Line 151
    bnez	$v0,.L0d948150
    # Line 153
    nop	# was lw $t9, -18588($gp) # &getenv
    # Line 152
    lw	$a4,31580($s0)
    ori	$a4,$a4,0x2
    sw	$a4,31580($s0)
    # Line 153
    # lw $t9, -18588($gp) # &getenv
.L0d948150:
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-8640
    bnez	$v0,.L0d94816c
    lw	$a1,31580($s0)
    # Line 154
    ori	$a1,$a1,0x10
    sw	$a1,31580($s0)
.L0d94816c:
    # Line 159
    # lw $t9, -18588($gp) # &getenv
    # Line 156
    ori	$a1,$a1,0x4
    # Line 159
    la	$a0,.rodata
    # Line 157
    ori	$a1,$a1,0x8
    sw	$a1,31580($s0)
    # Line 159
    jal	getenv
    addiu	$a0,$a0,-8624
    beqz	$v0,.L0d9481ac
    # Line 161
    ld	$ra,1984($sp)
    # Line 160
    lw	$a2,31580($s0)
    # Line 161
    ld	$ra,1984($sp)
    # Line 160
    ori	$a2,$a2,0x20
    sw	$a2,31580($s0)
    # Line 161
    ld	$s0,1992($sp)
    jr	$ra
    addiu	$sp,$sp,2000
.L0d9481ac:
    ld	$s0,1992($sp)
    jr	$ra
    addiu	$sp,$sp,2000
.L0d9481b8:
    # Line 124
    # lw $t9, -18600($gp) # &strcat
    addiu	$a1,$sp,0
    jal	strcat
    addiu	$a0,$sp,1968
    b	.L0d948028
    lw	$a6,40($sp)
.L0d9481d0:
    # Line 130
    bne	$a0,$a3,.L0d94805c
    addu	$a1,$a0,$a1
    b	.L0d94805c
    addiu	$a1,$gp,-16446
.L0d9481e0:
    # Line 111
    lw	$t9,20($s0)
    la	$a1,.rodata
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-8736
    b	.L0d947fa8
    # Line 113
    nop	# was lw $t9, -18608($gp) # &strncmp
.L0d9481fc:
    # Line 128
    # lw $t9, -18600($gp) # &strcat
    addiu	$a1,$gp,-16450
    jal	strcat
    addiu	$a0,$sp,1968
    b	.L0d948034
    # Line 129
    nop	# was lw $t9, -18600($gp) # &strcat
.end GetBoardInfo

# Function: ChangeWindowSize
# Declared: Line 163 (Source lines: 163-170)
# Address: 0x0d948220 - 0x0d948278 (Size: 88 bytes, Frame: 32)
.ent ChangeWindowSize
ChangeWindowSize:
    # Line 167
    sw	$a2,3704($a0)
    # Line 166
    sw	$a1,3700($a0)
    # Line 163
    addiu	$sp,$sp,-32
    # Line 168
    # lw $t9, -20576($gp) # &__glkonim_Viewport
    move	$a0,$zero
    # Line 163
    move	$a3,$a2
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$a2,16($sp)
    # Line 168
    move	$a2,$a1
    sd	$ra,0($sp)
    jal	__glkonim_Viewport
    move	$a1,$zero
    # Line 169
    # lw $t9, -20756($gp) # &__glkonim_Scissor
    move	$a0,$zero
    ld	$ra,0($sp)
    move	$a1,$zero
    ld	$a3,16($sp)
    move	$a2,$s8
    # Line 170
    ld	$s8,8($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end ChangeWindowSize

# Function: FindWindowSize
# Declared: Line 181 (Source lines: 181-191)
# Address: 0x0d948280 - 0x0d9482e8 (Size: 104 bytes, Frame: 32)
.ent FindWindowSize
FindWindowSize:
    # Line 181
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 187
    lw	$t9,28($s0)
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 189
    lw	$a1,8($sp)
    lw	$at,3700($s0)
    lw	$v0,3704($s0)
    bne	$at,$a1,.L0d9482d0
    lw	$a2,12($sp)
    bne	$v0,$a2,.L0d9482d0
    ld	$ra,24($sp)
.L0d9482c4:
    ld	$s0,16($sp)
    # Line 191
    jr	$ra
    addiu	$sp,$sp,32
.L0d9482d0:
    # Line 190
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-32224
    bal __glKonCreateContext-0x18c0
    move	$a0,$s0
    b	.L0d9482c4
    ld	$ra,24($sp)
.end FindWindowSize

# Function: ApplyViewport
# Declared: Line 194 (Source lines: 194-196)
# Address: 0x0d9482f0 - 0x0d948328 (Size: 56 bytes, Frame: 16)
.ent ApplyViewport
ApplyViewport:
    # Line 194
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x15
    addiu	$ra,$ra,-29464
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 195
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-32128
    bal __glKonCreateContext-0x1860
    nop
    ld	$ra,0($sp)
    # Line 196
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end ApplyViewport

# Function: ApplyScissor
# Declared: Line 200 (Source lines: 201-201)
# Address: 0x0d948330 - 0x0d948338 (Size: 8 bytes, Frame: 0)
.ent ApplyScissor
ApplyScissor:
    # Line 201
    jr	$ra
    nop
.end ApplyScissor

# Function: SwapBuffers
# Declared: Line 204 (Source lines: 204-224)
# Address: 0x0d948340 - 0x0d9483d8 (Size: 152 bytes, Frame: 48)
.ent SwapBuffers
SwapBuffers:
    # Line 204
    addiu	$sp,$sp,-48
    lbu	$at,3222($a0)
    sd	$a0,16($sp)
    lui	$v0,0x15
    sd	$ra,32($sp)
    addiu	$v0,$v0,-29544
    sd	$gp,24($sp)
    beqz	$at,.L0d94839c
    addu	$gp,$t9,$v0
    # Line 212
    li	$a2,198
    sw	$a2,16384($zero)
    sw	$zero,16384($zero)
    # Line 215
    ld	$a0,16($sp)
    # Line 220
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 215
    lw	$a1,31564($a0)
    sw	$a1,0($sp)
    # Line 220
    addiu	$a2,$sp,0
    # Line 218
    lw	$v1,31576($a0)
    # Line 220
    li	$a1,1005
    jal	__glKon_ioctl
    # Line 218
    sw	$v1,4($sp)
    # Line 220
    bltz	$v0,.L0d9483ac
    # Line 221
    nop	# was lw $t9, -18584($gp) # &perror
.L0d94839c:
    ld	$ra,32($sp)
.L0d9483a0:
    # Line 224
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9483ac:
    # Line 221
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,-8600
    # Line 222
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,20($t9)
    la	$a1,.rodata
    jalr	$t9
    addiu	$a1,$a1,-8584
    b	.L0d9483a0
    ld	$ra,32($sp)
.end SwapBuffers

# Function: ChannelRect
# Declared: Line 227 (Source lines: 227-269)
# Address: 0x0d9483e0 - 0x0d948490 (Size: 176 bytes, Frame: 32)
.ent ChannelRect
ChannelRect:
    # Line 254
    li	$v1,422
    sw	$v1,16384($zero)
    # Line 252
    li	$a6,20
    # Line 254
    sw	$a6,16384($zero)
    # Line 227
    addiu	$sp,$sp,-32
    # Line 244
    li	$v0,1
    sw	$v0,28($sp)
    # Line 243
    sw	$zero,24($sp)
    # Line 242
    sw	$zero,20($sp)
    # Line 240
    sw	$a4,16($sp)
    # Line 239
    sw	$a3,12($sp)
    # Line 237
    sw	$a1,4($sp)
    # Line 238
    addu	$at,$a2,$a4
    # Line 236
    sw	$a0,0($sp)
    # Line 254
    addiu	$a7,$sp,0
    # Line 238
    addiu	$at,$at,-1
    sw	$at,8($sp)
    # Line 260
    lw	$a1,28($sp)
    lw	$a2,24($sp)
    lw	$a3,20($sp)
    lw	$a4,16($sp)
    lw	$t3,0($sp)
    # Line 262
    sw	$t3,16384($zero)
    # Line 260
    lw	$t2,4($sp)
    # Line 262
    sw	$t2,16384($zero)
    # Line 260
    lw	$t1,8($sp)
    # Line 261
    addu	$a6,$t3,$a6
    # Line 260
    lw	$a5,12($sp)
    # Line 261
    addu	$a6,$t2,$a6
    # Line 262
    sw	$t1,16384($zero)
    # Line 261
    addu	$a6,$t1,$a6
    # Line 262
    sw	$a5,16384($zero)
    # Line 261
    addu	$a5,$a5,$a6
    # Line 262
    sw	$a4,16384($zero)
    # Line 261
    addu	$a4,$a4,$a5
    # Line 262
    sw	$a3,16384($zero)
    # Line 261
    addu	$a3,$a3,$a4
    # Line 262
    sw	$a2,16384($zero)
    # Line 261
    addu	$a2,$a2,$a3
    # Line 262
    sw	$a1,16384($zero)
    # Line 261
    addu	$a1,$a1,$a2
    # Line 265
    sw	$a1,16384($zero)
    # Line 269
    jr	$ra
    addiu	$sp,$sp,32
.end ChannelRect

# Function: ChannelRectSync
# Declared: Line 272 (Source lines: 272-305)
# Address: 0x0d948490 - 0x0d9484dc (Size: 76 bytes, Frame: 16)
.ent ChannelRectSync
ChannelRectSync:
    # Line 292
    li	$v0,422
    sw	$v0,16384($zero)
    # Line 290
    li	$a3,78
    # Line 292
    sw	$a3,16384($zero)
    # Line 272
    addiu	$sp,$sp,-16
    # Line 282
    xori	$at,$a1,0x1
    # Line 281
    sw	$a0,0($sp)
    # Line 292
    addiu	$a4,$sp,0
    # Line 282
    sltiu	$at,$at,1
    sw	$at,4($sp)
    # Line 298
    lw	$a2,0($sp)
    lw	$a1,4($sp)
    # Line 300
    sw	$a2,16384($zero)
    # Line 299
    addu	$a2,$a2,$a3
    # Line 300
    sw	$a1,16384($zero)
    # Line 299
    addu	$a1,$a1,$a2
    # Line 303
    sw	$a1,16384($zero)
    # Line 305
    jr	$ra
    addiu	$sp,$sp,16
.end ChannelRectSync

# Function: Error
# Declared: Line 310 (Source lines: 311-312)
# Address: 0x0d9484e0 - 0x0d9484f0 (Size: 16 bytes, Frame: 0)
.ent Error
Error:
    # Line 311
    li	$at,228
    sw	$at,16384($zero)
    # Line 312
    jr	$ra
    # Line 311
    sw	$a1,16384($zero)
.end Error

# Function: PickBufferProcs
# Declared: Line 317 (Source lines: 317-320)
# Address: 0x0d9484f0 - 0x0d948524 (Size: 52 bytes, Frame: 16)
.ent PickBufferProcs
PickBufferProcs:
    # Line 317
    lui	$at,0x15
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29976
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 318
    # lw $t9, -27440($gp) # &__glGenericPickBufferProcs
    # Line 317
    sd	$ra,0($sp)
    # Line 318
    jal	__glGenericPickBufferProcs
    nop
    ld	$ra,0($sp)
    # Line 320
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end PickBufferProcs

# Function: LoseCurrent
# Declared: Line 322 (Source lines: 323-349)
# Address: 0x0d948530 - 0x0d9485e8 (Size: 184 bytes, Frame: 32)
.ent LoseCurrent
LoseCurrent:
    # Line 323
    addiu	$sp,$sp,-32
    # Line 328
    lw	$v0,3204($a0)
    li	$v1,7168
    # Line 323
    lui	$at,0x15
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,-30040
    sd	$gp,0($sp)
    # Line 328
    bne	$v0,$v1,.L0d9485d4
    # Line 323
    addu	$gp,$t9,$at
    # Line 328
    lw	$a0,4120($zero)
    li	$v0,1
    beq	$a0,$v0,.L0d9485d8
    # Line 329
    move	$v0,$zero
    lw	$v1,168($s0)
    andi	$v1,$v1,0x4
    beqz	$v1,.L0d948590
    # Line 332
    nop	# was lw $t9, -28592($gp) # &__glLoseCurrentBuffers
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glLoseCurrentBuffers
    move	$a1,$zero
    ld	$ra,16($sp)
    lw	$a0,4120($zero)
.L0d948590:
    # Line 338
    sw	$zero,4112($zero)
    # Line 339
    lw	$a1,4988($s0)
    # Line 349
    ld	$gp,0($sp)
    li	$v0,1
    # Line 339
    beqz	$a1,.L0d9485c8
    sw	$a0,3200($s0)
    # Line 343
    lw	$a5,4136($zero)
    sw	$a5,5052($s0)
    # Line 344
    lw	$a4,4140($zero)
    sw	$a4,5056($s0)
    # Line 345
    lw	$a3,4144($zero)
    sw	$a3,5060($s0)
    # Line 346
    lw	$a2,4148($zero)
    sw	$a2,5064($s0)
.L0d9485c8:
    # Line 349
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9485d4:
    # Line 329
    move	$v0,$zero
.L0d9485d8:
    # Line 349
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end LoseCurrent

# Function: DestroyContext
# Declared: Line 354 (Source lines: 355-376)
# Address: 0x0d9485f0 - 0x0d9486f4 (Size: 260 bytes, Frame: 48)
.ent DestroyContext
DestroyContext:
    # Line 355
    lui	$at,0x15
    addiu	$sp,$sp,-48
    addiu	$at,$at,-30232
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 359
    # lw $t9, -31672($gp) # &__glkon_FreeTextureState
    # Line 355
    sd	$s1,8($sp)
    # Line 359
    nop
    # Line 355
    sd	$ra,0($sp)
    # Line 359
    jal	__glkon_FreeTextureState
    # Line 355
    move	$s1,$a0
    # Line 361
    # lw $t9, -31432($gp) # &__glKonFreeEvaluators
    move	$a0,$s1
    jal	__glKonFreeEvaluators
    sd	$s3,24($sp)
    lui	$s3,0x1
    addu	$s3,$s1,$s3
    lw	$a1,-24284($s3)
    sd	$s0,32($sp)
    move	$s0,$zero
    beqz	$a1,.L0d94869c
    sd	$s2,40($sp)
    lw	$t8,3776($s1)
    blez	$t8,.L0d948690
    move	$s2,$zero
    nop
    nop
    nop
.L0d948660:
    # Line 366
    lw	$t9,12($s1)
    lw	$a1,-24284($s3)
    addu	$a1,$a1,$s0
    move	$a0,$s1
    jalr	$t9
    lw	$a1,0($a1)
    # Line 365
    lw	$a2,3776($s1)
    addiu	$s2,$s2,1
    slt	$a2,$s2,$a2
    bnez	$a2,.L0d948660
    addiu	$s0,$s0,4
    lw	$a1,-24284($s3)
.L0d948690:
    # Line 367
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
.L0d94869c:
    ld	$s3,24($sp)
    # Line 370
    lw	$t9,12($s1)
    ld	$s2,40($sp)
    ld	$s0,32($sp)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,31600($s1)
    # Line 372
    lw	$t9,48($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 374
    # lw $t9, -18580($gp) # &free
    lw	$a0,3576($s1)
    jal	free
    # Line 373
    sw	$zero,31564($s1)
    # Line 375
    # lw $t9, -28628($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s1
    ld	$ra,0($sp)
    ld	$s1,8($sp)
    # Line 376
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end DestroyContext

# Function: initialDestroyContext
# Declared: Line 378 (Source lines: 379-384)
# Address: 0x0d948700 - 0x0d94874c (Size: 76 bytes, Frame: 32)
.ent initialDestroyContext
initialDestroyContext:
    # Line 379
    lui	$at,0x15
    addiu	$sp,$sp,-32
    addiu	$at,$at,-30504
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 382
    # lw $t9, -31672($gp) # &__glkon_FreeTextureState
    # Line 379
    sd	$s8,8($sp)
    # Line 382
    nop
    # Line 379
    sd	$ra,0($sp)
    # Line 382
    jal	__glkon_FreeTextureState
    # Line 379
    move	$s8,$a0
    # Line 383
    # lw $t9, -28628($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 384
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end initialDestroyContext

# Function: map_rtc
# Declared: Line 392 (Source lines: 393-430)
# Address: 0x0d948750 - 0x0d9488c0 (Size: 368 bytes, Frame: 48)
.ent map_rtc
map_rtc:
    # Line 393
    lw	$v0,-16524($gp)
    li	$at,-1
    addiu	$sp,$sp,-48
    bne	$at,$v0,.L0d94884c
    sd	$ra,32($sp)
    # Line 405
    # lw $t9, -18576($gp) # &getpagesize
    jal	getpagesize
    nop
    # Line 406
    # lw $t9, -18572($gp) # &syssgi
    addiu	$a1,$sp,0
    li	$a0,13
    # Line 405
    addiu	$v1,$v0,-1
    # Line 406
    jal	syssgi
    sd	$v1,24($sp)
    # Line 408
    la	$a0,.rodata
    # lw $t9, -18568($gp) # &open
    # Line 407
    ld	$a2,24($sp)
    # Line 408
    move	$a1,$zero
    # Line 406
    sd	$v0,8($sp)
    # Line 408
    addiu	$a0,$a0,-8560
    # Line 407
    nor	$a2,$a2,$zero
    and	$a2,$v0,$a2
    # Line 408
    jal	open
    # Line 407
    sd	$a2,16($sp)
    # Line 408
    li	$a4,-1
    beq	$v0,$a4,.L0d9488a4
    # Line 410
    la	$a1,.rodata
    # Line 413
    # lw $t9, -18564($gp) # &mmap
    move	$a4,$v0
    ld	$a5,16($sp)
    li	$a3,18
    li	$a2,1
    li	$a1,8
    dsll32	$a5,$a5,0x0
    lui	$a0,0x1
    jal	mmap
    dsrl32	$a5,$a5,0x0
    li	$a6,-1
    move	$a3,$v0
    beq	$a6,$v0,.L0d94885c
    sw	$v0,-16524($gp)
.L0d9487f4:
    # Line 416
    lui	$a7,0x1
    # Line 422
    ld	$a5,8($sp)
    ld	$a6,24($sp)
    # Line 416
    beq	$a7,$a3,.L0d94883c
    # Line 422
    ori	$a4,$a7,0x100
    # Line 418
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    li	$a2,8
    addiu	$a1,$a1,-8504
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,32($sp)
    # Line 420
    move	$v0,$zero
    # Line 419
    li	$a2,-1
    sw	$a2,-16524($gp)
    # Line 430
    jr	$ra
    addiu	$sp,$sp,48
.L0d94883c:
    # Line 422
    and	$a5,$a5,$a6
    addu	$a3,$a3,$a5
    bne	$a3,$a4,.L0d948870
    sw	$a3,-16524($gp)
.L0d94884c:
    # Line 430
    li	$v0,1
.L0d948850:
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94885c:
    # Line 416
    # lw $t9, -18584($gp) # &perror
    jal	perror
    addiu	$a0,$gp,-16440
    b	.L0d9487f4
    lw	$a3,-16524($gp)
.L0d948870:
    # Line 425
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    li	$a2,8
    addiu	$a1,$a1,-8464
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,32($sp)
    # Line 427
    move	$v0,$zero
    # Line 426
    li	$a2,-1
    sw	$a2,-16524($gp)
    # Line 430
    jr	$ra
    addiu	$sp,$sp,48
.L0d9488a4:
    # Line 410
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-8544
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 411
    b	.L0d948850
    move	$v0,$zero
.end map_rtc

# Function: MakeCurrentRead
# Declared: Line 456 (Source lines: 459-862)
# Address: 0x0d9488c0 - 0x0d9499d8 (Size: 4376 bytes, Frame: 144)
.ent MakeCurrentRead
MakeCurrentRead:
    # Line 459
    addiu	$sp,$sp,-144
    sd	$s8,72($sp)
    # Line 463
    xor	$v0,$a1,$a2
    sltiu	$v0,$v0,1
    sb	$v0,3536($a0)
    # Line 459
    move	$s8,$a2
    # Line 463
    lw	$v1,0($a2)
    # Line 459
    lui	$at,0x15
    # Line 463
    li	$v0,3
    # Line 459
    sd	$s0,56($sp)
    move	$s0,$a0
    addiu	$at,$at,-30952
    sd	$gp,64($sp)
    # Line 463
    beq	$v1,$v0,.L0d949238
    # Line 459
    addu	$gp,$t9,$at
    # Line 472
    lw	$t2,4($a2)
    lw	$a0,3376($a0)
    lw	$v1,0($t2)
    beq	$v1,$a0,.L0d948a24
    addiu	$t8,$t2,24
.L0d948910:
    addiu	$a7,$s0,3400
    li	$a5,0x20
    addiu	$t3,$t2,8
    addiu	$a6,$s0,3384
    # Line 475
    li	$a0,20
    move	$v0,$zero
    addiu	$t1,$s0,3376
    # Line 474
    li	$a2,1
    addiu	$t9,$s0,3392
    addiu	$t0,$t2,16
    nop
    nop
.L0d948940:
    # Line 475
    addu	$v1,$v0,$t2
    addu	$a3,$v0,$t1
    ld	$v1,0($v1)
    addu	$at,$v0,$t3
    sd	$v1,0($a3)
    addu	$v1,$v0,$a6
    ld	$at,0($at)
    addu	$a4,$v0,$t0
    sd	$at,0($v1)
    addu	$at,$v0,$t9
    ld	$a4,0($a4)
    addiu	$a0,$a0,-4
    addu	$a3,$v0,$t8
    sd	$a4,0($at)
    addu	$a4,$v0,$a7
    ld	$a3,0($a3)
    addu	$v0,$v0,$a5
    bgtz	$a0,.L0d948940
    sd	$a3,0($a4)
    # Line 477
    lbu	$a0,3220($s0)
    beqz	$a0,.L0d9491d4
    nop
    lbu	$a3,3381($s0)
    beqz	$a3,.L0d9491d4
    nop
    # Line 478
    sb	$zero,3381($s0)
.L0d9489a8:
    # Line 479
    li	$a4,1
.L0d9489ac:
    sd	$a4,48($sp)
    sd	$a1,32($sp)
    sd	$ra,136($sp)
.L0d9489b8:
    # Line 494
    sw	$s0,4112($zero)
    # Line 495
    lw	$a5,3200($s0)
    sw	$a5,4120($zero)
    # Line 497
    lw	$t9,56($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0d948a00
    lw	$a2,168($s0)
    andi	$a6,$a2,0x2
    beqz	$a6,.L0d949218
    # Line 500
    ld	$a7,32($sp)
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    # Line 500
    move	$v0,$zero
    # Line 862
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d948a00:
    # Line 524
    andi	$a7,$a2,0x4
    beqz	$a7,.L0d948a44
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    # Line 527
    move	$v0,$zero
    # Line 862
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d948a24:
    # Line 472
    lw	$t0,3460($s0)
    li	$t1,-3
    beq	$t0,$t1,.L0d948910
    addiu	$t8,$t2,24
    # Line 479
    sd	$zero,48($sp)
    sd	$a1,32($sp)
    b	.L0d9489b8
    sd	$ra,136($sp)
.L0d948a44:
    # Line 531
    la	$a0,__glkonim_dispatchState
    li	$a1,4
    # Line 530
    addiu	$a6,$s0,8032
    sd	$a6,40($sp)
    # Line 531
    li	$v0,236
    move	$a5,$zero
    # Line 530
    sw	$a6,6132($s0)
.L0d948a60:
    addiu	$a1,$a1,-1
    # Line 531
    addu	$t2,$a5,$a0
    addiu	$v0,$v0,-1
    addu	$t3,$a5,$a6
    ld	$t2,0($t2)
    addiu	$a5,$a5,8
    bnez	$a1,.L0d948a60
    sd	$t2,0($t3)
    sd	$s1,88($sp)
    addiu	$s1,$a0,56
    sd	$s2,128($sp)
    addiu	$s2,$a6,56
    sd	$s3,120($sp)
    li	$s3,0x40
    addiu	$t0,$a0,8
    addiu	$a7,$a6,8
    sd	$s6,112($sp)
    addiu	$s6,$a6,16
    sd	$s7,96($sp)
    addiu	$s7,$a0,16
    addiu	$t3,$a0,24
    addiu	$t8,$a6,24
    addiu	$t1,$a0,40
    addiu	$ra,$a6,40
    addiu	$t9,$a6,48
    sd	$s4,104($sp)
    addiu	$s4,$a0,48
    sd	$s5,80($sp)
    addiu	$s5,$a6,32
    addiu	$t2,$a0,32
    nop
    nop
.L0d948ae0:
    addu	$a1,$a5,$a0
    addu	$a3,$a5,$a6
    ld	$a1,0($a1)
    addu	$v1,$a5,$t0
    sd	$a1,0($a3)
    addu	$a1,$a5,$a7
    ld	$v1,0($v1)
    addu	$at,$a5,$s7
    sd	$v1,0($a1)
    addu	$v1,$a5,$s6
    ld	$at,0($at)
    addu	$a4,$a5,$t3
    sd	$at,0($v1)
    addu	$at,$a5,$t8
    ld	$a4,0($a4)
    addu	$a3,$a5,$t2
    sd	$a4,0($at)
    addu	$a4,$a5,$s5
    ld	$a3,0($a3)
    addu	$a1,$a5,$t1
    sd	$a3,0($a4)
    addu	$a3,$a5,$ra
    ld	$a1,0($a1)
    addu	$v1,$a5,$s4
    sd	$a1,0($a3)
    addu	$a1,$a5,$t9
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a5,$s1
    sd	$v1,0($a1)
    addu	$v1,$a5,$s2
    ld	$at,0($at)
    addu	$a5,$a5,$s3
    bgtz	$v0,.L0d948ae0
    sd	$at,0($v1)
    li	$a1,4
    # Line 532
    li	$v0,236
    move	$a5,$zero
    addiu	$a0,$s0,6136
    la	$a7,__glkonlc_dispatchState
.L0d948b80:
    addiu	$a1,$a1,-1
    addu	$a3,$a5,$a7
    addiu	$v0,$v0,-1
    addu	$a4,$a5,$a0
    ld	$a3,0($a3)
    addiu	$a5,$a5,8
    bnez	$a1,.L0d948b80
    sd	$a3,0($a4)
    addiu	$t0,$a7,56
    addiu	$t2,$a0,56
    li	$s6,0x40
    sd	$s8,16($sp)
    addiu	$s8,$a7,8
    addiu	$s7,$a0,8
    addiu	$s2,$a0,16
    addiu	$s3,$a7,16
    addiu	$ra,$a7,24
    addiu	$t8,$a0,24
    addiu	$t3,$a7,40
    addiu	$t1,$a0,40
    addiu	$s5,$a0,48
    addiu	$s4,$a7,48
    addiu	$s1,$a0,32
    addiu	$t9,$a7,32
.L0d948be0:
    addu	$a6,$a5,$a7
    addu	$at,$a5,$a0
    ld	$a6,0($a6)
    addu	$a4,$a5,$s8
    sd	$a6,0($at)
    addu	$a6,$a5,$s7
    ld	$a4,0($a4)
    addu	$a3,$a5,$s3
    sd	$a4,0($a6)
    addu	$a4,$a5,$s2
    ld	$a3,0($a3)
    addu	$a1,$a5,$ra
    sd	$a3,0($a4)
    addu	$a3,$a5,$t8
    ld	$a1,0($a1)
    addu	$v1,$a5,$t9
    sd	$a1,0($a3)
    addu	$a1,$a5,$s1
    ld	$v1,0($v1)
    addu	$at,$a5,$t3
    sd	$v1,0($a1)
    addu	$v1,$a5,$t1
    ld	$at,0($at)
    addu	$a6,$a5,$s4
    sd	$at,0($v1)
    addu	$at,$a5,$s5
    ld	$a6,0($a6)
    addiu	$v0,$v0,-8
    addu	$a4,$a5,$t0
    sd	$a6,0($at)
    addu	$a6,$a5,$t2
    ld	$a4,0($a4)
    addu	$a5,$a5,$s6
    bgtz	$v0,.L0d948be0
    sd	$a4,0($a6)
    # Line 536
    la	$a7,__pglce_dispatchState
    andi	$t0,$a2,0x1
    lw	$a7,0($a7)
    beqz	$t0,.L0d949464
    sw	$a7,8024($s0)
    # Line 595
    lw	$t9,40($s0)
.L0d948c84:
    move	$a0,$s0
    jalr	$t9
    li	$a1,16384
    # Line 597
    lw	$t9,52($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 595
    sw	$v0,31560($s0)
    # Line 597
    lw	$a2,168($s0)
    andi	$t0,$a2,0x2
    beqz	$t0,.L0d9495d4
.L0d948cac:
    # Line 697
    andi	$t1,$a2,0x6
    beqz	$t1,.L0d9497ac
    # Line 795
    ld	$t2,48($sp)
    bnez	$t2,.L0d948cd4
    # Line 796
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 795
    ld	$t3,16($sp)
    lw	$t3,0($t3)
    li	$t8,3
    bne	$t3,$t8,.L0d948ce4
    # Line 796
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
.L0d948cd4:
    addiu	$t9,$t9,-24640
    move	$a0,$s0
    bal __glKonCreateContext
    ld	$a1,16($sp)
.L0d948ce4:
    lw	$ra,4988($s0)
.L0d948ce8:
    beqz	$ra,.L0d948d14
    # Line 811
    nop	# was lw $t9, -31676($gp) # &__glKonValidateTextureState
    # Line 801
    lw	$a0,5052($s0)
    sw	$a0,4136($zero)
    # Line 802
    lw	$v1,5056($s0)
    sw	$v1,4140($zero)
    # Line 803
    lw	$v0,5060($s0)
    sw	$v0,4144($zero)
    # Line 804
    lw	$at,5064($s0)
    sw	$at,4148($zero)
    # Line 811
    # lw $t9, -31676($gp) # &__glKonValidateTextureState
.L0d948d14:
    # Line 808
    lw	$a1,168($s0)
    # Line 811
    move	$a0,$s0
    # Line 808
    ori	$a1,$a1,0x3
    # Line 809
    li	$a2,-5
    and	$a1,$a1,$a2
    # Line 811
    jal	__glKonValidateTextureState
    # Line 809
    sw	$a1,168($s0)
    # Line 811
    lw	$a2,31580($s0)
    andi	$a2,$a2,0x1
    beqz	$a2,.L0d94906c
    ld	$a4,40($sp)
    li	$a5,4
    lw	$a3,4988($s0)
    # Line 820
    li	$v0,236
    # Line 814
    addiu	$s7,$s0,9920
    # Line 820
    move	$a0,$zero
    movz	$s7,$a4,$a3
    # Line 819
    li	$a2,4176
    sw	$a2,6132($s0)
    # Line 820
    move	$a1,$s7
.L0d948d64:
    addiu	$a5,$a5,-1
    addu	$a6,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a7,$a0,$a2
    ld	$a6,0($a6)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d948d64
    sd	$a6,0($a7)
    addiu	$t8,$a1,56
    addiu	$s5,$a2,56
    li	$s6,0x40
    addiu	$s4,$a1,8
    addiu	$s1,$a2,8
    addiu	$t2,$a2,16
    addiu	$t1,$a1,16
    addiu	$ra,$a1,24
    addiu	$s2,$a2,24
    addiu	$s3,$a1,40
    addiu	$t9,$a2,40
    addiu	$t3,$a2,48
    addiu	$t0,$a1,48
    addiu	$a5,$a2,32
    addiu	$a7,$a1,32
.L0d948dc0:
    addu	$a3,$a0,$a1
    addu	$a4,$a0,$a2
    ld	$a3,0($a3)
    addu	$v1,$a0,$s4
    sd	$a3,0($a4)
    addu	$a3,$a0,$s1
    ld	$v1,0($v1)
    addu	$at,$a0,$t1
    sd	$v1,0($a3)
    addu	$v1,$a0,$t2
    ld	$at,0($at)
    addu	$a6,$a0,$ra
    sd	$at,0($v1)
    addu	$at,$a0,$s2
    ld	$a6,0($a6)
    addu	$a4,$a0,$a7
    sd	$a6,0($at)
    addu	$a6,$a0,$a5
    ld	$a4,0($a4)
    addu	$a3,$a0,$s3
    sd	$a4,0($a6)
    addu	$a4,$a0,$t9
    ld	$a3,0($a3)
    addu	$v1,$a0,$t0
    sd	$a3,0($a4)
    addu	$a3,$a0,$t3
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$t8
    sd	$v1,0($a3)
    addu	$v1,$a0,$s5
    ld	$at,0($at)
    addu	$a0,$a0,$s6
    bgtz	$v0,.L0d948dc0
    sd	$at,0($v1)
    # Line 821
    # lw $t9, -31916($gp) # &__glkonResolveContext
    jal	__glkonResolveContext
    nop
    li	$a5,4
    # Line 822
    li	$a0,236
    move	$v0,$zero
    move	$a1,$s7
    li	$a2,4176
.L0d948e6c:
    addiu	$a5,$a5,-1
    addu	$a4,$v0,$a2
    addiu	$a0,$a0,-1
    addu	$a6,$v0,$a1
    ld	$a4,0($a4)
    addiu	$v0,$v0,8
    bnez	$a5,.L0d948e6c
    sd	$a4,0($a6)
    addiu	$a7,$a2,56
    addiu	$a5,$a1,56
    li	$t3,0x40
    addiu	$s5,$a2,8
    addiu	$s4,$a1,8
    addiu	$s2,$a1,16
    addiu	$s6,$a2,16
    addiu	$s3,$a2,24
    addiu	$t2,$a1,24
    addiu	$t1,$a2,40
    addiu	$t0,$a1,40
    addiu	$t8,$a1,48
    addiu	$t9,$a2,48
    addiu	$ra,$a1,32
    addiu	$s1,$a2,32
    nop
    nop
.L0d948ed0:
    addu	$v1,$v0,$a2
    addu	$a3,$v0,$a1
    ld	$v1,0($v1)
    addu	$at,$v0,$s5
    sd	$v1,0($a3)
    addu	$v1,$v0,$s4
    ld	$at,0($at)
    addu	$a6,$v0,$s6
    sd	$at,0($v1)
    addu	$at,$v0,$s2
    ld	$a6,0($a6)
    addu	$a4,$v0,$s3
    sd	$a6,0($at)
    addu	$a6,$v0,$t2
    ld	$a4,0($a4)
    addu	$a3,$v0,$s1
    sd	$a4,0($a6)
    addu	$a4,$v0,$ra
    ld	$a3,0($a3)
    addu	$v1,$v0,$t1
    sd	$a3,0($a4)
    addu	$a3,$v0,$t0
    ld	$v1,0($v1)
    addu	$at,$v0,$t9
    sd	$v1,0($a3)
    addu	$v1,$v0,$t8
    ld	$at,0($at)
    addiu	$a0,$a0,-8
    addu	$a6,$v0,$a7
    sd	$at,0($v1)
    addu	$at,$v0,$a5
    ld	$a6,0($a6)
    addu	$v0,$v0,$t3
    bgtz	$a0,.L0d948ed0
    sd	$a6,0($at)
    lw	$a1,4168($zero)
    beqz	$a1,.L0d94905c
    li	$a5,4
    # Line 823
    li	$a0,236
    move	$v0,$zero
    li	$a2,4176
.L0d948f74:
    addiu	$a5,$a5,-1
    addu	$a3,$v0,$a1
    addiu	$a0,$a0,-1
    addu	$a4,$v0,$a2
    ld	$a3,0($a3)
    addiu	$v0,$v0,8
    bnez	$a5,.L0d948f74
    sd	$a3,0($a4)
    addiu	$t0,$a1,56
    addiu	$s3,$a2,56
    li	$s2,0x40
    addiu	$s6,$a1,8
    addiu	$s5,$a2,8
    addiu	$a7,$a2,16
    addiu	$a5,$a1,16
    addiu	$t8,$a1,24
    addiu	$s4,$a2,24
    addiu	$s1,$a1,40
    addiu	$t3,$a2,40
    addiu	$ra,$a2,48
    addiu	$t9,$a1,48
    addiu	$t2,$a2,32
    addiu	$t1,$a1,32
.L0d948fd0:
    addu	$at,$v0,$a1
    addu	$v1,$v0,$a2
    ld	$at,0($at)
    addu	$a6,$v0,$s6
    sd	$at,0($v1)
    addu	$at,$v0,$s5
    ld	$a6,0($a6)
    addu	$a4,$v0,$a5
    sd	$a6,0($at)
    addu	$a6,$v0,$a7
    ld	$a4,0($a4)
    addu	$a3,$v0,$t8
    sd	$a4,0($a6)
    addu	$a4,$v0,$s4
    ld	$a3,0($a3)
    addu	$v1,$v0,$t1
    sd	$a3,0($a4)
    addu	$a3,$v0,$t2
    ld	$v1,0($v1)
    addu	$at,$v0,$s1
    sd	$v1,0($a3)
    addu	$v1,$v0,$t3
    ld	$at,0($at)
    addu	$a6,$v0,$t9
    sd	$at,0($v1)
    addu	$at,$v0,$ra
    ld	$a6,0($a6)
    addiu	$a0,$a0,-8
    addu	$a4,$v0,$t0
    sd	$a6,0($at)
    addu	$a6,$v0,$s3
    ld	$a4,0($a4)
    addu	$v0,$v0,$s2
    bgtz	$a0,.L0d948fd0
    sd	$a4,0($a6)
.L0d94905c:
    # Line 824
    lw	$v0,31580($s0)
    li	$v1,-2
    and	$v0,$v0,$v1
    sw	$v0,31580($s0)
.L0d94906c:
    lw	$a0,4168($zero)
    beqz	$a0,.L0d949338
    lw	$v0,4988($s0)
    beqz	$v0,.L0d94978c
    ld	$t9,40($sp)
    # Line 833
    lw	$a2,4984($s0)
    li	$a3,4864
    addiu	$a1,$s0,9920
    beq	$a2,$a3,.L0d949794
    sw	$a1,6132($s0)
    # Line 835
    lw	$a2,8024($s0)
.L0d949098:
    li	$a5,4
    li	$v0,236
    move	$a0,$zero
    addiu	$a1,$s0,8032
.L0d9490a8:
    addiu	$a5,$a5,-1
    addu	$a4,$a0,$a2
    addiu	$v0,$v0,-1
    addu	$a6,$a0,$a1
    ld	$a4,0($a4)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9490a8
    sd	$a4,0($a6)
    addiu	$a6,$a2,56
    addiu	$s1,$a1,56
    li	$s0,0x40
    addiu	$s4,$a2,8
    addiu	$s3,$a1,8
    addiu	$t9,$a1,16
    addiu	$ra,$a2,16
    addiu	$a7,$a2,24
    addiu	$s2,$a1,24
    addiu	$t1,$a2,40
    addiu	$a5,$a1,40
    addiu	$t0,$a1,48
    addiu	$t2,$a2,48
    addiu	$t3,$a1,32
    addiu	$t8,$a2,32
    nop
    nop
    nop
.L0d949110:
    addu	$a4,$a0,$a2
    addu	$at,$a0,$a1
    ld	$a4,0($a4)
    addu	$a3,$a0,$s4
    sd	$a4,0($at)
    addu	$a4,$a0,$s3
    ld	$a3,0($a3)
    addu	$v1,$a0,$ra
    sd	$a3,0($a4)
    addu	$a3,$a0,$t9
    ld	$v1,0($v1)
    addu	$at,$a0,$a7
    sd	$v1,0($a3)
    addu	$v1,$a0,$s2
    ld	$at,0($at)
    addu	$a4,$a0,$t8
    sd	$at,0($v1)
    addu	$at,$a0,$t3
    ld	$a4,0($a4)
    addu	$a3,$a0,$t1
    sd	$a4,0($at)
    addu	$a4,$a0,$a5
    ld	$a3,0($a3)
    addu	$v1,$a0,$t2
    sd	$a3,0($a4)
    addu	$a3,$a0,$t0
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$a6
    sd	$v1,0($a3)
    addu	$v1,$a0,$s1
    ld	$at,0($at)
    addu	$a0,$a0,$s0
    bgtz	$v0,.L0d949110
    sd	$at,0($v1)
.L0d94919c:
    ld	$s5,80($sp)
.L0d9491a0:
    ld	$s1,88($sp)
    ld	$s7,96($sp)
    ld	$s4,104($sp)
    ld	$s6,112($sp)
    ld	$s3,120($sp)
    ld	$s2,128($sp)
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    li	$v0,1
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9491d4:
    # Line 479
    lbu	$a5,3221($s0)
    beqz	$a5,.L0d9489ac
    li	$a4,1
    lbu	$a6,3380($s0)
    beqz	$a6,.L0d9489ac
    li	$a4,1
    # Line 482
    sw	$zero,3416($s0)
    sw	$zero,3420($s0)
    sw	$zero,3424($s0)
    sw	$zero,3428($s0)
    sw	$zero,3432($s0)
    sw	$zero,3436($s0)
    sw	$zero,3440($s0)
    sw	$zero,3444($s0)
    # Line 481
    sb	$zero,3380($s0)
    # Line 482
    b	.L0d9489a8
    # Line 480
    sb	$a2,3381($s0)
.L0d949218:
    # Line 500
    beq	$a7,$s8,.L0d9492d0
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    # Line 503
    move	$v0,$zero
    # Line 862
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d949238:
    # Line 463
    lw	$t0,3460($a0)
    li	$t1,-3
    beq	$t0,$t1,.L0d94979c
    li	$a6,0x20
    # Line 468
    li	$v0,20
    addiu	$a7,$a0,3240
    addiu	$t0,$a0,3400
    addiu	$a5,$a0,3224
    addiu	$t3,$a0,3384
    move	$a0,$zero
    addiu	$t8,$s0,3376
    addiu	$a2,$s0,3216
    addiu	$t2,$s0,3392
    addiu	$t1,$s0,3232
.L0d949270:
    addu	$a3,$a0,$a2
    addu	$a4,$a0,$t8
    ld	$a3,0($a3)
    addu	$v1,$a0,$a5
    sd	$a3,0($a4)
    addu	$a3,$a0,$t3
    ld	$v1,0($v1)
    addu	$at,$a0,$t1
    sd	$v1,0($a3)
    addu	$v1,$a0,$t2
    ld	$at,0($at)
    addiu	$v0,$v0,-4
    addu	$t9,$a0,$a7
    sd	$at,0($v1)
    addu	$at,$a0,$t0
    ld	$t9,0($t9)
    addu	$a0,$a0,$a6
    bgtz	$v0,.L0d949270
    sd	$t9,0($at)
    li	$a4,1
    sd	$a4,48($sp)
    sd	$a1,32($sp)
    b	.L0d9489b8
    sd	$ra,136($sp)
.L0d9492d0:
    # Line 506
    la	$t1,__glGenericDlistCompiler
    # Line 507
    la	$t0,__glGenericDlistOptimizer
    # Line 508
    la	$a7,__gl_GenericDlOps
    sw	$a7,4960($s0)
    # Line 507
    sw	$t0,4940($s0)
    # Line 506
    sw	$t1,4944($s0)
    # Line 509
    la	$a6,__glListExecTable
    sw	$a6,4956($s0)
    # Line 506
    la	$a6,__glNop
    # Line 511
    li	$a5,0x8aac
    sw	$a6,4952($s0)
    addu	$a5,$a5,$s0
    # Line 510
    sw	$a6,4948($s0)
    # Line 511
    lw	$a5,0($a5)
    bnez	$a5,.L0d9494bc
    sd	$v0,24($sp)
    # Line 524
    # lw $t9, -25452($gp) # &__glPixmapMakeCurrent
.L0d949314:
    move	$a0,$s0
    jal	__glPixmapMakeCurrent
    ld	$a1,24($sp)
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d949338:
    # Line 842
    beqz	$v0,.L0d9494d0
    li	$a5,4
    # Line 846
    lw	$t3,4984($s0)
    li	$t8,4864
    addiu	$t2,$s0,9920
    beq	$t3,$t8,.L0d949924
    sw	$t2,6132($s0)
    # Line 848
    lw	$a1,8024($s0)
.L0d949358:
    li	$a5,4
    li	$v0,236
    move	$a0,$zero
    li	$a2,4176
.L0d949368:
    addiu	$a5,$a5,-1
    addu	$t9,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$ra,$a0,$a2
    ld	$t9,0($t9)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d949368
    sd	$t9,0($ra)
    addiu	$a6,$a1,56
    addiu	$t9,$a2,56
    li	$t8,0x40
    addiu	$s1,$a1,8
    addiu	$s0,$a2,8
    addiu	$s3,$a2,16
    addiu	$s4,$a1,16
    addiu	$a7,$a1,24
    addiu	$ra,$a2,24
    addiu	$t1,$a1,40
    addiu	$a5,$a2,40
    addiu	$t0,$a2,48
    addiu	$t2,$a1,48
    addiu	$t3,$a2,32
    addiu	$s2,$a1,32
    nop
    nop
    nop
.L0d9493d0:
    addu	$a4,$a0,$a1
    addu	$at,$a0,$a2
    ld	$a4,0($a4)
    addu	$a3,$a0,$s1
    sd	$a4,0($at)
    addu	$a4,$a0,$s0
    ld	$a3,0($a3)
    addu	$v1,$a0,$s4
    sd	$a3,0($a4)
    addu	$a3,$a0,$s3
    ld	$v1,0($v1)
    addu	$at,$a0,$a7
    sd	$v1,0($a3)
    addu	$v1,$a0,$ra
    ld	$at,0($at)
    addu	$a4,$a0,$s2
    sd	$at,0($v1)
    addu	$at,$a0,$t3
    ld	$a4,0($a4)
    addu	$a3,$a0,$t1
    sd	$a4,0($at)
    addu	$a4,$a0,$a5
    ld	$a3,0($a3)
    addu	$v1,$a0,$t2
    sd	$a3,0($a4)
    addu	$a3,$a0,$t0
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$a6
    sd	$v1,0($a3)
    addu	$v1,$a0,$t9
    ld	$at,0($at)
    addu	$a0,$a0,$t8
    bgtz	$v0,.L0d9493d0
    sd	$at,0($v1)
    b	.L0d9491a0
    ld	$s5,80($sp)
.L0d949464:
    # Line 546
    lw	$t9,40($s0)
    move	$a0,$s0
    jalr	$t9
    li	$a1,16384
    # Line 548
    lw	$t9,44($s0)
    li	$a1,16384
    move	$a0,$s0
    jalr	$t9
    # Line 546
    sw	$v0,31560($s0)
    # Line 548
    bltz	$v0,.L0d94992c
    sw	$v0,31564($s0)
    # Line 575
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-30896
    bal __glKonCreateContext-0x1390
    nop
    beqz	$v0,.L0d949974
    # Line 583
    nop	# was lw $t9, -32748($gp) # &sub_0d940000
    addiu	$t9,$t9,32608
    bal __glKonCreateContext-0x1b80
    move	$a0,$s0
    b	.L0d948c84
    # Line 595
    lw	$t9,40($s0)
.L0d9494bc:
    # Line 521
    # lw $t9, -31672($gp) # &__glkon_FreeTextureState
    jal	__glkon_FreeTextureState
    move	$a0,$s0
    b	.L0d949314
    # Line 524
    nop	# was lw $t9, -25452($gp) # &__glPixmapMakeCurrent
.L0d9494d0:
    # Line 856
    li	$v0,236
    move	$a0,$zero
    addiu	$a2,$s0,8032
    # Line 855
    li	$a1,4176
    sw	$a1,6132($s0)
.L0d9494e4:
    addiu	$a5,$a5,-1
    # Line 856
    addu	$ra,$a0,$a2
    addiu	$v0,$v0,-1
    addu	$at,$a0,$a1
    ld	$ra,0($ra)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9494e4
    sd	$ra,0($at)
    addiu	$a6,$a2,56
    addiu	$t9,$a1,56
    li	$t8,0x40
    addiu	$s1,$a2,8
    addiu	$s0,$a1,8
    addiu	$s3,$a1,16
    addiu	$s4,$a2,16
    addiu	$a7,$a2,24
    addiu	$ra,$a1,24
    addiu	$t1,$a2,40
    addiu	$a5,$a1,40
    addiu	$t0,$a1,48
    addiu	$t2,$a2,48
    addiu	$t3,$a1,32
    addiu	$s2,$a2,32
.L0d949540:
    addu	$a4,$a0,$a2
    addu	$at,$a0,$a1
    ld	$a4,0($a4)
    addu	$a3,$a0,$s1
    sd	$a4,0($at)
    addu	$a4,$a0,$s0
    ld	$a3,0($a3)
    addu	$v1,$a0,$s4
    sd	$a3,0($a4)
    addu	$a3,$a0,$s3
    ld	$v1,0($v1)
    addu	$at,$a0,$a7
    sd	$v1,0($a3)
    addu	$v1,$a0,$ra
    ld	$at,0($at)
    addu	$a4,$a0,$s2
    sd	$at,0($v1)
    addu	$at,$a0,$t3
    ld	$a4,0($a4)
    addu	$a3,$a0,$t1
    sd	$a4,0($at)
    addu	$a4,$a0,$a5
    ld	$a3,0($a3)
    addu	$v1,$a0,$t2
    sd	$a3,0($a4)
    addu	$a3,$a0,$t0
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$a6
    sd	$v1,0($a3)
    addu	$v1,$a0,$t9
    ld	$at,0($at)
    addu	$a0,$a0,$t8
    bgtz	$v0,.L0d949540
    sd	$at,0($v1)
    b	.L0d9491a0
    ld	$s5,80($sp)
.L0d9495d4:
    # Line 685
    la	$t8,__glkon_varray_funcs
    sw	$t8,12716($s0)
    # Line 683
    la	$t3,__glGenericPickCopyImage
    sw	$t3,12628($s0)
    # Line 681
    la	$t2,__glkonConvertPolygonStipple
    sw	$t2,12712($s0)
    # Line 680
    la	$t1,__glkonle_Bitmap
    sw	$t1,12568($s0)
    # Line 602
    la	$v0,__glNop
    # Line 678
    sw	$v0,11904($s0)
    # Line 677
    sw	$v0,11872($s0)
    # Line 676
    sw	$v0,11852($s0)
    # Line 675
    sw	$v0,11896($s0)
    # Line 674
    sw	$v0,11900($s0)
    # Line 673
    sw	$v0,11876($s0)
    # Line 672
    sw	$v0,11864($s0)
    # Line 671
    sw	$v0,11880($s0)
    # Line 670
    sw	$v0,11888($s0)
    # Line 669
    sw	$v0,11916($s0)
    # Line 668
    sw	$v0,11912($s0)
    # Line 667
    sw	$v0,11908($s0)
    # Line 666
    sw	$v0,11868($s0)
    # Line 665
    sw	$v0,11860($s0)
    # Line 664
    sw	$v0,11856($s0)
    # Line 663
    sw	$v0,11848($s0)
    # Line 662
    sw	$v0,11884($s0)
    # Line 661
    sw	$v0,11892($s0)
    # Line 660
    sw	$v0,11844($s0)
    # Line 659
    sw	$v0,11924($s0)
    # Line 652
    la	$t0,__glkonle_ColorTableSGI
    sw	$t0,12720($s0)
    # Line 651
    la	$a7,__glkonle_DrawPixels
    sw	$a7,12616($s0)
    # Line 644
    la	$a6,__glComputeClipBox
    sw	$a6,11972($s0)
    # Line 643
    la	$a5,__glkonim_Flush
    sw	$a5,11824($s0)
    # Line 642
    la	$a4,__glkonim_Finish
    sw	$a4,11828($s0)
    # Line 638
    sw	$v0,12040($s0)
    # Line 637
    sw	$v0,12036($s0)
    # Line 636
    sw	$v0,12032($s0)
    # Line 635
    sw	$v0,12680($s0)
    # Line 634
    sw	$v0,12676($s0)
    # Line 633
    sw	$v0,12672($s0)
    # Line 632
    sw	$v0,12004($s0)
    # Line 630
    sw	$v0,12124($s0)
    # Line 629
    sw	$v0,12112($s0)
    # Line 628
    sw	$v0,12116($s0)
    # Line 627
    sw	$v0,12100($s0)
    # Line 626
    sw	$v0,12108($s0)
    # Line 625
    sw	$v0,12104($s0)
    # Line 624
    sw	$v0,12120($s0)
    # Line 623
    sw	$v0,12084($s0)
    # Line 622
    sw	$v0,12088($s0)
    # Line 621
    sw	$v0,12096($s0)
    # Line 620
    sw	$v0,12092($s0)
    # Line 618
    sw	$v0,11960($s0)
    # Line 617
    sw	$v0,11956($s0)
    # Line 616
    sw	$v0,11940($s0)
    # Line 615
    sw	$v0,11936($s0)
    # Line 614
    sw	$v0,11932($s0)
    # Line 613
    sw	$v0,11928($s0)
    # Line 611
    la	$a3,__glLoadIdentityModelViewMatrix
    sw	$a3,11952($s0)
    # Line 610
    la	$a1,__glPopModelViewMatrix
    sw	$a1,11948($s0)
    # Line 609
    la	$a0,__glPushModelViewMatrix
    sw	$a0,11944($s0)
    # Line 607
    la	$v1,__glGenericValidate
    sw	$v1,11840($s0)
    # Line 606
    sw	$v0,12148($s0)
    # Line 605
    sw	$v0,12156($s0)
    # Line 604
    sw	$v0,12564($s0)
    # Line 603
    sw	$v0,12048($s0)
    # Line 697
    la	$at,sub_0d950000
    # Line 602
    sw	$v0,12044($s0)
    # Line 697
    addiu	$at,$at,-23808
    sw	$at,164($s0)
    # Line 696
    la	$ra,sub_0d950000
    # Line 695
    # lw $t9, -32744($gp) # &sub_0d950000
    # Line 696
    addiu	$ra,$ra,-23984
    sw	$ra,160($s0)
    # Line 695
    addiu	$t9,$t9,-24112
    sw	$t9,156($s0)
    # Line 694
    la	$t8,sub_0d950000
    # Line 690
    la	$t3,sub_0d950000
    # Line 694
    addiu	$t8,$t8,-24240
    sw	$t8,152($s0)
    # Line 690
    addiu	$t3,$t3,-31600
    sw	$t3,136($s0)
    # Line 689
    la	$t2,sub_0d950000
    # Line 688
    la	$t1,sub_0d950000
    # Line 689
    addiu	$t2,$t2,-31776
    sw	$t2,132($s0)
    # Line 688
    addiu	$t1,$t1,-31936
    sw	$t1,124($s0)
    # Line 687
    la	$t0,sub_0d950000
    # Line 645
    la	$a7,sub_0d950000
    # Line 687
    addiu	$t0,$t0,-31248
    sw	$t0,88($s0)
    # Line 645
    addiu	$a7,$a7,-31520
    sw	$a7,11832($s0)
    # Line 641
    la	$a6,sub_0d950000
    # Line 640
    la	$a5,sub_0d950000
    # Line 641
    addiu	$a6,$a6,-32016
    sw	$a6,11968($s0)
    # Line 640
    addiu	$a5,$a5,-31952
    # Line 697
    b	.L0d948cac
    # Line 640
    sw	$a5,11964($s0)
.L0d94978c:
    b	.L0d94919c
    # Line 842
    sw	$t9,6132($s0)
.L0d949794:
    # Line 835
    b	.L0d949098
    addiu	$a2,$s0,6136
.L0d94979c:
    # Line 468
    sd	$zero,48($sp)
    sd	$a1,32($sp)
    b	.L0d9489b8
    sd	$ra,136($sp)
.L0d9497ac:
    # Line 709
    # lw $t9, -28632($gp) # &__glSoftResetContext
    move	$a0,$s0
    jal	__glSoftResetContext
    # Line 707
    lw	$s1,3576($s0)
    # Line 725
    # lw $t9, -32432($gp) # &__glkon_unique_per_ge_mem_alloc
    # Line 711
    la	$at,.rodata
    # Line 710
    sw	$s1,3576($s0)
    # Line 711
    addiu	$at,$at,-8424
    # Line 725
    bal __glkon_unique_per_ge_mem_alloc
    # Line 711
    sw	$at,3584($s0)
    # Line 728
    # lw $t9, -32428($gp) # &__glkon_share
    bal __glkon_share
    move	$a0,$s0
    # Line 737
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-25008
    bal __glKonCreateContext
    move	$a0,$s0
    ld	$ra,48($sp)
    beqz	$ra,.L0d949814
    # Line 741
    nop	# was lw $t9, -31680($gp) # &__glkon_InitTextureState
    # Line 738
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-24640
    move	$a0,$s0
    bal __glKonCreateContext
    ld	$a1,16($sp)
    # Line 741
    # lw $t9, -31680($gp) # &__glkon_InitTextureState
.L0d949814:
    jal	__glkon_InitTextureState
    move	$a0,$s0
    # Line 744
    # lw $t9, -31436($gp) # &__glKonInitEvaluators
    jal	__glKonInitEvaluators
    move	$a0,$s0
    # Line 747
    # lw $t9, -32328($gp) # &__glKonInitPixelState
    bal __glKonInitPixelState
    move	$a0,$s0
    # Line 754
    # lw $t9, -31148($gp) # &__glkon_InitHyperpipeState
    li	$a0,0x8c80
    jal	__glkon_InitHyperpipeState
    addu	$a0,$s0,$a0
    # Line 760
    lw	$t9,28($s0)
    move	$a0,$s0
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 765
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,-32224
    lw	$a2,12($sp)
    move	$a0,$s0
    bal __glKonCreateContext-0x18c0
    lw	$a1,8($sp)
    # Line 771
    lw	$t9,11840($s0)
    jal	sub_0d950000
    move	$a0,$s0
    # Line 780
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-7472
    sd	$v0,24($sp)
    # Line 782
    beqz	$v0,.L0d9498c0
    # Line 781
    sw	$zero,31576($s0)
    # Line 782
    ld	$a0,24($sp)
    lbu	$a0,0($a0)
    li	$a2,121
    beq	$a0,$a2,.L0d9499c0
    # Line 783
    nop	# was lw $t9, -18556($gp) # &printf
    # Line 782
    li	$a1,89
    beq	$a0,$a1,.L0d9499c0
    # Line 783
    nop	# was lw $t9, -18556($gp) # &printf
.L0d9498c0:
    # Line 788
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-7408
    # Line 789
    lw	$a1,31576($s0)
    # Line 788
    sd	$v0,24($sp)
    # Line 789
    andi	$a1,$a1,0x1
    # Line 790
    beqz	$v0,.L0d948ce4
    # Line 789
    sw	$a1,31576($s0)
    # Line 790
    ld	$a0,24($sp)
    lbu	$a0,0($a0)
    li	$a3,121
    beq	$a0,$a3,.L0d949908
    # Line 791
    nop	# was lw $t9, -18556($gp) # &printf
    # Line 790
    li	$a1,89
    bnel	$a0,$a1,.L0d948ce8
    # Line 796
    lw	$ra,4988($s0)
    # Line 791
    # lw $t9, -18556($gp) # &printf
.L0d949908:
    la	$a0,.rodata
    jal	printf
    addiu	$a0,$a0,-7384
    # Line 792
    lw	$a1,31576($s0)
    ori	$a1,$a1,0x2
    b	.L0d948ce4
    sw	$a1,31576($s0)
.L0d949924:
    # Line 848
    b	.L0d949358
    addiu	$a1,$s0,6136
.L0d94992c:
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s6,112($sp)
    ld	$s4,104($sp)
    # Line 551
    lw	$t9,12($s0)
    ld	$s7,96($sp)
    ld	$s1,88($sp)
    move	$a0,$zero
    ld	$s5,80($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    # Line 552
    move	$v0,$zero
    # Line 862
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d949974:
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s6,112($sp)
    ld	$s4,104($sp)
    # Line 576
    lw	$t9,12($s0)
    ld	$s7,96($sp)
    ld	$s1,88($sp)
    move	$a0,$zero
    ld	$s5,80($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,136($sp)
    # Line 862
    ld	$gp,64($sp)
    # Line 577
    move	$v0,$zero
    # Line 862
    ld	$s0,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
    # Line 783
    # lw $t9, -18556($gp) # &printf
.L0d9499c0:
    la	$a0,.rodata
    jal	printf
    addiu	$a0,$a0,-7448
    # Line 784
    li	$a1,1
    b	.L0d9498c0
    sw	$a1,31576($s0)
.end MakeCurrentRead

# Function: MakeCurrent
# Declared: Line 866 (Source lines: 867-872)
# Address: 0x0d9499e0 - 0x0d949a4c (Size: 108 bytes, Frame: 32)
.ent MakeCurrent
MakeCurrent:
    # Line 867
    addiu	$sp,$sp,-32
    lui	$at,0x14
    sd	$gp,16($sp)
    addiu	$at,$at,30200
    addu	$gp,$t9,$at
    # Line 870
    lw	$t9,60($a0)
    # Line 867
    sd	$s8,8($sp)
    sd	$s0,24($sp)
    # Line 870
    nop
    # Line 867
    sd	$ra,0($sp)
    # Line 870
    jalr	$t9
    # Line 867
    move	$s0,$a0
    # Line 871
    lw	$t9,64($s0)
    # Line 870
    move	$s8,$v0
    # Line 871
    jalr	$t9
    move	$a0,$s0
    # Line 872
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$ra,0($sp)
    # Line 871
    move	$a2,$v0
    # Line 872
    ld	$gp,16($sp)
    addiu	$t9,$t9,-30528
    move	$a0,$s0
    ld	$s0,24($sp)
    move	$a1,$s8
    ld	$s8,8($sp)
    bgezl	$zero,__glKonCreateContext-0x1220
    addiu	$sp,$sp,32
.end MakeCurrent

# Function: VisualsMatch
# Declared: Line 881 (Source lines: 885-885)
# Address: 0x0d949a50 - 0x0d949ad8 (Size: 136 bytes, Frame: 0)
.ent VisualsMatch
VisualsMatch:
    # Line 885
    lw	$v0,3216($a0)
    lw	$at,0($a1)
    bne	$at,$v0,.L0d949ad0
    nop
    lw	$v1,84($a1)
    bnez	$v1,.L0d949ad0
    nop
    lw	$a0,84($a3)
    bnez	$a0,.L0d949ad0
    nop
    lbu	$a2,4($a1)
    li	$t1,4
    beqz	$a2,.L0d949ac0
    li	$v0,0x1
    lbu	$a5,4($a3)
    beqz	$a5,.L0d949ad0
    nop
    lw	$a7,40($a3)
    lw	$a6,40($a1)
    bne	$a6,$a7,.L0d949ad0
    nop
.L0d949aa4:
    lw	$t0,72($a1)
    beqz	$t0,.L0d949ab8
    nop
    beq	$a4,$t1,.L0d949ad0
    nop
.L0d949ab8:
    jr	$ra
    nop
.L0d949ac0:
    lw	$t2,36($a1)
    lw	$t3,36($a3)
    beq	$t2,$t3,.L0d949aa4
    nop
.L0d949ad0:
    jr	$ra
    li	$v0,0x0
.end VisualsMatch

# Function: __glKonCreateContext
# Declared: Line 903 (Source lines: 905-1077)
# Address: 0x0d949ae0 - 0x0d949e50 (Size: 880 bytes, Frame: 48)
.globl __glKonCreateContext
.ent __glKonCreateContext
__glKonCreateContext:
    # Line 905
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$a1,16($sp)
    lui	$at,0x14
    sd	$gp,40($sp)
    addiu	$at,$at,29944
    addu	$gp,$t9,$at
    # Line 909
    lw	$t9,4($a0)
    # Line 905
    sd	$s1,32($sp)
    move	$s1,$a2
    # Line 909
    li	$a2,0xa130
    li	$a1,1
    # Line 905
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 909
    jalr	$t9
    move	$a0,$zero
    beqz	$v0,.L0d949e34
    move	$s0,$v0
    # Line 916
    li	$a4,20
    li	$t3,0x10
    move	$a5,$zero
    addiu	$t1,$s0,12
    ld	$v0,8($sp)
    addiu	$a6,$s0,4
    addiu	$t0,$s0,8
    move	$a7,$v0
    addiu	$t2,$v0,12
    addiu	$a0,$v0,4
    addiu	$v0,$v0,8
    nop
    nop
    nop
.L0d949b60:
    addu	$a3,$a5,$a7
    addu	$t8,$a5,$s0
    lw	$a3,0($a3)
    addu	$a2,$a5,$a0
    sw	$a3,0($t8)
    addu	$a3,$a5,$a6
    lw	$a2,0($a2)
    addu	$a1,$a5,$v0
    sw	$a2,0($a3)
    addu	$a2,$a5,$t0
    lw	$a1,0($a1)
    addiu	$a4,$a4,-4
    addu	$v1,$a5,$t2
    sw	$a1,0($a2)
    addu	$a1,$a5,$t1
    lw	$v1,0($v1)
    addu	$a5,$a5,$t3
    bgtz	$a4,.L0d949b60
    sw	$v1,0($a1)
    addiu	$a7,$s0,3240
    li	$t8,0x20
    addiu	$a0,$s0,3224
    # Line 917
    li	$a5,20
    move	$a4,$zero
    ld	$t1,16($sp)
    addiu	$t3,$s0,3216
    addiu	$t0,$s0,3232
    move	$t2,$t1
    addiu	$a6,$t1,24
    addiu	$v0,$t1,8
    addiu	$t1,$t1,16
    nop
.L0d949be0:
    addu	$v1,$a4,$t2
    addu	$a1,$a4,$t3
    ld	$v1,0($v1)
    addu	$at,$a4,$v0
    sd	$v1,0($a1)
    addu	$v1,$a4,$a0
    ld	$at,0($at)
    addu	$ra,$a4,$t1
    sd	$at,0($v1)
    addu	$at,$a4,$t0
    ld	$ra,0($ra)
    addiu	$a5,$a5,-4
    addu	$t9,$a4,$a6
    sd	$ra,0($at)
    addu	$ra,$a4,$a7
    ld	$t9,0($t9)
    addu	$a4,$a4,$t8
    bgtz	$a5,.L0d949be0
    sd	$t9,0($ra)
    # Line 989
    li	$t1,2
    # Line 1014
    sw	$t1,3800($s0)
    # Line 1013
    sw	$t1,3796($s0)
    # Line 1011
    sw	$t1,3792($s0)
    # Line 1001
    li	$t8,7
    # Line 1005
    sw	$t8,3640($s0)
    # Line 1004
    sw	$t8,3636($s0)
    # Line 1003
    sw	$t8,3632($s0)
    # Line 1002
    sw	$t8,3628($s0)
    # Line 1001
    sw	$t8,3624($s0)
    # Line 981
    li	$a7,64
    # Line 993
    sw	$a7,3784($s0)
    # Line 991
    li	$t3,16
    # Line 992
    sw	$t3,3780($s0)
    # Line 991
    sw	$t3,3776($s0)
    # Line 990
    li	$t2,4096
    sw	$t2,3772($s0)
    # Line 989
    sw	$t1,3804($s0)
    # Line 988
    li	$t0,15
    sw	$t0,3768($s0)
    # Line 981
    sw	$a7,3740($s0)
    # Line 980
    li	$a6,3
    sw	$a6,3736($s0)
    # Line 978
    li	$a5,13
    # Line 979
    sw	$a5,3732($s0)
    # Line 978
    sw	$a5,3724($s0)
    # Line 972
    li	$a4,3840
    # Line 973
    sw	$a4,3620($s0)
    # Line 972
    sw	$a4,3616($s0)
    # Line 970
    li	$a3,1
    # Line 971
    sw	$a3,3608($s0)
    # Line 970
    sw	$a3,3604($s0)
    # Line 969
    li	$a2,6
    sw	$a2,3600($s0)
    # Line 968
    li	$a1,8
    sw	$a1,3588($s0)
    # Line 936
    sw	$zero,31580($s0)
    # Line 1016
    li	$ra,256
    sw	$ra,4856($s0)
    # Line 946
    li	$a0,0xc000
    # Line 976
    sw	$a0,3664($s0)
    # Line 975
    sw	$a0,3660($s0)
    # Line 946
    sw	$a0,31588($s0)
    # Line 983
    lwc1	$f1,_lit_41b00000
    # Line 986
    lwc1	$f3,_lit_42000000
    # Line 997
    lwc1	$f4,_lit_3f800000
    # Line 984
    lwc1	$f2,_lit_3e000000
    # Line 982
    mtc1	$zero,$f0
    # Line 1007
    swc1	$f4,3820($s0)
    # Line 998
    swc1	$f0,3816($s0)
    # Line 997
    swc1	$f4,3812($s0)
    # Line 996
    swc1	$f0,3808($s0)
    # Line 987
    swc1	$f2,3764($s0)
    # Line 986
    swc1	$f3,3760($s0)
    # Line 985
    swc1	$f0,3756($s0)
    # Line 1009
    li	$t9,32
    sw	$t9,3788($s0)
    # Line 1019
    # lw $t9, -32520($gp) # &__glkon_InitDlistState
    # Line 984
    swc1	$f2,3752($s0)
    # Line 983
    swc1	$f1,3748($s0)
    # Line 1019
    move	$a0,$s0
    bal __glkon_InitDlistState
    # Line 982
    swc1	$f0,3744($s0)
    # Line 1043
    la	$a3,__glkonCopyContext
    sw	$a3,120($s0)
    # Line 1044
    la	$a2,sub_0d950000
    # Line 1045
    la	$a1,sub_0d950000
    # Line 1046
    la	$a0,sub_0d950000
    # Line 1047
    la	$v1,sub_0d950000
    # Line 1050
    lwc1	$f5,_lit_3f000000
    # Line 1049
    lwc1	$f6,_lit_3f800000
    # Line 1050
    swc1	$f5,3540($s0)
    # Line 1049
    swc1	$f6,3544($s0)
    # Line 1047
    addiu	$v1,$v1,-26032
    sw	$v1,104($s0)
    # Line 1046
    addiu	$a0,$a0,-30528
    sw	$a0,100($s0)
    # Line 1055
    lui	$v0,0x1
    # Line 1045
    addiu	$a1,$a1,-26144
    sw	$a1,96($s0)
    # Line 1055
    addu	$v0,$s0,$v0
    # Line 1044
    addiu	$a2,$a2,-31440
    sw	$a2,92($s0)
    # Line 1055
    li	$at,-1
    # Line 1056
    sw	$at,-30004($v0)
    bnez	$s1,.L0d949de0
    # Line 1055
    sw	$at,-30008($v0)
    # Line 1064
    # lw $t9, -31664($gp) # &__glKonShareTexture
.L0d949d8c:
    move	$a0,$s0
    jal	__glKonShareTexture
    move	$a1,$s1
    # Line 1066
    # lw $t9, -28640($gp) # &__glEarlyInitContext
    jal	__glEarlyInitContext
    move	$a0,$s0
    # Line 1072
    # lw $t9, -18588($gp) # &getenv
    # Line 1070
    la	$a4,sub_0d950000
    # Line 1072
    addiu	$a0,$gp,-16432
    # Line 1070
    addiu	$a4,$a4,-30976
    # Line 1072
    jal	getenv
    # Line 1070
    sw	$a4,88($s0)
    # Line 1072
    bnez	$v0,.L0d949df8
    # Line 1073
    la	$a1,.rodata
    # Line 1077
    ld	$ra,24($sp)
.L0d949dc8:
    ld	$gp,40($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d949de0:
    # Line 1062
    # lw $t9, -30976($gp) # &__glShareDlist
    move	$a0,$s0
    jal	__glShareDlist
    move	$a1,$s1
    b	.L0d949d8c
    # Line 1064
    nop	# was lw $t9, -31664($gp) # &__glKonShareTexture
.L0d949df8:
    # Line 1073
    # lw $t9, -18560($gp) # &fprintf
    la	$s1,__iob
    li	$a2,31560
    addiu	$a1,$a1,-7344
    addiu	$s1,$s1,32
    jal	fprintf
    move	$a0,$s1
    # Line 1074
    # lw $t9, -18560($gp) # &fprintf
    la	$a1,.rodata
    move	$a0,$s1
    li	$a2,0xa130
    jal	fprintf
    addiu	$a1,$a1,-7304
    b	.L0d949dc8
    # Line 1077
    ld	$ra,24($sp)
.L0d949e34:
    ld	$ra,24($sp)
    ld	$gp,40($sp)
    # Line 910
    move	$v0,$zero
    # Line 1077
    ld	$s0,0($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonCreateContext

# Function: kona_writeconfig
# Declared: Line 1081 (Source lines: 1081-1119)
# Address: 0x0d949e50 - 0x0d949fb8 (Size: 360 bytes, Frame: 208)
.ent kona_writeconfig
kona_writeconfig:
    # Line 1088
    # lw $t9, -18588($gp) # &getenv
    # Line 1081
    addiu	$sp,$sp,-80
    sd	$s0,64($sp)
    move	$s0,$a0
    sd	$ra,72($sp)
    # Line 1088
    jal	getenv
    addiu	$a0,$gp,-16432
    bnez	$v0,.L0d949f30
    # Line 1089
    la	$a0,__iob
    # Line 1092
    lw	$v1,31588($s0)
.L0d949e78:
    sw	$zero,0($v1)
    # Line 1095
    lbu	$a0,3220($s0)
    li	$v0,1
    sw	$v0,16384($zero)
    move	$a2,$zero
    lw	$at,3300($s0)
    move	$a4,$zero
    beqz	$a0,.L0d949ea0
    sw	$at,16384($zero)
    lw	$a2,3256($s0)
.L0d949ea0:
    beqz	$a0,.L0d949f94
    sw	$a2,16384($zero)
.L0d949ea8:
    sw	$a4,16384($zero)
    lbu	$t0,3222($s0)
    lbu	$a7,3223($s0)
    lw	$a6,3288($s0)
    lw	$a5,3244($s0)
    lw	$a3,3248($s0)
    lw	$a2,3228($s0)
    lw	$a1,3296($s0)
    # Line 1112
    lw	$t1,31564($s0)
    sw	$t1,48($sp)
    # Line 1113
    sw	$zero,31576($s0)
    sw	$zero,52($sp)
    # Line 1114
    sw	$zero,31572($s0)
    sw	$zero,56($sp)
    # Line 1095
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    # Line 1116
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 1103
    li	$a0,2
    # Line 1095
    sw	$a1,16384($zero)
    # Line 1116
    addiu	$a2,$sp,48
    li	$a1,1008
    # Line 1103
    sw	$a0,16384($zero)
    # Line 1116
    move	$a0,$s0
    jal	__glKon_ioctl
    # Line 1103
    sw	$zero,16384($zero)
    # Line 1116
    bltz	$v0,.L0d949f9c
    ld	$ra,72($sp)
.L0d949f24:
    ld	$s0,64($sp)
    # Line 1119
    jr	$ra
    addiu	$sp,$sp,80
.L0d949f30:
    # Line 1089
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    lbu	$a7,3222($s0)
    lw	$a6,3256($s0)
    lw	$a5,3252($s0)
    lbu	$a4,3221($s0)
    lbu	$a3,3220($s0)
    lw	$a2,3300($s0)
    lbu	$t8,3223($s0)
    sw	$t8,4($sp)
    lw	$t3,3244($s0)
    sw	$t3,12($sp)
    lw	$t2,3248($s0)
    sw	$t2,20($sp)
    lw	$t1,3228($s0)
    sw	$t1,28($sp)
    lw	$t0,3288($s0)
    sw	$t0,36($sp)
    addiu	$a1,$a1,-7272
    lw	$t2,3296($s0)
    addiu	$a0,$a0,32
    jal	fprintf
    sw	$t2,44($sp)
    b	.L0d949e78
    # Line 1092
    lw	$v1,31588($s0)
.L0d949f94:
    b	.L0d949ea8
    # Line 1095
    lw	$a4,3252($s0)
.L0d949f9c:
    # Line 1117
    lw	$t9,20($s0)
    la	$a1,.rodata
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-7176
    b	.L0d949f24
    ld	$ra,72($sp)
.end kona_writeconfig

# Function: kona_readconfig
# Declared: Line 1130 (Source lines: 1130-1159)
# Address: 0x0d949fc0 - 0x0d94a14c (Size: 396 bytes, Frame: 208)
.ent kona_readconfig
kona_readconfig:
    # Line 1130
    addiu	$sp,$sp,-80
    # Line 1134
    # lw $t9, -18588($gp) # &getenv
    # Line 1130
    sd	$s1,48($sp)
    move	$s1,$a1
    sd	$s0,64($sp)
    move	$s0,$a0
    sd	$ra,56($sp)
    # Line 1134
    jal	getenv
    addiu	$a0,$gp,-16432
    bnez	$v0,.L0d94a074
    # Line 1135
    la	$a0,__iob
    lw	$at,0($s1)
.L0d949ff0:
    li	$v0,3
    # Line 1153
    li	$a0,4
    # Line 1135
    beq	$at,$v0,.L0d94a0d8
    ld	$ra,56($sp)
.L0d94a000:
    ld	$s1,48($sp)
    # Line 1153
    lw	$a3,3388($s0)
    lw	$a4,3408($s0)
    lw	$a5,3404($s0)
    lw	$a6,3448($s0)
    lbu	$a7,3383($s0)
    lbu	$t0,3382($s0)
    lbu	$a1,3380($s0)
    sw	$a0,16384($zero)
    lw	$v1,3460($s0)
    move	$a2,$zero
    beqz	$a1,.L0d94a038
    sw	$v1,16384($zero)
    lw	$a2,3416($s0)
.L0d94a038:
    beqz	$a1,.L0d94a134
    sw	$a2,16384($zero)
    move	$a1,$zero
.L0d94a044:
    sw	$a1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    sw	$a3,16384($zero)
    lw	$a2,3456($s0)
    # Line 1159
    ld	$s0,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 1153
    sw	$a2,16384($zero)
.L0d94a074:
    # Line 1135
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    lbu	$a7,3382($s0)
    lw	$a6,3416($s0)
    lw	$a5,3412($s0)
    lbu	$a4,3381($s0)
    lbu	$a3,3380($s0)
    lw	$a2,3460($s0)
    lbu	$t8,3383($s0)
    sw	$t8,4($sp)
    lw	$t3,3404($s0)
    sw	$t3,12($sp)
    lw	$t2,3408($s0)
    sw	$t2,20($sp)
    lw	$t1,3388($s0)
    sw	$t1,28($sp)
    lw	$t0,3448($s0)
    sw	$t0,36($sp)
    addiu	$a1,$a1,-7128
    lw	$t1,3456($s0)
    addiu	$a0,$a0,32
    jal	fprintf
    sw	$t1,44($sp)
    b	.L0d949ff0
    lw	$at,0($s1)
.L0d94a0d8:
    # Line 1142
    lw	$a1,28($s1)
    # Line 1146
    li	$a5,3
    # Line 1142
    lw	$a1,16($a1)
    li	$a3,4098
    li	$t9,4097
    # Line 1143
    move	$a2,$zero
    # Line 1142
    li	$a4,4099
    beq	$a1,$t9,.L0d94a110
    xor	$a4,$a1,$a4
    li	$a2,4096
    beq	$a1,$a2,.L0d94a13c
    # Line 1147
    move	$a2,$zero
    # Line 1142
    beq	$a1,$a3,.L0d94a144
    movz	$a2,$a5,$a4
.L0d94a110:
    # Line 1149
    li	$a6,276
    sw	$a6,16384($zero)
    sw	$a2,16384($zero)
    # Line 1151
    li	$a5,0x8c7c
    # Line 1150
    li	$a6,-3
    sw	$a6,3460($s0)
    # Line 1151
    addu	$a5,$a5,$s0
    b	.L0d94a000
    sw	$a2,0($a5)
.L0d94a134:
    b	.L0d94a044
    # Line 1153
    lw	$a1,3412($s0)
.L0d94a13c:
    # Line 1144
    b	.L0d94a110
    li	$a2,1
.L0d94a144:
    # Line 1145
    b	.L0d94a110
    li	$a2,2
.end kona_readconfig

# Function: BindHyperpipe
# Declared: Line 1166 (Source lines: 1167-1186)
# Address: 0x0d94a150 - 0x0d94a1d0 (Size: 128 bytes, Frame: 32)
.ent BindHyperpipe
BindHyperpipe:
    # Line 1167
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    move	$s0,$a1
    li	$at,-1
    lui	$v0,0x14
    sd	$s7,8($sp)
    lui	$s7,0x1
    sd	$ra,24($sp)
    addiu	$v0,$v0,28296
    addu	$s7,$a0,$s7
    sd	$gp,0($sp)
    beq	$a1,$at,.L0d94a1ac
    addu	$gp,$t9,$v0
    # Line 1180
    # lw $t9, -31128($gp) # &__glkon_BindHyperpipe
    jal	__glkon_BindHyperpipe
    nop
    # Line 1186
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    # Line 1185
    sw	$s0,-29564($s7)
    # Line 1186
    ld	$s0,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94a1ac:
    # Line 1175
    # lw $t9, -31124($gp) # &__glkon_UnbindHyperpipe
    jal	__glkon_UnbindHyperpipe
    lw	$a1,-29564($s7)
    ld	$ra,24($sp)
    # Line 1186
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end BindHyperpipe

# Function: QueryHyperpipeBestAttrib
# Declared: Line 1191 (Source lines: 1197-1215)
# Address: 0x0d94a1d0 - 0x0d94a250 (Size: 128 bytes, Frame: 16)
.ent QueryHyperpipeBestAttrib
QueryHyperpipeBestAttrib:
    # Line 1197
    li	$v0,0x8c84
    addu	$v0,$v0,$a0
    move	$a7,$a3
    move	$t0,$a1
    lw	$v0,0($v0)
    # Line 1205
    li	$v1,1
    # Line 1197
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,28168
    sd	$gp,0($sp)
    bltz	$v0,.L0d94a214
    addu	$gp,$t9,$at
    # Line 1205
    beq	$a2,$v1,.L0d94a224
    # Line 1213
    li	$v0,92
    # Line 1215
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a214:
    # Line 1203
    li	$v0,92
    # Line 1215
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a224:
    # Line 1207
    # lw $t9, -31144($gp) # &__glkon__QueryHyperpipeBestRect
    move	$a2,$a4
    move	$a0,$a1
    move	$a1,$a3
    sd	$ra,8($sp)
    jal	__glkon__QueryHyperpipeBestRect
    move	$a3,$a5
    ld	$ra,8($sp)
    # Line 1215
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end QueryHyperpipeBestAttrib

# Function: QueryHyperpipeAttrib
# Declared: Line 1218 (Source lines: 1223-1243)
# Address: 0x0d94a250 - 0x0d94a2fc (Size: 172 bytes, Frame: 16)
.ent QueryHyperpipeAttrib
QueryHyperpipeAttrib:
    # Line 1223
    li	$v0,0x8c84
    addu	$v0,$v0,$a0
    move	$a6,$a1
    # Line 1231
    li	$v1,1
    # Line 1223
    lw	$v0,0($v0)
    addiu	$sp,$sp,-16
    lui	$at,0x14
    # Line 1231
    li	$a0,2
    # Line 1223
    addiu	$at,$at,28040
    sd	$gp,0($sp)
    bltz	$v0,.L0d94a2ec
    addu	$gp,$t9,$at
    # Line 1231
    beq	$a2,$v1,.L0d94a2bc
    # Line 1241
    li	$v0,92
    # Line 1231
    beq	$a2,$a0,.L0d94a29c
    # Line 1238
    nop	# was lw $t9, -31136($gp) # &__glkon__QueryHyperpipeLimit
    # Line 1243
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a29c:
    # Line 1238
    move	$a0,$a1
    move	$a1,$a3
    sd	$ra,8($sp)
    jal	__glkon__QueryHyperpipeLimit
    move	$a2,$a4
    ld	$ra,8($sp)
    # Line 1240
    b	.L0d94a2dc
    # Line 1238
    move	$a0,$v0
.L0d94a2bc:
    # Line 1233
    # lw $t9, -31140($gp) # &__glkon__QueryHyperpipeRect
    move	$a0,$a1
    move	$a1,$a3
    sd	$ra,8($sp)
    jal	__glkon__QueryHyperpipeRect
    move	$a2,$a4
    ld	$ra,8($sp)
    move	$a0,$v0
.L0d94a2dc:
    # Line 1243
    move	$v0,$a0
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a2ec:
    # Line 1228
    li	$v0,92
    # Line 1243
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end QueryHyperpipeAttrib

# Function: HyperpipeAttrib
# Declared: Line 1246 (Source lines: 1251-1266)
# Address: 0x0d94a300 - 0x0d94a378 (Size: 120 bytes, Frame: 16)
.ent HyperpipeAttrib
HyperpipeAttrib:
    # Line 1251
    li	$v0,0x8c84
    addu	$v0,$v0,$a0
    move	$a6,$a1
    lw	$v0,0($v0)
    # Line 1259
    li	$v1,1
    # Line 1251
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,27864
    sd	$gp,0($sp)
    bltz	$v0,.L0d94a340
    addu	$gp,$t9,$at
    # Line 1259
    beq	$a2,$v1,.L0d94a350
    # Line 1264
    li	$v0,92
    # Line 1266
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a340:
    # Line 1256
    li	$v0,92
    # Line 1266
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a350:
    # Line 1261
    # lw $t9, -31132($gp) # &__glkon__HyperpipeRect
    move	$a0,$a1
    move	$a1,$a3
    sd	$ra,8($sp)
    jal	__glkon__HyperpipeRect
    move	$a2,$a4
    ld	$ra,8($sp)
    # Line 1266
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end HyperpipeAttrib

.rdata
_lit_3e000000:
    .word 0x3e000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_41b00000:
    .word 0x41b00000
_lit_42000000:
    .word 0x42000000

