s32 __glSPDlistSpace(?, s32);                       /* extern */
? __glSetError(?, s32, ?);                          /* extern */
? __glsplc_InvalidEnum(s32);                        /* extern */
? __glsplc_InvalidValue();                          /* extern */

void __glkonim_PointParameterfSGIS(s32 arg0, f32 fparg1) {
    switch (arg0) {                                 /* irregular */
    default:
        __glSetError(0x500);
        return;
    case 0x8128:
        /* fallthrough */
    case 0x8126:
        if (!(fparg1 < 0.0f)) {
            *(s32 *)0x4000 = 0x1A7;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (bitwise s32) fparg1;
            return;
        }
        __glSetError(0x501, 0x1A7);
        break;
    case 0x8127:
        if (!(fparg1 <= 0.0f)) {
            *(void *)0x4000 = 0x1A7;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (s32) M2C_ERROR(/* unknown instruction: movf.s $f2, $f13, $fcc2 */);
            return;
        }
        __glSetError(0x501, 0x1A7);
        break;
    }
}

void __glkonim_PointParameterfvSGIS(s32 arg0, void *arg1, s32 arg2) {
    s32 temp_f4;
    s32 var_a2;

    var_a2 = arg2;
    if (arg0 != 0x8127) {
        if ((arg0 != 0x8126) && (var_a2 = 0x8129, (arg0 != 0x8128))) {
            if (arg0 != 0x8129) {
                __glSetError(0x500, 0x8129, 0x1A8);
            } else {
                *(s32 *)0x4000 = 0x1A8;
                *(void *)0x4000 = arg0;
                *(void *)0x4000 = (s32) arg1->unk0;
                *(void *)0x4000 = (s32) arg1->unk4;
                *(void *)0x4000 = (s32) arg1->unk8;
            }
        } else {
            temp_f4 = arg1->unk0;
            if (!((bitwise f32) temp_f4 < 0.0f)) {
                *(void *)0x4000 = 0x1A7;
                *(void *)0x4000 = arg0;
                *(void *)0x4000 = temp_f4;
                return;
            }
            __glSetError(0x501, var_a2, 0x1A7);
        }
    } else {
        if (!((bitwise f32) arg1->unk0 <= 0.0f)) {
            *(void *)0x4000 = 0x1A7;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (s32) M2C_ERROR(/* unknown instruction: movf.s $f6, $f4, $fcc2 */);
            return;
        }
        __glSetError(0x501, 0x1A7);
    }
}

void __glkonlc_PointParameterfSGIS(s32 arg0, f32 fparg1) {
    s32 temp_a1;
    s32 temp_a6;
    s32 var_a0;
    s32 var_a0_2;
    void *temp_a4;
    void *temp_t1;

    switch (arg0) {                                 /* irregular */
    default:
        __glsplc_InvalidEnum(0x8128);
        return;
    case 0x8126:
        /* fallthrough */
    case 0x8128:
        if (!(fparg1 < 0.0f)) {
            var_a0 = *(s32 *)0x1028;
            temp_a1 = var_a0 < 3;
            if (temp_a1 != 0) {
                unksp10 = (bitwise f64) fparg1;
                var_a0 = __glSPDlistSpace(0, temp_a1);
            }
            temp_a4 = *(void **)0x1030;
            temp_a4->unk0 = 0x1A7;
            temp_a4->unk4 = arg0;
            temp_a4->unk8 = fparg1;
            *(void *)0x1030 = (void *) (temp_a4 + 0xC);
            *(void *)0x1028 = (s32) (var_a0 - 3);
            *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x8128);
        break;
    case 0x8127:
        if (!(fparg1 <= 0.0f)) {
            var_a0_2 = *(void *)0x1028;
            temp_a6 = var_a0_2 < 3;
            if (temp_a6 != 0) {
                unksp10 = (bitwise f64) fparg1;
                var_a0_2 = __glSPDlistSpace(0, temp_a6);
            }
            temp_t1 = *(void *)0x1030;
            temp_t1->unk4 = arg0;
            temp_t1->unk0 = 0x1A7;
            temp_t1->unk8 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f2, $f4, $fcc2 */);
            *(void *)0x1030 = (void *) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) (var_a0_2 - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)();
        break;
    }
}

void __glkonlc_PointParameterfvSGIS(s32 arg0, s64 arg1) {
    s64 sp18;
    f64 sp10;
    f64 temp_f5;
    s32 temp_a2;
    s32 temp_a7;
    s32 temp_s0;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    void *temp_a5;
    void *temp_t2;
    void *temp_v0;

    var_a0 = arg0;
    temp_s0 = var_a0;
    if (var_a0 != 0x8127) {
        if ((var_a0 != 0x8126) && (var_a0 = 0x8129, (var_a0 != 0x8128))) {
            if (temp_s0 != 0x8129) {
                __glsplc_InvalidEnum(0x8129);
            } else {
                var_a0_2 = *(s32 *)0x1028;
                temp_a2 = var_a0_2 < 5;
                if (temp_a2 != 0) {
                    sp18 = arg1;
                    var_a0_2 = __glSPDlistSpace(0, temp_a2);
                }
                temp_a5 = *(void **)0x1030;
                temp_a5->unk4 = temp_s0;
                temp_a5->unk0 = 0x1A8;
                temp_a5->unk8 = (f32) arg1->unk0;
                temp_a5->unkC = (f32) arg1->unk4;
                temp_a5->unk10 = (f32) arg1->unk8;
                *(void *)0x1030 = (void *) (temp_a5 + 0x14);
                *(void *)0x1028 = (s32) (var_a0_2 - 5);
                *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 5);
            }
        } else {
            if (!(arg1->unk0 < 0.0f)) {
                var_a0_3 = *(void *)0x1028;
                temp_a7 = var_a0_3 < 3;
                if (temp_a7 != 0) {
                    sp18 = arg1;
                    var_a0_3 = __glSPDlistSpace(0, temp_a7);
                }
                temp_t2 = *(void *)0x1030;
                temp_t2->unk4 = temp_s0;
                temp_t2->unk0 = 0x1A7;
                temp_t2->unk8 = (f32) arg1->unk0;
                *(void *)0x1030 = (void *) (temp_t2 + 0xC);
                *(void *)0x1028 = (s32) (var_a0_3 - 3);
                *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
                return;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(var_a0);
        }
    } else if (!(arg1->unk0 <= 0.0f)) {
        var_a0_4 = *(void *)0x1028;
        temp_f5 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f4, $fcc2 */);
        if (var_a0_4 < 3) {
            sp10 = temp_f5;
            var_a0_4 = __glSPDlistSpace(0);
        }
        temp_v0 = *(void *)0x1030;
        temp_v0->unk0 = 0x1A7;
        temp_v0->unk4 = temp_s0;
        temp_v0->unk8 = (bitwise f32) temp_f5;
        *(void *)0x1030 = (void *) (temp_v0 + 0xC);
        *(void *)0x1028 = (s32) (var_a0_4 - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
    } else {
        __glsplc_InvalidValue();
    }
}
