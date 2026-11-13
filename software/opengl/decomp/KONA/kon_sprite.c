s32 __glSPDlistSpace(?, s32);                       /* extern */
? __glSetError(?, ?);                               /* extern */
? __glsplc_InvalidEnum(?);                          /* extern */

void __glkonim_SpriteParameterfvSGIX(s32 arg0, void *arg1) {
    s32 temp_f4;
    s32 temp_f7;

    switch (arg0) {                                 /* irregular */
    default:
        __glSetError(0x500);
        return;
    case 0x814A:
    case 0x814B:
        *(s32 *)0x4000 = 0x1A5;
        *(void *)0x4000 = arg0;
        *(void *)0x4000 = (s32) arg1->unk0;
        *(void *)0x4000 = (s32) arg1->unk4;
        *(void *)0x4000 = (s32) arg1->unk8;
        return;
    case 0x8149:
        temp_f4 = arg1->unk0;
        if (((bitwise f32) temp_f4 == 33100.0f) || ((bitwise f32) temp_f4 == 33101.0f) || ((bitwise f32) temp_f4 == 33102.0f)) {
            *(void *)0x4000 = 0x1A5;
            *(void *)0x4000 = arg0;
            temp_f7 = (s32) temp_f4;
            *(void *)0x4000 = temp_f7;
            *(void *)0x4000 = temp_f7;
            *(void *)0x4000 = temp_f7;
            return;
        }
        __glSetError(0x500, 0x1A5);
        break;
    }
}

void __glkonim_SpriteParameterivSGIX(s32 arg0, void *arg1, s32 arg2) {
    f32 sp8;
    f32 sp4;
    f32 sp0;
    s32 var_a2;
    void *var_a3;

    var_a2 = arg2;
    if (arg0 != 0x8149) {
        var_a3 = sp;
        var_a2 = arg1->unk0;
        sp0 = (f32) var_a2;
        sp4 = (f32) arg1->unk4;
        sp8 = (f32) arg1->unk8;
    } else {
        var_a3 = (void *) arg1->unk0;
        sp0 = (f32) var_a3;
    }
    __glkonim_SpriteParameterfvSGIX((s32) sp, (void *) var_a2, (s32) var_a3);
}

void __glkonlc_SpriteParameterfvSGIX(void *arg0, s64 arg1) {
    s64 sp18;
    f32 temp_f4;
    s32 temp_a2;
    s32 temp_a7;
    s32 var_a0;
    s32 var_a0_2;
    void *temp_a5;
    void *temp_t2;

    switch (arg0) {                                 /* irregular */
    default:
        __glsplc_InvalidEnum(0x814B);
        return;
    case 0x814A:
    case 0x814B:
        var_a0 = *(s32 *)0x1028;
        temp_a2 = var_a0 < 5;
        if (temp_a2 != 0) {
            sp18 = arg1;
            var_a0 = __glSPDlistSpace(0, temp_a2);
        }
        temp_a5 = *(void **)0x1030;
        temp_a5->unk4 = arg0;
        temp_a5->unk0 = 0x1A5;
        temp_a5->unk8 = (f32) arg1->unk0;
        temp_a5->unkC = (s32) arg1->unk4;
        temp_a5->unk10 = (s32) arg1->unk8;
        *(void *)0x1030 = (void *) (temp_a5 + 0x14);
        *(void *)0x1028 = (s32) (var_a0 - 5);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 5);
        return;
    case 0x8149:
        temp_f4 = arg1->unk0;
        if ((temp_f4 == 33100.0f) || (temp_f4 == 33101.0f) || (temp_f4 == 33102.0f)) {
            var_a0_2 = *(void *)0x1028;
            temp_a7 = var_a0_2 < 5;
            if (temp_a7 != 0) {
                sp18 = arg1;
                var_a0_2 = __glSPDlistSpace(0, temp_a7);
            }
            temp_t2 = *(void *)0x1030;
            temp_t2->unk4 = arg0;
            temp_t2->unk0 = 0x1A5;
            temp_t2->unk8 = (bitwise f32) (s32) arg1->unk0;
            temp_t2->unkC = (s32) arg1->unk0;
            temp_t2->unk10 = (s32) arg1->unk0;
            *(void *)0x1030 = (void *) (temp_t2 + 0x14);
            *(void *)0x1028 = (s32) (var_a0_2 - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x500);
        break;
    }
}

void __glkonlc_SpriteParameterivSGIX(s32 arg0, void *arg1, s32 arg2) {
    f32 sp8;
    f32 sp4;
    f32 sp0;
    s32 var_a2;
    void *var_a3;

    var_a2 = arg2;
    if (arg0 != 0x8149) {
        var_a3 = sp;
        var_a2 = arg1->unk0;
        sp0 = (f32) var_a2;
        sp4 = (f32) arg1->unk4;
        sp8 = (f32) arg1->unk8;
    } else {
        var_a3 = (void *) arg1->unk0;
        sp0 = (f32) var_a3;
    }
    __glkonlc_SpriteParameterfvSGIX(sp, (s64) var_a2, (s32) var_a3);
}
