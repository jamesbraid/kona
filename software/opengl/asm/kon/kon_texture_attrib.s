# Source: kon_texture_attrib.c
# Category: kon
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c kon_texture_attrib.c
# Total Functions: 2

.text

# Function: __glKonGetTexParams
# Declared: Line 14 (Source lines: 15-43)
# Address: 0x0da76c20 - 0x0da76f5c (Size: 828 bytes, Frame: 48)
.globl __glKonGetTexParams
.ent __glKonGetTexParams
__glKonGetTexParams:
    # Line 15
    addiu	$sp,$sp,-48
    lui	$at,0x2
    sd	$s0,8($sp)
    addiu	$at,$at,-23624
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 16
    move	$a4,$zero
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    # Line 15
    move	$s0,$a2
    # Line 16
    li	$a2,10242
    # Line 15
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s2,0($sp)
    move	$s2,$a0
    # Line 16
    nop
    # Line 15
    sd	$ra,16($sp)
    # Line 16
    jal	__glKonGetTexParameter
    move	$a3,$s0
    # Line 17
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,4
    jal	__glKonGetTexParameter
    li	$a2,10243
    # Line 18
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,8
    jal	__glKonGetTexParameter
    li	$a2,0x8072
    # Line 19
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,12
    jal	__glKonGetTexParameter
    li	$a2,10241
    # Line 20
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,16
    jal	__glKonGetTexParameter
    li	$a2,10240
    # Line 21
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,20
    jal	__glKonGetTexParameter
    li	$a2,0x813a
    # Line 22
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,24
    jal	__glKonGetTexParameter
    li	$a2,0x813b
    # Line 23
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,28
    jal	__glKonGetTexParameter
    li	$a2,0x813c
    # Line 24
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,32
    jal	__glKonGetTexParameter
    li	$a2,0x813d
    # Line 25
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,36
    jal	__glKonGetTexParameter
    li	$a2,4100
    # Line 26
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,52
    jal	__glKonGetTexParameter
    li	$a2,0x809a
    # Line 27
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,56
    jal	__glKonGetTexParameter
    li	$a2,0x809b
    # Line 28
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,60
    jal	__glKonGetTexParameter
    li	$a2,0x8066
    # Line 29
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,64
    jal	__glKonGetTexParameter
    li	$a2,0x8171
    # Line 30
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,72
    jal	__glKonGetTexParameter
    li	$a2,0x8173
    # Line 31
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,80
    jal	__glKonGetTexParameter
    li	$a2,0x8172
    # Line 32
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,84
    jal	__glKonGetTexParameter
    li	$a2,0x8174
    # Line 33
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,96
    jal	__glKonGetTexParameter
    li	$a2,0x817a
    # Line 34
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,112
    jal	__glKonGetTexParameter
    li	$a2,0x8179
    # Line 35
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,128
    jal	__glKonGetTexParameter
    li	$a2,0x8124
    # Line 36
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,132
    jal	__glKonGetTexParameter
    li	$a2,0x8125
    # Line 37
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,136
    jal	__glKonGetTexParameter
    li	$a2,0x819a
    # Line 38
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,140
    jal	__glKonGetTexParameter
    li	$a2,0x819b
    # Line 39
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,144
    jal	__glKonGetTexParameter
    li	$a2,0x80bf
    # Line 40
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,148
    jal	__glKonGetTexParameter
    li	$a2,0x818e
    # Line 41
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,152
    jal	__glKonGetTexParameter
    li	$a2,0x818f
    # Line 42
    # lw $t9, -31848($gp) # &__glKonGetTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,156
    jal	__glKonGetTexParameter
    li	$a2,0x8190
    ld	$s2,0($sp)
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 43
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonGetTexParams

# Function: __glKonSetTexParams
# Declared: Line 46 (Source lines: 47-75)
# Address: 0x0da76f60 - 0x0da7729c (Size: 828 bytes, Frame: 48)
.globl __glKonSetTexParams
.ent __glKonSetTexParams
__glKonSetTexParams:
    # Line 47
    addiu	$sp,$sp,-48
    lui	$at,0x2
    sd	$s0,8($sp)
    addiu	$at,$at,-24456
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 48
    move	$a4,$zero
    # lw $t9, -31852($gp) # &__glKonTexParameter
    # Line 47
    move	$s0,$a2
    # Line 48
    li	$a2,10242
    # Line 47
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s2,0($sp)
    move	$s2,$a0
    # Line 48
    nop
    # Line 47
    sd	$ra,16($sp)
    # Line 48
    jal	__glKonTexParameter
    move	$a3,$s0
    # Line 49
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,4
    jal	__glKonTexParameter
    li	$a2,10243
    # Line 50
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,8
    jal	__glKonTexParameter
    li	$a2,0x8072
    # Line 51
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,12
    jal	__glKonTexParameter
    li	$a2,10241
    # Line 52
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,16
    jal	__glKonTexParameter
    li	$a2,10240
    # Line 53
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,20
    jal	__glKonTexParameter
    li	$a2,0x813a
    # Line 54
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,24
    jal	__glKonTexParameter
    li	$a2,0x813b
    # Line 55
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,28
    jal	__glKonTexParameter
    li	$a2,0x813c
    # Line 56
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,32
    jal	__glKonTexParameter
    li	$a2,0x813d
    # Line 57
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,36
    jal	__glKonTexParameter
    li	$a2,4100
    # Line 58
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,52
    jal	__glKonTexParameter
    li	$a2,0x809a
    # Line 59
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,56
    jal	__glKonTexParameter
    li	$a2,0x809b
    # Line 60
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,60
    jal	__glKonTexParameter
    li	$a2,0x8066
    # Line 61
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,64
    jal	__glKonTexParameter
    li	$a2,0x8171
    # Line 62
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,72
    jal	__glKonTexParameter
    li	$a2,0x8173
    # Line 63
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,80
    jal	__glKonTexParameter
    li	$a2,0x8172
    # Line 64
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,84
    jal	__glKonTexParameter
    li	$a2,0x8174
    # Line 65
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,96
    jal	__glKonTexParameter
    li	$a2,0x817a
    # Line 66
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,112
    jal	__glKonTexParameter
    li	$a2,0x8179
    # Line 67
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,128
    jal	__glKonTexParameter
    li	$a2,0x8124
    # Line 68
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,132
    jal	__glKonTexParameter
    li	$a2,0x8125
    # Line 69
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,136
    jal	__glKonTexParameter
    li	$a2,0x819a
    # Line 70
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    move	$a4,$zero
    addiu	$a3,$s0,140
    jal	__glKonTexParameter
    li	$a2,0x819b
    # Line 71
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,144
    jal	__glKonTexParameter
    li	$a2,0x80bf
    # Line 72
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,148
    jal	__glKonTexParameter
    li	$a2,0x818e
    # Line 73
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,152
    jal	__glKonTexParameter
    li	$a2,0x818f
    # Line 74
    # lw $t9, -31852($gp) # &__glKonTexParameter
    move	$a0,$s2
    move	$a1,$s1
    li	$a4,1
    addiu	$a3,$s0,156
    jal	__glKonTexParameter
    li	$a2,0x8190
    ld	$s2,0($sp)
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 75
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonSetTexParams

