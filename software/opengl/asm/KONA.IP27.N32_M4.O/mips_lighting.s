# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/mips_lighting.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glClampAndScaleColor
# Declared: Line 105 (Source lines: 105-180)
# Address: 0x0da7c2c0 - 0x0da7c38c (Size: 204 bytes, Frame: 0)
.globl __glClampAndScaleColor
.ent __glClampAndScaleColor
__glClampAndScaleColor:
    # Line 105
    lwc1	$f0,432($a0)
    # Line 120
    lui	$a2,0x3f80
    # Line 106
    lwc1	$f1,30808($a0)
    # Line 109
    mul.s	$f4,$f0,$f1
    # Line 107
    lwc1	$f2,436($a0)
    # Line 108
    lwc1	$f3,30812($a0)
    # Line 113
    mul.s	$f8,$f2,$f3
    # Line 110
    lwc1	$f5,440($a0)
    # Line 111
    lwc1	$f6,30816($a0)
    # Line 116
    mul.s	$f10,$f5,$f6
    # Line 112
    lwc1	$f7,444($a0)
    # Line 114
    lwc1	$f9,30848($a0)
    # Line 119
    mul.s	$f11,$f7,$f9
    # Line 115
    mfc1	$v0,$f0
    # Line 117
    mfc1	$v1,$f2
    # Line 118
    mfc1	$a1,$f5
    nop
    # Line 122
    bltz	$v0,.L0da7c34c
    # Line 123
    slt	$a3,$a2,$v0
    # Line 124
    bnez	$a3,.L0da7c354
.L0da7c310:
    # Line 126
    mfc1	$t0,$f7
.L0da7c314:
    # Line 128
    bltz	$v1,.L0da7c35c
    # Line 129
    slt	$t1,$a2,$v1
    # Line 130
    bnez	$t1,.L0da7c364
.L0da7c320:
    # Line 132
    swc1	$f4,192($a0)
.L0da7c324:
    # Line 134
    bltz	$a1,.L0da7c36c
    # Line 135
    slt	$t2,$a2,$a1
    # Line 136
    bnez	$t2,.L0da7c374
.L0da7c330:
    # Line 138
    swc1	$f8,196($a0)
.L0da7c334:
    # Line 140
    bltz	$t0,.L0da7c37c
    # Line 141
    slt	$t3,$a2,$t0
    # Line 142
    bnez	$t3,.L0da7c384
.L0da7c340:
    # Line 144
    swc1	$f10,200($a0)
.L0da7c344:
    # Line 146
    jr	$ra
    # Line 147
    swc1	$f11,204($a0)
.L0da7c34c:
    # Line 151
    b	.L0da7c310
    # Line 152
    mtc1	$zero,$f4
.L0da7c354:
    # Line 155
    b	.L0da7c314
    # Line 156
    mov.s	$f4,$f1
.L0da7c35c:
    # Line 159
    b	.L0da7c320
    # Line 160
    mtc1	$zero,$f8
.L0da7c364:
    # Line 163
    b	.L0da7c324
    # Line 164
    mov.s	$f8,$f3
.L0da7c36c:
    # Line 167
    b	.L0da7c330
    # Line 168
    mtc1	$zero,$f10
.L0da7c374:
    # Line 171
    b	.L0da7c334
    # Line 172
    mov.s	$f10,$f6
.L0da7c37c:
    # Line 175
    b	.L0da7c340
    # Line 176
    mtc1	$zero,$f11
.L0da7c384:
    # Line 179
    b	.L0da7c344
    # Line 180
    mov.s	$f11,$f9
.end __glClampAndScaleColor

# Function: __glFastCalcRGBColor
# Declared: Line 196 (Source lines: 196-398)
# Address: 0x0da7c38c - 0x0da7c5e4 (Size: 600 bytes, Frame: 192)
.globl __glFastCalcRGBColor
.ent __glFastCalcRGBColor
__glFastCalcRGBColor:
    # Line 196
    addiu	$sp,$sp,-64
    # Line 199
    sw	$ra,60($sp)
    # Line 200
    sdc1	$f20,48($sp)
    # Line 201
    sdc1	$f22,40($sp)
    # Line 202
    sdc1	$f24,32($sp)
    # Line 203
    sdc1	$f26,24($sp)
    # Line 208
    lw	$a4,28236($a0)
    # Line 209
    lwc1	$f12,32($a2)
    # Line 210
    lwc1	$f13,36($a2)
    # Line 211
    bnez	$a1,.L0da7c3f8
    # Line 212
    lwc1	$f14,40($a2)
    # Line 213
    move	$a5,$zero
    # Line 214
    addiu	$a6,$a2,144
    # Line 215
    b	.L0da7c410
    # Line 216
    addiu	$a7,$a0,28156
.L0da7c3c8:
    # Line 219
    b	.L0da7c59c
    # Line 220
    move	$t8,$zero
.L0da7c3d0:
    # Line 223
    b	.L0da7c5a0
    # Line 224
    move	$t8,$t9
.L0da7c3d8:
    # Line 227
    b	.L0da7c5ac
    # Line 228
    move	$v0,$zero
.L0da7c3e0:
    # Line 231
    b	.L0da7c5b0
    # Line 232
    move	$v0,$v1
.L0da7c3e8:
    # Line 235
    b	.L0da7c5bc
    # Line 236
    move	$a0,$zero
.L0da7c3f0:
    # Line 239
    b	.L0da7c5c0
    # Line 240
    move	$a0,$a1
.L0da7c3f8:
    # Line 243
    neg.s	$f12,$f12
    # Line 244
    neg.s	$f13,$f13
    # Line 245
    neg.s	$f14,$f14
    # Line 246
    addiu	$a6,$a2,160
    # Line 247
    addiu	$a7,$a0,28196
    # Line 248
    li	$a5,48
.L0da7c410:
    # Line 252
    lwc1	$f15,0($a7)
    # Line 253
    lwc1	$f16,4($a7)
    # Line 254
    beqz	$a4,.L0da7c578
    # Line 255
    lwc1	$f17,8($a7)
.L0da7c420:
    # Line 258
    addiu	$a2,$a4,0
    # Line 259
    addu	$a2,$a2,$a5
    # Line 265
    lwc1	$f18,0($a2)
    # Line 266
    lwc1	$f19,176($a4)
    # Line 267
    lwc1	$f20,4($a2)
    # Line 268
    lwc1	$f22,180($a4)
    # Line 269
    lwc1	$f24,8($a2)
    # Line 270
    add.s	$f15,$f15,$f18
    # Line 271
    mul.s	$f19,$f19,$f12
    # Line 272
    lwc1	$f26,184($a4)
    # Line 273
    add.s	$f16,$f16,$f20
    # Line 274
    mul.s	$f22,$f22,$f13
    # Line 275
    lwc1	$f0,160($a4)
    # Line 276
    add.s	$f17,$f17,$f24
    # Line 277
    mul.s	$f26,$f26,$f14
    # Line 278
    lwc1	$f1,164($a4)
    # Line 279
    nop
    # Line 280
    mul.s	$f0,$f0,$f12
    # Line 281
    lwc1	$f2,168($a4)
    # Line 282
    add.s	$f3,$f19,$f22
    # Line 283
    mul.s	$f1,$f1,$f13
    # Line 284
    lw	$a4,200($a4)
    # Line 285
    nop
    # Line 286
    mul.s	$f2,$f2,$f14
    # Line 287
    mtc1	$zero,$f4
    # Line 288
    add.s	$f3,$f3,$f26
    # Line 289
    nop
    # Line 290
    add.s	$f5,$f0,$f1
    # Line 291
    lwc1	$f6,16($a2)
    # Line 292
    lwc1	$f7,24($a7)
    # Line 293
    c.le.s	$f3,$f4
    # Line 294
    add.s	$f5,$f5,$f2
    # Line 295
    lwc1	$f8,20($a2)
    # Line 296
    bc1t	.L0da7c574
    # Line 297
    sub.s	$f5,$f5,$f7
    # Line 298
    mul.s	$f6,$f6,$f3
    # Line 299
    nop
    # Line 300
    lwc1	$f9,28($a7)
    # Line 301
    mul.s	$f8,$f8,$f3
    # Line 302
    c.lt.s	$f5,$f4
    # Line 303
    lwc1	$f10,24($a2)
    # Line 304
    nop
    # Line 305
    mul.s	$f11,$f5,$f9
    # Line 306
    nop
    # Line 307
    add.s	$f15,$f15,$f6
    # Line 308
    mul.s	$f10,$f10,$f3
    # Line 309
    lwc1	$f18,3540($a0)
    # Line 310
    add.s	$f16,$f16,$f8
    # Line 311
    nop
    # Line 312
    add.s	$f11,$f11,$f18
    # Line 313
    nop
    # Line 319
    trunc.w.s	$f11,$f11
    # Line 321
    nop
    # Line 322
    bc1t	.L0da7c574
    # Line 323
    add.s	$f17,$f17,$f10
    # Line 324
    mfc1	$t0,$f11
    # Line 325
    lw	$t1,20($a7)
    # Line 326
    lwc1	$f19,32($a2)
    # Line 327
    slti	$t2,$t0,256
    # Line 328
    beqz	$t2,.L0da7c55c
    # Line 329
    sll	$t0,$t0,0x2
    # Line 330
    addu	$t1,$t1,$t0
    # Line 331
    lwc1	$f20,0($t1)
    # Line 332
    lwc1	$f22,36($a2)
    # Line 333
    mul.s	$f19,$f19,$f20
    # Line 334
    lwc1	$f24,40($a2)
    # Line 335
    mul.s	$f22,$f22,$f20
    # Line 336
    lw	$t9,30808($a0)
    # Line 337
    mul.s	$f24,$f24,$f20
    # Line 338
    lw	$v1,30812($a0)
    # Line 339
    add.s	$f15,$f15,$f19
    # Line 340
    lw	$a1,30816($a0)
    # Line 341
    add.s	$f16,$f16,$f22
    # Line 342
    mfc1	$t8,$f15
    # Line 343
    bnez	$a4,.L0da7c420
    # Line 344
    add.s	$f17,$f17,$f24
    # Line 345
    mfc1	$v0,$f16
    # Line 346
    b	.L0da7c590
    # Line 347
    mfc1	$a0,$f17
.L0da7c55c:
    # Line 351
    lwc1	$f26,36($a2)
    # Line 352
    add.s	$f15,$f15,$f19
    # Line 353
    lwc1	$f0,40($a2)
    # Line 354
    add.s	$f16,$f16,$f26
    # Line 355
    nop
    # Line 356
    add.s	$f17,$f17,$f0
.L0da7c574:
    # Line 360
    bnez	$a4,.L0da7c420
.L0da7c578:
    # Line 364
    lw	$t9,30808($a0)
    # Line 365
    lw	$v1,30812($a0)
    # Line 366
    lw	$a1,30816($a0)
    # Line 367
    mfc1	$t8,$f15
    # Line 368
    mfc1	$v0,$f16
    # Line 369
    mfc1	$a0,$f17
.L0da7c590:
    # Line 372
    bltz	$t8,.L0da7c3c8
    # Line 373
    slt	$t3,$t9,$t8
    # Line 374
    bnez	$t3,.L0da7c3d0
.L0da7c59c:
    # Line 376
    lw	$a4,36($a7)
.L0da7c5a0:
    # Line 378
    bltz	$v0,.L0da7c3d8
    # Line 379
    slt	$a5,$v1,$v0
    # Line 380
    bnez	$a5,.L0da7c3e0
.L0da7c5ac:
    # Line 382
    sw	$t8,0($a6)
.L0da7c5b0:
    # Line 384
    bltz	$a0,.L0da7c3e8
    # Line 385
    slt	$a7,$a1,$a0
    # Line 386
    bnez	$a7,.L0da7c3f0
.L0da7c5bc:
    # Line 388
    sw	$v0,4($a6)
.L0da7c5c0:
    # Line 390
    sw	$a0,8($a6)
    # Line 391
    sw	$a4,12($a6)
    # Line 392
    lw	$ra,60($sp)
    # Line 393
    ldc1	$f20,48($sp)
    # Line 394
    ldc1	$f22,40($sp)
    # Line 395
    ldc1	$f24,32($sp)
    # Line 396
    ldc1	$f26,24($sp)
    # Line 397
    jr	$ra
    # Line 398
    addiu	$sp,$sp,64
.end __glFastCalcRGBColor

