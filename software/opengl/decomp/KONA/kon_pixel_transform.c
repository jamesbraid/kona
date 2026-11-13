s32 __glPixelTransformParameterfvSGI_size(s32);     /* extern */
? __glSetError(?, s32, s32, void *, s32, ?);        /* extern */
void __glkonim_PixelTransformParameterfvSGI(f32 *arg0, s32 arg1, void *arg2, s32 arg6, ?); /* static */

void __glkonim_PixelTransformSGI(s32 arg0) {
    if ((arg0 != 0x81C5) && (arg0 != 0x81C6)) {
        __glSetError(0x500);
        return;
    }
    *(s32 *)0x4000 = 0x135;
    *(void *)0x4000 = arg0;
    (*(void **)0x1010)->unk564 = arg0;
}

void __glkonim_PixelTransformParameterfSGI(s32 arg0, s32 arg1, void *arg4, f32 fparg2) {
    f32 sp20;
    void *var_a4;

    var_a4 = arg4;
    sp20 = fparg2;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != 0x8010) && (var_a4 = (void *)0x8012, (arg0 != 0x8011)) && (arg0 != 0x8012)) {
            if (arg0 != 0x81C6) {
                __glSetError(0x500, 0x8010, 0x8011, (void *)0x8012, 0x81C6, 0x8013);
            } else {
                goto block_9;
            }
        } else if (arg1 != 0x8013) {
            __glSetError(0x500, 0x8010, 0x8011, var_a4, 0x81C6, 0x8013);
        } else {
block_9:
            __glkonim_PixelTransformParameterfvSGI(&sp20, 0x8011, var_a4, 0x81C6, 0x8013);
        }
    } else {
        __glSetError(0x502, 0x81C6, 0x8013);
    }
}

void __glkonim_PixelTransformParameterfvSGI(s32 arg0, s32 arg1, void *arg2, s32 arg6) {
    s32 temp_a4;
    s32 temp_f5;
    s32 var_a6;
    void *var_a5;

    var_a6 = arg6;
    temp_a4 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x8010) {
            var_a6 = 0x8012;
            if (arg0 != 0x8011) {
                var_a5 = temp_a4 + 0x3A8;
                if (arg0 != 0x8012) {
                    if (arg0 != 0x81C6) {
                        __glSetError(0x500, 0x8010, temp_a4, var_a5, 0x8012, 0x81C6);
                    } else if ((arg1 != 0x81C9) && (arg1 != 0x81CA)) {
                        __glSetError(0x500, 0x8010, temp_a4, var_a5, 0x8012, 0x81C6);
                    } else {
                        *(s32 *)0x4000 = 0xF8;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = arg1;
                        *(void *)0x4000 = (s32) arg2->unk0;
                    }
                } else {
                    goto block_11;
                }
            } else {
                var_a5 = temp_a4 + 0x354;
                goto block_11;
            }
        } else {
            var_a5 = temp_a4 + 0x300;
block_11:
            switch (arg1) {                         /* irregular */
            default:
                __glSetError(0x500, 0xF9, temp_a4, var_a5, var_a6);
                break;
            case 0x8015:
                var_a5->unk20 = (f32) arg2->unk0;
                *(void *)0x4000 = 0xF9;
                var_a5->unk24 = (s32) arg2->unk4;
                *(void *)0x4000 = arg0;
                var_a5->unk28 = (s32) arg2->unk8;
                *(void *)0x4000 = arg1;
                var_a5->unk2C = (s32) arg2->unkC;
                *(void *)0x4000 = (bitwise s32) arg2->unk0;
                *(void *)0x4000 = (s32) arg2->unk4;
                *(void *)0x4000 = (s32) arg2->unk8;
                *(void *)0x4000 = (s32) arg2->unkC;
                return;
            case 0x8013:
                temp_f5 = (s32) arg2->unk0;
                if (temp_f5 != 0x8016) {
                    __glSetError(0x500, 0xF9, 0x8016, var_a5, temp_f5, 0xF8);
                } else {
                    *(void *)0x4000 = 0xF8;
                    var_a5->unk4 = 0x8016;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = arg1;
                    *(void *)0x4000 = (s32) arg2->unk0;
                    return;
                }
                break;
            case 0x8014:
                *(void *)0x4000 = 0xF9;
                var_a5->unk10 = (f32) arg2->unk0;
                *(void *)0x4000 = arg0;
                var_a5->unk14 = (s32) arg2->unk4;
                *(void *)0x4000 = arg1;
                var_a5->unk18 = (s32) arg2->unk8;
                var_a5->unk1C = (s32) arg2->unkC;
                *(void *)0x4000 = (bitwise s32) arg2->unk0;
                *(void *)0x4000 = (s32) arg2->unk4;
                *(void *)0x4000 = (s32) arg2->unk8;
                *(void *)0x4000 = (s32) arg2->unkC;
                return;
            }
        }
    } else {
        __glSetError(0x502, temp_a4);
    }
}

void __glkonim_PixelTransformParameteriSGI(s32 arg2) {
    __glkonim_PixelTransformParameterfSGI((bitwise s32) (f32) arg2);
}

void __glkonim_PixelTransformParameterivSGI(s64 arg0, s32 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;
    f32 temp_f0;
    f32 temp_f1;
    s32 temp_v0;
    s32 var_a6;
    s64 var_a2;
    void *var_v0;

    sp10 = arg2;
    sp18 = arg0;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glPixelTransformParameterfvSGI_size(arg1);
        if (temp_v0 >= 0) {
            if (temp_v0 > 0) {
                var_a6 = temp_v0 & 3;
                var_a2 = sp10;
                var_v0 = sp;
                if (var_a6 != 0) {
                    do {
                        temp_f0 = (f32) *var_a2;
                        var_a6 -= 1;
                        var_v0 += 4;
                        var_a2 += 4;
                        var_v0->unk-4 = temp_f0;
                    } while (var_a6 != 0);
                }
                if ((temp_v0 >> 2) != 0) {
                    do {
                        var_v0->unk0 = (f32) var_a2->unk0;
                        var_v0->unk4 = (f32) var_a2->unk4;
                        var_v0->unk8 = (f32) var_a2->unk8;
                        temp_f1 = (f32) var_a2->unkC;
                        var_a2 += 0x10;
                        var_v0 += 0x10;
                        var_v0->unk-4 = temp_f1;
                    } while (var_a2 != ((temp_v0 * 4) + sp10));
                }
            }
            __glkonim_PixelTransformParameterfvSGI((f32 *) sp18, arg1, sp);
        } else {
            __glSetError(0x500, temp_v0);
        }
    } else {
        __glSetError(0x502);
    }
}

/*
Decompilation failure in function GetPixelTransformParameterfvSGI:

Unable to determine jump table for jr instruction at kon_pixel_transform.s line 580.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glkonim_GetPixelTransformParameterfvSGI(void) {
    __glkonim_PixelTransformParameterivSGI();
}

void __glkonim_GetPixelTransformParameterivSGI(s64 arg2) {
    s64 sp10;
    f32 *var_a2;
    f32 temp_f1;
    s32 temp_f0;
    s32 temp_v0;
    s32 var_a4;
    s64 var_v0;

    sp10 = arg2;
    temp_v0 = __glkonim_PixelTransformParameterivSGI((s64) sp);
    if (temp_v0 > 0) {
        var_a4 = temp_v0 & 3;
        var_a2 = sp;
        var_v0 = sp10;
        if (var_a4 != 0) {
            do {
                var_a4 -= 1;
                var_v0 += 4;
                temp_f0 = (s32) *var_a2;
                var_a2 += 4;
                var_v0->unk-4 = temp_f0;
            } while (var_a4 != 0);
        }
        if ((temp_v0 >> 2) != 0) {
            do {
                var_v0->unk0 = (s32) var_a2->unk0;
                var_v0->unk4 = (s32) var_a2->unk4;
                var_v0->unk8 = (s32) var_a2->unk8;
                temp_f1 = var_a2->unkC;
                var_a2 += 0x10;
                var_v0 += 0x10;
                var_v0->unk-4 = (s32) temp_f1;
            } while (var_a2 != ((temp_v0 * 4) + sp));
        }
    }
}
