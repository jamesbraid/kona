# Source: ../KONA/kon_mem.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_mem.c
# Total Functions: 10

.text

# Function: __glkon_mem_alloc
# Declared: Line 15 (Source lines: 15-28)
# Address: 0x0d94d820 - 0x0d94d880 (Size: 96 bytes, Frame: 32)
.globl __glkon_mem_alloc
.ent __glkon_mem_alloc
__glkon_mem_alloc:
    # Line 16
    lw	$at,4112($zero)
    # Line 15
    addiu	$sp,$sp,-32
    # Line 23
    sw	$a4,8($sp)
    # Line 22
    sw	$a3,4($sp)
    # Line 15
    lui	$v0,0x14
    # Line 20
    sb	$a1,1($sp)
    # Line 15
    addiu	$v0,$v0,14264
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 24
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 21
    sh	$a2,2($sp)
    # Line 24
    addiu	$a2,$sp,0
    li	$a1,10010
    # Line 19
    sb	$a0,0($sp)
    # Line 15
    sd	$ra,16($sp)
    # Line 24
    jal	__glKon_ioctl
    move	$a0,$at
    ld	$ra,16($sp)
    # Line 26
    li	$v1,-1
    # Line 28
    ld	$gp,24($sp)
    addiu	$sp,$sp,32
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glkon_mem_alloc

# Function: __glkon_mem_realloc
# Declared: Line 32 (Source lines: 32-45)
# Address: 0x0d94d880 - 0x0d94d8e0 (Size: 96 bytes, Frame: 32)
.globl __glkon_mem_realloc
.ent __glkon_mem_realloc
__glkon_mem_realloc:
    # Line 33
    lw	$at,4112($zero)
    # Line 32
    addiu	$sp,$sp,-32
    # Line 40
    sw	$a4,8($sp)
    # Line 39
    sw	$a3,4($sp)
    # Line 32
    lui	$v0,0x14
    # Line 37
    sb	$a1,1($sp)
    # Line 32
    addiu	$v0,$v0,14168
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 41
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 38
    sh	$a2,2($sp)
    # Line 41
    addiu	$a2,$sp,0
    li	$a1,10014
    # Line 36
    sb	$a0,0($sp)
    # Line 32
    sd	$ra,16($sp)
    # Line 41
    jal	__glKon_ioctl
    move	$a0,$at
    ld	$ra,16($sp)
    # Line 43
    li	$v1,-1
    # Line 45
    ld	$gp,24($sp)
    addiu	$sp,$sp,32
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.end __glkon_mem_realloc

# Function: __glkon_mem_free
# Declared: Line 49 (Source lines: 49-63)
# Address: 0x0d94d8e0 - 0x0d94d954 (Size: 116 bytes, Frame: 32)
.globl __glkon_mem_free
.ent __glkon_mem_free
__glkon_mem_free:
    # Line 50
    lw	$a5,4112($zero)
    # Line 49
    move	$a6,$a1
    # Line 50
    lw	$v0,31564($a5)
    # Line 49
    move	$a4,$a0
    lui	$at,0x14
    addiu	$sp,$sp,-32
    addiu	$at,$at,14072
    sd	$gp,16($sp)
    # Line 50
    beqz	$v0,.L0d94d944
    # Line 49
    addu	$gp,$t9,$at
    # Line 59
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 58
    sb	$a6,1($sp)
    # Line 59
    addiu	$a2,$sp,0
    li	$a1,10011
    sd	$ra,24($sp)
    move	$a0,$a5
    jal	__glKon_ioctl
    # Line 57
    sb	$a4,0($sp)
    ld	$ra,24($sp)
    # Line 61
    li	$v1,-1
    # Line 63
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    movz	$v1,$zero,$v0
    jr	$ra
    move	$v0,$v1
.L0d94d944:
    # Line 56
    move	$v0,$zero
    # Line 63
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkon_mem_free

# Function: __glkon_dlist_mem_alloc
# Declared: Line 67 (Source lines: 67-68)
# Address: 0x0d94d960 - 0x0d94d9a4 (Size: 68 bytes, Frame: 16)
.globl __glkon_dlist_mem_alloc
.ent __glkon_dlist_mem_alloc
__glkon_dlist_mem_alloc:
    # Line 67
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,13944
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 68
    # lw $t9, -32464($gp) # &__glkon_mem_alloc
    move	$a4,$zero
    move	$a2,$zero
    move	$a1,$zero
    # Line 67
    move	$a3,$a0
    sd	$ra,0($sp)
    # Line 68
    bal __glkon_mem_alloc
    li	$a0,1
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_dlist_mem_alloc

# Function: __glkon_dlist_mem_realloc
# Declared: Line 72 (Source lines: 72-73)
# Address: 0x0d94d9b0 - 0x0d94d9f4 (Size: 68 bytes, Frame: 16)
.globl __glkon_dlist_mem_realloc
.ent __glkon_dlist_mem_realloc
__glkon_dlist_mem_realloc:
    # Line 72
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,13864
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 73
    # lw $t9, -32460($gp) # &__glkon_mem_realloc
    move	$a4,$zero
    move	$a2,$zero
    move	$a1,$zero
    # Line 72
    move	$a3,$a0
    sd	$ra,0($sp)
    # Line 73
    bal __glkon_mem_realloc
    li	$a0,1
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_dlist_mem_realloc

# Function: __glkon_dlist_mem_free
# Declared: Line 77 (Source lines: 77-78)
# Address: 0x0d94da00 - 0x0d94da38 (Size: 56 bytes, Frame: 16)
.globl __glkon_dlist_mem_free
.ent __glkon_dlist_mem_free
__glkon_dlist_mem_free:
    # Line 77
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,13784
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 78
    # lw $t9, -32456($gp) # &__glkon_mem_free
    move	$a1,$zero
    # Line 77
    sd	$ra,0($sp)
    # Line 78
    bal __glkon_mem_free
    li	$a0,1
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_dlist_mem_free

# Function: __glkon_texture_mem_alloc
# Declared: Line 82 (Source lines: 82-83)
# Address: 0x0d94da40 - 0x0d94da84 (Size: 68 bytes, Frame: 16)
.globl __glkon_texture_mem_alloc
.ent __glkon_texture_mem_alloc
__glkon_texture_mem_alloc:
    # Line 82
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,13720
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 83
    # lw $t9, -32464($gp) # &__glkon_mem_alloc
    move	$a4,$zero
    move	$a2,$zero
    move	$a1,$zero
    # Line 82
    move	$a3,$a0
    sd	$ra,0($sp)
    # Line 83
    bal __glkon_mem_alloc
    li	$a0,3
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_texture_mem_alloc

# Function: __glkon_texture_mem_realloc
# Declared: Line 87 (Source lines: 87-88)
# Address: 0x0d94da90 - 0x0d94dad4 (Size: 68 bytes, Frame: 16)
.globl __glkon_texture_mem_realloc
.ent __glkon_texture_mem_realloc
__glkon_texture_mem_realloc:
    # Line 87
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,13640
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 88
    # lw $t9, -32460($gp) # &__glkon_mem_realloc
    move	$a4,$zero
    move	$a2,$zero
    move	$a1,$zero
    # Line 87
    move	$a3,$a0
    sd	$ra,0($sp)
    # Line 88
    bal __glkon_mem_realloc
    li	$a0,3
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_texture_mem_realloc

# Function: __glkon_unique_per_ge_mem_alloc
# Declared: Line 92 (Source lines: 92-93)
# Address: 0x0d94dae0 - 0x0d94db24 (Size: 68 bytes, Frame: 16)
.globl __glkon_unique_per_ge_mem_alloc
.ent __glkon_unique_per_ge_mem_alloc
__glkon_unique_per_ge_mem_alloc:
    # Line 92
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,13560
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 93
    # lw $t9, -32464($gp) # &__glkon_mem_alloc
    move	$a4,$zero
    li	$a3,1
    li	$a2,1
    li	$a1,9
    # Line 92
    sd	$ra,0($sp)
    # Line 93
    bal __glkon_mem_alloc
    li	$a0,2
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_unique_per_ge_mem_alloc

# Function: __glkon_share
# Declared: Line 97 (Source lines: 97-108)
# Address: 0x0d94db30 - 0x0d94dbac (Size: 124 bytes, Frame: 32)
.globl __glkon_share
.ent __glkon_share
__glkon_share:
    # Line 99
    li	$at,0x8aac
    addu	$at,$at,$a0
    # Line 98
    lw	$a0,4112($zero)
    # Line 97
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    lui	$v0,0x14
    sd	$gp,16($sp)
    addiu	$v0,$v0,13480
    # Line 99
    lw	$at,0($at)
    # Line 97
    addu	$gp,$t9,$v0
    # Line 103
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 99
    sd	$at,8($sp)
    # Line 103
    li	$a1,10015
    # Line 102
    ld	$at,8($at)
    # Line 103
    addiu	$a2,$sp,0
    jal	__glKon_ioctl
    # Line 102
    sd	$at,0($sp)
    # Line 103
    beqz	$v0,.L0d94db8c
    # Line 108
    ld	$ra,24($sp)
    # Line 105
    li	$v0,-1
    # Line 108
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94db8c:
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    # Line 107
    ld	$v1,8($sp)
    ld	$v0,0($sp)
    # Line 108
    addiu	$sp,$sp,32
    # Line 107
    sd	$v0,8($v1)
    # Line 108
    jr	$ra
    move	$v0,$zero
.end __glkon_share

