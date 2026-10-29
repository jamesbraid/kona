# Source: ../KONA/kon_vertarray.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_vertarray.c
# Total Functions: 36

.text

# Function: pass_dword
# Declared: Line 19 (Source lines: 20-21)
# Address: 0x0d95ab90 - 0x0d95ab9c (Size: 12 bytes, Frame: 0)
.ent pass_dword
pass_dword:
    # Line 20
    ldc1	$f0,0($a0)
    # Line 21
    jr	$ra
    # Line 20
    sdc1	$f0,16384($zero)
.end pass_dword

# Function: pass_dword_word
# Declared: Line 24 (Source lines: 25-27)
# Address: 0x0d95aba0 - 0x0d95abb4 (Size: 20 bytes, Frame: 0)
.ent pass_dword_word
pass_dword_word:
    # Line 25
    ldc1	$f0,0($a0)
    # Line 26
    lw	$at,8($a0)
    # Line 25
    sdc1	$f0,16384($zero)
    # Line 27
    jr	$ra
    # Line 26
    sw	$at,16384($zero)
.end pass_dword_word

# Function: pass_dword_dword
# Declared: Line 30 (Source lines: 31-33)
# Address: 0x0d95abc0 - 0x0d95abd4 (Size: 20 bytes, Frame: 0)
.ent pass_dword_dword
pass_dword_dword:
    # Line 31
    ldc1	$f1,0($a0)
    # Line 32
    ldc1	$f0,8($a0)
    # Line 31
    sdc1	$f1,16384($zero)
    # Line 33
    jr	$ra
    # Line 32
    sdc1	$f0,16384($zero)
.end pass_dword_dword

# Function: pass_dword_dword_word
# Declared: Line 36 (Source lines: 37-40)
# Address: 0x0d95abe0 - 0x0d95abfc (Size: 28 bytes, Frame: 0)
.ent pass_dword_dword_word
pass_dword_dword_word:
    # Line 39
    lw	$at,16($a0)
    # Line 37
    ldc1	$f1,0($a0)
    # Line 38
    ldc1	$f0,8($a0)
    # Line 37
    sdc1	$f1,16384($zero)
    # Line 38
    sdc1	$f0,16384($zero)
    # Line 40
    jr	$ra
    # Line 39
    sw	$at,16384($zero)
.end pass_dword_dword_word

# Function: pass_dword_dword_dword
# Declared: Line 43 (Source lines: 44-47)
# Address: 0x0d95ac00 - 0x0d95ac1c (Size: 28 bytes, Frame: 0)
.ent pass_dword_dword_dword
pass_dword_dword_dword:
    # Line 46
    ldc1	$f0,16($a0)
    # Line 44
    ldc1	$f2,0($a0)
    # Line 45
    ldc1	$f1,8($a0)
    # Line 44
    sdc1	$f2,16384($zero)
    # Line 45
    sdc1	$f1,16384($zero)
    # Line 47
    jr	$ra
    # Line 46
    sdc1	$f0,16384($zero)
.end pass_dword_dword_dword

# Function: pass_dword_dword_dword_word
# Declared: Line 50 (Source lines: 51-55)
# Address: 0x0d95ac20 - 0x0d95ac44 (Size: 36 bytes, Frame: 0)
.ent pass_dword_dword_dword_word
pass_dword_dword_dword_word:
    # Line 54
    lw	$at,24($a0)
    # Line 53
    ldc1	$f0,16($a0)
    # Line 51
    ldc1	$f2,0($a0)
    # Line 52
    ldc1	$f1,8($a0)
    # Line 51
    sdc1	$f2,16384($zero)
    # Line 52
    sdc1	$f1,16384($zero)
    # Line 53
    sdc1	$f0,16384($zero)
    # Line 55
    jr	$ra
    # Line 54
    sw	$at,16384($zero)
.end pass_dword_dword_dword_word

# Function: pass_dword_dword_dword_dword
# Declared: Line 58 (Source lines: 59-63)
# Address: 0x0d95ac50 - 0x0d95ac74 (Size: 36 bytes, Frame: 0)
.ent pass_dword_dword_dword_dword
pass_dword_dword_dword_dword:
    # Line 62
    ldc1	$f0,24($a0)
    # Line 61
    ldc1	$f1,16($a0)
    # Line 59
    ldc1	$f3,0($a0)
    # Line 60
    ldc1	$f2,8($a0)
    # Line 59
    sdc1	$f3,16384($zero)
    # Line 60
    sdc1	$f2,16384($zero)
    # Line 61
    sdc1	$f1,16384($zero)
    # Line 63
    jr	$ra
    # Line 62
    sdc1	$f0,16384($zero)
.end pass_dword_dword_dword_dword

# Function: pass_word
# Declared: Line 66 (Source lines: 67-68)
# Address: 0x0d95ac80 - 0x0d95ac8c (Size: 12 bytes, Frame: 0)
.ent pass_word
pass_word:
    # Line 67
    lw	$at,0($a0)
    # Line 68
    jr	$ra
    # Line 67
    sw	$at,16384($zero)
.end pass_word

# Function: pass_word_word
# Declared: Line 71 (Source lines: 72-74)
# Address: 0x0d95ac90 - 0x0d95aca4 (Size: 20 bytes, Frame: 0)
.ent pass_word_word
pass_word_word:
    # Line 73
    lw	$at,4($a0)
    # Line 72
    lw	$v0,0($a0)
    sw	$v0,16384($zero)
    # Line 74
    jr	$ra
    # Line 73
    sw	$at,16384($zero)
.end pass_word_word

# Function: pass_word_word_word
# Declared: Line 77 (Source lines: 78-81)
# Address: 0x0d95acb0 - 0x0d95accc (Size: 28 bytes, Frame: 0)
.ent pass_word_word_word
pass_word_word_word:
    # Line 80
    lw	$at,8($a0)
    # Line 79
    lw	$v0,4($a0)
    # Line 78
    lw	$v1,0($a0)
    sw	$v1,16384($zero)
    # Line 79
    sw	$v0,16384($zero)
    # Line 81
    jr	$ra
    # Line 80
    sw	$at,16384($zero)
.end pass_word_word_word

# Function: pass_word_word_word_word
# Declared: Line 84 (Source lines: 85-89)
# Address: 0x0d95acd0 - 0x0d95acf4 (Size: 36 bytes, Frame: 0)
.ent pass_word_word_word_word
pass_word_word_word_word:
    # Line 88
    lw	$at,12($a0)
    # Line 87
    lw	$v0,8($a0)
    # Line 86
    lw	$v1,4($a0)
    # Line 85
    lw	$a0,0($a0)
    sw	$a0,16384($zero)
    # Line 86
    sw	$v1,16384($zero)
    # Line 87
    sw	$v0,16384($zero)
    # Line 89
    jr	$ra
    # Line 88
    sw	$at,16384($zero)
.end pass_word_word_word_word

# Function: pass_hword
# Declared: Line 92 (Source lines: 93-94)
# Address: 0x0d95ad00 - 0x0d95ad10 (Size: 16 bytes, Frame: 0)
.ent pass_hword
pass_hword:
    # Line 93
    lhu	$at,0($a0)
    sll	$at,$at,0x10
    # Line 94
    jr	$ra
    # Line 93
    sw	$at,16384($zero)
.end pass_hword

# Function: pass_hword_hword
# Declared: Line 97 (Source lines: 98-99)
# Address: 0x0d95ad10 - 0x0d95ad28 (Size: 24 bytes, Frame: 0)
.ent pass_hword_hword
pass_hword_hword:
    # Line 98
    lhu	$v0,0($a0)
    lhu	$at,2($a0)
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    # Line 99
    jr	$ra
    # Line 98
    sw	$at,16384($zero)
.end pass_hword_hword

# Function: pass_hword_hword_hword
# Declared: Line 102 (Source lines: 103-105)
# Address: 0x0d95ad30 - 0x0d95ad54 (Size: 36 bytes, Frame: 0)
.ent pass_hword_hword_hword
pass_hword_hword_hword:
    # Line 103
    lhu	$v0,2($a0)
    lhu	$v1,0($a0)
    # Line 104
    lhu	$at,4($a0)
    # Line 103
    sll	$v1,$v1,0x10
    # Line 104
    sll	$at,$at,0x10
    # Line 103
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 105
    jr	$ra
    # Line 104
    sw	$at,16384($zero)
.end pass_hword_hword_hword

# Function: pass_hword_hword_hword_hword
# Declared: Line 108 (Source lines: 109-111)
# Address: 0x0d95ad60 - 0x0d95ad8c (Size: 44 bytes, Frame: 0)
.ent pass_hword_hword_hword_hword
pass_hword_hword_hword_hword:
    # Line 109
    lhu	$v1,2($a0)
    lhu	$a1,0($a0)
    # Line 110
    lhu	$v0,4($a0)
    lhu	$at,6($a0)
    # Line 109
    sll	$a0,$a1,0x10
    # Line 110
    sll	$v0,$v0,0x10
    # Line 109
    or	$v1,$v1,$a0
    sw	$v1,16384($zero)
    # Line 110
    or	$at,$at,$v0
    # Line 111
    jr	$ra
    # Line 110
    sw	$at,16384($zero)
.end pass_hword_hword_hword_hword

# Function: pass_byte
# Declared: Line 114 (Source lines: 115-116)
# Address: 0x0d95ad90 - 0x0d95ada0 (Size: 16 bytes, Frame: 0)
.ent pass_byte
pass_byte:
    # Line 115
    lbu	$at,0($a0)
    sll	$at,$at,0x18
    # Line 116
    jr	$ra
    # Line 115
    sw	$at,16384($zero)
.end pass_byte

# Function: pass_byte_byte
# Declared: Line 119 (Source lines: 120-121)
# Address: 0x0d95ada0 - 0x0d95adbc (Size: 28 bytes, Frame: 0)
.ent pass_byte_byte
pass_byte_byte:
    # Line 120
    lbu	$v0,1($a0)
    lbu	$at,0($a0)
    sll	$v0,$v0,0x10
    sll	$at,$at,0x18
    or	$at,$at,$v0
    # Line 121
    jr	$ra
    # Line 120
    sw	$at,16384($zero)
.end pass_byte_byte

# Function: pass_byte_byte_byte
# Declared: Line 124 (Source lines: 125-126)
# Address: 0x0d95adc0 - 0x0d95ade8 (Size: 40 bytes, Frame: 0)
.ent pass_byte_byte_byte
pass_byte_byte_byte:
    # Line 125
    lbu	$v1,1($a0)
    lbu	$at,0($a0)
    lbu	$v0,2($a0)
    sll	$v1,$v1,0x10
    sll	$at,$at,0x18
    sll	$v0,$v0,0x8
    or	$at,$at,$v1
    or	$at,$at,$v0
    # Line 126
    jr	$ra
    # Line 125
    sw	$at,16384($zero)
.end pass_byte_byte_byte

# Function: pass_byte_byte_byte_byte
# Declared: Line 129 (Source lines: 130-131)
# Address: 0x0d95adf0 - 0x0d95ae20 (Size: 48 bytes, Frame: 0)
.ent pass_byte_byte_byte_byte
pass_byte_byte_byte_byte:
    # Line 130
    lbu	$a1,2($a0)
    lbu	$v1,1($a0)
    lbu	$v0,0($a0)
    sll	$a1,$a1,0x8
    lbu	$at,3($a0)
    sll	$v1,$v1,0x10
    sll	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$a1
    or	$at,$at,$v0
    # Line 131
    jr	$ra
    # Line 130
    sw	$at,16384($zero)
.end pass_byte_byte_byte_byte

# Function: pass_invalid
# Declared: Line 135 (Source lines: 137-137)
# Address: 0x0d95ae20 - 0x0d95ae28 (Size: 8 bytes, Frame: 0)
.ent pass_invalid
pass_invalid:
    # Line 137
    jr	$ra
    nop
.end pass_invalid

# Function: compute_func_ptr
# Declared: Line 233 (Source lines: 255-296)
# Address: 0x0d95ae30 - 0x0d95af1c (Size: 236 bytes, Frame: 0)
.ent compute_func_ptr
compute_func_ptr:
    # Line 255
    andi	$at,$a0,0x7
    # Line 257
    andi	$v0,$a0,0x3
    # Line 255
    beqz	$at,.L0d95aec0
    # Line 259
    andi	$v1,$a0,0x1
.L0d95ae40:
    # Line 257
    beqz	$v0,.L0d95aef0
    sra	$a6,$a1,0x1f
.L0d95ae48:
    # Line 259
    bnez	$v1,.L0d95ae9c
    # Line 261
    li	$a0,1
    # Line 259
    sra	$a3,$a1,0x1f
    xor	$a0,$a1,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x1
    xor	$a0,$a0,$a3
    subu	$a0,$a0,$a3
    bnez	$a0,.L0d95ae9c
    # Line 261
    li	$a0,1
    # Line 259
    slti	$a1,$a2,2
    # Line 296
    li	$v1,0x42
    la	$v0,.rodata
    # Line 259
    bnez	$a1,.L0d95ae98
    # Line 296
    addu	$v1,$a2,$v1
    sll	$v1,$v1,0x2
    addiu	$v0,$v0,20840
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.L0d95ae98:
    # Line 261
    li	$a0,1
.L0d95ae9c:
    # Line 296
    sll	$v1,$a0,0x5
    la	$v0,.rodata
    addu	$v1,$v1,$a0
    addu	$v1,$a2,$v1
    addiu	$v0,$v0,20840
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.L0d95aec0:
    # Line 255
    sra	$a4,$a1,0x1f
    xor	$a3,$a1,$a4
    subu	$a3,$a3,$a4
    andi	$a3,$a3,0x7
    xor	$a3,$a3,$a4
    subu	$a3,$a3,$a4
    bnez	$a3,.L0d95ae40
    slti	$a4,$a2,5
    bnez	$a4,.L0d95ae40
    nop
    # Line 256
    b	.L0d95ae9c
    li	$a0,4
.L0d95aef0:
    # Line 257
    xor	$a5,$a1,$a6
    subu	$a5,$a5,$a6
    andi	$a5,$a5,0x3
    xor	$a5,$a5,$a6
    subu	$a5,$a5,$a6
    bnez	$a5,.L0d95ae48
    slti	$a6,$a2,3
    bnez	$a6,.L0d95ae48
    nop
    # Line 258
    b	.L0d95ae9c
    li	$a0,3
.end compute_func_ptr

# Function: update_cmpnd_cmd
# Declared: Line 299 (Source lines: 300-303)
# Address: 0x0d95af20 - 0x0d95af54 (Size: 52 bytes, Frame: 0)
.ent update_cmpnd_cmd
update_cmpnd_cmd:
    # Line 300
    li	$v1,384
    sw	$v1,16384($zero)
    lw	$a3,5404($a0)
    # Line 302
    lui	$v0,0x1
    # Line 300
    lw	$a2,5400($a0)
    # Line 302
    addu	$v0,$a0,$v0
    lw	$at,-30008($v0)
    nor	$v1,$a1,$zero
    # Line 300
    and	$a0,$a2,$a3
    sw	$a0,16384($zero)
    # Line 302
    and	$at,$at,$v1
    # Line 303
    jr	$ra
    # Line 302
    sw	$at,-30008($v0)
.end update_cmpnd_cmd

# Function: __glkonim_DrawArraysEXT
# Declared: Line 398 (Source lines: 401-683)
# Address: 0x0d95af60 - 0x0d95b7f4 (Size: 2196 bytes, Frame: 224)
.globl __glkonim_DrawArraysEXT
.ent __glkonim_DrawArraysEXT
__glkonim_DrawArraysEXT:
    # Line 401
    addiu	$sp,$sp,-224
    sd	$ra,184($sp)
    sd	$s3,168($sp)
    sd	$gp,144($sp)
    sd	$s4,176($sp)
    sd	$s2,136($sp)
    sd	$s0,152($sp)
    # Line 403
    lw	$s0,4112($zero)
    # Line 401
    sd	$s1,160($sp)
    move	$s1,$a2
    # Line 415
    lw	$a5,1792($s0)
    # Line 401
    move	$s2,$a1
    # Line 415
    lui	$at,0xc
    # Line 414
    lw	$a7,5124($s0)
    # Line 401
    lui	$v1,0x13
    # Line 408
    lw	$a6,5404($s0)
    # Line 415
    and	$v0,$at,$a5
    # Line 401
    move	$s4,$a0
    addiu	$v1,$v1,24696
    # Line 407
    lw	$a3,5400($s0)
    # Line 401
    addu	$gp,$t9,$v1
    # Line 415
    beq	$at,$v0,.L0d95b100
    # Line 405
    lw	$s3,5416($s0)
.L0d95afbc:
    # Line 415
    move	$a1,$zero
.L0d95afc0:
    # Line 420
    lw	$a2,4120($zero)
    lui	$a0,0x3c
    li	$a4,1
    and	$a0,$a5,$a0
    beq	$a2,$a4,.L0d95b718
    sltu	$a0,$zero,$a0
    # Line 432
    bltz	$s2,.L0d95b5b4
    # Line 433
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 432
    bltz	$s1,.L0d95b5b4
    # Line 433
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 434
    sltiu	$a2,$s4,10
    beqz	$a2,.L0d95b0d4
    # Line 438
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 439
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a4,-30004($a2)
    and	$a4,$a4,$s3
    bnez	$a4,.L0d95b0dc
    nop
    # Line 445
    beqz	$s1,.L0d95b0dc
    nop
    # Line 458
    lbu	$a4,3220($s0)
    beqz	$a4,.L0d95b03c
    nop
    beqz	$a0,.L0d95b030
    and	$a0,$a3,$a6
    beqz	$a1,.L0d95b03c
    and	$a0,$a3,$a6
.L0d95b030:
    dsll32	$t0,$a0,0x4
    bgez	$t0,.L0d95b5c4
    lui	$a3,0xf000
.L0d95b03c:
    # Line 481
    lw	$t1,12716($s0)
    sll	$t2,$s3,0x2
    sd	$t2,120($sp)
    addu	$t1,$t1,$t2
    la	$t2,__glNop
    lw	$t1,0($t1)
    beq	$t1,$t2,.L0d95b0dc
    nop
    # Line 495
    lw	$t3,-30008($a2)
    and	$t3,$t3,$s3
    beqz	$t3,.L0d95b084
    # Line 499
    lui	$a1,0x9
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-20704
    move	$a0,$s0
    bal __glkonim_GetTexGenfv
    move	$a1,$s3
    lui	$a1,0x9
.L0d95b084:
    ori	$a1,$a1,0xffff
    slt	$ra,$s1,$a1
    bnez	$ra,.L0d95b72c
    # Line 541
    la	$a2,.rodata
    la	$a0,.rodata
    ld	$a3,256($a2)
    sd	$a3,0($sp)
    addiu	$a2,$a2,256
    lw	$a4,16($a2)
    sltiu	$a3,$s4,10
    sw	$a4,16($sp)
    addiu	$a0,$a0,280
    sll	$a4,$s4,0x2
    ld	$a2,8($a2)
    addu	$a0,$a0,$a4
    beqz	$a3,.L0d95b0dc
    sd	$a2,8($sp)
    lw	$a4,0($a0)
    jr	$a4
    # Line 573
    nop	# was lw $t9, -18404($gp) # &glBegin
.L0d95b0d4:
    # Line 438
    jal	glBegin
    li	$a0,1280
.L0d95b0dc:
    # Line 683
    ld	$gp,144($sp)
.L0d95b0e0:
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    ld	$ra,184($sp)
    ld	$s2,136($sp)
    ld	$s3,168($sp)
    ld	$s4,176($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d95b100:
    # Line 415
    dsll32	$t0,$a5,0xb
    bgez	$t0,.L0d95afbc
    dsll32	$t1,$a5,0xa
    bgez	$t1,.L0d95afc0
    move	$a1,$zero
    b	.L0d95afc0
    li	$a1,1
.L0d95b11c:
    # Line 573
    jalr	$t9
    move	$a0,$s4
    blez	$s1,.L0d95b20c
    # Line 591
    nop	# was lw $t9, -18260($gp) # &glEnd
    # Line 573
    la	$t8,__glkon_varray_elem_count
    addu	$t9,$s4,$s4
    addu	$t8,$s3,$t8
    sd	$t8,128($sp)
    addu	$t9,$sp,$t9
    lbu	$t3,0($t9)
    lui	$t2,0x9
    lbu	$t9,1($t9)
    ori	$t2,$t2,0xffff
    sd	$t9,104($sp)
    subu	$t2,$t2,$t3
    sd	$t2,112($sp)
.L0d95b15c:
    # Line 576
    ld	$a3,128($sp)
    li	$a0,32
    lbu	$a3,0($a3)
    mtc1	$a0,$f0
    mtc1	$a3,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    # Line 583
    ld	$s3,112($sp)
    slt	$v1,$s1,$s3
    movn	$s3,$s1,$v1
    mtc1	$s3,$f1
    # Line 576
    trunc.w.d	$f0,$f0
    # Line 583
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f0
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    # Line 576
    mfc1	$ra,$f0
    # Line 583
    mfc1	$v0,$f1
    mult	$v0,$ra
    ld	$at,120($sp)
    lw	$t9,12716($s0)
    move	$a1,$s2
    addu	$t9,$t9,$at
    move	$a0,$s4
    # Line 582
    li	$at,385
    # Line 583
    lw	$t9,0($t9)
    # Line 576
    teq	$a3,$zero,0x7
    # Line 583
    mflo	$a2
    # Line 582
    sw	$at,16384($zero)
    # Line 583
    teq	$ra,$zero,0x7
    subu	$a2,$s3,$a2
    # Line 582
    sw	$zero,16384($zero)
    # Line 583
    jal	glEnd
    subu	$a3,$s3,$a2
    # Line 588
    ld	$a4,104($sp)
    # Line 589
    subu	$s1,$s1,$s3
    # Line 586
    li	$a5,419
    sw	$a5,16384($zero)
    # Line 588
    subu	$a4,$s3,$a4
    # Line 586
    sw	$zero,16384($zero)
    # Line 589
    bgtz	$s1,.L0d95b15c
    # Line 588
    addu	$s2,$s2,$a4
    # Line 591
    # lw $t9, -18260($gp) # &glEnd
.L0d95b20c:
    jal	glEnd
    nop
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
.L0d95b21c:
    # Line 643
    blez	$s1,.L0d95b0dc
    andi	$t8,$s3,0x8
    sd	$t8,56($sp)
    andi	$t3,$s3,0x20
    sd	$t3,72($sp)
    andi	$t3,$s3,0x4
    sd	$t3,48($sp)
    andi	$t2,$s3,0x10
    sd	$t2,64($sp)
    andi	$t2,$s3,0x2
    sd	$t2,40($sp)
    la	$a7,__glkon_varray_elem_count
    andi	$t1,$s3,0x1
    sd	$t1,80($sp)
    addu	$t0,$s4,$s4
    addu	$a7,$s3,$a7
    sd	$a7,128($sp)
    addu	$t0,$t0,$sp
    lbu	$a6,0($t0)
    lbu	$t0,1($t0)
    sd	$t0,104($sp)
    subu	$a6,$a1,$a6
    sd	$a6,112($sp)
.L0d95b278:
    # Line 647
    ld	$s4,128($sp)
    li	$s3,32
    lbu	$s4,0($s4)
    mtc1	$s3,$f1
    mtc1	$s4,$f2
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    # Line 653
    # lw $t9, -18404($gp) # &glBegin
    # Line 647
    trunc.w.d	$f1,$f1
    teq	$s4,$zero,0x7
    # Line 653
    li	$a0,6
    jal	glBegin
    # Line 647
    mfc1	$s4,$f1
    # Line 653
    ld	$t8,80($sp)
    beqz	$t8,.L0d95b2c8
    sd	$s4,32($sp)
    # Line 658
    lw	$t9,5136($s0)
    jalr	$t9
    lw	$a0,5116($s0)
.L0d95b2c8:
    ld	$t9,40($sp)
    beqz	$t9,.L0d95b2e4
    # Line 660
    ld	$ra,48($sp)
    lw	$t9,5164($s0)
    jalr	$t9
    lw	$a0,5140($s0)
    ld	$ra,48($sp)
.L0d95b2e4:
    beqz	$ra,.L0d95b2fc
    # Line 662
    ld	$at,56($sp)
    lw	$t9,5216($s0)
    jalr	$t9
    lw	$a0,5192($s0)
    ld	$at,56($sp)
.L0d95b2fc:
    beqz	$at,.L0d95b314
    # Line 664
    ld	$v0,64($sp)
    lw	$t9,5188($s0)
    jalr	$t9
    lw	$a0,5168($s0)
    ld	$v0,64($sp)
.L0d95b314:
    beqz	$v0,.L0d95b32c
    # Line 666
    ld	$v1,72($sp)
    lw	$t9,5236($s0)
    jalr	$t9
    lw	$a0,5220($s0)
    ld	$v1,72($sp)
.L0d95b32c:
    beqz	$v1,.L0d95b340
    li	$s4,385
    # Line 668
    lw	$t9,5112($s0)
    jalr	$t9
    lw	$a0,5088($s0)
.L0d95b340:
    # Line 671
    ld	$a3,32($sp)
    ld	$s3,112($sp)
    mtc1	$a3,$f3
    slt	$v0,$s1,$s3
    movn	$s3,$s1,$v0
    mtc1	$s3,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$at,$f2
    mult	$at,$a3
    ld	$ra,120($sp)
    lw	$t9,12716($s0)
    addu	$t9,$t9,$ra
    move	$a1,$s2
    lw	$t9,0($t9)
    li	$a0,6
    mflo	$a2
    # Line 670
    sw	$s4,16384($zero)
    # Line 671
    teq	$a3,$zero,0x7
    subu	$a2,$s3,$a2
    # Line 670
    sw	$zero,16384($zero)
    # Line 671
    jalr	$t9
    subu	$a3,$s3,$a2
    # Line 675
    # lw $t9, -18260($gp) # &glEnd
    # Line 674
    li	$v1,419
    sw	$v1,16384($zero)
    # Line 675
    jal	glEnd
    # Line 674
    sw	$zero,16384($zero)
    # Line 677
    ld	$a0,104($sp)
    # Line 678
    subu	$s1,$s1,$s3
    # Line 677
    subu	$a0,$s3,$a0
    # Line 678
    bgtz	$s1,.L0d95b278
    # Line 677
    addu	$s2,$s2,$a0
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
.L0d95b3d4:
    # Line 600
    blez	$s1,.L0d95b0dc
    andi	$t0,$s3,0x20
    sd	$t0,72($sp)
    andi	$a7,$s3,0x10
    sd	$a7,64($sp)
    andi	$a7,$s3,0x4
    sd	$a7,48($sp)
    andi	$a6,$s3,0x8
    sd	$a6,56($sp)
    andi	$a6,$s3,0x2
    sd	$a6,40($sp)
    la	$a4,__glkon_varray_elem_count
    andi	$a5,$s3,0x1
    sd	$a5,80($sp)
    addu	$a3,$s4,$s4
    addu	$a4,$s3,$a4
    sd	$a4,128($sp)
    addu	$a3,$a3,$sp
    lbu	$a2,0($a3)
    lbu	$a3,1($a3)
    li	$s4,32
    sd	$a3,104($sp)
    subu	$a2,$a1,$a2
    b	.L0d95b4dc
    sd	$a2,112($sp)
.L0d95b438:
    # Line 621
    lw	$t9,5136($s0)
    jalr	$t9
    lw	$a0,5116($s0)
    ld	$t1,40($sp)
.L0d95b448:
    beqz	$t1,.L0d95b460
    # Line 623
    ld	$t2,48($sp)
    lw	$t9,5164($s0)
    jalr	$t9
    lw	$a0,5140($s0)
    ld	$t2,48($sp)
.L0d95b460:
    beqz	$t2,.L0d95b478
    # Line 625
    ld	$t3,56($sp)
    lw	$t9,5216($s0)
    jalr	$t9
    lw	$a0,5192($s0)
    ld	$t3,56($sp)
.L0d95b478:
    beqz	$t3,.L0d95b490
    # Line 627
    ld	$t8,64($sp)
    lw	$t9,5188($s0)
    jalr	$t9
    lw	$a0,5168($s0)
    ld	$t8,64($sp)
.L0d95b490:
    beqz	$t8,.L0d95b4a8
    # Line 629
    ld	$t9,72($sp)
    lw	$t9,5236($s0)
    jalr	$t9
    lw	$a0,5220($s0)
    ld	$t9,72($sp)
.L0d95b4a8:
    beqz	$t9,.L0d95b4c0
    # Line 633
    nop	# was lw $t9, -18260($gp) # &glEnd
    # Line 631
    lw	$t9,5112($s0)
    jal	glEnd
    lw	$a0,5088($s0)
.L0d95b4bc:
    # Line 633
    # lw $t9, -18260($gp) # &glEnd
.L0d95b4c0:
    jal	glEnd
    nop
    # Line 635
    ld	$ra,104($sp)
    # Line 636
    subu	$s1,$s1,$s3
    # Line 635
    subu	$ra,$s3,$ra
    # Line 636
    blez	$s1,.L0d95b5a8
    # Line 635
    addu	$s2,$s2,$ra
.L0d95b4dc:
    # Line 603
    ld	$v0,128($sp)
    lbu	$v0,0($v0)
    mtc1	$s4,$f3
    mtc1	$v0,$f4
    cvt.d.w	$f3,$f3
    cvt.d.w	$f4,$f4
    div.d	$f3,$f3,$f4
    # Line 609
    # lw $t9, -18404($gp) # &glBegin
    # Line 603
    trunc.w.d	$f3,$f3
    teq	$v0,$zero,0x7
    mfc1	$at,$f3
    # Line 609
    li	$a0,3
    jal	glBegin
    sd	$at,96($sp)
    # Line 611
    ld	$a3,96($sp)
    ld	$s3,112($sp)
    mtc1	$a3,$f5
    slt	$v0,$s1,$s3
    movn	$s3,$s1,$v0
    mtc1	$s3,$f4
    cvt.d.w	$f5,$f5
    cvt.d.w	$f4,$f4
    div.d	$f4,$f4,$f5
    trunc.w.d	$f4,$f4
    mfc1	$at,$f4
    mult	$at,$a3
    ld	$ra,120($sp)
    lw	$t9,12716($s0)
    addu	$t9,$t9,$ra
    move	$a1,$s2
    li	$a0,3
    lw	$t9,0($t9)
    # Line 610
    li	$v1,385
    sw	$v1,16384($zero)
    # Line 611
    mflo	$a2
    # Line 610
    sw	$zero,16384($zero)
    # Line 611
    teq	$a3,$zero,0x7
    subu	$a2,$s3,$a2
    sd	$v0,88($sp)
    jalr	$t9
    subu	$a3,$s3,$a2
    # Line 614
    ld	$v1,88($sp)
    ld	$a1,80($sp)
    li	$a0,419
    sw	$a0,16384($zero)
    beqz	$v1,.L0d95b4bc
    sw	$zero,16384($zero)
    bnez	$a1,.L0d95b438
    nop
    b	.L0d95b448
    # Line 621
    ld	$t1,40($sp)
.L0d95b5a8:
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
    # Line 433
    # lw $t9, -28616($gp) # &__glSetError
.L0d95b5b4:
    jal	__glSetError
    li	$a0,1281
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
.L0d95b5c4:
    # Line 458
    and	$a3,$a0,$a3
    bnez	$a3,.L0d95b03c
    andi	$a4,$a0,0xff
    beqz	$a4,.L0d95b03c
    # Line 469
    sra	$t1,$a0,0x8
    andi	$t1,$t1,0xf
    sll	$t2,$t1,0x2
    sra	$t0,$a0,0x4
    andi	$t8,$a0,0xf
    sll	$t3,$t8,0x2
    la	$a1,.rodata
    andi	$t0,$t0,0xf
    addu	$t3,$t3,$t8
    addu	$t0,$t0,$t3
    addiu	$a1,$a1,20840
    addu	$t2,$t2,$a1
    sll	$t0,$t0,0x2
    lw	$t2,884($t2)
    addu	$t0,$t0,$a1
    lw	$t0,644($t0)
    sll	$a6,$t2,0x1
    beqz	$t1,.L0d95b628
    or	$a6,$a6,$t0
    sra	$t3,$a6,0x1
    beqz	$t3,.L0d95b7e4
.L0d95b628:
    move	$t0,$zero
.L0d95b62c:
    # Line 474
    sra	$a4,$a0,0xc
    sra	$a3,$a0,0x10
    andi	$a4,$a4,0xf
    sll	$t1,$a4,0x2
    andi	$a3,$a3,0xf
    addu	$t1,$t1,$a4
    addu	$a3,$a3,$t1
    sll	$a3,$a3,0x2
    addu	$a3,$a1,$a3
    lw	$a3,916($a3)
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d95b668
    or	$a3,$a6,$a3
    sra	$a6,$a3,0x2
    beqz	$a6,.L0d95b7ec
.L0d95b668:
    move	$t1,$zero
.L0d95b66c:
    # Line 478
    sra	$t3,$a0,0x14
    sra	$a6,$a0,0x18
    andi	$t3,$t3,0xf
    sll	$t8,$t3,0x2
    andi	$a6,$a6,0x7
    addu	$t8,$t8,$t3
    addu	$a6,$a6,$t8
    sll	$a6,$a6,0x2
    addu	$a6,$a1,$a6
    lw	$a6,1140($a6)
    sll	$a6,$a6,0x3
    beqz	$t3,.L0d95b6a8
    or	$a6,$a3,$a6
    sra	$t8,$a6,0x3
    beqz	$t8,.L0d95b03c
.L0d95b6a8:
    # Line 481
    sll	$a0,$a6,0x2
    addu	$a0,$a1,$a0
    lw	$a0,1384($a0)
    bgez	$a0,.L0d95b03c
    or	$a1,$t0,$t1
    bnez	$a1,.L0d95b03c
    nop
    # Line 483
    beqz	$t2,.L0d95b6e4
    # Line 481
    move	$a3,$a0
    # Line 483
    dsll32	$a4,$a5,0x9
    bltz	$a4,.L0d95b03c
    nop
    beqz	$a7,.L0d95b03c
    andi	$a6,$a7,0x3
    bnez	$a6,.L0d95b03c
.L0d95b6e4:
    # Line 485
    andi	$a7,$a5,0x40
    beqz	$a7,.L0d95b700
    # Line 487
    nop	# was lw $t9, -31980($gp) # &__glKonSendPackedVertex
    # Line 486
    lui	$t0,0x10
    or	$t0,$a0,$t0
    movz	$a3,$t0,$t2
    # Line 487
    # lw $t9, -31980($gp) # &__glKonSendPackedVertex
.L0d95b700:
    move	$a0,$s4
    move	$a1,$s2
    bal __glKonSendPackedVertex
    move	$a2,$s1
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
.L0d95b718:
    # Line 427
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
.L0d95b72c:
    # Line 508
    la	$t2,__glkon_varray_elem_count
    addu	$t2,$s3,$t2
    li	$t3,32
    lbu	$t2,0($t2)
    mtc1	$t3,$f5
    mtc1	$t2,$f6
    cvt.d.w	$f5,$f5
    cvt.d.w	$f6,$f6
    div.d	$f5,$f5,$f6
    # Line 516
    # lw $t9, -18404($gp) # &glBegin
    # Line 508
    trunc.w.d	$f5,$f5
    teq	$t2,$zero,0x7
    mfc1	$t1,$f5
    # Line 516
    move	$a0,$s4
    jal	glBegin
    sd	$t1,24($sp)
    # Line 518
    ld	$a3,24($sp)
    mtc1	$s1,$f6
    mtc1	$a3,$f7
    cvt.d.w	$f6,$f6
    cvt.d.w	$f7,$f7
    div.d	$f6,$f6,$f7
    trunc.w.d	$f6,$f6
    mfc1	$at,$f6
    mult	$at,$a3
    ld	$ra,120($sp)
    lw	$t9,12716($s0)
    addu	$t9,$t9,$ra
    move	$a1,$s2
    move	$a0,$s4
    lw	$t9,0($t9)
    # Line 517
    li	$t3,385
    # Line 518
    mflo	$a2
    # Line 517
    sw	$t3,16384($zero)
    # Line 518
    teq	$a3,$zero,0x7
    subu	$a2,$s1,$a2
    # Line 517
    sw	$zero,16384($zero)
    # Line 518
    jalr	$t9
    subu	$a3,$s1,$a2
    # Line 521
    # lw $t9, -18260($gp) # &glEnd
    # Line 520
    li	$v0,419
    sw	$v0,16384($zero)
    # Line 521
    jal	glEnd
    # Line 520
    sw	$zero,16384($zero)
    b	.L0d95b0e0
    # Line 683
    ld	$gp,144($sp)
.L0d95b7e4:
    # Line 469
    b	.L0d95b62c
    li	$t0,1
.L0d95b7ec:
    # Line 474
    b	.L0d95b66c
    li	$t1,1
.end __glkonim_DrawArraysEXT

# Function: __glkonlc_DrawArraysEXT
# Declared: Line 685 (Source lines: 688-816)
# Address: 0x0d95b800 - 0x0d95bc34 (Size: 1076 bytes, Frame: 240)
.globl __glkonlc_DrawArraysEXT
.ent __glkonlc_DrawArraysEXT
__glkonlc_DrawArraysEXT:
    # Line 688
    addiu	$sp,$sp,-112
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    # Line 690
    lw	$s1,4112($zero)
    sd	$gp,24($sp)
    # Line 702
    lw	$a5,1792($s1)
    # Line 688
    lui	$a4,0x13
    # Line 698
    lw	$t2,5124($s1)
    # Line 688
    addiu	$a4,$a4,22488
    # Line 694
    lw	$a7,5404($s1)
    # Line 702
    dsll32	$at,$a5,0xd
    lui	$a3,0x4
    # Line 688
    addu	$gp,$t9,$a4
    # Line 693
    lw	$t0,5400($s1)
    # Line 692
    lw	$a6,5416($s1)
    # Line 702
    bgez	$at,.L0d95bba4
    and	$a3,$a5,$a3
    dsll32	$t1,$a5,0xc
    bgez	$t1,.L0d95bba4
    dsll32	$t3,$a5,0xb
    bgez	$t3,.L0d95bba4
    dsll32	$t8,$a5,0xa
    bgez	$t8,.L0d95bba4
    li	$t1,1
.L0d95b860:
    # Line 707
    li	$a3,1
.L0d95b864:
    lw	$t9,5076($s1)
    andi	$t9,$t9,0x4
    beqz	$t9,.L0d95b890
    # Line 717
    nop	# was lw $t9, -30748($gp) # &__glsplc_InvalidOperation
    jal	__glsplc_InvalidOperation
    nop
    ld	$ra,40($sp)
.L0d95b880:
    ld	$s1,16($sp)
    # Line 816
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d95b890:
    # Line 722
    bltz	$a1,.L0d95bbec
    # Line 723
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 722
    bltz	$a2,.L0d95bbec
    # Line 723
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 724
    sltiu	$ra,$a0,10
    beqz	$ra,.L0d95bbd4
    # Line 731
    li	$at,0x8acc
    addu	$at,$at,$s1
    lw	$at,0($at)
    and	$at,$at,$a6
    bnez	$at,.L0d95b880
    ld	$ra,40($sp)
    # Line 741
    beqz	$a2,.L0d95b880
    ld	$ra,40($sp)
    beqz	$a6,.L0d95b880
    ld	$ra,40($sp)
    # Line 749
    lbu	$v0,3220($s1)
    beqz	$v0,.L0d95ba1c
    nop
    beqz	$a3,.L0d95b8ec
    and	$a3,$t0,$a7
    beqz	$t1,.L0d95ba1c
    and	$a3,$t0,$a7
.L0d95b8ec:
    dsll32	$v1,$a3,0x4
    bltz	$v1,.L0d95ba1c
    lui	$a4,0xf000
    # Line 760
    sra	$t1,$a3,0x4
    # Line 749
    and	$a4,$a3,$a4
    andi	$a7,$a3,0xff
    # Line 760
    sra	$t3,$a3,0x8
    andi	$t3,$t3,0xf
    # Line 749
    bnez	$a4,.L0d95ba1c
    # Line 760
    sll	$t9,$t3,0x2
    # Line 749
    beqz	$a7,.L0d95ba1c
    # Line 760
    andi	$t1,$t1,0xf
    andi	$ra,$a3,0xf
    la	$a7,.rodata
    sll	$t8,$ra,0x2
    addu	$t8,$t8,$ra
    addiu	$a7,$a7,20840
    addu	$t1,$t1,$t8
    addu	$t9,$t9,$a7
    sll	$t1,$t1,0x2
    lw	$t9,884($t9)
    addu	$t1,$t1,$a7
    lw	$t1,644($t1)
    sll	$t0,$t9,0x1
    beqz	$t3,.L0d95b95c
    or	$t0,$t0,$t1
    sra	$t8,$t0,0x1
    beqz	$t8,.L0d95bbfc
.L0d95b95c:
    move	$t8,$zero
.L0d95b960:
    # Line 765
    sra	$t3,$a3,0xc
    sra	$t1,$a3,0x10
    andi	$t3,$t3,0xf
    sll	$ra,$t3,0x2
    andi	$t1,$t1,0xf
    addu	$ra,$ra,$t3
    addu	$t1,$t1,$ra
    sll	$t1,$t1,0x2
    addu	$t1,$a7,$t1
    lw	$t1,916($t1)
    sll	$t1,$t1,0x2
    beqz	$t3,.L0d95b99c
    or	$t1,$t0,$t1
    sra	$ra,$t1,0x2
    beqz	$ra,.L0d95bc04
.L0d95b99c:
    move	$t3,$zero
.L0d95b9a0:
    # Line 770
    sra	$ra,$a3,0x14
    sra	$t0,$a3,0x18
    andi	$ra,$ra,0xf
    sll	$at,$ra,0x2
    andi	$t0,$t0,0x7
    addu	$at,$at,$ra
    addu	$t0,$t0,$at
    sll	$t0,$t0,0x2
    addu	$t0,$a7,$t0
    lw	$t0,1140($t0)
    sll	$t0,$t0,0x3
    beqz	$ra,.L0d95b9dc
    or	$t0,$t1,$t0
    sra	$at,$t0,0x3
    beqz	$at,.L0d95ba1c
.L0d95b9dc:
    # Line 773
    sll	$t1,$t0,0x2
    addu	$t1,$a7,$t1
    lw	$t1,1384($t1)
    bgez	$t1,.L0d95ba1c
    or	$ra,$t8,$t3
    bnez	$ra,.L0d95ba1c
    nop
    # Line 775
    beqz	$t9,.L0d95bc0c
    # Line 773
    move	$a3,$t1
    # Line 775
    dsll32	$at,$a5,0x9
    bltz	$at,.L0d95ba1c
    nop
    beqz	$t2,.L0d95ba1c
    andi	$v0,$t2,0x3
    beqz	$v0,.L0d95bc0c
    sd	$a6,0($sp)
.L0d95ba1c:
    sd	$a1,8($sp)
    sd	$a6,0($sp)
    # Line 786
    # lw $t9, -18404($gp) # &glBegin
    sd	$a2,32($sp)
    sd	$s0,48($sp)
    jal	glBegin
    sd	$s3,56($sp)
    # Line 787
    ld	$s0,8($sp)
    ld	$a0,32($sp)
    addu	$s3,$a0,$s0
    # Line 788
    slt	$v1,$s0,$s3
    beqz	$v1,.L0d95bb90
    # Line 814
    nop	# was lw $t9, -18260($gp) # &glEnd
    sd	$s6,72($sp)
    sd	$s2,64($sp)
    # Line 788
    ld	$s2,0($sp)
    sd	$s4,88($sp)
    sd	$s8,80($sp)
    andi	$s8,$s2,0x20
    andi	$s4,$s2,0x10
    sd	$s7,104($sp)
    andi	$s7,$s2,0x8
    andi	$s6,$s2,0x4
    sd	$s5,96($sp)
    andi	$s5,$s2,0x2
    andi	$s2,$s2,0x1
    nop
    nop
    nop
.L0d95ba90:
    beqz	$s2,.L0d95bab4
    nop
    # Line 790
    lw	$a2,5124($s1)
    mult	$a2,$s0
    lw	$t9,5136($s1)
    lw	$a0,5116($s1)
    mflo	$a1
    jal	glEnd
    addu	$a0,$a0,$a1
.L0d95bab4:
    beqz	$s5,.L0d95bad8
    nop
    # Line 794
    lw	$a2,5152($s1)
    mult	$a2,$s0
    lw	$t9,5164($s1)
    lw	$a0,5140($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d95bad8:
    beqz	$s6,.L0d95bafc
    nop
    # Line 798
    lw	$a2,5204($s1)
    mult	$a2,$s0
    lw	$t9,5216($s1)
    lw	$a0,5192($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d95bafc:
    beqz	$s7,.L0d95bb20
    nop
    # Line 802
    lw	$a2,5176($s1)
    mult	$a2,$s0
    lw	$t9,5188($s1)
    lw	$a0,5168($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d95bb20:
    beqz	$s4,.L0d95bb44
    nop
    # Line 806
    lw	$a2,5224($s1)
    mult	$a2,$s0
    lw	$t9,5236($s1)
    lw	$a0,5220($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d95bb44:
    beqz	$s8,.L0d95bb68
    nop
    # Line 810
    lw	$a2,5100($s1)
    mult	$a2,$s0
    lw	$t9,5112($s1)
    lw	$a0,5088($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d95bb68:
    # Line 788
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0d95ba90
    nop
    ld	$s2,64($sp)
    ld	$s6,72($sp)
    ld	$s8,80($sp)
    ld	$s4,88($sp)
    ld	$s5,96($sp)
    ld	$s7,104($sp)
    # Line 814
    # lw $t9, -18260($gp) # &glEnd
.L0d95bb90:
    ld	$s3,56($sp)
    jal	glEnd
    ld	$s0,48($sp)
    b	.L0d95b880
    ld	$ra,40($sp)
.L0d95bba4:
    # Line 707
    bnez	$a3,.L0d95b860
    # Line 702
    move	$t1,$zero
    # Line 707
    dsll32	$a3,$a5,0xc
    bltz	$a3,.L0d95b860
    dsll32	$a4,$a5,0xb
    bltz	$a4,.L0d95b864
    li	$a3,1
    dsll32	$t3,$a5,0xa
    bltz	$t3,.L0d95b864
    li	$a3,1
    b	.L0d95b864
    move	$a3,$zero
.L0d95bbd4:
    # Line 730
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0d95b880
    ld	$ra,40($sp)
    # Line 723
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d95bbec:
    jal	__glsplc_InvalidValue
    nop
    b	.L0d95b880
    ld	$ra,40($sp)
.L0d95bbfc:
    # Line 760
    b	.L0d95b960
    li	$t8,1
.L0d95bc04:
    # Line 765
    b	.L0d95b9a0
    li	$t3,1
.L0d95bc0c:
    # Line 777
    andi	$t8,$a5,0x40
    beqz	$t8,.L0d95bc20
    # Line 778
    lui	$ra,0x10
    or	$ra,$t1,$ra
    movz	$a3,$ra,$t9
.L0d95bc20:
    # Line 779
    # lw $t9, -31976($gp) # &__glKonlSendPackedVertex
    bal __glKonlSendPackedVertex
    nop
    b	.L0d95b880
    ld	$ra,40($sp)
.end __glkonlc_DrawArraysEXT

# Function: __glkonim_VertexPointerEXT
# Declared: Line 853 (Source lines: 858-880)
# Address: 0x0d95bc40 - 0x0d95bd44 (Size: 260 bytes, Frame: 192)
.globl __glkonim_VertexPointerEXT
.ent __glkonim_VertexPointerEXT
__glkonim_VertexPointerEXT:
    # Line 858
    addiu	$sp,$sp,-64
    sd	$a4,32($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$s1,0($sp)
    sd	$s0,56($sp)
    lui	$v0,0x13
    # Line 859
    lw	$s0,4112($zero)
    # Line 858
    addiu	$v0,$v0,21400
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 862
    # lw $t9, -25748($gp) # &__glim_VertexPointerEXT
    # Line 858
    sd	$ra,48($sp)
    # Line 860
    lw	$at,5400($s0)
    # Line 862
    jal	__glim_VertexPointerEXT
    sd	$at,16($sp)
    # lw $t9, -27132($gp) # &__glNop
    lw	$t8,5112($s0)
    lui	$s1,0x1
    bne	$t8,$t9,.L0d95bcb8
    addu	$s1,$s0,$s1
    # Line 864
    lw	$ra,-30004($s1)
    ori	$ra,$ra,0x20
    sw	$ra,-30004($s1)
    # Line 880
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95bcb8:
    # Line 873
    ld	$a6,24($sp)
    ld	$a4,8($sp)
    sll	$a5,$a6,0x2
    lui	$a2,0xfffe
    la	$a3,.rodata
    addu	$a5,$a5,$a6
    ori	$a2,$a2,0x7000
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,32($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5100($s0)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$at,16($sp)
    sw	$v0,-30032($s1)
    lw	$ra,5400($s0)
    # Line 880
    ld	$s0,56($sp)
    # Line 879
    li	$a0,-33
    # Line 873
    beq	$ra,$at,.L0d95bd28
    # Line 880
    ld	$gp,40($sp)
    # Line 878
    lw	$v0,-30008($s1)
    ori	$v0,$v0,0x20
    sw	$v0,-30008($s1)
.L0d95bd28:
    # Line 879
    lw	$v1,-30004($s1)
    # Line 880
    ld	$ra,48($sp)
    # Line 879
    and	$v1,$v1,$a0
    sw	$v1,-30004($s1)
    # Line 880
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonim_VertexPointerEXT

# Function: __glkonim_NormalPointerEXT
# Declared: Line 882 (Source lines: 886-909)
# Address: 0x0d95bd50 - 0x0d95be48 (Size: 248 bytes, Frame: 192)
.globl __glkonim_NormalPointerEXT
.ent __glkonim_NormalPointerEXT
__glkonim_NormalPointerEXT:
    # Line 886
    addiu	$sp,$sp,-64
    sd	$a3,16($sp)
    sd	$a0,8($sp)
    sd	$s1,0($sp)
    sd	$s0,48($sp)
    lui	$v0,0x13
    # Line 888
    lw	$s0,4112($zero)
    # Line 886
    addiu	$v0,$v0,21128
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 891
    # lw $t9, -25744($gp) # &__glim_NormalPointerEXT
    # Line 886
    sd	$ra,32($sp)
    # Line 889
    lw	$at,5400($s0)
    # Line 891
    jal	__glim_NormalPointerEXT
    sd	$at,24($sp)
    # lw $t9, -27132($gp) # &__glNop
    lw	$t8,5136($s0)
    lui	$s1,0x1
    bne	$t8,$t9,.L0d95bdc4
    addu	$s1,$s0,$s1
    # Line 893
    lw	$ra,-30004($s1)
    ori	$ra,$ra,0x1
    sw	$ra,-30004($s1)
    # Line 909
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95bdc4:
    # Line 902
    ld	$a5,8($sp)
    lui	$a2,0xfffe
    la	$a3,.rodata
    sll	$a4,$a5,0x2
    ori	$a2,$a2,0x700c
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,16($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5124($s0)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$at,24($sp)
    sw	$v0,-30028($s1)
    lw	$ra,5400($s0)
    # Line 909
    ld	$s0,48($sp)
    # Line 908
    li	$a0,-2
    # Line 902
    beq	$ra,$at,.L0d95be2c
    # Line 909
    ld	$gp,40($sp)
    # Line 907
    lw	$v0,-30008($s1)
    ori	$v0,$v0,0x1
    sw	$v0,-30008($s1)
.L0d95be2c:
    # Line 908
    lw	$v1,-30004($s1)
    # Line 909
    ld	$ra,32($sp)
    # Line 908
    and	$v1,$v1,$a0
    sw	$v1,-30004($s1)
    # Line 909
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonim_NormalPointerEXT

# Function: __glkonim_ColorPointerEXT
# Declared: Line 911 (Source lines: 916-937)
# Address: 0x0d95be50 - 0x0d95bf54 (Size: 260 bytes, Frame: 192)
.globl __glkonim_ColorPointerEXT
.ent __glkonim_ColorPointerEXT
__glkonim_ColorPointerEXT:
    # Line 916
    addiu	$sp,$sp,-64
    sd	$a4,32($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$s1,0($sp)
    sd	$s0,56($sp)
    lui	$v0,0x13
    # Line 917
    lw	$s0,4112($zero)
    # Line 916
    addiu	$v0,$v0,20872
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 920
    # lw $t9, -25740($gp) # &__glim_ColorPointerEXT
    # Line 916
    sd	$ra,48($sp)
    # Line 918
    lw	$at,5400($s0)
    # Line 920
    jal	__glim_ColorPointerEXT
    sd	$at,16($sp)
    # lw $t9, -27132($gp) # &__glNop
    lw	$t8,5164($s0)
    lui	$s1,0x1
    bne	$t8,$t9,.L0d95bec8
    addu	$s1,$s0,$s1
    # Line 922
    lw	$ra,-30004($s1)
    ori	$ra,$ra,0x2
    sw	$ra,-30004($s1)
    # Line 937
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95bec8:
    # Line 930
    ld	$a6,24($sp)
    ld	$a4,8($sp)
    sll	$a5,$a6,0x2
    lui	$a2,0xfffe
    la	$a3,.rodata
    addu	$a5,$a5,$a6
    ori	$a2,$a2,0x7000
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,32($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5152($s0)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$at,16($sp)
    sw	$v0,-30024($s1)
    lw	$ra,5400($s0)
    # Line 937
    ld	$s0,56($sp)
    # Line 936
    li	$a0,-3
    # Line 930
    beq	$ra,$at,.L0d95bf38
    # Line 937
    ld	$gp,40($sp)
    # Line 935
    lw	$v0,-30008($s1)
    ori	$v0,$v0,0x2
    sw	$v0,-30008($s1)
.L0d95bf38:
    # Line 936
    lw	$v1,-30004($s1)
    # Line 937
    ld	$ra,48($sp)
    # Line 936
    and	$v1,$v1,$a0
    sw	$v1,-30004($s1)
    # Line 937
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonim_ColorPointerEXT

# Function: __glkonim_IndexPointerEXT
# Declared: Line 939 (Source lines: 943-964)
# Address: 0x0d95bf60 - 0x0d95c058 (Size: 248 bytes, Frame: 192)
.globl __glkonim_IndexPointerEXT
.ent __glkonim_IndexPointerEXT
__glkonim_IndexPointerEXT:
    # Line 943
    addiu	$sp,$sp,-64
    sd	$a3,16($sp)
    sd	$a0,8($sp)
    sd	$s1,0($sp)
    sd	$s0,48($sp)
    lui	$v0,0x13
    # Line 944
    lw	$s0,4112($zero)
    # Line 943
    addiu	$v0,$v0,20600
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 947
    # lw $t9, -25728($gp) # &__glim_IndexPointerEXT
    # Line 943
    sd	$ra,32($sp)
    # Line 945
    lw	$at,5400($s0)
    # Line 947
    jal	__glim_IndexPointerEXT
    sd	$at,24($sp)
    # lw $t9, -27132($gp) # &__glNop
    lw	$t8,5188($s0)
    lui	$s1,0x1
    bne	$t8,$t9,.L0d95bfd4
    addu	$s1,$s0,$s1
    # Line 949
    lw	$ra,-30004($s1)
    ori	$ra,$ra,0x8
    sw	$ra,-30004($s1)
    # Line 964
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95bfd4:
    # Line 957
    ld	$a5,8($sp)
    lui	$a2,0xfffe
    la	$a3,.rodata
    sll	$a4,$a5,0x2
    ori	$a2,$a2,0x7004
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,16($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5176($s0)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$at,24($sp)
    sw	$v0,-30020($s1)
    lw	$ra,5400($s0)
    # Line 962
    lw	$v0,-30008($s1)
    # Line 964
    ld	$gp,40($sp)
    # Line 963
    li	$a0,-9
    # Line 964
    ld	$s0,48($sp)
    # Line 957
    beq	$ra,$at,.L0d95c03c
    # Line 962
    ori	$v0,$v0,0x8
    sw	$v0,-30008($s1)
.L0d95c03c:
    # Line 963
    lw	$v1,-30004($s1)
    # Line 964
    ld	$ra,32($sp)
    # Line 963
    and	$v1,$v1,$a0
    sw	$v1,-30004($s1)
    # Line 964
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonim_IndexPointerEXT

# Function: __glkonim_TexCoordPointerEXT
# Declared: Line 967 (Source lines: 972-993)
# Address: 0x0d95c060 - 0x0d95c164 (Size: 260 bytes, Frame: 192)
.globl __glkonim_TexCoordPointerEXT
.ent __glkonim_TexCoordPointerEXT
__glkonim_TexCoordPointerEXT:
    # Line 972
    addiu	$sp,$sp,-64
    sd	$a4,32($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$s1,0($sp)
    sd	$s0,56($sp)
    lui	$v0,0x13
    # Line 973
    lw	$s0,4112($zero)
    # Line 972
    addiu	$v0,$v0,20344
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 976
    # lw $t9, -25736($gp) # &__glim_TexCoordPointerEXT
    # Line 972
    sd	$ra,48($sp)
    # Line 974
    lw	$at,5400($s0)
    # Line 976
    jal	__glim_TexCoordPointerEXT
    sd	$at,16($sp)
    # lw $t9, -27132($gp) # &__glNop
    lw	$t8,5216($s0)
    lui	$s1,0x1
    bne	$t8,$t9,.L0d95c0d8
    addu	$s1,$s0,$s1
    # Line 978
    lw	$ra,-30004($s1)
    ori	$ra,$ra,0x4
    sw	$ra,-30004($s1)
    # Line 993
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95c0d8:
    # Line 986
    ld	$a6,24($sp)
    ld	$a4,8($sp)
    sll	$a5,$a6,0x2
    lui	$a2,0xfffe
    la	$a3,.rodata
    addu	$a5,$a5,$a6
    ori	$a2,$a2,0x7000
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,32($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5204($s0)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$at,16($sp)
    sw	$v0,-30016($s1)
    lw	$ra,5400($s0)
    # Line 991
    lw	$v0,-30008($s1)
    # Line 993
    ld	$gp,40($sp)
    # Line 992
    li	$a0,-5
    # Line 993
    ld	$s0,56($sp)
    # Line 986
    beq	$ra,$at,.L0d95c148
    # Line 991
    ori	$v0,$v0,0x4
    sw	$v0,-30008($s1)
.L0d95c148:
    # Line 992
    lw	$v1,-30004($s1)
    # Line 993
    ld	$ra,48($sp)
    # Line 992
    and	$v1,$v1,$a0
    sw	$v1,-30004($s1)
    # Line 993
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonim_TexCoordPointerEXT

# Function: __glkonim_EdgeFlagPointerEXT
# Declared: Line 995 (Source lines: 998-1018)
# Address: 0x0d95c170 - 0x0d95c23c (Size: 204 bytes, Frame: 48)
.globl __glkonim_EdgeFlagPointerEXT
.ent __glkonim_EdgeFlagPointerEXT
__glkonim_EdgeFlagPointerEXT:
    # Line 998
    addiu	$sp,$sp,-48
    sd	$a2,8($sp)
    sd	$s1,0($sp)
    sd	$s0,40($sp)
    lui	$v0,0x13
    # Line 999
    lw	$s0,4112($zero)
    # Line 998
    addiu	$v0,$v0,20072
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1002
    # lw $t9, -25732($gp) # &__glim_EdgeFlagPointerEXT
    # Line 998
    sd	$ra,24($sp)
    # Line 1000
    lw	$at,5400($s0)
    # Line 1002
    jal	__glim_EdgeFlagPointerEXT
    sd	$at,16($sp)
    # lw $t9, -27132($gp) # &__glNop
    lw	$t8,5236($s0)
    lui	$s1,0x1
    bne	$t8,$t9,.L0d95c1e0
    addu	$s1,$s0,$s1
    # Line 1004
    lw	$ra,-30004($s1)
    ori	$ra,$ra,0x10
    sw	$ra,-30004($s1)
    # Line 1018
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95c1e0:
    # Line 1012
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-20944
    ld	$a0,8($sp)
    li	$a2,1
    bal __glkonim_GetTexGenfv
    lw	$a1,5224($s0)
    ld	$at,16($sp)
    sw	$v0,-30012($s1)
    lw	$ra,5400($s0)
    # Line 1016
    lw	$v0,-30008($s1)
    # Line 1018
    ld	$gp,32($sp)
    # Line 1017
    li	$a0,-17
    # Line 1018
    ld	$s0,40($sp)
    # Line 1012
    beq	$ra,$at,.L0d95c220
    # Line 1016
    ori	$v0,$v0,0x10
    sw	$v0,-30008($s1)
.L0d95c220:
    # Line 1017
    lw	$v1,-30004($s1)
    # Line 1018
    ld	$ra,24($sp)
    # Line 1017
    and	$v1,$v1,$a0
    sw	$v1,-30004($s1)
    # Line 1018
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_EdgeFlagPointerEXT

# Function: __glkonim_VertexPointer
# Declared: Line 1020 (Source lines: 1024-1050)
# Address: 0x0d95c240 - 0x0d95c380 (Size: 320 bytes, Frame: 192)
.globl __glkonim_VertexPointer
.ent __glkonim_VertexPointer
__glkonim_VertexPointer:
    # Line 1024
    addiu	$sp,$sp,-64
    sd	$a3,24($sp)
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    sd	$a0,8($sp)
    # Line 1026
    lw	$at,4120($zero)
    # Line 1024
    sd	$a1,16($sp)
    # Line 1025
    lw	$a1,4112($zero)
    # Line 1026
    li	$v0,1
    # Line 1024
    lui	$v1,0x13
    # Line 1025
    sd	$a1,32($sp)
    # Line 1024
    addiu	$v1,$v1,19864
    # Line 1026
    lw	$a0,5400($a1)
    # Line 1024
    addu	$gp,$t9,$v1
    # Line 1026
    beq	$at,$v0,.L0d95c36c
    sd	$a0,0($sp)
    # Line 1032
    # lw $t9, -25748($gp) # &__glim_VertexPointerEXT
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    move	$a3,$zero
    jal	__glim_VertexPointerEXT
    ld	$a4,24($sp)
    ld	$a0,32($sp)
    la	$a3,__glNop
    lw	$a2,5112($a0)
    lui	$a1,0x1
    ld	$ra,48($sp)
    bne	$a2,$a3,.L0d95c2cc
    addu	$a0,$a0,$a1
    # Line 1034
    lw	$a4,-30004($a0)
    # Line 1050
    ld	$gp,40($sp)
    addiu	$sp,$sp,64
    # Line 1034
    ori	$a4,$a4,0x20
    # Line 1050
    jr	$ra
    # Line 1034
    sw	$a4,-30004($a0)
.L0d95c2cc:
    # Line 1043
    ld	$a6,16($sp)
    sd	$a0,56($sp)
    ld	$a4,8($sp)
    sll	$a5,$a6,0x2
    lui	$a2,0xfffe
    la	$a3,.rodata
    addu	$a5,$a5,$a6
    ori	$a2,$a2,0x7000
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    ld	$a1,32($sp)
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,24($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5100($a1)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$a0,56($sp)
    ld	$at,32($sp)
    sw	$v0,-30032($a0)
    ld	$v0,0($sp)
    lw	$at,5400($at)
    # Line 1050
    ld	$gp,40($sp)
    # Line 1049
    li	$a1,-33
    # Line 1043
    beq	$at,$v0,.L0d95c34c
    ld	$ra,48($sp)
    # Line 1048
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x20
    sw	$v0,-30008($a0)
.L0d95c34c:
    # Line 1049
    lw	$v1,-30004($a0)
    # Line 1050
    addiu	$sp,$sp,64
    # Line 1049
    and	$v1,$v1,$a1
    # Line 1050
    jr	$ra
    # Line 1049
    sw	$v1,-30004($a0)
.L0d95c360:
    # Line 1050
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95c36c:
    # Line 1029
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c360
    ld	$ra,48($sp)
.end __glkonim_VertexPointer

# Function: __glkonim_NormalPointer
# Declared: Line 1052 (Source lines: 1055-1081)
# Address: 0x0d95c380 - 0x0d95c4b0 (Size: 304 bytes, Frame: 192)
.globl __glkonim_NormalPointer
.ent __glkonim_NormalPointer
__glkonim_NormalPointer:
    # Line 1055
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    sd	$a0,8($sp)
    # Line 1057
    lw	$at,4120($zero)
    # Line 1055
    sd	$a2,16($sp)
    # Line 1056
    lw	$a2,4112($zero)
    # Line 1057
    li	$v0,1
    # Line 1055
    lui	$v1,0x13
    # Line 1056
    sd	$a2,24($sp)
    # Line 1055
    addiu	$v1,$v1,19544
    # Line 1057
    lw	$a0,5400($a2)
    # Line 1055
    addu	$gp,$t9,$v1
    # Line 1057
    beq	$at,$v0,.L0d95c49c
    sd	$a0,0($sp)
    # Line 1063
    # lw $t9, -25744($gp) # &__glim_NormalPointerEXT
    ld	$a0,8($sp)
    move	$a2,$zero
    jal	__glim_NormalPointerEXT
    ld	$a3,16($sp)
    ld	$a0,24($sp)
    la	$a3,__glNop
    lw	$a2,5136($a0)
    lui	$a1,0x1
    ld	$ra,40($sp)
    bne	$a2,$a3,.L0d95c404
    addu	$a0,$a0,$a1
    # Line 1065
    lw	$a4,-30004($a0)
    # Line 1081
    ld	$gp,32($sp)
    addiu	$sp,$sp,64
    # Line 1065
    ori	$a4,$a4,0x1
    # Line 1081
    jr	$ra
    # Line 1065
    sw	$a4,-30004($a0)
.L0d95c404:
    # Line 1074
    ld	$a5,8($sp)
    sd	$a0,48($sp)
    lui	$a2,0xfffe
    la	$a3,.rodata
    sll	$a4,$a5,0x2
    ori	$a2,$a2,0x700c
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    ld	$a1,24($sp)
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,16($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5124($a1)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$a0,48($sp)
    ld	$at,24($sp)
    sw	$v0,-30028($a0)
    ld	$v0,0($sp)
    lw	$at,5400($at)
    # Line 1081
    ld	$gp,32($sp)
    # Line 1080
    li	$a1,-2
    # Line 1074
    beq	$at,$v0,.L0d95c47c
    ld	$ra,40($sp)
    # Line 1079
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x1
    sw	$v0,-30008($a0)
.L0d95c47c:
    # Line 1080
    lw	$v1,-30004($a0)
    # Line 1081
    addiu	$sp,$sp,64
    # Line 1080
    and	$v1,$v1,$a1
    # Line 1081
    jr	$ra
    # Line 1080
    sw	$v1,-30004($a0)
.L0d95c490:
    # Line 1081
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95c49c:
    # Line 1060
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c490
    ld	$ra,40($sp)
.end __glkonim_NormalPointer

# Function: __glkonim_ColorPointer
# Declared: Line 1083 (Source lines: 1087-1112)
# Address: 0x0d95c4b0 - 0x0d95c5f0 (Size: 320 bytes, Frame: 192)
.globl __glkonim_ColorPointer
.ent __glkonim_ColorPointer
__glkonim_ColorPointer:
    # Line 1087
    addiu	$sp,$sp,-64
    sd	$a3,24($sp)
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    sd	$a0,8($sp)
    # Line 1089
    lw	$at,4120($zero)
    # Line 1087
    sd	$a1,16($sp)
    # Line 1088
    lw	$a1,4112($zero)
    # Line 1089
    li	$v0,1
    # Line 1087
    lui	$v1,0x13
    # Line 1088
    sd	$a1,32($sp)
    # Line 1087
    addiu	$v1,$v1,19240
    # Line 1089
    lw	$a0,5400($a1)
    # Line 1087
    addu	$gp,$t9,$v1
    # Line 1089
    beq	$at,$v0,.L0d95c5dc
    sd	$a0,0($sp)
    # Line 1095
    # lw $t9, -25740($gp) # &__glim_ColorPointerEXT
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    move	$a3,$zero
    jal	__glim_ColorPointerEXT
    ld	$a4,24($sp)
    ld	$a0,32($sp)
    la	$a3,__glNop
    lw	$a2,5164($a0)
    lui	$a1,0x1
    ld	$ra,48($sp)
    bne	$a2,$a3,.L0d95c53c
    addu	$a0,$a0,$a1
    # Line 1097
    lw	$a4,-30004($a0)
    # Line 1112
    ld	$gp,40($sp)
    addiu	$sp,$sp,64
    # Line 1097
    ori	$a4,$a4,0x2
    # Line 1112
    jr	$ra
    # Line 1097
    sw	$a4,-30004($a0)
.L0d95c53c:
    # Line 1105
    ld	$a6,16($sp)
    sd	$a0,56($sp)
    ld	$a4,8($sp)
    sll	$a5,$a6,0x2
    lui	$a2,0xfffe
    la	$a3,.rodata
    addu	$a5,$a5,$a6
    ori	$a2,$a2,0x7000
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    ld	$a1,32($sp)
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,24($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5152($a1)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$a0,56($sp)
    ld	$at,32($sp)
    sw	$v0,-30024($a0)
    ld	$v0,0($sp)
    lw	$at,5400($at)
    # Line 1112
    ld	$gp,40($sp)
    # Line 1111
    li	$a1,-3
    # Line 1105
    beq	$at,$v0,.L0d95c5bc
    ld	$ra,48($sp)
    # Line 1110
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x2
    sw	$v0,-30008($a0)
.L0d95c5bc:
    # Line 1111
    lw	$v1,-30004($a0)
    # Line 1112
    addiu	$sp,$sp,64
    # Line 1111
    and	$v1,$v1,$a1
    # Line 1112
    jr	$ra
    # Line 1111
    sw	$v1,-30004($a0)
.L0d95c5d0:
    # Line 1112
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95c5dc:
    # Line 1092
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c5d0
    ld	$ra,48($sp)
.end __glkonim_ColorPointer

# Function: __glkonim_IndexPointer
# Declared: Line 1114 (Source lines: 1117-1142)
# Address: 0x0d95c5f0 - 0x0d95c720 (Size: 304 bytes, Frame: 192)
.globl __glkonim_IndexPointer
.ent __glkonim_IndexPointer
__glkonim_IndexPointer:
    # Line 1117
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    sd	$a0,8($sp)
    # Line 1119
    lw	$at,4120($zero)
    # Line 1117
    sd	$a2,16($sp)
    # Line 1118
    lw	$a2,4112($zero)
    # Line 1119
    li	$v0,1
    # Line 1117
    lui	$v1,0x13
    # Line 1118
    sd	$a2,24($sp)
    # Line 1117
    addiu	$v1,$v1,18920
    # Line 1119
    lw	$a0,5400($a2)
    # Line 1117
    addu	$gp,$t9,$v1
    # Line 1119
    beq	$at,$v0,.L0d95c70c
    sd	$a0,0($sp)
    # Line 1125
    # lw $t9, -25728($gp) # &__glim_IndexPointerEXT
    ld	$a0,8($sp)
    move	$a2,$zero
    jal	__glim_IndexPointerEXT
    ld	$a3,16($sp)
    ld	$a0,24($sp)
    la	$a3,__glNop
    lw	$a2,5188($a0)
    lui	$a1,0x1
    ld	$ra,40($sp)
    bne	$a2,$a3,.L0d95c674
    addu	$a0,$a0,$a1
    # Line 1127
    lw	$a4,-30004($a0)
    # Line 1142
    ld	$gp,32($sp)
    addiu	$sp,$sp,64
    # Line 1127
    ori	$a4,$a4,0x8
    # Line 1142
    jr	$ra
    # Line 1127
    sw	$a4,-30004($a0)
.L0d95c674:
    # Line 1135
    ld	$a5,8($sp)
    sd	$a0,48($sp)
    lui	$a2,0xfffe
    la	$a3,.rodata
    sll	$a4,$a5,0x2
    ori	$a2,$a2,0x7004
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    ld	$a1,24($sp)
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,16($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5176($a1)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$a0,48($sp)
    ld	$at,24($sp)
    sw	$v0,-30020($a0)
    ld	$v0,0($sp)
    lw	$at,5400($at)
    # Line 1142
    ld	$gp,32($sp)
    # Line 1141
    li	$a1,-9
    # Line 1135
    beq	$at,$v0,.L0d95c6ec
    ld	$ra,40($sp)
    # Line 1140
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x8
    sw	$v0,-30008($a0)
.L0d95c6ec:
    # Line 1141
    lw	$v1,-30004($a0)
    # Line 1142
    addiu	$sp,$sp,64
    # Line 1141
    and	$v1,$v1,$a1
    # Line 1142
    jr	$ra
    # Line 1141
    sw	$v1,-30004($a0)
.L0d95c700:
    # Line 1142
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95c70c:
    # Line 1122
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c700
    ld	$ra,40($sp)
.end __glkonim_IndexPointer

# Function: __glkonim_TexCoordPointer
# Declared: Line 1145 (Source lines: 1149-1174)
# Address: 0x0d95c720 - 0x0d95c860 (Size: 320 bytes, Frame: 192)
.globl __glkonim_TexCoordPointer
.ent __glkonim_TexCoordPointer
__glkonim_TexCoordPointer:
    # Line 1149
    addiu	$sp,$sp,-64
    sd	$a3,24($sp)
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    sd	$a0,8($sp)
    # Line 1151
    lw	$at,4120($zero)
    # Line 1149
    sd	$a1,16($sp)
    # Line 1150
    lw	$a1,4112($zero)
    # Line 1151
    li	$v0,1
    # Line 1149
    lui	$v1,0x13
    # Line 1150
    sd	$a1,32($sp)
    # Line 1149
    addiu	$v1,$v1,18616
    # Line 1151
    lw	$a0,5400($a1)
    # Line 1149
    addu	$gp,$t9,$v1
    # Line 1151
    beq	$at,$v0,.L0d95c84c
    sd	$a0,0($sp)
    # Line 1157
    # lw $t9, -25736($gp) # &__glim_TexCoordPointerEXT
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    move	$a3,$zero
    jal	__glim_TexCoordPointerEXT
    ld	$a4,24($sp)
    ld	$a0,32($sp)
    la	$a3,__glNop
    lw	$a2,5216($a0)
    lui	$a1,0x1
    ld	$ra,48($sp)
    bne	$a2,$a3,.L0d95c7ac
    addu	$a0,$a0,$a1
    # Line 1159
    lw	$a4,-30004($a0)
    # Line 1174
    ld	$gp,40($sp)
    addiu	$sp,$sp,64
    # Line 1159
    ori	$a4,$a4,0x4
    # Line 1174
    jr	$ra
    # Line 1159
    sw	$a4,-30004($a0)
.L0d95c7ac:
    # Line 1167
    ld	$a6,16($sp)
    sd	$a0,56($sp)
    ld	$a4,8($sp)
    sll	$a5,$a6,0x2
    lui	$a2,0xfffe
    la	$a3,.rodata
    addu	$a5,$a5,$a6
    ori	$a2,$a2,0x7000
    # lw $t9, -32740($gp) # &sub_0d960000
    addu	$a4,$a4,$a5
    ld	$a1,32($sp)
    addiu	$a3,$a3,22352
    sll	$a4,$a4,0x2
    ld	$a0,24($sp)
    addiu	$t9,$t9,-20944
    addu	$a3,$a3,$a4
    lw	$a1,5204($a1)
    addu	$a2,$a2,$a3
    bal __glkonim_GetTexGenfv
    lw	$a2,0($a2)
    ld	$a0,56($sp)
    ld	$at,32($sp)
    sw	$v0,-30016($a0)
    ld	$v0,0($sp)
    lw	$at,5400($at)
    # Line 1174
    ld	$gp,40($sp)
    # Line 1173
    li	$a1,-5
    # Line 1167
    beq	$at,$v0,.L0d95c82c
    ld	$ra,48($sp)
    # Line 1172
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x4
    sw	$v0,-30008($a0)
.L0d95c82c:
    # Line 1173
    lw	$v1,-30004($a0)
    # Line 1174
    addiu	$sp,$sp,64
    # Line 1173
    and	$v1,$v1,$a1
    # Line 1174
    jr	$ra
    # Line 1173
    sw	$v1,-30004($a0)
.L0d95c840:
    # Line 1174
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95c84c:
    # Line 1154
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c840
    ld	$ra,48($sp)
.end __glkonim_TexCoordPointer

# Function: __glkonim_EdgeFlagPointer
# Declared: Line 1176 (Source lines: 1177-1201)
# Address: 0x0d95c860 - 0x0d95c960 (Size: 256 bytes, Frame: 48)
.globl __glkonim_EdgeFlagPointer
.ent __glkonim_EdgeFlagPointer
__glkonim_EdgeFlagPointer:
    # Line 1177
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    # Line 1179
    lw	$at,4120($zero)
    # Line 1177
    sd	$a1,8($sp)
    # Line 1178
    lw	$a1,4112($zero)
    # Line 1179
    li	$v0,1
    # Line 1177
    lui	$v1,0x13
    # Line 1178
    sd	$a1,16($sp)
    # Line 1177
    addiu	$v1,$v1,18296
    # Line 1179
    lw	$a1,5400($a1)
    # Line 1177
    addu	$gp,$t9,$v1
    # Line 1179
    beq	$at,$v0,.L0d95c94c
    sd	$a1,0($sp)
    # Line 1185
    # lw $t9, -25732($gp) # &__glim_EdgeFlagPointerEXT
    move	$a1,$zero
    jal	__glim_EdgeFlagPointerEXT
    ld	$a2,8($sp)
    ld	$a0,16($sp)
    la	$a3,__glNop
    lw	$a2,5236($a0)
    lui	$a1,0x1
    ld	$ra,32($sp)
    bne	$a2,$a3,.L0d95c8dc
    addu	$a0,$a0,$a1
    # Line 1187
    lw	$a4,-30004($a0)
    # Line 1201
    ld	$gp,24($sp)
    addiu	$sp,$sp,48
    # Line 1187
    ori	$a4,$a4,0x10
    # Line 1201
    jr	$ra
    # Line 1187
    sw	$a4,-30004($a0)
.L0d95c8dc:
    # Line 1195
    # lw $t9, -32740($gp) # &sub_0d960000
    sd	$a0,40($sp)
    ld	$a1,16($sp)
    addiu	$t9,$t9,-20944
    ld	$a0,8($sp)
    li	$a2,1
    bal __glkonim_GetTexGenfv
    lw	$a1,5224($a1)
    ld	$a0,40($sp)
    ld	$at,16($sp)
    sw	$v0,-30012($a0)
    ld	$v0,0($sp)
    lw	$at,5400($at)
    # Line 1201
    ld	$gp,24($sp)
    # Line 1200
    li	$a1,-17
    # Line 1195
    beq	$at,$v0,.L0d95c92c
    ld	$ra,32($sp)
    # Line 1199
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x10
    sw	$v0,-30008($a0)
.L0d95c92c:
    # Line 1200
    lw	$v1,-30004($a0)
    # Line 1201
    addiu	$sp,$sp,48
    # Line 1200
    and	$v1,$v1,$a1
    # Line 1201
    jr	$ra
    # Line 1200
    sw	$v1,-30004($a0)
.L0d95c940:
    # Line 1201
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95c94c:
    # Line 1182
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c940
    ld	$ra,32($sp)
.end __glkonim_EdgeFlagPointer

.late_rodata
jtbl_0da80118:
    .word .L0d95b11c
    .word .L0d95b11c
    .word .L0d95b3d4
    .word .L0d95b11c
    .word .L0d95b11c
    .word .L0d95b11c
    .word .L0d95b21c
    .word .L0d95b11c
    .word .L0d95b11c
    .word .L0d95b21c

