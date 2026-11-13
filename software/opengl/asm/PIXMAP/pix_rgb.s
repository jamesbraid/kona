# Source: ../PIXMAP/pix_rgb.c
# Category: PIXMAP
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_rgb.c
# Total Functions: 14

.text

# Function: Store_8
# Declared: Line 29 (Source lines: 30-60)
# Address: 0x0da38430 - 0x0da385ac (Size: 380 bytes, Frame: 192)
.ent Store_8
Store_8:
    # Line 32
    lw	$a5,0($a0)
    # Line 40
    lw	$a7,4($a1)
    lw	$a3,3664($a5)
    lw	$a2,28($a0)
    # Line 30
    addiu	$sp,$sp,-64
    # Line 40
    subu	$a3,$a7,$a3
    sd	$gp,32($sp)
    mult	$a2,$a3
    # Line 30
    sd	$s0,40($sp)
    # Line 48
    lw	$t8,1796($a5)
    # Line 30
    lui	$v1,0x6
    sd	$s8,24($sp)
    addiu	$v1,$v1,-29784
    # Line 40
    lw	$s8,16($a0)
    # Line 30
    move	$s0,$a0
    addu	$gp,$t9,$v1
    # Line 38
    lw	$a4,1792($a5)
    # Line 40
    lw	$a6,0($a1)
    # Line 48
    andi	$t8,$t8,0x800
    # Line 40
    mflo	$v0
    andi	$at,$a4,0x8
    addu	$s8,$s8,$v0
    lw	$v0,3660($a5)
    sd	$ra,48($sp)
    # Line 30
    move	$a2,$a1
    # Line 40
    addu	$s8,$a6,$s8
    # Line 30
    sdc1	$f30,16($sp)
    # Line 40
    beqz	$at,.L0da385a4
    subu	$s8,$s8,$v0
    # Line 43
    lwc1	$f31,_lit_3d000000
    andi	$t2,$a7,0x3
    la	$t1,__glDitherTable
    andi	$t0,$a6,0x3
    sll	$t2,$t2,0x2
    addu	$t0,$t0,$t2
    addu	$t0,$t0,$t1
    lb	$t0,0($t0)
    sll	$t0,$t0,0x1
    addiu	$t0,$t0,1
    mtc1	$t0,$f30
    cvt.s.w	$f30,$f30
    mul.s	$f30,$f30,$f31
.L0da384d8:
    # Line 53
    addiu	$a0,$a2,12
    # Line 48
    andi	$t3,$a4,0x2
    bnez	$t3,.L0da384f0
    ld	$ra,48($sp)
    beqz	$t8,.L0da3859c
    nop
.L0da384f0:
    # Line 51
    lw	$t9,12596($a5)
    move	$a0,$a5
    move	$a1,$s0
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,48($sp)
    addiu	$a0,$sp,0
    # Line 59
    lwc1	$f31,8($a0)
.L0da38510:
    add.s	$f31,$f31,$f30
    lwc1	$f1,0($a0)
    lwc1	$f0,4($a0)
    trunc.l.s	$f31,$f31
    add.s	$f1,$f1,$f30
    add.s	$f0,$f0,$f30
    trunc.l.s	$f1,$f1
    dmfc1	$a0,$f31
    trunc.l.s	$f0,$f0
    # Line 60
    ld	$gp,32($sp)
    # Line 59
    dmfc1	$v0,$f1
    lbu	$t9,0($s8)
    sll	$a0,$a0,0x0
    dmfc1	$a2,$f0
    lw	$a3,116($s0)
    sll	$v0,$v0,0x0
    lw	$v1,112($s0)
    sll	$a2,$a2,0x0
    lw	$a1,120($s0)
    sllv	$a2,$a2,$a3
    lw	$at,152($s0)
    sllv	$v0,$v0,$v1
    lw	$v1,156($s0)
    sllv	$a0,$a0,$a1
    or	$v0,$v0,$a2
    # Line 60
    ldc1	$f30,16($sp)
    # Line 59
    or	$v0,$v0,$a0
    # Line 60
    ld	$s0,40($sp)
    # Line 59
    and	$t9,$t9,$v1
    and	$at,$at,$v0
    or	$t9,$t9,$at
    sb	$t9,0($s8)
    # Line 60
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3859c:
    b	.L0da38510
    # Line 59
    lwc1	$f31,8($a0)
.L0da385a4:
    b	.L0da384d8
    # Line 46
    lwc1	$f30,3540($a5)
.end Store_8

# Function: Store_16
# Declared: Line 63 (Source lines: 64-94)
# Address: 0x0da385b0 - 0x0da38738 (Size: 392 bytes, Frame: 192)
.ent Store_16
Store_16:
    # Line 66
    lw	$a5,0($a0)
    # Line 74
    lw	$a6,4($a1)
    lw	$a7,3664($a5)
    lw	$a4,28($a0)
    # Line 64
    addiu	$sp,$sp,-64
    # Line 74
    subu	$a7,$a6,$a7
    sd	$gp,32($sp)
    mult	$a4,$a7
    # Line 64
    sd	$s0,40($sp)
    # Line 82
    lw	$t8,1796($a5)
    # Line 64
    lui	$a3,0x6
    sd	$s8,24($sp)
    move	$a2,$a1
    addiu	$a3,$a3,-30168
    # Line 74
    lw	$s8,16($a0)
    # Line 64
    move	$s0,$a0
    addu	$gp,$t9,$a3
    # Line 72
    lw	$a4,1792($a5)
    # Line 82
    andi	$t8,$t8,0x800
    # Line 74
    lw	$a7,0($a1)
    mflo	$v1
    lw	$v0,3660($a5)
    andi	$at,$a4,0x8
    addu	$v1,$v1,$v1
    addu	$s8,$s8,$v1
    addu	$v1,$a7,$a7
    sd	$ra,48($sp)
    addu	$v0,$v0,$v0
    addu	$s8,$s8,$v1
    # Line 64
    sdc1	$f30,16($sp)
    # Line 74
    beqz	$at,.L0da38730
    subu	$s8,$s8,$v0
    # Line 77
    lwc1	$f31,_lit_3d000000
    andi	$t2,$a6,0x3
    la	$t1,__glDitherTable
    andi	$t0,$a7,0x3
    sll	$t2,$t2,0x2
    addu	$t0,$t0,$t2
    addu	$t0,$t0,$t1
    lb	$t0,0($t0)
    sll	$t0,$t0,0x1
    addiu	$t0,$t0,1
    mtc1	$t0,$f30
    cvt.s.w	$f30,$f30
    mul.s	$f30,$f30,$f31
.L0da38664:
    # Line 87
    addiu	$a0,$a2,12
    # Line 82
    andi	$t3,$a4,0x2
    bnez	$t3,.L0da3867c
    ld	$ra,48($sp)
    beqz	$t8,.L0da38728
    nop
.L0da3867c:
    # Line 85
    lw	$t9,12596($a5)
    move	$a0,$a5
    move	$a1,$s0
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,48($sp)
    addiu	$a0,$sp,0
    # Line 93
    lwc1	$f31,8($a0)
.L0da3869c:
    add.s	$f31,$f31,$f30
    lwc1	$f1,0($a0)
    lwc1	$f0,4($a0)
    trunc.l.s	$f31,$f31
    add.s	$f1,$f1,$f30
    add.s	$f0,$f0,$f30
    trunc.l.s	$f1,$f1
    dmfc1	$a0,$f31
    trunc.l.s	$f0,$f0
    # Line 94
    ld	$gp,32($sp)
    # Line 93
    dmfc1	$v0,$f1
    lhu	$t9,0($s8)
    sll	$a0,$a0,0x0
    dmfc1	$a2,$f0
    lw	$a3,116($s0)
    sll	$v0,$v0,0x0
    lw	$v1,112($s0)
    sll	$a2,$a2,0x0
    lw	$a1,120($s0)
    sllv	$a2,$a2,$a3
    lw	$at,152($s0)
    sllv	$v0,$v0,$v1
    lw	$v1,156($s0)
    sllv	$a0,$a0,$a1
    or	$v0,$v0,$a2
    # Line 94
    ldc1	$f30,16($sp)
    # Line 93
    or	$v0,$v0,$a0
    # Line 94
    ld	$s0,40($sp)
    # Line 93
    and	$t9,$t9,$v1
    and	$at,$at,$v0
    or	$t9,$t9,$at
    sh	$t9,0($s8)
    # Line 94
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da38728:
    b	.L0da3869c
    # Line 93
    lwc1	$f31,8($a0)
.L0da38730:
    b	.L0da38664
    # Line 80
    lwc1	$f30,3540($a5)
.end Store_16

# Function: Store_32A
# Declared: Line 97 (Source lines: 98-125)
# Address: 0x0da38740 - 0x0da388a8 (Size: 360 bytes, Frame: 192)
.ent Store_32A
Store_32A:
    # Line 98
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    # Line 100
    lw	$s0,0($a0)
    # Line 111
    lw	$a2,4($a1)
    lw	$a3,3664($s0)
    lw	$v1,28($a0)
    sd	$gp,24($sp)
    subu	$a2,$a2,$a3
    # Line 98
    sd	$s8,16($sp)
    # Line 111
    mult	$v1,$a2
    # Line 98
    lui	$v0,0x6
    # Line 111
    lw	$s8,16($a0)
    # Line 98
    addiu	$v0,$v0,-30568
    # Line 112
    lw	$a4,1796($s0)
    # Line 98
    addu	$gp,$t9,$v0
    # Line 111
    lw	$v0,3660($s0)
    # Line 98
    sd	$s1,32($sp)
    move	$s1,$a0
    # Line 112
    andi	$a4,$a4,0x800
    # Line 111
    sll	$v0,$v0,0x2
    # Line 112
    lw	$at,1792($s0)
    # Line 98
    move	$a2,$a1
    # Line 111
    lw	$v1,0($a1)
    mflo	$a0
    # Line 112
    andi	$at,$at,0x2
    # Line 111
    sll	$a0,$a0,0x2
    sll	$v1,$v1,0x2
    addu	$s8,$s8,$a0
    # Line 117
    addiu	$a0,$a1,12
    # Line 111
    addu	$s8,$s8,$v1
    sd	$ra,48($sp)
    # Line 112
    bnez	$at,.L0da387d0
    # Line 111
    subu	$s8,$s8,$v0
    move	$ra,$ra
    # Line 112
    beqz	$a4,.L0da388a0
    nop
.L0da387d0:
    # Line 115
    lw	$t9,12596($s0)
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,48($sp)
    addiu	$a0,$sp,0
    # Line 124
    lwc1	$f4,0($a0)
.L0da387f0:
    lwc1	$f2,3540($s0)
    lwc1	$f0,12($a0)
    add.s	$f4,$f4,$f2
    add.s	$f0,$f0,$f2
    lwc1	$f3,4($a0)
    trunc.l.s	$f4,$f4
    lwc1	$f1,8($a0)
    trunc.l.s	$f0,$f0
    add.s	$f3,$f3,$f2
    add.s	$f1,$f1,$f2
    dmfc1	$t2,$f0
    trunc.l.s	$f3,$f3
    dmfc1	$a7,$f4
    sll	$t2,$t2,0x0
    trunc.l.s	$f1,$f1
    dmfc1	$t3,$f3
    lw	$s0,116($s1)
    sll	$a7,$a7,0x0
    # Line 125
    ld	$gp,24($sp)
    # Line 124
    dmfc1	$t1,$f1
    sll	$t3,$t3,0x0
    sllv	$t3,$t3,$s0
    lw	$s0,120($s1)
    lw	$t0,112($s1)
    sll	$t1,$t1,0x0
    sllv	$t1,$t1,$s0
    lw	$s0,124($s1)
    lw	$a5,0($s8)
    sllv	$a7,$a7,$t0
    lw	$a6,152($s1)
    sllv	$t2,$t2,$s0
    lw	$t0,156($s1)
    or	$a7,$a7,$t3
    or	$t1,$t1,$t2
    # Line 125
    ld	$s1,32($sp)
    # Line 124
    or	$a7,$a7,$t1
    and	$a5,$a5,$t0
    # Line 125
    ld	$s0,40($sp)
    # Line 124
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    sw	$a5,0($s8)
    # Line 125
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da388a0:
    b	.L0da387f0
    # Line 124
    lwc1	$f4,0($a0)
.end Store_32A

# Function: Store_32
# Declared: Line 128 (Source lines: 129-155)
# Address: 0x0da388b0 - 0x0da389f8 (Size: 328 bytes, Frame: 192)
.ent Store_32
Store_32:
    # Line 129
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    # Line 131
    lw	$s0,0($a0)
    # Line 142
    lw	$a2,4($a1)
    lw	$a3,3664($s0)
    lw	$v1,28($a0)
    sd	$gp,24($sp)
    subu	$a2,$a2,$a3
    # Line 129
    sd	$s8,16($sp)
    # Line 142
    mult	$v1,$a2
    # Line 129
    lui	$v0,0x6
    # Line 142
    lw	$s8,16($a0)
    # Line 129
    addiu	$v0,$v0,-30936
    # Line 143
    lw	$a4,1796($s0)
    # Line 129
    addu	$gp,$t9,$v0
    # Line 142
    lw	$v0,3660($s0)
    # Line 129
    sd	$s1,32($sp)
    move	$s1,$a0
    # Line 143
    andi	$a4,$a4,0x800
    # Line 142
    sll	$v0,$v0,0x2
    # Line 143
    lw	$at,1792($s0)
    # Line 129
    move	$a2,$a1
    # Line 142
    lw	$v1,0($a1)
    mflo	$a0
    # Line 143
    andi	$at,$at,0x2
    # Line 142
    sll	$a0,$a0,0x2
    sll	$v1,$v1,0x2
    addu	$s8,$s8,$a0
    # Line 148
    addiu	$a0,$a1,12
    # Line 142
    addu	$s8,$s8,$v1
    sd	$ra,48($sp)
    # Line 143
    bnez	$at,.L0da38940
    # Line 142
    subu	$s8,$s8,$v0
    move	$ra,$ra
    # Line 143
    beqz	$a4,.L0da389f0
    nop
.L0da38940:
    # Line 146
    lw	$t9,12596($s0)
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,48($sp)
    addiu	$a0,$sp,0
    # Line 154
    lwc1	$f0,8($a0)
.L0da38960:
    lwc1	$f2,3540($s0)
    add.s	$f0,$f0,$f2
    lwc1	$f3,0($a0)
    lwc1	$f1,4($a0)
    trunc.l.s	$f0,$f0
    add.s	$f3,$f3,$f2
    add.s	$f1,$f1,$f2
    trunc.l.s	$f3,$f3
    dmfc1	$t1,$f0
    trunc.l.s	$f1,$f1
    # Line 155
    ld	$gp,24($sp)
    # Line 154
    dmfc1	$a7,$f3
    lw	$a5,0($s8)
    sll	$t1,$t1,0x0
    dmfc1	$t3,$f1
    lw	$s0,116($s1)
    sll	$a7,$a7,0x0
    lw	$t0,112($s1)
    sll	$t3,$t3,0x0
    lw	$t2,120($s1)
    sllv	$t3,$t3,$s0
    lw	$a6,152($s1)
    sllv	$a7,$a7,$t0
    lw	$t0,156($s1)
    sllv	$t1,$t1,$t2
    or	$a7,$a7,$t3
    # Line 155
    ld	$s0,40($sp)
    # Line 154
    or	$a7,$a7,$t1
    # Line 155
    ld	$s1,32($sp)
    # Line 154
    and	$a5,$a5,$t0
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    sw	$a5,0($s8)
    # Line 155
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da389f0:
    b	.L0da38960
    # Line 154
    lwc1	$f0,8($a0)
.end Store_32

# Function: Fetch_8
# Declared: Line 157 (Source lines: 161-170)
# Address: 0x0da38a00 - 0x0da38aa8 (Size: 168 bytes, Frame: 0)
.ent Fetch_8
Fetch_8:
    # Line 161
    lw	$v1,0($a0)
    # Line 165
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$at,16($a0)
    mflo	$v0
    addu	$at,$at,$v0
    lw	$v0,3660($v1)
    addu	$at,$a1,$at
    # Line 166
    lw	$a2,3272($v1)
    # Line 165
    subu	$at,$at,$v0
    lbu	$at,0($at)
    # Line 166
    lw	$a4,112($a0)
    and	$a2,$at,$a2
    srlv	$a2,$a2,$a4
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 167
    lw	$a1,3276($v1)
    lw	$a2,116($a0)
    and	$a1,$at,$a1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 168
    lw	$v1,3280($v1)
    lw	$v0,120($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 169
    lwc1	$f0,128($a0)
    # Line 170
    jr	$ra
    # Line 169
    swc1	$f0,12($a3)
.end Fetch_8

# Function: Fetch_16
# Declared: Line 172 (Source lines: 176-185)
# Address: 0x0da38ab0 - 0x0da38b64 (Size: 180 bytes, Frame: 0)
.ent Fetch_16
Fetch_16:
    # Line 176
    lw	$v1,0($a0)
    # Line 180
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$at,16($a0)
    mflo	$a2
    lw	$v0,3660($v1)
    addu	$a2,$a2,$a2
    addu	$a1,$a1,$a1
    addu	$at,$at,$a2
    addu	$v0,$v0,$v0
    addu	$at,$at,$a1
    # Line 181
    lw	$a2,3272($v1)
    # Line 180
    subu	$at,$at,$v0
    lhu	$at,0($at)
    # Line 181
    lw	$a4,112($a0)
    and	$a2,$at,$a2
    srlv	$a2,$a2,$a4
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 182
    lw	$a1,3276($v1)
    lw	$a2,116($a0)
    and	$a1,$at,$a1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 183
    lw	$v1,3280($v1)
    lw	$v0,120($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 184
    lwc1	$f0,128($a0)
    # Line 185
    jr	$ra
    # Line 184
    swc1	$f0,12($a3)
.end Fetch_16

# Function: Fetch_32A
# Declared: Line 188 (Source lines: 192-201)
# Address: 0x0da38b70 - 0x0da38c40 (Size: 208 bytes, Frame: 0)
.ent Fetch_32A
Fetch_32A:
    # Line 192
    lw	$at,0($a0)
    # Line 196
    lw	$a6,3664($at)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    lw	$v1,16($a0)
    mflo	$a4
    lw	$a2,3660($at)
    sll	$a4,$a4,0x2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a4
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    # Line 197
    lw	$a2,3272($at)
    # Line 196
    subu	$v1,$v1,$a1
    lw	$v1,0($v1)
    # Line 197
    lw	$a4,112($a0)
    and	$a2,$a2,$v1
    srlv	$a2,$a2,$a4
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 198
    lw	$a1,3276($at)
    lw	$a2,116($a0)
    and	$a1,$a1,$v1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 199
    lw	$v0,3280($at)
    lw	$a1,120($a0)
    and	$v0,$v0,$v1
    srlv	$v0,$v0,$a1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 200
    lw	$at,3284($at)
    lw	$v0,124($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    cvt.s.l	$f0,$f0
    # Line 201
    jr	$ra
    # Line 200
    swc1	$f0,12($a3)
.end Fetch_32A

# Function: Fetch_32
# Declared: Line 204 (Source lines: 208-217)
# Address: 0x0da38c40 - 0x0da38cf4 (Size: 180 bytes, Frame: 0)
.ent Fetch_32
Fetch_32:
    # Line 208
    lw	$at,0($a0)
    # Line 212
    lw	$a6,3664($at)
    lw	$a5,28($a0)
    subu	$a6,$a2,$a6
    mult	$a5,$a6
    lw	$v1,16($a0)
    mflo	$a4
    lw	$a2,3660($at)
    sll	$a4,$a4,0x2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a4
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    subu	$v1,$v1,$a1
    # Line 213
    lw	$a1,3272($at)
    # Line 212
    lw	$v1,0($v1)
    # Line 213
    lw	$a2,112($a0)
    and	$a1,$a1,$v1
    srlv	$a1,$a1,$a2
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,0($a3)
    # Line 214
    lw	$v0,3276($at)
    lw	$a1,116($a0)
    and	$v0,$v0,$v1
    srlv	$v0,$v0,$a1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,4($a3)
    # Line 215
    lw	$at,3280($at)
    lw	$v0,120($a0)
    and	$at,$at,$v1
    srlv	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    cvt.s.l	$f1,$f1
    swc1	$f1,8($a3)
    # Line 216
    lwc1	$f0,128($a0)
    # Line 217
    jr	$ra
    # Line 216
    swc1	$f0,12($a3)
.end Fetch_32

# Function: Clear
# Declared: Line 219 (Source lines: 220-250)
# Address: 0x0da38d00 - 0x0da38e34 (Size: 308 bytes, Frame: 160)
.ent Clear
Clear:
    # Line 220
    addiu	$sp,$sp,-160
    sd	$s3,96($sp)
    sd	$s4,88($sp)
    sd	$s5,72($sp)
    # Line 221
    lw	$a2,0($a0)
    # Line 220
    sd	$s1,80($sp)
    # Line 230
    lw	$s1,29768($a2)
    # Line 229
    lw	$s5,29764($a2)
    # Line 228
    lw	$s4,29760($a2)
    # Line 235
    lwc1	$f7,30808($a2)
    lwc1	$f6,1860($a2)
    # Line 225
    lw	$a3,1792($a2)
    # Line 233
    li	$v1,-3
    # Line 227
    lw	$s3,29756($a2)
    # Line 233
    and	$v1,$a3,$v1
    sw	$v1,1792($a2)
    # Line 235
    mul.s	$f6,$f6,$f7
    swc1	$f6,12($sp)
    # Line 236
    lwc1	$f5,30812($a2)
    lwc1	$f4,1864($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,16($sp)
    # Line 237
    lwc1	$f3,30816($a2)
    lwc1	$f2,1868($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,20($sp)
    # Line 238
    lwc1	$f1,30848($a2)
    lwc1	$f0,1872($a2)
    # Line 220
    sd	$s2,104($sp)
    lui	$v0,0x6
    # Line 240
    slt	$at,$s3,$s5
    # Line 220
    move	$s2,$a0
    sd	$gp,64($sp)
    addiu	$v0,$v0,-32040
    # Line 238
    mul.s	$f0,$f0,$f1
    # Line 220
    addu	$gp,$t9,$v0
    # Line 240
    beqz	$at,.L0da38e10
    # Line 238
    swc1	$f0,24($sp)
    sd	$a3,144($sp)
    sd	$a2,136($sp)
    sd	$s0,128($sp)
    sd	$ra,120($sp)
    # Line 240
    subu	$a0,$s1,$s4
    sd	$a0,56($sp)
    sd	$s6,112($sp)
    b	.L0da38de8
    slt	$s6,$s4,$s1
    # Line 243
    sw	$s0,4($sp)
.L0da38dc0:
    # Line 245
    lw	$t9,164($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s2
    # Line 242
    addiu	$s0,$s0,1
    bnel	$s1,$s0,.L0da38dc0
    # Line 243
    sw	$s0,4($sp)
.L0da38ddc:
    # Line 240
    addiu	$s3,$s3,1
    beq	$s5,$s3,.L0da38dfc
    nop
.L0da38de8:
    # Line 241
    sw	$s3,0($sp)
    # Line 242
    beqz	$s6,.L0da38ddc
    move	$s0,$s4
    b	.L0da38dc0
    # Line 243
    sw	$s0,4($sp)
.L0da38dfc:
    ld	$s6,112($sp)
    ld	$ra,120($sp)
    ld	$s0,128($sp)
    ld	$a2,136($sp)
    ld	$a3,144($sp)
.L0da38e10:
    # Line 249
    sw	$a3,1792($a2)
    # Line 250
    ld	$gp,64($sp)
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end Clear

# Function: StoreSpan
# Declared: Line 252 (Source lines: 253-276)
# Address: 0x0da38e40 - 0x0da38ef4 (Size: 180 bytes, Frame: 240)
.ent StoreSpan
StoreSpan:
    # Line 253
    addiu	$sp,$sp,-112
    sd	$s2,88($sp)
    # Line 261
    lw	$a2,30304($a0)
    # Line 263
    lw	$v1,30256($a0)
    sw	$v1,4($sp)
    # Line 253
    sd	$s0,72($sp)
    # Line 264
    lw	$s0,30252($a0)
    # Line 267
    lw	$s2,30536($a0)
    # Line 253
    sd	$s3,80($sp)
    # Line 265
    addu	$s3,$s0,$a2
    # Line 253
    sd	$s1,64($sp)
    lui	$v0,0x6
    # Line 269
    slt	$at,$s0,$s3
    # Line 266
    lw	$s1,30520($a0)
    # Line 253
    addiu	$v0,$v0,-32360
    sd	$gp,56($sp)
    # Line 269
    beqz	$at,.L0da38ed4
    # Line 253
    addu	$gp,$t9,$v0
    sd	$ra,96($sp)
    nop
.L0da38e90:
    # Line 270
    sw	$s0,0($sp)
    # Line 271
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s1)
    swc1	$f1,20($sp)
    lwc1	$f0,12($s1)
    swc1	$f0,24($sp)
    # Line 273
    lw	$t9,164($s2)
    addiu	$a1,$sp,0
    move	$a0,$s2
    jalr	$t9
    # Line 271
    addiu	$s1,$s1,16
    # Line 269
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0da38e90
    ld	$ra,96($sp)
.L0da38ed4:
    # Line 276
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    move	$v0,$zero
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 279 (Source lines: 280-323)
# Address: 0x0da38f00 - 0x0da39040 (Size: 320 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 292
    lw	$v0,30256($a0)
    # Line 280
    addiu	$sp,$sp,-160
    sd	$s8,64($sp)
    # Line 290
    lw	$s8,30528($a0)
    # Line 280
    sd	$s7,72($sp)
    # Line 289
    lw	$s7,30304($a0)
    # Line 292
    sw	$v0,4($sp)
    # Line 280
    sd	$s5,80($sp)
    # Line 295
    lw	$s5,30536($a0)
    # Line 280
    sd	$s2,104($sp)
    # Line 294
    lw	$s2,30520($a0)
    # Line 280
    sd	$s1,88($sp)
    lui	$at,0x6
    # Line 293
    lw	$s1,30252($a0)
    # Line 280
    addiu	$at,$at,-32552
    sd	$gp,96($sp)
    # Line 295
    beqz	$s7,.L0da3901c
    # Line 280
    addu	$gp,$t9,$at
    sd	$s0,152($sp)
    sd	$s4,144($sp)
    sd	$ra,136($sp)
    sd	$s3,120($sp)
    sd	$s6,128($sp)
    # Line 295
    li	$s6,-1
.L0da38f60:
    # Line 306
    lui	$s0,0x8000
    # Line 299
    move	$a2,$s7
    li	$v1,32
    li	$a0,32
    slt	$v1,$v1,$s7
    movn	$a2,$a0,$v1
    # Line 306
    addiu	$a0,$a2,-1
    # Line 304
    addiu	$s8,$s8,4
    # Line 302
    subu	$s7,$s7,$a2
    # Line 304
    lw	$s3,-4($s8)
    # Line 306
    bltz	$a0,.L0da39004
    move	$s4,$a0
    sd	$s1,112($sp)
    sd	$a0,56($sp)
    and	$a2,$s3,$s0
    nop
.L0da38fa0:
    beqz	$a2,.L0da38fdc
    nop
    # Line 308
    sw	$s1,0($sp)
    # Line 309
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s2)
    swc1	$f1,20($sp)
    lwc1	$f0,12($s2)
    swc1	$f0,24($sp)
    # Line 311
    lw	$t9,164($s5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s5
.L0da38fdc:
    # Line 314
    addiu	$s2,$s2,16
    # Line 306
    addiu	$s4,$s4,-1
    # Line 313
    addiu	$s1,$s1,1
    # Line 316
    srl	$s0,$s0,0x1
    # Line 306
    bne	$s4,$s6,.L0da38fa0
    and	$a2,$s3,$s0
    ld	$t8,56($sp)
    ld	$s1,112($sp)
    addu	$s1,$s1,$t8
    addiu	$s1,$s1,1
.L0da39004:
    bnez	$s7,.L0da38f60
    ld	$s3,120($sp)
    ld	$s6,128($sp)
    ld	$ra,136($sp)
    ld	$s4,144($sp)
    ld	$s0,152($sp)
.L0da3901c:
    # Line 323
    ld	$gp,96($sp)
    ld	$s1,88($sp)
    ld	$s2,104($sp)
    ld	$s5,80($sp)
    move	$v0,$zero
    ld	$s7,72($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end StoreStippledSpan

# Function: Pick
# Declared: Line 326 (Source lines: 327-368)
# Address: 0x0da39040 - 0x0da3912c (Size: 236 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 330
    lw	$a7,3272($a0)
    lbu	$v1,1884($a0)
    lw	$t2,3276($a0)
    # Line 334
    move	$v0,$a7
    lbu	$t8,1885($a0)
    movz	$v0,$zero,$v1
    # Line 330
    lw	$a6,3280($a0)
    # Line 337
    or	$t3,$t2,$v0
    lbu	$t0,1886($a0)
    movz	$t3,$v0,$t8
    # Line 330
    lw	$v1,3284($a0)
    # Line 340
    or	$t1,$a6,$t3
    movz	$t1,$t3,$t0
    lbu	$t0,1887($a0)
    # Line 330
    or	$a6,$v1,$a6
    # Line 343
    or	$v1,$v1,$t1
    # Line 330
    or	$a7,$a7,$t2
    movz	$v1,$t1,$t0
    or	$a6,$a6,$a7
    # Line 345
    sw	$v1,152($a1)
    # Line 346
    nor	$v1,$v1,$zero
    and	$v1,$a6,$v1
    sw	$v1,156($a1)
    lw	$v1,1888($a0)
    # Line 327
    lui	$v0,0x5
    addiu	$v0,$v0,32664
    # Line 346
    beqz	$v1,.L0da390f4
    # Line 327
    addu	$at,$t9,$v0
.L0da390b0:
    # Line 353
    li	$a5,4
    lw	$a4,24($a1)
    li	$a2,1
    beq	$a4,$a2,.L0da39100
    li	$a3,2
    beq	$a4,$a3,.L0da39110
    # Line 358
    la	$t1,sub_0da40000
    # Line 353
    bne	$a4,$a5,.L0da390ec
    nop
    # Line 361
    lw	$a6,3284($a0)
    # Line 362
    la	$a7,sub_0da40000
    # Line 361
    beqz	$a6,.L0da3911c
    # Line 362
    addiu	$a7,$a7,-30912
    # Line 368
    jr	$ra
    # Line 362
    sw	$a7,164($a1)
.L0da390ec:
    # Line 368
    jr	$ra
    nop
.L0da390f4:
    # Line 350
    sw	$a6,156($a1)
    b	.L0da390b0
    # Line 349
    sw	$zero,152($a1)
.L0da39100:
    # Line 355
    la	$t0,sub_0da40000
    addiu	$t0,$t0,-31696
    # Line 368
    jr	$ra
    # Line 355
    sw	$t0,164($a1)
.L0da39110:
    # Line 358
    addiu	$t1,$t1,-31312
    # Line 368
    jr	$ra
    # Line 358
    sw	$t1,164($a1)
.L0da3911c:
    # Line 364
    la	$t2,sub_0da40000
    addiu	$t2,$t2,-30544
    # Line 368
    jr	$ra
    # Line 364
    sw	$t2,164($a1)
.end Pick

# Function: Resize
# Declared: Line 370 (Source lines: 371-384)
# Address: 0x0da39130 - 0x0da391cc (Size: 156 bytes, Frame: 48)
.ent Resize
Resize:
    # Line 374
    lw	$at,24($a0)
    multu	$a1,$at
    mflo	$a3
    li	$a4,-4
    addiu	$a3,$a3,3
    and	$a3,$a3,$a4
    divu	$zero,$a3,$at
    # Line 371
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    sd	$s0,24($sp)
    move	$s0,$a2
    lui	$v1,0x5
    # Line 374
    lw	$v0,16($a0)
    # Line 371
    move	$s8,$a1
    sd	$s1,16($sp)
    addiu	$v1,$v1,32424
    move	$s1,$a0
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    sd	$s2,32($sp)
    # Line 374
    mflo	$s2
    beqz	$v0,.L0da391b4
    teq	$at,$zero,0x7
.L0da3918c:
    # Line 384
    ld	$gp,8($sp)
    # Line 382
    sw	$s0,8($s1)
    # Line 384
    ld	$s0,24($sp)
    # Line 383
    sw	$s2,28($s1)
    # Line 381
    sw	$s8,4($s1)
    # Line 384
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da391b4:
    # Line 378
    # lw $t9, -28872($gp) # &__glResizeBuffer
    sd	$ra,40($sp)
    jal	__glResizeBuffer
    move	$a1,$s2
    b	.L0da3918c
    ld	$ra,40($sp)
.end Resize

# Function: __glPixInitRGB
# Declared: Line 387 (Source lines: 388-460)
# Address: 0x0da391d0 - 0x0da394b4 (Size: 740 bytes, Frame: 32)
.globl __glPixInitRGB
.ent __glPixInitRGB
__glPixInitRGB:
    # Line 388
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,32264
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 394
    # lw $t9, -28884($gp) # &__glInitBuffer
    # Line 388
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    # Line 394
    nop
    # Line 388
    sd	$ra,8($sp)
    # Line 394
    jal	__glInitBuffer
    # Line 388
    move	$s0,$a0
    # Line 398
    la	$a4,__glReadSpan
    # Line 399
    la	$a3,__glReturnSpan
    # Line 396
    la	$a0,__glFetchSpan
    # Line 404
    sw	$a0,204($s0)
    # Line 403
    sw	$a0,200($s0)
    # Line 399
    sw	$a3,180($s0)
    # Line 398
    sw	$a4,176($s0)
    # Line 396
    la	$a5,sub_0da40000
    # Line 401
    la	$a2,sub_0da40000
    # Line 402
    la	$a1,sub_0da40000
    # Line 406
    la	$v0,sub_0da40000
    # Line 405
    la	$v1,sub_0da40000
    # Line 406
    addiu	$v0,$v0,-28928
    sw	$v0,188($s0)
    # Line 405
    addiu	$v1,$v1,-29120
    sw	$v1,184($s0)
    # Line 402
    addiu	$a1,$a1,-28608
    sw	$a1,160($s0)
    # Line 401
    addiu	$a2,$a2,-29440
    sw	$a2,216($s0)
    # Line 396
    addiu	$a5,$a5,-28368
    sw	$a5,56($s0)
    # Line 409
    lw	$a4,3272($s1)
    # Line 411
    move	$a2,$zero
    # Line 409
    beqz	$a4,.L0da39288
    move	$a1,$a4
    b	.L0da39280
    move	$a2,$zero
.L0da39274:
    # Line 411
    srl	$a1,$a1,0x1
    beqz	$a1,.L0da39288
    addiu	$a2,$a2,1
.L0da39280:
    andi	$a6,$a1,0x1
    beqz	$a6,.L0da39274
.L0da39288:
    # Line 413
    mtc1	$a1,$f0
    # Line 412
    sw	$a2,112($s0)
    # Line 413
    cvt.s.w	$f0,$f0
    sw	$a1,72($s0)
    sw	$a1,100($s0)
    swc1	$f0,88($s0)
    # Line 415
    lw	$a1,3276($s1)
    # Line 417
    move	$a2,$zero
    # Line 416
    beqz	$a1,.L0da392cc
    or	$a3,$a4,$a1
    b	.L0da392c4
    move	$a2,$zero
.L0da392b8:
    # Line 417
    srl	$a1,$a1,0x1
    beqz	$a1,.L0da392cc
    addiu	$a2,$a2,1
.L0da392c4:
    andi	$a7,$a1,0x1
    beqz	$a7,.L0da392b8
.L0da392cc:
    # Line 419
    mtc1	$a1,$f1
    # Line 418
    sw	$a2,116($s0)
    # Line 419
    cvt.s.w	$f1,$f1
    sw	$a1,76($s0)
    sw	$a1,104($s0)
    swc1	$f1,92($s0)
    # Line 421
    lw	$a1,3280($s1)
    # Line 423
    move	$a2,$zero
    # Line 422
    beqz	$a1,.L0da39310
    or	$a3,$a1,$a3
    b	.L0da39308
    move	$a2,$zero
.L0da392fc:
    # Line 423
    srl	$a1,$a1,0x1
    beqz	$a1,.L0da39310
    addiu	$a2,$a2,1
.L0da39308:
    andi	$t0,$a1,0x1
    beqz	$t0,.L0da392fc
.L0da39310:
    # Line 425
    mtc1	$a1,$f2
    # Line 424
    sw	$a2,120($s0)
    # Line 425
    cvt.s.w	$f2,$f2
    sw	$a1,80($s0)
    sw	$a1,108($s0)
    swc1	$f2,96($s0)
    # Line 427
    lw	$a1,3284($s1)
    # Line 429
    move	$a2,$zero
    # Line 428
    beqz	$a1,.L0da39354
    or	$a3,$a1,$a3
    b	.L0da3934c
    move	$a2,$zero
.L0da39340:
    # Line 429
    srl	$a1,$a1,0x1
    beqz	$a1,.L0da39354
    addiu	$a2,$a2,1
.L0da3934c:
    andi	$t1,$a1,0x1
    beqz	$t1,.L0da39340
.L0da39354:
    # Line 438
    li	$a6,32
    li	$a5,1
    # Line 430
    beqz	$a1,.L0da39478
    sw	$a2,124($s0)
    # Line 432
    mtc1	$a1,$f3
    cvt.s.w	$f3,$f3
    sw	$a1,132($s0)
    swc1	$f3,128($s0)
.L0da39374:
    # Line 438
    move	$a2,$zero
    move	$a1,$zero
    sw	$a3,152($s0)
.L0da39380:
    # Line 441
    addiu	$t2,$a2,3
    # Line 438
    sllv	$t2,$a5,$t2
    # Line 441
    addiu	$t8,$a2,2
    # Line 438
    sllv	$t8,$a5,$t8
    # Line 442
    addiu	$at,$a1,1
    # Line 441
    addiu	$ra,$a2,1
    # Line 438
    sllv	$v0,$a5,$a2
    sllv	$ra,$a5,$ra
    and	$v0,$a3,$v0
    movz	$at,$a1,$v0
    and	$ra,$a3,$ra
    # Line 442
    addiu	$t9,$at,1
    # Line 441
    addiu	$a2,$a2,4
    movz	$t9,$at,$ra
    # Line 438
    and	$t8,$a3,$t8
    # Line 442
    addiu	$t3,$t9,1
    # Line 438
    and	$t2,$a3,$t2
    movz	$t3,$t9,$t8
    # Line 442
    addiu	$a1,$t3,1
    # Line 441
    bne	$a2,$a6,.L0da39380
    movz	$a1,$t3,$t2
    slti	$t3,$a1,17
    # Line 450
    slti	$at,$a1,9
    # Line 453
    la	$v0,sub_0da40000
    # Line 441
    bnez	$t3,.L0da3941c
    # Line 446
    li	$t9,4
    sw	$t9,24($s0)
    lw	$t8,3284($s1)
    # Line 448
    la	$ra,sub_0da40000
    # Line 460
    ld	$s1,24($sp)
    # Line 446
    beqz	$t8,.L0da3948c
    # Line 448
    addiu	$ra,$ra,-29840
    sw	$ra,168($s0)
    sw	$ra,172($s0)
    # Line 460
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3941c:
    ld	$s1,24($sp)
    ld	$ra,8($sp)
    # Line 450
    bnez	$at,.L0da3944c
    # Line 453
    li	$v1,2
    # Line 460
    ld	$gp,0($sp)
    # Line 453
    sw	$v1,24($s0)
    addiu	$v0,$v0,-30032
    # Line 454
    sw	$v0,168($s0)
    sw	$v0,172($s0)
    # Line 460
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3944c:
    # Line 454
    la	$a0,sub_0da40000
    # Line 460
    ld	$gp,0($sp)
    ld	$s1,24($sp)
    # Line 456
    sw	$a5,24($s0)
    # Line 460
    ld	$ra,8($sp)
    # Line 454
    addiu	$a0,$a0,-30208
    # Line 457
    sw	$a0,168($s0)
    sw	$a0,172($s0)
    # Line 460
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da39478:
    # Line 435
    lwc1	$f4,_lit_437f0000
    li	$a1,255
    sw	$a1,132($s0)
    b	.L0da39374
    swc1	$f4,128($s0)
.L0da3948c:
    # Line 448
    la	$a2,sub_0da40000
    # Line 460
    ld	$gp,0($sp)
    ld	$s1,24($sp)
    ld	$ra,8($sp)
    # Line 448
    addiu	$a2,$a2,-29632
    # Line 450
    sw	$a2,168($s0)
    sw	$a2,172($s0)
    # Line 460
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPixInitRGB

.late_rodata
jtbl_0da811a4:
    .word .L0da395b4
    .word .L0da39660
    .word .L0da39658
    .word .L0da39590
    .word .L0da3964c
    .word .L0da39644
    .word .L0da3958c
    .word .L0da3963c
    .word .L0da3961c
    .word .L0da39610
    .word .L0da395f0
    .word .L0da395e4
    .word .L0da395dc
    .word .L0da395d0
    .word .L0da395c4
    .word .L0da395bc
jtbl_0da811e4:
    .word .L0da39770
    .word .L0da3981c
    .word .L0da39814
    .word .L0da3974c
    .word .L0da39808
    .word .L0da39800
    .word .L0da39748
    .word .L0da397f8
    .word .L0da397d8
    .word .L0da397cc
    .word .L0da397ac
    .word .L0da397a0
    .word .L0da39798
    .word .L0da3978c
    .word .L0da39780
    .word .L0da39778
jtbl_0da81224:
    .word .L0da39934
    .word .L0da399e0
    .word .L0da399d8
    .word .L0da39910
    .word .L0da399cc
    .word .L0da399c4
    .word .L0da3990c
    .word .L0da399bc
    .word .L0da3999c
    .word .L0da39990
    .word .L0da39970
    .word .L0da39964
    .word .L0da3995c
    .word .L0da39950
    .word .L0da39944
    .word .L0da3993c

.rdata
_lit_3d000000:
    .word 0x3d000000
_lit_437f0000:
    .word 0x437f0000

