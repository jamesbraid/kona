# Source: ../dlist/dl_list.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_list.c
# Total Functions: 20

.text

# Function: __glim_NewList
# Declared: Line 57 (Source lines: 58-137)
# Address: 0x0d98e690 - 0x0d98e828 (Size: 408 bytes, Frame: 192)
.globl __glim_NewList
.ent __glim_NewList
__glim_NewList:
    # Line 58
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 61
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 58
    sd	$s1,24($sp)
    # Line 61
    li	$v0,1
    # Line 58
    lui	$v1,0x10
    move	$s1,$a1
    sd	$ra,48($sp)
    addiu	$v1,$v1,10568
    sd	$gp,40($sp)
    # Line 61
    beq	$at,$v0,.L0d98e804
    # Line 58
    addu	$gp,$t9,$v1
    # Line 66
    li	$a1,4864
    beq	$s1,$a1,.L0d98e6e8
    li	$a2,4865
    beq	$s1,$a2,.L0d98e6e8
    # Line 71
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98e758
    ld	$ra,48($sp)
.L0d98e6e8:
    # Line 66
    lw	$a3,4988($s0)
    beqz	$a3,.L0d98e76c
    # Line 77
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e758
    ld	$ra,48($sp)
.L0d98e704:
    # Line 119
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
.L0d98e708:
    ld	$a1,8($sp)
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 131
    sw	$zero,5008($s0)
.L0d98e718:
    # Line 130
    sw	$zero,5004($s0)
    # Line 129
    sw	$zero,5000($s0)
    # Line 128
    sw	$zero,4996($s0)
    # Line 127
    sw	$s1,4984($s0)
    # Line 131
    ld	$a4,0($sp)
    lw	$t9,11836($s0)
    # Line 126
    ld	$a5,16($sp)
    sw	$a5,4988($s0)
    # Line 131
    beqz	$t9,.L0d98e748
    # Line 124
    sw	$a4,6132($s0)
    # Line 134
    jalr	$t9
    move	$a0,$s0
.L0d98e748:
    # Line 136
    lw	$t9,4952($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,48($sp)
.L0d98e758:
    # Line 137
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98e76c:
    # Line 78
    beqz	$a0,.L0d98e818
    # Line 82
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 86
    lw	$a6,4960($s0)
    beqz	$a6,.L0d98e78c
    sd	$a0,16($sp)
    lw	$a7,5012($s0)
    beqz	$a7,.L0d98e7dc
    nop
.L0d98e78c:
    # Line 94
    lw	$t0,4168($zero)
    # Line 111
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 108
    li	$t1,4176
    addiu	$a0,$s0,8032
    # Line 111
    addiu	$a1,$s0,9920
    sd	$a1,0($sp)
    movz	$a0,$t1,$t0
    jal	__glMipsCopyDispatch
    sd	$a0,8($sp)
    # Line 116
    li	$t2,4865
    bne	$s1,$t2,.L0d98e708
    # Line 119
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 116
    lw	$t3,4960($s0)
    bnez	$t3,.L0d98e704
    # Line 117
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    ld	$a1,8($sp)
    jal	__glMipsCopyDispatch
    lw	$a0,8024($s0)
    b	.L0d98e718
    # Line 131
    sw	$zero,5008($s0)
.L0d98e7dc:
    # Line 94
    lw	$t9,12684($s0)
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0d98e78c
    sw	$v0,5012($s0)
    # Line 99
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98e758
    ld	$ra,48($sp)
.L0d98e804:
    # Line 61
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e758
    ld	$ra,48($sp)
.L0d98e818:
    # Line 82
    jalr	$t9
    li	$a0,1281
    b	.L0d98e758
    ld	$ra,48($sp)
.end __glim_NewList

# Function: __glce_EndList
# Declared: Line 139 (Source lines: 140-145)
# Address: 0x0d98e830 - 0x0d98e86c (Size: 60 bytes, Frame: 16)
.globl __glce_EndList
.ent __glce_EndList
__glce_EndList:
    # Line 140
    lui	$v0,0x10
    # Line 143
    lw	$at,4112($zero)
    # Line 140
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,10152
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 144
    # lw $t9, -18428($gp) # &glEndList
    # Line 140
    sd	$ra,0($sp)
    # Line 143
    lw	$at,9924($at)
    # Line 144
    jal	glEndList
    # Line 143
    sw	$at,4180($zero)
    ld	$ra,0($sp)
    # Line 145
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glce_EndList

# Function: __glim_EndList
# Declared: Line 147 (Source lines: 148-235)
# Address: 0x0d98e870 - 0x0d98e9a8 (Size: 312 bytes, Frame: 48)
.globl __glim_EndList
.ent __glim_EndList
__glim_EndList:
    # Line 148
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 154
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 148
    lui	$v1,0x10
    sd	$ra,32($sp)
    addiu	$v1,$v1,10088
    sd	$gp,16($sp)
    # Line 154
    beq	$at,$v0,.L0d98e994
    # Line 148
    addu	$gp,$t9,$v1
    # Line 156
    lw	$a0,4988($s0)
    beqz	$a0,.L0d98e984
    # Line 160
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 169
    lw	$t9,4940($s0)
    move	$a0,$s0
    addiu	$a1,$s0,4992
    jal	__glSetError
    sd	$a1,0($sp)
    # Line 196
    lw	$t9,4944($s0)
    ld	$a1,0($sp)
    move	$a0,$s0
    jalr	$t9
    sd	$s1,24($sp)
    lw	$a1,4960($s0)
    bnez	$a1,.L0d98e950
    move	$s1,$v0
    # Line 211
    lw	$a2,4988($s0)
.L0d98e8e0:
    # lw $t9, -27536($gp) # &__glNamesNewData
    lw	$a1,4928($s0)
    move	$a3,$s1
    # Line 203
    sw	$zero,5008($s0)
    # Line 211
    move	$a0,$s0
    jal	__glNamesNewData
    # Line 202
    sw	$zero,5004($s0)
    # Line 211
    beqz	$v0,.L0d98e964
    # Line 228
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
.L0d98e904:
    # Line 218
    lw	$a2,4168($zero)
    # Line 225
    li	$a3,4176
    addiu	$s1,$s0,8032
    # Line 228
    addiu	$a0,$s0,9920
    movz	$s1,$a3,$a2
    jal	__glMipsCopyDispatch
    move	$a1,$s1
    # Line 231
    lw	$t9,11836($s0)
    sw	$zero,4988($s0)
    beqz	$t9,.L0d98e938
    # Line 229
    sw	$s1,6132($s0)
    # Line 234
    jalr	$t9
    move	$a0,$s0
.L0d98e938:
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 235
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98e950:
    # Line 201
    lw	$t9,12696($s0)
    jalr	$t9
    lw	$a0,5012($s0)
    b	.L0d98e8e0
    # Line 211
    lw	$a2,4988($s0)
.L0d98e964:
    beqz	$s1,.L0d98e904
    # Line 228
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 218
    lw	$t9,4($s1)
    move	$a0,$s0
    jal	__glMipsCopyDispatch
    move	$a1,$s1
    b	.L0d98e904
    # Line 228
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
.L0d98e984:
    # Line 160
    jal	__glMipsCopyDispatch
    li	$a0,1282
    b	.L0d98e938
    sd	$s1,24($sp)
.L0d98e994:
    # Line 154
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e938
    sd	$s1,24($sp)
.end __glim_EndList

# Function: DoCallList
# Declared: Line 237 (Source lines: 238-264)
# Address: 0x0d98e9b0 - 0x0d98ea50 (Size: 160 bytes, Frame: 32)
.ent DoCallList
DoCallList:
    # Line 240
    lw	$v0,4112($zero)
    lw	$at,4980($v0)
    slti	$at,$at,64
    # Line 238
    addiu	$sp,$sp,-32
    # Line 244
    li	$v1,128
    # Line 240
    bnez	$at,.L0d98e9d8
    # Line 238
    move	$a2,$a0
    # Line 244
    sw	$v1,4980($v0)
    # Line 251
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e9d8:
    sd	$v0,8($sp)
    # Line 250
    # lw $t9, -27532($gp) # &__glNamesLockData
    ld	$a1,8($sp)
    sd	$ra,16($sp)
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4928($a1)
    bnez	$v0,.L0d98ea08
    sd	$v0,0($sp)
    ld	$ra,16($sp)
    # Line 251
    jr	$ra
    addiu	$sp,$sp,32
.L0d98ea08:
    # Line 254
    ld	$a0,8($sp)
    lw	$a3,4980($a0)
    # Line 257
    ld	$a1,0($sp)
    # Line 254
    addiu	$a3,$a3,1
    sw	$a3,4980($a0)
    # Line 257
    lw	$t9,8($a1)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    # Line 259
    ld	$a5,8($sp)
    # Line 261
    # lw $t9, -27524($gp) # &__glNamesUnlockData
    # Line 259
    lw	$a4,4980($a5)
    # Line 261
    ld	$a1,0($sp)
    move	$a0,$a5
    # Line 264
    addiu	$sp,$sp,32
    # Line 259
    addiu	$a4,$a4,-1
    jr	$t9
    sw	$a4,4980($a5)
.end DoCallList

# Function: __gllc_CallList
# Declared: Line 275 (Source lines: 276-292)
# Address: 0x0d98ea50 - 0x0d98eadc (Size: 140 bytes, Frame: 32)
.globl __gllc_CallList
.ent __gllc_CallList
__gllc_CallList:
    # Line 276
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    sd	$s0,8($sp)
    # Line 279
    lw	$s0,4112($zero)
    # Line 276
    lui	$at,0x10
    sd	$ra,24($sp)
    addiu	$at,$at,9608
    sd	$gp,16($sp)
    # Line 279
    beqz	$a0,.L0d98eac8
    # Line 276
    addu	$gp,$t9,$at
    # Line 286
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    bal __glDlistAllocOp2
    li	$a1,4
    bnez	$v0,.L0d98eaa0
    ld	$ra,24($sp)
.L0d98ea90:
    ld	$s0,8($sp)
    # Line 292
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98eaa0:
    # Line 291
    la	$a2,__glle_CallList
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 288
    sh	$zero,12($v0)
    # Line 291
    move	$a1,$v0
    # Line 290
    ld	$v1,0($sp)
    # Line 291
    move	$a0,$s0
    bal __glDlistAppendOp
    # Line 290
    sw	$v1,16($v0)
    b	.L0d98ea90
    ld	$ra,24($sp)
.L0d98eac8:
    # Line 282
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    bal __gllc_InvalidEnum
    move	$a0,$s0
    b	.L0d98ea90
    ld	$ra,24($sp)
.end __gllc_CallList

# Function: __glle_CallList
# Declared: Line 294 (Source lines: 295-300)
# Address: 0x0d98eae0 - 0x0d98eb28 (Size: 72 bytes, Frame: 32)
.globl __glle_CallList
.ent __glle_CallList
__glle_CallList:
    # Line 295
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$s8,0x10
    addiu	$s8,$s8,9464
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 299
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-5712
    # Line 295
    sd	$ra,0($sp)
    move	$s8,$a0
    # Line 299
    bal __glim_EndList
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 300
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CallList

# Function: __glce_CallList
# Declared: Line 304 (Source lines: 305-329)
# Address: 0x0d98eb30 - 0x0d98ebfc (Size: 204 bytes, Frame: 48)
.globl __glce_CallList
.ent __glce_CallList
__glce_CallList:
    # Line 305
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$s0,0($sp)
    addiu	$at,$at,9384
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 312
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 309
    lw	$s0,4112($zero)
    # Line 312
    li	$a1,4176
    # Line 305
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$ra,8($sp)
    # Line 312
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 313
    # lw $t9, -18424($gp) # &glCallList
    move	$a0,$s1
    jal	glCallList
    sd	$s2,32($sp)
    # Line 315
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s2,$s0,9920
    jal	__glMipsCopyDispatch
    move	$a0,$s2
    # Line 317
    # lw $t9, -18424($gp) # &glCallList
    move	$a0,$s1
    # Line 316
    li	$v0,4176
    # Line 317
    jal	glCallList
    # Line 316
    sw	$v0,6132($s0)
    # Line 318
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    move	$a1,$s2
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 319
    sw	$s2,6132($s0)
    lw	$a0,4168($zero)
    beqz	$a0,.L0d98ebe4
    # Line 325
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4176
    ld	$s2,32($sp)
.L0d98ebcc:
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 329
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98ebe4:
    # Line 323
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    jal	__glMipsCopyDispatch
    lw	$a0,8024($s0)
    b	.L0d98ebcc
    ld	$s2,32($sp)
.end __glce_CallList

# Function: __glce_CallLists
# Declared: Line 331 (Source lines: 332-356)
# Address: 0x0d98ec00 - 0x0d98ecf4 (Size: 244 bytes, Frame: 192)
.globl __glce_CallLists
.ent __glce_CallLists
__glce_CallLists:
    # Line 332
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s4,16($sp)
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,9176
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 339
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 332
    move	$s4,$a1
    # Line 339
    li	$a1,4176
    # Line 336
    lw	$s0,4112($zero)
    # Line 332
    move	$s1,$a2
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$ra,8($sp)
    # Line 339
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 340
    # lw $t9, -18420($gp) # &glCallLists
    move	$a0,$s2
    move	$a1,$s4
    move	$a2,$s1
    jal	glCallLists
    sd	$s3,48($sp)
    # Line 342
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s3,$s0,9920
    jal	__glMipsCopyDispatch
    move	$a0,$s3
    # Line 344
    # lw $t9, -18420($gp) # &glCallLists
    move	$a2,$s1
    move	$a1,$s4
    move	$a0,$s2
    # Line 343
    li	$v0,4176
    # Line 344
    jal	glCallLists
    # Line 343
    sw	$v0,6132($s0)
    # Line 345
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    move	$a1,$s3
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 346
    sw	$s3,6132($s0)
    lw	$a0,4168($zero)
    beqz	$a0,.L0d98ece0
    # Line 350
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 352
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4176
    ld	$s2,0($sp)
.L0d98ecc0:
    ld	$s3,48($sp)
    ld	$s4,16($sp)
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 356
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98ece0:
    # Line 350
    li	$a1,4176
    jalr	$t9
    lw	$a0,8024($s0)
    b	.L0d98ecc0
    ld	$s2,0($sp)
.end __glce_CallLists

# Function: __glim_CallList
# Declared: Line 358 (Source lines: 359-368)
# Address: 0x0d98ed00 - 0x0d98ed6c (Size: 108 bytes, Frame: 32)
.globl __glim_CallList
.ent __glim_CallList
__glim_CallList:
    # Line 359
    addiu	$sp,$sp,-32
    # Line 360
    lw	$v0,4112($zero)
    sd	$v0,0($sp)
    # Line 359
    lui	$at,0x10
    sd	$ra,16($sp)
    addiu	$at,$at,8920
    sd	$gp,8($sp)
    # Line 360
    beqz	$a0,.L0d98ed58
    # Line 359
    addu	$gp,$t9,$at
    # Line 366
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-5712
    bal __glim_EndList
    nop
    ld	$ra,16($sp)
    # Line 367
    ld	$at,0($sp)
    # Line 368
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 367
    sw	$zero,4980($at)
.L0d98ed4c:
    # Line 368
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98ed58:
    # Line 363
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d98ed4c
    ld	$ra,16($sp)
.end __glim_CallList

# Function: DoCallLists
# Declared: Line 370 (Source lines: 371-416)
# Address: 0x0d98ed70 - 0x0d98eeec (Size: 380 bytes, Frame: 208)
.ent DoCallLists
DoCallLists:
    # Line 371
    addiu	$sp,$sp,-1104
    sd	$s1,1024($sp)
    # Line 377
    lw	$s1,4112($zero)
    sd	$s7,1048($sp)
    sd	$s0,1056($sp)
    sd	$ra,1064($sp)
    sd	$s3,1072($sp)
    # Line 371
    sd	$s4,1032($sp)
    # Line 381
    sltiu	$at,$a1,5120
    # Line 371
    move	$a5,$a2
    move	$s4,$a0
    sd	$s6,1040($sp)
    move	$s6,$a1
    # Line 381
    bnez	$at,.L0d98edc4
    sd	$s2,1080($sp)
    sltiu	$v0,$a1,5130
    beqz	$v0,.L0d98edc4
    la	$s7,__GLdlsize_tab
    addu	$s7,$a1,$s7
    b	.L0d98edc8
    lbu	$s7,-5120($s7)
.L0d98edc4:
    li	$s7,-1
.L0d98edc8:
    lw	$a1,4980($s1)
    slti	$t8,$a1,64
    beqz	$t8,.L0d98eebc
    # Line 388
    addiu	$a0,$a1,1
    sw	$a0,4980($s1)
    sd	$s5,1088($sp)
    # Line 391
    beqz	$s4,.L0d98ee88
    move	$s5,$a5
    sd	$s8,1096($sp)
    li	$s8,256
.L0d98edf0:
    # Line 397
    addiu	$a6,$sp,0
    move	$a5,$s5
    move	$a3,$s6
    # lw $t9, -27528($gp) # &__glNamesLockDataList
    li	$ra,256
    move	$s3,$s4
    slt	$ra,$ra,$s4
    lw	$a4,1980($s1)
    move	$a0,$s1
    movn	$s3,$s8,$ra
    lw	$a1,4928($s1)
    jal	__glNamesLockDataList
    move	$a2,$s3
    blez	$s3,.L0d98ee5c
    # Line 408
    nop	# was lw $t9, -27520($gp) # &__glNamesUnlockDataList
    # Line 397
    addiu	$s0,$sp,0
    sll	$t8,$s3,0x2
    addu	$s2,$sp,$t8
    nop
    # Line 403
    lw	$a1,0($s0)
.L0d98ee40:
    # Line 404
    lw	$t9,8($a1)
    jal	__glNamesUnlockDataList
    move	$a0,$s1
    # Line 405
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d98ee40
    # Line 403
    lw	$a1,0($s0)
    # Line 408
    # lw $t9, -27520($gp) # &__glNamesUnlockDataList
.L0d98ee5c:
    move	$a0,$s1
    move	$a1,$s3
    jal	__glNamesUnlockDataList
    addiu	$a2,$sp,0
    # Line 411
    mult	$s7,$s3
    # Line 412
    subu	$s4,$s4,$s3
    # Line 411
    mflo	$t9
    # Line 412
    bnez	$s4,.L0d98edf0
    # Line 411
    addu	$s5,$s5,$t9
    # Line 412
    lw	$a0,4980($s1)
    ld	$s8,1096($sp)
.L0d98ee88:
    ld	$s7,1048($sp)
    ld	$s5,1088($sp)
    ld	$s0,1056($sp)
    ld	$s3,1072($sp)
    ld	$s2,1080($sp)
    # Line 415
    addiu	$at,$a0,-1
    sw	$at,4980($s1)
    ld	$ra,1064($sp)
    # Line 416
    ld	$s1,1024($sp)
    ld	$s4,1032($sp)
    ld	$s6,1040($sp)
    jr	$ra
    addiu	$sp,$sp,1104
.L0d98eebc:
    ld	$s2,1080($sp)
    ld	$s3,1072($sp)
    ld	$s0,1056($sp)
    ld	$s7,1048($sp)
    # Line 385
    li	$v0,128
    sw	$v0,4980($s1)
    ld	$ra,1064($sp)
    # Line 416
    ld	$s1,1024($sp)
    ld	$s4,1032($sp)
    ld	$s6,1040($sp)
    jr	$ra
    addiu	$sp,$sp,1104
.end DoCallLists

# Function: __gllc_CallLists
# Declared: Line 424 (Source lines: 425-451)
# Address: 0x0d98eef0 - 0x0d98f01c (Size: 300 bytes, Frame: 192)
.globl __gllc_CallLists
.ent __gllc_CallLists
__gllc_CallLists:
    # Line 425
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 430
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    # Line 425
    move	$v0,$a2
    sd	$s0,40($sp)
    move	$s0,$a1
    lui	$at,0x10
    sd	$s2,24($sp)
    move	$s2,$a0
    sd	$s3,48($sp)
    addiu	$at,$at,8424
    # Line 436
    negu	$s3,$s2
    sd	$gp,32($sp)
    # Line 430
    bltz	$a0,.L0d98f008
    # Line 425
    addu	$gp,$t9,$at
    # Line 436
    sltiu	$v1,$a1,5120
    sltiu	$a0,$a1,5130
    la	$a1,__GLdlsize_tab
    bnez	$v1,.L0d98ef74
    addu	$a1,$s0,$a1
    beqz	$a0,.L0d98ef74
    nop
    lbu	$a1,-5120($a1)
    mult	$a1,$s2
    mflo	$s3
    bgez	$s3,.L0d98ef80
    sd	$a2,0($sp)
    # Line 438
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
.L0d98ef64:
    bal __gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d98efa8
    ld	$s3,48($sp)
.L0d98ef74:
    # Line 436
    bltz	$s3,.L0d98ef64
    # Line 438
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    sd	$v0,0($sp)
.L0d98ef80:
    # Line 442
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    li	$a2,-4
    addiu	$a1,$s3,3
    move	$a0,$s1
    and	$a1,$a1,$a2
    bal __glDlistAllocOp2
    addiu	$a1,$a1,8
    bnez	$v0,.L0d98efc4
    sd	$v0,8($sp)
    ld	$s3,48($sp)
.L0d98efa8:
    # Line 451
    ld	$gp,32($sp)
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98efc4:
    # Line 449
    ld	$a1,0($sp)
    # Line 447
    ld	$a5,8($sp)
    # Line 449
    # lw $t9, -18508($gp) # &memcpy
    # Line 447
    sw	$s0,20($a5)
    # Line 449
    move	$a2,$s3
    # Line 444
    li	$a4,1
    # Line 446
    sw	$s2,16($a5)
    # Line 449
    addiu	$a0,$a5,24
    jal	memcpy
    # Line 444
    sh	$a4,12($a5)
    # Line 450
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s1
    bal __glDlistAppendOp
    la	$a2,__glle_CallLists
    b	.L0d98efa8
    ld	$s3,48($sp)
.L0d98f008:
    # Line 433
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    bal __gllc_InvalidValue
    move	$a0,$s1
    b	.L0d98efa8
    ld	$s3,48($sp)
.end __gllc_CallLists

# Function: __glle_CallLists
# Declared: Line 453 (Source lines: 454-463)
# Address: 0x0d98f020 - 0x0d98f0e8 (Size: 200 bytes, Frame: 32)
.globl __glle_CallLists
.ent __glle_CallLists
__glle_CallLists:
    # Line 454
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lui	$ra,0x10
    addiu	$ra,$ra,8120
    sd	$gp,0($sp)
    addu	$gp,$t9,$ra
    # Line 460
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 454
    sd	$s0,16($sp)
    # Line 460
    addiu	$t9,$t9,-4752
    # Line 454
    move	$s0,$a0
    # Line 460
    lw	$a0,0($a0)
    addiu	$a2,$s0,8
    bal __glim_CallList
    lw	$a1,4($s0)
    # Line 461
    lw	$a2,4($s0)
    la	$a0,__GLdlsize_tab
    sltiu	$at,$a2,5120
    # Line 463
    ld	$ra,8($sp)
    # Line 461
    sltiu	$v0,$a2,5130
    # Line 463
    ld	$gp,0($sp)
    # Line 461
    bnez	$at,.L0d98f0b0
    addu	$a0,$a2,$a0
    beqz	$v0,.L0d98f0b0
    nop
    lbu	$a0,-5120($a0)
    # Line 463
    lw	$v1,0($s0)
    mult	$v1,$a0
    mflo	$v0
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.L0d98f0b0:
    lw	$v1,0($s0)
    # Line 461
    li	$a0,-1
    # Line 463
    mult	$v1,$a0
    mflo	$v0
    ld	$ra,8($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,0($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_CallLists

# Function: __glim_CallLists
# Declared: Line 466 (Source lines: 467-482)
# Address: 0x0d98f0f0 - 0x0d98f198 (Size: 168 bytes, Frame: 32)
.globl __glim_CallLists
.ent __glim_CallLists
__glim_CallLists:
    # Line 468
    lw	$a4,4112($zero)
    # Line 467
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$ra,16($sp)
    addiu	$at,$at,7912
    sd	$gp,8($sp)
    # Line 468
    bltz	$a0,.L0d98f184
    # Line 467
    addu	$gp,$t9,$at
    # Line 477
    sltiu	$v0,$a1,5120
    la	$a3,__GLdlsize_tab
    bnez	$v0,.L0d98f170
    addu	$a3,$a1,$a3
    sltiu	$v1,$a1,5130
    beqz	$v1,.L0d98f174
    # Line 476
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 477
    lbu	$a3,-5120($a3)
    li	$a5,-1
    beq	$a3,$a5,.L0d98f170
    sd	$a4,0($sp)
    # Line 480
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-4752
    bal __glim_CallList
    nop
    ld	$ra,16($sp)
    # Line 481
    ld	$at,0($sp)
    # Line 482
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 481
    sw	$zero,4980($at)
.L0d98f164:
    # Line 482
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98f170:
    # Line 476
    # lw $t9, -28616($gp) # &__glSetError
.L0d98f174:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98f164
    ld	$ra,16($sp)
.L0d98f184:
    # Line 471
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d98f164
    ld	$ra,16($sp)
.end __glim_CallLists

# Function: __glce_DrawArraysEXT
# Declared: Line 484 (Source lines: 485-509)
# Address: 0x0d98f1a0 - 0x0d98f294 (Size: 244 bytes, Frame: 192)
.globl __glce_DrawArraysEXT
.ent __glce_DrawArraysEXT
__glce_DrawArraysEXT:
    # Line 485
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s4,16($sp)
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,7736
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 492
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 485
    move	$s4,$a1
    # Line 492
    li	$a1,4176
    # Line 489
    lw	$s0,4112($zero)
    # Line 485
    move	$s1,$a2
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$ra,8($sp)
    # Line 492
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 493
    # lw $t9, -17076($gp) # &glDrawArraysEXT
    move	$a0,$s2
    move	$a1,$s4
    move	$a2,$s1
    jal	glDrawArraysEXT
    sd	$s3,48($sp)
    # Line 495
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s3,$s0,9920
    jal	__glMipsCopyDispatch
    move	$a0,$s3
    # Line 497
    # lw $t9, -17076($gp) # &glDrawArraysEXT
    move	$a2,$s1
    move	$a1,$s4
    move	$a0,$s2
    # Line 496
    li	$v0,4176
    # Line 497
    jal	glDrawArraysEXT
    # Line 496
    sw	$v0,6132($s0)
    # Line 498
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    move	$a1,$s3
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 499
    sw	$s3,6132($s0)
    lw	$a0,4168($zero)
    beqz	$a0,.L0d98f280
    # Line 503
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 505
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4176
    ld	$s2,0($sp)
.L0d98f260:
    ld	$s3,48($sp)
    ld	$s4,16($sp)
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 509
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98f280:
    # Line 503
    li	$a1,4176
    jalr	$t9
    lw	$a0,8024($s0)
    b	.L0d98f260
    ld	$s2,0($sp)
.end __glce_DrawArraysEXT

# Function: __glce_DrawElements
# Declared: Line 511 (Source lines: 513-537)
# Address: 0x0d98f2a0 - 0x0d98f3a8 (Size: 264 bytes, Frame: 192)
.globl __glce_DrawElements
.ent __glce_DrawElements
__glce_DrawElements:
    # Line 513
    addiu	$sp,$sp,-64
    sd	$s4,16($sp)
    sd	$s1,32($sp)
    sd	$s3,0($sp)
    lui	$at,0x10
    sd	$s0,24($sp)
    addiu	$at,$at,7480
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    move	$s3,$a1
    # Line 520
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    # Line 513
    move	$s1,$a3
    # Line 517
    lw	$s0,4112($zero)
    # Line 513
    move	$s4,$a2
    sd	$s5,40($sp)
    move	$s5,$a0
    sd	$ra,8($sp)
    # Line 520
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 521
    # lw $t9, -16996($gp) # &glDrawElements
    move	$a0,$s5
    move	$a1,$s3
    move	$a2,$s4
    move	$a3,$s1
    jal	glDrawElements
    sd	$s2,56($sp)
    # Line 523
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s2,$s0,9920
    jal	__glMipsCopyDispatch
    move	$a0,$s2
    # Line 525
    # lw $t9, -16996($gp) # &glDrawElements
    move	$a3,$s1
    move	$a2,$s4
    move	$a1,$s3
    move	$a0,$s5
    # Line 524
    li	$v0,4176
    # Line 525
    jal	glDrawElements
    # Line 524
    sw	$v0,6132($s0)
    # Line 526
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    move	$a1,$s2
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 527
    sw	$s2,6132($s0)
    lw	$a0,4168($zero)
    beqz	$a0,.L0d98f394
    # Line 531
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 533
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4176
    ld	$s2,56($sp)
.L0d98f370:
    ld	$s3,0($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$ra,8($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 537
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98f394:
    # Line 531
    li	$a1,4176
    jalr	$t9
    lw	$a0,8024($s0)
    b	.L0d98f370
    ld	$s2,56($sp)
.end __glce_DrawElements

# Function: __glce_DrawRangeElements
# Declared: Line 539 (Source lines: 542-566)
# Address: 0x0d98f3b0 - 0x0d98f4e0 (Size: 304 bytes, Frame: 208)
.globl __glce_DrawRangeElements
.ent __glce_DrawRangeElements
__glce_DrawRangeElements:
    # Line 542
    addiu	$sp,$sp,-80
    sd	$s7,56($sp)
    sd	$s3,0($sp)
    sd	$s1,40($sp)
    sd	$s6,8($sp)
    sd	$s4,24($sp)
    lui	$at,0x10
    sd	$s0,32($sp)
    addiu	$at,$at,7208
    move	$s4,$a1
    sd	$gp,64($sp)
    addu	$gp,$t9,$at
    # Line 549
    li	$a1,4176
    # Line 542
    move	$s6,$a5
    # Line 549
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 542
    move	$s1,$a4
    move	$s3,$a3
    # Line 546
    lw	$s0,4112($zero)
    # Line 542
    move	$s7,$a2
    sd	$s5,48($sp)
    move	$s5,$a0
    sd	$ra,16($sp)
    # Line 549
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 550
    move	$a0,$s5
    # lw $t9, -16752($gp) # &glDrawRangeElements
    move	$a1,$s4
    move	$a2,$s7
    move	$a3,$s3
    move	$a4,$s1
    move	$a5,$s6
    jal	glDrawRangeElements
    sd	$s2,72($sp)
    # Line 552
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s2,$s0,9920
    jal	__glMipsCopyDispatch
    move	$a0,$s2
    # Line 554
    move	$a5,$s6
    move	$a4,$s1
    # lw $t9, -16752($gp) # &glDrawRangeElements
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$s4
    move	$a0,$s5
    # Line 553
    li	$v0,4176
    # Line 554
    jal	glDrawRangeElements
    # Line 553
    sw	$v0,6132($s0)
    # Line 555
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    move	$a1,$s2
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 556
    sw	$s2,6132($s0)
    lw	$a0,4168($zero)
    beqz	$a0,.L0d98f4cc
    # Line 560
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 562
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4176
    ld	$s2,72($sp)
.L0d98f4a0:
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$ra,16($sp)
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    # Line 566
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d98f4cc:
    # Line 560
    li	$a1,4176
    jalr	$t9
    lw	$a0,8024($s0)
    b	.L0d98f4a0
    ld	$s2,72($sp)
.end __glce_DrawRangeElements

# Function: __glce_ArrayElementEXT
# Declared: Line 568 (Source lines: 569-593)
# Address: 0x0d98f4e0 - 0x0d98f5ac (Size: 204 bytes, Frame: 48)
.globl __glce_ArrayElementEXT
.ent __glce_ArrayElementEXT
__glce_ArrayElementEXT:
    # Line 569
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$s0,0($sp)
    addiu	$at,$at,6904
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 576
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 573
    lw	$s0,4112($zero)
    # Line 576
    li	$a1,4176
    # Line 569
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$ra,8($sp)
    # Line 576
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6136
    # Line 577
    # lw $t9, -17084($gp) # &glArrayElementEXT
    move	$a0,$s1
    jal	glArrayElementEXT
    sd	$s2,32($sp)
    # Line 579
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s2,$s0,9920
    jal	__glMipsCopyDispatch
    move	$a0,$s2
    # Line 581
    # lw $t9, -17084($gp) # &glArrayElementEXT
    move	$a0,$s1
    # Line 580
    li	$v0,4176
    # Line 581
    jal	glArrayElementEXT
    # Line 580
    sw	$v0,6132($s0)
    # Line 582
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    move	$a1,$s2
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 583
    sw	$s2,6132($s0)
    lw	$a0,4168($zero)
    beqz	$a0,.L0d98f598
    # Line 587
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 589
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    li	$a1,4176
    ld	$s2,32($sp)
.L0d98f580:
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    # Line 593
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98f598:
    # Line 587
    li	$a1,4176
    jalr	$t9
    lw	$a0,8024($s0)
    b	.L0d98f580
    ld	$s2,32($sp)
.end __glce_ArrayElementEXT

# Function: __glDlistAllocOp2
# Declared: Line 607 (Source lines: 608-635)
# Address: 0x0d98f5b0 - 0x0d98f62c (Size: 124 bytes, Frame: 32)
.globl __glDlistAllocOp2
.ent __glDlistAllocOp2
__glDlistAllocOp2:
    # Line 608
    addiu	$sp,$sp,-32
    lui	$v1,0x10
    sd	$gp,8($sp)
    addiu	$v1,$v1,6696
    addu	$gp,$t9,$v1
    # Line 617
    lw	$t9,12692($a0)
    # Line 608
    sd	$ra,16($sp)
    move	$v0,$a0
    sd	$a1,0($sp)
    # Line 617
    addiu	$a1,$a1,16
    jalr	$t9
    lw	$a0,5012($a0)
    # Line 635
    ld	$ra,16($sp)
    # Line 617
    beqz	$v0,.L0d98f60c
    move	$a2,$v0
    # Line 633
    sb	$zero,14($v0)
    # Line 632
    sw	$zero,4($v0)
    # Line 630
    sw	$zero,0($v0)
    # Line 635
    ld	$gp,8($sp)
    # Line 631
    ld	$a0,0($sp)
    # Line 635
    addiu	$sp,$sp,32
    jr	$ra
    # Line 631
    sw	$a0,8($v0)
.L0d98f60c:
    # Line 621
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 635
    ld	$ra,16($sp)
    # Line 622
    move	$v0,$zero
    # Line 635
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistAllocOp2

# Function: __glDlistFreeOp
# Declared: Line 639 (Source lines: 647-647)
# Address: 0x0d98f630 - 0x0d98f638 (Size: 8 bytes, Frame: 0)
.globl __glDlistFreeOp
.ent __glDlistFreeOp
__glDlistFreeOp:
    # Line 647
    jr	$ra
    nop
.end __glDlistFreeOp

# Function: __glDlistAppendOp
# Declared: Line 650 (Source lines: 652-682)
# Address: 0x0d98f640 - 0x0d98f72c (Size: 236 bytes, Frame: 48)
.globl __glDlistAppendOp
.ent __glDlistAppendOp
__glDlistAppendOp:
    # Line 652
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$at,0x10
    sd	$gp,16($sp)
    addiu	$at,$at,6552
    addu	$gp,$t9,$at
    # Line 660
    lw	$t9,4948($a0)
    # Line 652
    sd	$s0,40($sp)
    move	$s0,$a0
    sd	$s1,32($sp)
    # Line 660
    nop
    # Line 652
    move	$s1,$a1
    # Line 660
    jalr	$t9
    # Line 652
    sd	$a2,8($sp)
    # Line 660
    lw	$v0,4984($s0)
    li	$v1,4865
    beq	$v0,$v1,.L0d98f6d0
    # Line 664
    nop	# was lw $t9, -19512($gp) # &__glMipsCopyDispatch
.L0d98f688:
    # Line 674
    lw	$a0,5008($s0)
    # Line 682
    ld	$ra,24($sp)
    # Line 674
    beqz	$a0,.L0d98f6b0
    # Line 682
    ld	$gp,16($sp)
    # Line 677
    sw	$s1,0($a0)
    # Line 681
    sw	$s1,5008($s0)
    # Line 682
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98f6b0:
    ld	$gp,16($sp)
    # Line 681
    sw	$s1,5008($s0)
    # Line 682
    ld	$ra,24($sp)
    # Line 679
    sw	$s1,5004($s0)
    # Line 682
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98f6d0:
    # Line 664
    li	$a1,4176
    addiu	$a0,$s0,9920
    jal	__glMipsCopyDispatch
    sd	$a0,0($sp)
    # Line 667
    ld	$t9,8($sp)
    addiu	$a0,$s1,16
    # Line 665
    li	$a1,4176
    # Line 667
    jalr	$t9
    # Line 665
    sw	$a1,6132($s0)
    # Line 670
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    ld	$a1,0($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 673
    # lw $t9, -19512($gp) # &__glMipsCopyDispatch
    # Line 670
    lw	$a2,4168($zero)
    # Line 673
    li	$a1,4176
    # Line 671
    addiu	$a3,$s0,6136
    move	$a0,$a2
    # Line 673
    jal	__glMipsCopyDispatch
    movz	$a0,$a3,$a2
    ld	$a4,0($sp)
    b	.L0d98f688
    # Line 674
    sw	$a4,6132($s0)
.end __glDlistAppendOp

