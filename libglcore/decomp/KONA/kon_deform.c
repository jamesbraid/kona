s32 __glSPDlistSpace(?, s32, s32, ?);               /* extern */
? __glSetError(?, s32, s32, s32, s32, s32);         /* extern */
void *__glkon_get_special(?, s32);                  /* extern */
s32 __glkonim_IglooInterfaceSGIX(?, s32, s64, s32, s32, f32, f32, f32, f32, s32, s32, f32, f32, s32, s32); /* extern */
? __glsplc_InvalidValue();                          /* extern */
? bcopy(void *, s64, s32);                          /* extern */

s32 deformMapProlog(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, f32 fparg2, f32 fparg3, f32 fparg6, f32 fparg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp10, s32 arg_sp18, s32 arg_sp24, s32 arg_sp2C) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a6;
    s32 var_a7;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    if ((arg1 != 0x8194) && (arg1 != 0x8195)) {
        __glSetError(0x500);
        return 1;
    }
    if (arg4 >= 3) {
        var_a2 = arg_sp4 < 3;
        if (var_a2 == 0) {
            var_a3 = arg_sp24 < 3;
            if ((var_a3 == 0) && (arg5 > 0)) {
                var_a3 = arg_spC;
                if ((var_a3 > 0) && (arg_sp2C > 0)) {
                    var_a7 = arg5 * var_a3;
                    var_a6 = (arg_sp2C * var_a7) < 9;
                    if (var_a6 != 0) {
                        *(s32 *)0x4000 = arg0;
                        *(void *)0x4000 = arg1;
                        *(void *)0x4000 = (bitwise s32) fparg2;
                        *(void *)0x4000 = (bitwise s32) fparg3;
                        *(void *)0x4000 = (bitwise s32) fparg6;
                        *(void *)0x4000 = (bitwise s32) fparg7;
                        *(void *)0x4000 = arg_sp10;
                        *(void *)0x4000 = arg_sp18;
                        return 0;
                    }
                }
            }
        }
    }
    __glSetError(0x501, var_a2, var_a3, arg_sp2C, var_a6, var_a7);
    return 1;
}

void __glkonim_DeformationMap3fSGIX(s32 arg0, s64 arg3, s32 arg4, s64 arg7, f32 fparg1, f32 fparg2, f32 fparg5, f32 fparg6, s32 arg_sp4, f32 arg_sp8, f32 arg_sp10, s32 arg_sp1C, s32 arg_sp24, void *arg_sp2C) {
    s64 sp38;
    s64 sp30;
    s32 var_a3;
    s32 var_a6;
    void *temp_t3;
    void *var_a0;
    void *var_a5;

    if ((arg4 != 2) || (arg_sp4 != 2) || (sp30 = arg7, sp38 = arg3, (arg_sp24 != 2))) {
        __glSetError(0x501, 2, (s32) arg7, arg0, (bitwise s32) fparg2, (bitwise s32) fparg6);
    } else if (__glkonim_IglooInterfaceSGIX(0x1C0, arg0, sp38, arg4, arg0, fparg1, fparg2, fparg5, fparg6, (s32) sp30, arg_sp4, arg_sp8, arg_sp10, arg_sp1C, arg_sp24) == 0) {
        var_a5 = arg_sp2C;
        var_a6 = 0;
        var_a3 = 0;
        do {
            var_a6 += 1;
            var_a0 = var_a5;
            var_a5 += sp38 * 4;
loop_9:
            *(f32 *)0x4000 = var_a0->unk0;
            *(void *)0x4000 = (f32) var_a0->unk4;
            *(void *)0x4000 = (f32) var_a0->unk8;
            temp_t3 = (arg_sp1C * 4) + var_a0;
            *(void *)0x4000 = (f32) temp_t3->unk0;
            *(void *)0x4000 = (f32) temp_t3->unk4;
            var_a3 += 1;
            var_a0 += sp30 * 4;
            *(void *)0x4000 = (f32) temp_t3->unk8;
            if (var_a3 != 2) {
                goto loop_9;
            }
            var_a3 = 0;
        } while (var_a6 != 2);
    }
}

void __glkonim_DeformationMap3dSGIX(s32 arg0, s64 arg3, s32 arg4, s64 arg7, f64 fparg1, f64 fparg2, f64 fparg5, f64 fparg6, s32 arg_sp4, f64 arg_sp8, f64 arg_sp10, s32 arg_sp1C, s32 arg_sp24, void *arg_sp2C) {
    s64 sp38;
    s64 sp30;
    s32 var_a3;
    s32 var_a6;
    void *temp_t3;
    void *var_a0;
    void *var_a5;

    if ((arg4 != 2) || (arg_sp4 != 2) || (sp30 = arg7, sp38 = arg3, (arg_sp24 != 2))) {
        __glSetError(0x501, 2, (s32) arg7, arg0);
    } else if (__glkonim_IglooInterfaceSGIX(0x1C1, arg0, sp38, arg4, arg0, (f32) fparg1, (f32) fparg2, (f32) fparg5, (f32) fparg6, (s32) sp30, arg_sp4, (f32) arg_sp8, (f32) arg_sp10, arg_sp1C, arg_sp24) == 0) {
        var_a5 = arg_sp2C;
        var_a6 = 0;
        var_a3 = 0;
        do {
            var_a6 += 1;
            var_a0 = var_a5;
            var_a5 += sp38 * 8;
loop_8:
            *(f64 *)0x4000 = second half of f64;
            *(void *)0x4000 = (f64) var_a0->unk8;
            *(void *)0x4000 = (f64) var_a0->unk10;
            temp_t3 = (arg_sp1C * 8) + var_a0;
            *(void *)0x4000 = (f64) temp_t3->unk0;
            *(void *)0x4000 = (f64) temp_t3->unk8;
            var_a3 += 1;
            var_a0 += sp30 * 8;
            *(void *)0x4000 = (f64) (second half of f64);
            if (var_a3 != 2) {
                goto loop_8;
            }
            var_a3 = 0;
        } while (var_a6 != 2);
    }
}

/*
Decompilation failure in function lcDeformationMap3:

Unable to determine jump table for jr instruction at kon_deform.s line 525.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glkonlc_DeformationMap3fSGIX(s32 arg_sp4, f32 arg_sp8, s32 arg_sp10, s32 arg_sp1C, s32 arg_sp24, s32 arg_sp2C) {
    __glkonim_DeformationMap3dSGIX(arg_sp4, (s64) arg_sp8, arg_sp10, (s64) arg_sp1C, (bitwise f64) arg_sp24, (bitwise f64) arg_sp2C, 5e-324);
}

void __glkonlc_DeformationMap3dSGIX(f64 fparg1, f64 fparg2, f64 fparg5, f64 fparg6, s32 arg_sp4, f64 arg_sp8, f64 arg_sp10, s32 arg_sp1C, s32 arg_sp24, s32 arg_sp2C) {
    __glkonim_DeformationMap3dSGIX((bitwise s32) (f32) fparg1, (bitwise s64) (f32) fparg2, (bitwise s32) (f32) fparg5, (bitwise s64) (f32) fparg6, (bitwise f64) arg_sp4, (f64) (f32) arg_sp8, (f64) (f32) arg_sp10, (bitwise f64) arg_sp1C, arg_sp24, (bitwise f64) arg_sp2C, 0.0);
}

void __glkonim_DeformSGIX(s32 arg0) {
    if (arg0 & ~3) {
        __glSetError(0x501);
        return;
    }
    *(s32 *)0x4000 = 0x1BF;
    *(void *)0x4000 = arg0;
}

void __glkonlc_DeformSGIX(s64 arg0) {
    s64 sp10;
    s32 var_a3;
    void *temp_a1;

    if (arg0 & ~3) {
        __glsplc_InvalidValue();
        return;
    }
    var_a3 = *(s32 *)0x1028;
    if (var_a3 < 2) {
        sp10 = arg0;
        var_a3 = __glSPDlistSpace(0, var_a3);
    }
    temp_a1 = *(void **)0x1030;
    temp_a1->unk0 = 0x1BF;
    temp_a1->unk4 = (s32) arg0;
    *(void *)0x1030 = (void *) (temp_a1 + 8);
    *(void *)0x1028 = (s32) (var_a3 - 2);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 2);
}

void __glkonim_LoadIdentityDeformationMapSGIX(s32 arg0) {
    *(s32 *)0x4000 = 0x1C3;
    *(void *)0x4000 = (s32) (arg0 & 3);
}

void __glkonlc_LoadIdentityDeformationMapSGIX(s32 arg0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a6;

    temp_a2 = *(s32 *)0x1028;
    temp_a1 = arg0 & 3;
    if (temp_a2 >= 2) {
        temp_a0 = *(void **)0x1030;
        temp_a0->unk0 = 0x1C3;
        temp_a0->unk4 = temp_a1;
        *(void *)0x1030 = (void *) (temp_a0 + 8);
        *(void *)0x1028 = (s32) (temp_a2 - 2);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 2);
        return;
    }
    temp_v0 = __glSPDlistSpace(0, temp_a1, temp_a2, 0x1C3);
    temp_a6 = *(void *)0x1030;
    temp_a6->unk0 = 0x1C3;
    temp_a6->unk4 = (s32) (arg0 & 3);
    *(void *)0x1030 = (void *) (temp_a6 + 8);
    *(void *)0x1028 = (s32) (temp_v0 - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

s32 getDeformationf(s32 arg0, s32 arg1, s64 arg2) {
    s32 temp_f4;
    s32 temp_f5;
    s32 temp_f6;
    s32 temp_lo;
    s32 var_v0;
    void *temp_v0;

    unksp8 = arg2;
    temp_v0 = __glkon_get_special(0x1C6, arg0);
    temp_f5 = (s32) temp_v0->unk4;
    temp_f6 = (s32) temp_v0->unk0;
    temp_f4 = (s32) temp_v0->unk-4;
    switch (arg1) {                                 /* irregular */
    default:
        __glSetError(0x500, 0xA01, (s32) arg2);
        var_v0 = 0;
        return var_v0;
    case 0xA01:
        arg2->unk8 = (f32) temp_f5;
        arg2->unk4 = (f32) temp_f6;
        arg2->unk0 = (f32) temp_f4;
        return 3;
    case 0xA00:
        temp_lo = temp_f6 * (temp_f4 * temp_f5);
        bcopy(temp_v0 + 0x20, unksp8, temp_lo * 0xC);
        return temp_lo * 3;
    case 0xA02:
        M2C_ERROR(/* Read from unset register $t9 */)(temp_v0 + 8, unksp8, 0x18);
        var_v0 = 6;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return var_v0;
    }
}

void __glkon_GetDeformationf(void) {
    __glkonlc_LoadIdentityDeformationMapSGIX();
}

f64 __glkon_GetDeformationd(void *arg2) {
    f32 *var_a3;
    f64 temp_f1;
    f64 var_f0;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a4;
    s32 var_v0;
    void *var_a2_2;
    void *var_s0;
    void temp_ret;

    var_s0 = arg2;
    temp_ret = __glkonlc_LoadIdentityDeformationMapSGIX((s32) sp);
    temp_v0 = temp_ret;
    var_f0 = (bitwise f64) temp_ret;
    var_a4 = temp_v0;
    if (temp_v0 != 0) {
        var_a2 = temp_v0 & 3;
        var_a3 = sp;
        if (var_a2 != 0) {
            do {
                var_a2 -= 1;
                var_a4 -= 1;
                var_s0 += 8;
                var_f0 = (f64) *var_a3;
                var_a3 += 4;
                var_s0->unk-8 = var_f0;
            } while (var_a2 != 0);
        }
        var_a2_2 = var_s0;
        var_v0 = var_a4;
        if ((temp_v0 >> 2) != 0) {
            do {
                var_a2_2->unk0 = (f64) var_a3->unk0;
                var_a2_2->unk8 = (f64) var_a3->unk4;
                var_a2_2->unk10 = (f64) var_a3->unk8;
                var_v0 -= 4;
                var_a2_2 += 0x20;
                temp_f1 = (f64) var_a3->unkC;
                var_f0 = second half of f64;
                var_a3 += 0x10;
                var_a2_2->unk-8 = temp_f1;
            } while (var_v0 != 0);
        }
    }
    return var_f0;
}

void __glkon_GetDeformationi(void *arg2) {
    f32 *var_a3;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a4;
    s32 var_v0;
    void *var_a2_2;
    void *var_s0;

    var_s0 = arg2;
    temp_v0 = __glkonlc_LoadIdentityDeformationMapSGIX((s32) sp);
    var_a4 = temp_v0;
    if (temp_v0 != 0) {
        var_a2 = temp_v0 & 3;
        var_a3 = sp;
        if (var_a2 != 0) {
            do {
                var_a2 -= 1;
                var_a4 -= 1;
                var_s0 += 4;
                temp_f0 = (s32) *var_a3;
                var_a3 += 4;
                var_s0->unk-4 = temp_f0;
            } while (var_a2 != 0);
        }
        var_a2_2 = var_s0;
        var_v0 = var_a4;
        if ((temp_v0 >> 2) != 0) {
            do {
                var_a2_2->unk0 = (s32) var_a3->unk0;
                var_a2_2->unk4 = (s32) var_a3->unk4;
                var_a2_2->unk8 = (s32) var_a3->unk8;
                var_v0 -= 4;
                var_a2_2 += 0x10;
                temp_f1 = (s32) var_a3->unkC;
                var_a3 += 0x10;
                var_a2_2->unk-4 = temp_f1;
            } while (var_v0 != 0);
        }
    }
}
