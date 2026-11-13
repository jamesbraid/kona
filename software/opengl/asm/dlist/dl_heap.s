# Source: ../dlist/dl_heap.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_heap.c
# Total Functions: 10

.text

# Function: __glDlistHeapInit
# Declared: Line 44 (Source lines: 45-57)
# Address: 0x0d98df60 - 0x0d98dfbc (Size: 92 bytes, Frame: 16)
.globl __glDlistHeapInit
.ent __glDlistHeapInit
__glDlistHeapInit:
    # Line 45
    sw	$zero,8($a0)
    sw	$zero,4($a0)
    sw	$zero,0($a0)
    addiu	$sp,$sp,-16
    lui	$v0,0x10
    sd	$ra,0($sp)
    addiu	$v0,$v0,12408
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 53
    # lw $t9, -30988($gp) # &__glDlistHeapInsert
    # Line 45
    la	$at,sub_0da90000
    # Line 52
    lwc1	$f0,_lit_bf800000
    # Line 45
    sd	$zero,-8240($at)
    # Line 52
    swc1	$f0,-8240($at)
    # Line 45
    addiu	$at,$at,-8240
    # Line 53
    move	$a1,$at
    bal __glDlistHeapInsert
    # Line 51
    sw	$zero,8($at)
    ld	$ra,0($sp)
    # Line 57
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDlistHeapInit

# Function: __glDlistHeapFree
# Declared: Line 61 (Source lines: 62-67)
# Address: 0x0d98dfc0 - 0x0d98e008 (Size: 72 bytes, Frame: 32)
.globl __glDlistHeapFree
.ent __glDlistHeapFree
__glDlistHeapFree:
    # Line 62
    lw	$a2,8($a0)
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$ra,8($sp)
    addiu	$at,$at,12312
    sd	$gp,0($sp)
    beqz	$a2,.L0d98dff4
    addu	$gp,$t9,$at
    # Line 65
    # lw $t9, -18580($gp) # &free
    sd	$a0,16($sp)
    jal	free
    move	$a0,$a2
    ld	$a0,16($sp)
.L0d98dff4:
    ld	$ra,8($sp)
    # Line 66
    sw	$zero,8($a0)
    # Line 67
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistHeapFree

# Function: __glDlistHeapQueryMin
# Declared: Line 69 (Source lines: 70-72)
# Address: 0x0d98e010 - 0x0d98e034 (Size: 36 bytes, Frame: 0)
.globl __glDlistHeapQueryMin
.ent __glDlistHeapQueryMin
__glDlistHeapQueryMin:
    # Line 70
    lw	$at,0($a0)
    li	$v0,1
    beq	$at,$v0,.L0d98e02c
    nop
    # Line 72
    lw	$v0,8($a0)
    jr	$ra
    lw	$v0,4($v0)
.L0d98e02c:
    jr	$ra
    # Line 71
    move	$v0,$zero
.end __glDlistHeapQueryMin

# Function: __glDlistHeapRemoveMin
# Declared: Line 75 (Source lines: 76-83)
# Address: 0x0d98e040 - 0x0d98e09c (Size: 92 bytes, Frame: 32)
.globl __glDlistHeapRemoveMin
.ent __glDlistHeapRemoveMin
__glDlistHeapRemoveMin:
    # Line 76
    lw	$v0,0($a0)
    li	$v1,1
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,12184
    sd	$gp,8($sp)
    bne	$v0,$v1,.L0d98e070
    addu	$gp,$t9,$at
    # Line 79
    move	$v0,$zero
    # Line 83
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e070:
    # Line 81
    # lw $t9, -30984($gp) # &__glDlistHeapRemove
    # Line 80
    lw	$a1,8($a0)
    sd	$ra,16($sp)
    lw	$a1,4($a1)
    # Line 81
    bal __glDlistHeapRemove
    # Line 80
    sd	$a1,0($sp)
    ld	$ra,16($sp)
    # Line 83
    ld	$v0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistHeapRemoveMin

# Function: __glDlistHeapInsert
# Declared: Line 86 (Source lines: 87-104)
# Address: 0x0d98e0a0 - 0x0d98e198 (Size: 248 bytes, Frame: 32)
.globl __glDlistHeapInsert
.ent __glDlistHeapInsert
__glDlistHeapInsert:
    # Line 90
    lw	$a5,0($a0)
    # Line 87
    addiu	$sp,$sp,-32
    sd	$a1,0($sp)
    lw	$a3,4($a0)
    sd	$s0,16($sp)
    lui	$at,0x10
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,12088
    sd	$gp,8($sp)
    beqz	$a3,.L0d98e174
    addu	$gp,$t9,$at
    # Line 90
    lw	$a4,8($a0)
    addiu	$v0,$a5,1
    bne	$a3,$v0,.L0d98e10c
    # Line 92
    nop	# was lw $t9, -18484($gp) # &realloc
    move	$a0,$a4
    sll	$a1,$a3,0x2
    jal	realloc
    addiu	$a1,$a1,128
    move	$a4,$v0
    beqz	$v0,.L0d98e15c
    sw	$v0,8($s0)
    # Line 95
    lw	$a5,0($s0)
    lw	$a2,4($s0)
    addiu	$a2,$a2,32
    sw	$a2,4($s0)
.L0d98e10c:
    # Line 100
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 98
    sll	$v0,$a5,0x2
    ld	$at,0($sp)
    addu	$v0,$a4,$v0
    sw	$at,0($v0)
    # Line 99
    lw	$ra,0($s0)
    sw	$ra,4($at)
    # Line 100
    lw	$a3,0($s0)
    addiu	$t9,$t9,-7344
    move	$a0,$s0
    move	$a1,$a3
    addiu	$a3,$a3,1
    bal __glDlistPrintHeap
    sw	$a3,0($s0)
    ld	$ra,24($sp)
    # Line 104
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e15c:
    ld	$ra,24($sp)
    # Line 94
    move	$v0,$zero
    # Line 104
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e174:
    # Line 89
    # lw $t9, -18480($gp) # &malloc
    jal	malloc
    li	$a0,128
    # Line 90
    lw	$a5,0($s0)
    li	$v1,32
    sw	$v1,4($s0)
    # Line 89
    move	$a4,$v0
    # Line 90
    b	.L0d98e10c
    # Line 89
    sw	$v0,8($s0)
.end __glDlistHeapInsert

# Function: __glDlistHeapRemove
# Declared: Line 107 (Source lines: 108-128)
# Address: 0x0d98e1a0 - 0x0d98e238 (Size: 152 bytes, Frame: 16)
.globl __glDlistHeapRemove
.ent __glDlistHeapRemove
__glDlistHeapRemove:
    # Line 117
    lw	$a4,0($a0)
    # Line 110
    lw	$a3,4($a1)
    # Line 109
    lw	$v0,8($a0)
    # Line 117
    addiu	$a4,$a4,-1
    sll	$v1,$a4,0x2
    sw	$a4,0($a0)
    sll	$a2,$a3,0x2
    addu	$v1,$v0,$v1
    addu	$v0,$v0,$a2
    lw	$v1,0($v1)
    sw	$v1,0($v0)
    # Line 118
    sw	$a3,4($v1)
    # Line 119
    sw	$zero,4($a1)
    lw	$v0,0($v0)
    lwc1	$f0,0($a1)
    lwc1	$f1,0($v0)
    c.lt.s	$f0,$f1
    # Line 108
    addiu	$sp,$sp,-16
    lui	$at,0x10
    sd	$ra,8($sp)
    addiu	$at,$at,11832
    sd	$gp,0($sp)
    # Line 119
    bc1f	.L0d98e218
    # Line 108
    addu	$gp,$t9,$at
    # Line 122
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-7120
    bal __glDlistPrintHeap
    move	$a1,$a3
    b	.L0d98e228
    nop
.L0d98e218:
    # Line 124
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-7344
    bal __glDlistPrintHeap
    move	$a1,$a3
.L0d98e228:
    ld	$ra,8($sp)
    # Line 128
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDlistHeapRemove

# Function: __glDlistHeapPriorityChanged
# Declared: Line 130 (Source lines: 131-141)
# Address: 0x0d98e240 - 0x0d98e2a4 (Size: 100 bytes, Frame: 32)
.globl __glDlistHeapPriorityChanged
.ent __glDlistHeapPriorityChanged
__glDlistHeapPriorityChanged:
    # Line 131
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$s8,0x10
    addiu	$s8,$s8,11672
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 137
    # lw $t9, -32728($gp) # &sub_0d990000
    # Line 131
    sd	$a1,24($sp)
    # Line 137
    addiu	$t9,$t9,-7344
    lw	$a1,4($a1)
    nop
    # Line 131
    sd	$ra,0($sp)
    # Line 137
    bal __glDlistPrintHeap
    # Line 131
    move	$s8,$a0
    # Line 138
    # lw $t9, -32728($gp) # &sub_0d990000
    ld	$a1,24($sp)
    addiu	$t9,$t9,-7120
    move	$a0,$s8
    bal __glDlistPrintHeap
    lw	$a1,4($a1)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 141
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistHeapPriorityChanged

# Function: __glDlistPrintHeap
# Declared: Line 143 (Source lines: 144-151)
# Address: 0x0d98e2b0 - 0x0d98e350 (Size: 160 bytes, Frame: 48)
.globl __glDlistPrintHeap
.ent __glDlistPrintHeap
__glDlistPrintHeap:
    # Line 145
    lw	$at,0($a0)
    lw	$a1,8($a0)
    # Line 144
    addiu	$sp,$sp,-48
    sd	$s2,0($sp)
    lui	$v0,0x10
    # Line 145
    sltiu	$at,$at,2
    # Line 144
    move	$s2,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,11560
    sd	$gp,8($sp)
    # Line 145
    bnez	$at,.L0d98e330
    # Line 144
    addu	$gp,$t9,$v0
    sd	$s1,32($sp)
    # Line 145
    li	$s1,1
    sd	$s0,24($sp)
    addiu	$s0,$a1,4
.L0d98e2f0:
    # Line 148
    lw	$a2,0($s0)
    lwc1	$f0,0($a2)
    # lw $t9, -18556($gp) # &printf
    la	$a0,.rodata
    cvt.d.s	$f0,$f0
    move	$a1,$s1
    addiu	$a0,$a0,-2704
    jal	printf
    dmfc1	$a3,$f0
    # Line 147
    lw	$a1,0($s2)
    addiu	$s1,$s1,1
    sltu	$a1,$s1,$a1
    bnez	$a1,.L0d98e2f0
    addiu	$s0,$s0,4
    ld	$s0,24($sp)
    ld	$s1,32($sp)
.L0d98e330:
    # Line 150
    # lw $t9, -18556($gp) # &printf
    ld	$s2,0($sp)
    jal	printf
    addiu	$a0,$gp,-16342
    ld	$ra,16($sp)
    # Line 151
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDlistPrintHeap

# Function: upheap
# Declared: Line 153 (Source lines: 155-167)
# Address: 0x0d98e350 - 0x0d98e428 (Size: 216 bytes, Frame: 0)
.ent upheap
upheap:
    # Line 156
    srl	$a4,$a1,0x1f
    sll	$a7,$a1,0x2
    # Line 155
    lw	$a6,8($a0)
    # Line 156
    addu	$a4,$a4,$a1
    sra	$a4,$a4,0x1
    addu	$a7,$a6,$a7
    sll	$a3,$a4,0x2
    lw	$a5,0($a7)
    addu	$a3,$a6,$a3
    lw	$a3,0($a3)
    lwc1	$f0,0($a5)
    lwc1	$f1,0($a3)
    c.lt.s	$f0,$f1
    bc1f	.L0d98e41c
    nop
    # Line 159
    sll	$t0,$a1,0x2
.L0d98e390:
    # Line 162
    srl	$a7,$a4,0x1f
    # Line 159
    addu	$t0,$a6,$t0
    # Line 162
    addu	$a7,$a7,$a4
    # Line 159
    sw	$a3,0($t0)
    # Line 161
    sw	$a1,4($a3)
    # Line 162
    move	$a1,$a4
    sra	$a4,$a7,0x1
    sll	$a3,$a4,0x2
    addu	$a3,$a6,$a3
    lw	$a3,0($a3)
    lwc1	$f2,0($a5)
    lwc1	$f3,0($a3)
    c.lt.s $f2,$f3
    bc1f .L0d98e408
    # Line 159
    sll	$t0,$a1,0x2
    # Line 162
    srl	$a7,$a4,0x1f
    # Line 159
    addu	$t0,$a6,$t0
    # Line 162
    addu	$a7,$a7,$a4
    # Line 159
    sw	$a3,0($t0)
    # Line 161
    sw	$a1,4($a3)
    # Line 162
    move	$a1,$a4
    sra	$a4,$a7,0x1
    sll	$a3,$a4,0x2
    addu	$a3,$a6,$a3
    lw	$a3,0($a3)
    lwc1	$f4,0($a5)
    lwc1	$f5,0($a3)
    c.lt.s $f4,$f5
    bc1t .L0d98e390
    # Line 159
    sll	$t0,$a1,0x2
.L0d98e408:
    # Line 162
    sll	$t1,$a1,0x2
    addu	$t1,$a6,$t1
    # Line 165
    sw	$a5,0($t1)
    # Line 167
    jr	$ra
    # Line 166
    sw	$a1,4($a5)
.L0d98e41c:
    # Line 165
    sw	$a5,0($a7)
    # Line 167
    jr	$ra
    # Line 166
    sw	$a1,4($a5)
.end upheap

# Function: downheap
# Declared: Line 169 (Source lines: 171-187)
# Address: 0x0d98e430 - 0x0d98e50c (Size: 220 bytes, Frame: 0)
.ent downheap
downheap:
    # Line 172
    lw	$a6,0($a0)
    addiu	$at,$a6,-1
    # Line 171
    lw	$a3,8($a0)
    # Line 172
    srl	$at,$at,0x1
    sll	$a4,$a1,0x2
    sltu	$at,$at,$a1
    addu	$a4,$a3,$a4
    bnez	$at,.L0d98e4ec
    lw	$a7,0($a4)
    b	.L0d98e48c
    # Line 177
    addu	$a4,$a1,$a1
.L0d98e45c:
    # Line 179
    c.le.s	$f0,$f4
    bc1t	.L0d98e4f8
    nop
    # Line 180
    sw	$a5,0($v1)
    # Line 182
    sw	$a1,4($a5)
    # Line 183
    lw	$a6,0($a0)
    addiu	$v0,$a6,-1
    srl	$v0,$v0,0x1
    sltu	$v0,$v0,$a4
    bnez	$v0,.L0d98e4dc
    move	$a1,$a4
    # Line 177
    addu	$a4,$a1,$a1
.L0d98e48c:
    # Line 178
    sll	$t0,$a4,0x2
    # Line 179
    lwc1	$f0,0($a7)
    # Line 178
    addiu	$t2,$a4,1
    addu	$t1,$t0,$a3
    sltu	$a2,$t2,$a6
    lw	$a5,0($t1)
    # Line 180
    sll	$v1,$a1,0x2
    # Line 178
    lw	$a6,4($t1)
    # Line 180
    addu	$v1,$a3,$v1
    # Line 178
    beqz	$a2,.L0d98e45c
    lwc1	$f4,0($a5)
    lwc1	$f5,0($a6)
    c.lt.s $f5,$f4
    bc1f .L0d98e45c
    nop
    move	$a4,$t2
    addiu	$t0,$t0,4
    move	$a5,$a6
    b	.L0d98e45c
    mov.s	$f4,$f5
.L0d98e4dc:
    # Line 183
    addu	$a3,$t0,$a3
    # Line 185
    sw	$a7,0($a3)
    # Line 187
    jr	$ra
    # Line 186
    sw	$a4,4($a7)
.L0d98e4ec:
    # Line 185
    sw	$a7,0($a4)
    # Line 187
    jr	$ra
    # Line 186
    sw	$a1,4($a7)
.L0d98e4f8:
    # Line 183
    sll	$a4,$a1,0x2
    addu	$a4,$a3,$a4
    # Line 185
    sw	$a7,0($a4)
    # Line 187
    jr	$ra
    # Line 186
    sw	$a1,4($a7)
.end downheap

.rdata
_lit_bf800000:
    .word 0xbf800000

