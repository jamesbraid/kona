# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/g_api.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 470

.text

# Function: glNewList
# Declared: Line 36 (Source lines: 36-37)
# Address: 0x0da77c80 - 0x0da77c8c (Size: 12 bytes, Frame: 0)
.globl glNewList
.ent glNewList
glNewList:
    # Line 36
    lw	$t9,4176($zero)
    # Line 37
    jr	$t9
    nop
.end glNewList

# Function: glEndList
# Declared: Line 43 (Source lines: 43-44)
# Address: 0x0da77c8c - 0x0da77c98 (Size: 12 bytes, Frame: 0)
.globl glEndList
.ent glEndList
glEndList:
    # Line 43
    lw	$t9,4180($zero)
    # Line 44
    jr	$t9
    nop
.end glEndList

# Function: glCallList
# Declared: Line 50 (Source lines: 50-51)
# Address: 0x0da77c98 - 0x0da77ca4 (Size: 12 bytes, Frame: 0)
.globl glCallList
.ent glCallList
glCallList:
    # Line 50
    lw	$t9,4184($zero)
    # Line 51
    jr	$t9
    nop
.end glCallList

# Function: glCallLists
# Declared: Line 57 (Source lines: 57-58)
# Address: 0x0da77ca4 - 0x0da77cb0 (Size: 12 bytes, Frame: 0)
.globl glCallLists
.ent glCallLists
glCallLists:
    # Line 57
    lw	$t9,4188($zero)
    # Line 58
    jr	$t9
    nop
.end glCallLists

# Function: glDeleteLists
# Declared: Line 64 (Source lines: 64-65)
# Address: 0x0da77cb0 - 0x0da77cbc (Size: 12 bytes, Frame: 0)
.globl glDeleteLists
.ent glDeleteLists
glDeleteLists:
    # Line 64
    lw	$t9,4192($zero)
    # Line 65
    jr	$t9
    nop
.end glDeleteLists

# Function: glGenLists
# Declared: Line 71 (Source lines: 71-72)
# Address: 0x0da77cbc - 0x0da77cc8 (Size: 12 bytes, Frame: 0)
.globl glGenLists
.ent glGenLists
glGenLists:
    # Line 71
    lw	$t9,4196($zero)
    # Line 72
    jr	$t9
    nop
.end glGenLists

# Function: glListBase
# Declared: Line 78 (Source lines: 78-79)
# Address: 0x0da77cc8 - 0x0da77cd4 (Size: 12 bytes, Frame: 0)
.globl glListBase
.ent glListBase
glListBase:
    # Line 78
    lw	$t9,4200($zero)
    # Line 79
    jr	$t9
    nop
.end glListBase

# Function: glBegin
# Declared: Line 85 (Source lines: 85-86)
# Address: 0x0da77cd4 - 0x0da77ce0 (Size: 12 bytes, Frame: 0)
.globl glBegin
.ent glBegin
glBegin:
    # Line 85
    lw	$t9,4204($zero)
    # Line 86
    jr	$t9
    nop
.end glBegin

# Function: glBitmap
# Declared: Line 92 (Source lines: 92-93)
# Address: 0x0da77ce0 - 0x0da77cec (Size: 12 bytes, Frame: 0)
.globl glBitmap
.ent glBitmap
glBitmap:
    # Line 92
    lw	$t9,4208($zero)
    # Line 93
    jr	$t9
    nop
.end glBitmap

# Function: glColor3b
# Declared: Line 99 (Source lines: 99-100)
# Address: 0x0da77cec - 0x0da77cf8 (Size: 12 bytes, Frame: 0)
.globl glColor3b
.ent glColor3b
glColor3b:
    # Line 99
    lw	$t9,5592($zero)
    # Line 100
    jr	$t9
    nop
.end glColor3b

# Function: glColor3bv
# Declared: Line 107 (Source lines: 107-112)
# Address: 0x0da77cf8 - 0x0da77d0c (Size: 20 bytes, Frame: 0)
.globl glColor3bv
.ent glColor3bv
glColor3bv:
    # Line 107
    lw	$t9,5596($zero)
    # Line 109
    lbu	$v0,0($a0)
    # Line 110
    lbu	$v1,1($a0)
    # Line 111
    jr	$t9
    # Line 112
    lbu	$t0,2($a0)
.end glColor3bv

# Function: glColor3d
# Declared: Line 119 (Source lines: 119-120)
# Address: 0x0da77d0c - 0x0da77d18 (Size: 12 bytes, Frame: 0)
.globl glColor3d
.ent glColor3d
glColor3d:
    # Line 119
    lw	$t9,5600($zero)
    # Line 120
    jr	$t9
    nop
.end glColor3d

# Function: glColor3dv
# Declared: Line 127 (Source lines: 127-132)
# Address: 0x0da77d18 - 0x0da77d2c (Size: 20 bytes, Frame: 0)
.globl glColor3dv
.ent glColor3dv
glColor3dv:
    # Line 127
    lw	$t9,5604($zero)
    # Line 129
    ldc1	$f1,0($a0)
    # Line 130
    ldc1	$f0,8($a0)
    # Line 131
    jr	$t9
    # Line 132
    ldc1	$f3,16($a0)
.end glColor3dv

# Function: glColor3f
# Declared: Line 139 (Source lines: 139-140)
# Address: 0x0da77d2c - 0x0da77d38 (Size: 12 bytes, Frame: 0)
.globl glColor3f
.ent glColor3f
glColor3f:
    # Line 139
    lw	$t9,5608($zero)
    # Line 140
    jr	$t9
    nop
.end glColor3f

# Function: glColor3fv
# Declared: Line 147 (Source lines: 147-152)
# Address: 0x0da77d38 - 0x0da77d4c (Size: 20 bytes, Frame: 0)
.globl glColor3fv
.ent glColor3fv
glColor3fv:
    # Line 147
    lw	$t9,5612($zero)
    # Line 149
    ldl	$v0,0($a0)
    # Line 150
    ldr	$v0,7($a0)
    # Line 151
    jr	$t9
    # Line 152
    lwu	$v1,8($a0)
.end glColor3fv

# Function: glColor3i
# Declared: Line 159 (Source lines: 159-160)
# Address: 0x0da77d4c - 0x0da77d58 (Size: 12 bytes, Frame: 0)
.globl glColor3i
.ent glColor3i
glColor3i:
    # Line 159
    lw	$t9,5616($zero)
    # Line 160
    jr	$t9
    nop
.end glColor3i

# Function: glColor3iv
# Declared: Line 167 (Source lines: 167-172)
# Address: 0x0da77d58 - 0x0da77d6c (Size: 20 bytes, Frame: 0)
.globl glColor3iv
.ent glColor3iv
glColor3iv:
    # Line 167
    lw	$t9,5620($zero)
    # Line 169
    ldl	$v0,0($a0)
    # Line 170
    ldr	$v0,7($a0)
    # Line 171
    jr	$t9
    # Line 172
    lwu	$v1,8($a0)
.end glColor3iv

# Function: glColor3s
# Declared: Line 179 (Source lines: 179-180)
# Address: 0x0da77d6c - 0x0da77d78 (Size: 12 bytes, Frame: 0)
.globl glColor3s
.ent glColor3s
glColor3s:
    # Line 179
    lw	$t9,5624($zero)
    # Line 180
    jr	$t9
    nop
.end glColor3s

# Function: glColor3sv
# Declared: Line 187 (Source lines: 187-192)
# Address: 0x0da77d78 - 0x0da77d8c (Size: 20 bytes, Frame: 0)
.globl glColor3sv
.ent glColor3sv
glColor3sv:
    # Line 187
    lw	$t9,5628($zero)
    # Line 189
    lhu	$v0,0($a0)
    # Line 190
    lhu	$v1,2($a0)
    # Line 191
    jr	$t9
    # Line 192
    lhu	$t0,4($a0)
.end glColor3sv

# Function: glColor3ub
# Declared: Line 199 (Source lines: 199-200)
# Address: 0x0da77d8c - 0x0da77d98 (Size: 12 bytes, Frame: 0)
.globl glColor3ub
.ent glColor3ub
glColor3ub:
    # Line 199
    lw	$t9,5632($zero)
    # Line 200
    jr	$t9
    nop
.end glColor3ub

# Function: glColor3ubv
# Declared: Line 207 (Source lines: 207-212)
# Address: 0x0da77d98 - 0x0da77dac (Size: 20 bytes, Frame: 0)
.globl glColor3ubv
.ent glColor3ubv
glColor3ubv:
    # Line 207
    lw	$t9,5636($zero)
    # Line 209
    lbu	$v0,0($a0)
    # Line 210
    lbu	$v1,1($a0)
    # Line 211
    jr	$t9
    # Line 212
    lbu	$t0,2($a0)
.end glColor3ubv

# Function: glColor3ui
# Declared: Line 219 (Source lines: 219-220)
# Address: 0x0da77dac - 0x0da77db8 (Size: 12 bytes, Frame: 0)
.globl glColor3ui
.ent glColor3ui
glColor3ui:
    # Line 219
    lw	$t9,5640($zero)
    # Line 220
    jr	$t9
    nop
.end glColor3ui

# Function: glColor3uiv
# Declared: Line 227 (Source lines: 227-232)
# Address: 0x0da77db8 - 0x0da77dcc (Size: 20 bytes, Frame: 0)
.globl glColor3uiv
.ent glColor3uiv
glColor3uiv:
    # Line 227
    lw	$t9,5644($zero)
    # Line 229
    ldl	$v0,0($a0)
    # Line 230
    ldr	$v0,7($a0)
    # Line 231
    jr	$t9
    # Line 232
    lwu	$v1,8($a0)
.end glColor3uiv

# Function: glColor3us
# Declared: Line 239 (Source lines: 239-240)
# Address: 0x0da77dcc - 0x0da77dd8 (Size: 12 bytes, Frame: 0)
.globl glColor3us
.ent glColor3us
glColor3us:
    # Line 239
    lw	$t9,5648($zero)
    # Line 240
    jr	$t9
    nop
.end glColor3us

# Function: glColor3usv
# Declared: Line 247 (Source lines: 247-252)
# Address: 0x0da77dd8 - 0x0da77dec (Size: 20 bytes, Frame: 0)
.globl glColor3usv
.ent glColor3usv
glColor3usv:
    # Line 247
    lw	$t9,5652($zero)
    # Line 249
    lhu	$v0,0($a0)
    # Line 250
    lhu	$v1,2($a0)
    # Line 251
    jr	$t9
    # Line 252
    lhu	$t0,4($a0)
.end glColor3usv

# Function: glColor4b
# Declared: Line 259 (Source lines: 259-260)
# Address: 0x0da77dec - 0x0da77df8 (Size: 12 bytes, Frame: 0)
.globl glColor4b
.ent glColor4b
glColor4b:
    # Line 259
    lw	$t9,5656($zero)
    # Line 260
    jr	$t9
    nop
.end glColor4b

# Function: glColor4bv
# Declared: Line 267 (Source lines: 267-272)
# Address: 0x0da77df8 - 0x0da77e0c (Size: 20 bytes, Frame: 0)
.globl glColor4bv
.ent glColor4bv
glColor4bv:
    # Line 267
    lw	$t9,5660($zero)
    # Line 269
    lbu	$v0,0($a0)
    # Line 270
    lbu	$v1,1($a0)
    # Line 271
    jr	$t9
    # Line 272
    lbu	$t0,2($a0)
.end glColor4bv

# Function: glColor4d
# Declared: Line 279 (Source lines: 279-280)
# Address: 0x0da77e0c - 0x0da77e18 (Size: 12 bytes, Frame: 0)
.globl glColor4d
.ent glColor4d
glColor4d:
    # Line 279
    lw	$t9,5664($zero)
    # Line 280
    jr	$t9
    nop
.end glColor4d

# Function: glColor4dv
# Declared: Line 287 (Source lines: 287-292)
# Address: 0x0da77e18 - 0x0da77e2c (Size: 20 bytes, Frame: 0)
.globl glColor4dv
.ent glColor4dv
glColor4dv:
    # Line 287
    lw	$t9,5668($zero)
    # Line 289
    ldc1	$f1,0($a0)
    # Line 290
    ldc1	$f0,8($a0)
    # Line 291
    jr	$t9
    # Line 292
    ldc1	$f3,16($a0)
.end glColor4dv

# Function: glColor4f
# Declared: Line 299 (Source lines: 299-300)
# Address: 0x0da77e2c - 0x0da77e38 (Size: 12 bytes, Frame: 0)
.globl glColor4f
.ent glColor4f
glColor4f:
    # Line 299
    lw	$t9,5672($zero)
    # Line 300
    jr	$t9
    nop
.end glColor4f

# Function: glColor4fv
# Declared: Line 307 (Source lines: 307-312)
# Address: 0x0da77e38 - 0x0da77e4c (Size: 20 bytes, Frame: 0)
.globl glColor4fv
.ent glColor4fv
glColor4fv:
    # Line 307
    lw	$t9,5676($zero)
    # Line 309
    ldl	$v0,0($a0)
    # Line 310
    ldr	$v0,7($a0)
    # Line 311
    jr	$t9
    # Line 312
    ldl	$v1,8($a0)
.end glColor4fv

# Function: glColor4i
# Declared: Line 319 (Source lines: 319-320)
# Address: 0x0da77e4c - 0x0da77e58 (Size: 12 bytes, Frame: 0)
.globl glColor4i
.ent glColor4i
glColor4i:
    # Line 319
    lw	$t9,5680($zero)
    # Line 320
    jr	$t9
    nop
.end glColor4i

# Function: glColor4iv
# Declared: Line 327 (Source lines: 327-332)
# Address: 0x0da77e58 - 0x0da77e6c (Size: 20 bytes, Frame: 0)
.globl glColor4iv
.ent glColor4iv
glColor4iv:
    # Line 327
    lw	$t9,5684($zero)
    # Line 329
    ldl	$v0,0($a0)
    # Line 330
    ldr	$v0,7($a0)
    # Line 331
    jr	$t9
    # Line 332
    ldl	$v1,8($a0)
.end glColor4iv

# Function: glColor4s
# Declared: Line 339 (Source lines: 339-340)
# Address: 0x0da77e6c - 0x0da77e78 (Size: 12 bytes, Frame: 0)
.globl glColor4s
.ent glColor4s
glColor4s:
    # Line 339
    lw	$t9,5688($zero)
    # Line 340
    jr	$t9
    nop
.end glColor4s

# Function: glColor4sv
# Declared: Line 347 (Source lines: 347-352)
# Address: 0x0da77e78 - 0x0da77e8c (Size: 20 bytes, Frame: 0)
.globl glColor4sv
.ent glColor4sv
glColor4sv:
    # Line 347
    lw	$t9,5692($zero)
    # Line 349
    lhu	$v0,0($a0)
    # Line 350
    lhu	$v1,2($a0)
    # Line 351
    jr	$t9
    # Line 352
    lhu	$t0,4($a0)
.end glColor4sv

# Function: glColor4ub
# Declared: Line 359 (Source lines: 359-360)
# Address: 0x0da77e8c - 0x0da77e98 (Size: 12 bytes, Frame: 0)
.globl glColor4ub
.ent glColor4ub
glColor4ub:
    # Line 359
    lw	$t9,5696($zero)
    # Line 360
    jr	$t9
    nop
.end glColor4ub

# Function: glColor4ubv
# Declared: Line 367 (Source lines: 367-372)
# Address: 0x0da77e98 - 0x0da77eac (Size: 20 bytes, Frame: 0)
.globl glColor4ubv
.ent glColor4ubv
glColor4ubv:
    # Line 367
    lw	$t9,5700($zero)
    # Line 369
    lbu	$v0,0($a0)
    # Line 370
    lbu	$v1,1($a0)
    # Line 371
    jr	$t9
    # Line 372
    lbu	$t0,2($a0)
.end glColor4ubv

# Function: glColor4ui
# Declared: Line 379 (Source lines: 379-380)
# Address: 0x0da77eac - 0x0da77eb8 (Size: 12 bytes, Frame: 0)
.globl glColor4ui
.ent glColor4ui
glColor4ui:
    # Line 379
    lw	$t9,5704($zero)
    # Line 380
    jr	$t9
    nop
.end glColor4ui

# Function: glColor4uiv
# Declared: Line 387 (Source lines: 387-392)
# Address: 0x0da77eb8 - 0x0da77ecc (Size: 20 bytes, Frame: 0)
.globl glColor4uiv
.ent glColor4uiv
glColor4uiv:
    # Line 387
    lw	$t9,5708($zero)
    # Line 389
    ldl	$v0,0($a0)
    # Line 390
    ldr	$v0,7($a0)
    # Line 391
    jr	$t9
    # Line 392
    ldl	$v1,8($a0)
.end glColor4uiv

# Function: glColor4us
# Declared: Line 399 (Source lines: 399-400)
# Address: 0x0da77ecc - 0x0da77ed8 (Size: 12 bytes, Frame: 0)
.globl glColor4us
.ent glColor4us
glColor4us:
    # Line 399
    lw	$t9,5712($zero)
    # Line 400
    jr	$t9
    nop
.end glColor4us

# Function: glColor4usv
# Declared: Line 407 (Source lines: 407-412)
# Address: 0x0da77ed8 - 0x0da77eec (Size: 20 bytes, Frame: 0)
.globl glColor4usv
.ent glColor4usv
glColor4usv:
    # Line 407
    lw	$t9,5716($zero)
    # Line 409
    lhu	$v0,0($a0)
    # Line 410
    lhu	$v1,2($a0)
    # Line 411
    jr	$t9
    # Line 412
    lhu	$t0,4($a0)
.end glColor4usv

# Function: glEdgeFlag
# Declared: Line 419 (Source lines: 419-420)
# Address: 0x0da77eec - 0x0da77ef8 (Size: 12 bytes, Frame: 0)
.globl glEdgeFlag
.ent glEdgeFlag
glEdgeFlag:
    # Line 419
    lw	$t9,4212($zero)
    # Line 420
    jr	$t9
    nop
.end glEdgeFlag

# Function: glEdgeFlagv
# Declared: Line 427 (Source lines: 427-431)
# Address: 0x0da77ef8 - 0x0da77f08 (Size: 16 bytes, Frame: 0)
.globl glEdgeFlagv
.ent glEdgeFlagv
glEdgeFlagv:
    # Line 427
    lw	$t9,4216($zero)
    # Line 429
    lbu	$v0,0($a0)
    # Line 430
    jr	$t9
    # Line 431
    nop
.end glEdgeFlagv

# Function: glEnd
# Declared: Line 438 (Source lines: 438-439)
# Address: 0x0da77f08 - 0x0da77f14 (Size: 12 bytes, Frame: 0)
.globl glEnd
.ent glEnd
glEnd:
    # Line 438
    lw	$t9,4220($zero)
    # Line 439
    jr	$t9
    nop
.end glEnd

# Function: glIndexd
# Declared: Line 445 (Source lines: 445-446)
# Address: 0x0da77f14 - 0x0da77f20 (Size: 12 bytes, Frame: 0)
.globl glIndexd
.ent glIndexd
glIndexd:
    # Line 445
    lw	$t9,5720($zero)
    # Line 446
    jr	$t9
    nop
.end glIndexd

# Function: glIndexdv
# Declared: Line 453 (Source lines: 453-457)
# Address: 0x0da77f20 - 0x0da77f30 (Size: 16 bytes, Frame: 0)
.globl glIndexdv
.ent glIndexdv
glIndexdv:
    # Line 453
    lw	$t9,5724($zero)
    # Line 455
    ldc1	$f1,0($a0)
    # Line 456
    jr	$t9
    # Line 457
    nop
.end glIndexdv

# Function: glIndexf
# Declared: Line 464 (Source lines: 464-465)
# Address: 0x0da77f30 - 0x0da77f3c (Size: 12 bytes, Frame: 0)
.globl glIndexf
.ent glIndexf
glIndexf:
    # Line 464
    lw	$t9,5728($zero)
    # Line 465
    jr	$t9
    nop
.end glIndexf

# Function: glIndexfv
# Declared: Line 472 (Source lines: 472-476)
# Address: 0x0da77f3c - 0x0da77f4c (Size: 16 bytes, Frame: 0)
.globl glIndexfv
.ent glIndexfv
glIndexfv:
    # Line 472
    lw	$t9,5732($zero)
    # Line 474
    lwu	$v0,0($a0)
    # Line 475
    jr	$t9
    # Line 476
    nop
.end glIndexfv

# Function: glIndexi
# Declared: Line 483 (Source lines: 483-484)
# Address: 0x0da77f4c - 0x0da77f58 (Size: 12 bytes, Frame: 0)
.globl glIndexi
.ent glIndexi
glIndexi:
    # Line 483
    lw	$t9,5736($zero)
    # Line 484
    jr	$t9
    nop
.end glIndexi

# Function: glIndexiv
# Declared: Line 491 (Source lines: 491-495)
# Address: 0x0da77f58 - 0x0da77f68 (Size: 16 bytes, Frame: 0)
.globl glIndexiv
.ent glIndexiv
glIndexiv:
    # Line 491
    lw	$t9,5740($zero)
    # Line 493
    lwu	$v0,0($a0)
    # Line 494
    jr	$t9
    # Line 495
    nop
.end glIndexiv

# Function: glIndexs
# Declared: Line 502 (Source lines: 502-503)
# Address: 0x0da77f68 - 0x0da77f74 (Size: 12 bytes, Frame: 0)
.globl glIndexs
.ent glIndexs
glIndexs:
    # Line 502
    lw	$t9,5744($zero)
    # Line 503
    jr	$t9
    nop
.end glIndexs

# Function: glIndexsv
# Declared: Line 510 (Source lines: 510-514)
# Address: 0x0da77f74 - 0x0da77f84 (Size: 16 bytes, Frame: 0)
.globl glIndexsv
.ent glIndexsv
glIndexsv:
    # Line 510
    lw	$t9,5748($zero)
    # Line 512
    lhu	$v0,0($a0)
    # Line 513
    jr	$t9
    # Line 514
    nop
.end glIndexsv

# Function: glNormal3b
# Declared: Line 521 (Source lines: 521-522)
# Address: 0x0da77f84 - 0x0da77f90 (Size: 12 bytes, Frame: 0)
.globl glNormal3b
.ent glNormal3b
glNormal3b:
    # Line 521
    lw	$t9,5760($zero)
    # Line 522
    jr	$t9
    nop
.end glNormal3b

# Function: glNormal3bv
# Declared: Line 529 (Source lines: 529-534)
# Address: 0x0da77f90 - 0x0da77fa4 (Size: 20 bytes, Frame: 0)
.globl glNormal3bv
.ent glNormal3bv
glNormal3bv:
    # Line 529
    lw	$t9,5764($zero)
    # Line 531
    lbu	$v0,0($a0)
    # Line 532
    lbu	$v1,1($a0)
    # Line 533
    jr	$t9
    # Line 534
    lbu	$t0,2($a0)
.end glNormal3bv

# Function: glNormal3d
# Declared: Line 541 (Source lines: 541-542)
# Address: 0x0da77fa4 - 0x0da77fb0 (Size: 12 bytes, Frame: 0)
.globl glNormal3d
.ent glNormal3d
glNormal3d:
    # Line 541
    lw	$t9,5768($zero)
    # Line 542
    jr	$t9
    nop
.end glNormal3d

# Function: glNormal3dv
# Declared: Line 549 (Source lines: 549-554)
# Address: 0x0da77fb0 - 0x0da77fc4 (Size: 20 bytes, Frame: 0)
.globl glNormal3dv
.ent glNormal3dv
glNormal3dv:
    # Line 549
    lw	$t9,5772($zero)
    # Line 551
    ldc1	$f1,0($a0)
    # Line 552
    ldc1	$f0,8($a0)
    # Line 553
    jr	$t9
    # Line 554
    ldc1	$f3,16($a0)
.end glNormal3dv

# Function: glNormal3f
# Declared: Line 561 (Source lines: 561-562)
# Address: 0x0da77fc4 - 0x0da77fd0 (Size: 12 bytes, Frame: 0)
.globl glNormal3f
.ent glNormal3f
glNormal3f:
    # Line 561
    lw	$t9,5776($zero)
    # Line 562
    jr	$t9
    nop
.end glNormal3f

# Function: glNormal3fv
# Declared: Line 569 (Source lines: 569-574)
# Address: 0x0da77fd0 - 0x0da77fe4 (Size: 20 bytes, Frame: 0)
.globl glNormal3fv
.ent glNormal3fv
glNormal3fv:
    # Line 569
    lw	$t9,5780($zero)
    # Line 571
    ldl	$v0,0($a0)
    # Line 572
    ldr	$v0,7($a0)
    # Line 573
    jr	$t9
    # Line 574
    lwu	$v1,8($a0)
.end glNormal3fv

# Function: glNormal3i
# Declared: Line 581 (Source lines: 581-582)
# Address: 0x0da77fe4 - 0x0da77ff0 (Size: 12 bytes, Frame: 0)
.globl glNormal3i
.ent glNormal3i
glNormal3i:
    # Line 581
    lw	$t9,5784($zero)
    # Line 582
    jr	$t9
    nop
.end glNormal3i

# Function: glNormal3iv
# Declared: Line 589 (Source lines: 589-594)
# Address: 0x0da77ff0 - 0x0da78004 (Size: 20 bytes, Frame: 0)
.globl glNormal3iv
.ent glNormal3iv
glNormal3iv:
    # Line 589
    lw	$t9,5788($zero)
    # Line 591
    ldl	$v0,0($a0)
    # Line 592
    ldr	$v0,7($a0)
    # Line 593
    jr	$t9
    # Line 594
    lwu	$v1,8($a0)
.end glNormal3iv

# Function: glNormal3s
# Declared: Line 601 (Source lines: 601-602)
# Address: 0x0da78004 - 0x0da78010 (Size: 12 bytes, Frame: 0)
.globl glNormal3s
.ent glNormal3s
glNormal3s:
    # Line 601
    lw	$t9,5792($zero)
    # Line 602
    jr	$t9
    nop
.end glNormal3s

# Function: glNormal3sv
# Declared: Line 609 (Source lines: 609-614)
# Address: 0x0da78010 - 0x0da78024 (Size: 20 bytes, Frame: 0)
.globl glNormal3sv
.ent glNormal3sv
glNormal3sv:
    # Line 609
    lw	$t9,5796($zero)
    # Line 611
    lhu	$v0,0($a0)
    # Line 612
    lhu	$v1,2($a0)
    # Line 613
    jr	$t9
    # Line 614
    lhu	$t0,4($a0)
.end glNormal3sv

# Function: glRasterPos2d
# Declared: Line 621 (Source lines: 621-622)
# Address: 0x0da78024 - 0x0da78030 (Size: 12 bytes, Frame: 0)
.globl glRasterPos2d
.ent glRasterPos2d
glRasterPos2d:
    # Line 621
    lw	$t9,5928($zero)
    # Line 622
    jr	$t9
    nop
.end glRasterPos2d

# Function: glRasterPos2dv
# Declared: Line 629 (Source lines: 629-634)
# Address: 0x0da78030 - 0x0da78044 (Size: 20 bytes, Frame: 0)
.globl glRasterPos2dv
.ent glRasterPos2dv
glRasterPos2dv:
    # Line 629
    lw	$t9,5932($zero)
    # Line 631
    ldc1	$f1,0($a0)
    # Line 632
    ldc1	$f0,8($a0)
    # Line 633
    jr	$t9
    # Line 634
    nop
.end glRasterPos2dv

# Function: glRasterPos2f
# Declared: Line 641 (Source lines: 641-642)
# Address: 0x0da78044 - 0x0da78050 (Size: 12 bytes, Frame: 0)
.globl glRasterPos2f
.ent glRasterPos2f
glRasterPos2f:
    # Line 641
    lw	$t9,5936($zero)
    # Line 642
    jr	$t9
    nop
.end glRasterPos2f

# Function: glRasterPos2fv
# Declared: Line 649 (Source lines: 649-654)
# Address: 0x0da78050 - 0x0da78064 (Size: 20 bytes, Frame: 0)
.globl glRasterPos2fv
.ent glRasterPos2fv
glRasterPos2fv:
    # Line 649
    lw	$t9,5940($zero)
    # Line 651
    ldl	$v0,0($a0)
    # Line 652
    ldr	$v0,7($a0)
    # Line 653
    jr	$t9
    # Line 654
    nop
.end glRasterPos2fv

# Function: glRasterPos2i
# Declared: Line 661 (Source lines: 661-662)
# Address: 0x0da78064 - 0x0da78070 (Size: 12 bytes, Frame: 0)
.globl glRasterPos2i
.ent glRasterPos2i
glRasterPos2i:
    # Line 661
    lw	$t9,5944($zero)
    # Line 662
    jr	$t9
    nop
.end glRasterPos2i

# Function: glRasterPos2iv
# Declared: Line 669 (Source lines: 669-674)
# Address: 0x0da78070 - 0x0da78084 (Size: 20 bytes, Frame: 0)
.globl glRasterPos2iv
.ent glRasterPos2iv
glRasterPos2iv:
    # Line 669
    lw	$t9,5948($zero)
    # Line 671
    ldl	$v0,0($a0)
    # Line 672
    ldr	$v0,7($a0)
    # Line 673
    jr	$t9
    # Line 674
    nop
.end glRasterPos2iv

# Function: glRasterPos2s
# Declared: Line 681 (Source lines: 681-682)
# Address: 0x0da78084 - 0x0da78090 (Size: 12 bytes, Frame: 0)
.globl glRasterPos2s
.ent glRasterPos2s
glRasterPos2s:
    # Line 681
    lw	$t9,5952($zero)
    # Line 682
    jr	$t9
    nop
.end glRasterPos2s

# Function: glRasterPos2sv
# Declared: Line 689 (Source lines: 689-694)
# Address: 0x0da78090 - 0x0da780a4 (Size: 20 bytes, Frame: 0)
.globl glRasterPos2sv
.ent glRasterPos2sv
glRasterPos2sv:
    # Line 689
    lw	$t9,5956($zero)
    # Line 691
    lhu	$v0,0($a0)
    # Line 692
    lhu	$v1,2($a0)
    # Line 693
    jr	$t9
    # Line 694
    nop
.end glRasterPos2sv

# Function: glRasterPos3d
# Declared: Line 701 (Source lines: 701-702)
# Address: 0x0da780a4 - 0x0da780b0 (Size: 12 bytes, Frame: 0)
.globl glRasterPos3d
.ent glRasterPos3d
glRasterPos3d:
    # Line 701
    lw	$t9,5960($zero)
    # Line 702
    jr	$t9
    nop
.end glRasterPos3d

# Function: glRasterPos3dv
# Declared: Line 709 (Source lines: 709-714)
# Address: 0x0da780b0 - 0x0da780c4 (Size: 20 bytes, Frame: 0)
.globl glRasterPos3dv
.ent glRasterPos3dv
glRasterPos3dv:
    # Line 709
    lw	$t9,5964($zero)
    # Line 711
    ldc1	$f1,0($a0)
    # Line 712
    ldc1	$f0,8($a0)
    # Line 713
    jr	$t9
    # Line 714
    ldc1	$f3,16($a0)
.end glRasterPos3dv

# Function: glRasterPos3f
# Declared: Line 721 (Source lines: 721-722)
# Address: 0x0da780c4 - 0x0da780d0 (Size: 12 bytes, Frame: 0)
.globl glRasterPos3f
.ent glRasterPos3f
glRasterPos3f:
    # Line 721
    lw	$t9,5968($zero)
    # Line 722
    jr	$t9
    nop
.end glRasterPos3f

# Function: glRasterPos3fv
# Declared: Line 729 (Source lines: 729-734)
# Address: 0x0da780d0 - 0x0da780e4 (Size: 20 bytes, Frame: 0)
.globl glRasterPos3fv
.ent glRasterPos3fv
glRasterPos3fv:
    # Line 729
    lw	$t9,5972($zero)
    # Line 731
    ldl	$v0,0($a0)
    # Line 732
    ldr	$v0,7($a0)
    # Line 733
    jr	$t9
    # Line 734
    lwu	$v1,8($a0)
.end glRasterPos3fv

# Function: glRasterPos3i
# Declared: Line 741 (Source lines: 741-742)
# Address: 0x0da780e4 - 0x0da780f0 (Size: 12 bytes, Frame: 0)
.globl glRasterPos3i
.ent glRasterPos3i
glRasterPos3i:
    # Line 741
    lw	$t9,5976($zero)
    # Line 742
    jr	$t9
    nop
.end glRasterPos3i

# Function: glRasterPos3iv
# Declared: Line 749 (Source lines: 749-754)
# Address: 0x0da780f0 - 0x0da78104 (Size: 20 bytes, Frame: 0)
.globl glRasterPos3iv
.ent glRasterPos3iv
glRasterPos3iv:
    # Line 749
    lw	$t9,5980($zero)
    # Line 751
    ldl	$v0,0($a0)
    # Line 752
    ldr	$v0,7($a0)
    # Line 753
    jr	$t9
    # Line 754
    lwu	$v1,8($a0)
.end glRasterPos3iv

# Function: glRasterPos3s
# Declared: Line 761 (Source lines: 761-762)
# Address: 0x0da78104 - 0x0da78110 (Size: 12 bytes, Frame: 0)
.globl glRasterPos3s
.ent glRasterPos3s
glRasterPos3s:
    # Line 761
    lw	$t9,5984($zero)
    # Line 762
    jr	$t9
    nop
.end glRasterPos3s

# Function: glRasterPos3sv
# Declared: Line 769 (Source lines: 769-774)
# Address: 0x0da78110 - 0x0da78124 (Size: 20 bytes, Frame: 0)
.globl glRasterPos3sv
.ent glRasterPos3sv
glRasterPos3sv:
    # Line 769
    lw	$t9,5988($zero)
    # Line 771
    lhu	$v0,0($a0)
    # Line 772
    lhu	$v1,2($a0)
    # Line 773
    jr	$t9
    # Line 774
    lhu	$t0,4($a0)
.end glRasterPos3sv

# Function: glRasterPos4d
# Declared: Line 781 (Source lines: 781-782)
# Address: 0x0da78124 - 0x0da78130 (Size: 12 bytes, Frame: 0)
.globl glRasterPos4d
.ent glRasterPos4d
glRasterPos4d:
    # Line 781
    lw	$t9,5992($zero)
    # Line 782
    jr	$t9
    nop
.end glRasterPos4d

# Function: glRasterPos4dv
# Declared: Line 789 (Source lines: 789-794)
# Address: 0x0da78130 - 0x0da78144 (Size: 20 bytes, Frame: 0)
.globl glRasterPos4dv
.ent glRasterPos4dv
glRasterPos4dv:
    # Line 789
    lw	$t9,5996($zero)
    # Line 791
    ldc1	$f1,0($a0)
    # Line 792
    ldc1	$f0,8($a0)
    # Line 793
    jr	$t9
    # Line 794
    ldc1	$f3,16($a0)
.end glRasterPos4dv

# Function: glRasterPos4f
# Declared: Line 801 (Source lines: 801-802)
# Address: 0x0da78144 - 0x0da78150 (Size: 12 bytes, Frame: 0)
.globl glRasterPos4f
.ent glRasterPos4f
glRasterPos4f:
    # Line 801
    lw	$t9,6000($zero)
    # Line 802
    jr	$t9
    nop
.end glRasterPos4f

# Function: glRasterPos4fv
# Declared: Line 809 (Source lines: 809-814)
# Address: 0x0da78150 - 0x0da78164 (Size: 20 bytes, Frame: 0)
.globl glRasterPos4fv
.ent glRasterPos4fv
glRasterPos4fv:
    # Line 809
    lw	$t9,6004($zero)
    # Line 811
    ldl	$v0,0($a0)
    # Line 812
    ldr	$v0,7($a0)
    # Line 813
    jr	$t9
    # Line 814
    ldl	$v1,8($a0)
.end glRasterPos4fv

# Function: glRasterPos4i
# Declared: Line 821 (Source lines: 821-822)
# Address: 0x0da78164 - 0x0da78170 (Size: 12 bytes, Frame: 0)
.globl glRasterPos4i
.ent glRasterPos4i
glRasterPos4i:
    # Line 821
    lw	$t9,6008($zero)
    # Line 822
    jr	$t9
    nop
.end glRasterPos4i

# Function: glRasterPos4iv
# Declared: Line 829 (Source lines: 829-834)
# Address: 0x0da78170 - 0x0da78184 (Size: 20 bytes, Frame: 0)
.globl glRasterPos4iv
.ent glRasterPos4iv
glRasterPos4iv:
    # Line 829
    lw	$t9,6012($zero)
    # Line 831
    ldl	$v0,0($a0)
    # Line 832
    ldr	$v0,7($a0)
    # Line 833
    jr	$t9
    # Line 834
    ldl	$v1,8($a0)
.end glRasterPos4iv

# Function: glRasterPos4s
# Declared: Line 841 (Source lines: 841-842)
# Address: 0x0da78184 - 0x0da78190 (Size: 12 bytes, Frame: 0)
.globl glRasterPos4s
.ent glRasterPos4s
glRasterPos4s:
    # Line 841
    lw	$t9,6016($zero)
    # Line 842
    jr	$t9
    nop
.end glRasterPos4s

# Function: glRasterPos4sv
# Declared: Line 849 (Source lines: 849-854)
# Address: 0x0da78190 - 0x0da781a4 (Size: 20 bytes, Frame: 0)
.globl glRasterPos4sv
.ent glRasterPos4sv
glRasterPos4sv:
    # Line 849
    lw	$t9,6020($zero)
    # Line 851
    lhu	$v0,0($a0)
    # Line 852
    lhu	$v1,2($a0)
    # Line 853
    jr	$t9
    # Line 854
    lhu	$t0,4($a0)
.end glRasterPos4sv

# Function: glRectd
# Declared: Line 861 (Source lines: 861-862)
# Address: 0x0da781a4 - 0x0da781b0 (Size: 12 bytes, Frame: 0)
.globl glRectd
.ent glRectd
glRectd:
    # Line 861
    lw	$t9,6024($zero)
    # Line 862
    jr	$t9
    nop
.end glRectd

# Function: glRectdv
# Declared: Line 868 (Source lines: 868-869)
# Address: 0x0da781b0 - 0x0da781bc (Size: 12 bytes, Frame: 0)
.globl glRectdv
.ent glRectdv
glRectdv:
    # Line 868
    lw	$t9,6028($zero)
    # Line 869
    jr	$t9
    nop
.end glRectdv

# Function: glRectf
# Declared: Line 875 (Source lines: 875-876)
# Address: 0x0da781bc - 0x0da781c8 (Size: 12 bytes, Frame: 0)
.globl glRectf
.ent glRectf
glRectf:
    # Line 875
    lw	$t9,6032($zero)
    # Line 876
    jr	$t9
    nop
.end glRectf

# Function: glRectfv
# Declared: Line 882 (Source lines: 882-883)
# Address: 0x0da781c8 - 0x0da781d4 (Size: 12 bytes, Frame: 0)
.globl glRectfv
.ent glRectfv
glRectfv:
    # Line 882
    lw	$t9,6036($zero)
    # Line 883
    jr	$t9
    nop
.end glRectfv

# Function: glRecti
# Declared: Line 889 (Source lines: 889-890)
# Address: 0x0da781d4 - 0x0da781e0 (Size: 12 bytes, Frame: 0)
.globl glRecti
.ent glRecti
glRecti:
    # Line 889
    lw	$t9,6040($zero)
    # Line 890
    jr	$t9
    nop
.end glRecti

# Function: glRectiv
# Declared: Line 896 (Source lines: 896-897)
# Address: 0x0da781e0 - 0x0da781ec (Size: 12 bytes, Frame: 0)
.globl glRectiv
.ent glRectiv
glRectiv:
    # Line 896
    lw	$t9,6044($zero)
    # Line 897
    jr	$t9
    nop
.end glRectiv

# Function: glRects
# Declared: Line 903 (Source lines: 903-904)
# Address: 0x0da781ec - 0x0da781f8 (Size: 12 bytes, Frame: 0)
.globl glRects
.ent glRects
glRects:
    # Line 903
    lw	$t9,6048($zero)
    # Line 904
    jr	$t9
    nop
.end glRects

# Function: glRectsv
# Declared: Line 910 (Source lines: 910-911)
# Address: 0x0da781f8 - 0x0da78204 (Size: 12 bytes, Frame: 0)
.globl glRectsv
.ent glRectsv
glRectsv:
    # Line 910
    lw	$t9,6052($zero)
    # Line 911
    jr	$t9
    nop
.end glRectsv

# Function: glTexCoord1d
# Declared: Line 917 (Source lines: 917-918)
# Address: 0x0da78204 - 0x0da78210 (Size: 12 bytes, Frame: 0)
.globl glTexCoord1d
.ent glTexCoord1d
glTexCoord1d:
    # Line 917
    lw	$t9,5800($zero)
    # Line 918
    jr	$t9
    nop
.end glTexCoord1d

# Function: glTexCoord1dv
# Declared: Line 925 (Source lines: 925-929)
# Address: 0x0da78210 - 0x0da78220 (Size: 16 bytes, Frame: 0)
.globl glTexCoord1dv
.ent glTexCoord1dv
glTexCoord1dv:
    # Line 925
    lw	$t9,5804($zero)
    # Line 927
    ldc1	$f1,0($a0)
    # Line 928
    jr	$t9
    # Line 929
    nop
.end glTexCoord1dv

# Function: glTexCoord1f
# Declared: Line 936 (Source lines: 936-937)
# Address: 0x0da78220 - 0x0da7822c (Size: 12 bytes, Frame: 0)
.globl glTexCoord1f
.ent glTexCoord1f
glTexCoord1f:
    # Line 936
    lw	$t9,5808($zero)
    # Line 937
    jr	$t9
    nop
.end glTexCoord1f

# Function: glTexCoord1fv
# Declared: Line 944 (Source lines: 944-948)
# Address: 0x0da7822c - 0x0da7823c (Size: 16 bytes, Frame: 0)
.globl glTexCoord1fv
.ent glTexCoord1fv
glTexCoord1fv:
    # Line 944
    lw	$t9,5812($zero)
    # Line 946
    lwu	$v0,0($a0)
    # Line 947
    jr	$t9
    # Line 948
    nop
.end glTexCoord1fv

# Function: glTexCoord1i
# Declared: Line 955 (Source lines: 955-956)
# Address: 0x0da7823c - 0x0da78248 (Size: 12 bytes, Frame: 0)
.globl glTexCoord1i
.ent glTexCoord1i
glTexCoord1i:
    # Line 955
    lw	$t9,5816($zero)
    # Line 956
    jr	$t9
    nop
.end glTexCoord1i

# Function: glTexCoord1iv
# Declared: Line 963 (Source lines: 963-967)
# Address: 0x0da78248 - 0x0da78258 (Size: 16 bytes, Frame: 0)
.globl glTexCoord1iv
.ent glTexCoord1iv
glTexCoord1iv:
    # Line 963
    lw	$t9,5820($zero)
    # Line 965
    lwu	$v0,0($a0)
    # Line 966
    jr	$t9
    # Line 967
    nop
.end glTexCoord1iv

# Function: glTexCoord1s
# Declared: Line 974 (Source lines: 974-975)
# Address: 0x0da78258 - 0x0da78264 (Size: 12 bytes, Frame: 0)
.globl glTexCoord1s
.ent glTexCoord1s
glTexCoord1s:
    # Line 974
    lw	$t9,5824($zero)
    # Line 975
    jr	$t9
    nop
.end glTexCoord1s

# Function: glTexCoord1sv
# Declared: Line 982 (Source lines: 982-986)
# Address: 0x0da78264 - 0x0da78274 (Size: 16 bytes, Frame: 0)
.globl glTexCoord1sv
.ent glTexCoord1sv
glTexCoord1sv:
    # Line 982
    lw	$t9,5828($zero)
    # Line 984
    lhu	$v0,0($a0)
    # Line 985
    jr	$t9
    # Line 986
    nop
.end glTexCoord1sv

# Function: glTexCoord2d
# Declared: Line 993 (Source lines: 993-994)
# Address: 0x0da78274 - 0x0da78280 (Size: 12 bytes, Frame: 0)
.globl glTexCoord2d
.ent glTexCoord2d
glTexCoord2d:
    # Line 993
    lw	$t9,5832($zero)
    # Line 994
    jr	$t9
    nop
.end glTexCoord2d

# Function: glTexCoord2dv
# Declared: Line 1001 (Source lines: 1001-1006)
# Address: 0x0da78280 - 0x0da78294 (Size: 20 bytes, Frame: 0)
.globl glTexCoord2dv
.ent glTexCoord2dv
glTexCoord2dv:
    # Line 1001
    lw	$t9,5836($zero)
    # Line 1003
    ldc1	$f1,0($a0)
    # Line 1004
    ldc1	$f0,8($a0)
    # Line 1005
    jr	$t9
    # Line 1006
    nop
.end glTexCoord2dv

# Function: glTexCoord2f
# Declared: Line 1013 (Source lines: 1013-1014)
# Address: 0x0da78294 - 0x0da782a0 (Size: 12 bytes, Frame: 0)
.globl glTexCoord2f
.ent glTexCoord2f
glTexCoord2f:
    # Line 1013
    lw	$t9,5840($zero)
    # Line 1014
    jr	$t9
    nop
.end glTexCoord2f

# Function: glTexCoord2fv
# Declared: Line 1021 (Source lines: 1021-1026)
# Address: 0x0da782a0 - 0x0da782b4 (Size: 20 bytes, Frame: 0)
.globl glTexCoord2fv
.ent glTexCoord2fv
glTexCoord2fv:
    # Line 1021
    lw	$t9,5844($zero)
    # Line 1023
    ldl	$v0,0($a0)
    # Line 1024
    ldr	$v0,7($a0)
    # Line 1025
    jr	$t9
    # Line 1026
    nop
.end glTexCoord2fv

# Function: glTexCoord2i
# Declared: Line 1033 (Source lines: 1033-1034)
# Address: 0x0da782b4 - 0x0da782c0 (Size: 12 bytes, Frame: 0)
.globl glTexCoord2i
.ent glTexCoord2i
glTexCoord2i:
    # Line 1033
    lw	$t9,5848($zero)
    # Line 1034
    jr	$t9
    nop
.end glTexCoord2i

# Function: glTexCoord2iv
# Declared: Line 1041 (Source lines: 1041-1046)
# Address: 0x0da782c0 - 0x0da782d4 (Size: 20 bytes, Frame: 0)
.globl glTexCoord2iv
.ent glTexCoord2iv
glTexCoord2iv:
    # Line 1041
    lw	$t9,5852($zero)
    # Line 1043
    ldl	$v0,0($a0)
    # Line 1044
    ldr	$v0,7($a0)
    # Line 1045
    jr	$t9
    # Line 1046
    nop
.end glTexCoord2iv

# Function: glTexCoord2s
# Declared: Line 1053 (Source lines: 1053-1054)
# Address: 0x0da782d4 - 0x0da782e0 (Size: 12 bytes, Frame: 0)
.globl glTexCoord2s
.ent glTexCoord2s
glTexCoord2s:
    # Line 1053
    lw	$t9,5856($zero)
    # Line 1054
    jr	$t9
    nop
.end glTexCoord2s

# Function: glTexCoord2sv
# Declared: Line 1061 (Source lines: 1061-1066)
# Address: 0x0da782e0 - 0x0da782f4 (Size: 20 bytes, Frame: 0)
.globl glTexCoord2sv
.ent glTexCoord2sv
glTexCoord2sv:
    # Line 1061
    lw	$t9,5860($zero)
    # Line 1063
    lhu	$v0,0($a0)
    # Line 1064
    lhu	$v1,2($a0)
    # Line 1065
    jr	$t9
    # Line 1066
    nop
.end glTexCoord2sv

# Function: glTexCoord3d
# Declared: Line 1073 (Source lines: 1073-1074)
# Address: 0x0da782f4 - 0x0da78300 (Size: 12 bytes, Frame: 0)
.globl glTexCoord3d
.ent glTexCoord3d
glTexCoord3d:
    # Line 1073
    lw	$t9,5864($zero)
    # Line 1074
    jr	$t9
    nop
.end glTexCoord3d

# Function: glTexCoord3dv
# Declared: Line 1081 (Source lines: 1081-1086)
# Address: 0x0da78300 - 0x0da78314 (Size: 20 bytes, Frame: 0)
.globl glTexCoord3dv
.ent glTexCoord3dv
glTexCoord3dv:
    # Line 1081
    lw	$t9,5868($zero)
    # Line 1083
    ldc1	$f1,0($a0)
    # Line 1084
    ldc1	$f0,8($a0)
    # Line 1085
    jr	$t9
    # Line 1086
    ldc1	$f3,16($a0)
.end glTexCoord3dv

# Function: glTexCoord3f
# Declared: Line 1093 (Source lines: 1093-1094)
# Address: 0x0da78314 - 0x0da78320 (Size: 12 bytes, Frame: 0)
.globl glTexCoord3f
.ent glTexCoord3f
glTexCoord3f:
    # Line 1093
    lw	$t9,5872($zero)
    # Line 1094
    jr	$t9
    nop
.end glTexCoord3f

# Function: glTexCoord3fv
# Declared: Line 1101 (Source lines: 1101-1106)
# Address: 0x0da78320 - 0x0da78334 (Size: 20 bytes, Frame: 0)
.globl glTexCoord3fv
.ent glTexCoord3fv
glTexCoord3fv:
    # Line 1101
    lw	$t9,5876($zero)
    # Line 1103
    ldl	$v0,0($a0)
    # Line 1104
    ldr	$v0,7($a0)
    # Line 1105
    jr	$t9
    # Line 1106
    lwu	$v1,8($a0)
.end glTexCoord3fv

# Function: glTexCoord3i
# Declared: Line 1113 (Source lines: 1113-1114)
# Address: 0x0da78334 - 0x0da78340 (Size: 12 bytes, Frame: 0)
.globl glTexCoord3i
.ent glTexCoord3i
glTexCoord3i:
    # Line 1113
    lw	$t9,5880($zero)
    # Line 1114
    jr	$t9
    nop
.end glTexCoord3i

# Function: glTexCoord3iv
# Declared: Line 1121 (Source lines: 1121-1126)
# Address: 0x0da78340 - 0x0da78354 (Size: 20 bytes, Frame: 0)
.globl glTexCoord3iv
.ent glTexCoord3iv
glTexCoord3iv:
    # Line 1121
    lw	$t9,5884($zero)
    # Line 1123
    ldl	$v0,0($a0)
    # Line 1124
    ldr	$v0,7($a0)
    # Line 1125
    jr	$t9
    # Line 1126
    lwu	$v1,8($a0)
.end glTexCoord3iv

# Function: glTexCoord3s
# Declared: Line 1133 (Source lines: 1133-1134)
# Address: 0x0da78354 - 0x0da78360 (Size: 12 bytes, Frame: 0)
.globl glTexCoord3s
.ent glTexCoord3s
glTexCoord3s:
    # Line 1133
    lw	$t9,5888($zero)
    # Line 1134
    jr	$t9
    nop
.end glTexCoord3s

# Function: glTexCoord3sv
# Declared: Line 1141 (Source lines: 1141-1146)
# Address: 0x0da78360 - 0x0da78374 (Size: 20 bytes, Frame: 0)
.globl glTexCoord3sv
.ent glTexCoord3sv
glTexCoord3sv:
    # Line 1141
    lw	$t9,5892($zero)
    # Line 1143
    lhu	$v0,0($a0)
    # Line 1144
    lhu	$v1,2($a0)
    # Line 1145
    jr	$t9
    # Line 1146
    lhu	$t0,4($a0)
.end glTexCoord3sv

# Function: glTexCoord4d
# Declared: Line 1153 (Source lines: 1153-1154)
# Address: 0x0da78374 - 0x0da78380 (Size: 12 bytes, Frame: 0)
.globl glTexCoord4d
.ent glTexCoord4d
glTexCoord4d:
    # Line 1153
    lw	$t9,5896($zero)
    # Line 1154
    jr	$t9
    nop
.end glTexCoord4d

# Function: glTexCoord4dv
# Declared: Line 1161 (Source lines: 1161-1166)
# Address: 0x0da78380 - 0x0da78394 (Size: 20 bytes, Frame: 0)
.globl glTexCoord4dv
.ent glTexCoord4dv
glTexCoord4dv:
    # Line 1161
    lw	$t9,5900($zero)
    # Line 1163
    ldc1	$f1,0($a0)
    # Line 1164
    ldc1	$f0,8($a0)
    # Line 1165
    jr	$t9
    # Line 1166
    ldc1	$f3,16($a0)
.end glTexCoord4dv

# Function: glTexCoord4f
# Declared: Line 1173 (Source lines: 1173-1174)
# Address: 0x0da78394 - 0x0da783a0 (Size: 12 bytes, Frame: 0)
.globl glTexCoord4f
.ent glTexCoord4f
glTexCoord4f:
    # Line 1173
    lw	$t9,5904($zero)
    # Line 1174
    jr	$t9
    nop
.end glTexCoord4f

# Function: glTexCoord4fv
# Declared: Line 1181 (Source lines: 1181-1186)
# Address: 0x0da783a0 - 0x0da783b4 (Size: 20 bytes, Frame: 0)
.globl glTexCoord4fv
.ent glTexCoord4fv
glTexCoord4fv:
    # Line 1181
    lw	$t9,5908($zero)
    # Line 1183
    ldl	$v0,0($a0)
    # Line 1184
    ldr	$v0,7($a0)
    # Line 1185
    jr	$t9
    # Line 1186
    ldl	$v1,8($a0)
.end glTexCoord4fv

# Function: glTexCoord4i
# Declared: Line 1193 (Source lines: 1193-1194)
# Address: 0x0da783b4 - 0x0da783c0 (Size: 12 bytes, Frame: 0)
.globl glTexCoord4i
.ent glTexCoord4i
glTexCoord4i:
    # Line 1193
    lw	$t9,5912($zero)
    # Line 1194
    jr	$t9
    nop
.end glTexCoord4i

# Function: glTexCoord4iv
# Declared: Line 1201 (Source lines: 1201-1206)
# Address: 0x0da783c0 - 0x0da783d4 (Size: 20 bytes, Frame: 0)
.globl glTexCoord4iv
.ent glTexCoord4iv
glTexCoord4iv:
    # Line 1201
    lw	$t9,5916($zero)
    # Line 1203
    ldl	$v0,0($a0)
    # Line 1204
    ldr	$v0,7($a0)
    # Line 1205
    jr	$t9
    # Line 1206
    ldl	$v1,8($a0)
.end glTexCoord4iv

# Function: glTexCoord4s
# Declared: Line 1213 (Source lines: 1213-1214)
# Address: 0x0da783d4 - 0x0da783e0 (Size: 12 bytes, Frame: 0)
.globl glTexCoord4s
.ent glTexCoord4s
glTexCoord4s:
    # Line 1213
    lw	$t9,5920($zero)
    # Line 1214
    jr	$t9
    nop
.end glTexCoord4s

# Function: glTexCoord4sv
# Declared: Line 1221 (Source lines: 1221-1226)
# Address: 0x0da783e0 - 0x0da783f4 (Size: 20 bytes, Frame: 0)
.globl glTexCoord4sv
.ent glTexCoord4sv
glTexCoord4sv:
    # Line 1221
    lw	$t9,5924($zero)
    # Line 1223
    lhu	$v0,0($a0)
    # Line 1224
    lhu	$v1,2($a0)
    # Line 1225
    jr	$t9
    # Line 1226
    lhu	$t0,4($a0)
.end glTexCoord4sv

# Function: glVertex2d
# Declared: Line 1233 (Source lines: 1233-1234)
# Address: 0x0da783f4 - 0x0da78400 (Size: 12 bytes, Frame: 0)
.globl glVertex2d
.ent glVertex2d
glVertex2d:
    # Line 1233
    lw	$t9,5496($zero)
    # Line 1234
    jr	$t9
    nop
.end glVertex2d

# Function: glVertex2dv
# Declared: Line 1241 (Source lines: 1241-1246)
# Address: 0x0da78400 - 0x0da78414 (Size: 20 bytes, Frame: 0)
.globl glVertex2dv
.ent glVertex2dv
glVertex2dv:
    # Line 1241
    lw	$t9,5500($zero)
    # Line 1243
    ldc1	$f1,0($a0)
    # Line 1244
    ldc1	$f0,8($a0)
    # Line 1245
    jr	$t9
    # Line 1246
    nop
.end glVertex2dv

# Function: glVertex2f
# Declared: Line 1253 (Source lines: 1253-1254)
# Address: 0x0da78414 - 0x0da78420 (Size: 12 bytes, Frame: 0)
.globl glVertex2f
.ent glVertex2f
glVertex2f:
    # Line 1253
    lw	$t9,5504($zero)
    # Line 1254
    jr	$t9
    nop
.end glVertex2f

# Function: glVertex2fv
# Declared: Line 1261 (Source lines: 1261-1266)
# Address: 0x0da78420 - 0x0da78434 (Size: 20 bytes, Frame: 0)
.globl glVertex2fv
.ent glVertex2fv
glVertex2fv:
    # Line 1261
    lw	$t9,5508($zero)
    # Line 1263
    ldl	$v0,0($a0)
    # Line 1264
    ldr	$v0,7($a0)
    # Line 1265
    jr	$t9
    # Line 1266
    nop
.end glVertex2fv

# Function: glVertex2i
# Declared: Line 1273 (Source lines: 1273-1274)
# Address: 0x0da78434 - 0x0da78440 (Size: 12 bytes, Frame: 0)
.globl glVertex2i
.ent glVertex2i
glVertex2i:
    # Line 1273
    lw	$t9,5512($zero)
    # Line 1274
    jr	$t9
    nop
.end glVertex2i

# Function: glVertex2iv
# Declared: Line 1281 (Source lines: 1281-1286)
# Address: 0x0da78440 - 0x0da78454 (Size: 20 bytes, Frame: 0)
.globl glVertex2iv
.ent glVertex2iv
glVertex2iv:
    # Line 1281
    lw	$t9,5516($zero)
    # Line 1283
    ldl	$v0,0($a0)
    # Line 1284
    ldr	$v0,7($a0)
    # Line 1285
    jr	$t9
    # Line 1286
    nop
.end glVertex2iv

# Function: glVertex2s
# Declared: Line 1293 (Source lines: 1293-1294)
# Address: 0x0da78454 - 0x0da78460 (Size: 12 bytes, Frame: 0)
.globl glVertex2s
.ent glVertex2s
glVertex2s:
    # Line 1293
    lw	$t9,5520($zero)
    # Line 1294
    jr	$t9
    nop
.end glVertex2s

# Function: glVertex2sv
# Declared: Line 1301 (Source lines: 1301-1306)
# Address: 0x0da78460 - 0x0da78474 (Size: 20 bytes, Frame: 0)
.globl glVertex2sv
.ent glVertex2sv
glVertex2sv:
    # Line 1301
    lw	$t9,5524($zero)
    # Line 1303
    lhu	$v0,0($a0)
    # Line 1304
    lhu	$v1,2($a0)
    # Line 1305
    jr	$t9
    # Line 1306
    nop
.end glVertex2sv

# Function: glVertex3d
# Declared: Line 1313 (Source lines: 1313-1314)
# Address: 0x0da78474 - 0x0da78480 (Size: 12 bytes, Frame: 0)
.globl glVertex3d
.ent glVertex3d
glVertex3d:
    # Line 1313
    lw	$t9,5528($zero)
    # Line 1314
    jr	$t9
    nop
.end glVertex3d

# Function: glVertex3dv
# Declared: Line 1321 (Source lines: 1321-1326)
# Address: 0x0da78480 - 0x0da78494 (Size: 20 bytes, Frame: 0)
.globl glVertex3dv
.ent glVertex3dv
glVertex3dv:
    # Line 1321
    lw	$t9,5532($zero)
    # Line 1323
    ldc1	$f1,0($a0)
    # Line 1324
    ldc1	$f0,8($a0)
    # Line 1325
    jr	$t9
    # Line 1326
    ldc1	$f3,16($a0)
.end glVertex3dv

# Function: glVertex3f
# Declared: Line 1333 (Source lines: 1333-1334)
# Address: 0x0da78494 - 0x0da784a0 (Size: 12 bytes, Frame: 0)
.globl glVertex3f
.ent glVertex3f
glVertex3f:
    # Line 1333
    lw	$t9,5536($zero)
    # Line 1334
    jr	$t9
    nop
.end glVertex3f

# Function: glVertex3fv
# Declared: Line 1341 (Source lines: 1341-1346)
# Address: 0x0da784a0 - 0x0da784b4 (Size: 20 bytes, Frame: 0)
.globl glVertex3fv
.ent glVertex3fv
glVertex3fv:
    # Line 1341
    lw	$t9,5540($zero)
    # Line 1343
    ldl	$v0,0($a0)
    # Line 1344
    ldr	$v0,7($a0)
    # Line 1345
    jr	$t9
    # Line 1346
    lwu	$v1,8($a0)
.end glVertex3fv

# Function: glVertex3i
# Declared: Line 1353 (Source lines: 1353-1354)
# Address: 0x0da784b4 - 0x0da784c0 (Size: 12 bytes, Frame: 0)
.globl glVertex3i
.ent glVertex3i
glVertex3i:
    # Line 1353
    lw	$t9,5544($zero)
    # Line 1354
    jr	$t9
    nop
.end glVertex3i

# Function: glVertex3iv
# Declared: Line 1361 (Source lines: 1361-1366)
# Address: 0x0da784c0 - 0x0da784d4 (Size: 20 bytes, Frame: 0)
.globl glVertex3iv
.ent glVertex3iv
glVertex3iv:
    # Line 1361
    lw	$t9,5548($zero)
    # Line 1363
    ldl	$v0,0($a0)
    # Line 1364
    ldr	$v0,7($a0)
    # Line 1365
    jr	$t9
    # Line 1366
    lwu	$v1,8($a0)
.end glVertex3iv

# Function: glVertex3s
# Declared: Line 1373 (Source lines: 1373-1374)
# Address: 0x0da784d4 - 0x0da784e0 (Size: 12 bytes, Frame: 0)
.globl glVertex3s
.ent glVertex3s
glVertex3s:
    # Line 1373
    lw	$t9,5552($zero)
    # Line 1374
    jr	$t9
    nop
.end glVertex3s

# Function: glVertex3sv
# Declared: Line 1381 (Source lines: 1381-1386)
# Address: 0x0da784e0 - 0x0da784f4 (Size: 20 bytes, Frame: 0)
.globl glVertex3sv
.ent glVertex3sv
glVertex3sv:
    # Line 1381
    lw	$t9,5556($zero)
    # Line 1383
    lhu	$v0,0($a0)
    # Line 1384
    lhu	$v1,2($a0)
    # Line 1385
    jr	$t9
    # Line 1386
    lhu	$t0,4($a0)
.end glVertex3sv

# Function: glVertex4d
# Declared: Line 1393 (Source lines: 1393-1394)
# Address: 0x0da784f4 - 0x0da78500 (Size: 12 bytes, Frame: 0)
.globl glVertex4d
.ent glVertex4d
glVertex4d:
    # Line 1393
    lw	$t9,5560($zero)
    # Line 1394
    jr	$t9
    nop
.end glVertex4d

# Function: glVertex4dv
# Declared: Line 1401 (Source lines: 1401-1406)
# Address: 0x0da78500 - 0x0da78514 (Size: 20 bytes, Frame: 0)
.globl glVertex4dv
.ent glVertex4dv
glVertex4dv:
    # Line 1401
    lw	$t9,5564($zero)
    # Line 1403
    ldc1	$f1,0($a0)
    # Line 1404
    ldc1	$f0,8($a0)
    # Line 1405
    jr	$t9
    # Line 1406
    ldc1	$f3,16($a0)
.end glVertex4dv

# Function: glVertex4f
# Declared: Line 1413 (Source lines: 1413-1414)
# Address: 0x0da78514 - 0x0da78520 (Size: 12 bytes, Frame: 0)
.globl glVertex4f
.ent glVertex4f
glVertex4f:
    # Line 1413
    lw	$t9,5568($zero)
    # Line 1414
    jr	$t9
    nop
.end glVertex4f

# Function: glVertex4fv
# Declared: Line 1421 (Source lines: 1421-1426)
# Address: 0x0da78520 - 0x0da78534 (Size: 20 bytes, Frame: 0)
.globl glVertex4fv
.ent glVertex4fv
glVertex4fv:
    # Line 1421
    lw	$t9,5572($zero)
    # Line 1423
    ldl	$v0,0($a0)
    # Line 1424
    ldr	$v0,7($a0)
    # Line 1425
    jr	$t9
    # Line 1426
    ldl	$v1,8($a0)
.end glVertex4fv

# Function: glVertex4i
# Declared: Line 1433 (Source lines: 1433-1434)
# Address: 0x0da78534 - 0x0da78540 (Size: 12 bytes, Frame: 0)
.globl glVertex4i
.ent glVertex4i
glVertex4i:
    # Line 1433
    lw	$t9,5576($zero)
    # Line 1434
    jr	$t9
    nop
.end glVertex4i

# Function: glVertex4iv
# Declared: Line 1441 (Source lines: 1441-1446)
# Address: 0x0da78540 - 0x0da78554 (Size: 20 bytes, Frame: 0)
.globl glVertex4iv
.ent glVertex4iv
glVertex4iv:
    # Line 1441
    lw	$t9,5580($zero)
    # Line 1443
    ldl	$v0,0($a0)
    # Line 1444
    ldr	$v0,7($a0)
    # Line 1445
    jr	$t9
    # Line 1446
    ldl	$v1,8($a0)
.end glVertex4iv

# Function: glVertex4s
# Declared: Line 1453 (Source lines: 1453-1454)
# Address: 0x0da78554 - 0x0da78560 (Size: 12 bytes, Frame: 0)
.globl glVertex4s
.ent glVertex4s
glVertex4s:
    # Line 1453
    lw	$t9,5584($zero)
    # Line 1454
    jr	$t9
    nop
.end glVertex4s

# Function: glVertex4sv
# Declared: Line 1461 (Source lines: 1461-1466)
# Address: 0x0da78560 - 0x0da78574 (Size: 20 bytes, Frame: 0)
.globl glVertex4sv
.ent glVertex4sv
glVertex4sv:
    # Line 1461
    lw	$t9,5588($zero)
    # Line 1463
    lhu	$v0,0($a0)
    # Line 1464
    lhu	$v1,2($a0)
    # Line 1465
    jr	$t9
    # Line 1466
    lhu	$t0,4($a0)
.end glVertex4sv

# Function: glClipPlane
# Declared: Line 1473 (Source lines: 1473-1474)
# Address: 0x0da78574 - 0x0da78580 (Size: 12 bytes, Frame: 0)
.globl glClipPlane
.ent glClipPlane
glClipPlane:
    # Line 1473
    lw	$t9,4224($zero)
    # Line 1474
    jr	$t9
    nop
.end glClipPlane

# Function: glColorMaterial
# Declared: Line 1480 (Source lines: 1480-1481)
# Address: 0x0da78580 - 0x0da7858c (Size: 12 bytes, Frame: 0)
.globl glColorMaterial
.ent glColorMaterial
glColorMaterial:
    # Line 1480
    lw	$t9,4228($zero)
    # Line 1481
    jr	$t9
    nop
.end glColorMaterial

# Function: glCullFace
# Declared: Line 1487 (Source lines: 1487-1488)
# Address: 0x0da7858c - 0x0da78598 (Size: 12 bytes, Frame: 0)
.globl glCullFace
.ent glCullFace
glCullFace:
    # Line 1487
    lw	$t9,4232($zero)
    # Line 1488
    jr	$t9
    nop
.end glCullFace

# Function: glFogf
# Declared: Line 1494 (Source lines: 1494-1495)
# Address: 0x0da78598 - 0x0da785a4 (Size: 12 bytes, Frame: 0)
.globl glFogf
.ent glFogf
glFogf:
    # Line 1494
    lw	$t9,4236($zero)
    # Line 1495
    jr	$t9
    nop
.end glFogf

# Function: glFogfv
# Declared: Line 1501 (Source lines: 1501-1502)
# Address: 0x0da785a4 - 0x0da785b0 (Size: 12 bytes, Frame: 0)
.globl glFogfv
.ent glFogfv
glFogfv:
    # Line 1501
    lw	$t9,4240($zero)
    # Line 1502
    jr	$t9
    nop
.end glFogfv

# Function: glFogi
# Declared: Line 1508 (Source lines: 1508-1509)
# Address: 0x0da785b0 - 0x0da785bc (Size: 12 bytes, Frame: 0)
.globl glFogi
.ent glFogi
glFogi:
    # Line 1508
    lw	$t9,4244($zero)
    # Line 1509
    jr	$t9
    nop
.end glFogi

# Function: glFogiv
# Declared: Line 1515 (Source lines: 1515-1516)
# Address: 0x0da785bc - 0x0da785c8 (Size: 12 bytes, Frame: 0)
.globl glFogiv
.ent glFogiv
glFogiv:
    # Line 1515
    lw	$t9,4248($zero)
    # Line 1516
    jr	$t9
    nop
.end glFogiv

# Function: glFrontFace
# Declared: Line 1522 (Source lines: 1522-1523)
# Address: 0x0da785c8 - 0x0da785d4 (Size: 12 bytes, Frame: 0)
.globl glFrontFace
.ent glFrontFace
glFrontFace:
    # Line 1522
    lw	$t9,4252($zero)
    # Line 1523
    jr	$t9
    nop
.end glFrontFace

# Function: glHint
# Declared: Line 1529 (Source lines: 1529-1530)
# Address: 0x0da785d4 - 0x0da785e0 (Size: 12 bytes, Frame: 0)
.globl glHint
.ent glHint
glHint:
    # Line 1529
    lw	$t9,4256($zero)
    # Line 1530
    jr	$t9
    nop
.end glHint

# Function: glLightf
# Declared: Line 1536 (Source lines: 1536-1537)
# Address: 0x0da785e0 - 0x0da785ec (Size: 12 bytes, Frame: 0)
.globl glLightf
.ent glLightf
glLightf:
    # Line 1536
    lw	$t9,4260($zero)
    # Line 1537
    jr	$t9
    nop
.end glLightf

# Function: glLightfv
# Declared: Line 1543 (Source lines: 1543-1544)
# Address: 0x0da785ec - 0x0da785f8 (Size: 12 bytes, Frame: 0)
.globl glLightfv
.ent glLightfv
glLightfv:
    # Line 1543
    lw	$t9,4264($zero)
    # Line 1544
    jr	$t9
    nop
.end glLightfv

# Function: glLighti
# Declared: Line 1550 (Source lines: 1550-1551)
# Address: 0x0da785f8 - 0x0da78604 (Size: 12 bytes, Frame: 0)
.globl glLighti
.ent glLighti
glLighti:
    # Line 1550
    lw	$t9,4268($zero)
    # Line 1551
    jr	$t9
    nop
.end glLighti

# Function: glLightiv
# Declared: Line 1557 (Source lines: 1557-1558)
# Address: 0x0da78604 - 0x0da78610 (Size: 12 bytes, Frame: 0)
.globl glLightiv
.ent glLightiv
glLightiv:
    # Line 1557
    lw	$t9,4272($zero)
    # Line 1558
    jr	$t9
    nop
.end glLightiv

# Function: glLightModelf
# Declared: Line 1564 (Source lines: 1564-1565)
# Address: 0x0da78610 - 0x0da7861c (Size: 12 bytes, Frame: 0)
.globl glLightModelf
.ent glLightModelf
glLightModelf:
    # Line 1564
    lw	$t9,4276($zero)
    # Line 1565
    jr	$t9
    nop
.end glLightModelf

# Function: glLightModelfv
# Declared: Line 1571 (Source lines: 1571-1572)
# Address: 0x0da7861c - 0x0da78628 (Size: 12 bytes, Frame: 0)
.globl glLightModelfv
.ent glLightModelfv
glLightModelfv:
    # Line 1571
    lw	$t9,4280($zero)
    # Line 1572
    jr	$t9
    nop
.end glLightModelfv

# Function: glLightModeli
# Declared: Line 1578 (Source lines: 1578-1579)
# Address: 0x0da78628 - 0x0da78634 (Size: 12 bytes, Frame: 0)
.globl glLightModeli
.ent glLightModeli
glLightModeli:
    # Line 1578
    lw	$t9,4284($zero)
    # Line 1579
    jr	$t9
    nop
.end glLightModeli

# Function: glLightModeliv
# Declared: Line 1585 (Source lines: 1585-1586)
# Address: 0x0da78634 - 0x0da78640 (Size: 12 bytes, Frame: 0)
.globl glLightModeliv
.ent glLightModeliv
glLightModeliv:
    # Line 1585
    lw	$t9,4288($zero)
    # Line 1586
    jr	$t9
    nop
.end glLightModeliv

# Function: glLineStipple
# Declared: Line 1592 (Source lines: 1592-1593)
# Address: 0x0da78640 - 0x0da7864c (Size: 12 bytes, Frame: 0)
.globl glLineStipple
.ent glLineStipple
glLineStipple:
    # Line 1592
    lw	$t9,4292($zero)
    # Line 1593
    jr	$t9
    nop
.end glLineStipple

# Function: glLineWidth
# Declared: Line 1599 (Source lines: 1599-1600)
# Address: 0x0da7864c - 0x0da78658 (Size: 12 bytes, Frame: 0)
.globl glLineWidth
.ent glLineWidth
glLineWidth:
    # Line 1599
    lw	$t9,4296($zero)
    # Line 1600
    jr	$t9
    nop
.end glLineWidth

# Function: glMaterialf
# Declared: Line 1606 (Source lines: 1606-1607)
# Address: 0x0da78658 - 0x0da78664 (Size: 12 bytes, Frame: 0)
.globl glMaterialf
.ent glMaterialf
glMaterialf:
    # Line 1606
    lw	$t9,4300($zero)
    # Line 1607
    jr	$t9
    nop
.end glMaterialf

# Function: glMaterialfv
# Declared: Line 1613 (Source lines: 1613-1614)
# Address: 0x0da78664 - 0x0da78670 (Size: 12 bytes, Frame: 0)
.globl glMaterialfv
.ent glMaterialfv
glMaterialfv:
    # Line 1613
    lw	$t9,4304($zero)
    # Line 1614
    jr	$t9
    nop
.end glMaterialfv

# Function: glMateriali
# Declared: Line 1620 (Source lines: 1620-1621)
# Address: 0x0da78670 - 0x0da7867c (Size: 12 bytes, Frame: 0)
.globl glMateriali
.ent glMateriali
glMateriali:
    # Line 1620
    lw	$t9,4308($zero)
    # Line 1621
    jr	$t9
    nop
.end glMateriali

# Function: glMaterialiv
# Declared: Line 1627 (Source lines: 1627-1628)
# Address: 0x0da7867c - 0x0da78688 (Size: 12 bytes, Frame: 0)
.globl glMaterialiv
.ent glMaterialiv
glMaterialiv:
    # Line 1627
    lw	$t9,4312($zero)
    # Line 1628
    jr	$t9
    nop
.end glMaterialiv

# Function: glPointSize
# Declared: Line 1634 (Source lines: 1634-1635)
# Address: 0x0da78688 - 0x0da78694 (Size: 12 bytes, Frame: 0)
.globl glPointSize
.ent glPointSize
glPointSize:
    # Line 1634
    lw	$t9,4316($zero)
    # Line 1635
    jr	$t9
    nop
.end glPointSize

# Function: glPolygonMode
# Declared: Line 1641 (Source lines: 1641-1642)
# Address: 0x0da78694 - 0x0da786a0 (Size: 12 bytes, Frame: 0)
.globl glPolygonMode
.ent glPolygonMode
glPolygonMode:
    # Line 1641
    lw	$t9,4320($zero)
    # Line 1642
    jr	$t9
    nop
.end glPolygonMode

# Function: glPolygonStipple
# Declared: Line 1648 (Source lines: 1648-1649)
# Address: 0x0da786a0 - 0x0da786ac (Size: 12 bytes, Frame: 0)
.globl glPolygonStipple
.ent glPolygonStipple
glPolygonStipple:
    # Line 1648
    lw	$t9,4324($zero)
    # Line 1649
    jr	$t9
    nop
.end glPolygonStipple

# Function: glScissor
# Declared: Line 1655 (Source lines: 1655-1656)
# Address: 0x0da786ac - 0x0da786b8 (Size: 12 bytes, Frame: 0)
.globl glScissor
.ent glScissor
glScissor:
    # Line 1655
    lw	$t9,4328($zero)
    # Line 1656
    jr	$t9
    nop
.end glScissor

# Function: glShadeModel
# Declared: Line 1662 (Source lines: 1662-1663)
# Address: 0x0da786b8 - 0x0da786c4 (Size: 12 bytes, Frame: 0)
.globl glShadeModel
.ent glShadeModel
glShadeModel:
    # Line 1662
    lw	$t9,4332($zero)
    # Line 1663
    jr	$t9
    nop
.end glShadeModel

# Function: glTexParameterf
# Declared: Line 1669 (Source lines: 1669-1670)
# Address: 0x0da786c4 - 0x0da786d0 (Size: 12 bytes, Frame: 0)
.globl glTexParameterf
.ent glTexParameterf
glTexParameterf:
    # Line 1669
    lw	$t9,4336($zero)
    # Line 1670
    jr	$t9
    nop
.end glTexParameterf

# Function: glTexParameterfv
# Declared: Line 1676 (Source lines: 1676-1677)
# Address: 0x0da786d0 - 0x0da786dc (Size: 12 bytes, Frame: 0)
.globl glTexParameterfv
.ent glTexParameterfv
glTexParameterfv:
    # Line 1676
    lw	$t9,4340($zero)
    # Line 1677
    jr	$t9
    nop
.end glTexParameterfv

# Function: glTexParameteri
# Declared: Line 1683 (Source lines: 1683-1684)
# Address: 0x0da786dc - 0x0da786e8 (Size: 12 bytes, Frame: 0)
.globl glTexParameteri
.ent glTexParameteri
glTexParameteri:
    # Line 1683
    lw	$t9,4344($zero)
    # Line 1684
    jr	$t9
    nop
.end glTexParameteri

# Function: glTexParameteriv
# Declared: Line 1690 (Source lines: 1690-1691)
# Address: 0x0da786e8 - 0x0da786f4 (Size: 12 bytes, Frame: 0)
.globl glTexParameteriv
.ent glTexParameteriv
glTexParameteriv:
    # Line 1690
    lw	$t9,4348($zero)
    # Line 1691
    jr	$t9
    nop
.end glTexParameteriv

# Function: glTexImage1D
# Declared: Line 1697 (Source lines: 1697-1698)
# Address: 0x0da786f4 - 0x0da78700 (Size: 12 bytes, Frame: 0)
.globl glTexImage1D
.ent glTexImage1D
glTexImage1D:
    # Line 1697
    lw	$t9,4352($zero)
    # Line 1698
    jr	$t9
    nop
.end glTexImage1D

# Function: glTexImage2D
# Declared: Line 1704 (Source lines: 1704-1705)
# Address: 0x0da78700 - 0x0da7870c (Size: 12 bytes, Frame: 0)
.globl glTexImage2D
.ent glTexImage2D
glTexImage2D:
    # Line 1704
    lw	$t9,4356($zero)
    # Line 1705
    jr	$t9
    nop
.end glTexImage2D

# Function: glTexEnvf
# Declared: Line 1711 (Source lines: 1711-1712)
# Address: 0x0da7870c - 0x0da78718 (Size: 12 bytes, Frame: 0)
.globl glTexEnvf
.ent glTexEnvf
glTexEnvf:
    # Line 1711
    lw	$t9,4360($zero)
    # Line 1712
    jr	$t9
    nop
.end glTexEnvf

# Function: glTexEnvfv
# Declared: Line 1718 (Source lines: 1718-1719)
# Address: 0x0da78718 - 0x0da78724 (Size: 12 bytes, Frame: 0)
.globl glTexEnvfv
.ent glTexEnvfv
glTexEnvfv:
    # Line 1718
    lw	$t9,4364($zero)
    # Line 1719
    jr	$t9
    nop
.end glTexEnvfv

# Function: glTexEnvi
# Declared: Line 1725 (Source lines: 1725-1726)
# Address: 0x0da78724 - 0x0da78730 (Size: 12 bytes, Frame: 0)
.globl glTexEnvi
.ent glTexEnvi
glTexEnvi:
    # Line 1725
    lw	$t9,4368($zero)
    # Line 1726
    jr	$t9
    nop
.end glTexEnvi

# Function: glTexEnviv
# Declared: Line 1732 (Source lines: 1732-1733)
# Address: 0x0da78730 - 0x0da7873c (Size: 12 bytes, Frame: 0)
.globl glTexEnviv
.ent glTexEnviv
glTexEnviv:
    # Line 1732
    lw	$t9,4372($zero)
    # Line 1733
    jr	$t9
    nop
.end glTexEnviv

# Function: glTexGend
# Declared: Line 1739 (Source lines: 1739-1740)
# Address: 0x0da7873c - 0x0da78748 (Size: 12 bytes, Frame: 0)
.globl glTexGend
.ent glTexGend
glTexGend:
    # Line 1739
    lw	$t9,4376($zero)
    # Line 1740
    jr	$t9
    nop
.end glTexGend

# Function: glTexGendv
# Declared: Line 1746 (Source lines: 1746-1747)
# Address: 0x0da78748 - 0x0da78754 (Size: 12 bytes, Frame: 0)
.globl glTexGendv
.ent glTexGendv
glTexGendv:
    # Line 1746
    lw	$t9,4380($zero)
    # Line 1747
    jr	$t9
    nop
.end glTexGendv

# Function: glTexGenf
# Declared: Line 1753 (Source lines: 1753-1754)
# Address: 0x0da78754 - 0x0da78760 (Size: 12 bytes, Frame: 0)
.globl glTexGenf
.ent glTexGenf
glTexGenf:
    # Line 1753
    lw	$t9,4384($zero)
    # Line 1754
    jr	$t9
    nop
.end glTexGenf

# Function: glTexGenfv
# Declared: Line 1760 (Source lines: 1760-1761)
# Address: 0x0da78760 - 0x0da7876c (Size: 12 bytes, Frame: 0)
.globl glTexGenfv
.ent glTexGenfv
glTexGenfv:
    # Line 1760
    lw	$t9,4388($zero)
    # Line 1761
    jr	$t9
    nop
.end glTexGenfv

# Function: glTexGeni
# Declared: Line 1767 (Source lines: 1767-1768)
# Address: 0x0da7876c - 0x0da78778 (Size: 12 bytes, Frame: 0)
.globl glTexGeni
.ent glTexGeni
glTexGeni:
    # Line 1767
    lw	$t9,4392($zero)
    # Line 1768
    jr	$t9
    nop
.end glTexGeni

# Function: glTexGeniv
# Declared: Line 1774 (Source lines: 1774-1775)
# Address: 0x0da78778 - 0x0da78784 (Size: 12 bytes, Frame: 0)
.globl glTexGeniv
.ent glTexGeniv
glTexGeniv:
    # Line 1774
    lw	$t9,4396($zero)
    # Line 1775
    jr	$t9
    nop
.end glTexGeniv

# Function: glFeedbackBuffer
# Declared: Line 1781 (Source lines: 1781-1782)
# Address: 0x0da78784 - 0x0da78790 (Size: 12 bytes, Frame: 0)
.globl glFeedbackBuffer
.ent glFeedbackBuffer
glFeedbackBuffer:
    # Line 1781
    lw	$t9,4400($zero)
    # Line 1782
    jr	$t9
    nop
.end glFeedbackBuffer

# Function: glSelectBuffer
# Declared: Line 1788 (Source lines: 1788-1789)
# Address: 0x0da78790 - 0x0da7879c (Size: 12 bytes, Frame: 0)
.globl glSelectBuffer
.ent glSelectBuffer
glSelectBuffer:
    # Line 1788
    lw	$t9,4404($zero)
    # Line 1789
    jr	$t9
    nop
.end glSelectBuffer

# Function: glRenderMode
# Declared: Line 1795 (Source lines: 1795-1796)
# Address: 0x0da7879c - 0x0da787a8 (Size: 12 bytes, Frame: 0)
.globl glRenderMode
.ent glRenderMode
glRenderMode:
    # Line 1795
    lw	$t9,4408($zero)
    # Line 1796
    jr	$t9
    nop
.end glRenderMode

# Function: glInitNames
# Declared: Line 1802 (Source lines: 1802-1805)
# Address: 0x0da787a8 - 0x0da787b4 (Size: 12 bytes, Frame: 0)
.globl glInitNames
.ent glInitNames
glInitNames:
    # Line 1802
    lw	$t9,4412($zero)
    # Line 1804
    jr	$t9
    # Line 1805
    nop
.end glInitNames

# Function: glLoadName
# Declared: Line 1812 (Source lines: 1812-1813)
# Address: 0x0da787b4 - 0x0da787c0 (Size: 12 bytes, Frame: 0)
.globl glLoadName
.ent glLoadName
glLoadName:
    # Line 1812
    lw	$t9,4416($zero)
    # Line 1813
    jr	$t9
    nop
.end glLoadName

# Function: glPassThrough
# Declared: Line 1819 (Source lines: 1819-1820)
# Address: 0x0da787c0 - 0x0da787cc (Size: 12 bytes, Frame: 0)
.globl glPassThrough
.ent glPassThrough
glPassThrough:
    # Line 1819
    lw	$t9,4420($zero)
    # Line 1820
    jr	$t9
    nop
.end glPassThrough

# Function: glPopName
# Declared: Line 1826 (Source lines: 1826-1829)
# Address: 0x0da787cc - 0x0da787d8 (Size: 12 bytes, Frame: 0)
.globl glPopName
.ent glPopName
glPopName:
    # Line 1826
    lw	$t9,4424($zero)
    # Line 1828
    jr	$t9
    # Line 1829
    nop
.end glPopName

# Function: glPushName
# Declared: Line 1836 (Source lines: 1836-1837)
# Address: 0x0da787d8 - 0x0da787e4 (Size: 12 bytes, Frame: 0)
.globl glPushName
.ent glPushName
glPushName:
    # Line 1836
    lw	$t9,4428($zero)
    # Line 1837
    jr	$t9
    nop
.end glPushName

# Function: glDrawBuffer
# Declared: Line 1843 (Source lines: 1843-1844)
# Address: 0x0da787e4 - 0x0da787f0 (Size: 12 bytes, Frame: 0)
.globl glDrawBuffer
.ent glDrawBuffer
glDrawBuffer:
    # Line 1843
    lw	$t9,4432($zero)
    # Line 1844
    jr	$t9
    nop
.end glDrawBuffer

# Function: glClear
# Declared: Line 1850 (Source lines: 1850-1851)
# Address: 0x0da787f0 - 0x0da787fc (Size: 12 bytes, Frame: 0)
.globl glClear
.ent glClear
glClear:
    # Line 1850
    lw	$t9,4436($zero)
    # Line 1851
    jr	$t9
    nop
.end glClear

# Function: glClearAccum
# Declared: Line 1857 (Source lines: 1857-1858)
# Address: 0x0da787fc - 0x0da78808 (Size: 12 bytes, Frame: 0)
.globl glClearAccum
.ent glClearAccum
glClearAccum:
    # Line 1857
    lw	$t9,4440($zero)
    # Line 1858
    jr	$t9
    nop
.end glClearAccum

# Function: glClearIndex
# Declared: Line 1864 (Source lines: 1864-1865)
# Address: 0x0da78808 - 0x0da78814 (Size: 12 bytes, Frame: 0)
.globl glClearIndex
.ent glClearIndex
glClearIndex:
    # Line 1864
    lw	$t9,4444($zero)
    # Line 1865
    jr	$t9
    nop
.end glClearIndex

# Function: glClearColor
# Declared: Line 1871 (Source lines: 1871-1872)
# Address: 0x0da78814 - 0x0da78820 (Size: 12 bytes, Frame: 0)
.globl glClearColor
.ent glClearColor
glClearColor:
    # Line 1871
    lw	$t9,4448($zero)
    # Line 1872
    jr	$t9
    nop
.end glClearColor

# Function: glClearStencil
# Declared: Line 1878 (Source lines: 1878-1879)
# Address: 0x0da78820 - 0x0da7882c (Size: 12 bytes, Frame: 0)
.globl glClearStencil
.ent glClearStencil
glClearStencil:
    # Line 1878
    lw	$t9,4452($zero)
    # Line 1879
    jr	$t9
    nop
.end glClearStencil

# Function: glClearDepth
# Declared: Line 1885 (Source lines: 1885-1886)
# Address: 0x0da7882c - 0x0da78838 (Size: 12 bytes, Frame: 0)
.globl glClearDepth
.ent glClearDepth
glClearDepth:
    # Line 1885
    lw	$t9,4456($zero)
    # Line 1886
    jr	$t9
    nop
.end glClearDepth

# Function: glStencilMask
# Declared: Line 1892 (Source lines: 1892-1893)
# Address: 0x0da78838 - 0x0da78844 (Size: 12 bytes, Frame: 0)
.globl glStencilMask
.ent glStencilMask
glStencilMask:
    # Line 1892
    lw	$t9,4460($zero)
    # Line 1893
    jr	$t9
    nop
.end glStencilMask

# Function: glColorMask
# Declared: Line 1899 (Source lines: 1899-1900)
# Address: 0x0da78844 - 0x0da78850 (Size: 12 bytes, Frame: 0)
.globl glColorMask
.ent glColorMask
glColorMask:
    # Line 1899
    lw	$t9,4464($zero)
    # Line 1900
    jr	$t9
    nop
.end glColorMask

# Function: glDepthMask
# Declared: Line 1906 (Source lines: 1906-1907)
# Address: 0x0da78850 - 0x0da7885c (Size: 12 bytes, Frame: 0)
.globl glDepthMask
.ent glDepthMask
glDepthMask:
    # Line 1906
    lw	$t9,4468($zero)
    # Line 1907
    jr	$t9
    nop
.end glDepthMask

# Function: glIndexMask
# Declared: Line 1913 (Source lines: 1913-1914)
# Address: 0x0da7885c - 0x0da78868 (Size: 12 bytes, Frame: 0)
.globl glIndexMask
.ent glIndexMask
glIndexMask:
    # Line 1913
    lw	$t9,4472($zero)
    # Line 1914
    jr	$t9
    nop
.end glIndexMask

# Function: glAccum
# Declared: Line 1920 (Source lines: 1920-1921)
# Address: 0x0da78868 - 0x0da78874 (Size: 12 bytes, Frame: 0)
.globl glAccum
.ent glAccum
glAccum:
    # Line 1920
    lw	$t9,4476($zero)
    # Line 1921
    jr	$t9
    nop
.end glAccum

# Function: glDisable
# Declared: Line 1927 (Source lines: 1927-1928)
# Address: 0x0da78874 - 0x0da78880 (Size: 12 bytes, Frame: 0)
.globl glDisable
.ent glDisable
glDisable:
    # Line 1927
    lw	$t9,4480($zero)
    # Line 1928
    jr	$t9
    nop
.end glDisable

# Function: glEnable
# Declared: Line 1934 (Source lines: 1934-1935)
# Address: 0x0da78880 - 0x0da7888c (Size: 12 bytes, Frame: 0)
.globl glEnable
.ent glEnable
glEnable:
    # Line 1934
    lw	$t9,4484($zero)
    # Line 1935
    jr	$t9
    nop
.end glEnable

# Function: glFinish
# Declared: Line 1941 (Source lines: 1941-1942)
# Address: 0x0da7888c - 0x0da78898 (Size: 12 bytes, Frame: 0)
.globl glFinish
.ent glFinish
glFinish:
    # Line 1941
    lw	$t9,4488($zero)
    # Line 1942
    jr	$t9
    nop
.end glFinish

# Function: glFlush
# Declared: Line 1948 (Source lines: 1948-1949)
# Address: 0x0da78898 - 0x0da788a4 (Size: 12 bytes, Frame: 0)
.globl glFlush
.ent glFlush
glFlush:
    # Line 1948
    lw	$t9,4492($zero)
    # Line 1949
    jr	$t9
    nop
.end glFlush

# Function: glPopAttrib
# Declared: Line 1955 (Source lines: 1955-1956)
# Address: 0x0da788a4 - 0x0da788b0 (Size: 12 bytes, Frame: 0)
.globl glPopAttrib
.ent glPopAttrib
glPopAttrib:
    # Line 1955
    lw	$t9,4496($zero)
    # Line 1956
    jr	$t9
    nop
.end glPopAttrib

# Function: glPushAttrib
# Declared: Line 1962 (Source lines: 1962-1963)
# Address: 0x0da788b0 - 0x0da788bc (Size: 12 bytes, Frame: 0)
.globl glPushAttrib
.ent glPushAttrib
glPushAttrib:
    # Line 1962
    lw	$t9,4500($zero)
    # Line 1963
    jr	$t9
    nop
.end glPushAttrib

# Function: glMap1d
# Declared: Line 1969 (Source lines: 1969-1970)
# Address: 0x0da788bc - 0x0da788c8 (Size: 12 bytes, Frame: 0)
.globl glMap1d
.ent glMap1d
glMap1d:
    # Line 1969
    lw	$t9,4504($zero)
    # Line 1970
    jr	$t9
    nop
.end glMap1d

# Function: glMap1f
# Declared: Line 1976 (Source lines: 1976-1977)
# Address: 0x0da788c8 - 0x0da788d4 (Size: 12 bytes, Frame: 0)
.globl glMap1f
.ent glMap1f
glMap1f:
    # Line 1976
    lw	$t9,4508($zero)
    # Line 1977
    jr	$t9
    nop
.end glMap1f

# Function: glMap2d
# Declared: Line 1983 (Source lines: 1983-1984)
# Address: 0x0da788d4 - 0x0da788e0 (Size: 12 bytes, Frame: 0)
.globl glMap2d
.ent glMap2d
glMap2d:
    # Line 1983
    lw	$t9,4512($zero)
    # Line 1984
    jr	$t9
    nop
.end glMap2d

# Function: glMap2f
# Declared: Line 1990 (Source lines: 1990-1991)
# Address: 0x0da788e0 - 0x0da788ec (Size: 12 bytes, Frame: 0)
.globl glMap2f
.ent glMap2f
glMap2f:
    # Line 1990
    lw	$t9,4516($zero)
    # Line 1991
    jr	$t9
    nop
.end glMap2f

# Function: glMapGrid1d
# Declared: Line 1997 (Source lines: 1997-1998)
# Address: 0x0da788ec - 0x0da788f8 (Size: 12 bytes, Frame: 0)
.globl glMapGrid1d
.ent glMapGrid1d
glMapGrid1d:
    # Line 1997
    lw	$t9,4520($zero)
    # Line 1998
    jr	$t9
    nop
.end glMapGrid1d

# Function: glMapGrid1f
# Declared: Line 2004 (Source lines: 2004-2005)
# Address: 0x0da788f8 - 0x0da78904 (Size: 12 bytes, Frame: 0)
.globl glMapGrid1f
.ent glMapGrid1f
glMapGrid1f:
    # Line 2004
    lw	$t9,4524($zero)
    # Line 2005
    jr	$t9
    nop
.end glMapGrid1f

# Function: glMapGrid2d
# Declared: Line 2011 (Source lines: 2011-2012)
# Address: 0x0da78904 - 0x0da78910 (Size: 12 bytes, Frame: 0)
.globl glMapGrid2d
.ent glMapGrid2d
glMapGrid2d:
    # Line 2011
    lw	$t9,4528($zero)
    # Line 2012
    jr	$t9
    nop
.end glMapGrid2d

# Function: glMapGrid2f
# Declared: Line 2018 (Source lines: 2018-2019)
# Address: 0x0da78910 - 0x0da7891c (Size: 12 bytes, Frame: 0)
.globl glMapGrid2f
.ent glMapGrid2f
glMapGrid2f:
    # Line 2018
    lw	$t9,4532($zero)
    # Line 2019
    jr	$t9
    nop
.end glMapGrid2f

# Function: glEvalCoord1d
# Declared: Line 2025 (Source lines: 2025-2026)
# Address: 0x0da7891c - 0x0da78928 (Size: 12 bytes, Frame: 0)
.globl glEvalCoord1d
.ent glEvalCoord1d
glEvalCoord1d:
    # Line 2025
    lw	$t9,4536($zero)
    # Line 2026
    jr	$t9
    nop
.end glEvalCoord1d

# Function: glEvalCoord1dv
# Declared: Line 2032 (Source lines: 2032-2033)
# Address: 0x0da78928 - 0x0da78934 (Size: 12 bytes, Frame: 0)
.globl glEvalCoord1dv
.ent glEvalCoord1dv
glEvalCoord1dv:
    # Line 2032
    lw	$t9,4540($zero)
    # Line 2033
    jr	$t9
    nop
.end glEvalCoord1dv

# Function: glEvalCoord1f
# Declared: Line 2039 (Source lines: 2039-2040)
# Address: 0x0da78934 - 0x0da78940 (Size: 12 bytes, Frame: 0)
.globl glEvalCoord1f
.ent glEvalCoord1f
glEvalCoord1f:
    # Line 2039
    lw	$t9,4544($zero)
    # Line 2040
    jr	$t9
    nop
.end glEvalCoord1f

# Function: glEvalCoord1fv
# Declared: Line 2046 (Source lines: 2046-2047)
# Address: 0x0da78940 - 0x0da7894c (Size: 12 bytes, Frame: 0)
.globl glEvalCoord1fv
.ent glEvalCoord1fv
glEvalCoord1fv:
    # Line 2046
    lw	$t9,4548($zero)
    # Line 2047
    jr	$t9
    nop
.end glEvalCoord1fv

# Function: glEvalCoord2d
# Declared: Line 2053 (Source lines: 2053-2054)
# Address: 0x0da7894c - 0x0da78958 (Size: 12 bytes, Frame: 0)
.globl glEvalCoord2d
.ent glEvalCoord2d
glEvalCoord2d:
    # Line 2053
    lw	$t9,4552($zero)
    # Line 2054
    jr	$t9
    nop
.end glEvalCoord2d

# Function: glEvalCoord2dv
# Declared: Line 2060 (Source lines: 2060-2061)
# Address: 0x0da78958 - 0x0da78964 (Size: 12 bytes, Frame: 0)
.globl glEvalCoord2dv
.ent glEvalCoord2dv
glEvalCoord2dv:
    # Line 2060
    lw	$t9,4556($zero)
    # Line 2061
    jr	$t9
    nop
.end glEvalCoord2dv

# Function: glEvalCoord2f
# Declared: Line 2067 (Source lines: 2067-2068)
# Address: 0x0da78964 - 0x0da78970 (Size: 12 bytes, Frame: 0)
.globl glEvalCoord2f
.ent glEvalCoord2f
glEvalCoord2f:
    # Line 2067
    lw	$t9,4560($zero)
    # Line 2068
    jr	$t9
    nop
.end glEvalCoord2f

# Function: glEvalCoord2fv
# Declared: Line 2074 (Source lines: 2074-2075)
# Address: 0x0da78970 - 0x0da7897c (Size: 12 bytes, Frame: 0)
.globl glEvalCoord2fv
.ent glEvalCoord2fv
glEvalCoord2fv:
    # Line 2074
    lw	$t9,4564($zero)
    # Line 2075
    jr	$t9
    nop
.end glEvalCoord2fv

# Function: glEvalMesh1
# Declared: Line 2081 (Source lines: 2081-2082)
# Address: 0x0da7897c - 0x0da78988 (Size: 12 bytes, Frame: 0)
.globl glEvalMesh1
.ent glEvalMesh1
glEvalMesh1:
    # Line 2081
    lw	$t9,4568($zero)
    # Line 2082
    jr	$t9
    nop
.end glEvalMesh1

# Function: glEvalPoint1
# Declared: Line 2088 (Source lines: 2088-2089)
# Address: 0x0da78988 - 0x0da78994 (Size: 12 bytes, Frame: 0)
.globl glEvalPoint1
.ent glEvalPoint1
glEvalPoint1:
    # Line 2088
    lw	$t9,4572($zero)
    # Line 2089
    jr	$t9
    nop
.end glEvalPoint1

# Function: glEvalMesh2
# Declared: Line 2095 (Source lines: 2095-2096)
# Address: 0x0da78994 - 0x0da789a0 (Size: 12 bytes, Frame: 0)
.globl glEvalMesh2
.ent glEvalMesh2
glEvalMesh2:
    # Line 2095
    lw	$t9,4576($zero)
    # Line 2096
    jr	$t9
    nop
.end glEvalMesh2

# Function: glEvalPoint2
# Declared: Line 2102 (Source lines: 2102-2103)
# Address: 0x0da789a0 - 0x0da789ac (Size: 12 bytes, Frame: 0)
.globl glEvalPoint2
.ent glEvalPoint2
glEvalPoint2:
    # Line 2102
    lw	$t9,4580($zero)
    # Line 2103
    jr	$t9
    nop
.end glEvalPoint2

# Function: glAlphaFunc
# Declared: Line 2109 (Source lines: 2109-2110)
# Address: 0x0da789ac - 0x0da789b8 (Size: 12 bytes, Frame: 0)
.globl glAlphaFunc
.ent glAlphaFunc
glAlphaFunc:
    # Line 2109
    lw	$t9,4584($zero)
    # Line 2110
    jr	$t9
    nop
.end glAlphaFunc

# Function: glBlendFunc
# Declared: Line 2116 (Source lines: 2116-2117)
# Address: 0x0da789b8 - 0x0da789c4 (Size: 12 bytes, Frame: 0)
.globl glBlendFunc
.ent glBlendFunc
glBlendFunc:
    # Line 2116
    lw	$t9,4588($zero)
    # Line 2117
    jr	$t9
    nop
.end glBlendFunc

# Function: glLogicOp
# Declared: Line 2123 (Source lines: 2123-2124)
# Address: 0x0da789c4 - 0x0da789d0 (Size: 12 bytes, Frame: 0)
.globl glLogicOp
.ent glLogicOp
glLogicOp:
    # Line 2123
    lw	$t9,4592($zero)
    # Line 2124
    jr	$t9
    nop
.end glLogicOp

# Function: glStencilFunc
# Declared: Line 2130 (Source lines: 2130-2131)
# Address: 0x0da789d0 - 0x0da789dc (Size: 12 bytes, Frame: 0)
.globl glStencilFunc
.ent glStencilFunc
glStencilFunc:
    # Line 2130
    lw	$t9,4596($zero)
    # Line 2131
    jr	$t9
    nop
.end glStencilFunc

# Function: glStencilOp
# Declared: Line 2137 (Source lines: 2137-2138)
# Address: 0x0da789dc - 0x0da789e8 (Size: 12 bytes, Frame: 0)
.globl glStencilOp
.ent glStencilOp
glStencilOp:
    # Line 2137
    lw	$t9,4600($zero)
    # Line 2138
    jr	$t9
    nop
.end glStencilOp

# Function: glDepthFunc
# Declared: Line 2144 (Source lines: 2144-2145)
# Address: 0x0da789e8 - 0x0da789f4 (Size: 12 bytes, Frame: 0)
.globl glDepthFunc
.ent glDepthFunc
glDepthFunc:
    # Line 2144
    lw	$t9,4604($zero)
    # Line 2145
    jr	$t9
    nop
.end glDepthFunc

# Function: glPixelZoom
# Declared: Line 2151 (Source lines: 2151-2152)
# Address: 0x0da789f4 - 0x0da78a00 (Size: 12 bytes, Frame: 0)
.globl glPixelZoom
.ent glPixelZoom
glPixelZoom:
    # Line 2151
    lw	$t9,4608($zero)
    # Line 2152
    jr	$t9
    nop
.end glPixelZoom

# Function: glPixelTransferf
# Declared: Line 2158 (Source lines: 2158-2159)
# Address: 0x0da78a00 - 0x0da78a0c (Size: 12 bytes, Frame: 0)
.globl glPixelTransferf
.ent glPixelTransferf
glPixelTransferf:
    # Line 2158
    lw	$t9,4612($zero)
    # Line 2159
    jr	$t9
    nop
.end glPixelTransferf

# Function: glPixelTransferi
# Declared: Line 2165 (Source lines: 2165-2166)
# Address: 0x0da78a0c - 0x0da78a18 (Size: 12 bytes, Frame: 0)
.globl glPixelTransferi
.ent glPixelTransferi
glPixelTransferi:
    # Line 2165
    lw	$t9,4616($zero)
    # Line 2166
    jr	$t9
    nop
.end glPixelTransferi

# Function: glPixelStoref
# Declared: Line 2172 (Source lines: 2172-2173)
# Address: 0x0da78a18 - 0x0da78a24 (Size: 12 bytes, Frame: 0)
.globl glPixelStoref
.ent glPixelStoref
glPixelStoref:
    # Line 2172
    lw	$t9,4620($zero)
    # Line 2173
    jr	$t9
    nop
.end glPixelStoref

# Function: glPixelStorei
# Declared: Line 2179 (Source lines: 2179-2180)
# Address: 0x0da78a24 - 0x0da78a30 (Size: 12 bytes, Frame: 0)
.globl glPixelStorei
.ent glPixelStorei
glPixelStorei:
    # Line 2179
    lw	$t9,4624($zero)
    # Line 2180
    jr	$t9
    nop
.end glPixelStorei

# Function: glPixelMapfv
# Declared: Line 2186 (Source lines: 2186-2187)
# Address: 0x0da78a30 - 0x0da78a3c (Size: 12 bytes, Frame: 0)
.globl glPixelMapfv
.ent glPixelMapfv
glPixelMapfv:
    # Line 2186
    lw	$t9,4628($zero)
    # Line 2187
    jr	$t9
    nop
.end glPixelMapfv

# Function: glPixelMapuiv
# Declared: Line 2193 (Source lines: 2193-2194)
# Address: 0x0da78a3c - 0x0da78a48 (Size: 12 bytes, Frame: 0)
.globl glPixelMapuiv
.ent glPixelMapuiv
glPixelMapuiv:
    # Line 2193
    lw	$t9,4632($zero)
    # Line 2194
    jr	$t9
    nop
.end glPixelMapuiv

# Function: glPixelMapusv
# Declared: Line 2200 (Source lines: 2200-2201)
# Address: 0x0da78a48 - 0x0da78a54 (Size: 12 bytes, Frame: 0)
.globl glPixelMapusv
.ent glPixelMapusv
glPixelMapusv:
    # Line 2200
    lw	$t9,4636($zero)
    # Line 2201
    jr	$t9
    nop
.end glPixelMapusv

# Function: glReadBuffer
# Declared: Line 2207 (Source lines: 2207-2208)
# Address: 0x0da78a54 - 0x0da78a60 (Size: 12 bytes, Frame: 0)
.globl glReadBuffer
.ent glReadBuffer
glReadBuffer:
    # Line 2207
    lw	$t9,4640($zero)
    # Line 2208
    jr	$t9
    nop
.end glReadBuffer

# Function: glCopyPixels
# Declared: Line 2214 (Source lines: 2214-2215)
# Address: 0x0da78a60 - 0x0da78a6c (Size: 12 bytes, Frame: 0)
.globl glCopyPixels
.ent glCopyPixels
glCopyPixels:
    # Line 2214
    lw	$t9,4644($zero)
    # Line 2215
    jr	$t9
    nop
.end glCopyPixels

# Function: glReadPixels
# Declared: Line 2221 (Source lines: 2221-2222)
# Address: 0x0da78a6c - 0x0da78a78 (Size: 12 bytes, Frame: 0)
.globl glReadPixels
.ent glReadPixels
glReadPixels:
    # Line 2221
    lw	$t9,4648($zero)
    # Line 2222
    jr	$t9
    nop
.end glReadPixels

# Function: glDrawPixels
# Declared: Line 2228 (Source lines: 2228-2229)
# Address: 0x0da78a78 - 0x0da78a84 (Size: 12 bytes, Frame: 0)
.globl glDrawPixels
.ent glDrawPixels
glDrawPixels:
    # Line 2228
    lw	$t9,4652($zero)
    # Line 2229
    jr	$t9
    nop
.end glDrawPixels

# Function: glGetBooleanv
# Declared: Line 2235 (Source lines: 2235-2236)
# Address: 0x0da78a84 - 0x0da78a90 (Size: 12 bytes, Frame: 0)
.globl glGetBooleanv
.ent glGetBooleanv
glGetBooleanv:
    # Line 2235
    lw	$t9,4656($zero)
    # Line 2236
    jr	$t9
    nop
.end glGetBooleanv

# Function: glGetClipPlane
# Declared: Line 2242 (Source lines: 2242-2243)
# Address: 0x0da78a90 - 0x0da78a9c (Size: 12 bytes, Frame: 0)
.globl glGetClipPlane
.ent glGetClipPlane
glGetClipPlane:
    # Line 2242
    lw	$t9,4660($zero)
    # Line 2243
    jr	$t9
    nop
.end glGetClipPlane

# Function: glGetDoublev
# Declared: Line 2249 (Source lines: 2249-2250)
# Address: 0x0da78a9c - 0x0da78aa8 (Size: 12 bytes, Frame: 0)
.globl glGetDoublev
.ent glGetDoublev
glGetDoublev:
    # Line 2249
    lw	$t9,4664($zero)
    # Line 2250
    jr	$t9
    nop
.end glGetDoublev

# Function: glGetError
# Declared: Line 2256 (Source lines: 2256-2257)
# Address: 0x0da78aa8 - 0x0da78ab4 (Size: 12 bytes, Frame: 0)
.globl glGetError
.ent glGetError
glGetError:
    # Line 2256
    lw	$t9,4668($zero)
    # Line 2257
    jr	$t9
    nop
.end glGetError

# Function: glGetFloatv
# Declared: Line 2263 (Source lines: 2263-2264)
# Address: 0x0da78ab4 - 0x0da78ac0 (Size: 12 bytes, Frame: 0)
.globl glGetFloatv
.ent glGetFloatv
glGetFloatv:
    # Line 2263
    lw	$t9,4672($zero)
    # Line 2264
    jr	$t9
    nop
.end glGetFloatv

# Function: glGetIntegerv
# Declared: Line 2270 (Source lines: 2270-2271)
# Address: 0x0da78ac0 - 0x0da78acc (Size: 12 bytes, Frame: 0)
.globl glGetIntegerv
.ent glGetIntegerv
glGetIntegerv:
    # Line 2270
    lw	$t9,4676($zero)
    # Line 2271
    jr	$t9
    nop
.end glGetIntegerv

# Function: glGetLightfv
# Declared: Line 2277 (Source lines: 2277-2278)
# Address: 0x0da78acc - 0x0da78ad8 (Size: 12 bytes, Frame: 0)
.globl glGetLightfv
.ent glGetLightfv
glGetLightfv:
    # Line 2277
    lw	$t9,4680($zero)
    # Line 2278
    jr	$t9
    nop
.end glGetLightfv

# Function: glGetLightiv
# Declared: Line 2284 (Source lines: 2284-2285)
# Address: 0x0da78ad8 - 0x0da78ae4 (Size: 12 bytes, Frame: 0)
.globl glGetLightiv
.ent glGetLightiv
glGetLightiv:
    # Line 2284
    lw	$t9,4684($zero)
    # Line 2285
    jr	$t9
    nop
.end glGetLightiv

# Function: glGetMapdv
# Declared: Line 2291 (Source lines: 2291-2292)
# Address: 0x0da78ae4 - 0x0da78af0 (Size: 12 bytes, Frame: 0)
.globl glGetMapdv
.ent glGetMapdv
glGetMapdv:
    # Line 2291
    lw	$t9,4688($zero)
    # Line 2292
    jr	$t9
    nop
.end glGetMapdv

# Function: glGetMapfv
# Declared: Line 2298 (Source lines: 2298-2299)
# Address: 0x0da78af0 - 0x0da78afc (Size: 12 bytes, Frame: 0)
.globl glGetMapfv
.ent glGetMapfv
glGetMapfv:
    # Line 2298
    lw	$t9,4692($zero)
    # Line 2299
    jr	$t9
    nop
.end glGetMapfv

# Function: glGetMapiv
# Declared: Line 2305 (Source lines: 2305-2306)
# Address: 0x0da78afc - 0x0da78b08 (Size: 12 bytes, Frame: 0)
.globl glGetMapiv
.ent glGetMapiv
glGetMapiv:
    # Line 2305
    lw	$t9,4696($zero)
    # Line 2306
    jr	$t9
    nop
.end glGetMapiv

# Function: glGetMaterialfv
# Declared: Line 2312 (Source lines: 2312-2313)
# Address: 0x0da78b08 - 0x0da78b14 (Size: 12 bytes, Frame: 0)
.globl glGetMaterialfv
.ent glGetMaterialfv
glGetMaterialfv:
    # Line 2312
    lw	$t9,4700($zero)
    # Line 2313
    jr	$t9
    nop
.end glGetMaterialfv

# Function: glGetMaterialiv
# Declared: Line 2319 (Source lines: 2319-2320)
# Address: 0x0da78b14 - 0x0da78b20 (Size: 12 bytes, Frame: 0)
.globl glGetMaterialiv
.ent glGetMaterialiv
glGetMaterialiv:
    # Line 2319
    lw	$t9,4704($zero)
    # Line 2320
    jr	$t9
    nop
.end glGetMaterialiv

# Function: glGetPixelMapfv
# Declared: Line 2326 (Source lines: 2326-2327)
# Address: 0x0da78b20 - 0x0da78b2c (Size: 12 bytes, Frame: 0)
.globl glGetPixelMapfv
.ent glGetPixelMapfv
glGetPixelMapfv:
    # Line 2326
    lw	$t9,4708($zero)
    # Line 2327
    jr	$t9
    nop
.end glGetPixelMapfv

# Function: glGetPixelMapuiv
# Declared: Line 2333 (Source lines: 2333-2334)
# Address: 0x0da78b2c - 0x0da78b38 (Size: 12 bytes, Frame: 0)
.globl glGetPixelMapuiv
.ent glGetPixelMapuiv
glGetPixelMapuiv:
    # Line 2333
    lw	$t9,4712($zero)
    # Line 2334
    jr	$t9
    nop
.end glGetPixelMapuiv

# Function: glGetPixelMapusv
# Declared: Line 2340 (Source lines: 2340-2341)
# Address: 0x0da78b38 - 0x0da78b44 (Size: 12 bytes, Frame: 0)
.globl glGetPixelMapusv
.ent glGetPixelMapusv
glGetPixelMapusv:
    # Line 2340
    lw	$t9,4716($zero)
    # Line 2341
    jr	$t9
    nop
.end glGetPixelMapusv

# Function: glGetPolygonStipple
# Declared: Line 2347 (Source lines: 2347-2348)
# Address: 0x0da78b44 - 0x0da78b50 (Size: 12 bytes, Frame: 0)
.globl glGetPolygonStipple
.ent glGetPolygonStipple
glGetPolygonStipple:
    # Line 2347
    lw	$t9,4720($zero)
    # Line 2348
    jr	$t9
    nop
.end glGetPolygonStipple

# Function: glGetString
# Declared: Line 2354 (Source lines: 2354-2355)
# Address: 0x0da78b50 - 0x0da78b5c (Size: 12 bytes, Frame: 0)
.globl glGetString
.ent glGetString
glGetString:
    # Line 2354
    lw	$t9,4724($zero)
    # Line 2355
    jr	$t9
    nop
.end glGetString

# Function: glGetTexEnvfv
# Declared: Line 2361 (Source lines: 2361-2362)
# Address: 0x0da78b5c - 0x0da78b68 (Size: 12 bytes, Frame: 0)
.globl glGetTexEnvfv
.ent glGetTexEnvfv
glGetTexEnvfv:
    # Line 2361
    lw	$t9,4728($zero)
    # Line 2362
    jr	$t9
    nop
.end glGetTexEnvfv

# Function: glGetTexEnviv
# Declared: Line 2368 (Source lines: 2368-2369)
# Address: 0x0da78b68 - 0x0da78b74 (Size: 12 bytes, Frame: 0)
.globl glGetTexEnviv
.ent glGetTexEnviv
glGetTexEnviv:
    # Line 2368
    lw	$t9,4732($zero)
    # Line 2369
    jr	$t9
    nop
.end glGetTexEnviv

# Function: glGetTexGendv
# Declared: Line 2375 (Source lines: 2375-2376)
# Address: 0x0da78b74 - 0x0da78b80 (Size: 12 bytes, Frame: 0)
.globl glGetTexGendv
.ent glGetTexGendv
glGetTexGendv:
    # Line 2375
    lw	$t9,4736($zero)
    # Line 2376
    jr	$t9
    nop
.end glGetTexGendv

# Function: glGetTexGenfv
# Declared: Line 2382 (Source lines: 2382-2383)
# Address: 0x0da78b80 - 0x0da78b8c (Size: 12 bytes, Frame: 0)
.globl glGetTexGenfv
.ent glGetTexGenfv
glGetTexGenfv:
    # Line 2382
    lw	$t9,4740($zero)
    # Line 2383
    jr	$t9
    nop
.end glGetTexGenfv

# Function: glGetTexGeniv
# Declared: Line 2389 (Source lines: 2389-2390)
# Address: 0x0da78b8c - 0x0da78b98 (Size: 12 bytes, Frame: 0)
.globl glGetTexGeniv
.ent glGetTexGeniv
glGetTexGeniv:
    # Line 2389
    lw	$t9,4744($zero)
    # Line 2390
    jr	$t9
    nop
.end glGetTexGeniv

# Function: glGetTexImage
# Declared: Line 2396 (Source lines: 2396-2397)
# Address: 0x0da78b98 - 0x0da78ba4 (Size: 12 bytes, Frame: 0)
.globl glGetTexImage
.ent glGetTexImage
glGetTexImage:
    # Line 2396
    lw	$t9,4748($zero)
    # Line 2397
    jr	$t9
    nop
.end glGetTexImage

# Function: glGetTexParameterfv
# Declared: Line 2403 (Source lines: 2403-2404)
# Address: 0x0da78ba4 - 0x0da78bb0 (Size: 12 bytes, Frame: 0)
.globl glGetTexParameterfv
.ent glGetTexParameterfv
glGetTexParameterfv:
    # Line 2403
    lw	$t9,4752($zero)
    # Line 2404
    jr	$t9
    nop
.end glGetTexParameterfv

# Function: glGetTexParameteriv
# Declared: Line 2410 (Source lines: 2410-2411)
# Address: 0x0da78bb0 - 0x0da78bbc (Size: 12 bytes, Frame: 0)
.globl glGetTexParameteriv
.ent glGetTexParameteriv
glGetTexParameteriv:
    # Line 2410
    lw	$t9,4756($zero)
    # Line 2411
    jr	$t9
    nop
.end glGetTexParameteriv

# Function: glGetTexLevelParameterfv
# Declared: Line 2417 (Source lines: 2417-2418)
# Address: 0x0da78bbc - 0x0da78bc8 (Size: 12 bytes, Frame: 0)
.globl glGetTexLevelParameterfv
.ent glGetTexLevelParameterfv
glGetTexLevelParameterfv:
    # Line 2417
    lw	$t9,4760($zero)
    # Line 2418
    jr	$t9
    nop
.end glGetTexLevelParameterfv

# Function: glGetTexLevelParameteriv
# Declared: Line 2424 (Source lines: 2424-2425)
# Address: 0x0da78bc8 - 0x0da78bd4 (Size: 12 bytes, Frame: 0)
.globl glGetTexLevelParameteriv
.ent glGetTexLevelParameteriv
glGetTexLevelParameteriv:
    # Line 2424
    lw	$t9,4764($zero)
    # Line 2425
    jr	$t9
    nop
.end glGetTexLevelParameteriv

# Function: glIsEnabled
# Declared: Line 2431 (Source lines: 2431-2432)
# Address: 0x0da78bd4 - 0x0da78be0 (Size: 12 bytes, Frame: 0)
.globl glIsEnabled
.ent glIsEnabled
glIsEnabled:
    # Line 2431
    lw	$t9,4768($zero)
    # Line 2432
    jr	$t9
    nop
.end glIsEnabled

# Function: glIsList
# Declared: Line 2438 (Source lines: 2438-2439)
# Address: 0x0da78be0 - 0x0da78bec (Size: 12 bytes, Frame: 0)
.globl glIsList
.ent glIsList
glIsList:
    # Line 2438
    lw	$t9,4772($zero)
    # Line 2439
    jr	$t9
    nop
.end glIsList

# Function: glDepthRange
# Declared: Line 2445 (Source lines: 2445-2446)
# Address: 0x0da78bec - 0x0da78bf8 (Size: 12 bytes, Frame: 0)
.globl glDepthRange
.ent glDepthRange
glDepthRange:
    # Line 2445
    lw	$t9,4776($zero)
    # Line 2446
    jr	$t9
    nop
.end glDepthRange

# Function: glFrustum
# Declared: Line 2452 (Source lines: 2452-2453)
# Address: 0x0da78bf8 - 0x0da78c04 (Size: 12 bytes, Frame: 0)
.globl glFrustum
.ent glFrustum
glFrustum:
    # Line 2452
    lw	$t9,4780($zero)
    # Line 2453
    jr	$t9
    nop
.end glFrustum

# Function: glLoadIdentity
# Declared: Line 2459 (Source lines: 2459-2462)
# Address: 0x0da78c04 - 0x0da78c10 (Size: 12 bytes, Frame: 0)
.globl glLoadIdentity
.ent glLoadIdentity
glLoadIdentity:
    # Line 2459
    lw	$t9,4784($zero)
    # Line 2461
    jr	$t9
    # Line 2462
    nop
.end glLoadIdentity

# Function: glLoadMatrixf
# Declared: Line 2469 (Source lines: 2469-2470)
# Address: 0x0da78c10 - 0x0da78c1c (Size: 12 bytes, Frame: 0)
.globl glLoadMatrixf
.ent glLoadMatrixf
glLoadMatrixf:
    # Line 2469
    lw	$t9,4788($zero)
    # Line 2470
    jr	$t9
    nop
.end glLoadMatrixf

# Function: glLoadMatrixd
# Declared: Line 2476 (Source lines: 2476-2477)
# Address: 0x0da78c1c - 0x0da78c28 (Size: 12 bytes, Frame: 0)
.globl glLoadMatrixd
.ent glLoadMatrixd
glLoadMatrixd:
    # Line 2476
    lw	$t9,4792($zero)
    # Line 2477
    jr	$t9
    nop
.end glLoadMatrixd

# Function: glMatrixMode
# Declared: Line 2483 (Source lines: 2483-2484)
# Address: 0x0da78c28 - 0x0da78c34 (Size: 12 bytes, Frame: 0)
.globl glMatrixMode
.ent glMatrixMode
glMatrixMode:
    # Line 2483
    lw	$t9,4796($zero)
    # Line 2484
    jr	$t9
    nop
.end glMatrixMode

# Function: glMultMatrixf
# Declared: Line 2490 (Source lines: 2490-2491)
# Address: 0x0da78c34 - 0x0da78c40 (Size: 12 bytes, Frame: 0)
.globl glMultMatrixf
.ent glMultMatrixf
glMultMatrixf:
    # Line 2490
    lw	$t9,4800($zero)
    # Line 2491
    jr	$t9
    nop
.end glMultMatrixf

# Function: glMultMatrixd
# Declared: Line 2497 (Source lines: 2497-2498)
# Address: 0x0da78c40 - 0x0da78c4c (Size: 12 bytes, Frame: 0)
.globl glMultMatrixd
.ent glMultMatrixd
glMultMatrixd:
    # Line 2497
    lw	$t9,4804($zero)
    # Line 2498
    jr	$t9
    nop
.end glMultMatrixd

# Function: glOrtho
# Declared: Line 2504 (Source lines: 2504-2505)
# Address: 0x0da78c4c - 0x0da78c58 (Size: 12 bytes, Frame: 0)
.globl glOrtho
.ent glOrtho
glOrtho:
    # Line 2504
    lw	$t9,4808($zero)
    # Line 2505
    jr	$t9
    nop
.end glOrtho

# Function: glPopMatrix
# Declared: Line 2511 (Source lines: 2511-2514)
# Address: 0x0da78c58 - 0x0da78c64 (Size: 12 bytes, Frame: 0)
.globl glPopMatrix
.ent glPopMatrix
glPopMatrix:
    # Line 2511
    lw	$t9,4812($zero)
    # Line 2513
    jr	$t9
    # Line 2514
    nop
.end glPopMatrix

# Function: glPushMatrix
# Declared: Line 2521 (Source lines: 2521-2524)
# Address: 0x0da78c64 - 0x0da78c70 (Size: 12 bytes, Frame: 0)
.globl glPushMatrix
.ent glPushMatrix
glPushMatrix:
    # Line 2521
    lw	$t9,4816($zero)
    # Line 2523
    jr	$t9
    # Line 2524
    nop
.end glPushMatrix

# Function: glRotated
# Declared: Line 2531 (Source lines: 2531-2532)
# Address: 0x0da78c70 - 0x0da78c7c (Size: 12 bytes, Frame: 0)
.globl glRotated
.ent glRotated
glRotated:
    # Line 2531
    lw	$t9,4820($zero)
    # Line 2532
    jr	$t9
    nop
.end glRotated

# Function: glRotatef
# Declared: Line 2538 (Source lines: 2538-2539)
# Address: 0x0da78c7c - 0x0da78c88 (Size: 12 bytes, Frame: 0)
.globl glRotatef
.ent glRotatef
glRotatef:
    # Line 2538
    lw	$t9,4824($zero)
    # Line 2539
    jr	$t9
    nop
.end glRotatef

# Function: glScaled
# Declared: Line 2545 (Source lines: 2545-2546)
# Address: 0x0da78c88 - 0x0da78c94 (Size: 12 bytes, Frame: 0)
.globl glScaled
.ent glScaled
glScaled:
    # Line 2545
    lw	$t9,4828($zero)
    # Line 2546
    jr	$t9
    nop
.end glScaled

# Function: glScalef
# Declared: Line 2552 (Source lines: 2552-2553)
# Address: 0x0da78c94 - 0x0da78ca0 (Size: 12 bytes, Frame: 0)
.globl glScalef
.ent glScalef
glScalef:
    # Line 2552
    lw	$t9,4832($zero)
    # Line 2553
    jr	$t9
    nop
.end glScalef

# Function: glTranslated
# Declared: Line 2559 (Source lines: 2559-2560)
# Address: 0x0da78ca0 - 0x0da78cac (Size: 12 bytes, Frame: 0)
.globl glTranslated
.ent glTranslated
glTranslated:
    # Line 2559
    lw	$t9,4836($zero)
    # Line 2560
    jr	$t9
    nop
.end glTranslated

# Function: glTranslatef
# Declared: Line 2566 (Source lines: 2566-2567)
# Address: 0x0da78cac - 0x0da78cb8 (Size: 12 bytes, Frame: 0)
.globl glTranslatef
.ent glTranslatef
glTranslatef:
    # Line 2566
    lw	$t9,4840($zero)
    # Line 2567
    jr	$t9
    nop
.end glTranslatef

# Function: glViewport
# Declared: Line 2573 (Source lines: 2573-2574)
# Address: 0x0da78cb8 - 0x0da78cc4 (Size: 12 bytes, Frame: 0)
.globl glViewport
.ent glViewport
glViewport:
    # Line 2573
    lw	$t9,4844($zero)
    # Line 2574
    jr	$t9
    nop
.end glViewport

# Function: glBlendColorEXT
# Declared: Line 2581 (Source lines: 2581-2582)
# Address: 0x0da78cc4 - 0x0da78cd0 (Size: 12 bytes, Frame: 0)
.globl glBlendColorEXT
.ent glBlendColorEXT
glBlendColorEXT:
    # Line 2581
    lw	$t9,4848($zero)
    # Line 2582
    jr	$t9
    nop
.end glBlendColorEXT

# Function: glBlendEquationEXT
# Declared: Line 2589 (Source lines: 2589-2590)
# Address: 0x0da78cd0 - 0x0da78cdc (Size: 12 bytes, Frame: 0)
.globl glBlendEquationEXT
.ent glBlendEquationEXT
glBlendEquationEXT:
    # Line 2589
    lw	$t9,4852($zero)
    # Line 2590
    jr	$t9
    nop
.end glBlendEquationEXT

# Function: glPolygonOffsetEXT
# Declared: Line 2596 (Source lines: 2596-2597)
# Address: 0x0da78cdc - 0x0da78ce8 (Size: 12 bytes, Frame: 0)
.globl glPolygonOffsetEXT
.ent glPolygonOffsetEXT
glPolygonOffsetEXT:
    # Line 2596
    lw	$t9,4856($zero)
    # Line 2597
    jr	$t9
    nop
.end glPolygonOffsetEXT

# Function: glTexSubImage1DEXT
# Declared: Line 2604 (Source lines: 2604-2605)
# Address: 0x0da78ce8 - 0x0da78cf4 (Size: 12 bytes, Frame: 0)
.globl glTexSubImage1DEXT
.ent glTexSubImage1DEXT
glTexSubImage1DEXT:
    # Line 2604
    lw	$t9,4860($zero)
    # Line 2605
    jr	$t9
    nop
.end glTexSubImage1DEXT

# Function: glTexSubImage2DEXT
# Declared: Line 2612 (Source lines: 2612-2613)
# Address: 0x0da78cf4 - 0x0da78d00 (Size: 12 bytes, Frame: 0)
.globl glTexSubImage2DEXT
.ent glTexSubImage2DEXT
glTexSubImage2DEXT:
    # Line 2612
    lw	$t9,4864($zero)
    # Line 2613
    jr	$t9
    nop
.end glTexSubImage2DEXT

# Function: glConvolutionFilter1DEXT
# Declared: Line 2620 (Source lines: 2620-2621)
# Address: 0x0da78d00 - 0x0da78d0c (Size: 12 bytes, Frame: 0)
.globl glConvolutionFilter1DEXT
.ent glConvolutionFilter1DEXT
glConvolutionFilter1DEXT:
    # Line 2620
    lw	$t9,4868($zero)
    # Line 2621
    jr	$t9
    nop
.end glConvolutionFilter1DEXT

# Function: glConvolutionFilter2DEXT
# Declared: Line 2628 (Source lines: 2628-2629)
# Address: 0x0da78d0c - 0x0da78d18 (Size: 12 bytes, Frame: 0)
.globl glConvolutionFilter2DEXT
.ent glConvolutionFilter2DEXT
glConvolutionFilter2DEXT:
    # Line 2628
    lw	$t9,4872($zero)
    # Line 2629
    jr	$t9
    nop
.end glConvolutionFilter2DEXT

# Function: glConvolutionParameterfEXT
# Declared: Line 2636 (Source lines: 2636-2637)
# Address: 0x0da78d18 - 0x0da78d24 (Size: 12 bytes, Frame: 0)
.globl glConvolutionParameterfEXT
.ent glConvolutionParameterfEXT
glConvolutionParameterfEXT:
    # Line 2636
    lw	$t9,4876($zero)
    # Line 2637
    jr	$t9
    nop
.end glConvolutionParameterfEXT

# Function: glConvolutionParameterfvEXT
# Declared: Line 2644 (Source lines: 2644-2645)
# Address: 0x0da78d24 - 0x0da78d30 (Size: 12 bytes, Frame: 0)
.globl glConvolutionParameterfvEXT
.ent glConvolutionParameterfvEXT
glConvolutionParameterfvEXT:
    # Line 2644
    lw	$t9,4880($zero)
    # Line 2645
    jr	$t9
    nop
.end glConvolutionParameterfvEXT

# Function: glConvolutionParameteriEXT
# Declared: Line 2652 (Source lines: 2652-2653)
# Address: 0x0da78d30 - 0x0da78d3c (Size: 12 bytes, Frame: 0)
.globl glConvolutionParameteriEXT
.ent glConvolutionParameteriEXT
glConvolutionParameteriEXT:
    # Line 2652
    lw	$t9,4884($zero)
    # Line 2653
    jr	$t9
    nop
.end glConvolutionParameteriEXT

# Function: glConvolutionParameterivEXT
# Declared: Line 2660 (Source lines: 2660-2661)
# Address: 0x0da78d3c - 0x0da78d48 (Size: 12 bytes, Frame: 0)
.globl glConvolutionParameterivEXT
.ent glConvolutionParameterivEXT
glConvolutionParameterivEXT:
    # Line 2660
    lw	$t9,4888($zero)
    # Line 2661
    jr	$t9
    nop
.end glConvolutionParameterivEXT

# Function: glCopyConvolutionFilter1DEXT
# Declared: Line 2668 (Source lines: 2668-2669)
# Address: 0x0da78d48 - 0x0da78d54 (Size: 12 bytes, Frame: 0)
.globl glCopyConvolutionFilter1DEXT
.ent glCopyConvolutionFilter1DEXT
glCopyConvolutionFilter1DEXT:
    # Line 2668
    lw	$t9,4892($zero)
    # Line 2669
    jr	$t9
    nop
.end glCopyConvolutionFilter1DEXT

# Function: glCopyConvolutionFilter2DEXT
# Declared: Line 2676 (Source lines: 2676-2677)
# Address: 0x0da78d54 - 0x0da78d60 (Size: 12 bytes, Frame: 0)
.globl glCopyConvolutionFilter2DEXT
.ent glCopyConvolutionFilter2DEXT
glCopyConvolutionFilter2DEXT:
    # Line 2676
    lw	$t9,4896($zero)
    # Line 2677
    jr	$t9
    nop
.end glCopyConvolutionFilter2DEXT

# Function: glGetConvolutionFilterEXT
# Declared: Line 2683 (Source lines: 2683-2684)
# Address: 0x0da78d60 - 0x0da78d6c (Size: 12 bytes, Frame: 0)
.globl glGetConvolutionFilterEXT
.ent glGetConvolutionFilterEXT
glGetConvolutionFilterEXT:
    # Line 2683
    lw	$t9,4900($zero)
    # Line 2684
    jr	$t9
    nop
.end glGetConvolutionFilterEXT

# Function: glGetConvolutionParameterfvEXT
# Declared: Line 2690 (Source lines: 2690-2691)
# Address: 0x0da78d6c - 0x0da78d78 (Size: 12 bytes, Frame: 0)
.globl glGetConvolutionParameterfvEXT
.ent glGetConvolutionParameterfvEXT
glGetConvolutionParameterfvEXT:
    # Line 2690
    lw	$t9,4904($zero)
    # Line 2691
    jr	$t9
    nop
.end glGetConvolutionParameterfvEXT

# Function: glGetConvolutionParameterivEXT
# Declared: Line 2697 (Source lines: 2697-2698)
# Address: 0x0da78d78 - 0x0da78d84 (Size: 12 bytes, Frame: 0)
.globl glGetConvolutionParameterivEXT
.ent glGetConvolutionParameterivEXT
glGetConvolutionParameterivEXT:
    # Line 2697
    lw	$t9,4908($zero)
    # Line 2698
    jr	$t9
    nop
.end glGetConvolutionParameterivEXT

# Function: glGetSeparableFilterEXT
# Declared: Line 2704 (Source lines: 2704-2705)
# Address: 0x0da78d84 - 0x0da78d90 (Size: 12 bytes, Frame: 0)
.globl glGetSeparableFilterEXT
.ent glGetSeparableFilterEXT
glGetSeparableFilterEXT:
    # Line 2704
    lw	$t9,4912($zero)
    # Line 2705
    jr	$t9
    nop
.end glGetSeparableFilterEXT

# Function: glSeparableFilter2DEXT
# Declared: Line 2712 (Source lines: 2712-2713)
# Address: 0x0da78d90 - 0x0da78d9c (Size: 12 bytes, Frame: 0)
.globl glSeparableFilter2DEXT
.ent glSeparableFilter2DEXT
glSeparableFilter2DEXT:
    # Line 2712
    lw	$t9,4916($zero)
    # Line 2713
    jr	$t9
    nop
.end glSeparableFilter2DEXT

# Function: glGetHistogramEXT
# Declared: Line 2719 (Source lines: 2719-2720)
# Address: 0x0da78d9c - 0x0da78da8 (Size: 12 bytes, Frame: 0)
.globl glGetHistogramEXT
.ent glGetHistogramEXT
glGetHistogramEXT:
    # Line 2719
    lw	$t9,4920($zero)
    # Line 2720
    jr	$t9
    nop
.end glGetHistogramEXT

# Function: glGetHistogramParameterfvEXT
# Declared: Line 2726 (Source lines: 2726-2727)
# Address: 0x0da78da8 - 0x0da78db4 (Size: 12 bytes, Frame: 0)
.globl glGetHistogramParameterfvEXT
.ent glGetHistogramParameterfvEXT
glGetHistogramParameterfvEXT:
    # Line 2726
    lw	$t9,4924($zero)
    # Line 2727
    jr	$t9
    nop
.end glGetHistogramParameterfvEXT

# Function: glGetHistogramParameterivEXT
# Declared: Line 2733 (Source lines: 2733-2734)
# Address: 0x0da78db4 - 0x0da78dc0 (Size: 12 bytes, Frame: 0)
.globl glGetHistogramParameterivEXT
.ent glGetHistogramParameterivEXT
glGetHistogramParameterivEXT:
    # Line 2733
    lw	$t9,4928($zero)
    # Line 2734
    jr	$t9
    nop
.end glGetHistogramParameterivEXT

# Function: glGetMinmaxEXT
# Declared: Line 2740 (Source lines: 2740-2741)
# Address: 0x0da78dc0 - 0x0da78dcc (Size: 12 bytes, Frame: 0)
.globl glGetMinmaxEXT
.ent glGetMinmaxEXT
glGetMinmaxEXT:
    # Line 2740
    lw	$t9,4932($zero)
    # Line 2741
    jr	$t9
    nop
.end glGetMinmaxEXT

# Function: glGetMinmaxParameterfvEXT
# Declared: Line 2747 (Source lines: 2747-2748)
# Address: 0x0da78dcc - 0x0da78dd8 (Size: 12 bytes, Frame: 0)
.globl glGetMinmaxParameterfvEXT
.ent glGetMinmaxParameterfvEXT
glGetMinmaxParameterfvEXT:
    # Line 2747
    lw	$t9,4936($zero)
    # Line 2748
    jr	$t9
    nop
.end glGetMinmaxParameterfvEXT

# Function: glGetMinmaxParameterivEXT
# Declared: Line 2754 (Source lines: 2754-2755)
# Address: 0x0da78dd8 - 0x0da78de4 (Size: 12 bytes, Frame: 0)
.globl glGetMinmaxParameterivEXT
.ent glGetMinmaxParameterivEXT
glGetMinmaxParameterivEXT:
    # Line 2754
    lw	$t9,4940($zero)
    # Line 2755
    jr	$t9
    nop
.end glGetMinmaxParameterivEXT

# Function: glHistogramEXT
# Declared: Line 2762 (Source lines: 2762-2763)
# Address: 0x0da78de4 - 0x0da78df0 (Size: 12 bytes, Frame: 0)
.globl glHistogramEXT
.ent glHistogramEXT
glHistogramEXT:
    # Line 2762
    lw	$t9,4944($zero)
    # Line 2763
    jr	$t9
    nop
.end glHistogramEXT

# Function: glMinmaxEXT
# Declared: Line 2770 (Source lines: 2770-2771)
# Address: 0x0da78df0 - 0x0da78dfc (Size: 12 bytes, Frame: 0)
.globl glMinmaxEXT
.ent glMinmaxEXT
glMinmaxEXT:
    # Line 2770
    lw	$t9,4948($zero)
    # Line 2771
    jr	$t9
    nop
.end glMinmaxEXT

# Function: glResetHistogramEXT
# Declared: Line 2778 (Source lines: 2778-2779)
# Address: 0x0da78dfc - 0x0da78e08 (Size: 12 bytes, Frame: 0)
.globl glResetHistogramEXT
.ent glResetHistogramEXT
glResetHistogramEXT:
    # Line 2778
    lw	$t9,4952($zero)
    # Line 2779
    jr	$t9
    nop
.end glResetHistogramEXT

# Function: glResetMinmaxEXT
# Declared: Line 2786 (Source lines: 2786-2787)
# Address: 0x0da78e08 - 0x0da78e14 (Size: 12 bytes, Frame: 0)
.globl glResetMinmaxEXT
.ent glResetMinmaxEXT
glResetMinmaxEXT:
    # Line 2786
    lw	$t9,4956($zero)
    # Line 2787
    jr	$t9
    nop
.end glResetMinmaxEXT

# Function: glTexImage3DEXT
# Declared: Line 2794 (Source lines: 2794-2795)
# Address: 0x0da78e14 - 0x0da78e20 (Size: 12 bytes, Frame: 0)
.globl glTexImage3DEXT
.ent glTexImage3DEXT
glTexImage3DEXT:
    # Line 2794
    lw	$t9,4960($zero)
    # Line 2795
    jr	$t9
    nop
.end glTexImage3DEXT

# Function: glTexSubImage3DEXT
# Declared: Line 2802 (Source lines: 2802-2803)
# Address: 0x0da78e20 - 0x0da78e2c (Size: 12 bytes, Frame: 0)
.globl glTexSubImage3DEXT
.ent glTexSubImage3DEXT
glTexSubImage3DEXT:
    # Line 2802
    lw	$t9,4964($zero)
    # Line 2803
    jr	$t9
    nop
.end glTexSubImage3DEXT

# Function: glArrayElementEXT
# Declared: Line 2810 (Source lines: 2810-2811)
# Address: 0x0da78e2c - 0x0da78e38 (Size: 12 bytes, Frame: 0)
.globl glArrayElementEXT
.ent glArrayElementEXT
glArrayElementEXT:
    # Line 2810
    lw	$t9,4968($zero)
    # Line 2811
    jr	$t9
    nop
.end glArrayElementEXT

# Function: glColorPointerEXT
# Declared: Line 2817 (Source lines: 2817-2818)
# Address: 0x0da78e38 - 0x0da78e44 (Size: 12 bytes, Frame: 0)
.globl glColorPointerEXT
.ent glColorPointerEXT
glColorPointerEXT:
    # Line 2817
    lw	$t9,4972($zero)
    # Line 2818
    jr	$t9
    nop
.end glColorPointerEXT

# Function: glDrawArraysEXT
# Declared: Line 2824 (Source lines: 2824-2825)
# Address: 0x0da78e44 - 0x0da78e50 (Size: 12 bytes, Frame: 0)
.globl glDrawArraysEXT
.ent glDrawArraysEXT
glDrawArraysEXT:
    # Line 2824
    lw	$t9,4976($zero)
    # Line 2825
    jr	$t9
    nop
.end glDrawArraysEXT

# Function: glEdgeFlagPointerEXT
# Declared: Line 2831 (Source lines: 2831-2832)
# Address: 0x0da78e50 - 0x0da78e5c (Size: 12 bytes, Frame: 0)
.globl glEdgeFlagPointerEXT
.ent glEdgeFlagPointerEXT
glEdgeFlagPointerEXT:
    # Line 2831
    lw	$t9,4980($zero)
    # Line 2832
    jr	$t9
    nop
.end glEdgeFlagPointerEXT

# Function: glGetPointervEXT
# Declared: Line 2839 (Source lines: 2839-2840)
# Address: 0x0da78e5c - 0x0da78e68 (Size: 12 bytes, Frame: 0)
.globl glGetPointervEXT
.ent glGetPointervEXT
glGetPointervEXT:
    # Line 2839
    lw	$t9,4984($zero)
    # Line 2840
    jr	$t9
    nop
.end glGetPointervEXT

# Function: glIndexPointerEXT
# Declared: Line 2846 (Source lines: 2846-2847)
# Address: 0x0da78e68 - 0x0da78e74 (Size: 12 bytes, Frame: 0)
.globl glIndexPointerEXT
.ent glIndexPointerEXT
glIndexPointerEXT:
    # Line 2846
    lw	$t9,4988($zero)
    # Line 2847
    jr	$t9
    nop
.end glIndexPointerEXT

# Function: glNormalPointerEXT
# Declared: Line 2853 (Source lines: 2853-2854)
# Address: 0x0da78e74 - 0x0da78e80 (Size: 12 bytes, Frame: 0)
.globl glNormalPointerEXT
.ent glNormalPointerEXT
glNormalPointerEXT:
    # Line 2853
    lw	$t9,4992($zero)
    # Line 2854
    jr	$t9
    nop
.end glNormalPointerEXT

# Function: glTexCoordPointerEXT
# Declared: Line 2860 (Source lines: 2860-2861)
# Address: 0x0da78e80 - 0x0da78e8c (Size: 12 bytes, Frame: 0)
.globl glTexCoordPointerEXT
.ent glTexCoordPointerEXT
glTexCoordPointerEXT:
    # Line 2860
    lw	$t9,4996($zero)
    # Line 2861
    jr	$t9
    nop
.end glTexCoordPointerEXT

# Function: glVertexPointerEXT
# Declared: Line 2867 (Source lines: 2867-2868)
# Address: 0x0da78e8c - 0x0da78e98 (Size: 12 bytes, Frame: 0)
.globl glVertexPointerEXT
.ent glVertexPointerEXT
glVertexPointerEXT:
    # Line 2867
    lw	$t9,5000($zero)
    # Line 2868
    jr	$t9
    nop
.end glVertexPointerEXT

# Function: glAreTexturesResidentEXT
# Declared: Line 2874 (Source lines: 2874-2875)
# Address: 0x0da78e98 - 0x0da78ea4 (Size: 12 bytes, Frame: 0)
.globl glAreTexturesResidentEXT
.ent glAreTexturesResidentEXT
glAreTexturesResidentEXT:
    # Line 2874
    lw	$t9,5004($zero)
    # Line 2875
    jr	$t9
    nop
.end glAreTexturesResidentEXT

# Function: glBindTextureEXT
# Declared: Line 2882 (Source lines: 2882-2883)
# Address: 0x0da78ea4 - 0x0da78eb0 (Size: 12 bytes, Frame: 0)
.globl glBindTextureEXT
.ent glBindTextureEXT
glBindTextureEXT:
    # Line 2882
    lw	$t9,5008($zero)
    # Line 2883
    jr	$t9
    nop
.end glBindTextureEXT

# Function: glDeleteTexturesEXT
# Declared: Line 2889 (Source lines: 2889-2890)
# Address: 0x0da78eb0 - 0x0da78ebc (Size: 12 bytes, Frame: 0)
.globl glDeleteTexturesEXT
.ent glDeleteTexturesEXT
glDeleteTexturesEXT:
    # Line 2889
    lw	$t9,5012($zero)
    # Line 2890
    jr	$t9
    nop
.end glDeleteTexturesEXT

# Function: glGenTexturesEXT
# Declared: Line 2896 (Source lines: 2896-2897)
# Address: 0x0da78ebc - 0x0da78ec8 (Size: 12 bytes, Frame: 0)
.globl glGenTexturesEXT
.ent glGenTexturesEXT
glGenTexturesEXT:
    # Line 2896
    lw	$t9,5016($zero)
    # Line 2897
    jr	$t9
    nop
.end glGenTexturesEXT

# Function: glIsTextureEXT
# Declared: Line 2903 (Source lines: 2903-2904)
# Address: 0x0da78ec8 - 0x0da78ed4 (Size: 12 bytes, Frame: 0)
.globl glIsTextureEXT
.ent glIsTextureEXT
glIsTextureEXT:
    # Line 2903
    lw	$t9,5020($zero)
    # Line 2904
    jr	$t9
    nop
.end glIsTextureEXT

# Function: glPrioritizeTexturesEXT
# Declared: Line 2911 (Source lines: 2911-2912)
# Address: 0x0da78ed4 - 0x0da78ee0 (Size: 12 bytes, Frame: 0)
.globl glPrioritizeTexturesEXT
.ent glPrioritizeTexturesEXT
glPrioritizeTexturesEXT:
    # Line 2911
    lw	$t9,5024($zero)
    # Line 2912
    jr	$t9
    nop
.end glPrioritizeTexturesEXT

# Function: glCopyTexImage1DEXT
# Declared: Line 2919 (Source lines: 2919-2920)
# Address: 0x0da78ee0 - 0x0da78eec (Size: 12 bytes, Frame: 0)
.globl glCopyTexImage1DEXT
.ent glCopyTexImage1DEXT
glCopyTexImage1DEXT:
    # Line 2919
    lw	$t9,5028($zero)
    # Line 2920
    jr	$t9
    nop
.end glCopyTexImage1DEXT

# Function: glCopyTexImage2DEXT
# Declared: Line 2927 (Source lines: 2927-2928)
# Address: 0x0da78eec - 0x0da78ef8 (Size: 12 bytes, Frame: 0)
.globl glCopyTexImage2DEXT
.ent glCopyTexImage2DEXT
glCopyTexImage2DEXT:
    # Line 2927
    lw	$t9,5032($zero)
    # Line 2928
    jr	$t9
    nop
.end glCopyTexImage2DEXT

# Function: glCopyTexSubImage1DEXT
# Declared: Line 2935 (Source lines: 2935-2936)
# Address: 0x0da78ef8 - 0x0da78f04 (Size: 12 bytes, Frame: 0)
.globl glCopyTexSubImage1DEXT
.ent glCopyTexSubImage1DEXT
glCopyTexSubImage1DEXT:
    # Line 2935
    lw	$t9,5036($zero)
    # Line 2936
    jr	$t9
    nop
.end glCopyTexSubImage1DEXT

# Function: glCopyTexSubImage2DEXT
# Declared: Line 2943 (Source lines: 2943-2944)
# Address: 0x0da78f04 - 0x0da78f10 (Size: 12 bytes, Frame: 0)
.globl glCopyTexSubImage2DEXT
.ent glCopyTexSubImage2DEXT
glCopyTexSubImage2DEXT:
    # Line 2943
    lw	$t9,5040($zero)
    # Line 2944
    jr	$t9
    nop
.end glCopyTexSubImage2DEXT

# Function: glCopyTexSubImage3DEXT
# Declared: Line 2951 (Source lines: 2951-2952)
# Address: 0x0da78f10 - 0x0da78f1c (Size: 12 bytes, Frame: 0)
.globl glCopyTexSubImage3DEXT
.ent glCopyTexSubImage3DEXT
glCopyTexSubImage3DEXT:
    # Line 2951
    lw	$t9,5044($zero)
    # Line 2952
    jr	$t9
    nop
.end glCopyTexSubImage3DEXT

# Function: glColorPointer
# Declared: Line 2958 (Source lines: 2958-2959)
# Address: 0x0da78f1c - 0x0da78f28 (Size: 12 bytes, Frame: 0)
.globl glColorPointer
.ent glColorPointer
glColorPointer:
    # Line 2958
    lw	$t9,5048($zero)
    # Line 2959
    jr	$t9
    nop
.end glColorPointer

# Function: glDisableClientState
# Declared: Line 2965 (Source lines: 2965-2966)
# Address: 0x0da78f28 - 0x0da78f34 (Size: 12 bytes, Frame: 0)
.globl glDisableClientState
.ent glDisableClientState
glDisableClientState:
    # Line 2965
    lw	$t9,5052($zero)
    # Line 2966
    jr	$t9
    nop
.end glDisableClientState

# Function: glDrawElements
# Declared: Line 2972 (Source lines: 2972-2973)
# Address: 0x0da78f34 - 0x0da78f40 (Size: 12 bytes, Frame: 0)
.globl glDrawElements
.ent glDrawElements
glDrawElements:
    # Line 2972
    lw	$t9,5056($zero)
    # Line 2973
    jr	$t9
    nop
.end glDrawElements

# Function: glEdgeFlagPointer
# Declared: Line 2979 (Source lines: 2979-2980)
# Address: 0x0da78f40 - 0x0da78f4c (Size: 12 bytes, Frame: 0)
.globl glEdgeFlagPointer
.ent glEdgeFlagPointer
glEdgeFlagPointer:
    # Line 2979
    lw	$t9,5060($zero)
    # Line 2980
    jr	$t9
    nop
.end glEdgeFlagPointer

# Function: glEnableClientState
# Declared: Line 2986 (Source lines: 2986-2987)
# Address: 0x0da78f4c - 0x0da78f58 (Size: 12 bytes, Frame: 0)
.globl glEnableClientState
.ent glEnableClientState
glEnableClientState:
    # Line 2986
    lw	$t9,5064($zero)
    # Line 2987
    jr	$t9
    nop
.end glEnableClientState

# Function: glIndexPointer
# Declared: Line 2993 (Source lines: 2993-2994)
# Address: 0x0da78f58 - 0x0da78f64 (Size: 12 bytes, Frame: 0)
.globl glIndexPointer
.ent glIndexPointer
glIndexPointer:
    # Line 2993
    lw	$t9,5068($zero)
    # Line 2994
    jr	$t9
    nop
.end glIndexPointer

# Function: glInterleavedArrays
# Declared: Line 3000 (Source lines: 3000-3001)
# Address: 0x0da78f64 - 0x0da78f70 (Size: 12 bytes, Frame: 0)
.globl glInterleavedArrays
.ent glInterleavedArrays
glInterleavedArrays:
    # Line 3000
    lw	$t9,5072($zero)
    # Line 3001
    jr	$t9
    nop
.end glInterleavedArrays

# Function: glNormalPointer
# Declared: Line 3007 (Source lines: 3007-3008)
# Address: 0x0da78f70 - 0x0da78f7c (Size: 12 bytes, Frame: 0)
.globl glNormalPointer
.ent glNormalPointer
glNormalPointer:
    # Line 3007
    lw	$t9,5076($zero)
    # Line 3008
    jr	$t9
    nop
.end glNormalPointer

# Function: glTexCoordPointer
# Declared: Line 3014 (Source lines: 3014-3015)
# Address: 0x0da78f7c - 0x0da78f88 (Size: 12 bytes, Frame: 0)
.globl glTexCoordPointer
.ent glTexCoordPointer
glTexCoordPointer:
    # Line 3014
    lw	$t9,5080($zero)
    # Line 3015
    jr	$t9
    nop
.end glTexCoordPointer

# Function: glVertexPointer
# Declared: Line 3021 (Source lines: 3021-3022)
# Address: 0x0da78f88 - 0x0da78f94 (Size: 12 bytes, Frame: 0)
.globl glVertexPointer
.ent glVertexPointer
glVertexPointer:
    # Line 3021
    lw	$t9,5084($zero)
    # Line 3022
    jr	$t9
    nop
.end glVertexPointer

# Function: glPolygonOffset
# Declared: Line 3028 (Source lines: 3028-3029)
# Address: 0x0da78f94 - 0x0da78fa0 (Size: 12 bytes, Frame: 0)
.globl glPolygonOffset
.ent glPolygonOffset
glPolygonOffset:
    # Line 3028
    lw	$t9,5088($zero)
    # Line 3029
    jr	$t9
    nop
.end glPolygonOffset

# Function: glIndexub
# Declared: Line 3035 (Source lines: 3035-3036)
# Address: 0x0da78fa0 - 0x0da78fac (Size: 12 bytes, Frame: 0)
.globl glIndexub
.ent glIndexub
glIndexub:
    # Line 3035
    lw	$t9,5752($zero)
    # Line 3036
    jr	$t9
    nop
.end glIndexub

# Function: glIndexubv
# Declared: Line 3043 (Source lines: 3043-3047)
# Address: 0x0da78fac - 0x0da78fbc (Size: 16 bytes, Frame: 0)
.globl glIndexubv
.ent glIndexubv
glIndexubv:
    # Line 3043
    lw	$t9,5756($zero)
    # Line 3045
    lbu	$v0,0($a0)
    # Line 3046
    jr	$t9
    # Line 3047
    nop
.end glIndexubv

# Function: glPopClientAttrib
# Declared: Line 3054 (Source lines: 3054-3055)
# Address: 0x0da78fbc - 0x0da78fc8 (Size: 12 bytes, Frame: 0)
.globl glPopClientAttrib
.ent glPopClientAttrib
glPopClientAttrib:
    # Line 3054
    lw	$t9,5092($zero)
    # Line 3055
    jr	$t9
    nop
.end glPopClientAttrib

# Function: glPushClientAttrib
# Declared: Line 3061 (Source lines: 3061-3062)
# Address: 0x0da78fc8 - 0x0da78fd4 (Size: 12 bytes, Frame: 0)
.globl glPushClientAttrib
.ent glPushClientAttrib
glPushClientAttrib:
    # Line 3061
    lw	$t9,5096($zero)
    # Line 3062
    jr	$t9
    nop
.end glPushClientAttrib

# Function: glSampleMaskSGIS
# Declared: Line 3068 (Source lines: 3068-3069)
# Address: 0x0da78fd4 - 0x0da78fe0 (Size: 12 bytes, Frame: 0)
.globl glSampleMaskSGIS
.ent glSampleMaskSGIS
glSampleMaskSGIS:
    # Line 3068
    lw	$t9,5100($zero)
    # Line 3069
    jr	$t9
    nop
.end glSampleMaskSGIS

# Function: glSamplePatternSGIS
# Declared: Line 3075 (Source lines: 3075-3076)
# Address: 0x0da78fe0 - 0x0da78fec (Size: 12 bytes, Frame: 0)
.globl glSamplePatternSGIS
.ent glSamplePatternSGIS
glSamplePatternSGIS:
    # Line 3075
    lw	$t9,5104($zero)
    # Line 3076
    jr	$t9
    nop
.end glSamplePatternSGIS

# Function: glTagSampleBufferSGIX
# Declared: Line 3082 (Source lines: 3082-3083)
# Address: 0x0da78fec - 0x0da78ff8 (Size: 12 bytes, Frame: 0)
.globl glTagSampleBufferSGIX
.ent glTagSampleBufferSGIX
glTagSampleBufferSGIX:
    # Line 3082
    lw	$t9,5108($zero)
    # Line 3083
    jr	$t9
    nop
.end glTagSampleBufferSGIX

# Function: glDetailTexFuncSGIS
# Declared: Line 3089 (Source lines: 3089-3090)
# Address: 0x0da78ff8 - 0x0da79004 (Size: 12 bytes, Frame: 0)
.globl glDetailTexFuncSGIS
.ent glDetailTexFuncSGIS
glDetailTexFuncSGIS:
    # Line 3089
    lw	$t9,5112($zero)
    # Line 3090
    jr	$t9
    nop
.end glDetailTexFuncSGIS

# Function: glGetDetailTexFuncSGIS
# Declared: Line 3096 (Source lines: 3096-3097)
# Address: 0x0da79004 - 0x0da79010 (Size: 12 bytes, Frame: 0)
.globl glGetDetailTexFuncSGIS
.ent glGetDetailTexFuncSGIS
glGetDetailTexFuncSGIS:
    # Line 3096
    lw	$t9,5116($zero)
    # Line 3097
    jr	$t9
    nop
.end glGetDetailTexFuncSGIS

# Function: glSharpenTexFuncSGIS
# Declared: Line 3103 (Source lines: 3103-3104)
# Address: 0x0da79010 - 0x0da7901c (Size: 12 bytes, Frame: 0)
.globl glSharpenTexFuncSGIS
.ent glSharpenTexFuncSGIS
glSharpenTexFuncSGIS:
    # Line 3103
    lw	$t9,5120($zero)
    # Line 3104
    jr	$t9
    nop
.end glSharpenTexFuncSGIS

# Function: glGetSharpenTexFuncSGIS
# Declared: Line 3110 (Source lines: 3110-3111)
# Address: 0x0da7901c - 0x0da79028 (Size: 12 bytes, Frame: 0)
.globl glGetSharpenTexFuncSGIS
.ent glGetSharpenTexFuncSGIS
glGetSharpenTexFuncSGIS:
    # Line 3110
    lw	$t9,5124($zero)
    # Line 3111
    jr	$t9
    nop
.end glGetSharpenTexFuncSGIS

# Function: glColorTableSGI
# Declared: Line 3118 (Source lines: 3118-3119)
# Address: 0x0da79028 - 0x0da79034 (Size: 12 bytes, Frame: 0)
.globl glColorTableSGI
.ent glColorTableSGI
glColorTableSGI:
    # Line 3118
    lw	$t9,5128($zero)
    # Line 3119
    jr	$t9
    nop
.end glColorTableSGI

# Function: glColorTableParameterfvSGI
# Declared: Line 3126 (Source lines: 3126-3127)
# Address: 0x0da79034 - 0x0da79040 (Size: 12 bytes, Frame: 0)
.globl glColorTableParameterfvSGI
.ent glColorTableParameterfvSGI
glColorTableParameterfvSGI:
    # Line 3126
    lw	$t9,5132($zero)
    # Line 3127
    jr	$t9
    nop
.end glColorTableParameterfvSGI

# Function: glColorTableParameterivSGI
# Declared: Line 3134 (Source lines: 3134-3135)
# Address: 0x0da79040 - 0x0da7904c (Size: 12 bytes, Frame: 0)
.globl glColorTableParameterivSGI
.ent glColorTableParameterivSGI
glColorTableParameterivSGI:
    # Line 3134
    lw	$t9,5136($zero)
    # Line 3135
    jr	$t9
    nop
.end glColorTableParameterivSGI

# Function: glCopyColorTableSGI
# Declared: Line 3142 (Source lines: 3142-3143)
# Address: 0x0da7904c - 0x0da79058 (Size: 12 bytes, Frame: 0)
.globl glCopyColorTableSGI
.ent glCopyColorTableSGI
glCopyColorTableSGI:
    # Line 3142
    lw	$t9,5140($zero)
    # Line 3143
    jr	$t9
    nop
.end glCopyColorTableSGI

# Function: glGetColorTableSGI
# Declared: Line 3149 (Source lines: 3149-3150)
# Address: 0x0da79058 - 0x0da79064 (Size: 12 bytes, Frame: 0)
.globl glGetColorTableSGI
.ent glGetColorTableSGI
glGetColorTableSGI:
    # Line 3149
    lw	$t9,5144($zero)
    # Line 3150
    jr	$t9
    nop
.end glGetColorTableSGI

# Function: glGetColorTableParameterfvSGI
# Declared: Line 3156 (Source lines: 3156-3157)
# Address: 0x0da79064 - 0x0da79070 (Size: 12 bytes, Frame: 0)
.globl glGetColorTableParameterfvSGI
.ent glGetColorTableParameterfvSGI
glGetColorTableParameterfvSGI:
    # Line 3156
    lw	$t9,5148($zero)
    # Line 3157
    jr	$t9
    nop
.end glGetColorTableParameterfvSGI

# Function: glGetColorTableParameterivSGI
# Declared: Line 3163 (Source lines: 3163-3164)
# Address: 0x0da79070 - 0x0da7907c (Size: 12 bytes, Frame: 0)
.globl glGetColorTableParameterivSGI
.ent glGetColorTableParameterivSGI
glGetColorTableParameterivSGI:
    # Line 3163
    lw	$t9,5152($zero)
    # Line 3164
    jr	$t9
    nop
.end glGetColorTableParameterivSGI

# Function: glTexImage4DSGIS
# Declared: Line 3170 (Source lines: 3170-3171)
# Address: 0x0da7907c - 0x0da79088 (Size: 12 bytes, Frame: 0)
.globl glTexImage4DSGIS
.ent glTexImage4DSGIS
glTexImage4DSGIS:
    # Line 3170
    lw	$t9,5156($zero)
    # Line 3171
    jr	$t9
    nop
.end glTexImage4DSGIS

# Function: glTexSubImage4DSGIS
# Declared: Line 3177 (Source lines: 3177-3178)
# Address: 0x0da79088 - 0x0da79094 (Size: 12 bytes, Frame: 0)
.globl glTexSubImage4DSGIS
.ent glTexSubImage4DSGIS
glTexSubImage4DSGIS:
    # Line 3177
    lw	$t9,5160($zero)
    # Line 3178
    jr	$t9
    nop
.end glTexSubImage4DSGIS

# Function: glPixelTexGenSGIX
# Declared: Line 3184 (Source lines: 3184-3185)
# Address: 0x0da79094 - 0x0da790a0 (Size: 12 bytes, Frame: 0)
.globl glPixelTexGenSGIX
.ent glPixelTexGenSGIX
glPixelTexGenSGIX:
    # Line 3184
    lw	$t9,5164($zero)
    # Line 3185
    jr	$t9
    nop
.end glPixelTexGenSGIX

# Function: glSpriteParameterfSGIX
# Declared: Line 3191 (Source lines: 3191-3192)
# Address: 0x0da790a0 - 0x0da790ac (Size: 12 bytes, Frame: 0)
.globl glSpriteParameterfSGIX
.ent glSpriteParameterfSGIX
glSpriteParameterfSGIX:
    # Line 3191
    lw	$t9,5168($zero)
    # Line 3192
    jr	$t9
    nop
.end glSpriteParameterfSGIX

# Function: glSpriteParameterfvSGIX
# Declared: Line 3198 (Source lines: 3198-3199)
# Address: 0x0da790ac - 0x0da790b8 (Size: 12 bytes, Frame: 0)
.globl glSpriteParameterfvSGIX
.ent glSpriteParameterfvSGIX
glSpriteParameterfvSGIX:
    # Line 3198
    lw	$t9,5172($zero)
    # Line 3199
    jr	$t9
    nop
.end glSpriteParameterfvSGIX

# Function: glSpriteParameteriSGIX
# Declared: Line 3205 (Source lines: 3205-3206)
# Address: 0x0da790b8 - 0x0da790c4 (Size: 12 bytes, Frame: 0)
.globl glSpriteParameteriSGIX
.ent glSpriteParameteriSGIX
glSpriteParameteriSGIX:
    # Line 3205
    lw	$t9,5176($zero)
    # Line 3206
    jr	$t9
    nop
.end glSpriteParameteriSGIX

# Function: glSpriteParameterivSGIX
# Declared: Line 3212 (Source lines: 3212-3213)
# Address: 0x0da790c4 - 0x0da790d0 (Size: 12 bytes, Frame: 0)
.globl glSpriteParameterivSGIX
.ent glSpriteParameterivSGIX
glSpriteParameterivSGIX:
    # Line 3212
    lw	$t9,5180($zero)
    # Line 3213
    jr	$t9
    nop
.end glSpriteParameterivSGIX

# Function: glGetTexFilterFuncSGIS
# Declared: Line 3219 (Source lines: 3219-3220)
# Address: 0x0da790d0 - 0x0da790dc (Size: 12 bytes, Frame: 0)
.globl glGetTexFilterFuncSGIS
.ent glGetTexFilterFuncSGIS
glGetTexFilterFuncSGIS:
    # Line 3219
    lw	$t9,5184($zero)
    # Line 3220
    jr	$t9
    nop
.end glGetTexFilterFuncSGIS

# Function: glTexFilterFuncSGIS
# Declared: Line 3226 (Source lines: 3226-3227)
# Address: 0x0da790dc - 0x0da790e8 (Size: 12 bytes, Frame: 0)
.globl glTexFilterFuncSGIS
.ent glTexFilterFuncSGIS
glTexFilterFuncSGIS:
    # Line 3226
    lw	$t9,5188($zero)
    # Line 3227
    jr	$t9
    nop
.end glTexFilterFuncSGIS

# Function: glPointParameterfSGIS
# Declared: Line 3234 (Source lines: 3234-3235)
# Address: 0x0da790e8 - 0x0da790f4 (Size: 12 bytes, Frame: 0)
.globl glPointParameterfSGIS
.ent glPointParameterfSGIS
glPointParameterfSGIS:
    # Line 3234
    lw	$t9,5192($zero)
    # Line 3235
    jr	$t9
    nop
.end glPointParameterfSGIS

# Function: glPointParameterfvSGIS
# Declared: Line 3242 (Source lines: 3242-3243)
# Address: 0x0da790f4 - 0x0da79100 (Size: 12 bytes, Frame: 0)
.globl glPointParameterfvSGIS
.ent glPointParameterfvSGIS
glPointParameterfvSGIS:
    # Line 3242
    lw	$t9,5196($zero)
    # Line 3243
    jr	$t9
    nop
.end glPointParameterfvSGIS

# Function: glFogFuncSGIS
# Declared: Line 3249 (Source lines: 3249-3250)
# Address: 0x0da79100 - 0x0da7910c (Size: 12 bytes, Frame: 0)
.globl glFogFuncSGIS
.ent glFogFuncSGIS
glFogFuncSGIS:
    # Line 3249
    lw	$t9,5200($zero)
    # Line 3250
    jr	$t9
    nop
.end glFogFuncSGIS

# Function: glGetInstrumentsSGIX
# Declared: Line 3256 (Source lines: 3256-3257)
# Address: 0x0da7910c - 0x0da79118 (Size: 12 bytes, Frame: 0)
.globl glGetInstrumentsSGIX
.ent glGetInstrumentsSGIX
glGetInstrumentsSGIX:
    # Line 3256
    lw	$t9,5204($zero)
    # Line 3257
    jr	$t9
    nop
.end glGetInstrumentsSGIX

# Function: glInstrumentsBufferSGIX
# Declared: Line 3264 (Source lines: 3264-3265)
# Address: 0x0da79118 - 0x0da79124 (Size: 12 bytes, Frame: 0)
.globl glInstrumentsBufferSGIX
.ent glInstrumentsBufferSGIX
glInstrumentsBufferSGIX:
    # Line 3264
    lw	$t9,5208($zero)
    # Line 3265
    jr	$t9
    nop
.end glInstrumentsBufferSGIX

# Function: glPollInstrumentsSGIX
# Declared: Line 3271 (Source lines: 3271-3272)
# Address: 0x0da79124 - 0x0da79130 (Size: 12 bytes, Frame: 0)
.globl glPollInstrumentsSGIX
.ent glPollInstrumentsSGIX
glPollInstrumentsSGIX:
    # Line 3271
    lw	$t9,5212($zero)
    # Line 3272
    jr	$t9
    nop
.end glPollInstrumentsSGIX

# Function: glReadInstrumentsSGIX
# Declared: Line 3278 (Source lines: 3278-3279)
# Address: 0x0da79130 - 0x0da7913c (Size: 12 bytes, Frame: 0)
.globl glReadInstrumentsSGIX
.ent glReadInstrumentsSGIX
glReadInstrumentsSGIX:
    # Line 3278
    lw	$t9,5216($zero)
    # Line 3279
    jr	$t9
    nop
.end glReadInstrumentsSGIX

# Function: glStartInstrumentsSGIX
# Declared: Line 3285 (Source lines: 3285-3288)
# Address: 0x0da7913c - 0x0da79148 (Size: 12 bytes, Frame: 0)
.globl glStartInstrumentsSGIX
.ent glStartInstrumentsSGIX
glStartInstrumentsSGIX:
    # Line 3285
    lw	$t9,5220($zero)
    # Line 3287
    jr	$t9
    # Line 3288
    nop
.end glStartInstrumentsSGIX

# Function: glStopInstrumentsSGIX
# Declared: Line 3295 (Source lines: 3295-3296)
# Address: 0x0da79148 - 0x0da79154 (Size: 12 bytes, Frame: 0)
.globl glStopInstrumentsSGIX
.ent glStopInstrumentsSGIX
glStopInstrumentsSGIX:
    # Line 3295
    lw	$t9,5224($zero)
    # Line 3296
    jr	$t9
    nop
.end glStopInstrumentsSGIX

# Function: glFlushRasterSGIX
# Declared: Line 3302 (Source lines: 3302-3305)
# Address: 0x0da79154 - 0x0da79160 (Size: 12 bytes, Frame: 0)
.globl glFlushRasterSGIX
.ent glFlushRasterSGIX
glFlushRasterSGIX:
    # Line 3302
    lw	$t9,5228($zero)
    # Line 3304
    jr	$t9
    # Line 3305
    nop
.end glFlushRasterSGIX

# Function: glReferencePlaneSGIX
# Declared: Line 3312 (Source lines: 3312-3313)
# Address: 0x0da79160 - 0x0da7916c (Size: 12 bytes, Frame: 0)
.globl glReferencePlaneSGIX
.ent glReferencePlaneSGIX
glReferencePlaneSGIX:
    # Line 3312
    lw	$t9,5232($zero)
    # Line 3313
    jr	$t9
    nop
.end glReferencePlaneSGIX

# Function: glFrameZoomSGIX
# Declared: Line 3319 (Source lines: 3319-3320)
# Address: 0x0da7916c - 0x0da79178 (Size: 12 bytes, Frame: 0)
.globl glFrameZoomSGIX
.ent glFrameZoomSGIX
glFrameZoomSGIX:
    # Line 3319
    lw	$t9,5236($zero)
    # Line 3320
    jr	$t9
    nop
.end glFrameZoomSGIX

# Function: glIglooInterfaceSGIX
# Declared: Line 3326 (Source lines: 3326-3327)
# Address: 0x0da79178 - 0x0da79184 (Size: 12 bytes, Frame: 0)
.globl glIglooInterfaceSGIX
.ent glIglooInterfaceSGIX
glIglooInterfaceSGIX:
    # Line 3326
    lw	$t9,5240($zero)
    # Line 3327
    jr	$t9
    nop
.end glIglooInterfaceSGIX

# Function: glDeformationMap3dSGIX
# Declared: Line 3333 (Source lines: 3333-3334)
# Address: 0x0da79184 - 0x0da79190 (Size: 12 bytes, Frame: 0)
.globl glDeformationMap3dSGIX
.ent glDeformationMap3dSGIX
glDeformationMap3dSGIX:
    # Line 3333
    lw	$t9,5244($zero)
    # Line 3334
    jr	$t9
    nop
.end glDeformationMap3dSGIX

# Function: glDeformationMap3fSGIX
# Declared: Line 3340 (Source lines: 3340-3341)
# Address: 0x0da79190 - 0x0da7919c (Size: 12 bytes, Frame: 0)
.globl glDeformationMap3fSGIX
.ent glDeformationMap3fSGIX
glDeformationMap3fSGIX:
    # Line 3340
    lw	$t9,5248($zero)
    # Line 3341
    jr	$t9
    nop
.end glDeformationMap3fSGIX

# Function: glDeformSGIX
# Declared: Line 3347 (Source lines: 3347-3348)
# Address: 0x0da7919c - 0x0da791a8 (Size: 12 bytes, Frame: 0)
.globl glDeformSGIX
.ent glDeformSGIX
glDeformSGIX:
    # Line 3347
    lw	$t9,5252($zero)
    # Line 3348
    jr	$t9
    nop
.end glDeformSGIX

# Function: glLoadIdentityDeformationMapSGIX
# Declared: Line 3354 (Source lines: 3354-3355)
# Address: 0x0da791a8 - 0x0da791b4 (Size: 12 bytes, Frame: 0)
.globl glLoadIdentityDeformationMapSGIX
.ent glLoadIdentityDeformationMapSGIX
glLoadIdentityDeformationMapSGIX:
    # Line 3354
    lw	$t9,5256($zero)
    # Line 3355
    jr	$t9
    nop
.end glLoadIdentityDeformationMapSGIX

# Function: glGetListParameterfvSGIX
# Declared: Line 3361 (Source lines: 3361-3362)
# Address: 0x0da791b4 - 0x0da791c0 (Size: 12 bytes, Frame: 0)
.globl glGetListParameterfvSGIX
.ent glGetListParameterfvSGIX
glGetListParameterfvSGIX:
    # Line 3361
    lw	$t9,5260($zero)
    # Line 3362
    jr	$t9
    nop
.end glGetListParameterfvSGIX

# Function: glGetListParameterivSGIX
# Declared: Line 3368 (Source lines: 3368-3369)
# Address: 0x0da791c0 - 0x0da791cc (Size: 12 bytes, Frame: 0)
.globl glGetListParameterivSGIX
.ent glGetListParameterivSGIX
glGetListParameterivSGIX:
    # Line 3368
    lw	$t9,5264($zero)
    # Line 3369
    jr	$t9
    nop
.end glGetListParameterivSGIX

# Function: glListParameterfSGIX
# Declared: Line 3375 (Source lines: 3375-3376)
# Address: 0x0da791cc - 0x0da791d8 (Size: 12 bytes, Frame: 0)
.globl glListParameterfSGIX
.ent glListParameterfSGIX
glListParameterfSGIX:
    # Line 3375
    lw	$t9,5268($zero)
    # Line 3376
    jr	$t9
    nop
.end glListParameterfSGIX

# Function: glListParameterfvSGIX
# Declared: Line 3382 (Source lines: 3382-3383)
# Address: 0x0da791d8 - 0x0da791e4 (Size: 12 bytes, Frame: 0)
.globl glListParameterfvSGIX
.ent glListParameterfvSGIX
glListParameterfvSGIX:
    # Line 3382
    lw	$t9,5272($zero)
    # Line 3383
    jr	$t9
    nop
.end glListParameterfvSGIX

# Function: glListParameteriSGIX
# Declared: Line 3389 (Source lines: 3389-3390)
# Address: 0x0da791e4 - 0x0da791f0 (Size: 12 bytes, Frame: 0)
.globl glListParameteriSGIX
.ent glListParameteriSGIX
glListParameteriSGIX:
    # Line 3389
    lw	$t9,5276($zero)
    # Line 3390
    jr	$t9
    nop
.end glListParameteriSGIX

# Function: glListParameterivSGIX
# Declared: Line 3396 (Source lines: 3396-3397)
# Address: 0x0da791f0 - 0x0da791fc (Size: 12 bytes, Frame: 0)
.globl glListParameterivSGIX
.ent glListParameterivSGIX
glListParameterivSGIX:
    # Line 3396
    lw	$t9,5280($zero)
    # Line 3397
    jr	$t9
    nop
.end glListParameterivSGIX

# Function: glColorSubTable
# Declared: Line 3403 (Source lines: 3403-3404)
# Address: 0x0da791fc - 0x0da79208 (Size: 12 bytes, Frame: 0)
.globl glColorSubTable
.ent glColorSubTable
glColorSubTable:
    # Line 3403
    lw	$t9,5284($zero)
    # Line 3404
    jr	$t9
    nop
.end glColorSubTable

# Function: glCopyColorSubTable
# Declared: Line 3410 (Source lines: 3410-3411)
# Address: 0x0da79208 - 0x0da79214 (Size: 12 bytes, Frame: 0)
.globl glCopyColorSubTable
.ent glCopyColorSubTable
glCopyColorSubTable:
    # Line 3410
    lw	$t9,5288($zero)
    # Line 3411
    jr	$t9
    nop
.end glCopyColorSubTable

# Function: glDrawRangeElements
# Declared: Line 3417 (Source lines: 3417-3418)
# Address: 0x0da79214 - 0x0da79220 (Size: 12 bytes, Frame: 0)
.globl glDrawRangeElements
.ent glDrawRangeElements
glDrawRangeElements:
    # Line 3417
    lw	$t9,5292($zero)
    # Line 3418
    jr	$t9
    nop
.end glDrawRangeElements

# Function: glGetFogFuncSGIS
# Declared: Line 3424 (Source lines: 3424-3425)
# Address: 0x0da79220 - 0x0da7922c (Size: 12 bytes, Frame: 0)
.globl glGetFogFuncSGIS
.ent glGetFogFuncSGIS
glGetFogFuncSGIS:
    # Line 3424
    lw	$t9,5296($zero)
    # Line 3425
    jr	$t9
    nop
.end glGetFogFuncSGIS

# Function: glPixelTexGenParameteriSGIS
# Declared: Line 3431 (Source lines: 3431-3432)
# Address: 0x0da7922c - 0x0da79238 (Size: 12 bytes, Frame: 0)
.globl glPixelTexGenParameteriSGIS
.ent glPixelTexGenParameteriSGIS
glPixelTexGenParameteriSGIS:
    # Line 3431
    lw	$t9,5300($zero)
    # Line 3432
    jr	$t9
    nop
.end glPixelTexGenParameteriSGIS

# Function: glPixelTexGenParameterivSGIS
# Declared: Line 3438 (Source lines: 3438-3439)
# Address: 0x0da79238 - 0x0da79244 (Size: 12 bytes, Frame: 0)
.globl glPixelTexGenParameterivSGIS
.ent glPixelTexGenParameterivSGIS
glPixelTexGenParameterivSGIS:
    # Line 3438
    lw	$t9,5304($zero)
    # Line 3439
    jr	$t9
    nop
.end glPixelTexGenParameterivSGIS

# Function: glPixelTexGenParameterfSGIS
# Declared: Line 3445 (Source lines: 3445-3446)
# Address: 0x0da79244 - 0x0da79250 (Size: 12 bytes, Frame: 0)
.globl glPixelTexGenParameterfSGIS
.ent glPixelTexGenParameterfSGIS
glPixelTexGenParameterfSGIS:
    # Line 3445
    lw	$t9,5308($zero)
    # Line 3446
    jr	$t9
    nop
.end glPixelTexGenParameterfSGIS

# Function: glPixelTexGenParameterfvSGIS
# Declared: Line 3452 (Source lines: 3452-3453)
# Address: 0x0da79250 - 0x0da7925c (Size: 12 bytes, Frame: 0)
.globl glPixelTexGenParameterfvSGIS
.ent glPixelTexGenParameterfvSGIS
glPixelTexGenParameterfvSGIS:
    # Line 3452
    lw	$t9,5312($zero)
    # Line 3453
    jr	$t9
    nop
.end glPixelTexGenParameterfvSGIS

# Function: glGetPixelTexGenParameterivSGIS
# Declared: Line 3459 (Source lines: 3459-3460)
# Address: 0x0da7925c - 0x0da79268 (Size: 12 bytes, Frame: 0)
.globl glGetPixelTexGenParameterivSGIS
.ent glGetPixelTexGenParameterivSGIS
glGetPixelTexGenParameterivSGIS:
    # Line 3459
    lw	$t9,5316($zero)
    # Line 3460
    jr	$t9
    nop
.end glGetPixelTexGenParameterivSGIS

# Function: glGetPixelTexGenParameterfvSGIS
# Declared: Line 3466 (Source lines: 3466-3467)
# Address: 0x0da79268 - 0x0da79274 (Size: 12 bytes, Frame: 0)
.globl glGetPixelTexGenParameterfvSGIS
.ent glGetPixelTexGenParameterfvSGIS
glGetPixelTexGenParameterfvSGIS:
    # Line 3466
    lw	$t9,5320($zero)
    # Line 3467
    jr	$t9
    nop
.end glGetPixelTexGenParameterfvSGIS

# Function: glAsyncMarkerSGIX
# Declared: Line 3473 (Source lines: 3473-3474)
# Address: 0x0da79274 - 0x0da79280 (Size: 12 bytes, Frame: 0)
.globl glAsyncMarkerSGIX
.ent glAsyncMarkerSGIX
glAsyncMarkerSGIX:
    # Line 3473
    lw	$t9,5324($zero)
    # Line 3474
    jr	$t9
    nop
.end glAsyncMarkerSGIX

# Function: glFinishAsyncSGIX
# Declared: Line 3480 (Source lines: 3480-3481)
# Address: 0x0da79280 - 0x0da7928c (Size: 12 bytes, Frame: 0)
.globl glFinishAsyncSGIX
.ent glFinishAsyncSGIX
glFinishAsyncSGIX:
    # Line 3480
    lw	$t9,5328($zero)
    # Line 3481
    jr	$t9
    nop
.end glFinishAsyncSGIX

# Function: glPollAsyncSGIX
# Declared: Line 3487 (Source lines: 3487-3488)
# Address: 0x0da7928c - 0x0da79298 (Size: 12 bytes, Frame: 0)
.globl glPollAsyncSGIX
.ent glPollAsyncSGIX
glPollAsyncSGIX:
    # Line 3487
    lw	$t9,5332($zero)
    # Line 3488
    jr	$t9
    nop
.end glPollAsyncSGIX

# Function: glGenAsyncMarkersSGIX
# Declared: Line 3494 (Source lines: 3494-3495)
# Address: 0x0da79298 - 0x0da792a4 (Size: 12 bytes, Frame: 0)
.globl glGenAsyncMarkersSGIX
.ent glGenAsyncMarkersSGIX
glGenAsyncMarkersSGIX:
    # Line 3494
    lw	$t9,5336($zero)
    # Line 3495
    jr	$t9
    nop
.end glGenAsyncMarkersSGIX

# Function: glDeleteAsyncMarkersSGIX
# Declared: Line 3501 (Source lines: 3501-3502)
# Address: 0x0da792a4 - 0x0da792b0 (Size: 12 bytes, Frame: 0)
.globl glDeleteAsyncMarkersSGIX
.ent glDeleteAsyncMarkersSGIX
glDeleteAsyncMarkersSGIX:
    # Line 3501
    lw	$t9,5340($zero)
    # Line 3502
    jr	$t9
    nop
.end glDeleteAsyncMarkersSGIX

# Function: glIsAsyncMarkerSGIX
# Declared: Line 3508 (Source lines: 3508-3509)
# Address: 0x0da792b0 - 0x0da792bc (Size: 12 bytes, Frame: 0)
.globl glIsAsyncMarkerSGIX
.ent glIsAsyncMarkerSGIX
glIsAsyncMarkerSGIX:
    # Line 3508
    lw	$t9,5344($zero)
    # Line 3509
    jr	$t9
    nop
.end glIsAsyncMarkerSGIX

# Function: glFragmentColorMaterialSGIX
# Declared: Line 3515 (Source lines: 3515-3516)
# Address: 0x0da792bc - 0x0da792c8 (Size: 12 bytes, Frame: 0)
.globl glFragmentColorMaterialSGIX
.ent glFragmentColorMaterialSGIX
glFragmentColorMaterialSGIX:
    # Line 3515
    lw	$t9,5348($zero)
    # Line 3516
    jr	$t9
    nop
.end glFragmentColorMaterialSGIX

# Function: glFragmentLightfSGIX
# Declared: Line 3522 (Source lines: 3522-3523)
# Address: 0x0da792c8 - 0x0da792d4 (Size: 12 bytes, Frame: 0)
.globl glFragmentLightfSGIX
.ent glFragmentLightfSGIX
glFragmentLightfSGIX:
    # Line 3522
    lw	$t9,5352($zero)
    # Line 3523
    jr	$t9
    nop
.end glFragmentLightfSGIX

# Function: glFragmentLightfvSGIX
# Declared: Line 3529 (Source lines: 3529-3530)
# Address: 0x0da792d4 - 0x0da792e0 (Size: 12 bytes, Frame: 0)
.globl glFragmentLightfvSGIX
.ent glFragmentLightfvSGIX
glFragmentLightfvSGIX:
    # Line 3529
    lw	$t9,5356($zero)
    # Line 3530
    jr	$t9
    nop
.end glFragmentLightfvSGIX

# Function: glFragmentLightiSGIX
# Declared: Line 3536 (Source lines: 3536-3537)
# Address: 0x0da792e0 - 0x0da792ec (Size: 12 bytes, Frame: 0)
.globl glFragmentLightiSGIX
.ent glFragmentLightiSGIX
glFragmentLightiSGIX:
    # Line 3536
    lw	$t9,5360($zero)
    # Line 3537
    jr	$t9
    nop
.end glFragmentLightiSGIX

# Function: glFragmentLightivSGIX
# Declared: Line 3543 (Source lines: 3543-3544)
# Address: 0x0da792ec - 0x0da792f8 (Size: 12 bytes, Frame: 0)
.globl glFragmentLightivSGIX
.ent glFragmentLightivSGIX
glFragmentLightivSGIX:
    # Line 3543
    lw	$t9,5364($zero)
    # Line 3544
    jr	$t9
    nop
.end glFragmentLightivSGIX

# Function: glFragmentLightModelfSGIX
# Declared: Line 3550 (Source lines: 3550-3551)
# Address: 0x0da792f8 - 0x0da79304 (Size: 12 bytes, Frame: 0)
.globl glFragmentLightModelfSGIX
.ent glFragmentLightModelfSGIX
glFragmentLightModelfSGIX:
    # Line 3550
    lw	$t9,5368($zero)
    # Line 3551
    jr	$t9
    nop
.end glFragmentLightModelfSGIX

# Function: glFragmentLightModelfvSGIX
# Declared: Line 3557 (Source lines: 3557-3558)
# Address: 0x0da79304 - 0x0da79310 (Size: 12 bytes, Frame: 0)
.globl glFragmentLightModelfvSGIX
.ent glFragmentLightModelfvSGIX
glFragmentLightModelfvSGIX:
    # Line 3557
    lw	$t9,5372($zero)
    # Line 3558
    jr	$t9
    nop
.end glFragmentLightModelfvSGIX

# Function: glFragmentLightModeliSGIX
# Declared: Line 3564 (Source lines: 3564-3565)
# Address: 0x0da79310 - 0x0da7931c (Size: 12 bytes, Frame: 0)
.globl glFragmentLightModeliSGIX
.ent glFragmentLightModeliSGIX
glFragmentLightModeliSGIX:
    # Line 3564
    lw	$t9,5376($zero)
    # Line 3565
    jr	$t9
    nop
.end glFragmentLightModeliSGIX

# Function: glFragmentLightModelivSGIX
# Declared: Line 3571 (Source lines: 3571-3572)
# Address: 0x0da7931c - 0x0da79328 (Size: 12 bytes, Frame: 0)
.globl glFragmentLightModelivSGIX
.ent glFragmentLightModelivSGIX
glFragmentLightModelivSGIX:
    # Line 3571
    lw	$t9,5380($zero)
    # Line 3572
    jr	$t9
    nop
.end glFragmentLightModelivSGIX

# Function: glFragmentMaterialfSGIX
# Declared: Line 3578 (Source lines: 3578-3579)
# Address: 0x0da79328 - 0x0da79334 (Size: 12 bytes, Frame: 0)
.globl glFragmentMaterialfSGIX
.ent glFragmentMaterialfSGIX
glFragmentMaterialfSGIX:
    # Line 3578
    lw	$t9,5384($zero)
    # Line 3579
    jr	$t9
    nop
.end glFragmentMaterialfSGIX

# Function: glFragmentMaterialfvSGIX
# Declared: Line 3585 (Source lines: 3585-3586)
# Address: 0x0da79334 - 0x0da79340 (Size: 12 bytes, Frame: 0)
.globl glFragmentMaterialfvSGIX
.ent glFragmentMaterialfvSGIX
glFragmentMaterialfvSGIX:
    # Line 3585
    lw	$t9,5388($zero)
    # Line 3586
    jr	$t9
    nop
.end glFragmentMaterialfvSGIX

# Function: glFragmentMaterialiSGIX
# Declared: Line 3592 (Source lines: 3592-3593)
# Address: 0x0da79340 - 0x0da7934c (Size: 12 bytes, Frame: 0)
.globl glFragmentMaterialiSGIX
.ent glFragmentMaterialiSGIX
glFragmentMaterialiSGIX:
    # Line 3592
    lw	$t9,5392($zero)
    # Line 3593
    jr	$t9
    nop
.end glFragmentMaterialiSGIX

# Function: glFragmentMaterialivSGIX
# Declared: Line 3599 (Source lines: 3599-3600)
# Address: 0x0da7934c - 0x0da79358 (Size: 12 bytes, Frame: 0)
.globl glFragmentMaterialivSGIX
.ent glFragmentMaterialivSGIX
glFragmentMaterialivSGIX:
    # Line 3599
    lw	$t9,5396($zero)
    # Line 3600
    jr	$t9
    nop
.end glFragmentMaterialivSGIX

# Function: glGetFragmentLightfvSGIX
# Declared: Line 3606 (Source lines: 3606-3607)
# Address: 0x0da79358 - 0x0da79364 (Size: 12 bytes, Frame: 0)
.globl glGetFragmentLightfvSGIX
.ent glGetFragmentLightfvSGIX
glGetFragmentLightfvSGIX:
    # Line 3606
    lw	$t9,5400($zero)
    # Line 3607
    jr	$t9
    nop
.end glGetFragmentLightfvSGIX

# Function: glGetFragmentLightivSGIX
# Declared: Line 3613 (Source lines: 3613-3614)
# Address: 0x0da79364 - 0x0da79370 (Size: 12 bytes, Frame: 0)
.globl glGetFragmentLightivSGIX
.ent glGetFragmentLightivSGIX
glGetFragmentLightivSGIX:
    # Line 3613
    lw	$t9,5404($zero)
    # Line 3614
    jr	$t9
    nop
.end glGetFragmentLightivSGIX

# Function: glGetFragmentMaterialfvSGIX
# Declared: Line 3620 (Source lines: 3620-3621)
# Address: 0x0da79370 - 0x0da7937c (Size: 12 bytes, Frame: 0)
.globl glGetFragmentMaterialfvSGIX
.ent glGetFragmentMaterialfvSGIX
glGetFragmentMaterialfvSGIX:
    # Line 3620
    lw	$t9,5408($zero)
    # Line 3621
    jr	$t9
    nop
.end glGetFragmentMaterialfvSGIX

# Function: glGetFragmentMaterialivSGIX
# Declared: Line 3627 (Source lines: 3627-3628)
# Address: 0x0da7937c - 0x0da79388 (Size: 12 bytes, Frame: 0)
.globl glGetFragmentMaterialivSGIX
.ent glGetFragmentMaterialivSGIX
glGetFragmentMaterialivSGIX:
    # Line 3627
    lw	$t9,5412($zero)
    # Line 3628
    jr	$t9
    nop
.end glGetFragmentMaterialivSGIX

# Function: glLightEnviSGIX
# Declared: Line 3634 (Source lines: 3634-3635)
# Address: 0x0da79388 - 0x0da79394 (Size: 12 bytes, Frame: 0)
.globl glLightEnviSGIX
.ent glLightEnviSGIX
glLightEnviSGIX:
    # Line 3634
    lw	$t9,5416($zero)
    # Line 3635
    jr	$t9
    nop
.end glLightEnviSGIX

# Function: glTextureColorMaskSGIS
# Declared: Line 3641 (Source lines: 3641-3642)
# Address: 0x0da79394 - 0x0da793a0 (Size: 12 bytes, Frame: 0)
.globl glTextureColorMaskSGIS
.ent glTextureColorMaskSGIS
glTextureColorMaskSGIS:
    # Line 3641
    lw	$t9,5420($zero)
    # Line 3642
    jr	$t9
    nop
.end glTextureColorMaskSGIS

# Function: glDrawArrays
# Declared: Line 3648 (Source lines: 3648-3649)
# Address: 0x0da793a0 - 0x0da793ac (Size: 12 bytes, Frame: 0)
.globl glDrawArrays
.ent glDrawArrays
glDrawArrays:
    # Line 3648
    lw	$t9,5424($zero)
    # Line 3649
    jr	$t9
    nop
.end glDrawArrays

# Function: glAreTexturesResident
# Declared: Line 3655 (Source lines: 3655-3656)
# Address: 0x0da793ac - 0x0da793b8 (Size: 12 bytes, Frame: 0)
.globl glAreTexturesResident
.ent glAreTexturesResident
glAreTexturesResident:
    # Line 3655
    lw	$t9,5428($zero)
    # Line 3656
    jr	$t9
    nop
.end glAreTexturesResident

# Function: glDeleteTextures
# Declared: Line 3662 (Source lines: 3662-3663)
# Address: 0x0da793b8 - 0x0da793c4 (Size: 12 bytes, Frame: 0)
.globl glDeleteTextures
.ent glDeleteTextures
glDeleteTextures:
    # Line 3662
    lw	$t9,5432($zero)
    # Line 3663
    jr	$t9
    nop
.end glDeleteTextures

# Function: glGenTextures
# Declared: Line 3669 (Source lines: 3669-3670)
# Address: 0x0da793c4 - 0x0da793d0 (Size: 12 bytes, Frame: 0)
.globl glGenTextures
.ent glGenTextures
glGenTextures:
    # Line 3669
    lw	$t9,5436($zero)
    # Line 3670
    jr	$t9
    nop
.end glGenTextures

# Function: glIsTexture
# Declared: Line 3676 (Source lines: 3676-3677)
# Address: 0x0da793d0 - 0x0da793dc (Size: 12 bytes, Frame: 0)
.globl glIsTexture
.ent glIsTexture
glIsTexture:
    # Line 3676
    lw	$t9,5440($zero)
    # Line 3677
    jr	$t9
    nop
.end glIsTexture

# Function: glGetColorTable
# Declared: Line 3683 (Source lines: 3683-3684)
# Address: 0x0da793dc - 0x0da793e8 (Size: 12 bytes, Frame: 0)
.globl glGetColorTable
.ent glGetColorTable
glGetColorTable:
    # Line 3683
    lw	$t9,5444($zero)
    # Line 3684
    jr	$t9
    nop
.end glGetColorTable

# Function: glGetColorTableParameterfv
# Declared: Line 3690 (Source lines: 3690-3691)
# Address: 0x0da793e8 - 0x0da793f4 (Size: 12 bytes, Frame: 0)
.globl glGetColorTableParameterfv
.ent glGetColorTableParameterfv
glGetColorTableParameterfv:
    # Line 3690
    lw	$t9,5448($zero)
    # Line 3691
    jr	$t9
    nop
.end glGetColorTableParameterfv

# Function: glGetColorTableParameteriv
# Declared: Line 3697 (Source lines: 3697-3698)
# Address: 0x0da793f4 - 0x0da79400 (Size: 12 bytes, Frame: 0)
.globl glGetColorTableParameteriv
.ent glGetColorTableParameteriv
glGetColorTableParameteriv:
    # Line 3697
    lw	$t9,5452($zero)
    # Line 3698
    jr	$t9
    nop
.end glGetColorTableParameteriv

# Function: glGetConvolutionFilter
# Declared: Line 3704 (Source lines: 3704-3705)
# Address: 0x0da79400 - 0x0da7940c (Size: 12 bytes, Frame: 0)
.globl glGetConvolutionFilter
.ent glGetConvolutionFilter
glGetConvolutionFilter:
    # Line 3704
    lw	$t9,5456($zero)
    # Line 3705
    jr	$t9
    nop
.end glGetConvolutionFilter

# Function: glGetConvolutionParameterfv
# Declared: Line 3711 (Source lines: 3711-3712)
# Address: 0x0da7940c - 0x0da79418 (Size: 12 bytes, Frame: 0)
.globl glGetConvolutionParameterfv
.ent glGetConvolutionParameterfv
glGetConvolutionParameterfv:
    # Line 3711
    lw	$t9,5460($zero)
    # Line 3712
    jr	$t9
    nop
.end glGetConvolutionParameterfv

# Function: glGetConvolutionParameteriv
# Declared: Line 3718 (Source lines: 3718-3719)
# Address: 0x0da79418 - 0x0da79424 (Size: 12 bytes, Frame: 0)
.globl glGetConvolutionParameteriv
.ent glGetConvolutionParameteriv
glGetConvolutionParameteriv:
    # Line 3718
    lw	$t9,5464($zero)
    # Line 3719
    jr	$t9
    nop
.end glGetConvolutionParameteriv

# Function: glGetSeparableFilter
# Declared: Line 3725 (Source lines: 3725-3726)
# Address: 0x0da79424 - 0x0da79430 (Size: 12 bytes, Frame: 0)
.globl glGetSeparableFilter
.ent glGetSeparableFilter
glGetSeparableFilter:
    # Line 3725
    lw	$t9,5468($zero)
    # Line 3726
    jr	$t9
    nop
.end glGetSeparableFilter

# Function: glGetHistogram
# Declared: Line 3732 (Source lines: 3732-3733)
# Address: 0x0da79430 - 0x0da7943c (Size: 12 bytes, Frame: 0)
.globl glGetHistogram
.ent glGetHistogram
glGetHistogram:
    # Line 3732
    lw	$t9,5472($zero)
    # Line 3733
    jr	$t9
    nop
.end glGetHistogram

# Function: glGetHistogramParameterfv
# Declared: Line 3739 (Source lines: 3739-3740)
# Address: 0x0da7943c - 0x0da79448 (Size: 12 bytes, Frame: 0)
.globl glGetHistogramParameterfv
.ent glGetHistogramParameterfv
glGetHistogramParameterfv:
    # Line 3739
    lw	$t9,5476($zero)
    # Line 3740
    jr	$t9
    nop
.end glGetHistogramParameterfv

# Function: glGetHistogramParameteriv
# Declared: Line 3746 (Source lines: 3746-3747)
# Address: 0x0da79448 - 0x0da79454 (Size: 12 bytes, Frame: 0)
.globl glGetHistogramParameteriv
.ent glGetHistogramParameteriv
glGetHistogramParameteriv:
    # Line 3746
    lw	$t9,5480($zero)
    # Line 3747
    jr	$t9
    nop
.end glGetHistogramParameteriv

# Function: glGetMinmax
# Declared: Line 3753 (Source lines: 3753-3754)
# Address: 0x0da79454 - 0x0da79460 (Size: 12 bytes, Frame: 0)
.globl glGetMinmax
.ent glGetMinmax
glGetMinmax:
    # Line 3753
    lw	$t9,5484($zero)
    # Line 3754
    jr	$t9
    nop
.end glGetMinmax

# Function: glGetMinmaxParameterfv
# Declared: Line 3760 (Source lines: 3760-3761)
# Address: 0x0da79460 - 0x0da7946c (Size: 12 bytes, Frame: 0)
.globl glGetMinmaxParameterfv
.ent glGetMinmaxParameterfv
glGetMinmaxParameterfv:
    # Line 3760
    lw	$t9,5488($zero)
    # Line 3761
    jr	$t9
    nop
.end glGetMinmaxParameterfv

# Function: glGetMinmaxParameteriv
# Declared: Line 3767 (Source lines: 3767-3768)
# Address: 0x0da7946c - 0x0da79478 (Size: 12 bytes, Frame: 0)
.globl glGetMinmaxParameteriv
.ent glGetMinmaxParameteriv
glGetMinmaxParameteriv:
    # Line 3767
    lw	$t9,5492($zero)
    # Line 3768
    jr	$t9
    nop
.end glGetMinmaxParameteriv

