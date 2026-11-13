Error occurred while processing instruction: c.lt.d $f0, $f5

Error occurred while processing instruction: c.lt.d $f1, $f5

Error occurred while processing instruction: c.lt.d $f7, $f5

Error occurred while processing instruction: c.lt.d $f0, $f5

Error occurred while processing instruction: c.lt.d $f1, $f5

Error occurred while processing instruction: c.lt.d $f7, $f5

Error occurred while processing instruction: c.lt.d $f0, $f5

Error occurred while processing instruction: c.lt.d $f1, $f5

Error occurred while processing instruction: c.lt.d $f7, $f5

Error occurred while processing instruction: c.lt.d $f0, $f5

Error occurred while processing instruction: c.lt.d $f1, $f5

Error occurred while processing instruction: c.lt.d $f7, $f5

Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
? __glSetError(?, s32, s32, void *, s32, void *, s32); /* extern */
? __glkon_datavn(void *, s32, void *, void *, s32, void *, s32); /* extern */
f32 __glsplc_InvalidValue(void *, void *, void *, s64, s64); /* extern */

void __glkonim_FogFuncSGIS(s32 arg0, void *arg1, void *arg3, void *arg4, s32 arg5) {
    f32 temp_f4;
    f64 temp_f1;
    void *temp_a6;
    void *var_a1;
    void *var_a3;
    void *var_a4;

    var_a1 = arg1;
    var_a3 = arg3;
    var_a4 = arg4;
    temp_a6 = var_a1;
    if ((arg0 > 0) && (arg0 < 0x21)) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
        // At instruction: c.lt.d $f0, $f5
        if (M2C_ERROR() && (// Error: Tried to use a double-precision instruction with odd-numbered float register $f5, // At instruction: c.lt.d $f1, $f5, M2C_ERROR())) {
            if (arg5 != temp_a6) {
loop_6:
                if (!(var_a3->unk8 < var_a3->unk0)) {
                    temp_f4 = var_a4->unk8;
                    var_a4 += 8;
                    if (!(var_a4->unk0 < temp_f4)) {
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f7, $f5
                        if (M2C_ERROR()) {
                            if (arg5 == var_a3) {
                                goto block_10;
                            }
                            goto loop_6;
                        }
                    }
                }
                __glSetError(0x501, (s32) var_a1, (s32) var_a3, var_a4, arg5, temp_a6, arg0);
            } else {
block_10:
                *(s32 *)0x4000 = 0x10F;
                *(void *)0x4000 = arg0;
                __glkon_datavn(temp_a6, (s32) var_a1, var_a3, var_a4, arg5, temp_a6, arg0);
            }
        } else {
            __glSetError(0x501, (s32) var_a1, (s32) var_a3, var_a4, arg5, temp_a6, arg0);
        }
    } else {
        __glSetError(0x501, (s32) temp_a6, arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
f32 __glkonlc_FogFuncSGIS(s32 arg0, void *arg1, void *arg3, void *arg4) {
    f32 *var_a1;
    f32 temp_f10;
    f32 temp_f4;
    f32 temp_ret;
    f32 var_f0;
    f32 var_f0_2;
    s32 var_a4_2;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_t0;
    void *temp_a5;
    void *temp_a5_2;
    void *var_a0;
    void *var_a3;
    void *var_a4;

    var_a3 = arg3;
    var_a4 = arg4;
    temp_a6 = arg0 * 2;
    if ((arg0 > 0) && (arg0 < 0x21)) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
        // At instruction: c.lt.d $f0, $f5
        if (M2C_ERROR()) {
            // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
            // At instruction: c.lt.d $f1, $f5
            if (M2C_ERROR()) {
                temp_a7 = temp_a6 * 4;
                temp_a5 = (temp_a7 + arg1) - 8;
                temp_t0 = temp_a6 + 2;
                if (temp_a5 != arg1) {
loop_6:
                    if (!(var_a3->unk8 < var_a3->unk0)) {
                        temp_f4 = var_a4->unk8;
                        var_a4 += 8;
                        if (!(var_a4->unk0 < temp_f4)) {
                            // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                            // At instruction: c.lt.d $f7, $f5
                            if (M2C_ERROR()) {
                                var_a3 += 8;
                                if (temp_a5 == var_a3) {
                                    goto block_10;
                                }
                                goto loop_6;
                            }
                        }
                    }
                    var_f0 = __glsplc_InvalidValue(var_a3, var_a4, temp_a5, temp_a6, temp_a7);
                    /* Duplicate return node #19. Try simplifying control flow for better match */
                    return var_f0;
                }
block_10:
                var_a4_2 = *(s32 *)0x1028;
                if (var_a4_2 < temp_t0) {
                    unksp18 = temp_t0;
                    unksp20 = temp_a7;
                    unksp28 = temp_a6;
                    temp_ret = M2C_ERROR(/* Read from unset register $t9 */)(0, var_a3, var_a4_2, temp_a5, temp_a6, temp_a7);
                    var_f0_2 = temp_ret;
                    var_a4_2 = (bitwise s32) temp_ret;
                }
                temp_a5_2 = *(void **)0x1030;
                var_a1 = temp_a5_2 + 8;
                temp_a5_2->unk4 = arg0;
                temp_a5_2->unk0 = 0x10F;
                if (temp_t0 >= 3) {
                    var_a0 = arg1 + 8;
                    if (temp_a6 & 1) {
                        var_a0 = arg1 + 0xC;
                        var_a1 = temp_a5_2 + 0xC;
                        temp_a5_2->unk8 = (f32) arg1->unk0;
                    }
                    if ((temp_a6 >> 1) != 0) {
                        do {
                            temp_f10 = var_a0->unk-8;
                            var_a0 += 8;
                            *var_a1 = temp_f10;
                            var_a1 += 8;
                            var_a1->unk-4 = (f32) var_a0->unk-C;
                        } while (var_a0 != (arg1 + (temp_t0 * 4)));
                    }
                }
                *(void *)0x1028 = (s32) ((var_a4_2 - temp_a6) - 2);
                *(void *)0x1030 = (void *) (temp_a7 + temp_a5_2 + 8);
                *(void *)0x1034 = (s32) (*(s32 *)0x1034 + temp_a6 + 2);
                return var_f0_2;
            }
        }
        var_f0 = __glsplc_InvalidValue(var_a3, var_a4, (void *) temp_a6);
        /* Duplicate return node #19. Try simplifying control flow for better match */
        return var_f0;
    }
    var_f0 = __glsplc_InvalidValue((void *) temp_a6);
    return var_f0;
}
