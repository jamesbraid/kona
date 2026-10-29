# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/mips_vclip.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 6

.text

# Function: __glMipsClipCheckFrustum
# Declared: Line 199 (Source lines: 199-284)
# Address: 0x0da7d160 - 0x0da7d23c (Size: 220 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum
.ent __glMipsClipCheckFrustum
__glMipsClipCheckFrustum:
    # Line 199
    lwc1	$f0,124($a1)
    # Line 200
    lwc1	$f1,112($a1)
    # Line 201
    lwc1	$f2,3544($a0)
    # Line 202
    neg.s	$f3,$f0
    # Line 203
    lwc1	$f4,1720($a0)
    # Line 204
    c.lt.s	$f1,$f3
    # Line 205
    move	$v0,$zero
    # Line 206
    lwc1	$f5,116($a1)
    # Line 207
    mul.s	$f6,$f1,$f4
    # Line 208
    bc1t	.L0da7d20c
    # Line 209
    c.le.s	$f1,$f0
.L0da7d18c:
    # Line 212
    lwc1	$f7,1728($a0)
    # Line 213
    lwc1	$f8,120($a1)
    # Line 214
    bc1f	.L0da7d214
    # Line 215
    c.lt.s	$f5,$f3
.L0da7d19c:
    # Line 218
    lwc1	$f9,1736($a0)
    # Line 219
    div.s	$f10,$f2,$f0
    # Line 220
    mul.s	$f11,$f5,$f7
    # Line 221
    bc1t	.L0da7d21c
    # Line 222
    c.le.s	$f5,$f0
.L0da7d1b0:
    # Line 225
    lwc1	$f12,1724($a0)
    # Line 226
    mul.s	$f13,$f8,$f9
    # Line 227
    bc1f	.L0da7d224
    # Line 228
    c.lt.s	$f8,$f3
.L0da7d1c0:
    # Line 234
    mul.s	$f6,$f6,$f10
    # Line 235
    bc1t	.L0da7d22c
    # Line 236
    c.le.s	$f8,$f0
.L0da7d1cc:
    # Line 239
    mul.s	$f11,$f11,$f10
    # Line 240
    lwc1	$f14,1732($a0)
    # Line 241
    bc1f	.L0da7d234
    # Line 242
    mul.s	$f13,$f13,$f10
.L0da7d1dc:
    # Line 245
    bnez	$v0,.L0da7d204
    # Line 246
    add.s	$f6,$f6,$f12
    # Line 247
    lwc1	$f15,1740($a0)
    # Line 249
    add.s	$f11,$f11,$f14
    # Line 250
    swc1	$f6,128($a1)
    # Line 252
    add.s	$f13,$f13,$f15
    # Line 253
    swc1	$f11,132($a1)
    # Line 254
    swc1	$f10,140($a1)
    # Line 256
    jr	$ra
    # Line 257
    swc1	$f13,136($a1)
.L0da7d204:
    # Line 259
    jr	$ra
    # Line 260
    swc1	$f10,140($a1)
.L0da7d20c:
    # Line 263
    b	.L0da7d18c
    # Line 264
    ori	$v0,$v0,0x1
.L0da7d214:
    # Line 267
    b	.L0da7d19c
    # Line 268
    ori	$v0,$v0,0x2
.L0da7d21c:
    # Line 271
    b	.L0da7d1b0
    # Line 272
    ori	$v0,$v0,0x4
.L0da7d224:
    # Line 275
    b	.L0da7d1c0
    # Line 276
    ori	$v0,$v0,0x8
.L0da7d22c:
    # Line 279
    b	.L0da7d1cc
    # Line 280
    ori	$v0,$v0,0x10
.L0da7d234:
    # Line 283
    b	.L0da7d1dc
    # Line 284
    ori	$v0,$v0,0x20
.end __glMipsClipCheckFrustum

# Function: __glMipsClipCheckFrustum_W
# Declared: Line 302 (Source lines: 302-375)
# Address: 0x0da7d23c - 0x0da7d304 (Size: 200 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum_W
.ent __glMipsClipCheckFrustum_W
__glMipsClipCheckFrustum_W:
    # Line 302
    lui	$v1,0x3f80
    # Line 303
    lw	$a2,112($a1)
    # Line 304
    lw	$a3,116($a1)
    # Line 305
    lwc1	$f16,120($a1)
    # Line 306
    mtc1	$v1,$f17
    # Line 307
    mtc1	$a2,$f18
    # Line 308
    mtc1	$a3,$f19
    # Line 309
    neg.s	$f0,$f17
    # Line 310
    move	$v0,$zero
    # Line 311
    lwc1	$f1,1720($a0)
    # Line 312
    lwc1	$f2,1728($a0)
    # Line 313
    lwc1	$f3,1736($a0)
    # Line 314
    lwc1	$f4,1724($a0)
    # Line 315
    c.lt.s	$f18,$f0
    # Line 316
    lwc1	$f5,1732($a0)
    # Line 317
    mul.s	$f18,$f18,$f1
    # Line 318
    bc1t	.L0da7d2dc
    # Line 319
    c.lt.s	$f19,$f0
.L0da7d284:
    # Line 322
    mul.s	$f19,$f19,$f2
    # Line 323
    bc1t	.L0da7d2e4
    # Line 324
    c.lt.s	$f16,$f0
.L0da7d290:
    # Line 327
    mul.s	$f6,$f16,$f3
    # Line 328
    bc1t	.L0da7d2f4
    # Line 329
    add.s	$f18,$f18,$f4
.L0da7d29c:
    # Line 332
    slt	$a4,$v1,$a2
    # Line 333
    bnez	$a4,.L0da7d2d4
    # Line 334
    add.s	$f19,$f19,$f5
.L0da7d2a8:
    # Line 337
    lwc1	$f7,1740($a0)
    # Line 338
    slt	$a5,$v1,$a3
    # Line 339
    c.le.s	$f16,$f17
    # Line 340
    bnez	$a5,.L0da7d2ec
    # Line 341
    add.s	$f6,$f6,$f7
.L0da7d2bc:
    # Line 344
    swc1	$f18,128($a1)
    # Line 345
    bc1f	.L0da7d2fc
.L0da7d2c4:
    # Line 348
    swc1	$f19,132($a1)
    # Line 349
    sw	$v1,140($a1)
    # Line 350
    jr	$ra
    # Line 351
    swc1	$f6,136($a1)
.L0da7d2d4:
    # Line 354
    b	.L0da7d2a8
    # Line 355
    ori	$v0,$v0,0x2
.L0da7d2dc:
    # Line 358
    b	.L0da7d284
    # Line 359
    ori	$v0,$v0,0x1
.L0da7d2e4:
    # Line 362
    b	.L0da7d290
    # Line 363
    ori	$v0,$v0,0x4
.L0da7d2ec:
    # Line 366
    b	.L0da7d2bc
    # Line 367
    ori	$v0,$v0,0x8
.L0da7d2f4:
    # Line 370
    b	.L0da7d29c
    # Line 371
    ori	$v0,$v0,0x10
.L0da7d2fc:
    # Line 374
    b	.L0da7d2c4
    # Line 375
    ori	$v0,$v0,0x20
.end __glMipsClipCheckFrustum_W

# Function: __glMipsClipCheckFrustum2D
# Declared: Line 396 (Source lines: 396-445)
# Address: 0x0da7d304 - 0x0da7d3a0 (Size: 156 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum2D
.ent __glMipsClipCheckFrustum2D
__glMipsClipCheckFrustum2D:
    # Line 396
    lwc1	$f8,3544($a0)
    # Line 397
    lwc1	$f9,112($a1)
    # Line 398
    lwc1	$f10,116($a1)
    # Line 399
    neg.s	$f11,$f8
    # Line 400
    c.le.s	$f9,$f8
    # Line 401
    li	$v0,15
    # Line 402
    lwc1	$f12,1720($a0)
    # Line 403
    bc1f	.L0da7d32c
    # Line 404
    c.lt.s	$f9,$f11
    # Line 405
    xori	$v0,$v0,0x2
.L0da7d32c:
    # Line 408
    mul.s	$f9,$f9,$f12
    # Line 409
    bc1t	.L0da7d33c
    # Line 410
    c.lt.s	$f10,$f11
    # Line 411
    xori	$v0,$v0,0x1
.L0da7d33c:
    # Line 414
    lwc1	$f13,1728($a0)
    # Line 415
    bc1t	.L0da7d34c
    # Line 416
    c.le.s	$f10,$f8
    # Line 417
    xori	$v0,$v0,0x4
.L0da7d34c:
    # Line 420
    mul.s	$f10,$f10,$f13
    # Line 421
    bc1f	.L0da7d35c
    # Line 422
    lwc1	$f14,120($a1)
    # Line 423
    xori	$v0,$v0,0x8
.L0da7d35c:
    # Line 426
    lwc1	$f15,1736($a0)
    # Line 427
    lwc1	$f16,1724($a0)
    # Line 428
    lwc1	$f17,1732($a0)
    # Line 429
    mul.s	$f14,$f14,$f15
    # Line 430
    add.s	$f9,$f9,$f16
    # Line 431
    lwc1	$f18,1740($a0)
    # Line 432
    bnez	$v0,.L0da7d398
    # Line 433
    add.s	$f10,$f10,$f17
    # Line 434
    swc1	$f9,128($a1)
    # Line 435
    nop
    # Line 436
    add.s	$f14,$f14,$f18
    # Line 437
    swc1	$f10,132($a1)
    # Line 438
    swc1	$f8,140($a1)
    # Line 440
    jr	$ra
    # Line 441
    swc1	$f14,136($a1)
.L0da7d398:
    # Line 444
    jr	$ra
    # Line 445
    swc1	$f8,140($a1)
.end __glMipsClipCheckFrustum2D

# Function: __glMipsClipCheckAll2
# Declared: Line 469 (Source lines: 469-493)
# Address: 0x0da7d3a0 - 0x0da7d400 (Size: 96 bytes, Frame: 48)
.globl __glMipsClipCheckAll2
.ent __glMipsClipCheckAll2
__glMipsClipCheckAll2:
    # Line 469
    addiu	$sp,$sp,-48
    # Line 473
    sd	$gp,8($sp)
    lui	$gp,0x1
    daddiu	$gp,$gp,15416
    daddu	$gp,$gp,$t9
    # Line 483
    # lw $t9, -25688($gp) # &__glClipCheckAll2
    # Line 475
    sw	$ra,44($sp)
    # Line 476
    sw	$t3,36($sp)
    # Line 477
    sw	$t2,32($sp)
    # Line 478
    sw	$t1,28($sp)
    # Line 479
    sw	$t0,24($sp)
    # Line 480
    sw	$a1,20($sp)
    # Line 483
    jal	__glClipCheckAll2
    # Line 481
    sw	$a0,16($sp)
    # Line 484
    lw	$ra,44($sp)
    # Line 485
    lw	$t3,36($sp)
    # Line 486
    lw	$t2,32($sp)
    # Line 487
    lw	$t1,28($sp)
    # Line 488
    lw	$t0,24($sp)
    # Line 489
    lw	$a1,20($sp)
    # Line 490
    lw	$a0,16($sp)
    # Line 491
    ld	$gp,8($sp)
    # Line 493
    jr	$ra
    # Line 492
    addiu	$sp,$sp,48
.end __glMipsClipCheckAll2

# Function: __glMipsClipCheckAll3
# Declared: Line 502 (Source lines: 502-526)
# Address: 0x0da7d400 - 0x0da7d460 (Size: 96 bytes, Frame: 48)
.globl __glMipsClipCheckAll3
.ent __glMipsClipCheckAll3
__glMipsClipCheckAll3:
    # Line 502
    addiu	$sp,$sp,-48
    # Line 506
    sd	$gp,8($sp)
    lui	$gp,0x1
    daddiu	$gp,$gp,15320
    daddu	$gp,$gp,$t9
    # Line 516
    # lw $t9, -25684($gp) # &__glClipCheckAll3
    # Line 508
    sw	$ra,44($sp)
    # Line 509
    sw	$t3,36($sp)
    # Line 510
    sw	$t2,32($sp)
    # Line 511
    sw	$t1,28($sp)
    # Line 512
    sw	$t0,24($sp)
    # Line 513
    sw	$a1,20($sp)
    # Line 516
    jal	__glClipCheckAll3
    # Line 514
    sw	$a0,16($sp)
    # Line 517
    lw	$ra,44($sp)
    # Line 518
    lw	$t3,36($sp)
    # Line 519
    lw	$t2,32($sp)
    # Line 520
    lw	$t1,28($sp)
    # Line 521
    lw	$t0,24($sp)
    # Line 522
    lw	$a1,20($sp)
    # Line 523
    lw	$a0,16($sp)
    # Line 524
    ld	$gp,8($sp)
    # Line 526
    jr	$ra
    # Line 525
    addiu	$sp,$sp,48
.end __glMipsClipCheckAll3

# Function: __glMipsClipCheckAll
# Declared: Line 535 (Source lines: 535-559)
# Address: 0x0da7d460 - 0x0da7d4c0 (Size: 96 bytes, Frame: 48)
.globl __glMipsClipCheckAll
.ent __glMipsClipCheckAll
__glMipsClipCheckAll:
    # Line 535
    addiu	$sp,$sp,-48
    # Line 539
    sd	$gp,8($sp)
    lui	$gp,0x1
    daddiu	$gp,$gp,15224
    daddu	$gp,$gp,$t9
    # Line 549
    # lw $t9, -25680($gp) # &__glClipCheckAll
    # Line 541
    sw	$ra,44($sp)
    # Line 542
    sw	$t3,36($sp)
    # Line 543
    sw	$t2,32($sp)
    # Line 544
    sw	$t1,28($sp)
    # Line 545
    sw	$t0,24($sp)
    # Line 546
    sw	$a1,20($sp)
    # Line 549
    jal	__glClipCheckAll
    # Line 547
    sw	$a0,16($sp)
    # Line 550
    lw	$ra,44($sp)
    # Line 551
    lw	$t3,36($sp)
    # Line 552
    lw	$t2,32($sp)
    # Line 553
    lw	$t1,28($sp)
    # Line 554
    lw	$t0,24($sp)
    # Line 555
    lw	$a1,20($sp)
    # Line 556
    lw	$a0,16($sp)
    # Line 557
    ld	$gp,8($sp)
    # Line 559
    jr	$ra
    # Line 558
    addiu	$sp,$sp,48
.end __glMipsClipCheckAll

