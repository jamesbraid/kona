# Source: ../KONA/kon_get.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_get.c
# Total Functions: 30

.text

# Function: kona_get_offset
# Declared: Line 131 (Source lines: 131-164)
# Address: 0x0d9586c0 - 0x0d9587c0 (Size: 256 bytes, Frame: 16)
.ent kona_get_offset
kona_get_offset:
    # Line 141
    sltiu	$a5,$a0,12294
    # Line 138
    sltiu	$a3,$a0,10755
    # Line 131
    lw	$at,4120($zero)
    addiu	$sp,$sp,-16
    li	$v0,1
    # Line 136
    sltiu	$a1,$a0,3573
    # Line 155
    li	$t3,0x81c8
    # Line 131
    beq	$at,$v0,.L0d9587a4
    # Line 155
    sltu	$t3,$t3,$a0
    # Line 136
    sltiu	$v1,$a0,2816
    bnez	$v1,.L0d9586f4
    # Line 137
    addiu	$v0,$a0,-2816
    # Line 136
    bnez	$a1,.L0d958764
.L0d9586f4:
    # Line 145
    sltiu	$a7,$a0,16392
    # Line 138
    sltiu	$a2,$a0,10752
    bnez	$a2,.L0d958710
    # Line 149
    sltiu	$t1,$a0,24577
    # Line 138
    bnez	$a3,.L0d95878c
    # Line 139
    addiu	$v0,$a0,-9995
    # Line 149
    sltiu	$t1,$a0,24577
.L0d958710:
    # Line 141
    sltiu	$a4,$a0,12288
    bnez	$a4,.L0d958720
    # Line 142
    addiu	$v0,$a0,-11528
    # Line 141
    bnez	$a5,.L0d958794
.L0d958720:
    # Line 145
    sltiu	$a6,$a0,16384
    bnez	$a6,.L0d958738
    # Line 149
    sltiu	$t0,$a0,24576
    # Line 145
    bnez	$a7,.L0d95879c
    # Line 146
    addiu	$v0,$a0,-15618
    # Line 149
    sltiu	$t0,$a0,24576
.L0d958738:
    bnez	$t0,.L0d958744
    # Line 150
    addiu	$v0,$a0,-23802
    # Line 149
    bnez	$t1,.L0d95875c
.L0d958744:
    # Line 155
    li	$t2,0x8005
    sltu	$t2,$a0,$t2
    bnez	$t2,.L0d95876c
    # Line 156
    addiu	$v0,$a0,-31998
    # Line 155
    bnez	$t3,.L0d958770
    # Line 163
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d95875c:
    # Line 164
    jr	$ra
    addiu	$sp,$sp,16
.L0d958764:
    jr	$ra
    addiu	$sp,$sp,16
.L0d95876c:
    # Line 163
    # lw $t9, -28616($gp) # &__glSetError
.L0d958770:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 164
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,16
.L0d95878c:
    jr	$ra
    addiu	$sp,$sp,16
.L0d958794:
    jr	$ra
    addiu	$sp,$sp,16
.L0d95879c:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9587a4:
    # Line 133
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 134
    b	.L0d95875c
    li	$v0,-1
.end kona_get_offset

# Function: __glkona_wait_rdata
# Declared: Line 177 (Source lines: 177-231)
# Address: 0x0d9587c0 - 0x0d9589b8 (Size: 504 bytes, Frame: 192)
.globl __glkona_wait_rdata
.ent __glkona_wait_rdata
__glkona_wait_rdata:
    # Line 179
    lui	$v1,0x1
    lw	$v1,256($v1)
    # Line 177
    addiu	$sp,$sp,-64
    sd	$s3,32($sp)
    sd	$ra,40($sp)
    sd	$s1,48($sp)
    sd	$s2,56($sp)
    sd	$s0,16($sp)
    # Line 179
    li	$v0,-1
    # Line 177
    lui	$at,0x14
    # Line 179
    lw	$s0,4112($zero)
    lui	$a0,0x3
    sd	$gp,24($sp)
    # Line 177
    addiu	$at,$at,-30696
    # Line 179
    ori	$a0,$a0,0xd40
    # Line 177
    addu	$gp,$t9,$at
    # Line 179
    lw	$s0,31588($s0)
    # Line 196
    addiu	$v0,$v0,1
    slt	$a2,$v0,$a0
    addiu	$v0,$v0,1
.L0d958810:
    lw	$a1,0($s0)
    bnez	$a1,.L0d95883c
    slt	$a4,$v0,$a0
    beqz	$a2,.L0d95883c
    nop
    lw	$a3,0($s0)
    bnez	$a3,.L0d95883c
    addiu	$v0,$v0,1
    slt	$a2,$v0,$a0
    bnez	$a4,.L0d958810
    addiu	$v0,$v0,1
.L0d95883c:
    # Line 199
    lw	$a5,0($s0)
    beqz	$a5,.L0d9588f8
    move	$s3,$zero
.L0d958848:
    # Line 201
    lw	$a6,0($s0)
    beqz	$a6,.L0d958874
    ld	$s3,32($sp)
.L0d958854:
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    ld	$ra,40($sp)
    # Line 231
    ld	$gp,24($sp)
    # Line 230
    sw	$zero,0($s0)
    # Line 231
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d958874:
    # Line 201
    la	$a7,__iob
    move	$s3,$zero
    addiu	$t0,$s0,256
    sd	$t0,0($sp)
    addiu	$a7,$a7,32
    b	.L0d9588a4
    sd	$a7,8($sp)
.L0d958890:
    # Line 207
    beq	$s3,$t1,.L0d958930
    # Line 212
    nop	# was lw $t9, -31952($gp) # &__glKon_ioctl
.L0d958898:
    # Line 228
    lw	$t2,0($s0)
    bnez	$t2,.L0d9588f0
    addiu	$s3,$s3,1
.L0d9588a4:
    # Line 206
    # lw $t9, -18520($gp) # &_sysconf
    jal	_sysconf
    li	$a0,3
    addu	$a3,$v0,$v0
    li	$a2,0xa3d7
    srl	$t3,$a3,0x1f
    negu	$a1,$a3
    dsll	$a2,$a2,0x10
    ori	$a2,$a2,0xa3e
    movz	$a1,$a3,$t3
    multu	$a1,$a2
    # lw $t9, -18516($gp) # &sginap
    mfhi	$a0
    sra	$a0,$a0,0x6
    negu	$t8,$a0
    jal	sginap
    movn	$a0,$t8,$t3
    # Line 207
    beqz	$v0,.L0d958890
    li	$t1,3000
.L0d9588f0:
    b	.L0d958854
    ld	$s3,32($sp)
.L0d9588f8:
    # Line 200
    # lw $t9, -18516($gp) # &sginap
.L0d9588fc:
    jal	sginap
    move	$a0,$zero
    # Line 201
    lw	$a3,0($s0)
    bnez	$a3,.L0d958848
    addiu	$s3,$s3,1
    bnez	$v0,.L0d958848
    lui	$a4,0x3
    ori	$a4,$a4,0xd40
    slt	$a4,$s3,$a4
    bnez	$a4,.L0d9588fc
    # Line 200
    nop	# was lw $t9, -18516($gp) # &sginap
    b	.L0d958848
    nop
.L0d958930:
    # Line 212
    move	$a2,$zero
    li	$a1,10017
    bal __glKon_ioctl
    lw	$a0,4112($zero)
    # Line 221
    # lw $t9, -18560($gp) # &fprintf
    la	$a1,.rodata
    ld	$a0,8($sp)
    jal	fprintf
    addiu	$a1,$a1,-6688
    li	$s2,1
    b	.L0d958970
    move	$s1,$s0
.L0d958960:
    # Line 222
    ld	$a2,0($sp)
.L0d958964:
    addiu	$s1,$s1,4
    beq	$s1,$a2,.L0d958898
    addiu	$s2,$s2,1
.L0d958970:
    # Line 223
    # lw $t9, -18560($gp) # &fprintf
    ld	$a0,8($sp)
    lw	$a2,0($s1)
    jal	fprintf
    addiu	$a1,$gp,-16352
    sra	$a4,$s2,0x1f
    xor	$a3,$s2,$a4
    subu	$a3,$a3,$a4
    andi	$a3,$a3,0x7
    xor	$a3,$a3,$a4
    subu	$a3,$a3,$a4
    bnez	$a3,.L0d958960
    # Line 225
    nop	# was lw $t9, -18560($gp) # &fprintf
    ld	$a0,8($sp)
    jal	fprintf
    addiu	$a1,$gp,-16344
    b	.L0d958964
    # Line 222
    ld	$a2,0($sp)
.end __glkona_wait_rdata

# Function: kona_get
# Declared: Line 234 (Source lines: 234-248)
# Address: 0x0d9589c0 - 0x0d9589fc (Size: 60 bytes, Frame: 16)
.ent kona_get
kona_get:
    # Line 246
    li	$at,76
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    # Line 234
    addiu	$sp,$sp,-16
    # Line 247
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 234
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 247
    bal __glkona_wait_rdata
    # Line 235
    lw	$s8,4112($zero)
    ld	$ra,0($sp)
    # Line 248
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    addiu	$sp,$sp,16
    jr	$ra
    addiu	$v0,$v0,8
.end kona_get

# Function: __glkon_get_special
# Declared: Line 252 (Source lines: 252-266)
# Address: 0x0d958a00 - 0x0d958a4c (Size: 76 bytes, Frame: 32)
.globl __glkon_get_special
.ent __glkon_get_special
__glkon_get_special:
    # Line 264
    sw	$a0,16384($zero)
    # Line 252
    lui	$at,0x14
    # Line 264
    sw	$a1,16384($zero)
    # Line 252
    addiu	$sp,$sp,-32
    addiu	$at,$at,-31272
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 265
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 252
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 265
    bal __glkona_wait_rdata
    # Line 253
    lw	$s8,4112($zero)
    # Line 266
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glkon_get_special

# Function: __glkon_get_special2
# Declared: Line 270 (Source lines: 270-284)
# Address: 0x0d958a50 - 0x0d958aa0 (Size: 80 bytes, Frame: 32)
.globl __glkon_get_special2
.ent __glkon_get_special2
__glkon_get_special2:
    # Line 282
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 270
    lui	$at,0x14
    # Line 282
    sw	$a2,16384($zero)
    # Line 270
    addiu	$sp,$sp,-32
    addiu	$at,$at,-31352
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 283
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 270
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 283
    bal __glkona_wait_rdata
    # Line 271
    lw	$s8,4112($zero)
    # Line 284
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glkon_get_special2

# Function: __glkon_get_special3
# Declared: Line 288 (Source lines: 288-302)
# Address: 0x0d958aa0 - 0x0d958af4 (Size: 84 bytes, Frame: 32)
.globl __glkon_get_special3
.ent __glkon_get_special3
__glkon_get_special3:
    # Line 300
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    # Line 288
    lui	$at,0x14
    # Line 300
    sw	$a3,16384($zero)
    # Line 288
    addiu	$sp,$sp,-32
    addiu	$at,$at,-31432
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 301
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 288
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 301
    bal __glkona_wait_rdata
    # Line 289
    lw	$s8,4112($zero)
    # Line 302
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glkon_get_special3

# Function: __glkon_get_special4
# Declared: Line 306 (Source lines: 306-320)
# Address: 0x0d958b00 - 0x0d958b58 (Size: 88 bytes, Frame: 32)
.globl __glkon_get_special4
.ent __glkon_get_special4
__glkon_get_special4:
    # Line 318
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    sw	$a3,16384($zero)
    # Line 306
    lui	$at,0x14
    # Line 318
    sw	$a4,16384($zero)
    # Line 306
    addiu	$sp,$sp,-32
    addiu	$at,$at,-31528
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 319
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 306
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 319
    bal __glkona_wait_rdata
    # Line 307
    lw	$s8,4112($zero)
    # Line 320
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glkon_get_special4

# Function: __glkonim_GetPointervEXT
# Declared: Line 323 (Source lines: 325-360)
# Address: 0x0d958b60 - 0x0d958cfc (Size: 412 bytes, Frame: 16)
.globl __glkonim_GetPointervEXT
.ent __glkonim_GetPointervEXT
__glkonim_GetPointervEXT:
    # Line 328
    li	$t0,0x8180
    # Line 325
    addiu	$sp,$sp,-16
    # Line 326
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 325
    lui	$v1,0x14
    # Line 328
    li	$t8,0x808f
    sd	$ra,8($sp)
    # Line 325
    addiu	$v1,$v1,-31624
    sd	$gp,0($sp)
    # Line 326
    beq	$at,$v0,.L0d958ce8
    # Line 325
    addu	$gp,$t9,$v1
    # Line 328
    li	$a4,0x8090
    sltiu	$at,$a0,3572
    sltu	$a2,$a0,$a4
    sltu	$a5,$a4,$a0
    li	$a4,0x8093
    bnez	$a2,.L0d958bdc
    sltu	$a6,$a0,$a4
    beqz	$a5,.L0d958c98
    nop
    bnez	$a6,.L0d958c54
    move	$ra,$ra
    sltu	$a7,$a4,$a0
    beqz	$a7,.L0d958cdc
    nop
    bne	$a0,$t0,.L0d958c14
    # Line 359
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 355
    lw	$t1,31608($a3)
    b	.L0d958c1c
    sw	$t1,0($a1)
.L0d958bdc:
    # Line 328
    li	$a4,0x808e
    sltu	$t2,$a0,$a4
    bnez	$t2,.L0d958c2c
    sltu	$t3,$a4,$a0
    beqz	$t3,.L0d958cc4
    nop
    bne	$a0,$t8,.L0d958c10
    move	$ra,$ra
    # Line 360
    ld	$gp,0($sp)
    # Line 333
    lw	$t9,5116($a3)
    # Line 360
    addiu	$sp,$sp,16
    jr	$ra
    # Line 333
    sw	$t9,0($a1)
.L0d958c10:
    # Line 359
    # lw $t9, -28616($gp) # &__glSetError
.L0d958c14:
    jal	__glSetError
    li	$a0,1280
.L0d958c1c:
    ld	$ra,8($sp)
.L0d958c20:
    # Line 360
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d958c2c:
    # Line 328
    sltiu	$ra,$a0,3571
    bnez	$ra,.L0d958c84
    li	$a4,3568
    beqz	$at,.L0d958c10
    ld	$ra,8($sp)
    # Line 360
    ld	$gp,0($sp)
    # Line 351
    lw	$v0,4904($a3)
    # Line 360
    addiu	$sp,$sp,16
    jr	$ra
    # Line 351
    sw	$v0,0($a1)
.L0d958c54:
    # Line 328
    li	$a4,0x8092
    sltu	$v1,$a0,$a4
    li	$a7,0x8091
    bnez	$v1,.L0d958cb0
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0d958c14
    # Line 359
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 360
    ld	$gp,0($sp)
    # Line 342
    lw	$a3,5192($a3)
    # Line 360
    addiu	$sp,$sp,16
    jr	$ra
    # Line 342
    sw	$a3,0($a1)
.L0d958c84:
    # Line 328
    bne	$a0,$a4,.L0d958c14
    # Line 359
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 348
    lw	$a5,4872($a3)
    b	.L0d958c1c
    sw	$a5,0($a1)
.L0d958c98:
    # Line 360
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 336
    lw	$a6,5140($a3)
    # Line 360
    addiu	$sp,$sp,16
    jr	$ra
    # Line 336
    sw	$a6,0($a1)
.L0d958cb0:
    # Line 328
    bne	$a0,$a7,.L0d958c14
    # Line 359
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 339
    lw	$t0,5168($a3)
    b	.L0d958c1c
    sw	$t0,0($a1)
.L0d958cc4:
    # Line 360
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 330
    lw	$t1,5088($a3)
    # Line 360
    addiu	$sp,$sp,16
    jr	$ra
    # Line 330
    sw	$t1,0($a1)
.L0d958cdc:
    # Line 345
    lw	$t2,5220($a3)
    b	.L0d958c1c
    sw	$t2,0($a1)
.L0d958ce8:
    # Line 326
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d958c20
    ld	$ra,8($sp)
.end __glkonim_GetPointervEXT

# Function: __glkonim_GetBooleanv
# Declared: Line 365 (Source lines: 365-397)
# Address: 0x0d958d00 - 0x0d958f10 (Size: 528 bytes, Frame: 208)
.globl __glkonim_GetBooleanv
.ent __glkonim_GetBooleanv
__glkonim_GetBooleanv:
    # Line 365
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    lui	$ra,0x14
    addiu	$ra,$ra,-32040
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 371
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 366
    lw	$at,4112($zero)
    # Line 365
    sd	$a0,16($sp)
    # Line 371
    addiu	$t9,$t9,-31040
    # Line 365
    sd	$s2,32($sp)
    move	$s2,$a1
    # Line 371
    bal __glkonle_SeparableFilter2DEXT
    # Line 366
    sd	$at,24($sp)
    sd	$s0,56($sp)
    # Line 376
    li	$ra,5
    # Line 373
    sll	$t8,$v0,0x3
    # Line 376
    li	$t9,2
    # Line 371
    bltz	$v0,.L0d958e6c
    sd	$s1,64($sp)
    # Line 373
    la	$s0,.rodata
    addiu	$s0,$s0,11024
    addu	$s0,$s0,$t8
    # Line 376
    lhu	$v0,0($s0)
    li	$s1,1
    # Line 374
    lbu	$at,3($s0)
    # Line 376
    li	$t8,4
    beqz	$v0,.L0d958ef4
    # Line 374
    sw	$at,0($sp)
    # Line 376
    beq	$v0,$s1,.L0d958e88
    li	$at,3
    beq	$v0,$t8,.L0d958e9c
    nop
    beq	$v0,$t9,.L0d958ec8
    # Line 380
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 376
    beq	$v0,$ra,.L0d958ea8
    nop
    beq	$v0,$at,.L0d958edc
    nop
.L0d958d9c:
    # Line 385
    sb	$zero,0($s2)
    lw	$v0,0($sp)
    li	$t0,4
    li	$a7,3
    li	$a6,2
    move	$a0,$zero
    lw	$a5,4($sp)
    lbu	$a4,8($sp)
    blez	$v0,.L0d958e6c
    move	$a1,$s2
    b	.L0d958f08
    # Line 388
    addiu	$a0,$a0,1
    nop
.L0d958dd0:
    # Line 391
    addiu	$a5,$a5,1
    lbu	$a4,-1($a5)
.L0d958dd8:
    # Line 397
    sltu	$a2,$zero,$a4
.L0d958ddc:
    sb	$a2,0($a1)
    # Line 388
    lw	$v1,0($sp)
    slt	$v1,$a0,$v1
    addiu	$a1,$a1,1
    beqz	$v1,.L0d958e6c
    addiu	$a0,$a0,1
    # Line 390
    lbu	$v0,2($s0)
.L0d958df8:
    andi	$v0,$v0,0xf
    beqz	$v0,.L0d958dd0
    nop
    beq	$v0,$s1,.L0d958e30
    nop
    beq	$v0,$a6,.L0d958e3c
    nop
    beq	$v0,$a7,.L0d958e54
    nop
    bne	$v0,$t0,.L0d958ddc
    # Line 397
    sltu	$a2,$zero,$a4
    # Line 395
    addiu	$a5,$a5,4
    b	.L0d958dd8
    lbu	$a4,-1($a5)
.L0d958e30:
    # Line 392
    addiu	$a5,$a5,1
    b	.L0d958dd8
    lbu	$a4,-1($a5)
.L0d958e3c:
    # Line 393
    ldc1	$f0,0($a5)
    trunc.w.d	$f0,$f0
    mfc1	$a4,$f0
    addiu	$a5,$a5,8
    b	.L0d958dd8
    andi	$a4,$a4,0xff
.L0d958e54:
    # Line 394
    lwc1	$f1,0($a5)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    addiu	$a5,$a5,4
    b	.L0d958dd8
    andi	$a4,$a4,0xff
.L0d958e6c:
    ld	$s1,64($sp)
.L0d958e70:
    ld	$ra,40($sp)
    ld	$s2,32($sp)
    ld	$s0,56($sp)
    # Line 377
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d958e88:
    # Line 378
    lw	$a6,4112($zero)
    lw	$a5,4($s0)
    addu	$a5,$a5,$a6
    b	.L0d958d9c
    sw	$a5,4($sp)
.L0d958e9c:
    # Line 379
    lw	$a7,4($s0)
    b	.L0d958d9c
    sw	$a7,4($sp)
.L0d958ea8:
    # Line 381
    lw	$t1,4($s0)
    ld	$t0,24($sp)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lw	$t0,31664($t0)
    addiu	$t0,$t0,380
    b	.L0d958d9c
    sw	$t0,4($sp)
.L0d958ec8:
    # Line 380
    addiu	$t9,$t9,-30272
    bal __glkona_wait_rdata
    ld	$a0,16($sp)
    b	.L0d958d9c
    sw	$v0,4($sp)
.L0d958edc:
    # Line 382
    lw	$t9,4($s0)
    ld	$a0,16($sp)
    jal	sub_0d960000
    addiu	$a1,$sp,0
    b	.L0d958d9c
    sw	$v0,4($sp)
.L0d958ef4:
    # Line 377
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d958e70
    ld	$s1,64($sp)
.L0d958f08:
    b	.L0d958df8
    # Line 390
    lbu	$v0,2($s0)
.end __glkonim_GetBooleanv

# Function: __glkonim_GetDoublev
# Declared: Line 402 (Source lines: 402-432)
# Address: 0x0d958f10 - 0x0d959118 (Size: 520 bytes, Frame: 208)
.globl __glkonim_GetDoublev
.ent __glkonim_GetDoublev
__glkonim_GetDoublev:
    # Line 402
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    lui	$ra,0x14
    addiu	$ra,$ra,-32568
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 408
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 403
    lw	$at,4112($zero)
    # Line 402
    sd	$a1,32($sp)
    # Line 408
    addiu	$t9,$t9,-31040
    # Line 402
    sd	$a0,16($sp)
    # Line 408
    bal __glkonle_SeparableFilter2DEXT
    # Line 403
    sd	$at,24($sp)
    # Line 413
    li	$at,3
    sd	$s0,56($sp)
    li	$ra,5
    li	$t9,2
    # Line 408
    bltz	$v0,.L0d95906c
    sd	$s1,64($sp)
    # Line 410
    sll	$t8,$v0,0x3
    la	$s0,.rodata
    addiu	$s0,$s0,11024
    addu	$s0,$s0,$t8
    # Line 413
    lhu	$v0,0($s0)
    li	$s1,1
    # Line 411
    lbu	$a4,3($s0)
    # Line 413
    li	$t8,4
    beqz	$v0,.L0d9590f8
    # Line 411
    sw	$a4,0($sp)
    # Line 413
    beq	$v0,$s1,.L0d959084
    nop
    beq	$v0,$t8,.L0d959098
    nop
    beq	$v0,$t9,.L0d9590c4
    # Line 417
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 413
    beq	$v0,$ra,.L0d9590a4
    nop
    beq	$v0,$at,.L0d9590dc
    nop
.L0d958fac:
    # Line 420
    blez	$a4,.L0d95906c
    ldc1	$f4,8($sp)
    move	$a0,$zero
    ld	$a1,32($sp)
    li	$a5,2
    li	$a6,3
    lw	$a4,4($sp)
    b	.L0d95910c
    li	$a7,4
.L0d958fd0:
    # Line 426
    lbu	$v0,0($a4)
    mtc1	$v0,$f4
    addiu	$a4,$a4,1
    cvt.d.w	$f4,$f4
.L0d958fe0:
    # Line 432
    sdc1	$f4,0($a1)
    # Line 423
    lw	$v1,0($sp)
    slt	$v1,$a0,$v1
    addiu	$a1,$a1,8
    beqz	$v1,.L0d95906c
    addiu	$a0,$a0,1
    # Line 425
    lbu	$v0,2($s0)
.L0d958ffc:
    andi	$v0,$v0,0xf
    beqz	$v0,.L0d958fd0
    nop
    beq	$v0,$s1,.L0d95903c
    nop
    beq	$v0,$a5,.L0d959050
    nop
    beq	$v0,$a6,.L0d95905c
    nop
    bne	$v0,$a7,.L0d958fe0
    nop
    # Line 430
    lw	$v1,0($a4)
    mtc1	$v1,$f4
    addiu	$a4,$a4,4
    b	.L0d958fe0
    cvt.d.w	$f4,$f4
.L0d95903c:
    # Line 427
    lbu	$a2,0($a4)
    mtc1	$a2,$f4
    addiu	$a4,$a4,1
    b	.L0d958fe0
    cvt.d.w	$f4,$f4
.L0d959050:
    # Line 428
    addiu	$a4,$a4,8
    b	.L0d958fe0
    ldc1	$f4,-8($a4)
.L0d95905c:
    # Line 429
    lwc1	$f4,0($a4)
    addiu	$a4,$a4,4
    b	.L0d958fe0
    cvt.d.s	$f4,$f4
.L0d95906c:
    ld	$ra,40($sp)
.L0d959070:
    ld	$s1,64($sp)
    ld	$s0,56($sp)
    # Line 414
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d959084:
    # Line 415
    lw	$a5,4112($zero)
    lw	$a3,4($s0)
    addu	$a3,$a3,$a5
    b	.L0d958fac
    sw	$a3,4($sp)
.L0d959098:
    # Line 416
    lw	$a6,4($s0)
    b	.L0d958fac
    sw	$a6,4($sp)
.L0d9590a4:
    # Line 418
    lw	$t0,4($s0)
    ld	$a7,24($sp)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,31664($a7)
    addiu	$a7,$a7,380
    b	.L0d958fac
    sw	$a7,4($sp)
.L0d9590c4:
    # Line 417
    addiu	$t9,$t9,-30272
    bal __glkona_wait_rdata
    ld	$a0,16($sp)
    lw	$a4,0($sp)
    b	.L0d958fac
    sw	$v0,4($sp)
.L0d9590dc:
    # Line 419
    lw	$t9,4($s0)
    ld	$a0,16($sp)
    jal	sub_0d960000
    addiu	$a1,$sp,0
    lw	$a4,0($sp)
    b	.L0d958fac
    sw	$v0,4($sp)
.L0d9590f8:
    # Line 414
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d959070
    ld	$ra,40($sp)
.L0d95910c:
    # Line 423
    addiu	$a0,$a0,1
    b	.L0d958ffc
    # Line 425
    lbu	$v0,2($s0)
.end __glkonim_GetDoublev

# Function: __glkonim_GetFloatv
# Declared: Line 437 (Source lines: 437-467)
# Address: 0x0d959120 - 0x0d959328 (Size: 520 bytes, Frame: 208)
.globl __glkonim_GetFloatv
.ent __glkonim_GetFloatv
__glkonim_GetFloatv:
    # Line 437
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,32440
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 443
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 438
    lw	$at,4112($zero)
    # Line 437
    sd	$a1,32($sp)
    # Line 443
    addiu	$t9,$t9,-31040
    # Line 437
    sd	$a0,16($sp)
    # Line 443
    bal __glkonle_SeparableFilter2DEXT
    # Line 438
    sd	$at,24($sp)
    # Line 448
    li	$at,3
    sd	$s0,56($sp)
    li	$ra,5
    li	$t9,2
    # Line 443
    bltz	$v0,.L0d95927c
    sd	$s1,64($sp)
    # Line 445
    sll	$t8,$v0,0x3
    la	$s0,.rodata
    addiu	$s0,$s0,11024
    addu	$s0,$s0,$t8
    # Line 448
    lhu	$v0,0($s0)
    li	$s1,1
    # Line 446
    lbu	$a4,3($s0)
    # Line 448
    li	$t8,4
    beqz	$v0,.L0d959308
    # Line 446
    sw	$a4,0($sp)
    # Line 448
    beq	$v0,$s1,.L0d959294
    nop
    beq	$v0,$t8,.L0d9592a8
    nop
    beq	$v0,$t9,.L0d9592d4
    # Line 452
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 448
    beq	$v0,$ra,.L0d9592b4
    nop
    beq	$v0,$at,.L0d9592ec
    nop
.L0d9591bc:
    # Line 455
    blez	$a4,.L0d95927c
    lwc1	$f4,8($sp)
    move	$a0,$zero
    ld	$a1,32($sp)
    li	$a5,2
    li	$a6,3
    lw	$a4,4($sp)
    b	.L0d95931c
    li	$a7,4
.L0d9591e0:
    # Line 461
    lbu	$v0,0($a4)
    mtc1	$v0,$f4
    addiu	$a4,$a4,1
    cvt.s.w	$f4,$f4
.L0d9591f0:
    # Line 467
    swc1	$f4,0($a1)
    # Line 458
    lw	$v1,0($sp)
    slt	$v1,$a0,$v1
    addiu	$a1,$a1,4
    beqz	$v1,.L0d95927c
    addiu	$a0,$a0,1
    # Line 460
    lbu	$v0,2($s0)
.L0d95920c:
    andi	$v0,$v0,0xf
    beqz	$v0,.L0d9591e0
    nop
    beq	$v0,$s1,.L0d95924c
    nop
    beq	$v0,$a5,.L0d959260
    nop
    beq	$v0,$a6,.L0d959270
    nop
    bne	$v0,$a7,.L0d9591f0
    nop
    # Line 465
    lw	$v1,0($a4)
    mtc1	$v1,$f4
    addiu	$a4,$a4,4
    b	.L0d9591f0
    cvt.s.w	$f4,$f4
.L0d95924c:
    # Line 462
    lbu	$a2,0($a4)
    mtc1	$a2,$f4
    addiu	$a4,$a4,1
    b	.L0d9591f0
    cvt.s.w	$f4,$f4
.L0d959260:
    # Line 463
    ldc1	$f4,0($a4)
    addiu	$a4,$a4,8
    b	.L0d9591f0
    cvt.s.d	$f4,$f4
.L0d959270:
    # Line 464
    addiu	$a4,$a4,4
    b	.L0d9591f0
    lwc1	$f4,-4($a4)
.L0d95927c:
    ld	$ra,40($sp)
.L0d959280:
    ld	$s1,64($sp)
    ld	$s0,56($sp)
    # Line 449
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d959294:
    # Line 450
    lw	$a5,4112($zero)
    lw	$a3,4($s0)
    addu	$a3,$a3,$a5
    b	.L0d9591bc
    sw	$a3,4($sp)
.L0d9592a8:
    # Line 451
    lw	$a6,4($s0)
    b	.L0d9591bc
    sw	$a6,4($sp)
.L0d9592b4:
    # Line 453
    lw	$t0,4($s0)
    ld	$a7,24($sp)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a7,31664($a7)
    addiu	$a7,$a7,380
    b	.L0d9591bc
    sw	$a7,4($sp)
.L0d9592d4:
    # Line 452
    addiu	$t9,$t9,-30272
    bal __glkona_wait_rdata
    ld	$a0,16($sp)
    lw	$a4,0($sp)
    b	.L0d9591bc
    sw	$v0,4($sp)
.L0d9592ec:
    # Line 454
    lw	$t9,4($s0)
    ld	$a0,16($sp)
    jal	sub_0d960000
    addiu	$a1,$sp,0
    lw	$a4,0($sp)
    b	.L0d9591bc
    sw	$v0,4($sp)
.L0d959308:
    # Line 449
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d959280
    ld	$ra,40($sp)
.L0d95931c:
    # Line 458
    addiu	$a0,$a0,1
    b	.L0d95920c
    # Line 460
    lbu	$v0,2($s0)
.end __glkonim_GetFloatv

# Function: __glkonim_GetIntegerv
# Declared: Line 472 (Source lines: 472-505)
# Address: 0x0d959330 - 0x0d95955c (Size: 556 bytes, Frame: 208)
.globl __glkonim_GetIntegerv
.ent __glkonim_GetIntegerv
__glkonim_GetIntegerv:
    # Line 472
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,31912
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 478
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 473
    lw	$at,4112($zero)
    # Line 472
    sd	$a1,32($sp)
    # Line 478
    addiu	$t9,$t9,-31040
    # Line 472
    sd	$a0,16($sp)
    # Line 478
    bal __glkonle_SeparableFilter2DEXT
    # Line 473
    sd	$at,24($sp)
    # Line 483
    li	$at,3
    sd	$s0,56($sp)
    li	$ra,5
    li	$t9,2
    # Line 478
    bltz	$v0,.L0d9594bc
    sd	$s1,64($sp)
    # Line 480
    sll	$t8,$v0,0x3
    la	$s0,.rodata
    addiu	$s0,$s0,11024
    addu	$s0,$s0,$t8
    # Line 483
    lhu	$v0,0($s0)
    li	$s1,1
    # Line 481
    lbu	$a4,3($s0)
    # Line 483
    li	$t8,4
    beqz	$v0,.L0d959548
    # Line 481
    sw	$a4,0($sp)
    # Line 483
    beq	$v0,$s1,.L0d9594d4
    nop
    beq	$v0,$t8,.L0d9594e8
    nop
    beq	$v0,$t9,.L0d959514
    # Line 487
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 483
    beq	$v0,$ra,.L0d9594f4
    nop
    beq	$v0,$at,.L0d95952c
    nop
.L0d9593cc:
    # Line 490
    blez	$a4,.L0d9594bc
    ldc1	$f4,8($sp)
    lw	$a5,4($sp)
    ldc1	$f6,_lit8_41efffffffe00000
    move	$a0,$zero
    ldc1	$f5,_lit8_bff0000000000000
    ldc1	$f7,_lit8_3fe0000000000000
    li	$a6,2
    li	$a7,3
    ld	$a1,32($sp)
    b	.L0d959438
    li	$t0,4
    nop
.L0d959400:
    # Line 496
    lbu	$v0,0($a5)
    mtc1	$v0,$f4
    addiu	$a5,$a5,1
    cvt.d.w	$f4,$f4
.L0d959410:
    # Line 501
    beqz	$v1,.L0d959480
    nop
    # Line 503
    madd.d	$f8,$f5,$f4,$f6
    mul.d	$f8,$f7,$f8
    trunc.w.d	$f8,$f8
    swc1	$f8,0($a1)
.L0d959428:
    # Line 493
    lw	$a2,0($sp)
    slt	$a2,$a0,$a2
    beqz	$a2,.L0d9594bc
    addiu	$a1,$a1,4
.L0d959438:
    # Line 495
    lbu	$a4,2($s0)
    andi	$v0,$a4,0xf
    # Line 493
    addiu	$a0,$a0,1
    # Line 495
    beqz	$v0,.L0d959400
    # Line 501
    andi	$v1,$a4,0x10
    # Line 495
    beq	$v0,$s1,.L0d95948c
    nop
    beq	$v0,$a6,.L0d9594a0
    nop
    beq	$v0,$a7,.L0d9594ac
    nop
    bne	$v0,$t0,.L0d959410
    nop
    # Line 500
    lw	$a3,0($a5)
    mtc1	$a3,$f4
    addiu	$a5,$a5,4
    b	.L0d959410
    cvt.d.w	$f4,$f4
.L0d959480:
    # Line 505
    trunc.w.d	$f8,$f4
    b	.L0d959428
    swc1	$f8,0($a1)
.L0d95948c:
    # Line 497
    lbu	$t1,0($a5)
    mtc1	$t1,$f4
    addiu	$a5,$a5,1
    b	.L0d959410
    cvt.d.w	$f4,$f4
.L0d9594a0:
    # Line 498
    addiu	$a5,$a5,8
    b	.L0d959410
    ldc1	$f4,-8($a5)
.L0d9594ac:
    # Line 499
    lwc1	$f4,0($a5)
    addiu	$a5,$a5,4
    b	.L0d959410
    cvt.d.s	$f4,$f4
.L0d9594bc:
    ld	$ra,40($sp)
.L0d9594c0:
    ld	$s1,64($sp)
    ld	$s0,56($sp)
    # Line 484
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9594d4:
    # Line 485
    lw	$t3,4112($zero)
    lw	$t2,4($s0)
    addu	$t2,$t2,$t3
    b	.L0d9593cc
    sw	$t2,4($sp)
.L0d9594e8:
    # Line 486
    lw	$t8,4($s0)
    b	.L0d9593cc
    sw	$t8,4($sp)
.L0d9594f4:
    # Line 488
    lw	$ra,4($s0)
    ld	$t9,24($sp)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,31664($t9)
    addiu	$t9,$t9,380
    b	.L0d9593cc
    sw	$t9,4($sp)
.L0d959514:
    # Line 487
    addiu	$t9,$t9,-30272
    bal __glkona_wait_rdata
    ld	$a0,16($sp)
    lw	$a4,0($sp)
    b	.L0d9593cc
    sw	$v0,4($sp)
.L0d95952c:
    # Line 489
    lw	$t9,4($s0)
    ld	$a0,16($sp)
    jal	sub_0d960000
    addiu	$a1,$sp,0
    lw	$a4,0($sp)
    b	.L0d9593cc
    sw	$v0,4($sp)
.L0d959548:
    # Line 484
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9594c0
    ld	$ra,40($sp)
.end __glkonim_GetIntegerv

# Function: __glkonim_GetError
# Declared: Line 510 (Source lines: 510-517)
# Address: 0x0d959560 - 0x0d9595cc (Size: 108 bytes, Frame: 16)
.globl __glkonim_GetError
.ent __glkonim_GetError
__glkonim_GetError:
    # Line 510
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x13
    sd	$ra,8($sp)
    addiu	$v1,$v1,31352
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9595ac
    addu	$gp,$t9,$v1
    # Line 516
    # lw $t9, -32120($gp) # &__glkon_get_special
    li	$a0,62
    lui	$a1,0xdbdb
    bal __glkon_get_special
    ori	$a1,$a1,0xdbdb
    ld	$ra,8($sp)
    # Line 517
    lw	$v0,0($v0)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9595ac:
    # Line 513
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 514
    move	$v0,$zero
    # Line 517
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_GetError

# Function: __glkonim_IsEnabled
# Declared: Line 521 (Source lines: 521-526)
# Address: 0x0d9595d0 - 0x0d959634 (Size: 100 bytes, Frame: 32)
.globl __glkonim_IsEnabled
.ent __glkonim_IsEnabled
__glkonim_IsEnabled:
    # Line 521
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,31240
    sd	$gp,16($sp)
    addu	$gp,$t9,$ra
    # Line 523
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-31040
    bal __glkonle_SeparableFilter2DEXT
    # Line 521
    sd	$a0,8($sp)
    # Line 523
    bgez	$v0,.L0d959610
    # Line 526
    ld	$ra,24($sp)
    # Line 523
    move	$v0,$zero
    # Line 526
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959610:
    # Line 525
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    ld	$a0,8($sp)
    bal __glkonim_GetBooleanv
    addiu	$a1,$sp,0
    # Line 526
    ld	$ra,24($sp)
    lbu	$v0,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonim_IsEnabled

# Function: __glkonim_GetClipPlane
# Declared: Line 530 (Source lines: 530-543)
# Address: 0x0d959640 - 0x0d959704 (Size: 196 bytes, Frame: 32)
.globl __glkonim_GetClipPlane
.ent __glkonim_GetClipPlane
__glkonim_GetClipPlane:
    # Line 530
    move	$a3,$a0
    addiu	$sp,$sp,-32
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x13
    # Line 532
    addiu	$a0,$a0,-12288
    sd	$ra,16($sp)
    # Line 530
    addiu	$v1,$v1,31128
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d9596f0
    addu	$gp,$t9,$v1
    # Line 532
    lw	$a2,4112($zero)
    lw	$a2,3600($a2)
    sltu	$a0,$a0,$a2
    bnez	$a0,.L0d95969c
    sd	$a1,0($sp)
    # Line 535
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d959690:
    # Line 543
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95969c:
    # Line 538
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$a3
    bal __glkon_get_special
    li	$a0,60
    # Line 539
    lwc1	$f3,0($v0)
    ld	$a3,0($sp)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a3)
    # Line 540
    lwc1	$f2,4($v0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a3)
    # Line 541
    lwc1	$f1,8($v0)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a3)
    # Line 542
    lwc1	$f0,12($v0)
    ld	$ra,16($sp)
    # Line 543
    ld	$gp,8($sp)
    # Line 542
    cvt.d.s	$f0,$f0
    # Line 543
    addiu	$sp,$sp,32
    jr	$ra
    # Line 542
    sdc1	$f0,24($a3)
.L0d9596f0:
    # Line 532
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d959690
    ld	$ra,16($sp)
.end __glkonim_GetClipPlane

# Function: __glkonim_GetLightfv
# Declared: Line 546 (Source lines: 546-561)
# Address: 0x0d959710 - 0x0d959814 (Size: 260 bytes, Frame: 32)
.globl __glkonim_GetLightfv
.ent __glkonim_GetLightfv
__glkonim_GetLightfv:
    # Line 546
    addiu	$sp,$sp,-32
    li	$v1,1
    lw	$at,4120($zero)
    move	$v0,$a1
    lui	$a1,0x13
    # Line 552
    sltiu	$a5,$v0,4618
    sd	$ra,16($sp)
    # Line 546
    addiu	$a1,$a1,30920
    sd	$gp,0($sp)
    beq	$at,$v1,.L0d959800
    addu	$gp,$t9,$a1
    # Line 552
    lw	$a3,4112($zero)
    lw	$a3,3588($a3)
    addiu	$a1,$a0,-16384
    sltu	$a3,$a1,$a3
    beqz	$a3,.L0d9597ec
    sltiu	$a4,$v0,4608
    bnez	$a4,.L0d9597f0
    # Line 554
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 552
    beqz	$a5,.L0d9597ec
    sd	$a2,8($sp)
    # Line 557
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$v0
    bal __glkon_get_special2
    li	$a0,65
    # Line 558
    lw	$a6,-4($v0)
    # Line 557
    move	$a5,$v0
    ld	$a2,8($sp)
    andi	$a3,$a6,0x1
    # Line 558
    blez	$a6,.L0d9597dc
    sra	$a4,$a6,0x1
    sll	$a1,$a6,0x2
    move	$a0,$a2
    beqz	$a3,.L0d9597ac
    addu	$a1,$a5,$a1
    # Line 560
    lwc1	$f0,0($a5)
    # Line 559
    addiu	$v0,$a5,4
    addiu	$a0,$a2,4
    # Line 560
    swc1	$f0,0($a2)
.L0d9597ac:
    beqz	$a4,.L0d9597dc
    nop
    nop
    nop
    nop
.L0d9597c0:
    lwc1	$f2,0($v0)
    # Line 559
    addiu	$v0,$v0,8
    # Line 560
    swc1	$f2,0($a0)
    lwc1	$f1,-4($v0)
    # Line 559
    addiu	$a0,$a0,8
    bne	$v0,$a1,.L0d9597c0
    # Line 560
    swc1	$f1,-4($a0)
.L0d9597dc:
    ld	$ra,16($sp)
.L0d9597e0:
    # Line 561
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9597ec:
    # Line 554
    # lw $t9, -28616($gp) # &__glSetError
.L0d9597f0:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9597e0
    ld	$ra,16($sp)
.L0d959800:
    # Line 549
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9597e0
    ld	$ra,16($sp)
.end __glkonim_GetLightfv

# Function: __glkonim_GetLightiv
# Declared: Line 564 (Source lines: 564-584)
# Address: 0x0d959820 - 0x0d959a28 (Size: 520 bytes, Frame: 32)
.globl __glkonim_GetLightiv
.ent __glkonim_GetLightiv
__glkonim_GetLightiv:
    # Line 564
    li	$v1,1
    lw	$at,4120($zero)
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$s0,$a1
    lui	$a1,0x13
    move	$v0,$a2
    sd	$ra,24($sp)
    addiu	$a1,$a1,30648
    sd	$gp,16($sp)
    beq	$at,$v1,.L0d959a14
    addu	$gp,$t9,$a1
    # Line 570
    lw	$a2,4112($zero)
    lw	$a2,3588($a2)
    addiu	$a1,$a0,-16384
    sltu	$a2,$a1,$a2
    beqz	$a2,.L0d959968
    # Line 572
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 570
    sltiu	$a3,$s0,4608
    bnez	$a3,.L0d959964
    sltiu	$a4,$s0,4618
    beqz	$a4,.L0d959964
    sd	$v0,0($sp)
    # Line 575
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$s0
    bal __glkon_get_special2
    li	$a0,65
    # Line 578
    ld	$a2,0($sp)
    # Line 577
    sltiu	$a5,$s0,4611
    ldc1	$f4,_lit8_3fe0000000000000
    beqz	$a5,.L0d959984
    # Line 576
    lw	$a1,-4($v0)
    # Line 577
    blez	$a1,.L0d959970
    sra	$a3,$a1,0x2
    andi	$a5,$a1,0x3
    ld	$a2,0($sp)
    sll	$a0,$a1,0x2
    lwc1	$f5,_lit_4f800000
    beqz	$a5,.L0d9598e8
    addu	$a0,$v0,$a0
.L0d9598c0:
    # Line 579
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f5
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    addiu	$a5,$a5,-1
    # Line 578
    addiu	$a2,$a2,4
    # Line 579
    trunc.w.d	$f0,$f0
    # Line 578
    addiu	$v0,$v0,4
    bnez	$a5,.L0d9598c0
    # Line 579
    swc1	$f0,-4($a2)
.L0d9598e8:
    beqz	$a3,.L0d95995c
    nop
.L0d9598f0:
    lwc1	$f6,0($v0)
    mul.s	$f6,$f6,$f5
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f4
    trunc.w.d	$f6,$f6
    swc1	$f6,0($a2)
    lwc1	$f3,4($v0)
    mul.s	$f3,$f3,$f5
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    swc1	$f3,4($a2)
    lwc1	$f2,8($v0)
    mul.s	$f2,$f2,$f5
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    swc1	$f2,8($a2)
    lwc1	$f1,12($v0)
    mul.s	$f1,$f1,$f5
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    # Line 578
    addiu	$v0,$v0,16
    addiu	$a2,$a2,16
    # Line 579
    trunc.w.d	$f1,$f1
    # Line 578
    bne	$v0,$a0,.L0d9598f0
    # Line 579
    swc1	$f1,-4($a2)
.L0d95995c:
    b	.L0d959974
    ld	$ra,24($sp)
.L0d959964:
    # Line 572
    # lw $t9, -28616($gp) # &__glSetError
.L0d959968:
    jal	__glSetError
    li	$a0,1280
.L0d959970:
    ld	$ra,24($sp)
.L0d959974:
    ld	$s0,8($sp)
    # Line 584
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959984:
    # Line 578
    blez	$a1,.L0d959974
    ld	$ra,24($sp)
    sra	$a3,$a1,0x2
    andi	$a5,$a1,0x3
    sll	$a0,$a1,0x2
    beqz	$a5,.L0d9599bc
    addu	$a0,$v0,$a0
.L0d9599a0:
    # Line 582
    lwc1	$f7,0($v0)
    addiu	$a5,$a5,-1
    # Line 581
    addiu	$a2,$a2,4
    # Line 582
    trunc.w.s	$f7,$f7
    # Line 581
    addiu	$v0,$v0,4
    bnez	$a5,.L0d9599a0
    # Line 582
    swc1	$f7,-4($a2)
.L0d9599bc:
    beqz	$a3,.L0d959a0c
    nop
    nop
    nop
    nop
.L0d9599d0:
    lwc1	$f11,0($v0)
    trunc.w.s	$f11,$f11
    swc1	$f11,0($a2)
    lwc1	$f10,4($v0)
    trunc.w.s	$f10,$f10
    swc1	$f10,4($a2)
    lwc1	$f9,8($v0)
    trunc.w.s	$f9,$f9
    swc1	$f9,8($a2)
    lwc1	$f8,12($v0)
    # Line 581
    addiu	$v0,$v0,16
    addiu	$a2,$a2,16
    # Line 582
    trunc.w.s	$f8,$f8
    # Line 581
    bne	$v0,$a0,.L0d9599d0
    # Line 582
    swc1	$f8,-4($a2)
.L0d959a0c:
    b	.L0d959974
    ld	$ra,24($sp)
.L0d959a14:
    # Line 567
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d959974
    ld	$ra,24($sp)
.end __glkonim_GetLightiv

# Function: __glkonim_GetMaterialfv
# Declared: Line 587 (Source lines: 587-605)
# Address: 0x0d959a30 - 0x0d959b50 (Size: 288 bytes, Frame: 32)
.globl __glkonim_GetMaterialfv
.ent __glkonim_GetMaterialfv
__glkonim_GetMaterialfv:
    # Line 587
    addiu	$sp,$sp,-32
    li	$v1,1
    lw	$at,4120($zero)
    move	$v0,$a1
    lui	$a1,0x13
    move	$a5,$a0
    sd	$ra,16($sp)
    addiu	$a0,$a1,30120
    sd	$gp,8($sp)
    beq	$at,$v1,.L0d959b3c
    addu	$gp,$t9,$a0
    # Line 595
    sltiu	$a3,$a5,1028
    bnez	$a3,.L0d959b2c
    # Line 598
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 595
    sltiu	$a4,$a5,1030
    beqz	$a4,.L0d959b2c
    # Line 598
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 595
    sltiu	$a6,$v0,4608
    bnez	$a6,.L0d959a88
    sd	$a2,0($sp)
    sltiu	$a7,$v0,4618
    bnez	$a7,.L0d959a9c
.L0d959a88:
    sltiu	$t0,$v0,5632
    bnez	$t0,.L0d959b28
    sltiu	$t1,$v0,5636
    beqz	$t1,.L0d959b2c
    # Line 598
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d959a9c:
    # Line 601
    # lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$v0
    move	$a1,$a5
    bal __glkon_get_special2
    li	$a0,70
    # Line 602
    lw	$a6,-4($v0)
    # Line 601
    move	$a5,$v0
    ld	$ra,16($sp)
    # Line 602
    sll	$a1,$a6,0x2
    # Line 603
    ld	$a3,0($sp)
    # Line 602
    blez	$a6,.L0d959b1c
    andi	$a2,$a6,0x1
    addu	$a1,$a5,$a1
    sra	$a4,$a6,0x1
    ld	$v0,0($sp)
    beqz	$a2,.L0d959af0
    move	$a0,$a5
    # Line 604
    lwc1	$f0,0($a5)
    # Line 603
    addiu	$a0,$a5,4
    addiu	$v0,$a3,4
    # Line 604
    swc1	$f0,0($a3)
.L0d959af0:
    beqz	$a4,.L0d959b1c
    nop
    nop
    nop
.L0d959b00:
    lwc1	$f2,0($a0)
    # Line 603
    addiu	$a0,$a0,8
    # Line 604
    swc1	$f2,0($v0)
    lwc1	$f1,-4($a0)
    # Line 603
    addiu	$v0,$v0,8
    bne	$a0,$a1,.L0d959b00
    # Line 604
    swc1	$f1,-4($v0)
.L0d959b1c:
    # Line 605
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959b28:
    # Line 598
    # lw $t9, -28616($gp) # &__glSetError
.L0d959b2c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d959b1c
    ld	$ra,16($sp)
.L0d959b3c:
    # Line 592
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d959b1c
    ld	$ra,16($sp)
.end __glkonim_GetMaterialfv

# Function: __glkonim_GetMaterialiv
# Declared: Line 608 (Source lines: 608-631)
# Address: 0x0d959b50 - 0x0d959d78 (Size: 552 bytes, Frame: 32)
.globl __glkonim_GetMaterialiv
.ent __glkonim_GetMaterialiv
__glkonim_GetMaterialiv:
    # Line 608
    li	$v1,1
    lw	$at,4120($zero)
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$s0,$a1
    lui	$a1,0x13
    move	$v0,$a0
    sd	$ra,24($sp)
    addiu	$a0,$a1,29832
    sd	$gp,16($sp)
    beq	$at,$v1,.L0d959d64
    addu	$gp,$t9,$a0
    # Line 616
    sltiu	$a3,$v0,1028
    bnez	$a3,.L0d959c88
    # Line 619
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 616
    sltiu	$a4,$v0,1030
    beqz	$a4,.L0d959c88
    # Line 619
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 616
    sltiu	$a5,$s0,4608
    bnez	$a5,.L0d959bb0
    sd	$a2,0($sp)
    sltiu	$a6,$s0,4618
    bnez	$a6,.L0d959bc4
    # Line 622
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
.L0d959bb0:
    # Line 616
    sltiu	$a7,$s0,5632
    bnez	$a7,.L0d959c84
    sltiu	$t0,$s0,5636
    beqz	$t0,.L0d959c84
    # Line 622
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
.L0d959bc4:
    move	$a2,$s0
    move	$a1,$v0
    bal __glkon_get_special2
    li	$a0,70
    # Line 624
    ld	$a2,0($sp)
    sltiu	$t1,$s0,4608
    ldc1	$f4,_lit8_3fe0000000000000
    sltiu	$t2,$s0,4611
    li	$t3,5632
    bnez	$t1,.L0d959bf4
    # Line 623
    lw	$a1,-4($v0)
    # Line 624
    bnez	$t2,.L0d959ca4
.L0d959bf4:
    andi	$a5,$a1,0x3
    beq	$s0,$t3,.L0d959ca4
    sra	$a3,$a1,0x2
    # Line 625
    blez	$a1,.L0d959c90
    sll	$a0,$a1,0x2
    ld	$a2,0($sp)
    beqz	$a5,.L0d959c30
    addu	$a0,$v0,$a0
.L0d959c14:
    # Line 629
    lwc1	$f0,0($v0)
    addiu	$a5,$a5,-1
    # Line 628
    addiu	$a2,$a2,4
    # Line 629
    trunc.w.s	$f0,$f0
    # Line 628
    addiu	$v0,$v0,4
    bnez	$a5,.L0d959c14
    # Line 629
    swc1	$f0,-4($a2)
.L0d959c30:
    beqz	$a3,.L0d959c7c
    nop
    nop
    nop
.L0d959c40:
    lwc1	$f4,0($v0)
    trunc.w.s	$f4,$f4
    swc1	$f4,0($a2)
    lwc1	$f3,4($v0)
    trunc.w.s	$f3,$f3
    swc1	$f3,4($a2)
    lwc1	$f2,8($v0)
    trunc.w.s	$f2,$f2
    swc1	$f2,8($a2)
    lwc1	$f1,12($v0)
    # Line 628
    addiu	$v0,$v0,16
    addiu	$a2,$a2,16
    # Line 629
    trunc.w.s	$f1,$f1
    # Line 628
    bne	$v0,$a0,.L0d959c40
    # Line 629
    swc1	$f1,-4($a2)
.L0d959c7c:
    b	.L0d959c94
    ld	$ra,24($sp)
.L0d959c84:
    # Line 619
    # lw $t9, -28616($gp) # &__glSetError
.L0d959c88:
    jal	__glSetError
    li	$a0,1280
.L0d959c90:
    ld	$ra,24($sp)
.L0d959c94:
    ld	$s0,8($sp)
    # Line 631
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959ca4:
    # Line 624
    blez	$a1,.L0d959c90
    sra	$a3,$a1,0x2
    andi	$a5,$a1,0x3
    sll	$a0,$a1,0x2
    lwc1	$f5,_lit_4f800000
    beqz	$a5,.L0d959ce8
    addu	$a0,$v0,$a0
.L0d959cc0:
    # Line 626
    lwc1	$f6,0($v0)
    mul.s	$f6,$f6,$f5
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f4
    addiu	$a5,$a5,-1
    # Line 625
    addiu	$a2,$a2,4
    # Line 626
    trunc.w.d	$f6,$f6
    # Line 625
    addiu	$v0,$v0,4
    bnez	$a5,.L0d959cc0
    # Line 626
    swc1	$f6,-4($a2)
.L0d959ce8:
    beqz	$a3,.L0d959d5c
    nop
.L0d959cf0:
    lwc1	$f10,0($v0)
    mul.s	$f10,$f10,$f5
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f4
    trunc.w.d	$f10,$f10
    swc1	$f10,0($a2)
    lwc1	$f9,4($v0)
    mul.s	$f9,$f9,$f5
    cvt.d.s	$f9,$f9
    mul.d	$f9,$f9,$f4
    trunc.w.d	$f9,$f9
    swc1	$f9,4($a2)
    lwc1	$f8,8($v0)
    mul.s	$f8,$f8,$f5
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f4
    trunc.w.d	$f8,$f8
    swc1	$f8,8($a2)
    lwc1	$f7,12($v0)
    mul.s	$f7,$f7,$f5
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f4
    # Line 625
    addiu	$v0,$v0,16
    addiu	$a2,$a2,16
    # Line 626
    trunc.w.d	$f7,$f7
    # Line 625
    bne	$v0,$a0,.L0d959cf0
    # Line 626
    swc1	$f7,-4($a2)
.L0d959d5c:
    b	.L0d959c94
    ld	$ra,24($sp)
.L0d959d64:
    # Line 613
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d959c94
    ld	$ra,24($sp)
.end __glkonim_GetMaterialiv

# Function: do_gettexenv
# Declared: Line 634 (Source lines: 635-660)
# Address: 0x0d959d80 - 0x0d959e5c (Size: 220 bytes, Frame: 32)
.ent do_gettexenv
do_gettexenv:
    # Line 635
    addiu	$sp,$sp,-32
    sd	$a2,0($sp)
    li	$at,8960
    sd	$s0,8($sp)
    move	$s0,$a1
    beq	$a0,$at,.L0d959dbc
    sd	$ra,16($sp)
    # Line 639
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 640
    move	$v0,$zero
    # Line 660
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959dbc:
    # Line 643
    # lw $t9, -32120($gp) # &__glkon_get_special
    bal __glkon_get_special
    li	$a0,77
    # Line 644
    li	$v1,8704
    ld	$ra,16($sp)
    li	$a1,0x80be
    li	$a0,8705
    beq	$s0,$v1,.L0d959e3c
    # Line 651
    ld	$a2,0($sp)
    # Line 644
    beq	$s0,$a0,.L0d959e0c
    nop
    beq	$s0,$a1,.L0d959e0c
    # Line 657
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 658
    move	$v0,$zero
    # Line 660
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959e0c:
    # Line 651
    lwc1	$f3,0($v0)
    swc1	$f3,0($a2)
    # Line 652
    lwc1	$f2,4($v0)
    swc1	$f2,4($a2)
    # Line 653
    lwc1	$f1,8($v0)
    swc1	$f1,8($a2)
    # Line 654
    lwc1	$f0,12($v0)
    swc1	$f0,12($a2)
.L0d959e2c:
    # Line 660
    li	$v0,1
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d959e3c:
    # Line 647
    lw	$a4,0($v0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f4
    cvt.s.l	$f4,$f4
    ld	$a3,0($sp)
    b	.L0d959e2c
    swc1	$f4,0($a3)
.end do_gettexenv

# Function: __glkonim_GetTexEnvfv
# Declared: Line 664 (Source lines: 665-671)
# Address: 0x0d959e60 - 0x0d959eb8 (Size: 88 bytes, Frame: 16)
.globl __glkonim_GetTexEnvfv
.ent __glkonim_GetTexEnvfv
__glkonim_GetTexEnvfv:
    # Line 665
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x13
    sd	$ra,8($sp)
    addiu	$v1,$v1,29048
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d959ea4
    addu	$gp,$t9,$v1
    # Line 670
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-25216
    bal __glkonim_GetMaterialiv
    nop
    ld	$ra,8($sp)
.L0d959e98:
    # Line 671
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d959ea4:
    # Line 667
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d959e98
    ld	$ra,8($sp)
.end __glkonim_GetTexEnvfv

# Function: __glkonim_GetTexEnviv
# Declared: Line 674 (Source lines: 675-695)
# Address: 0x0d959ec0 - 0x0d959fe8 (Size: 296 bytes, Frame: 48)
.globl __glkonim_GetTexEnviv
.ent __glkonim_GetTexEnviv
__glkonim_GetTexEnviv:
    # Line 675
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lw	$at,4120($zero)
    sd	$s0,32($sp)
    li	$v0,1
    lui	$v1,0x13
    move	$s0,$a1
    sd	$ra,40($sp)
    addiu	$v1,$v1,28952
    sd	$gp,24($sp)
    beq	$at,$v0,.L0d959fb4
    addu	$gp,$t9,$v1
    # Line 682
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-25216
    bal __glkonim_GetMaterialiv
    addiu	$a2,$sp,0
    # Line 683
    li	$v1,0x80be
    # Line 682
    beqz	$v0,.L0d959f28
    ld	$ra,40($sp)
    # Line 683
    li	$at,8704
    beq	$s0,$at,.L0d959fc8
    li	$v0,8705
    beq	$s0,$v0,.L0d959f3c
    # Line 689
    lwc1	$f2,_lit_4f800000
    # Line 683
    beq	$s0,$v1,.L0d959f3c
    # Line 689
    lwc1	$f2,_lit_4f800000
.L0d959f28:
    # Line 695
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 689
    lwc1	$f2,_lit_4f800000
.L0d959f3c:
    lwc1	$f5,0($sp)
    mul.s	$f5,$f5,$f2
    ldc1	$f1,_lit8_3fe0000000000000
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f1
    ld	$a0,16($sp)
    trunc.w.d	$f5,$f5
    swc1	$f5,0($a0)
    # Line 690
    lwc1	$f4,4($sp)
    mul.s	$f4,$f4,$f2
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f1
    trunc.w.d	$f4,$f4
    swc1	$f4,4($a0)
    # Line 691
    lwc1	$f3,8($sp)
    mul.s	$f3,$f3,$f2
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f1
    trunc.w.d	$f3,$f3
    swc1	$f3,8($a0)
    # Line 692
    lwc1	$f0,12($sp)
    mul.s	$f0,$f0,$f2
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    # Line 695
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    # Line 692
    trunc.w.d	$f0,$f0
    # Line 695
    addiu	$sp,$sp,48
    jr	$ra
    # Line 692
    swc1	$f0,12($a0)
.L0d959fb4:
    # Line 679
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d959f28
    ld	$ra,40($sp)
.L0d959fc8:
    # Line 685
    lwc1	$f6,0($sp)
    # Line 695
    ld	$gp,24($sp)
    # Line 685
    ld	$a1,16($sp)
    # Line 695
    ld	$s0,32($sp)
    # Line 685
    trunc.w.s	$f6,$f6
    # Line 695
    addiu	$sp,$sp,48
    jr	$ra
    # Line 685
    swc1	$f6,0($a1)
.end __glkonim_GetTexEnviv

# Function: __glkonim_GetTexGeniv
# Declared: Line 698 (Source lines: 698-732)
# Address: 0x0d959ff0 - 0x0d95a1d4 (Size: 484 bytes, Frame: 48)
.globl __glkonim_GetTexGeniv
.ent __glkonim_GetTexGeniv
__glkonim_GetTexGeniv:
    # Line 698
    addiu	$sp,$sp,-48
    # Line 705
    li	$a4,0x81f4
    # Line 698
    move	$v0,$a2
    sd	$s1,16($sp)
    move	$s1,$a0
    li	$a5,1
    lw	$at,4120($zero)
    lui	$v1,0x13
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$ra,32($sp)
    addiu	$v1,$v1,28648
    # Line 705
    sltiu	$a3,$s0,9475
    sd	$gp,24($sp)
    # Line 698
    beq	$at,$a5,.L0d95a1b8
    addu	$gp,$t9,$v1
    # Line 705
    sltiu	$a0,$a0,8192
    li	$a5,0x81f7
    bnez	$a0,.L0d95a124
    sltu	$a5,$a5,$s0
    sltiu	$a1,$s1,8196
    beqz	$a1,.L0d95a124
    sltiu	$a2,$s0,9472
    bnez	$a2,.L0d95a058
    sd	$v0,0($sp)
    bnez	$a3,.L0d95a068
.L0d95a058:
    sltu	$a4,$s0,$a4
    bnez	$a4,.L0d95a128
    # Line 708
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 705
    bnez	$a5,.L0d95a124
.L0d95a068:
    # Line 711
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
    move	$a2,$s0
    move	$a1,$s1
    bal __glkon_get_special2
    li	$a0,80
    # Line 724
    ld	$t3,0($sp)
    # Line 714
    li	$t2,0x81f4
    # Line 711
    li	$a6,9472
    # Line 732
    ld	$gp,24($sp)
    # Line 714
    li	$t1,0x81f5
    li	$t0,9474
    li	$a7,9473
    # Line 711
    beq	$s0,$a6,.L0d95a198
    ld	$ra,32($sp)
    # Line 714
    beq	$s0,$a7,.L0d95a14c
    # Line 717
    sll	$t8,$s1,0x2
    # Line 714
    beq	$s0,$t0,.L0d95a14c
    # Line 717
    sll	$t8,$s1,0x2
    # Line 714
    beq	$s0,$t1,.L0d95a14c
    # Line 717
    sll	$t8,$s1,0x2
    # Line 714
    beq	$s0,$t2,.L0d95a148
    # Line 724
    sll	$s0,$s1,0x2
    addu	$s0,$v0,$s0
    lwc1	$f5,-32768($s0)
    trunc.w.s	$f5,$f5
    swc1	$f5,0($t3)
    # Line 725
    lwc1	$f4,-32752($s0)
    trunc.w.s	$f4,$f4
    swc1	$f4,4($t3)
    # Line 726
    lwc1	$f3,-32736($s0)
    # Line 727
    li	$s1,1
    sw	$s1,12($t3)
    # Line 726
    trunc.w.s	$f3,$f3
    swc1	$f3,8($t3)
    # Line 728
    lwc1	$f2,-32720($s0)
    trunc.w.s	$f2,$f2
    swc1	$f2,16($t3)
    # Line 729
    lwc1	$f1,-32704($s0)
    trunc.w.s	$f1,$f1
    swc1	$f1,20($t3)
    # Line 730
    lwc1	$f0,-32688($s0)
    # Line 732
    ld	$s1,16($sp)
    ld	$s0,8($sp)
    # Line 730
    trunc.w.s	$f0,$f0
    # Line 732
    addiu	$sp,$sp,48
    jr	$ra
    # Line 730
    swc1	$f0,24($t3)
.L0d95a124:
    # Line 708
    # lw $t9, -28616($gp) # &__glSetError
.L0d95a128:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d95a13c:
    # Line 732
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95a148:
    # Line 717
    sll	$t8,$s1,0x2
.L0d95a14c:
    addu	$t8,$v0,$t8
    lwc1	$f9,-32768($t8)
    ld	$s1,0($sp)
    trunc.w.s	$f9,$f9
    swc1	$f9,0($s1)
    # Line 718
    lwc1	$f8,-32752($t8)
    trunc.w.s	$f8,$f8
    swc1	$f8,4($s1)
    # Line 719
    lwc1	$f7,-32736($t8)
    trunc.w.s	$f7,$f7
    swc1	$f7,8($s1)
    # Line 720
    lwc1	$f6,-32720($t8)
    # Line 732
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    # Line 720
    trunc.w.s	$f6,$f6
    swc1	$f6,12($s1)
    # Line 732
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95a198:
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 713
    ld	$at,0($sp)
    lw	$t9,0($v0)
    # Line 732
    addiu	$sp,$sp,48
    jr	$ra
    # Line 713
    sw	$t9,0($at)
.L0d95a1b8:
    # Line 702
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95a13c
    ld	$ra,32($sp)
.end __glkonim_GetTexGeniv

# Function: __glkonim_GetTexGendv
# Declared: Line 735 (Source lines: 735-768)
# Address: 0x0d95a1e0 - 0x0d95a3d0 (Size: 496 bytes, Frame: 48)
.globl __glkonim_GetTexGendv
.ent __glkonim_GetTexGendv
__glkonim_GetTexGendv:
    # Line 735
    addiu	$sp,$sp,-48
    # Line 742
    li	$a7,0x81f7
    # Line 735
    move	$v0,$a2
    sd	$s1,16($sp)
    li	$v1,1
    move	$s1,$a0
    lw	$at,4120($zero)
    sd	$s0,8($sp)
    move	$s0,$a1
    lui	$a1,0x13
    sd	$ra,32($sp)
    # Line 742
    sltiu	$a5,$s0,9475
    # Line 735
    addiu	$a0,$a1,28152
    sd	$gp,24($sp)
    beq	$at,$v1,.L0d95a3b4
    addu	$gp,$t9,$a0
    # Line 742
    sltiu	$a2,$s1,8192
    bnez	$a2,.L0d95a318
    sltiu	$a3,$s1,8196
    beqz	$a3,.L0d95a318
    sltiu	$a4,$s0,9472
    bnez	$a4,.L0d95a244
    sd	$v0,0($sp)
    bnez	$a5,.L0d95a25c
    # Line 748
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
.L0d95a244:
    # Line 742
    li	$a6,0x81f4
    sltu	$a6,$s0,$a6
    bnez	$a6,.L0d95a318
    sltu	$a7,$a7,$s0
    bnez	$a7,.L0d95a318
    # Line 748
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
.L0d95a25c:
    move	$a2,$s0
    move	$a1,$s1
    bal __glkon_get_special2
    li	$a0,80
    # Line 751
    li	$t8,0x81f4
    # Line 760
    ld	$t9,0($sp)
    # Line 748
    li	$t0,9472
    # Line 751
    li	$t3,0x81f5
    ld	$ra,32($sp)
    # Line 760
    sll	$at,$s1,0x2
    # Line 763
    ldc1	$f3,_lit8_3ff0000000000000
    # Line 748
    beq	$s0,$t0,.L0d95a38c
    # Line 760
    addu	$at,$v0,$at
    # Line 751
    li	$t1,9473
    beq	$s0,$t1,.L0d95a340
    # Line 754
    sll	$v1,$s1,0x2
    # Line 751
    li	$t2,9474
    beq	$s0,$t2,.L0d95a340
    # Line 754
    sll	$v1,$s1,0x2
    # Line 751
    beq	$s0,$t3,.L0d95a340
    # Line 754
    sll	$v1,$s1,0x2
    # Line 751
    beq	$s0,$t8,.L0d95a340
    # Line 754
    sll	$v1,$s1,0x2
    # Line 760
    lwc1	$f6,-32768($at)
    cvt.d.s	$f6,$f6
    sdc1	$f6,0($t9)
    # Line 761
    lwc1	$f5,-32752($at)
    cvt.d.s	$f5,$f5
    sdc1	$f5,8($t9)
    # Line 762
    lwc1	$f4,-32736($at)
    # Line 763
    sdc1	$f3,24($t9)
    # Line 762
    cvt.d.s	$f4,$f4
    sdc1	$f4,16($t9)
    # Line 764
    lwc1	$f2,-32720($at)
    cvt.d.s	$f2,$f2
    sdc1	$f2,32($t9)
    # Line 765
    lwc1	$f1,-32704($at)
    cvt.d.s	$f1,$f1
    sdc1	$f1,40($t9)
    # Line 766
    lwc1	$f0,-32688($at)
    # Line 768
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 766
    cvt.d.s	$f0,$f0
    # Line 768
    addiu	$sp,$sp,48
    jr	$ra
    # Line 766
    sdc1	$f0,48($t9)
.L0d95a318:
    # Line 745
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d95a330:
    # Line 768
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 754
    sll	$v1,$s1,0x2
.L0d95a340:
    addu	$v1,$v0,$v1
    lwc1	$f10,-32768($v1)
    ld	$v0,0($sp)
    cvt.d.s	$f10,$f10
    sdc1	$f10,0($v0)
    # Line 755
    lwc1	$f9,-32752($v1)
    cvt.d.s	$f9,$f9
    sdc1	$f9,8($v0)
    # Line 756
    lwc1	$f8,-32736($v1)
    cvt.d.s	$f8,$f8
    sdc1	$f8,16($v0)
    # Line 757
    lwc1	$f7,-32720($v1)
    # Line 768
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 757
    cvt.d.s	$f7,$f7
    # Line 768
    addiu	$sp,$sp,48
    jr	$ra
    # Line 757
    sdc1	$f7,24($v0)
.L0d95a38c:
    # Line 750
    lw	$a1,0($v0)
    # Line 768
    ld	$gp,24($sp)
    # Line 750
    mtc1	$a1,$f11
    # Line 768
    ld	$s0,8($sp)
    # Line 750
    ld	$a0,0($sp)
    # Line 768
    ld	$s1,16($sp)
    # Line 750
    cvt.d.w	$f11,$f11
    # Line 768
    addiu	$sp,$sp,48
    jr	$ra
    # Line 750
    sdc1	$f11,0($a0)
.L0d95a3b4:
    # Line 739
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95a330
    ld	$ra,32($sp)
.end __glkonim_GetTexGendv

# Function: __glkonim_GetTexGenfv
# Declared: Line 771 (Source lines: 771-804)
# Address: 0x0d95a3d0 - 0x0d95a594 (Size: 452 bytes, Frame: 48)
.globl __glkonim_GetTexGenfv
.ent __glkonim_GetTexGenfv
__glkonim_GetTexGenfv:
    # Line 771
    addiu	$sp,$sp,-48
    # Line 778
    li	$a7,0x81f7
    # Line 771
    move	$v0,$a2
    sd	$s1,16($sp)
    li	$v1,1
    move	$s1,$a0
    lw	$at,4120($zero)
    sd	$s0,8($sp)
    move	$s0,$a1
    lui	$a1,0x13
    sd	$ra,32($sp)
    # Line 778
    sltiu	$a5,$s0,9475
    # Line 771
    addiu	$a0,$a1,27656
    sd	$gp,24($sp)
    beq	$at,$v1,.L0d95a578
    addu	$gp,$t9,$a0
    # Line 778
    sltiu	$a2,$s1,8192
    bnez	$a2,.L0d95a4ec
    sltiu	$a3,$s1,8196
    beqz	$a3,.L0d95a4ec
    sltiu	$a4,$s0,9472
    bnez	$a4,.L0d95a434
    sd	$v0,0($sp)
    bnez	$a5,.L0d95a44c
    # Line 784
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
.L0d95a434:
    # Line 778
    li	$a6,0x81f4
    sltu	$a6,$s0,$a6
    bnez	$a6,.L0d95a4ec
    sltu	$a7,$a7,$s0
    bnez	$a7,.L0d95a4ec
    # Line 784
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
.L0d95a44c:
    move	$a2,$s0
    move	$a1,$s1
    bal __glkon_get_special2
    li	$a0,80
    # Line 787
    li	$t8,0x81f4
    # Line 796
    ld	$t9,0($sp)
    # Line 784
    li	$t0,9472
    # Line 787
    li	$t3,0x81f5
    ld	$ra,32($sp)
    # Line 796
    sll	$at,$s1,0x2
    # Line 799
    lwc1	$f3,_lit_3f800000
    # Line 784
    beq	$s0,$t0,.L0d95a550
    # Line 796
    addu	$at,$v0,$at
    # Line 787
    li	$t1,9473
    beq	$s0,$t1,.L0d95a510
    li	$t2,9474
    beq	$s0,$t2,.L0d95a514
    # Line 790
    sll	$v1,$s1,0x2
    # Line 787
    beq	$s0,$t3,.L0d95a514
    # Line 790
    sll	$v1,$s1,0x2
    # Line 787
    beq	$s0,$t8,.L0d95a514
    # Line 790
    sll	$v1,$s1,0x2
    # Line 796
    lwc1	$f6,-32768($at)
    swc1	$f6,0($t9)
    # Line 797
    lwc1	$f5,-32752($at)
    swc1	$f5,4($t9)
    # Line 798
    lwc1	$f4,-32736($at)
    # Line 799
    swc1	$f3,12($t9)
    # Line 798
    swc1	$f4,8($t9)
    # Line 800
    lwc1	$f2,-32720($at)
    # Line 804
    ld	$gp,24($sp)
    # Line 800
    swc1	$f2,16($t9)
    # Line 801
    lwc1	$f1,-32704($at)
    # Line 804
    ld	$s0,8($sp)
    # Line 801
    swc1	$f1,20($t9)
    # Line 802
    lwc1	$f0,-32688($at)
    # Line 804
    ld	$s1,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 802
    swc1	$f0,24($t9)
.L0d95a4ec:
    # Line 781
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d95a504:
    # Line 804
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95a510:
    # Line 790
    sll	$v1,$s1,0x2
.L0d95a514:
    addu	$v1,$v0,$v1
    ld	$v0,0($sp)
    lwc1	$f10,-32768($v1)
    swc1	$f10,0($v0)
    # Line 791
    lwc1	$f9,-32752($v1)
    # Line 804
    ld	$gp,24($sp)
    # Line 791
    swc1	$f9,4($v0)
    # Line 792
    lwc1	$f8,-32736($v1)
    # Line 804
    ld	$s0,8($sp)
    # Line 792
    swc1	$f8,8($v0)
    # Line 793
    lwc1	$f7,-32720($v1)
    # Line 804
    ld	$s1,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 793
    swc1	$f7,12($v0)
.L0d95a550:
    # Line 786
    lw	$a1,0($v0)
    mtc1	$a1,$f11
    # Line 804
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    # Line 786
    cvt.s.w	$f11,$f11
    ld	$a0,0($sp)
    # Line 804
    ld	$s1,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 786
    swc1	$f11,0($a0)
.L0d95a578:
    # Line 775
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95a504
    ld	$ra,32($sp)
.end __glkonim_GetTexGenfv

# Function: kona_get_current
# Declared: Line 812 (Source lines: 812-823)
# Address: 0x0d95a5a0 - 0x0d95a66c (Size: 204 bytes, Frame: 32)
.ent kona_get_current
kona_get_current:
    # Line 812
    lui	$at,0x13
    addiu	$sp,$sp,-32
    addiu	$at,$at,27192
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 815
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$zero
    # Line 812
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$ra,0($sp)
    # Line 815
    bal __glkon_get_special
    li	$a0,59
    move	$a2,$v0
    # Line 817
    li	$v0,2816
    li	$a1,2819
    li	$a0,2818
    # Line 818
    ld	$gp,16($sp)
    # Line 817
    li	$v1,2817
    beq	$s0,$v0,.L0d95a630
    ld	$ra,0($sp)
    beq	$s0,$v1,.L0d95a644
    # Line 821
    addiu	$v0,$a2,32
    # Line 817
    beq	$s0,$a0,.L0d95a658
    nop
    beq	$s0,$a1,.L0d95a664
    # Line 822
    addiu	$a4,$a2,48
    # Line 817
    li	$a3,2883
    # Line 818
    ld	$gp,16($sp)
    # Line 823
    move	$v0,$zero
    xor	$a3,$s0,$a3
    # Line 818
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    movz	$v0,$a4,$a3
.L0d95a628:
    jr	$ra
    addiu	$sp,$sp,32
.L0d95a630:
    move	$v0,$a2
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95a644:
    # Line 819
    addiu	$v0,$a2,16
    # Line 818
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95a658:
    ld	$s0,8($sp)
    # Line 820
    b	.L0d95a628
    addiu	$v0,$a2,20
.L0d95a664:
    # Line 821
    b	.L0d95a628
    ld	$s0,8($sp)
.end kona_get_current

# Function: kona_get_raster
# Declared: Line 830 (Source lines: 830-842)
# Address: 0x0d95a670 - 0x0d95a758 (Size: 232 bytes, Frame: 32)
.ent kona_get_raster
kona_get_raster:
    # Line 830
    lui	$at,0x13
    addiu	$sp,$sp,-32
    addiu	$at,$at,26984
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 833
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$zero
    # Line 830
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 833
    bal __glkon_get_special
    li	$a0,61
    move	$a2,$v0
    # Line 835
    li	$v0,2820
    li	$a4,2825
    # Line 836
    ld	$ra,8($sp)
    # Line 835
    li	$a3,2824
    # Line 836
    ld	$gp,0($sp)
    # Line 835
    beq	$s0,$v0,.L0d95a710
    # Line 841
    addiu	$a5,$a2,56
    # Line 835
    li	$v1,2821
    beq	$s0,$v1,.L0d95a728
    # Line 838
    addiu	$v0,$a2,20
    # Line 835
    li	$a0,2822
    beq	$s0,$a0,.L0d95a740
    li	$a1,2823
    beq	$s0,$a1,.L0d95a748
    # Line 840
    addiu	$v0,$a2,52
    # Line 835
    beq	$s0,$a3,.L0d95a750
    xor	$a4,$s0,$a4
    # Line 836
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    # Line 842
    move	$v0,$zero
    # Line 836
    jr	$ra
    movz	$v0,$a5,$a4
.L0d95a6fc:
    ld	$ra,8($sp)
.L0d95a700:
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95a710:
    ld	$ra,8($sp)
    move	$v0,$a2
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95a728:
    ld	$ra,8($sp)
    # Line 837
    addiu	$v0,$a2,16
    # Line 836
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95a740:
    # Line 838
    b	.L0d95a700
    # Line 836
    ld	$ra,8($sp)
.L0d95a748:
    # Line 839
    b	.L0d95a6fc
    addiu	$v0,$a2,36
.L0d95a750:
    # Line 840
    b	.L0d95a700
    # Line 836
    ld	$ra,8($sp)
.end kona_get_raster

# Function: kona_get_evaluator
# Declared: Line 849 (Source lines: 850-873)
# Address: 0x0d95a760 - 0x0d95a808 (Size: 168 bytes, Frame: 0)
.ent kona_get_evaluator
kona_get_evaluator:
    # Line 850
    lw	$a4,4112($zero)
    # Line 854
    li	$at,3536
    # Line 852
    lw	$a3,31588($a4)
    # Line 854
    beq	$a0,$at,.L0d95a7bc
    # Line 852
    addiu	$v0,$a3,8
    # Line 854
    li	$v1,3537
    beq	$a0,$v1,.L0d95a7d0
    li	$a1,3538
    beq	$a0,$a1,.L0d95a7e4
    li	$a2,3539
    beq	$a0,$a2,.L0d95a798
    nop
    # Line 873
    jr	$ra
    nop
.L0d95a798:
    # Line 869
    lw	$a5,1960($a4)
    mtc1	$a5,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a3)
    # Line 870
    lw	$a4,1976($a4)
    mtc1	$a4,$f0
    cvt.s.w	$f0,$f0
    # Line 873
    jr	$ra
    # Line 870
    swc1	$f0,12($a3)
.L0d95a7bc:
    # Line 856
    lwc1	$f3,1932($a4)
    swc1	$f3,8($a3)
    # Line 857
    lwc1	$f2,1936($a4)
    # Line 873
    jr	$ra
    # Line 857
    swc1	$f2,12($a3)
.L0d95a7d0:
    # Line 860
    lw	$a6,1944($a4)
    mtc1	$a6,$f4
    cvt.s.w	$f4,$f4
    # Line 873
    jr	$ra
    # Line 860
    swc1	$f4,8($a3)
.L0d95a7e4:
    # Line 863
    lwc1	$f8,1948($a4)
    swc1	$f8,8($a3)
    # Line 864
    lwc1	$f7,1952($a4)
    swc1	$f7,12($a3)
    # Line 865
    lwc1	$f6,1964($a4)
    swc1	$f6,16($a3)
    # Line 866
    lwc1	$f5,1968($a4)
    # Line 873
    jr	$ra
    # Line 866
    swc1	$f5,20($a3)
.end kona_get_evaluator

# Function: kona_get_crud
# Declared: Line 884 (Source lines: 884-943)
# Address: 0x0d95a810 - 0x0d95ab28 (Size: 792 bytes, Frame: 16)
.ent kona_get_crud
kona_get_crud:
    # Line 885
    lw	$a5,4112($zero)
    # Line 889
    sltiu	$at,$a0,3507
    # Line 887
    lw	$a4,31588($a5)
    # Line 884
    addiu	$sp,$sp,-16
    # Line 889
    bnez	$at,.L0d95a854
    # Line 887
    addiu	$a3,$a4,8
    # Line 889
    sltiu	$v0,$a0,3508
    bnez	$v0,.L0d95a898
    li	$a2,0x806f
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0d95a910
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0d95a968
    li	$a2,0x8077
    # Line 933
    lw	$a4,31632($a5)
    # Line 934
    b	.L0d95a8ac
    # Line 933
    andi	$a4,$a4,0x8
.L0d95a854:
    # Line 889
    sltiu	$a6,$a0,3477
    bnez	$a6,.L0d95a8c0
    sltiu	$t1,$a0,3473
    sltiu	$a7,$a0,3478
    bnez	$a7,.L0d95a8f8
    sltiu	$t0,$a0,3504
    bnez	$t0,.L0d95a9a8
    sltiu	$t1,$a0,3479
    sltiu	$t1,$a0,3505
    bnez	$t1,.L0d95a898
    sltiu	$t2,$a0,3506
    bnez	$t2,.L0d95aa90
    li	$t0,3505
    bnez	$at,.L0d95a898
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95a898:
    # Line 906
    lw	$a4,1812($a5)
    li	$a6,1
    addiu	$a7,$a0,-3504
    sllv	$a6,$a6,$a7
    and	$a4,$a4,$a6
.L0d95a8ac:
    # Line 943
    move	$v0,$a3
    # Line 942
    sltu	$t0,$zero,$a4
    sw	$t0,0($a3)
    # Line 943
    jr	$ra
    addiu	$sp,$sp,16
.L0d95a8c0:
    # Line 889
    bnez	$t1,.L0d95a944
    sltiu	$a6,$a0,3456
    sltiu	$t2,$a0,3474
    bnez	$t2,.L0d95a8f8
    sltiu	$t3,$a0,3475
    bnez	$t3,.L0d95aa28
    li	$t0,3474
    sltiu	$t8,$a0,3476
    bnez	$t8,.L0d95a8f8
    li	$t9,3476
    beq	$a0,$t9,.L0d95a8f8
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95a8f8:
    # Line 897
    lw	$a4,1808($a5)
    li	$a6,1
    addiu	$a7,$a0,-3472
    sllv	$a6,$a6,$a7
    # Line 898
    b	.L0d95a8ac
    # Line 897
    and	$a4,$a4,$a6
.L0d95a910:
    # Line 889
    sltiu	$t0,$a0,3511
    bnez	$t0,.L0d95a988
    sltiu	$a6,$a0,3509
    sltiu	$t1,$a0,3512
    bnez	$t1,.L0d95a898
    sltiu	$t2,$a0,3552
    bnez	$t2,.L0d95aa7c
    sltiu	$t3,$a0,3553
    beqz	$t3,.L0d95aac0
    li	$t3,3553
    # Line 927
    lw	$a4,31632($a5)
    # Line 928
    b	.L0d95a8ac
    # Line 927
    andi	$a4,$a4,0x2
.L0d95a944:
    # Line 889
    bnez	$a6,.L0d95a9cc
    li	$t8,2993
    sltiu	$a7,$a0,3457
    beqz	$a7,.L0d95aa38
    li	$t1,3472
    # Line 936
    lw	$a4,1792($a5)
    lui	$a6,0x80
    # Line 937
    b	.L0d95a8ac
    # Line 936
    and	$a4,$a4,$a6
.L0d95a968:
    # Line 889
    sltu	$a7,$a0,$a2
    bnez	$a7,.L0d95a9dc
    sltu	$t0,$a2,$a0
    bnez	$t0,.L0d95aa48
    li	$a2,0x8079
    # Line 918
    lw	$a4,5416($a5)
    # Line 919
    b	.L0d95a8ac
    # Line 918
    andi	$a4,$a4,0x8
.L0d95a988:
    # Line 889
    bnez	$a6,.L0d95aa04
    sltiu	$a7,$a0,3510
    bnez	$a7,.L0d95a898
    li	$t0,3510
    beq	$a0,$t0,.L0d95a898
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95a9a8:
    # Line 889
    bnez	$t1,.L0d95aa18
    li	$a7,3478
    sltiu	$t2,$a0,3480
    bnez	$t2,.L0d95a8f8
    li	$t3,3480
    beq	$a0,$t3,.L0d95a8f8
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95a9cc:
    # Line 889
    beq	$a0,$t8,.L0d95aad8
    nop
    b	.L0d95a8ac
    # Line 940
    lw	$a4,0($sp)
.L0d95a9dc:
    # Line 889
    li	$a2,0x8075
    sltu	$t9,$a0,$a2
    bnez	$t9,.L0d95aa6c
    li	$a6,0x8074
    sltu	$at,$a2,$a0
    bnez	$at,.L0d95aab0
    li	$t2,0x8076
    # Line 912
    lw	$a4,5416($a5)
    # Line 913
    b	.L0d95a8ac
    # Line 912
    andi	$a4,$a4,0x1
.L0d95aa04:
    # Line 889
    li	$a6,3508
    beq	$a0,$a6,.L0d95a898
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aa18:
    # Line 889
    beq	$a0,$a7,.L0d95a8f8
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aa28:
    # Line 889
    beq	$a0,$t0,.L0d95a8f8
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aa38:
    # Line 889
    beq	$a0,$t1,.L0d95a8f8
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aa48:
    # Line 889
    sltu	$t2,$a0,$a2
    bnez	$t2,.L0d95aaa0
    li	$t1,0x8078
    sltu	$t3,$a2,$a0
    bnez	$t3,.L0d95aad0
    nop
    # Line 924
    lw	$a4,5416($a5)
    # Line 925
    b	.L0d95a8ac
    # Line 924
    andi	$a4,$a4,0x10
.L0d95aa6c:
    # Line 889
    beq	$a0,$a6,.L0d95aaf8
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aa7c:
    # Line 889
    li	$a7,3512
    beq	$a0,$a7,.L0d95a898
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aa90:
    # Line 889
    beq	$a0,$t0,.L0d95a898
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aaa0:
    # Line 889
    beq	$a0,$t1,.L0d95ab04
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aab0:
    # Line 889
    beq	$a0,$t2,.L0d95ab10
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aac0:
    # Line 889
    beq	$a0,$t3,.L0d95ab1c
    nop
    # Line 940
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aad0:
    b	.L0d95a8ac
    lw	$a4,0($sp)
.L0d95aad8:
    # Line 939
    lw	$t9,12736($a5)
    lw	$t8,12740($a5)
    subu	$t8,$t8,$t9
    # Line 940
    move	$v0,$a3
    # Line 939
    sra	$t8,$t8,0x2
    # Line 943
    addiu	$sp,$sp,16
    jr	$ra
    # Line 939
    sw	$t8,8($a4)
.L0d95aaf8:
    # Line 909
    lw	$a4,5416($a5)
    # Line 910
    b	.L0d95a8ac
    # Line 909
    andi	$a4,$a4,0x20
.L0d95ab04:
    # Line 921
    lw	$a4,5416($a5)
    # Line 922
    b	.L0d95a8ac
    # Line 921
    andi	$a4,$a4,0x4
.L0d95ab10:
    # Line 915
    lw	$a4,5416($a5)
    # Line 916
    b	.L0d95a8ac
    # Line 915
    andi	$a4,$a4,0x2
.L0d95ab1c:
    # Line 930
    lw	$a4,31632($a5)
    # Line 931
    b	.L0d95a8ac
    # Line 930
    andi	$a4,$a4,0x4
.end kona_get_crud

# Function: kona_get_variable
# Declared: Line 948 (Source lines: 948-953)
# Address: 0x0d95ab30 - 0x0d95ab84 (Size: 84 bytes, Frame: 32)
.ent kona_get_variable
kona_get_variable:
    # Line 948
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$s8,0x13
    addiu	$s8,$s8,25768
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 951
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-30272
    li	$a0,0x812a
    # Line 948
    sd	$ra,0($sp)
    # Line 951
    bal __glkona_wait_rdata
    # Line 948
    move	$s8,$a1
    # Line 953
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 951
    move	$at,$v0
    # Line 952
    lw	$v0,-4($v0)
    sw	$v0,0($s8)
    # Line 953
    move	$v0,$at
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end kona_get_variable

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_41efffffffe00000:
    .word 0x41efffff, 0xffe00000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_4f800000:
    .word 0x4f800000

