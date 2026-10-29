# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/KONA.IP27.N32_M4.O/kon_sfuncs.s
# Category: KONA.IP27.N32_M4.O
# Compiler Options: 
# Total Functions: 49

.text

# Function: __invalid_enum
# Declared: Line 18 (Source lines: 18-28)
# Address: 0x0da79480 - 0x0da794a8 (Size: 40 bytes, Frame: 0)
.ent __invalid_enum
__invalid_enum:
    # Line 18
    li	$a1,228
    # Line 19
    sw	$a1,16384($zero)
    # Line 20
    li	$a0,1280
    # Line 21
    jr	$ra
    # Line 22
    sw	$a0,16384($zero)
    # Line 24
    li	$a1,228
    # Line 25
    sw	$a1,16384($zero)
    # Line 26
    li	$a0,1281
    # Line 27
    jr	$ra
    # Line 28
    sw	$a0,16384($zero)
.end __invalid_enum

# Function: __glkonim_Color3dv
# Declared: Line 32 (Source lines: 32-37)
# Address: 0x0da794a8 - 0x0da794c0 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color3dv
.ent __glkonim_Color3dv
__glkonim_Color3dv:
    # Line 32
    li	$at,98
    # Line 33
    sw	$at,16384($zero)
    # Line 34
    sdc1	$f1,16384($zero)
    # Line 35
    sdc1	$f0,16384($zero)
    # Line 36
    jr	$ra
    # Line 37
    sdc1	$f3,16384($zero)
.end __glkonim_Color3dv

# Function: __glkonim_Color3fv
# Declared: Line 41 (Source lines: 41-45)
# Address: 0x0da794c0 - 0x0da794d4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Color3fv
.ent __glkonim_Color3fv
__glkonim_Color3fv:
    # Line 41
    li	$at,99
    # Line 42
    sw	$at,16384($zero)
    # Line 43
    sd	$v0,16384($zero)
    # Line 44
    jr	$ra
    # Line 45
    sw	$v1,16384($zero)
.end __glkonim_Color3fv

# Function: __glkonim_Color3iv
# Declared: Line 49 (Source lines: 49-53)
# Address: 0x0da794d4 - 0x0da794e8 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Color3iv
.ent __glkonim_Color3iv
__glkonim_Color3iv:
    # Line 49
    li	$at,100
    # Line 50
    sw	$at,16384($zero)
    # Line 51
    sd	$v0,16384($zero)
    # Line 52
    jr	$ra
    # Line 53
    sw	$v1,16384($zero)
.end __glkonim_Color3iv

# Function: __glkonim_Color3uiv
# Declared: Line 57 (Source lines: 57-61)
# Address: 0x0da794e8 - 0x0da794fc (Size: 20 bytes, Frame: 0)
.globl __glkonim_Color3uiv
.ent __glkonim_Color3uiv
__glkonim_Color3uiv:
    # Line 57
    li	$at,103
    # Line 58
    sw	$at,16384($zero)
    # Line 59
    sd	$v0,16384($zero)
    # Line 60
    jr	$ra
    # Line 61
    sw	$v1,16384($zero)
.end __glkonim_Color3uiv

# Function: __glkonim_Color4dv
# Declared: Line 65 (Source lines: 65-72)
# Address: 0x0da794fc - 0x0da7951c (Size: 32 bytes, Frame: 0)
.globl __glkonim_Color4dv
.ent __glkonim_Color4dv
__glkonim_Color4dv:
    # Line 65
    li	$at,106
    # Line 66
    sw	$at,16384($zero)
    # Line 67
    sdc1	$f1,16384($zero)
    # Line 68
    sdc1	$f0,16384($zero)
    # Line 69
    ldc1	$f2,24($a0)
    # Line 70
    sdc1	$f3,16384($zero)
    # Line 71
    jr	$ra
    # Line 72
    sdc1	$f2,16384($zero)
.end __glkonim_Color4dv

# Function: __glkonim_Color4fv
# Declared: Line 76 (Source lines: 76-81)
# Address: 0x0da7951c - 0x0da79534 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color4fv
.ent __glkonim_Color4fv
__glkonim_Color4fv:
    # Line 76
    li	$at,107
    # Line 77
    sw	$at,16384($zero)
    # Line 78
    sd	$v0,16384($zero)
    # Line 79
    ldr	$v1,15($a0)
    # Line 80
    jr	$ra
    # Line 81
    sd	$v1,16384($zero)
.end __glkonim_Color4fv

# Function: __glkonim_Color4iv
# Declared: Line 85 (Source lines: 85-90)
# Address: 0x0da79534 - 0x0da7954c (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color4iv
.ent __glkonim_Color4iv
__glkonim_Color4iv:
    # Line 85
    li	$at,108
    # Line 86
    sw	$at,16384($zero)
    # Line 87
    sd	$v0,16384($zero)
    # Line 88
    ldr	$v1,15($a0)
    # Line 89
    jr	$ra
    # Line 90
    sd	$v1,16384($zero)
.end __glkonim_Color4iv

# Function: __glkonim_Color4uiv
# Declared: Line 94 (Source lines: 94-99)
# Address: 0x0da7954c - 0x0da79564 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Color4uiv
.ent __glkonim_Color4uiv
__glkonim_Color4uiv:
    # Line 94
    li	$at,111
    # Line 95
    sw	$at,16384($zero)
    # Line 96
    sd	$v0,16384($zero)
    # Line 97
    ldr	$v1,15($a0)
    # Line 98
    jr	$ra
    # Line 99
    sd	$v1,16384($zero)
.end __glkonim_Color4uiv

# Function: __glkonim_EdgeFlagv
# Declared: Line 103 (Source lines: 103-106)
# Address: 0x0da79564 - 0x0da79574 (Size: 16 bytes, Frame: 0)
.globl __glkonim_EdgeFlagv
.ent __glkonim_EdgeFlagv
__glkonim_EdgeFlagv:
    # Line 103
    li	$at,167
    # Line 104
    sw	$at,16384($zero)
    # Line 105
    jr	$ra
    # Line 106
    sw	$v0,16384($zero)
.end __glkonim_EdgeFlagv

# Function: __glkonim_Indexdv
# Declared: Line 110 (Source lines: 110-113)
# Address: 0x0da79574 - 0x0da79584 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Indexdv
.ent __glkonim_Indexdv
__glkonim_Indexdv:
    # Line 110
    li	$at,114
    # Line 111
    sw	$at,16384($zero)
    # Line 112
    jr	$ra
    # Line 113
    sdc1	$f1,16384($zero)
.end __glkonim_Indexdv

# Function: __glkonim_Indexfv
# Declared: Line 117 (Source lines: 117-120)
# Address: 0x0da79584 - 0x0da79594 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Indexfv
.ent __glkonim_Indexfv
__glkonim_Indexfv:
    # Line 117
    li	$at,115
    # Line 118
    sw	$at,16384($zero)
    # Line 119
    jr	$ra
    # Line 120
    sw	$v0,16384($zero)
.end __glkonim_Indexfv

# Function: __glkonim_Indexiv
# Declared: Line 124 (Source lines: 124-127)
# Address: 0x0da79594 - 0x0da795a4 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Indexiv
.ent __glkonim_Indexiv
__glkonim_Indexiv:
    # Line 124
    li	$at,116
    # Line 125
    sw	$at,16384($zero)
    # Line 126
    jr	$ra
    # Line 127
    sw	$v0,16384($zero)
.end __glkonim_Indexiv

# Function: __glkonim_Normal3dv
# Declared: Line 131 (Source lines: 131-136)
# Address: 0x0da795a4 - 0x0da795bc (Size: 24 bytes, Frame: 0)
.globl __glkonim_Normal3dv
.ent __glkonim_Normal3dv
__glkonim_Normal3dv:
    # Line 131
    li	$at,119
    # Line 132
    sw	$at,16384($zero)
    # Line 133
    sdc1	$f1,16384($zero)
    # Line 134
    sdc1	$f0,16384($zero)
    # Line 135
    jr	$ra
    # Line 136
    sdc1	$f3,16384($zero)
.end __glkonim_Normal3dv

# Function: __glkonim_Normal3fv
# Declared: Line 140 (Source lines: 140-144)
# Address: 0x0da795bc - 0x0da795d0 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Normal3fv
.ent __glkonim_Normal3fv
__glkonim_Normal3fv:
    # Line 140
    li	$at,120
    # Line 141
    sw	$at,16384($zero)
    # Line 142
    sd	$v0,16384($zero)
    # Line 143
    jr	$ra
    # Line 144
    sw	$v1,16384($zero)
.end __glkonim_Normal3fv

# Function: __glkonim_Normal3iv
# Declared: Line 148 (Source lines: 148-152)
# Address: 0x0da795d0 - 0x0da795e4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Normal3iv
.ent __glkonim_Normal3iv
__glkonim_Normal3iv:
    # Line 148
    li	$at,121
    # Line 149
    sw	$at,16384($zero)
    # Line 150
    sd	$v0,16384($zero)
    # Line 151
    jr	$ra
    # Line 152
    sw	$v1,16384($zero)
.end __glkonim_Normal3iv

# Function: __glkonim_RasterPos2dv
# Declared: Line 156 (Source lines: 156-160)
# Address: 0x0da795e4 - 0x0da795f8 (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos2dv
.ent __glkonim_RasterPos2dv
__glkonim_RasterPos2dv:
    # Line 156
    li	$at,168
    # Line 157
    sw	$at,16384($zero)
    # Line 158
    sdc1	$f1,16384($zero)
    # Line 159
    jr	$ra
    # Line 160
    sdc1	$f0,16384($zero)
.end __glkonim_RasterPos2dv

# Function: __glkonim_RasterPos2fv
# Declared: Line 164 (Source lines: 164-167)
# Address: 0x0da795f8 - 0x0da79608 (Size: 16 bytes, Frame: 0)
.globl __glkonim_RasterPos2fv
.ent __glkonim_RasterPos2fv
__glkonim_RasterPos2fv:
    # Line 164
    li	$at,169
    # Line 165
    sw	$at,16384($zero)
    # Line 166
    jr	$ra
    # Line 167
    sd	$v0,16384($zero)
.end __glkonim_RasterPos2fv

# Function: __glkonim_RasterPos2iv
# Declared: Line 171 (Source lines: 171-174)
# Address: 0x0da79608 - 0x0da79618 (Size: 16 bytes, Frame: 0)
.globl __glkonim_RasterPos2iv
.ent __glkonim_RasterPos2iv
__glkonim_RasterPos2iv:
    # Line 171
    li	$at,170
    # Line 172
    sw	$at,16384($zero)
    # Line 173
    jr	$ra
    # Line 174
    sd	$v0,16384($zero)
.end __glkonim_RasterPos2iv

# Function: __glkonim_RasterPos2sv
# Declared: Line 178 (Source lines: 178-183)
# Address: 0x0da79618 - 0x0da79630 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos2sv
.ent __glkonim_RasterPos2sv
__glkonim_RasterPos2sv:
    # Line 178
    dsll32	$v0,$v0,0x0
    # Line 179
    or	$v0,$v0,$v1
    # Line 180
    li	$at,171
    # Line 181
    sw	$at,16384($zero)
    # Line 182
    jr	$ra
    # Line 183
    sd	$v0,16384($zero)
.end __glkonim_RasterPos2sv

# Function: __glkonim_RasterPos3dv
# Declared: Line 187 (Source lines: 187-192)
# Address: 0x0da79630 - 0x0da79648 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos3dv
.ent __glkonim_RasterPos3dv
__glkonim_RasterPos3dv:
    # Line 187
    li	$at,172
    # Line 188
    sw	$at,16384($zero)
    # Line 189
    sdc1	$f1,16384($zero)
    # Line 190
    sdc1	$f0,16384($zero)
    # Line 191
    jr	$ra
    # Line 192
    sdc1	$f3,16384($zero)
.end __glkonim_RasterPos3dv

# Function: __glkonim_RasterPos3fv
# Declared: Line 196 (Source lines: 196-200)
# Address: 0x0da79648 - 0x0da7965c (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos3fv
.ent __glkonim_RasterPos3fv
__glkonim_RasterPos3fv:
    # Line 196
    li	$at,173
    # Line 197
    sw	$at,16384($zero)
    # Line 198
    sd	$v0,16384($zero)
    # Line 199
    jr	$ra
    # Line 200
    sw	$v1,16384($zero)
.end __glkonim_RasterPos3fv

# Function: __glkonim_RasterPos3iv
# Declared: Line 204 (Source lines: 204-208)
# Address: 0x0da7965c - 0x0da79670 (Size: 20 bytes, Frame: 0)
.globl __glkonim_RasterPos3iv
.ent __glkonim_RasterPos3iv
__glkonim_RasterPos3iv:
    # Line 204
    li	$at,174
    # Line 205
    sw	$at,16384($zero)
    # Line 206
    sd	$v0,16384($zero)
    # Line 207
    jr	$ra
    # Line 208
    sw	$v1,16384($zero)
.end __glkonim_RasterPos3iv

# Function: __glkonim_RasterPos3sv
# Declared: Line 212 (Source lines: 212-218)
# Address: 0x0da79670 - 0x0da7968c (Size: 28 bytes, Frame: 0)
.globl __glkonim_RasterPos3sv
.ent __glkonim_RasterPos3sv
__glkonim_RasterPos3sv:
    # Line 212
    dsll32	$v0,$v0,0x0
    # Line 213
    or	$v0,$v0,$v1
    # Line 214
    li	$at,175
    # Line 215
    sw	$at,16384($zero)
    # Line 216
    sd	$v0,16384($zero)
    # Line 217
    jr	$ra
    # Line 218
    sw	$t0,16384($zero)
.end __glkonim_RasterPos3sv

# Function: __glkonim_RasterPos4dv
# Declared: Line 222 (Source lines: 222-229)
# Address: 0x0da7968c - 0x0da796ac (Size: 32 bytes, Frame: 0)
.globl __glkonim_RasterPos4dv
.ent __glkonim_RasterPos4dv
__glkonim_RasterPos4dv:
    # Line 222
    li	$at,176
    # Line 223
    sw	$at,16384($zero)
    # Line 224
    sdc1	$f1,16384($zero)
    # Line 225
    sdc1	$f0,16384($zero)
    # Line 226
    ldc1	$f2,24($a0)
    # Line 227
    sdc1	$f3,16384($zero)
    # Line 228
    jr	$ra
    # Line 229
    sdc1	$f2,16384($zero)
.end __glkonim_RasterPos4dv

# Function: __glkonim_RasterPos4fv
# Declared: Line 233 (Source lines: 233-238)
# Address: 0x0da796ac - 0x0da796c4 (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos4fv
.ent __glkonim_RasterPos4fv
__glkonim_RasterPos4fv:
    # Line 233
    li	$at,177
    # Line 234
    sw	$at,16384($zero)
    # Line 235
    sd	$v0,16384($zero)
    # Line 236
    ldr	$v1,15($a0)
    # Line 237
    jr	$ra
    # Line 238
    sd	$v1,16384($zero)
.end __glkonim_RasterPos4fv

# Function: __glkonim_RasterPos4iv
# Declared: Line 242 (Source lines: 242-247)
# Address: 0x0da796c4 - 0x0da796dc (Size: 24 bytes, Frame: 0)
.globl __glkonim_RasterPos4iv
.ent __glkonim_RasterPos4iv
__glkonim_RasterPos4iv:
    # Line 242
    li	$at,178
    # Line 243
    sw	$at,16384($zero)
    # Line 244
    sd	$v0,16384($zero)
    # Line 245
    ldr	$v1,15($a0)
    # Line 246
    jr	$ra
    # Line 247
    sd	$v1,16384($zero)
.end __glkonim_RasterPos4iv

# Function: __glkonim_RasterPos4sv
# Declared: Line 251 (Source lines: 251-260)
# Address: 0x0da796dc - 0x0da79704 (Size: 40 bytes, Frame: 0)
.globl __glkonim_RasterPos4sv
.ent __glkonim_RasterPos4sv
__glkonim_RasterPos4sv:
    # Line 251
    dsll32	$v0,$v0,0x0
    # Line 252
    or	$v0,$v0,$v1
    # Line 253
    li	$at,179
    # Line 254
    sw	$at,16384($zero)
    # Line 255
    lhu	$t1,6($a0)
    # Line 256
    sd	$v0,16384($zero)
    # Line 257
    dsll32	$t0,$t0,0x0
    # Line 258
    or	$t0,$t0,$t1
    # Line 259
    jr	$ra
    # Line 260
    sd	$t0,16384($zero)
.end __glkonim_RasterPos4sv

# Function: __glkonim_TexCoord1dv
# Declared: Line 264 (Source lines: 264-267)
# Address: 0x0da79704 - 0x0da79714 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord1dv
.ent __glkonim_TexCoord1dv
__glkonim_TexCoord1dv:
    # Line 264
    li	$at,123
    # Line 265
    sw	$at,16384($zero)
    # Line 266
    jr	$ra
    # Line 267
    sdc1	$f1,16384($zero)
.end __glkonim_TexCoord1dv

# Function: __glkonim_TexCoord1fv
# Declared: Line 271 (Source lines: 271-274)
# Address: 0x0da79714 - 0x0da79724 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord1fv
.ent __glkonim_TexCoord1fv
__glkonim_TexCoord1fv:
    # Line 271
    li	$at,124
    # Line 272
    sw	$at,16384($zero)
    # Line 273
    jr	$ra
    # Line 274
    sw	$v0,16384($zero)
.end __glkonim_TexCoord1fv

# Function: __glkonim_TexCoord1iv
# Declared: Line 278 (Source lines: 278-281)
# Address: 0x0da79724 - 0x0da79734 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord1iv
.ent __glkonim_TexCoord1iv
__glkonim_TexCoord1iv:
    # Line 278
    li	$at,125
    # Line 279
    sw	$at,16384($zero)
    # Line 280
    jr	$ra
    # Line 281
    sw	$v0,16384($zero)
.end __glkonim_TexCoord1iv

# Function: __glkonim_TexCoord2dv
# Declared: Line 285 (Source lines: 285-289)
# Address: 0x0da79734 - 0x0da79748 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord2dv
.ent __glkonim_TexCoord2dv
__glkonim_TexCoord2dv:
    # Line 285
    li	$at,127
    # Line 286
    sw	$at,16384($zero)
    # Line 287
    sdc1	$f1,16384($zero)
    # Line 288
    jr	$ra
    # Line 289
    sdc1	$f0,16384($zero)
.end __glkonim_TexCoord2dv

# Function: __glkonim_TexCoord2fv
# Declared: Line 293 (Source lines: 293-296)
# Address: 0x0da79748 - 0x0da79758 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord2fv
.ent __glkonim_TexCoord2fv
__glkonim_TexCoord2fv:
    # Line 293
    li	$at,128
    # Line 294
    sw	$at,16384($zero)
    # Line 295
    jr	$ra
    # Line 296
    sd	$v0,16384($zero)
.end __glkonim_TexCoord2fv

# Function: __glkonim_TexCoord2iv
# Declared: Line 300 (Source lines: 300-303)
# Address: 0x0da79758 - 0x0da79768 (Size: 16 bytes, Frame: 0)
.globl __glkonim_TexCoord2iv
.ent __glkonim_TexCoord2iv
__glkonim_TexCoord2iv:
    # Line 300
    li	$at,129
    # Line 301
    sw	$at,16384($zero)
    # Line 302
    jr	$ra
    # Line 303
    sd	$v0,16384($zero)
.end __glkonim_TexCoord2iv

# Function: __glkonim_TexCoord3dv
# Declared: Line 307 (Source lines: 307-312)
# Address: 0x0da79768 - 0x0da79780 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord3dv
.ent __glkonim_TexCoord3dv
__glkonim_TexCoord3dv:
    # Line 307
    li	$at,131
    # Line 308
    sw	$at,16384($zero)
    # Line 309
    sdc1	$f1,16384($zero)
    # Line 310
    sdc1	$f0,16384($zero)
    # Line 311
    jr	$ra
    # Line 312
    sdc1	$f3,16384($zero)
.end __glkonim_TexCoord3dv

# Function: __glkonim_TexCoord3fv
# Declared: Line 316 (Source lines: 316-320)
# Address: 0x0da79780 - 0x0da79794 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord3fv
.ent __glkonim_TexCoord3fv
__glkonim_TexCoord3fv:
    # Line 316
    li	$at,132
    # Line 317
    sw	$at,16384($zero)
    # Line 318
    sd	$v0,16384($zero)
    # Line 319
    jr	$ra
    # Line 320
    sw	$v1,16384($zero)
.end __glkonim_TexCoord3fv

# Function: __glkonim_TexCoord3iv
# Declared: Line 324 (Source lines: 324-328)
# Address: 0x0da79794 - 0x0da797a8 (Size: 20 bytes, Frame: 0)
.globl __glkonim_TexCoord3iv
.ent __glkonim_TexCoord3iv
__glkonim_TexCoord3iv:
    # Line 324
    li	$at,133
    # Line 325
    sw	$at,16384($zero)
    # Line 326
    sd	$v0,16384($zero)
    # Line 327
    jr	$ra
    # Line 328
    sw	$v1,16384($zero)
.end __glkonim_TexCoord3iv

# Function: __glkonim_TexCoord4dv
# Declared: Line 332 (Source lines: 332-339)
# Address: 0x0da797a8 - 0x0da797c8 (Size: 32 bytes, Frame: 0)
.globl __glkonim_TexCoord4dv
.ent __glkonim_TexCoord4dv
__glkonim_TexCoord4dv:
    # Line 332
    li	$at,135
    # Line 333
    sw	$at,16384($zero)
    # Line 334
    sdc1	$f1,16384($zero)
    # Line 335
    sdc1	$f0,16384($zero)
    # Line 336
    ldc1	$f2,24($a0)
    # Line 337
    sdc1	$f3,16384($zero)
    # Line 338
    jr	$ra
    # Line 339
    sdc1	$f2,16384($zero)
.end __glkonim_TexCoord4dv

# Function: __glkonim_TexCoord4fv
# Declared: Line 343 (Source lines: 343-348)
# Address: 0x0da797c8 - 0x0da797e0 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord4fv
.ent __glkonim_TexCoord4fv
__glkonim_TexCoord4fv:
    # Line 343
    li	$at,136
    # Line 344
    sw	$at,16384($zero)
    # Line 345
    sd	$v0,16384($zero)
    # Line 346
    ldr	$v1,15($a0)
    # Line 347
    jr	$ra
    # Line 348
    sd	$v1,16384($zero)
.end __glkonim_TexCoord4fv

# Function: __glkonim_TexCoord4iv
# Declared: Line 352 (Source lines: 352-357)
# Address: 0x0da797e0 - 0x0da797f8 (Size: 24 bytes, Frame: 0)
.globl __glkonim_TexCoord4iv
.ent __glkonim_TexCoord4iv
__glkonim_TexCoord4iv:
    # Line 352
    li	$at,137
    # Line 353
    sw	$at,16384($zero)
    # Line 354
    sd	$v0,16384($zero)
    # Line 355
    ldr	$v1,15($a0)
    # Line 356
    jr	$ra
    # Line 357
    sd	$v1,16384($zero)
.end __glkonim_TexCoord4iv

# Function: __glkonim_Vertex2dv
# Declared: Line 361 (Source lines: 361-365)
# Address: 0x0da797f8 - 0x0da7980c (Size: 20 bytes, Frame: 0)
.globl __glkonim_Vertex2dv
.ent __glkonim_Vertex2dv
__glkonim_Vertex2dv:
    # Line 361
    li	$at,139
    # Line 362
    sw	$at,16384($zero)
    # Line 363
    sdc1	$f1,16384($zero)
    # Line 364
    jr	$ra
    # Line 365
    sdc1	$f0,16384($zero)
.end __glkonim_Vertex2dv

# Function: __glkonim_Vertex2fv
# Declared: Line 369 (Source lines: 369-372)
# Address: 0x0da7980c - 0x0da7981c (Size: 16 bytes, Frame: 0)
.globl __glkonim_Vertex2fv
.ent __glkonim_Vertex2fv
__glkonim_Vertex2fv:
    # Line 369
    li	$at,140
    # Line 370
    sw	$at,16384($zero)
    # Line 371
    jr	$ra
    # Line 372
    sd	$v0,16384($zero)
.end __glkonim_Vertex2fv

# Function: __glkonim_Vertex2iv
# Declared: Line 376 (Source lines: 376-379)
# Address: 0x0da7981c - 0x0da7982c (Size: 16 bytes, Frame: 0)
.globl __glkonim_Vertex2iv
.ent __glkonim_Vertex2iv
__glkonim_Vertex2iv:
    # Line 376
    li	$at,141
    # Line 377
    sw	$at,16384($zero)
    # Line 378
    jr	$ra
    # Line 379
    sd	$v0,16384($zero)
.end __glkonim_Vertex2iv

# Function: __glkonim_Vertex3dv
# Declared: Line 383 (Source lines: 383-388)
# Address: 0x0da7982c - 0x0da79844 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex3dv
.ent __glkonim_Vertex3dv
__glkonim_Vertex3dv:
    # Line 383
    li	$at,143
    # Line 384
    sw	$at,16384($zero)
    # Line 385
    sdc1	$f1,16384($zero)
    # Line 386
    sdc1	$f0,16384($zero)
    # Line 387
    jr	$ra
    # Line 388
    sdc1	$f3,16384($zero)
.end __glkonim_Vertex3dv

# Function: __glkonim_Vertex3fv
# Declared: Line 392 (Source lines: 392-396)
# Address: 0x0da79844 - 0x0da79858 (Size: 20 bytes, Frame: 0)
.globl __glkonim_Vertex3fv
.ent __glkonim_Vertex3fv
__glkonim_Vertex3fv:
    # Line 392
    li	$at,144
    # Line 393
    sw	$at,16384($zero)
    # Line 394
    sd	$v0,16384($zero)
    # Line 395
    jr	$ra
    # Line 396
    sw	$v1,16384($zero)
.end __glkonim_Vertex3fv

# Function: __glkonim_Vertex3iv
# Declared: Line 400 (Source lines: 400-404)
# Address: 0x0da79858 - 0x0da7986c (Size: 20 bytes, Frame: 0)
.globl __glkonim_Vertex3iv
.ent __glkonim_Vertex3iv
__glkonim_Vertex3iv:
    # Line 400
    li	$at,145
    # Line 401
    sw	$at,16384($zero)
    # Line 402
    sd	$v0,16384($zero)
    # Line 403
    jr	$ra
    # Line 404
    sw	$v1,16384($zero)
.end __glkonim_Vertex3iv

# Function: __glkonim_Vertex4dv
# Declared: Line 408 (Source lines: 408-415)
# Address: 0x0da7986c - 0x0da7988c (Size: 32 bytes, Frame: 0)
.globl __glkonim_Vertex4dv
.ent __glkonim_Vertex4dv
__glkonim_Vertex4dv:
    # Line 408
    li	$at,147
    # Line 409
    sw	$at,16384($zero)
    # Line 410
    sdc1	$f1,16384($zero)
    # Line 411
    sdc1	$f0,16384($zero)
    # Line 412
    ldc1	$f2,24($a0)
    # Line 413
    sdc1	$f3,16384($zero)
    # Line 414
    jr	$ra
    # Line 415
    sdc1	$f2,16384($zero)
.end __glkonim_Vertex4dv

# Function: __glkonim_Vertex4fv
# Declared: Line 419 (Source lines: 419-424)
# Address: 0x0da7988c - 0x0da798a4 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex4fv
.ent __glkonim_Vertex4fv
__glkonim_Vertex4fv:
    # Line 419
    li	$at,148
    # Line 420
    sw	$at,16384($zero)
    # Line 421
    sd	$v0,16384($zero)
    # Line 422
    ldr	$v1,15($a0)
    # Line 423
    jr	$ra
    # Line 424
    sd	$v1,16384($zero)
.end __glkonim_Vertex4fv

# Function: __glkonim_Vertex4iv
# Declared: Line 428 (Source lines: 428-433)
# Address: 0x0da798a4 - 0x0da798bc (Size: 24 bytes, Frame: 0)
.globl __glkonim_Vertex4iv
.ent __glkonim_Vertex4iv
__glkonim_Vertex4iv:
    # Line 428
    li	$at,149
    # Line 429
    sw	$at,16384($zero)
    # Line 430
    sd	$v0,16384($zero)
    # Line 431
    ldr	$v1,15($a0)
    # Line 432
    jr	$ra
    # Line 433
    sd	$v1,16384($zero)
.end __glkonim_Vertex4iv

