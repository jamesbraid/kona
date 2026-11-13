# Source: kon_cfuncs.c
# Category: kon
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c kon_cfuncs.c
# Total Functions: 170

.text

# Function: __glkonim_Color3b
# Declared: Line 8 (Source lines: 9-11)
# Address: 0x0da65180 - 0x0da651a4 (Size: 36 bytes, Frame: 0)
.globl __glkonim_Color3b
.ent __glkonim_Color3b
__glkonim_Color3b:
    # Line 9
    sll	$v0,$a0,0x18
    andi	$v1,$a1,0xff
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    # Line 10
    sll	$at,$a2,0x18
    # Line 9
    ori	$v0,$v0,0x61
    sw	$v0,16384($zero)
    # Line 11
    jr	$ra
    # Line 10
    sw	$at,16384($zero)
.end __glkonim_Color3b

# Function: __glkonim_Color3bv
# Declared: Line 12 (Source lines: 13-15)
# Address: 0x0da651b0 - 0x0da651dc (Size: 44 bytes, Frame: 0)
.globl __glkonim_Color3bv
.ent __glkonim_Color3bv
__glkonim_Color3bv:
    # Line 13
    lbu	$v1,1($a0)
    lb	$v0,0($a0)
    sll	$v1,$v1,0x10
    # Line 14
    lb	$at,2($a0)
    # Line 13
    sll	$v0,$v0,0x18
    or	$v0,$v0,$v1
    # Line 14
    sll	$at,$at,0x18
    # Line 13
    ori	$v0,$v0,0x61
    sw	$v0,16384($zero)
    # Line 15
    jr	$ra
    # Line 14
    sw	$at,16384($zero)
.end __glkonim_Color3bv

# Function: __glkonim_Color3d
# Declared: Line 16 (Source lines: 17-20)
# Address: 0x0da651e0 - 0x0da651f8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color3d
.ent __glkonim_Color3d
__glkonim_Color3d:
    # Line 17
    li	$at,98
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 18
    sdc1	$f13,16384($zero)
    # Line 20
    jr	$ra
    # Line 19
    sdc1	$f14,16384($zero)
.end __glkonim_Color3d

# Function: __glkonim_Color3f
# Declared: Line 21 (Source lines: 22-25)
# Address: 0x0da65200 - 0x0da65218 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color3f
.ent __glkonim_Color3f
__glkonim_Color3f:
    # Line 22
    li	$at,99
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 23
    swc1	$f13,16384($zero)
    # Line 25
    jr	$ra
    # Line 24
    swc1	$f14,16384($zero)
.end __glkonim_Color3f

# Function: __glkonim_Color3i
# Declared: Line 26 (Source lines: 27-30)
# Address: 0x0da65220 - 0x0da65238 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color3i
.ent __glkonim_Color3i
__glkonim_Color3i:
    # Line 27
    li	$at,100
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 28
    sw	$a1,16384($zero)
    # Line 30
    jr	$ra
    # Line 29
    sw	$a2,16384($zero)
.end __glkonim_Color3i

# Function: __glkonim_Color3s
# Declared: Line 31 (Source lines: 32-34)
# Address: 0x0da65240 - 0x0da65260 (Size: 32 bytes, Frame: 0)
.globl __glkonim_Color3s
.ent __glkonim_Color3s
__glkonim_Color3s:
    # Line 33
    andi	$v0,$a2,0xffff
    # Line 32
    sll	$v1,$a0,0x10
    # Line 33
    sll	$at,$a1,0x10
    # Line 32
    ori	$v1,$v1,0x65
    sw	$v1,16384($zero)
    # Line 33
    or	$at,$at,$v0
    # Line 34
    jr	$ra
    # Line 33
    sw	$at,16384($zero)
.end __glkonim_Color3s

# Function: __glkonim_Color3sv
# Declared: Line 35 (Source lines: 36-38)
# Address: 0x0da65260 - 0x0da65288 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Color3sv
.ent __glkonim_Color3sv
__glkonim_Color3sv:
    # Line 36
    lh	$v1,0($a0)
    # Line 37
    lh	$v0,2($a0)
    lhu	$at,4($a0)
    # Line 36
    sll	$v1,$v1,0x10
    # Line 37
    sll	$v0,$v0,0x10
    # Line 36
    ori	$v1,$v1,0x65
    sw	$v1,16384($zero)
    # Line 37
    or	$at,$at,$v0
    # Line 38
    jr	$ra
    # Line 37
    sw	$at,16384($zero)
.end __glkonim_Color3sv

# Function: __glkonim_Color3ub
# Declared: Line 39 (Source lines: 40-42)
# Address: 0x0da65290 - 0x0da652b0 (Size: 32 bytes, Frame: 0)
.globl __glkonim_Color3ub
.ent __glkonim_Color3ub
__glkonim_Color3ub:
    # Line 40
    sll	$v1,$a1,0x10
    sll	$v0,$a0,0x18
    or	$v0,$v0,$v1
    # Line 41
    sll	$at,$a2,0x18
    # Line 40
    ori	$v0,$v0,0x66
    sw	$v0,16384($zero)
    # Line 42
    jr	$ra
    # Line 41
    sw	$at,16384($zero)
.end __glkonim_Color3ub

# Function: __glkonim_Color3ubv
# Declared: Line 43 (Source lines: 44-46)
# Address: 0x0da652b0 - 0x0da652dc (Size: 44 bytes, Frame: 0)
.globl __glkonim_Color3ubv
.ent __glkonim_Color3ubv
__glkonim_Color3ubv:
    # Line 44
    lbu	$v1,1($a0)
    lbu	$v0,0($a0)
    sll	$v1,$v1,0x10
    # Line 45
    lbu	$at,2($a0)
    # Line 44
    sll	$v0,$v0,0x18
    or	$v0,$v0,$v1
    # Line 45
    sll	$at,$at,0x18
    # Line 44
    ori	$v0,$v0,0x66
    sw	$v0,16384($zero)
    # Line 46
    jr	$ra
    # Line 45
    sw	$at,16384($zero)
.end __glkonim_Color3ubv

# Function: __glkonim_Color3ui
# Declared: Line 47 (Source lines: 48-51)
# Address: 0x0da652e0 - 0x0da652f8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color3ui
.ent __glkonim_Color3ui
__glkonim_Color3ui:
    # Line 48
    li	$at,103
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 49
    sw	$a1,16384($zero)
    # Line 51
    jr	$ra
    # Line 50
    sw	$a2,16384($zero)
.end __glkonim_Color3ui

# Function: __glkonim_Color3us
# Declared: Line 52 (Source lines: 53-55)
# Address: 0x0da65300 - 0x0da6531c (Size: 28 bytes, Frame: 0)
.globl __glkonim_Color3us
.ent __glkonim_Color3us
__glkonim_Color3us:
    # Line 53
    sll	$v0,$a0,0x10
    # Line 54
    sll	$at,$a1,0x10
    # Line 53
    ori	$v0,$v0,0x68
    sw	$v0,16384($zero)
    # Line 54
    or	$at,$a2,$at
    # Line 55
    jr	$ra
    # Line 54
    sw	$at,16384($zero)
.end __glkonim_Color3us

# Function: __glkonim_Color3usv
# Declared: Line 56 (Source lines: 57-59)
# Address: 0x0da65320 - 0x0da65348 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Color3usv
.ent __glkonim_Color3usv
__glkonim_Color3usv:
    # Line 57
    lhu	$v1,0($a0)
    # Line 58
    lhu	$v0,2($a0)
    lhu	$at,4($a0)
    # Line 57
    sll	$v1,$v1,0x10
    # Line 58
    sll	$v0,$v0,0x10
    # Line 57
    ori	$v1,$v1,0x68
    sw	$v1,16384($zero)
    # Line 58
    or	$at,$at,$v0
    # Line 59
    jr	$ra
    # Line 58
    sw	$at,16384($zero)
.end __glkonim_Color3usv

# Function: __glkonim_Color4b
# Declared: Line 60 (Source lines: 61-63)
# Address: 0x0da65350 - 0x0da65380 (Size: 48 bytes, Frame: 0)
.globl __glkonim_Color4b
.ent __glkonim_Color4b
__glkonim_Color4b:
    # Line 62
    sll	$at,$a2,0x18
    # Line 61
    sll	$v1,$a0,0x18
    andi	$a0,$a1,0xff
    sll	$a0,$a0,0x10
    # Line 62
    andi	$v0,$a3,0xff
    # Line 61
    or	$v1,$v1,$a0
    # Line 62
    sll	$v0,$v0,0x10
    # Line 61
    ori	$v1,$v1,0x69
    sw	$v1,16384($zero)
    # Line 62
    or	$at,$at,$v0
    # Line 63
    jr	$ra
    # Line 62
    sw	$at,16384($zero)
.end __glkonim_Color4b

# Function: __glkonim_Color4bv
# Declared: Line 64 (Source lines: 65-67)
# Address: 0x0da65380 - 0x0da653b8 (Size: 56 bytes, Frame: 0)
.globl __glkonim_Color4bv
.ent __glkonim_Color4bv
__glkonim_Color4bv:
    # Line 66
    lb	$at,2($a0)
    # Line 65
    lbu	$a1,1($a0)
    lb	$v1,0($a0)
    # Line 66
    lbu	$v0,3($a0)
    # Line 65
    sll	$a0,$a1,0x10
    sll	$v1,$v1,0x18
    # Line 66
    sll	$v0,$v0,0x10
    # Line 65
    or	$v1,$v1,$a0
    # Line 66
    sll	$at,$at,0x18
    # Line 65
    ori	$v1,$v1,0x69
    sw	$v1,16384($zero)
    # Line 66
    or	$at,$at,$v0
    # Line 67
    jr	$ra
    # Line 66
    sw	$at,16384($zero)
.end __glkonim_Color4bv

# Function: __glkonim_Color4d
# Declared: Line 68 (Source lines: 69-73)
# Address: 0x0da653c0 - 0x0da653dc (Size: 28 bytes, Frame: 0)
.globl __glkonim_Color4d
.ent __glkonim_Color4d
__glkonim_Color4d:
    # Line 69
    li	$at,106
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 70
    sdc1	$f13,16384($zero)
    # Line 71
    sdc1	$f14,16384($zero)
    # Line 73
    jr	$ra
    # Line 72
    sdc1	$f15,16384($zero)
.end __glkonim_Color4d

# Function: __glkonim_Color4f
# Declared: Line 74 (Source lines: 75-79)
# Address: 0x0da653e0 - 0x0da653fc (Size: 28 bytes, Frame: 0)
.globl __glkonim_Color4f
.ent __glkonim_Color4f
__glkonim_Color4f:
    # Line 75
    li	$at,107
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 76
    swc1	$f13,16384($zero)
    # Line 77
    swc1	$f14,16384($zero)
    # Line 79
    jr	$ra
    # Line 78
    swc1	$f15,16384($zero)
.end __glkonim_Color4f

# Function: __glkonim_Color4i
# Declared: Line 80 (Source lines: 81-85)
# Address: 0x0da65400 - 0x0da6541c (Size: 28 bytes, Frame: 0)
.globl __glkonim_Color4i
.ent __glkonim_Color4i
__glkonim_Color4i:
    # Line 81
    li	$at,108
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 82
    sw	$a1,16384($zero)
    # Line 83
    sw	$a2,16384($zero)
    # Line 85
    jr	$ra
    # Line 84
    sw	$a3,16384($zero)
.end __glkonim_Color4i

# Function: __glkonim_Color4s
# Declared: Line 86 (Source lines: 87-90)
# Address: 0x0da65420 - 0x0da65448 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Color4s
.ent __glkonim_Color4s
__glkonim_Color4s:
    # Line 88
    andi	$v1,$a2,0xffff
    # Line 87
    sll	$a0,$a0,0x10
    # Line 88
    sll	$v0,$a1,0x10
    # Line 87
    ori	$a0,$a0,0x6d
    sw	$a0,16384($zero)
    # Line 89
    sll	$at,$a3,0x10
    # Line 88
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 90
    jr	$ra
    # Line 89
    sw	$at,16384($zero)
.end __glkonim_Color4s

# Function: __glkonim_Color4sv
# Declared: Line 91 (Source lines: 92-95)
# Address: 0x0da65450 - 0x0da65484 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Color4sv
.ent __glkonim_Color4sv
__glkonim_Color4sv:
    # Line 94
    lh	$at,6($a0)
    # Line 92
    lh	$a1,0($a0)
    # Line 93
    lh	$v1,2($a0)
    lhu	$v0,4($a0)
    # Line 92
    sll	$a0,$a1,0x10
    # Line 93
    sll	$v1,$v1,0x10
    # Line 92
    ori	$a0,$a0,0x6d
    sw	$a0,16384($zero)
    # Line 94
    sll	$at,$at,0x10
    # Line 93
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 95
    jr	$ra
    # Line 94
    sw	$at,16384($zero)
.end __glkonim_Color4sv

# Function: __glkonim_Color4ub
# Declared: Line 96 (Source lines: 97-99)
# Address: 0x0da65490 - 0x0da654b8 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Color4ub
.ent __glkonim_Color4ub
__glkonim_Color4ub:
    # Line 97
    sll	$v1,$a0,0x18
    sll	$a0,$a1,0x10
    # Line 98
    sll	$v0,$a3,0x10
    # Line 97
    or	$v1,$v1,$a0
    # Line 98
    sll	$at,$a2,0x18
    # Line 97
    ori	$v1,$v1,0x6e
    sw	$v1,16384($zero)
    # Line 98
    or	$at,$at,$v0
    # Line 99
    jr	$ra
    # Line 98
    sw	$at,16384($zero)
.end __glkonim_Color4ub

# Function: __glkonim_Color4ubv
# Declared: Line 100 (Source lines: 101-103)
# Address: 0x0da654c0 - 0x0da654f8 (Size: 56 bytes, Frame: 0)
.globl __glkonim_Color4ubv
.ent __glkonim_Color4ubv
__glkonim_Color4ubv:
    # Line 102
    lbu	$at,2($a0)
    # Line 101
    lbu	$a1,1($a0)
    lbu	$v1,0($a0)
    # Line 102
    lbu	$v0,3($a0)
    # Line 101
    sll	$a0,$a1,0x10
    sll	$v1,$v1,0x18
    # Line 102
    sll	$v0,$v0,0x10
    # Line 101
    or	$v1,$v1,$a0
    # Line 102
    sll	$at,$at,0x18
    # Line 101
    ori	$v1,$v1,0x6e
    sw	$v1,16384($zero)
    # Line 102
    or	$at,$at,$v0
    # Line 103
    jr	$ra
    # Line 102
    sw	$at,16384($zero)
.end __glkonim_Color4ubv

# Function: __glkonim_Color4ui
# Declared: Line 104 (Source lines: 105-109)
# Address: 0x0da65500 - 0x0da6551c (Size: 28 bytes, Frame: 0)
.globl __glkonim_Color4ui
.ent __glkonim_Color4ui
__glkonim_Color4ui:
    # Line 105
    li	$at,111
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 106
    sw	$a1,16384($zero)
    # Line 107
    sw	$a2,16384($zero)
    # Line 109
    jr	$ra
    # Line 108
    sw	$a3,16384($zero)
.end __glkonim_Color4ui

# Function: __glkonim_Color4us
# Declared: Line 110 (Source lines: 111-114)
# Address: 0x0da65520 - 0x0da65544 (Size: 36 bytes, Frame: 0)
.globl __glkonim_Color4us
.ent __glkonim_Color4us
__glkonim_Color4us:
    # Line 111
    sll	$v1,$a0,0x10
    # Line 112
    sll	$v0,$a1,0x10
    # Line 111
    ori	$v1,$v1,0x70
    sw	$v1,16384($zero)
    # Line 113
    sll	$at,$a3,0x10
    # Line 112
    or	$v0,$a2,$v0
    sw	$v0,16384($zero)
    # Line 114
    jr	$ra
    # Line 113
    sw	$at,16384($zero)
.end __glkonim_Color4us

# Function: __glkonim_Color4usv
# Declared: Line 115 (Source lines: 116-119)
# Address: 0x0da65550 - 0x0da65584 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Color4usv
.ent __glkonim_Color4usv
__glkonim_Color4usv:
    # Line 118
    lhu	$at,6($a0)
    # Line 116
    lhu	$a1,0($a0)
    # Line 117
    lhu	$v1,2($a0)
    lhu	$v0,4($a0)
    # Line 116
    sll	$a0,$a1,0x10
    # Line 117
    sll	$v1,$v1,0x10
    # Line 116
    ori	$a0,$a0,0x70
    sw	$a0,16384($zero)
    # Line 118
    sll	$at,$at,0x10
    # Line 117
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 119
    jr	$ra
    # Line 118
    sw	$at,16384($zero)
.end __glkonim_Color4usv

# Function: __glkonim_EdgeFlag
# Declared: Line 120 (Source lines: 121-122)
# Address: 0x0da65590 - 0x0da655a0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_EdgeFlag
.ent __glkonim_EdgeFlag
__glkonim_EdgeFlag:
    # Line 121
    li	$at,167
    sw	$at,16384($zero)
    # Line 122
    jr	$ra
    # Line 121
    sw	$a0,16384($zero)
.end __glkonim_EdgeFlag

# Function: __glkonim_Indexd
# Declared: Line 123 (Source lines: 124-125)
# Address: 0x0da655a0 - 0x0da655b0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Indexd
.ent __glkonim_Indexd
__glkonim_Indexd:
    # Line 124
    li	$at,114
    sw	$at,16384($zero)
    # Line 125
    jr	$ra
    # Line 124
    sdc1	$f12,16384($zero)
.end __glkonim_Indexd

# Function: __glkonim_Indexf
# Declared: Line 126 (Source lines: 127-128)
# Address: 0x0da655b0 - 0x0da655c0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Indexf
.ent __glkonim_Indexf
__glkonim_Indexf:
    # Line 127
    li	$at,115
    sw	$at,16384($zero)
    # Line 128
    jr	$ra
    # Line 127
    swc1	$f12,16384($zero)
.end __glkonim_Indexf

# Function: __glkonim_Indexi
# Declared: Line 129 (Source lines: 130-131)
# Address: 0x0da655c0 - 0x0da655d0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Indexi
.ent __glkonim_Indexi
__glkonim_Indexi:
    # Line 130
    li	$at,116
    sw	$at,16384($zero)
    # Line 131
    jr	$ra
    # Line 130
    sw	$a0,16384($zero)
.end __glkonim_Indexi

# Function: __glkonim_Indexs
# Declared: Line 132 (Source lines: 133-134)
# Address: 0x0da655d0 - 0x0da655e4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Indexs
.ent __glkonim_Indexs
__glkonim_Indexs:
    # Line 133
    li	$v0,117
    sw	$v0,16384($zero)
    sll	$at,$a0,0x10
    # Line 134
    jr	$ra
    # Line 133
    sw	$at,16384($zero)
.end __glkonim_Indexs

# Function: __glkonim_Indexsv
# Declared: Line 135 (Source lines: 136-137)
# Address: 0x0da655f0 - 0x0da65608 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Indexsv
.ent __glkonim_Indexsv
__glkonim_Indexsv:
    # Line 136
    lh	$at,0($a0)
    li	$v0,117
    sw	$v0,16384($zero)
    sll	$at,$at,0x10
    # Line 137
    jr	$ra
    # Line 136
    sw	$at,16384($zero)
.end __glkonim_Indexsv

# Function: __glkonim_Normal3b
# Declared: Line 138 (Source lines: 139-141)
# Address: 0x0da65610 - 0x0da65634 (Size: 36 bytes, Frame: 0)
.globl __glkonim_Normal3b
.ent __glkonim_Normal3b
__glkonim_Normal3b:
    # Line 139
    sll	$v0,$a0,0x18
    andi	$v1,$a1,0xff
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    # Line 140
    sll	$at,$a2,0x18
    # Line 139
    ori	$v0,$v0,0x76
    sw	$v0,16384($zero)
    # Line 141
    jr	$ra
    # Line 140
    sw	$at,16384($zero)
.end __glkonim_Normal3b

# Function: __glkonim_Normal3bv
# Declared: Line 142 (Source lines: 143-145)
# Address: 0x0da65640 - 0x0da6566c (Size: 44 bytes, Frame: 0)
.globl __glkonim_Normal3bv
.ent __glkonim_Normal3bv
__glkonim_Normal3bv:
    # Line 143
    lbu	$v1,1($a0)
    lb	$v0,0($a0)
    sll	$v1,$v1,0x10
    # Line 144
    lb	$at,2($a0)
    # Line 143
    sll	$v0,$v0,0x18
    or	$v0,$v0,$v1
    # Line 144
    sll	$at,$at,0x18
    # Line 143
    ori	$v0,$v0,0x76
    sw	$v0,16384($zero)
    # Line 145
    jr	$ra
    # Line 144
    sw	$at,16384($zero)
.end __glkonim_Normal3bv

# Function: __glkonim_Normal3d
# Declared: Line 146 (Source lines: 147-150)
# Address: 0x0da65670 - 0x0da65688 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Normal3d
.ent __glkonim_Normal3d
__glkonim_Normal3d:
    # Line 147
    li	$at,119
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 148
    sdc1	$f13,16384($zero)
    # Line 150
    jr	$ra
    # Line 149
    sdc1	$f14,16384($zero)
.end __glkonim_Normal3d

# Function: __glkonim_Normal3f
# Declared: Line 151 (Source lines: 152-155)
# Address: 0x0da65690 - 0x0da656a8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Normal3f
.ent __glkonim_Normal3f
__glkonim_Normal3f:
    # Line 152
    li	$at,120
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 153
    swc1	$f13,16384($zero)
    # Line 155
    jr	$ra
    # Line 154
    swc1	$f14,16384($zero)
.end __glkonim_Normal3f

# Function: __glkonim_Normal3i
# Declared: Line 156 (Source lines: 157-160)
# Address: 0x0da656b0 - 0x0da656c8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Normal3i
.ent __glkonim_Normal3i
__glkonim_Normal3i:
    # Line 157
    li	$at,121
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 158
    sw	$a1,16384($zero)
    # Line 160
    jr	$ra
    # Line 159
    sw	$a2,16384($zero)
.end __glkonim_Normal3i

# Function: __glkonim_Normal3s
# Declared: Line 161 (Source lines: 162-164)
# Address: 0x0da656d0 - 0x0da656f0 (Size: 32 bytes, Frame: 0)
.globl __glkonim_Normal3s
.ent __glkonim_Normal3s
__glkonim_Normal3s:
    # Line 163
    andi	$v0,$a2,0xffff
    # Line 162
    sll	$v1,$a0,0x10
    # Line 163
    sll	$at,$a1,0x10
    # Line 162
    ori	$v1,$v1,0x7a
    sw	$v1,16384($zero)
    # Line 163
    or	$at,$at,$v0
    # Line 164
    jr	$ra
    # Line 163
    sw	$at,16384($zero)
.end __glkonim_Normal3s

# Function: __glkonim_Normal3sv
# Declared: Line 165 (Source lines: 166-168)
# Address: 0x0da656f0 - 0x0da65718 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Normal3sv
.ent __glkonim_Normal3sv
__glkonim_Normal3sv:
    # Line 166
    lh	$v1,0($a0)
    # Line 167
    lh	$v0,2($a0)
    lhu	$at,4($a0)
    # Line 166
    sll	$v1,$v1,0x10
    # Line 167
    sll	$v0,$v0,0x10
    # Line 166
    ori	$v1,$v1,0x7a
    sw	$v1,16384($zero)
    # Line 167
    or	$at,$at,$v0
    # Line 168
    jr	$ra
    # Line 167
    sw	$at,16384($zero)
.end __glkonim_Normal3sv

# Function: __glkonim_RasterPos2d
# Declared: Line 169 (Source lines: 170-172)
# Address: 0x0da65720 - 0x0da65734 (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos2d
.ent __glkonim_RasterPos2d
__glkonim_RasterPos2d:
    # Line 170
    li	$at,168
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 172
    jr	$ra
    # Line 171
    sdc1	$f13,16384($zero)
.end __glkonim_RasterPos2d

# Function: __glkonim_RasterPos2f
# Declared: Line 173 (Source lines: 174-176)
# Address: 0x0da65740 - 0x0da65754 (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos2f
.ent __glkonim_RasterPos2f
__glkonim_RasterPos2f:
    # Line 174
    li	$at,169
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 176
    jr	$ra
    # Line 175
    swc1	$f13,16384($zero)
.end __glkonim_RasterPos2f

# Function: __glkonim_RasterPos2i
# Declared: Line 177 (Source lines: 178-180)
# Address: 0x0da65760 - 0x0da65774 (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos2i
.ent __glkonim_RasterPos2i
__glkonim_RasterPos2i:
    # Line 178
    li	$at,170
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 180
    jr	$ra
    # Line 179
    sw	$a1,16384($zero)
.end __glkonim_RasterPos2i

# Function: __glkonim_RasterPos2s
# Declared: Line 181 (Source lines: 182-184)
# Address: 0x0da65780 - 0x0da65794 (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos2s
.ent __glkonim_RasterPos2s
__glkonim_RasterPos2s:
    # Line 182
    li	$at,171
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 184
    jr	$ra
    # Line 183
    sw	$a1,16384($zero)
.end __glkonim_RasterPos2s

# Function: __glkonim_RasterPos3d
# Declared: Line 185 (Source lines: 186-189)
# Address: 0x0da657a0 - 0x0da657b8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos3d
.ent __glkonim_RasterPos3d
__glkonim_RasterPos3d:
    # Line 186
    li	$at,172
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 187
    sdc1	$f13,16384($zero)
    # Line 189
    jr	$ra
    # Line 188
    sdc1	$f14,16384($zero)
.end __glkonim_RasterPos3d

# Function: __glkonim_RasterPos3f
# Declared: Line 190 (Source lines: 191-194)
# Address: 0x0da657c0 - 0x0da657d8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos3f
.ent __glkonim_RasterPos3f
__glkonim_RasterPos3f:
    # Line 191
    li	$at,173
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 192
    swc1	$f13,16384($zero)
    # Line 194
    jr	$ra
    # Line 193
    swc1	$f14,16384($zero)
.end __glkonim_RasterPos3f

# Function: __glkonim_RasterPos3i
# Declared: Line 195 (Source lines: 196-199)
# Address: 0x0da657e0 - 0x0da657f8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos3i
.ent __glkonim_RasterPos3i
__glkonim_RasterPos3i:
    # Line 196
    li	$at,174
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 197
    sw	$a1,16384($zero)
    # Line 199
    jr	$ra
    # Line 198
    sw	$a2,16384($zero)
.end __glkonim_RasterPos3i

# Function: __glkonim_RasterPos3s
# Declared: Line 200 (Source lines: 201-204)
# Address: 0x0da65800 - 0x0da65818 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos3s
.ent __glkonim_RasterPos3s
__glkonim_RasterPos3s:
    # Line 201
    li	$at,175
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 202
    sw	$a1,16384($zero)
    # Line 204
    jr	$ra
    # Line 203
    sw	$a2,16384($zero)
.end __glkonim_RasterPos3s

# Function: __glkonim_RasterPos4d
# Declared: Line 205 (Source lines: 206-210)
# Address: 0x0da65820 - 0x0da6583c (Size: 28 bytes, Frame: 0)
.globl __glkonim_RasterPos4d
.ent __glkonim_RasterPos4d
__glkonim_RasterPos4d:
    # Line 206
    li	$at,176
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 207
    sdc1	$f13,16384($zero)
    # Line 208
    sdc1	$f14,16384($zero)
    # Line 210
    jr	$ra
    # Line 209
    sdc1	$f15,16384($zero)
.end __glkonim_RasterPos4d

# Function: __glkonim_RasterPos4f
# Declared: Line 211 (Source lines: 212-216)
# Address: 0x0da65840 - 0x0da6585c (Size: 28 bytes, Frame: 0)
.globl __glkonim_RasterPos4f
.ent __glkonim_RasterPos4f
__glkonim_RasterPos4f:
    # Line 212
    li	$at,177
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 213
    swc1	$f13,16384($zero)
    # Line 214
    swc1	$f14,16384($zero)
    # Line 216
    jr	$ra
    # Line 215
    swc1	$f15,16384($zero)
.end __glkonim_RasterPos4f

# Function: __glkonim_RasterPos4i
# Declared: Line 217 (Source lines: 218-222)
# Address: 0x0da65860 - 0x0da6587c (Size: 28 bytes, Frame: 0)
.globl __glkonim_RasterPos4i
.ent __glkonim_RasterPos4i
__glkonim_RasterPos4i:
    # Line 218
    li	$at,178
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 219
    sw	$a1,16384($zero)
    # Line 220
    sw	$a2,16384($zero)
    # Line 222
    jr	$ra
    # Line 221
    sw	$a3,16384($zero)
.end __glkonim_RasterPos4i

# Function: __glkonim_RasterPos4s
# Declared: Line 223 (Source lines: 224-228)
# Address: 0x0da65880 - 0x0da6589c (Size: 28 bytes, Frame: 0)
.globl __glkonim_RasterPos4s
.ent __glkonim_RasterPos4s
__glkonim_RasterPos4s:
    # Line 224
    li	$at,179
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 225
    sw	$a1,16384($zero)
    # Line 226
    sw	$a2,16384($zero)
    # Line 228
    jr	$ra
    # Line 227
    sw	$a3,16384($zero)
.end __glkonim_RasterPos4s

# Function: __glkonim_TexCoord1d
# Declared: Line 229 (Source lines: 230-231)
# Address: 0x0da658a0 - 0x0da658b0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord1d
.ent __glkonim_TexCoord1d
__glkonim_TexCoord1d:
    # Line 230
    li	$at,123
    sw	$at,16384($zero)
    # Line 231
    jr	$ra
    # Line 230
    sdc1	$f12,16384($zero)
.end __glkonim_TexCoord1d

# Function: __glkonim_TexCoord1f
# Declared: Line 232 (Source lines: 233-234)
# Address: 0x0da658b0 - 0x0da658c0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord1f
.ent __glkonim_TexCoord1f
__glkonim_TexCoord1f:
    # Line 233
    li	$at,124
    sw	$at,16384($zero)
    # Line 234
    jr	$ra
    # Line 233
    swc1	$f12,16384($zero)
.end __glkonim_TexCoord1f

# Function: __glkonim_TexCoord1i
# Declared: Line 235 (Source lines: 236-237)
# Address: 0x0da658c0 - 0x0da658d0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord1i
.ent __glkonim_TexCoord1i
__glkonim_TexCoord1i:
    # Line 236
    li	$at,125
    sw	$at,16384($zero)
    # Line 237
    jr	$ra
    # Line 236
    sw	$a0,16384($zero)
.end __glkonim_TexCoord1i

# Function: __glkonim_TexCoord1s
# Declared: Line 238 (Source lines: 239-240)
# Address: 0x0da658d0 - 0x0da658e4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord1s
.ent __glkonim_TexCoord1s
__glkonim_TexCoord1s:
    # Line 239
    li	$v0,126
    sw	$v0,16384($zero)
    sll	$at,$a0,0x10
    # Line 240
    jr	$ra
    # Line 239
    sw	$at,16384($zero)
.end __glkonim_TexCoord1s

# Function: __glkonim_TexCoord1sv
# Declared: Line 241 (Source lines: 242-243)
# Address: 0x0da658f0 - 0x0da65908 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord1sv
.ent __glkonim_TexCoord1sv
__glkonim_TexCoord1sv:
    # Line 242
    lh	$at,0($a0)
    li	$v0,126
    sw	$v0,16384($zero)
    sll	$at,$at,0x10
    # Line 243
    jr	$ra
    # Line 242
    sw	$at,16384($zero)
.end __glkonim_TexCoord1sv

# Function: __glkonim_TexCoord2d
# Declared: Line 244 (Source lines: 245-247)
# Address: 0x0da65910 - 0x0da65924 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord2d
.ent __glkonim_TexCoord2d
__glkonim_TexCoord2d:
    # Line 245
    li	$at,127
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 247
    jr	$ra
    # Line 246
    sdc1	$f13,16384($zero)
.end __glkonim_TexCoord2d

# Function: __glkonim_TexCoord2f
# Declared: Line 248 (Source lines: 249-251)
# Address: 0x0da65930 - 0x0da65944 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord2f
.ent __glkonim_TexCoord2f
__glkonim_TexCoord2f:
    # Line 249
    li	$at,128
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 251
    jr	$ra
    # Line 250
    swc1	$f13,16384($zero)
.end __glkonim_TexCoord2f

# Function: __glkonim_TexCoord2i
# Declared: Line 252 (Source lines: 253-255)
# Address: 0x0da65950 - 0x0da65964 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord2i
.ent __glkonim_TexCoord2i
__glkonim_TexCoord2i:
    # Line 253
    li	$at,129
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 255
    jr	$ra
    # Line 254
    sw	$a1,16384($zero)
.end __glkonim_TexCoord2i

# Function: __glkonim_TexCoord2s
# Declared: Line 256 (Source lines: 257-259)
# Address: 0x0da65970 - 0x0da65988 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord2s
.ent __glkonim_TexCoord2s
__glkonim_TexCoord2s:
    # Line 257
    sll	$v0,$a0,0x10
    # Line 258
    sll	$at,$a1,0x10
    # Line 257
    ori	$v0,$v0,0x82
    sw	$v0,16384($zero)
    # Line 259
    jr	$ra
    # Line 258
    sw	$at,16384($zero)
.end __glkonim_TexCoord2s

# Function: __glkonim_TexCoord2sv
# Declared: Line 260 (Source lines: 261-263)
# Address: 0x0da65990 - 0x0da659b0 (Size: 32 bytes, Frame: 0)
.globl __glkonim_TexCoord2sv
.ent __glkonim_TexCoord2sv
__glkonim_TexCoord2sv:
    # Line 261
    lh	$v0,0($a0)
    # Line 262
    lh	$at,2($a0)
    # Line 261
    sll	$v0,$v0,0x10
    # Line 262
    sll	$at,$at,0x10
    # Line 261
    ori	$v0,$v0,0x82
    sw	$v0,16384($zero)
    # Line 263
    jr	$ra
    # Line 262
    sw	$at,16384($zero)
.end __glkonim_TexCoord2sv

# Function: __glkonim_TexCoord3d
# Declared: Line 264 (Source lines: 265-268)
# Address: 0x0da659b0 - 0x0da659c8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord3d
.ent __glkonim_TexCoord3d
__glkonim_TexCoord3d:
    # Line 265
    li	$at,131
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 266
    sdc1	$f13,16384($zero)
    # Line 268
    jr	$ra
    # Line 267
    sdc1	$f14,16384($zero)
.end __glkonim_TexCoord3d

# Function: __glkonim_TexCoord3f
# Declared: Line 269 (Source lines: 270-273)
# Address: 0x0da659d0 - 0x0da659e8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord3f
.ent __glkonim_TexCoord3f
__glkonim_TexCoord3f:
    # Line 270
    li	$at,132
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 271
    swc1	$f13,16384($zero)
    # Line 273
    jr	$ra
    # Line 272
    swc1	$f14,16384($zero)
.end __glkonim_TexCoord3f

# Function: __glkonim_TexCoord3i
# Declared: Line 274 (Source lines: 275-278)
# Address: 0x0da659f0 - 0x0da65a08 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord3i
.ent __glkonim_TexCoord3i
__glkonim_TexCoord3i:
    # Line 275
    li	$at,133
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 276
    sw	$a1,16384($zero)
    # Line 278
    jr	$ra
    # Line 277
    sw	$a2,16384($zero)
.end __glkonim_TexCoord3i

# Function: __glkonim_TexCoord3s
# Declared: Line 279 (Source lines: 280-282)
# Address: 0x0da65a10 - 0x0da65a30 (Size: 32 bytes, Frame: 0)
.globl __glkonim_TexCoord3s
.ent __glkonim_TexCoord3s
__glkonim_TexCoord3s:
    # Line 281
    andi	$v0,$a2,0xffff
    # Line 280
    sll	$v1,$a0,0x10
    # Line 281
    sll	$at,$a1,0x10
    # Line 280
    ori	$v1,$v1,0x86
    sw	$v1,16384($zero)
    # Line 281
    or	$at,$at,$v0
    # Line 282
    jr	$ra
    # Line 281
    sw	$at,16384($zero)
.end __glkonim_TexCoord3s

# Function: __glkonim_TexCoord3sv
# Declared: Line 283 (Source lines: 284-286)
# Address: 0x0da65a30 - 0x0da65a58 (Size: 40 bytes, Frame: 0)
.globl __glkonim_TexCoord3sv
.ent __glkonim_TexCoord3sv
__glkonim_TexCoord3sv:
    # Line 284
    lh	$v1,0($a0)
    # Line 285
    lh	$v0,2($a0)
    lhu	$at,4($a0)
    # Line 284
    sll	$v1,$v1,0x10
    # Line 285
    sll	$v0,$v0,0x10
    # Line 284
    ori	$v1,$v1,0x86
    sw	$v1,16384($zero)
    # Line 285
    or	$at,$at,$v0
    # Line 286
    jr	$ra
    # Line 285
    sw	$at,16384($zero)
.end __glkonim_TexCoord3sv

# Function: __glkonim_TexCoord4d
# Declared: Line 287 (Source lines: 288-292)
# Address: 0x0da65a60 - 0x0da65a7c (Size: 28 bytes, Frame: 0)
.globl __glkonim_TexCoord4d
.ent __glkonim_TexCoord4d
__glkonim_TexCoord4d:
    # Line 288
    li	$at,135
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 289
    sdc1	$f13,16384($zero)
    # Line 290
    sdc1	$f14,16384($zero)
    # Line 292
    jr	$ra
    # Line 291
    sdc1	$f15,16384($zero)
.end __glkonim_TexCoord4d

# Function: __glkonim_TexCoord4f
# Declared: Line 293 (Source lines: 294-298)
# Address: 0x0da65a80 - 0x0da65a9c (Size: 28 bytes, Frame: 0)
.globl __glkonim_TexCoord4f
.ent __glkonim_TexCoord4f
__glkonim_TexCoord4f:
    # Line 294
    li	$at,136
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 295
    swc1	$f13,16384($zero)
    # Line 296
    swc1	$f14,16384($zero)
    # Line 298
    jr	$ra
    # Line 297
    swc1	$f15,16384($zero)
.end __glkonim_TexCoord4f

# Function: __glkonim_TexCoord4i
# Declared: Line 299 (Source lines: 300-304)
# Address: 0x0da65aa0 - 0x0da65abc (Size: 28 bytes, Frame: 0)
.globl __glkonim_TexCoord4i
.ent __glkonim_TexCoord4i
__glkonim_TexCoord4i:
    # Line 300
    li	$at,137
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 301
    sw	$a1,16384($zero)
    # Line 302
    sw	$a2,16384($zero)
    # Line 304
    jr	$ra
    # Line 303
    sw	$a3,16384($zero)
.end __glkonim_TexCoord4i

# Function: __glkonim_TexCoord4s
# Declared: Line 305 (Source lines: 306-309)
# Address: 0x0da65ac0 - 0x0da65ae8 (Size: 40 bytes, Frame: 0)
.globl __glkonim_TexCoord4s
.ent __glkonim_TexCoord4s
__glkonim_TexCoord4s:
    # Line 307
    andi	$v1,$a2,0xffff
    # Line 306
    sll	$a0,$a0,0x10
    # Line 307
    sll	$v0,$a1,0x10
    # Line 306
    ori	$a0,$a0,0x8a
    sw	$a0,16384($zero)
    # Line 308
    sll	$at,$a3,0x10
    # Line 307
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 309
    jr	$ra
    # Line 308
    sw	$at,16384($zero)
.end __glkonim_TexCoord4s

# Function: __glkonim_TexCoord4sv
# Declared: Line 310 (Source lines: 311-314)
# Address: 0x0da65af0 - 0x0da65b24 (Size: 52 bytes, Frame: 0)
.globl __glkonim_TexCoord4sv
.ent __glkonim_TexCoord4sv
__glkonim_TexCoord4sv:
    # Line 313
    lh	$at,6($a0)
    # Line 311
    lh	$a1,0($a0)
    # Line 312
    lh	$v1,2($a0)
    lhu	$v0,4($a0)
    # Line 311
    sll	$a0,$a1,0x10
    # Line 312
    sll	$v1,$v1,0x10
    # Line 311
    ori	$a0,$a0,0x8a
    sw	$a0,16384($zero)
    # Line 313
    sll	$at,$at,0x10
    # Line 312
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 314
    jr	$ra
    # Line 313
    sw	$at,16384($zero)
.end __glkonim_TexCoord4sv

# Function: __glkonim_Vertex2d
# Declared: Line 315 (Source lines: 316-318)
# Address: 0x0da65b30 - 0x0da65b44 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Vertex2d
.ent __glkonim_Vertex2d
__glkonim_Vertex2d:
    # Line 316
    li	$at,139
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 318
    jr	$ra
    # Line 317
    sdc1	$f13,16384($zero)
.end __glkonim_Vertex2d

# Function: __glkonim_Vertex2f
# Declared: Line 319 (Source lines: 320-322)
# Address: 0x0da65b50 - 0x0da65b64 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Vertex2f
.ent __glkonim_Vertex2f
__glkonim_Vertex2f:
    # Line 320
    li	$at,140
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 322
    jr	$ra
    # Line 321
    swc1	$f13,16384($zero)
.end __glkonim_Vertex2f

# Function: __glkonim_Vertex2i
# Declared: Line 323 (Source lines: 324-326)
# Address: 0x0da65b70 - 0x0da65b84 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Vertex2i
.ent __glkonim_Vertex2i
__glkonim_Vertex2i:
    # Line 324
    li	$at,141
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 326
    jr	$ra
    # Line 325
    sw	$a1,16384($zero)
.end __glkonim_Vertex2i

# Function: __glkonim_Vertex2s
# Declared: Line 327 (Source lines: 328-330)
# Address: 0x0da65b90 - 0x0da65ba8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex2s
.ent __glkonim_Vertex2s
__glkonim_Vertex2s:
    # Line 328
    sll	$v0,$a0,0x10
    # Line 329
    sll	$at,$a1,0x10
    # Line 328
    ori	$v0,$v0,0x8e
    sw	$v0,16384($zero)
    # Line 330
    jr	$ra
    # Line 329
    sw	$at,16384($zero)
.end __glkonim_Vertex2s

# Function: __glkonim_Vertex2sv
# Declared: Line 331 (Source lines: 332-334)
# Address: 0x0da65bb0 - 0x0da65bd0 (Size: 32 bytes, Frame: 0)
.globl __glkonim_Vertex2sv
.ent __glkonim_Vertex2sv
__glkonim_Vertex2sv:
    # Line 332
    lh	$v0,0($a0)
    # Line 333
    lh	$at,2($a0)
    # Line 332
    sll	$v0,$v0,0x10
    # Line 333
    sll	$at,$at,0x10
    # Line 332
    ori	$v0,$v0,0x8e
    sw	$v0,16384($zero)
    # Line 334
    jr	$ra
    # Line 333
    sw	$at,16384($zero)
.end __glkonim_Vertex2sv

# Function: __glkonim_Vertex3d
# Declared: Line 335 (Source lines: 336-339)
# Address: 0x0da65bd0 - 0x0da65be8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex3d
.ent __glkonim_Vertex3d
__glkonim_Vertex3d:
    # Line 336
    li	$at,143
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 337
    sdc1	$f13,16384($zero)
    # Line 339
    jr	$ra
    # Line 338
    sdc1	$f14,16384($zero)
.end __glkonim_Vertex3d

# Function: __glkonim_Vertex3f
# Declared: Line 340 (Source lines: 341-344)
# Address: 0x0da65bf0 - 0x0da65c08 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex3f
.ent __glkonim_Vertex3f
__glkonim_Vertex3f:
    # Line 341
    li	$at,144
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 342
    swc1	$f13,16384($zero)
    # Line 344
    jr	$ra
    # Line 343
    swc1	$f14,16384($zero)
.end __glkonim_Vertex3f

# Function: __glkonim_Vertex3i
# Declared: Line 345 (Source lines: 346-349)
# Address: 0x0da65c10 - 0x0da65c28 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex3i
.ent __glkonim_Vertex3i
__glkonim_Vertex3i:
    # Line 346
    li	$at,145
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 347
    sw	$a1,16384($zero)
    # Line 349
    jr	$ra
    # Line 348
    sw	$a2,16384($zero)
.end __glkonim_Vertex3i

# Function: __glkonim_Vertex3s
# Declared: Line 350 (Source lines: 351-353)
# Address: 0x0da65c30 - 0x0da65c50 (Size: 32 bytes, Frame: 0)
.globl __glkonim_Vertex3s
.ent __glkonim_Vertex3s
__glkonim_Vertex3s:
    # Line 352
    andi	$v0,$a2,0xffff
    # Line 351
    sll	$v1,$a0,0x10
    # Line 352
    sll	$at,$a1,0x10
    # Line 351
    ori	$v1,$v1,0x92
    sw	$v1,16384($zero)
    # Line 352
    or	$at,$at,$v0
    # Line 353
    jr	$ra
    # Line 352
    sw	$at,16384($zero)
.end __glkonim_Vertex3s

# Function: __glkonim_Vertex3sv
# Declared: Line 354 (Source lines: 355-357)
# Address: 0x0da65c50 - 0x0da65c78 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Vertex3sv
.ent __glkonim_Vertex3sv
__glkonim_Vertex3sv:
    # Line 355
    lh	$v1,0($a0)
    # Line 356
    lh	$v0,2($a0)
    lhu	$at,4($a0)
    # Line 355
    sll	$v1,$v1,0x10
    # Line 356
    sll	$v0,$v0,0x10
    # Line 355
    ori	$v1,$v1,0x92
    sw	$v1,16384($zero)
    # Line 356
    or	$at,$at,$v0
    # Line 357
    jr	$ra
    # Line 356
    sw	$at,16384($zero)
.end __glkonim_Vertex3sv

# Function: __glkonim_Vertex4d
# Declared: Line 358 (Source lines: 359-363)
# Address: 0x0da65c80 - 0x0da65c9c (Size: 28 bytes, Frame: 0)
.globl __glkonim_Vertex4d
.ent __glkonim_Vertex4d
__glkonim_Vertex4d:
    # Line 359
    li	$at,147
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 360
    sdc1	$f13,16384($zero)
    # Line 361
    sdc1	$f14,16384($zero)
    # Line 363
    jr	$ra
    # Line 362
    sdc1	$f15,16384($zero)
.end __glkonim_Vertex4d

# Function: __glkonim_Vertex4f
# Declared: Line 364 (Source lines: 365-369)
# Address: 0x0da65ca0 - 0x0da65cbc (Size: 28 bytes, Frame: 0)
.globl __glkonim_Vertex4f
.ent __glkonim_Vertex4f
__glkonim_Vertex4f:
    # Line 365
    li	$at,148
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 366
    swc1	$f13,16384($zero)
    # Line 367
    swc1	$f14,16384($zero)
    # Line 369
    jr	$ra
    # Line 368
    swc1	$f15,16384($zero)
.end __glkonim_Vertex4f

# Function: __glkonim_Vertex4i
# Declared: Line 370 (Source lines: 371-375)
# Address: 0x0da65cc0 - 0x0da65cdc (Size: 28 bytes, Frame: 0)
.globl __glkonim_Vertex4i
.ent __glkonim_Vertex4i
__glkonim_Vertex4i:
    # Line 371
    li	$at,149
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 372
    sw	$a1,16384($zero)
    # Line 373
    sw	$a2,16384($zero)
    # Line 375
    jr	$ra
    # Line 374
    sw	$a3,16384($zero)
.end __glkonim_Vertex4i

# Function: __glkonim_Vertex4s
# Declared: Line 376 (Source lines: 377-380)
# Address: 0x0da65ce0 - 0x0da65d08 (Size: 40 bytes, Frame: 0)
.globl __glkonim_Vertex4s
.ent __glkonim_Vertex4s
__glkonim_Vertex4s:
    # Line 378
    andi	$v1,$a2,0xffff
    # Line 377
    sll	$a0,$a0,0x10
    # Line 378
    sll	$v0,$a1,0x10
    # Line 377
    ori	$a0,$a0,0x96
    sw	$a0,16384($zero)
    # Line 379
    sll	$at,$a3,0x10
    # Line 378
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 380
    jr	$ra
    # Line 379
    sw	$at,16384($zero)
.end __glkonim_Vertex4s

# Function: __glkonim_Vertex4sv
# Declared: Line 381 (Source lines: 382-385)
# Address: 0x0da65d10 - 0x0da65d44 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Vertex4sv
.ent __glkonim_Vertex4sv
__glkonim_Vertex4sv:
    # Line 384
    lh	$at,6($a0)
    # Line 382
    lh	$a1,0($a0)
    # Line 383
    lh	$v1,2($a0)
    lhu	$v0,4($a0)
    # Line 382
    sll	$a0,$a1,0x10
    # Line 383
    sll	$v1,$v1,0x10
    # Line 382
    ori	$a0,$a0,0x96
    sw	$a0,16384($zero)
    # Line 384
    sll	$at,$at,0x10
    # Line 383
    or	$v0,$v0,$v1
    sw	$v0,16384($zero)
    # Line 385
    jr	$ra
    # Line 384
    sw	$at,16384($zero)
.end __glkonim_Vertex4sv

# Function: __glkonim_ClipPlane
# Declared: Line 386 (Source lines: 387-396)
# Address: 0x0da65d50 - 0x0da65da8 (Size: 88 bytes, Frame: 0)
.globl __glkonim_ClipPlane
.ent __glkonim_ClipPlane
__glkonim_ClipPlane:
    # Line 387
    sltiu	$at,$a0,12288
    sltiu	$v0,$a0,12294
    bnez	$at,.L0da65d94
    # Line 391
    li	$v1,180
    # Line 387
    beqz	$v0,.L0da65d94
    nop
    # Line 391
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 395
    ldc1	$f0,24($a1)
    # Line 394
    ldc1	$f1,16($a1)
    # Line 392
    ldc1	$f3,0($a1)
    # Line 393
    ldc1	$f2,8($a1)
    # Line 392
    sdc1	$f3,16384($zero)
    # Line 393
    sdc1	$f2,16384($zero)
    # Line 394
    sdc1	$f1,16384($zero)
    # Line 396
    jr	$ra
    # Line 395
    sdc1	$f0,16384($zero)
.L0da65d94:
    # Line 388
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 396
    jr	$ra
    # Line 388
    sw	$a0,16384($zero)
.end __glkonim_ClipPlane

# Function: __glkonim_ColorMaterial
# Declared: Line 397 (Source lines: 398-400)
# Address: 0x0da65db0 - 0x0da65dc4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_ColorMaterial
.ent __glkonim_ColorMaterial
__glkonim_ColorMaterial:
    # Line 398
    li	$at,181
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 400
    jr	$ra
    # Line 399
    sw	$a1,16384($zero)
.end __glkonim_ColorMaterial

# Function: __glkonim_CullFace
# Declared: Line 401 (Source lines: 402-409)
# Address: 0x0da65dd0 - 0x0da65e14 (Size: 68 bytes, Frame: 0)
.globl __glkonim_CullFace
.ent __glkonim_CullFace
__glkonim_CullFace:
    # Line 402
    li	$at,1028
    li	$v1,1032
    beq	$a0,$at,.L0da65e04
    # Line 405
    li	$a1,228
    # Line 402
    li	$v0,1029
    beq	$a0,$v0,.L0da65e08
    # Line 408
    li	$a2,182
    # Line 402
    beq	$a0,$v1,.L0da65e08
    # Line 408
    li	$a2,182
    # Line 405
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 409
    jr	$ra
    # Line 405
    sw	$a0,16384($zero)
.L0da65e04:
    # Line 408
    li	$a2,182
.L0da65e08:
    sw	$a2,16384($zero)
    # Line 409
    jr	$ra
    # Line 408
    sw	$a0,16384($zero)
.end __glkonim_CullFace

# Function: __glkonim_Fogf
# Declared: Line 410 (Source lines: 411-420)
# Address: 0x0da65e20 - 0x0da65e68 (Size: 72 bytes, Frame: 0)
.globl __glkonim_Fogf
.ent __glkonim_Fogf
__glkonim_Fogf:
    # Line 411
    sltiu	$at,$a0,2913
    # Line 412
    li	$a1,228
    # Line 411
    bnez	$at,.L0da65e58
    # Line 415
    li	$v1,183
    # Line 411
    sltiu	$v0,$a0,2918
    beqz	$v0,.L0da65e58
    nop
    # Line 415
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 416
    swc1	$f13,16384($zero)
    # Line 417
    sw	$zero,16384($zero)
    # Line 418
    sw	$zero,16384($zero)
    # Line 420
    jr	$ra
    # Line 419
    sw	$zero,16384($zero)
.L0da65e58:
    # Line 412
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 420
    jr	$ra
    # Line 412
    sw	$a0,16384($zero)
.end __glkonim_Fogf

# Function: __glkonim_Fogfv
# Declared: Line 421 (Source lines: 422-432)
# Address: 0x0da65e70 - 0x0da65ed4 (Size: 100 bytes, Frame: 0)
.globl __glkonim_Fogfv
.ent __glkonim_Fogfv
__glkonim_Fogfv:
    # Line 422
    sltiu	$at,$a0,2913
    li	$v1,0x8199
    bnez	$at,.L0da65e88
    sltiu	$v0,$a0,2919
    bnez	$v0,.L0da65ea8
    # Line 427
    li	$a2,183
.L0da65e88:
    # Line 422
    beq	$a0,$v1,.L0da65ea8
    # Line 427
    li	$a2,183
    # Line 424
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 432
    jr	$ra
    # Line 424
    sw	$a0,16384($zero)
    # Line 427
    li	$a2,183
.L0da65ea8:
    sw	$a2,16384($zero)
    sw	$a0,16384($zero)
    # Line 431
    lwc1	$f0,12($a1)
    # Line 430
    lwc1	$f1,8($a1)
    # Line 428
    lwc1	$f3,0($a1)
    # Line 429
    lwc1	$f2,4($a1)
    # Line 428
    swc1	$f3,16384($zero)
    # Line 429
    swc1	$f2,16384($zero)
    # Line 430
    swc1	$f1,16384($zero)
    # Line 432
    jr	$ra
    # Line 431
    swc1	$f0,16384($zero)
.end __glkonim_Fogfv

# Function: __glkonim_Fogi
# Declared: Line 433 (Source lines: 434-443)
# Address: 0x0da65ee0 - 0x0da65f28 (Size: 72 bytes, Frame: 0)
.globl __glkonim_Fogi
.ent __glkonim_Fogi
__glkonim_Fogi:
    # Line 434
    sltiu	$at,$a0,2913
    sltiu	$v0,$a0,2918
    bnez	$at,.L0da65f14
    # Line 438
    li	$v1,184
    # Line 434
    beqz	$v0,.L0da65f14
    nop
    # Line 438
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 439
    sw	$a1,16384($zero)
    # Line 440
    sw	$zero,16384($zero)
    # Line 441
    sw	$zero,16384($zero)
    # Line 443
    jr	$ra
    # Line 442
    sw	$zero,16384($zero)
.L0da65f14:
    # Line 435
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 443
    jr	$ra
    # Line 435
    sw	$a0,16384($zero)
.end __glkonim_Fogi

# Function: __glkonim_Fogiv
# Declared: Line 444 (Source lines: 445-455)
# Address: 0x0da65f30 - 0x0da65f94 (Size: 100 bytes, Frame: 0)
.globl __glkonim_Fogiv
.ent __glkonim_Fogiv
__glkonim_Fogiv:
    # Line 445
    sltiu	$at,$a0,2913
    li	$v1,0x8199
    bnez	$at,.L0da65f48
    sltiu	$v0,$a0,2919
    bnez	$v0,.L0da65f68
    # Line 450
    li	$a6,184
.L0da65f48:
    # Line 445
    beq	$a0,$v1,.L0da65f68
    # Line 450
    li	$a6,184
    # Line 447
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 455
    jr	$ra
    # Line 447
    sw	$a0,16384($zero)
    # Line 450
    li	$a6,184
.L0da65f68:
    sw	$a6,16384($zero)
    sw	$a0,16384($zero)
    # Line 454
    lw	$a2,12($a1)
    # Line 453
    lw	$a3,8($a1)
    # Line 452
    lw	$a4,4($a1)
    # Line 451
    lw	$a5,0($a1)
    sw	$a5,16384($zero)
    # Line 452
    sw	$a4,16384($zero)
    # Line 453
    sw	$a3,16384($zero)
    # Line 455
    jr	$ra
    # Line 454
    sw	$a2,16384($zero)
.end __glkonim_Fogiv

# Function: __glkonim_FrontFace
# Declared: Line 456 (Source lines: 457-463)
# Address: 0x0da65fa0 - 0x0da65fd8 (Size: 56 bytes, Frame: 0)
.globl __glkonim_FrontFace
.ent __glkonim_FrontFace
__glkonim_FrontFace:
    # Line 457
    li	$at,2304
    li	$v0,2305
    beq	$a0,$at,.L0da65fc8
    # Line 459
    li	$v1,1280
    # Line 457
    beq	$a0,$v0,.L0da65fcc
    # Line 462
    li	$a1,186
    # Line 459
    li	$a0,228
    sw	$a0,16384($zero)
    # Line 463
    jr	$ra
    # Line 459
    sw	$v1,16384($zero)
.L0da65fc8:
    # Line 462
    li	$a1,186
.L0da65fcc:
    sw	$a1,16384($zero)
    # Line 463
    jr	$ra
    # Line 462
    sw	$a0,16384($zero)
.end __glkonim_FrontFace

# Function: __glkonim_Hint
# Declared: Line 464 (Source lines: 465-471)
# Address: 0x0da65fe0 - 0x0da6601c (Size: 60 bytes, Frame: 0)
.globl __glkonim_Hint
.ent __glkonim_Hint
__glkonim_Hint:
    # Line 465
    sltiu	$at,$a1,4352
    sltiu	$v0,$a1,4355
    bnez	$at,.L0da66008
    # Line 469
    li	$v1,187
    # Line 465
    beqz	$v0,.L0da66008
    nop
    # Line 469
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 471
    jr	$ra
    # Line 470
    sw	$a1,16384($zero)
.L0da66008:
    # Line 466
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 471
    jr	$ra
    # Line 466
    sw	$a0,16384($zero)
.end __glkonim_Hint

# Function: __glkonim_Lightf
# Declared: Line 472 (Source lines: 473-483)
# Address: 0x0da66020 - 0x0da6606c (Size: 76 bytes, Frame: 0)
.globl __glkonim_Lightf
.ent __glkonim_Lightf
__glkonim_Lightf:
    # Line 473
    sltiu	$at,$a1,4613
    sltiu	$v0,$a1,4618
    bnez	$at,.L0da66058
    # Line 477
    li	$v1,7
    # Line 473
    beqz	$v0,.L0da66058
    nop
    # Line 477
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 478
    sw	$a1,16384($zero)
    # Line 479
    swc1	$f14,16384($zero)
    # Line 480
    sw	$zero,16384($zero)
    # Line 481
    sw	$zero,16384($zero)
    # Line 483
    jr	$ra
    # Line 482
    sw	$zero,16384($zero)
.L0da66058:
    # Line 474
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 483
    jr	$ra
    # Line 474
    sw	$a0,16384($zero)
.end __glkonim_Lightf

# Function: __glkonim_Lightfv
# Declared: Line 484 (Source lines: 485-491)
# Address: 0x0da66070 - 0x0da660a4 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Lightfv
.ent __glkonim_Lightfv
__glkonim_Lightfv:
    # Line 485
    li	$at,7
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 486
    sw	$a1,16384($zero)
    # Line 490
    lwc1	$f0,12($a2)
    # Line 489
    lwc1	$f1,8($a2)
    # Line 487
    lwc1	$f3,0($a2)
    # Line 488
    lwc1	$f2,4($a2)
    # Line 487
    swc1	$f3,16384($zero)
    # Line 488
    swc1	$f2,16384($zero)
    # Line 489
    swc1	$f1,16384($zero)
    # Line 491
    jr	$ra
    # Line 490
    swc1	$f0,16384($zero)
.end __glkonim_Lightfv

# Function: __glkonim_Lighti
# Declared: Line 492 (Source lines: 493-503)
# Address: 0x0da660b0 - 0x0da660fc (Size: 76 bytes, Frame: 0)
.globl __glkonim_Lighti
.ent __glkonim_Lighti
__glkonim_Lighti:
    # Line 493
    sltiu	$at,$a1,4613
    sltiu	$v0,$a1,4618
    bnez	$at,.L0da660e8
    # Line 497
    li	$v1,8
    # Line 493
    beqz	$v0,.L0da660e8
    nop
    # Line 497
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 498
    sw	$a1,16384($zero)
    # Line 499
    sw	$a2,16384($zero)
    # Line 500
    sw	$zero,16384($zero)
    # Line 501
    sw	$zero,16384($zero)
    # Line 503
    jr	$ra
    # Line 502
    sw	$zero,16384($zero)
.L0da660e8:
    # Line 494
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 503
    jr	$ra
    # Line 494
    sw	$a0,16384($zero)
.end __glkonim_Lighti

# Function: __glkonim_Lightiv
# Declared: Line 504 (Source lines: 505-511)
# Address: 0x0da66100 - 0x0da66134 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Lightiv
.ent __glkonim_Lightiv
__glkonim_Lightiv:
    # Line 505
    li	$a3,8
    sw	$a3,16384($zero)
    sw	$a0,16384($zero)
    # Line 506
    sw	$a1,16384($zero)
    # Line 510
    lw	$at,12($a2)
    # Line 509
    lw	$v0,8($a2)
    # Line 508
    lw	$v1,4($a2)
    # Line 507
    lw	$a2,0($a2)
    sw	$a2,16384($zero)
    # Line 508
    sw	$v1,16384($zero)
    # Line 509
    sw	$v0,16384($zero)
    # Line 511
    jr	$ra
    # Line 510
    sw	$at,16384($zero)
.end __glkonim_Lightiv

# Function: __glkonim_LightModelf
# Declared: Line 512 (Source lines: 513-522)
# Address: 0x0da66140 - 0x0da66188 (Size: 72 bytes, Frame: 0)
.globl __glkonim_LightModelf
.ent __glkonim_LightModelf
__glkonim_LightModelf:
    # Line 513
    sltiu	$at,$a0,2897
    # Line 514
    li	$a1,228
    # Line 513
    bnez	$at,.L0da66178
    # Line 517
    li	$v1,9
    # Line 513
    sltiu	$v0,$a0,2899
    beqz	$v0,.L0da66178
    nop
    # Line 517
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 518
    swc1	$f13,16384($zero)
    # Line 519
    sw	$zero,16384($zero)
    # Line 520
    sw	$zero,16384($zero)
    # Line 522
    jr	$ra
    # Line 521
    sw	$zero,16384($zero)
.L0da66178:
    # Line 514
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 522
    jr	$ra
    # Line 514
    sw	$a0,16384($zero)
.end __glkonim_LightModelf

# Function: __glkonim_LightModelfv
# Declared: Line 523 (Source lines: 524-529)
# Address: 0x0da66190 - 0x0da661c0 (Size: 48 bytes, Frame: 0)
.globl __glkonim_LightModelfv
.ent __glkonim_LightModelfv
__glkonim_LightModelfv:
    # Line 524
    li	$at,9
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 528
    lwc1	$f0,12($a1)
    # Line 527
    lwc1	$f1,8($a1)
    # Line 525
    lwc1	$f3,0($a1)
    # Line 526
    lwc1	$f2,4($a1)
    # Line 525
    swc1	$f3,16384($zero)
    # Line 526
    swc1	$f2,16384($zero)
    # Line 527
    swc1	$f1,16384($zero)
    # Line 529
    jr	$ra
    # Line 528
    swc1	$f0,16384($zero)
.end __glkonim_LightModelfv

# Function: __glkonim_LightModeli
# Declared: Line 530 (Source lines: 531-540)
# Address: 0x0da661c0 - 0x0da66208 (Size: 72 bytes, Frame: 0)
.globl __glkonim_LightModeli
.ent __glkonim_LightModeli
__glkonim_LightModeli:
    # Line 531
    sltiu	$at,$a0,2897
    sltiu	$v0,$a0,2899
    bnez	$at,.L0da661f4
    # Line 535
    li	$v1,10
    # Line 531
    beqz	$v0,.L0da661f4
    nop
    # Line 535
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 536
    sw	$a1,16384($zero)
    # Line 537
    sw	$zero,16384($zero)
    # Line 538
    sw	$zero,16384($zero)
    # Line 540
    jr	$ra
    # Line 539
    sw	$zero,16384($zero)
.L0da661f4:
    # Line 532
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 540
    jr	$ra
    # Line 532
    sw	$a0,16384($zero)
.end __glkonim_LightModeli

# Function: __glkonim_LightModeliv
# Declared: Line 541 (Source lines: 542-547)
# Address: 0x0da66210 - 0x0da66240 (Size: 48 bytes, Frame: 0)
.globl __glkonim_LightModeliv
.ent __glkonim_LightModeliv
__glkonim_LightModeliv:
    # Line 542
    li	$a2,10
    sw	$a2,16384($zero)
    sw	$a0,16384($zero)
    # Line 546
    lw	$at,12($a1)
    # Line 545
    lw	$v0,8($a1)
    # Line 544
    lw	$v1,4($a1)
    # Line 543
    lw	$a1,0($a1)
    sw	$a1,16384($zero)
    # Line 544
    sw	$v1,16384($zero)
    # Line 545
    sw	$v0,16384($zero)
    # Line 547
    jr	$ra
    # Line 546
    sw	$at,16384($zero)
.end __glkonim_LightModeliv

# Function: __glkonim_LineStipple
# Declared: Line 548 (Source lines: 549-551)
# Address: 0x0da66240 - 0x0da66254 (Size: 20 bytes, Frame: 0)
.globl __glkonim_LineStipple
.ent __glkonim_LineStipple
__glkonim_LineStipple:
    # Line 549
    li	$at,188
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 551
    jr	$ra
    # Line 550
    sw	$a1,16384($zero)
.end __glkonim_LineStipple

# Function: __glkonim_Materialf
# Declared: Line 552 (Source lines: 552-563)
# Address: 0x0da66260 - 0x0da662a0 (Size: 64 bytes, Frame: 0)
.globl __glkonim_Materialf
.ent __glkonim_Materialf
__glkonim_Materialf:
    # Line 552
    li	$at,5633
    # Line 554
    li	$v0,1280
    # Line 552
    beq	$a1,$at,.L0da6627c
    # Line 554
    li	$v1,228
    sw	$v1,16384($zero)
    # Line 563
    jr	$ra
    # Line 554
    sw	$v0,16384($zero)
.L0da6627c:
    # Line 557
    li	$a2,151
    sw	$a2,16384($zero)
    sw	$a0,16384($zero)
    # Line 558
    sw	$a1,16384($zero)
    # Line 559
    swc1	$f14,16384($zero)
    # Line 560
    sw	$zero,16384($zero)
    # Line 561
    sw	$zero,16384($zero)
    # Line 563
    jr	$ra
    # Line 562
    sw	$zero,16384($zero)
.end __glkonim_Materialf

# Function: __glkonim_Materialfv
# Declared: Line 564 (Source lines: 565-571)
# Address: 0x0da662a0 - 0x0da662d4 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Materialfv
.ent __glkonim_Materialfv
__glkonim_Materialfv:
    # Line 565
    li	$at,151
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 566
    sw	$a1,16384($zero)
    # Line 570
    lwc1	$f0,12($a2)
    # Line 569
    lwc1	$f1,8($a2)
    # Line 567
    lwc1	$f3,0($a2)
    # Line 568
    lwc1	$f2,4($a2)
    # Line 567
    swc1	$f3,16384($zero)
    # Line 568
    swc1	$f2,16384($zero)
    # Line 569
    swc1	$f1,16384($zero)
    # Line 571
    jr	$ra
    # Line 570
    swc1	$f0,16384($zero)
.end __glkonim_Materialfv

# Function: __glkonim_PolygonMode
# Declared: Line 572 (Source lines: 573-584)
# Address: 0x0da662e0 - 0x0da6634c (Size: 108 bytes, Frame: 0)
.globl __glkonim_PolygonMode
.ent __glkonim_PolygonMode
__glkonim_PolygonMode:
    # Line 573
    sltiu	$v0,$a0,1030
    sltiu	$at,$a0,1028
    # Line 578
    sltiu	$a2,$a1,6912
    # Line 579
    li	$a6,228
    # Line 573
    bnez	$at,.L0da662fc
    # Line 578
    sltiu	$a3,$a1,6915
    # Line 573
    bnez	$v0,.L0da6631c
.L0da662fc:
    li	$v1,1032
    beq	$a0,$v1,.L0da66320
    # Line 582
    li	$a4,191
    # Line 575
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 584
    jr	$ra
    # Line 575
    sw	$a0,16384($zero)
.L0da6631c:
    # Line 582
    li	$a4,191
.L0da66320:
    # Line 578
    bnez	$a2,.L0da66340
    # Line 579
    li	$a5,1280
    # Line 578
    beqz	$a3,.L0da66340
    nop
    # Line 582
    sw	$a4,16384($zero)
    sw	$a0,16384($zero)
    # Line 584
    jr	$ra
    # Line 583
    sw	$a1,16384($zero)
.L0da66340:
    # Line 579
    sw	$a6,16384($zero)
    # Line 584
    jr	$ra
    # Line 579
    sw	$a5,16384($zero)
.end __glkonim_PolygonMode

# Function: __glkonim_Scissor
# Declared: Line 585 (Source lines: 585-598)
# Address: 0x0da66350 - 0x0da663a0 (Size: 80 bytes, Frame: 0)
.globl __glkonim_Scissor
.ent __glkonim_Scissor
__glkonim_Scissor:
    # Line 585
    bltz	$a2,.L0da6638c
    nop
    # Line 588
    bltz	$a3,.L0da66378
    # Line 594
    li	$at,12
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 595
    sw	$a1,16384($zero)
    # Line 596
    sw	$a2,16384($zero)
    # Line 598
    jr	$ra
    # Line 597
    sw	$a3,16384($zero)
.L0da66378:
    # Line 591
    li	$v1,228
    sw	$v1,16384($zero)
    li	$v0,1281
    # Line 598
    jr	$ra
    # Line 591
    sw	$v0,16384($zero)
.L0da6638c:
    # Line 587
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1281
    # Line 598
    jr	$ra
    # Line 587
    sw	$a0,16384($zero)
.end __glkonim_Scissor

# Function: __glkonim_ShadeModel
# Declared: Line 599 (Source lines: 600-601)
# Address: 0x0da663a0 - 0x0da663b0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ShadeModel
.ent __glkonim_ShadeModel
__glkonim_ShadeModel:
    # Line 600
    li	$at,192
    sw	$at,16384($zero)
    # Line 601
    jr	$ra
    # Line 600
    sw	$a0,16384($zero)
.end __glkonim_ShadeModel

# Function: __glkonim_TexEnvf
# Declared: Line 602 (Source lines: 602-616)
# Address: 0x0da663b0 - 0x0da66408 (Size: 88 bytes, Frame: 0)
.globl __glkonim_TexEnvf
.ent __glkonim_TexEnvf
__glkonim_TexEnvf:
    # Line 602
    li	$at,8960
    # Line 604
    li	$v1,228
    li	$v0,1280
    # Line 602
    beq	$a0,$at,.L0da663d0
    # Line 608
    li	$a2,228
    # Line 604
    sw	$v1,16384($zero)
    # Line 616
    jr	$ra
    # Line 604
    sw	$v0,16384($zero)
.L0da663d0:
    # Line 605
    li	$a0,8704
    beq	$a1,$a0,.L0da663ec
    # Line 611
    li	$a3,17
    # Line 608
    sw	$a2,16384($zero)
    li	$a1,1280
    # Line 616
    jr	$ra
    # Line 608
    sw	$a1,16384($zero)
.L0da663ec:
    # Line 611
    sw	$a3,16384($zero)
    sw	$a1,16384($zero)
    # Line 612
    swc1	$f14,16384($zero)
    # Line 613
    sw	$zero,16384($zero)
    # Line 614
    sw	$zero,16384($zero)
    # Line 616
    jr	$ra
    # Line 615
    sw	$zero,16384($zero)
.end __glkonim_TexEnvf

# Function: __glkonim_TexEnvfv
# Declared: Line 617 (Source lines: 617-632)
# Address: 0x0da66410 - 0x0da66494 (Size: 132 bytes, Frame: 0)
.globl __glkonim_TexEnvfv
.ent __glkonim_TexEnvfv
__glkonim_TexEnvfv:
    # Line 624
    li	$a5,1280
    # Line 617
    li	$at,8960
    # Line 622
    li	$a4,0x80be
    sltiu	$a3,$a1,8706
    # Line 617
    beq	$a0,$at,.L0da6643c
    # Line 624
    li	$a6,228
    # Line 619
    li	$v1,228
    sw	$v1,16384($zero)
    li	$v0,1280
    # Line 632
    jr	$ra
    # Line 619
    sw	$v0,16384($zero)
.L0da6643c:
    # Line 622
    sltiu	$a0,$a1,8704
    bnez	$a0,.L0da66450
    nop
    bnez	$a3,.L0da66468
    # Line 627
    li	$a7,17
.L0da66450:
    # Line 622
    beq	$a1,$a4,.L0da66468
    # Line 627
    li	$a7,17
    # Line 624
    sw	$a6,16384($zero)
    # Line 632
    jr	$ra
    # Line 624
    sw	$a5,16384($zero)
    # Line 627
    li	$a7,17
.L0da66468:
    sw	$a7,16384($zero)
    sw	$a1,16384($zero)
    # Line 631
    lwc1	$f0,12($a2)
    # Line 630
    lwc1	$f1,8($a2)
    # Line 628
    lwc1	$f3,0($a2)
    # Line 629
    lwc1	$f2,4($a2)
    # Line 628
    swc1	$f3,16384($zero)
    # Line 629
    swc1	$f2,16384($zero)
    # Line 630
    swc1	$f1,16384($zero)
    # Line 632
    jr	$ra
    # Line 631
    swc1	$f0,16384($zero)
.end __glkonim_TexEnvfv

# Function: __glkonim_TexEnvi
# Declared: Line 633 (Source lines: 633-647)
# Address: 0x0da664a0 - 0x0da664f8 (Size: 88 bytes, Frame: 0)
.globl __glkonim_TexEnvi
.ent __glkonim_TexEnvi
__glkonim_TexEnvi:
    # Line 633
    li	$at,8960
    # Line 635
    li	$v0,1280
    # Line 633
    beq	$a0,$at,.L0da664bc
    # Line 635
    li	$v1,228
    sw	$v1,16384($zero)
    # Line 647
    jr	$ra
    # Line 635
    sw	$v0,16384($zero)
.L0da664bc:
    # Line 636
    li	$a0,8704
    beq	$a1,$a0,.L0da664dc
    # Line 642
    li	$a3,18
    # Line 639
    li	$a2,228
    sw	$a2,16384($zero)
    li	$a1,1280
    # Line 647
    jr	$ra
    # Line 639
    sw	$a1,16384($zero)
.L0da664dc:
    # Line 642
    sw	$a3,16384($zero)
    sw	$a1,16384($zero)
    # Line 643
    sw	$a2,16384($zero)
    # Line 644
    sw	$zero,16384($zero)
    # Line 645
    sw	$zero,16384($zero)
    # Line 647
    jr	$ra
    # Line 646
    sw	$zero,16384($zero)
.end __glkonim_TexEnvi

# Function: __glkonim_TexEnviv
# Declared: Line 648 (Source lines: 648-663)
# Address: 0x0da66500 - 0x0da66584 (Size: 132 bytes, Frame: 0)
.globl __glkonim_TexEnviv
.ent __glkonim_TexEnviv
__glkonim_TexEnviv:
    # Line 655
    li	$a5,1280
    # Line 648
    li	$at,8960
    # Line 653
    li	$a4,0x80be
    sltiu	$a3,$a1,8706
    # Line 648
    beq	$a0,$at,.L0da6652c
    # Line 655
    li	$a6,228
    # Line 650
    li	$v1,228
    sw	$v1,16384($zero)
    li	$v0,1280
    # Line 663
    jr	$ra
    # Line 650
    sw	$v0,16384($zero)
.L0da6652c:
    # Line 653
    sltiu	$a0,$a1,8704
    bnez	$a0,.L0da66540
    nop
    bnez	$a3,.L0da66558
    # Line 658
    li	$t3,18
.L0da66540:
    # Line 653
    beq	$a1,$a4,.L0da66558
    # Line 658
    li	$t3,18
    # Line 655
    sw	$a6,16384($zero)
    # Line 663
    jr	$ra
    # Line 655
    sw	$a5,16384($zero)
    # Line 658
    li	$t3,18
.L0da66558:
    sw	$t3,16384($zero)
    sw	$a1,16384($zero)
    # Line 662
    lw	$a7,12($a2)
    # Line 661
    lw	$t0,8($a2)
    # Line 660
    lw	$t1,4($a2)
    # Line 659
    lw	$t2,0($a2)
    sw	$t2,16384($zero)
    # Line 660
    sw	$t1,16384($zero)
    # Line 661
    sw	$t0,16384($zero)
    # Line 663
    jr	$ra
    # Line 662
    sw	$a7,16384($zero)
.end __glkonim_TexEnviv

# Function: __glkonim_TexGend
# Declared: Line 664 (Source lines: 665-674)
# Address: 0x0da66590 - 0x0da665c4 (Size: 52 bytes, Frame: 0)
.globl __glkonim_TexGend
.ent __glkonim_TexGend
__glkonim_TexGend:
    # Line 665
    li	$at,20
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 666
    sw	$a1,16384($zero)
    # Line 667
    trunc.w.d	$f0,$f14
    swc1	$f0,16384($zero)
    # Line 668
    sw	$zero,16384($zero)
    # Line 669
    sw	$zero,16384($zero)
    # Line 670
    sw	$zero,16384($zero)
    # Line 671
    sw	$zero,16384($zero)
    # Line 672
    sw	$zero,16384($zero)
    # Line 674
    jr	$ra
    # Line 673
    sw	$zero,16384($zero)
.end __glkonim_TexGend

# Function: __glkonim_TexGenf
# Declared: Line 675 (Source lines: 676-685)
# Address: 0x0da665d0 - 0x0da66604 (Size: 52 bytes, Frame: 0)
.globl __glkonim_TexGenf
.ent __glkonim_TexGenf
__glkonim_TexGenf:
    # Line 676
    li	$at,20
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 677
    sw	$a1,16384($zero)
    # Line 678
    trunc.w.s	$f0,$f14
    swc1	$f0,16384($zero)
    # Line 679
    sw	$zero,16384($zero)
    # Line 680
    sw	$zero,16384($zero)
    # Line 681
    sw	$zero,16384($zero)
    # Line 682
    sw	$zero,16384($zero)
    # Line 683
    sw	$zero,16384($zero)
    # Line 685
    jr	$ra
    # Line 684
    sw	$zero,16384($zero)
.end __glkonim_TexGenf

# Function: __glkonim_TexGeni
# Declared: Line 686 (Source lines: 687-696)
# Address: 0x0da66610 - 0x0da66640 (Size: 48 bytes, Frame: 0)
.globl __glkonim_TexGeni
.ent __glkonim_TexGeni
__glkonim_TexGeni:
    # Line 687
    li	$at,20
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 688
    sw	$a1,16384($zero)
    # Line 689
    sw	$a2,16384($zero)
    # Line 690
    sw	$zero,16384($zero)
    # Line 691
    sw	$zero,16384($zero)
    # Line 692
    sw	$zero,16384($zero)
    # Line 693
    sw	$zero,16384($zero)
    # Line 694
    sw	$zero,16384($zero)
    # Line 696
    jr	$ra
    # Line 695
    sw	$zero,16384($zero)
.end __glkonim_TexGeni

# Function: __glkonim_InitNames
# Declared: Line 697 (Source lines: 698-699)
# Address: 0x0da66640 - 0x0da66650 (Size: 16 bytes, Frame: 0)
.globl __glkonim_InitNames
.ent __glkonim_InitNames
__glkonim_InitNames:
    # Line 698
    li	$at,268
    sw	$at,16384($zero)
    # Line 699
    jr	$ra
    # Line 698
    sw	$zero,16384($zero)
.end __glkonim_InitNames

# Function: __glkonim_LoadName
# Declared: Line 700 (Source lines: 701-702)
# Address: 0x0da66650 - 0x0da66660 (Size: 16 bytes, Frame: 0)
.globl __glkonim_LoadName
.ent __glkonim_LoadName
__glkonim_LoadName:
    # Line 701
    li	$at,269
    sw	$at,16384($zero)
    # Line 702
    jr	$ra
    # Line 701
    sw	$a0,16384($zero)
.end __glkonim_LoadName

# Function: __glkonim_PassThrough
# Declared: Line 703 (Source lines: 704-705)
# Address: 0x0da66660 - 0x0da66670 (Size: 16 bytes, Frame: 0)
.globl __glkonim_PassThrough
.ent __glkonim_PassThrough
__glkonim_PassThrough:
    # Line 704
    li	$at,193
    sw	$at,16384($zero)
    # Line 705
    jr	$ra
    # Line 704
    swc1	$f12,16384($zero)
.end __glkonim_PassThrough

# Function: __glkonim_PopName
# Declared: Line 706 (Source lines: 707-708)
# Address: 0x0da66670 - 0x0da66680 (Size: 16 bytes, Frame: 0)
.globl __glkonim_PopName
.ent __glkonim_PopName
__glkonim_PopName:
    # Line 707
    li	$at,194
    sw	$at,16384($zero)
    # Line 708
    jr	$ra
    # Line 707
    sw	$zero,16384($zero)
.end __glkonim_PopName

# Function: __glkonim_PushName
# Declared: Line 709 (Source lines: 710-711)
# Address: 0x0da66680 - 0x0da66690 (Size: 16 bytes, Frame: 0)
.globl __glkonim_PushName
.ent __glkonim_PushName
__glkonim_PushName:
    # Line 710
    li	$at,195
    sw	$at,16384($zero)
    # Line 711
    jr	$ra
    # Line 710
    sw	$a0,16384($zero)
.end __glkonim_PushName

# Function: __glkonim_DrawBuffer
# Declared: Line 712 (Source lines: 713-714)
# Address: 0x0da66690 - 0x0da666a0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_DrawBuffer
.ent __glkonim_DrawBuffer
__glkonim_DrawBuffer:
    # Line 713
    li	$at,196
    sw	$at,16384($zero)
    # Line 714
    jr	$ra
    # Line 713
    sw	$a0,16384($zero)
.end __glkonim_DrawBuffer

# Function: __glkonim_ClearIndex
# Declared: Line 715 (Source lines: 716-717)
# Address: 0x0da666a0 - 0x0da666b0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ClearIndex
.ent __glkonim_ClearIndex
__glkonim_ClearIndex:
    # Line 716
    li	$at,28
    sw	$at,16384($zero)
    # Line 717
    jr	$ra
    # Line 716
    swc1	$f12,16384($zero)
.end __glkonim_ClearIndex

# Function: __glkonim_ClearStencil
# Declared: Line 718 (Source lines: 719-720)
# Address: 0x0da666b0 - 0x0da666c0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ClearStencil
.ent __glkonim_ClearStencil
__glkonim_ClearStencil:
    # Line 719
    li	$at,30
    sw	$at,16384($zero)
    # Line 720
    jr	$ra
    # Line 719
    sw	$a0,16384($zero)
.end __glkonim_ClearStencil

# Function: __glkonim_StencilMask
# Declared: Line 721 (Source lines: 722-723)
# Address: 0x0da666c0 - 0x0da666d0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_StencilMask
.ent __glkonim_StencilMask
__glkonim_StencilMask:
    # Line 722
    li	$at,32
    sw	$at,16384($zero)
    # Line 723
    jr	$ra
    # Line 722
    sw	$a0,16384($zero)
.end __glkonim_StencilMask

# Function: __glkonim_ColorMask
# Declared: Line 724 (Source lines: 725-729)
# Address: 0x0da666d0 - 0x0da666ec (Size: 28 bytes, Frame: 0)
.globl __glkonim_ColorMask
.ent __glkonim_ColorMask
__glkonim_ColorMask:
    # Line 725
    li	$at,33
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 726
    sw	$a1,16384($zero)
    # Line 727
    sw	$a2,16384($zero)
    # Line 729
    jr	$ra
    # Line 728
    sw	$a3,16384($zero)
.end __glkonim_ColorMask

# Function: __glkonim_DepthMask
# Declared: Line 730 (Source lines: 731-732)
# Address: 0x0da666f0 - 0x0da66700 (Size: 16 bytes, Frame: 0)
.globl __glkonim_DepthMask
.ent __glkonim_DepthMask
__glkonim_DepthMask:
    # Line 731
    li	$at,34
    sw	$at,16384($zero)
    # Line 732
    jr	$ra
    # Line 731
    sw	$a0,16384($zero)
.end __glkonim_DepthMask

# Function: __glkonim_IndexMask
# Declared: Line 733 (Source lines: 734-735)
# Address: 0x0da66700 - 0x0da66710 (Size: 16 bytes, Frame: 0)
.globl __glkonim_IndexMask
.ent __glkonim_IndexMask
__glkonim_IndexMask:
    # Line 734
    li	$at,35
    sw	$at,16384($zero)
    # Line 735
    jr	$ra
    # Line 734
    sw	$a0,16384($zero)
.end __glkonim_IndexMask

# Function: __glkonim_Accum
# Declared: Line 736 (Source lines: 737-739)
# Address: 0x0da66710 - 0x0da66724 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Accum
.ent __glkonim_Accum
__glkonim_Accum:
    # Line 737
    li	$at,197
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 739
    jr	$ra
    # Line 738
    swc1	$f13,16384($zero)
.end __glkonim_Accum

# Function: __glkonim_BlendFunc
# Declared: Line 740 (Source lines: 741-758)
# Address: 0x0da66730 - 0x0da66804 (Size: 212 bytes, Frame: 0)
.globl __glkonim_BlendFunc
.ent __glkonim_BlendFunc
__glkonim_BlendFunc:
    # Line 741
    beqz	$a0,.L0da66788
    # Line 749
    sltiu	$t0,$a1,774
    # Line 741
    li	$a5,0x8004
    li	$at,1
    beq	$a0,$at,.L0da66788
    sltu	$a5,$a5,$a0
    sltiu	$a3,$a0,774
    sltiu	$v0,$a0,774
    bnez	$v0,.L0da66760
    # Line 746
    li	$at,1280
    # Line 741
    sltiu	$v1,$a0,777
    bnez	$v1,.L0da66788
.L0da66760:
    sltiu	$a2,$a0,770
    bnez	$a2,.L0da66770
    # Line 746
    li	$v0,228
    # Line 741
    bnez	$a3,.L0da66788
.L0da66770:
    li	$a4,0x8001
    sltu	$a4,$a0,$a4
    bnez	$a4,.L0da667f8
    nop
    bnez	$a5,.L0da667f8
    nop
.L0da66788:
    # Line 749
    beqz	$a1,.L0da667d4
    # Line 756
    li	$t3,203
    # Line 749
    li	$a6,1
    beq	$a1,$a6,.L0da667d4
    # Line 756
    li	$t3,203
    # Line 749
    sltiu	$a7,$a1,768
    bnez	$a7,.L0da667b4
    li	$t1,0x8001
    bnez	$t0,.L0da667d4
    # Line 756
    li	$t3,203
    # Line 749
    li	$t1,0x8001
.L0da667b4:
    sltu	$t1,$a1,$t1
    bnez	$t1,.L0da667e8
    # Line 753
    li	$t9,228
    # Line 749
    li	$t2,0x8004
    sltu	$t2,$t2,$a1
    bnez	$t2,.L0da667e8
    # Line 753
    li	$t9,228
    # Line 756
    li	$t3,203
.L0da667d4:
    sw	$t3,16384($zero)
    sw	$a0,16384($zero)
    # Line 758
    jr	$ra
    # Line 757
    sw	$a1,16384($zero)
    # Line 753
    li	$t9,228
.L0da667e8:
    sw	$t9,16384($zero)
    li	$t8,1280
    # Line 758
    jr	$ra
    # Line 753
    sw	$t8,16384($zero)
.L0da667f8:
    # Line 746
    sw	$v0,16384($zero)
    # Line 758
    jr	$ra
    # Line 746
    sw	$at,16384($zero)
.end __glkonim_BlendFunc

# Function: __glkonim_LogicOp
# Declared: Line 759 (Source lines: 760-765)
# Address: 0x0da66810 - 0x0da66848 (Size: 56 bytes, Frame: 0)
.globl __glkonim_LogicOp
.ent __glkonim_LogicOp
__glkonim_LogicOp:
    # Line 760
    sltiu	$at,$a0,5376
    # Line 761
    li	$a1,228
    # Line 760
    bnez	$at,.L0da66838
    # Line 764
    li	$v1,46
    # Line 760
    sltiu	$v0,$a0,5392
    beqz	$v0,.L0da66838
    nop
    # Line 764
    sw	$v1,16384($zero)
    # Line 765
    jr	$ra
    # Line 764
    sw	$a0,16384($zero)
.L0da66838:
    # Line 761
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 765
    jr	$ra
    # Line 761
    sw	$a0,16384($zero)
.end __glkonim_LogicOp

# Function: __glkonim_StencilFunc
# Declared: Line 766 (Source lines: 767-774)
# Address: 0x0da66850 - 0x0da66890 (Size: 64 bytes, Frame: 0)
.globl __glkonim_StencilFunc
.ent __glkonim_StencilFunc
__glkonim_StencilFunc:
    # Line 767
    sltiu	$at,$a0,512
    sltiu	$v0,$a0,520
    bnez	$at,.L0da6687c
    # Line 771
    li	$v1,204
    # Line 767
    beqz	$v0,.L0da6687c
    nop
    # Line 771
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 772
    sw	$a1,16384($zero)
    # Line 774
    jr	$ra
    # Line 773
    sw	$a2,16384($zero)
.L0da6687c:
    # Line 768
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 774
    jr	$ra
    # Line 768
    sw	$a0,16384($zero)
.end __glkonim_StencilFunc

# Function: __glkonim_StencilOp
# Declared: Line 775 (Source lines: 776-797)
# Address: 0x0da66890 - 0x0da6694c (Size: 188 bytes, Frame: 0)
.globl __glkonim_StencilOp
.ent __glkonim_StencilOp
__glkonim_StencilOp:
    # Line 776
    beqz	$a0,.L0da668cc
    sltiu	$v0,$a0,7684
    sltiu	$at,$a0,7680
    bnez	$at,.L0da668b0
    li	$v1,5386
    bnez	$v0,.L0da668d0
    # Line 782
    sltiu	$a4,$a1,7684
    # Line 776
    li	$v1,5386
.L0da668b0:
    beq	$a0,$v1,.L0da668d0
    # Line 782
    sltiu	$a4,$a1,7684
    # Line 779
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 797
    jr	$ra
    # Line 779
    sw	$a0,16384($zero)
.L0da668cc:
    # Line 782
    sltiu	$a4,$a1,7684
.L0da668d0:
    beqz	$a1,.L0da66900
    sltiu	$a3,$a1,7680
    bnez	$a3,.L0da668e8
    li	$a5,5386
    bnez	$a4,.L0da66900
    li	$a5,5386
.L0da668e8:
    beq	$a1,$a5,.L0da66900
    # Line 785
    li	$a7,228
    sw	$a7,16384($zero)
    li	$a6,1280
    # Line 797
    jr	$ra
    # Line 785
    sw	$a6,16384($zero)
.L0da66900:
    # Line 788
    beqz	$a2,.L0da66934
    sltiu	$t0,$a2,7680
    bnez	$t0,.L0da6691c
    li	$t2,5386
    sltiu	$t1,$a2,7684
    bnez	$t1,.L0da66934
    li	$t2,5386
.L0da6691c:
    beq	$a2,$t2,.L0da66934
    # Line 791
    li	$t8,228
    sw	$t8,16384($zero)
    li	$t3,1280
    # Line 797
    jr	$ra
    # Line 791
    sw	$t3,16384($zero)
.L0da66934:
    # Line 794
    li	$t9,205
    sw	$t9,16384($zero)
    sw	$a0,16384($zero)
    # Line 795
    sw	$a1,16384($zero)
    # Line 797
    jr	$ra
    # Line 796
    sw	$a2,16384($zero)
.end __glkonim_StencilOp

# Function: __glkonim_DepthFunc
# Declared: Line 798 (Source lines: 799-804)
# Address: 0x0da66950 - 0x0da66988 (Size: 56 bytes, Frame: 0)
.globl __glkonim_DepthFunc
.ent __glkonim_DepthFunc
__glkonim_DepthFunc:
    # Line 799
    sltiu	$at,$a0,512
    # Line 800
    li	$a1,228
    # Line 799
    bnez	$at,.L0da66978
    # Line 803
    li	$v1,206
    # Line 799
    sltiu	$v0,$a0,520
    beqz	$v0,.L0da66978
    nop
    # Line 803
    sw	$v1,16384($zero)
    # Line 804
    jr	$ra
    # Line 803
    sw	$a0,16384($zero)
.L0da66978:
    # Line 800
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 804
    jr	$ra
    # Line 800
    sw	$a0,16384($zero)
.end __glkonim_DepthFunc

# Function: __glkonim_ReadBuffer
# Declared: Line 805 (Source lines: 806-807)
# Address: 0x0da66990 - 0x0da669a0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ReadBuffer
.ent __glkonim_ReadBuffer
__glkonim_ReadBuffer:
    # Line 806
    li	$at,55
    sw	$at,16384($zero)
    # Line 807
    jr	$ra
    # Line 806
    sw	$a0,16384($zero)
.end __glkonim_ReadBuffer

# Function: __glkonim_DepthRange
# Declared: Line 808 (Source lines: 809-811)
# Address: 0x0da669a0 - 0x0da669b4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_DepthRange
.ent __glkonim_DepthRange
__glkonim_DepthRange:
    # Line 809
    li	$at,207
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 811
    jr	$ra
    # Line 810
    sdc1	$f13,16384($zero)
.end __glkonim_DepthRange

# Function: __glkonim_Frustum
# Declared: Line 812 (Source lines: 813-819)
# Address: 0x0da669c0 - 0x0da669e4 (Size: 36 bytes, Frame: 0)
.globl __glkonim_Frustum
.ent __glkonim_Frustum
__glkonim_Frustum:
    # Line 813
    li	$at,209
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 814
    sdc1	$f13,16384($zero)
    # Line 815
    sdc1	$f14,16384($zero)
    # Line 816
    sdc1	$f15,16384($zero)
    # Line 817
    sdc1	$f16,16384($zero)
    # Line 819
    jr	$ra
    # Line 818
    sdc1	$f17,16384($zero)
.end __glkonim_Frustum

# Function: __glkonim_LoadIdentity
# Declared: Line 820 (Source lines: 821-822)
# Address: 0x0da669f0 - 0x0da66a00 (Size: 16 bytes, Frame: 0)
.globl __glkonim_LoadIdentity
.ent __glkonim_LoadIdentity
__glkonim_LoadIdentity:
    # Line 821
    li	$at,210
    sw	$at,16384($zero)
    # Line 822
    jr	$ra
    # Line 821
    sw	$zero,16384($zero)
.end __glkonim_LoadIdentity

# Function: __glkonim_LoadMatrixf
# Declared: Line 823 (Source lines: 824-840)
# Address: 0x0da66a00 - 0x0da66a8c (Size: 140 bytes, Frame: 0)
.globl __glkonim_LoadMatrixf
.ent __glkonim_LoadMatrixf
__glkonim_LoadMatrixf:
    # Line 824
    li	$at,211
    sw	$at,16384($zero)
    # Line 839
    lwc1	$f0,60($a0)
    # Line 838
    lwc1	$f1,56($a0)
    # Line 837
    lwc1	$f2,52($a0)
    # Line 836
    lwc1	$f3,48($a0)
    # Line 835
    lwc1	$f4,44($a0)
    # Line 834
    lwc1	$f5,40($a0)
    # Line 833
    lwc1	$f6,36($a0)
    # Line 832
    lwc1	$f7,32($a0)
    # Line 831
    lwc1	$f8,28($a0)
    # Line 830
    lwc1	$f9,24($a0)
    # Line 829
    lwc1	$f10,20($a0)
    # Line 828
    lwc1	$f11,16($a0)
    # Line 827
    lwc1	$f12,12($a0)
    # Line 826
    lwc1	$f13,8($a0)
    # Line 824
    lwc1	$f15,0($a0)
    # Line 825
    lwc1	$f14,4($a0)
    # Line 824
    swc1	$f15,16384($zero)
    # Line 825
    swc1	$f14,16384($zero)
    # Line 826
    swc1	$f13,16384($zero)
    # Line 827
    swc1	$f12,16384($zero)
    # Line 828
    swc1	$f11,16384($zero)
    # Line 829
    swc1	$f10,16384($zero)
    # Line 830
    swc1	$f9,16384($zero)
    # Line 831
    swc1	$f8,16384($zero)
    # Line 832
    swc1	$f7,16384($zero)
    # Line 833
    swc1	$f6,16384($zero)
    # Line 834
    swc1	$f5,16384($zero)
    # Line 835
    swc1	$f4,16384($zero)
    # Line 836
    swc1	$f3,16384($zero)
    # Line 837
    swc1	$f2,16384($zero)
    # Line 838
    swc1	$f1,16384($zero)
    # Line 840
    jr	$ra
    # Line 839
    swc1	$f0,16384($zero)
.end __glkonim_LoadMatrixf

# Function: __glkonim_LoadMatrixd
# Declared: Line 841 (Source lines: 842-858)
# Address: 0x0da66a90 - 0x0da66b1c (Size: 140 bytes, Frame: 0)
.globl __glkonim_LoadMatrixd
.ent __glkonim_LoadMatrixd
__glkonim_LoadMatrixd:
    # Line 842
    li	$at,212
    sw	$at,16384($zero)
    # Line 857
    ldc1	$f0,120($a0)
    # Line 856
    ldc1	$f1,112($a0)
    # Line 855
    ldc1	$f2,104($a0)
    # Line 854
    ldc1	$f3,96($a0)
    # Line 853
    ldc1	$f4,88($a0)
    # Line 852
    ldc1	$f5,80($a0)
    # Line 851
    ldc1	$f6,72($a0)
    # Line 850
    ldc1	$f7,64($a0)
    # Line 849
    ldc1	$f8,56($a0)
    # Line 848
    ldc1	$f9,48($a0)
    # Line 847
    ldc1	$f10,40($a0)
    # Line 846
    ldc1	$f11,32($a0)
    # Line 845
    ldc1	$f12,24($a0)
    # Line 844
    ldc1	$f13,16($a0)
    # Line 842
    ldc1	$f15,0($a0)
    # Line 843
    ldc1	$f14,8($a0)
    # Line 842
    sdc1	$f15,16384($zero)
    # Line 843
    sdc1	$f14,16384($zero)
    # Line 844
    sdc1	$f13,16384($zero)
    # Line 845
    sdc1	$f12,16384($zero)
    # Line 846
    sdc1	$f11,16384($zero)
    # Line 847
    sdc1	$f10,16384($zero)
    # Line 848
    sdc1	$f9,16384($zero)
    # Line 849
    sdc1	$f8,16384($zero)
    # Line 850
    sdc1	$f7,16384($zero)
    # Line 851
    sdc1	$f6,16384($zero)
    # Line 852
    sdc1	$f5,16384($zero)
    # Line 853
    sdc1	$f4,16384($zero)
    # Line 854
    sdc1	$f3,16384($zero)
    # Line 855
    sdc1	$f2,16384($zero)
    # Line 856
    sdc1	$f1,16384($zero)
    # Line 858
    jr	$ra
    # Line 857
    sdc1	$f0,16384($zero)
.end __glkonim_LoadMatrixd

# Function: __glkonim_MatrixMode
# Declared: Line 859 (Source lines: 860-866)
# Address: 0x0da66b20 - 0x0da66b64 (Size: 68 bytes, Frame: 0)
.globl __glkonim_MatrixMode
.ent __glkonim_MatrixMode
__glkonim_MatrixMode:
    # Line 860
    sltiu	$at,$a0,5888
    # Line 862
    li	$a1,228
    # Line 860
    bnez	$at,.L0da66b38
    sltiu	$v0,$a0,5891
    bnez	$v0,.L0da66b58
    # Line 865
    li	$a2,208
.L0da66b38:
    # Line 860
    li	$v1,6144
    beq	$a0,$v1,.L0da66b58
    # Line 865
    li	$a2,208
    # Line 862
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 866
    jr	$ra
    # Line 862
    sw	$a0,16384($zero)
    # Line 865
    li	$a2,208
.L0da66b58:
    sw	$a2,16384($zero)
    # Line 866
    jr	$ra
    # Line 865
    sw	$a0,16384($zero)
.end __glkonim_MatrixMode

# Function: __glkonim_MultMatrixf
# Declared: Line 867 (Source lines: 868-884)
# Address: 0x0da66b70 - 0x0da66bfc (Size: 140 bytes, Frame: 0)
.globl __glkonim_MultMatrixf
.ent __glkonim_MultMatrixf
__glkonim_MultMatrixf:
    # Line 868
    li	$at,213
    sw	$at,16384($zero)
    # Line 883
    lwc1	$f0,60($a0)
    # Line 882
    lwc1	$f1,56($a0)
    # Line 881
    lwc1	$f2,52($a0)
    # Line 880
    lwc1	$f3,48($a0)
    # Line 879
    lwc1	$f4,44($a0)
    # Line 878
    lwc1	$f5,40($a0)
    # Line 877
    lwc1	$f6,36($a0)
    # Line 876
    lwc1	$f7,32($a0)
    # Line 875
    lwc1	$f8,28($a0)
    # Line 874
    lwc1	$f9,24($a0)
    # Line 873
    lwc1	$f10,20($a0)
    # Line 872
    lwc1	$f11,16($a0)
    # Line 871
    lwc1	$f12,12($a0)
    # Line 870
    lwc1	$f13,8($a0)
    # Line 868
    lwc1	$f15,0($a0)
    # Line 869
    lwc1	$f14,4($a0)
    # Line 868
    swc1	$f15,16384($zero)
    # Line 869
    swc1	$f14,16384($zero)
    # Line 870
    swc1	$f13,16384($zero)
    # Line 871
    swc1	$f12,16384($zero)
    # Line 872
    swc1	$f11,16384($zero)
    # Line 873
    swc1	$f10,16384($zero)
    # Line 874
    swc1	$f9,16384($zero)
    # Line 875
    swc1	$f8,16384($zero)
    # Line 876
    swc1	$f7,16384($zero)
    # Line 877
    swc1	$f6,16384($zero)
    # Line 878
    swc1	$f5,16384($zero)
    # Line 879
    swc1	$f4,16384($zero)
    # Line 880
    swc1	$f3,16384($zero)
    # Line 881
    swc1	$f2,16384($zero)
    # Line 882
    swc1	$f1,16384($zero)
    # Line 884
    jr	$ra
    # Line 883
    swc1	$f0,16384($zero)
.end __glkonim_MultMatrixf

# Function: __glkonim_MultMatrixd
# Declared: Line 885 (Source lines: 886-902)
# Address: 0x0da66c00 - 0x0da66c8c (Size: 140 bytes, Frame: 0)
.globl __glkonim_MultMatrixd
.ent __glkonim_MultMatrixd
__glkonim_MultMatrixd:
    # Line 886
    li	$at,214
    sw	$at,16384($zero)
    # Line 901
    ldc1	$f0,120($a0)
    # Line 900
    ldc1	$f1,112($a0)
    # Line 899
    ldc1	$f2,104($a0)
    # Line 898
    ldc1	$f3,96($a0)
    # Line 897
    ldc1	$f4,88($a0)
    # Line 896
    ldc1	$f5,80($a0)
    # Line 895
    ldc1	$f6,72($a0)
    # Line 894
    ldc1	$f7,64($a0)
    # Line 893
    ldc1	$f8,56($a0)
    # Line 892
    ldc1	$f9,48($a0)
    # Line 891
    ldc1	$f10,40($a0)
    # Line 890
    ldc1	$f11,32($a0)
    # Line 889
    ldc1	$f12,24($a0)
    # Line 888
    ldc1	$f13,16($a0)
    # Line 886
    ldc1	$f15,0($a0)
    # Line 887
    ldc1	$f14,8($a0)
    # Line 886
    sdc1	$f15,16384($zero)
    # Line 887
    sdc1	$f14,16384($zero)
    # Line 888
    sdc1	$f13,16384($zero)
    # Line 889
    sdc1	$f12,16384($zero)
    # Line 890
    sdc1	$f11,16384($zero)
    # Line 891
    sdc1	$f10,16384($zero)
    # Line 892
    sdc1	$f9,16384($zero)
    # Line 893
    sdc1	$f8,16384($zero)
    # Line 894
    sdc1	$f7,16384($zero)
    # Line 895
    sdc1	$f6,16384($zero)
    # Line 896
    sdc1	$f5,16384($zero)
    # Line 897
    sdc1	$f4,16384($zero)
    # Line 898
    sdc1	$f3,16384($zero)
    # Line 899
    sdc1	$f2,16384($zero)
    # Line 900
    sdc1	$f1,16384($zero)
    # Line 902
    jr	$ra
    # Line 901
    sdc1	$f0,16384($zero)
.end __glkonim_MultMatrixd

# Function: __glkonim_Ortho
# Declared: Line 903 (Source lines: 904-910)
# Address: 0x0da66c90 - 0x0da66cb4 (Size: 36 bytes, Frame: 0)
.globl __glkonim_Ortho
.ent __glkonim_Ortho
__glkonim_Ortho:
    # Line 904
    li	$at,215
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 905
    sdc1	$f13,16384($zero)
    # Line 906
    sdc1	$f14,16384($zero)
    # Line 907
    sdc1	$f15,16384($zero)
    # Line 908
    sdc1	$f16,16384($zero)
    # Line 910
    jr	$ra
    # Line 909
    sdc1	$f17,16384($zero)
.end __glkonim_Ortho

# Function: __glkonim_PopMatrix
# Declared: Line 911 (Source lines: 912-913)
# Address: 0x0da66cc0 - 0x0da66cd0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_PopMatrix
.ent __glkonim_PopMatrix
__glkonim_PopMatrix:
    # Line 912
    li	$at,216
    sw	$at,16384($zero)
    # Line 913
    jr	$ra
    # Line 912
    sw	$zero,16384($zero)
.end __glkonim_PopMatrix

# Function: __glkonim_PushMatrix
# Declared: Line 914 (Source lines: 915-916)
# Address: 0x0da66cd0 - 0x0da66ce0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_PushMatrix
.ent __glkonim_PushMatrix
__glkonim_PushMatrix:
    # Line 915
    li	$at,217
    sw	$at,16384($zero)
    # Line 916
    jr	$ra
    # Line 915
    sw	$zero,16384($zero)
.end __glkonim_PushMatrix

# Function: __glkonim_Rotated
# Declared: Line 917 (Source lines: 918-922)
# Address: 0x0da66ce0 - 0x0da66cfc (Size: 28 bytes, Frame: 0)
.globl __glkonim_Rotated
.ent __glkonim_Rotated
__glkonim_Rotated:
    # Line 918
    li	$at,218
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 919
    sdc1	$f13,16384($zero)
    # Line 920
    sdc1	$f14,16384($zero)
    # Line 922
    jr	$ra
    # Line 921
    sdc1	$f15,16384($zero)
.end __glkonim_Rotated

# Function: __glkonim_Rotatef
# Declared: Line 923 (Source lines: 924-928)
# Address: 0x0da66d00 - 0x0da66d1c (Size: 28 bytes, Frame: 0)
.globl __glkonim_Rotatef
.ent __glkonim_Rotatef
__glkonim_Rotatef:
    # Line 924
    li	$at,219
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 925
    swc1	$f13,16384($zero)
    # Line 926
    swc1	$f14,16384($zero)
    # Line 928
    jr	$ra
    # Line 927
    swc1	$f15,16384($zero)
.end __glkonim_Rotatef

# Function: __glkonim_Scaled
# Declared: Line 929 (Source lines: 930-933)
# Address: 0x0da66d20 - 0x0da66d38 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Scaled
.ent __glkonim_Scaled
__glkonim_Scaled:
    # Line 930
    li	$at,220
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 931
    sdc1	$f13,16384($zero)
    # Line 933
    jr	$ra
    # Line 932
    sdc1	$f14,16384($zero)
.end __glkonim_Scaled

# Function: __glkonim_Scalef
# Declared: Line 934 (Source lines: 935-938)
# Address: 0x0da66d40 - 0x0da66d58 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Scalef
.ent __glkonim_Scalef
__glkonim_Scalef:
    # Line 935
    li	$at,221
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 936
    swc1	$f13,16384($zero)
    # Line 938
    jr	$ra
    # Line 937
    swc1	$f14,16384($zero)
.end __glkonim_Scalef

# Function: __glkonim_Translated
# Declared: Line 939 (Source lines: 940-943)
# Address: 0x0da66d60 - 0x0da66d78 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Translated
.ent __glkonim_Translated
__glkonim_Translated:
    # Line 940
    li	$at,222
    sw	$at,16384($zero)
    sdc1	$f12,16384($zero)
    # Line 941
    sdc1	$f13,16384($zero)
    # Line 943
    jr	$ra
    # Line 942
    sdc1	$f14,16384($zero)
.end __glkonim_Translated

# Function: __glkonim_Translatef
# Declared: Line 944 (Source lines: 945-948)
# Address: 0x0da66d80 - 0x0da66d98 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Translatef
.ent __glkonim_Translatef
__glkonim_Translatef:
    # Line 945
    li	$at,223
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 946
    swc1	$f13,16384($zero)
    # Line 948
    jr	$ra
    # Line 947
    swc1	$f14,16384($zero)
.end __glkonim_Translatef

# Function: __glkonim_Viewport
# Declared: Line 949 (Source lines: 949-962)
# Address: 0x0da66da0 - 0x0da66df0 (Size: 80 bytes, Frame: 0)
.globl __glkonim_Viewport
.ent __glkonim_Viewport
__glkonim_Viewport:
    # Line 949
    bltz	$a2,.L0da66ddc
    nop
    # Line 952
    bltz	$a3,.L0da66dcc
    # Line 955
    li	$v1,228
    # Line 958
    li	$at,227
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 959
    sw	$a1,16384($zero)
    # Line 960
    sw	$a2,16384($zero)
    # Line 962
    jr	$ra
    # Line 961
    sw	$a3,16384($zero)
.L0da66dcc:
    # Line 955
    sw	$v1,16384($zero)
    li	$v0,1281
    # Line 962
    jr	$ra
    # Line 955
    sw	$v0,16384($zero)
.L0da66ddc:
    # Line 951
    li	$a1,228
    sw	$a1,16384($zero)
    li	$a0,1281
    # Line 962
    jr	$ra
    # Line 951
    sw	$a0,16384($zero)
.end __glkonim_Viewport

# Function: __glkonim_BlendColorEXT
# Declared: Line 963 (Source lines: 964-968)
# Address: 0x0da66df0 - 0x0da66e0c (Size: 28 bytes, Frame: 0)
.globl __glkonim_BlendColorEXT
.ent __glkonim_BlendColorEXT
__glkonim_BlendColorEXT:
    # Line 964
    li	$at,230
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 965
    swc1	$f13,16384($zero)
    # Line 966
    swc1	$f14,16384($zero)
    # Line 968
    jr	$ra
    # Line 967
    swc1	$f15,16384($zero)
.end __glkonim_BlendColorEXT

# Function: __glkonim_BlendEquationEXT
# Declared: Line 969 (Source lines: 970-971)
# Address: 0x0da66e10 - 0x0da66e20 (Size: 16 bytes, Frame: 0)
.globl __glkonim_BlendEquationEXT
.ent __glkonim_BlendEquationEXT
__glkonim_BlendEquationEXT:
    # Line 970
    li	$at,231
    sw	$at,16384($zero)
    # Line 971
    jr	$ra
    # Line 970
    sw	$a0,16384($zero)
.end __glkonim_BlendEquationEXT

# Function: __glkonim_PolygonOffsetEXT
# Declared: Line 972 (Source lines: 973-975)
# Address: 0x0da66e20 - 0x0da66e34 (Size: 20 bytes, Frame: 0)
.globl __glkonim_PolygonOffsetEXT
.ent __glkonim_PolygonOffsetEXT
__glkonim_PolygonOffsetEXT:
    # Line 973
    li	$at,283
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 975
    jr	$ra
    # Line 974
    swc1	$f13,16384($zero)
.end __glkonim_PolygonOffsetEXT

# Function: __glkonim_ResetHistogramEXT
# Declared: Line 976 (Source lines: 977-978)
# Address: 0x0da66e40 - 0x0da66e50 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ResetHistogramEXT
.ent __glkonim_ResetHistogramEXT
__glkonim_ResetHistogramEXT:
    # Line 977
    li	$at,259
    sw	$at,16384($zero)
    # Line 978
    jr	$ra
    # Line 977
    sw	$a0,16384($zero)
.end __glkonim_ResetHistogramEXT

# Function: __glkonim_ResetMinmaxEXT
# Declared: Line 979 (Source lines: 980-981)
# Address: 0x0da66e50 - 0x0da66e60 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ResetMinmaxEXT
.ent __glkonim_ResetMinmaxEXT
__glkonim_ResetMinmaxEXT:
    # Line 980
    li	$at,264
    sw	$at,16384($zero)
    # Line 981
    jr	$ra
    # Line 980
    sw	$a0,16384($zero)
.end __glkonim_ResetMinmaxEXT

# Function: __glkonim_PolygonOffset
# Declared: Line 982 (Source lines: 983-985)
# Address: 0x0da66e60 - 0x0da66e74 (Size: 20 bytes, Frame: 0)
.globl __glkonim_PolygonOffset
.ent __glkonim_PolygonOffset
__glkonim_PolygonOffset:
    # Line 983
    li	$at,360
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 985
    jr	$ra
    # Line 984
    swc1	$f13,16384($zero)
.end __glkonim_PolygonOffset

# Function: __glkonim_Indexub
# Declared: Line 986 (Source lines: 987-988)
# Address: 0x0da66e80 - 0x0da66e94 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Indexub
.ent __glkonim_Indexub
__glkonim_Indexub:
    # Line 987
    li	$v0,117
    sw	$v0,16384($zero)
    sll	$at,$a0,0x18
    # Line 988
    jr	$ra
    # Line 987
    sw	$at,16384($zero)
.end __glkonim_Indexub

# Function: __glkonim_Indexubv
# Declared: Line 989 (Source lines: 990-991)
# Address: 0x0da66ea0 - 0x0da66eb8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Indexubv
.ent __glkonim_Indexubv
__glkonim_Indexubv:
    # Line 990
    lbu	$at,0($a0)
    li	$v0,117
    sw	$v0,16384($zero)
    sll	$at,$at,0x18
    # Line 991
    jr	$ra
    # Line 990
    sw	$at,16384($zero)
.end __glkonim_Indexubv

# Function: __glkonim_SamplePatternSGIS
# Declared: Line 992 (Source lines: 993-994)
# Address: 0x0da66ec0 - 0x0da66ed0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_SamplePatternSGIS
.ent __glkonim_SamplePatternSGIS
__glkonim_SamplePatternSGIS:
    # Line 993
    li	$at,279
    sw	$at,16384($zero)
    # Line 994
    jr	$ra
    # Line 993
    sw	$a0,16384($zero)
.end __glkonim_SamplePatternSGIS

# Function: __glkonim_TagSampleBufferSGIX
# Declared: Line 996 (Source lines: 997-997)
# Address: 0x0da66ed0 - 0x0da66ed8 (Size: 8 bytes, Frame: 0)
.globl __glkonim_TagSampleBufferSGIX
.ent __glkonim_TagSampleBufferSGIX
__glkonim_TagSampleBufferSGIX:
    # Line 997
    jr	$ra
    nop
.end __glkonim_TagSampleBufferSGIX

# Function: __glkonim_ColorTableParameterfvSGI
# Declared: Line 998 (Source lines: 999-1005)
# Address: 0x0da66ee0 - 0x0da66f14 (Size: 52 bytes, Frame: 0)
.globl __glkonim_ColorTableParameterfvSGI
.ent __glkonim_ColorTableParameterfvSGI
__glkonim_ColorTableParameterfvSGI:
    # Line 999
    li	$at,235
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 1000
    sw	$a1,16384($zero)
    # Line 1004
    lwc1	$f0,12($a2)
    # Line 1003
    lwc1	$f1,8($a2)
    # Line 1001
    lwc1	$f3,0($a2)
    # Line 1002
    lwc1	$f2,4($a2)
    # Line 1001
    swc1	$f3,16384($zero)
    # Line 1002
    swc1	$f2,16384($zero)
    # Line 1003
    swc1	$f1,16384($zero)
    # Line 1005
    jr	$ra
    # Line 1004
    swc1	$f0,16384($zero)
.end __glkonim_ColorTableParameterfvSGI

# Function: __glkonim_ColorTableParameterivSGI
# Declared: Line 1006 (Source lines: 1007-1013)
# Address: 0x0da66f20 - 0x0da66f74 (Size: 84 bytes, Frame: 0)
.globl __glkonim_ColorTableParameterivSGI
.ent __glkonim_ColorTableParameterivSGI
__glkonim_ColorTableParameterivSGI:
    # Line 1009
    lw	$a4,0($a2)
    # Line 1010
    lw	$a3,4($a2)
    # Line 1011
    lw	$v1,8($a2)
    # Line 1009
    mtc1	$a4,$f3
    # Line 1012
    lw	$v0,12($a2)
    # Line 1010
    mtc1	$a3,$f2
    # Line 1011
    mtc1	$v1,$f1
    # Line 1007
    li	$at,235
    sw	$at,16384($zero)
    # Line 1012
    mtc1	$v0,$f0
    # Line 1009
    cvt.s.w	$f3,$f3
    # Line 1007
    sw	$a0,16384($zero)
    # Line 1010
    cvt.s.w	$f2,$f2
    # Line 1008
    sw	$a1,16384($zero)
    # Line 1011
    cvt.s.w	$f1,$f1
    # Line 1012
    cvt.s.w	$f0,$f0
    # Line 1009
    swc1	$f3,16384($zero)
    # Line 1010
    swc1	$f2,16384($zero)
    # Line 1011
    swc1	$f1,16384($zero)
    # Line 1013
    jr	$ra
    # Line 1012
    swc1	$f0,16384($zero)
.end __glkonim_ColorTableParameterivSGI

# Function: __glkonim_SpriteParameterfSGIX
# Declared: Line 1014 (Source lines: 1014-1027)
# Address: 0x0da66f80 - 0x0da67000 (Size: 128 bytes, Frame: 0)
.globl __glkonim_SpriteParameterfSGIX
.ent __glkonim_SpriteParameterfSGIX
__glkonim_SpriteParameterfSGIX:
    # Line 1014
    li	$v1,0x8149
    lui	$v0,0x3
    # Line 1025
    li	$a3,420
    # Line 1014
    addiu	$v0,$v0,-24488
    beq	$a0,$v1,.L0da66fac
    addu	$at,$t9,$v0
    # Line 1016
    li	$a0,228
    sw	$a0,16384($zero)
    li	$v1,1280
    # Line 1027
    jr	$ra
    # Line 1016
    sw	$v1,16384($zero)
.L0da66fac:
    # Line 1022
    li	$a2,228
    # Line 1019
    lwc1	$f0,_lit_47014c00
    c.eq.s	$f13,$f0
    lwc1	$f1,_lit_47014d00
    # Line 1022
    li	$a1,1280
    # Line 1019
    bc1t	.L0da66fec
    lwc1	$f2,_lit_47014e00
    c.eq.s $f13,$f1
    bc1t .L0da66fec
    nop
    c.eq.s $f13,$f2
    bc1t .L0da66fec
    nop
    # Line 1022
    sw	$a2,16384($zero)
    # Line 1027
    jr	$ra
    # Line 1022
    sw	$a1,16384($zero)
.L0da66fec:
    # Line 1025
    sw	$a3,16384($zero)
    sw	$a0,16384($zero)
    # Line 1026
    trunc.w.s	$f3,$f13
    # Line 1027
    jr	$ra
    # Line 1026
    swc1	$f3,16384($zero)
.end __glkonim_SpriteParameterfSGIX

# Function: __glkonim_SpriteParameteriSGIX
# Declared: Line 1028 (Source lines: 1028-1041)
# Address: 0x0da67000 - 0x0da67068 (Size: 104 bytes, Frame: 0)
.globl __glkonim_SpriteParameteriSGIX
.ent __glkonim_SpriteParameteriSGIX
__glkonim_SpriteParameteriSGIX:
    # Line 1033
    li	$a2,0x814c
    # Line 1028
    li	$at,0x8149
    # Line 1036
    li	$a5,1280
    # Line 1033
    li	$a4,0x814e
    # Line 1028
    beq	$a0,$at,.L0da6702c
    # Line 1033
    li	$a3,0x814d
    # Line 1030
    li	$v1,228
    sw	$v1,16384($zero)
    li	$v0,1280
    # Line 1041
    jr	$ra
    # Line 1030
    sw	$v0,16384($zero)
.L0da6702c:
    # Line 1036
    li	$a6,228
    # Line 1033
    beq	$a1,$a2,.L0da67058
    # Line 1039
    li	$a7,420
    # Line 1033
    beq	$a1,$a3,.L0da67058
    # Line 1039
    li	$a7,420
    # Line 1033
    beq	$a1,$a4,.L0da67058
    # Line 1039
    li	$a7,420
    # Line 1036
    sw	$a6,16384($zero)
    # Line 1041
    jr	$ra
    # Line 1036
    sw	$a5,16384($zero)
    # Line 1039
    li	$a7,420
.L0da67058:
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    # Line 1041
    jr	$ra
    # Line 1040
    sw	$a1,16384($zero)
.end __glkonim_SpriteParameteriSGIX

# Function: __glkonim_ReadInstrumentsSGIX
# Declared: Line 1042 (Source lines: 1043-1044)
# Address: 0x0da67070 - 0x0da67080 (Size: 16 bytes, Frame: 0)
.globl __glkonim_ReadInstrumentsSGIX
.ent __glkonim_ReadInstrumentsSGIX
__glkonim_ReadInstrumentsSGIX:
    # Line 1043
    li	$at,461
    sw	$at,16384($zero)
    # Line 1044
    jr	$ra
    # Line 1043
    sw	$a0,16384($zero)
.end __glkonim_ReadInstrumentsSGIX

# Function: __glkonim_StartInstrumentsSGIX
# Declared: Line 1045 (Source lines: 1046-1047)
# Address: 0x0da67080 - 0x0da67090 (Size: 16 bytes, Frame: 0)
.globl __glkonim_StartInstrumentsSGIX
.ent __glkonim_StartInstrumentsSGIX
__glkonim_StartInstrumentsSGIX:
    # Line 1046
    li	$at,441
    sw	$at,16384($zero)
    # Line 1047
    jr	$ra
    # Line 1046
    sw	$zero,16384($zero)
.end __glkonim_StartInstrumentsSGIX

# Function: __glkonim_StopInstrumentsSGIX
# Declared: Line 1048 (Source lines: 1049-1050)
# Address: 0x0da67090 - 0x0da670a0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_StopInstrumentsSGIX
.ent __glkonim_StopInstrumentsSGIX
__glkonim_StopInstrumentsSGIX:
    # Line 1049
    li	$at,442
    sw	$at,16384($zero)
    # Line 1050
    jr	$ra
    # Line 1049
    sw	$a0,16384($zero)
.end __glkonim_StopInstrumentsSGIX

# Function: __glkonim_FlushRasterSGIX
# Declared: Line 1051 (Source lines: 1052-1053)
# Address: 0x0da670a0 - 0x0da670b0 (Size: 16 bytes, Frame: 0)
.globl __glkonim_FlushRasterSGIX
.ent __glkonim_FlushRasterSGIX
__glkonim_FlushRasterSGIX:
    # Line 1052
    li	$at,460
    sw	$at,16384($zero)
    # Line 1053
    jr	$ra
    # Line 1052
    sw	$zero,16384($zero)
.end __glkonim_FlushRasterSGIX

# Function: __glkonim_ReferencePlaneSGIX
# Declared: Line 1054 (Source lines: 1055-1059)
# Address: 0x0da670b0 - 0x0da670dc (Size: 44 bytes, Frame: 0)
.globl __glkonim_ReferencePlaneSGIX
.ent __glkonim_ReferencePlaneSGIX
__glkonim_ReferencePlaneSGIX:
    # Line 1055
    li	$at,445
    sw	$at,16384($zero)
    # Line 1058
    ldc1	$f0,24($a0)
    # Line 1057
    ldc1	$f1,16($a0)
    # Line 1055
    ldc1	$f3,0($a0)
    # Line 1056
    ldc1	$f2,8($a0)
    # Line 1055
    sdc1	$f3,16384($zero)
    # Line 1056
    sdc1	$f2,16384($zero)
    # Line 1057
    sdc1	$f1,16384($zero)
    # Line 1059
    jr	$ra
    # Line 1058
    sdc1	$f0,16384($zero)
.end __glkonim_ReferencePlaneSGIX

.rdata
_lit_47014c00:
    .word 0x47014c00
_lit_47014d00:
    .word 0x47014d00
_lit_47014e00:
    .word 0x47014e00

