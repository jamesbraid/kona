s32 __glSPDlistSpace(?, s32);                       /* extern */
? __glSetError(?);                                  /* extern */
? __glsplc_InvalidEnum();                           /* extern */

void __glkonim_Materiali(s32 arg0, s32 arg1, s32 arg2) {
    if (arg1 != 0x1601) {
        __glSetError(0x500);
        return;
    }
    *(s32 *)0x4000 = 0x97;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = (bitwise s32) (f32) arg2;
    *(void *)0x4000 = 0;
    *(void *)0x4000 = 0;
    *(void *)0x4000 = 0;
}

void __glkonim_Materialiv(s32 arg0, s32 arg1, void *arg2) {
    if ((arg1 != 0x1601) && (arg1 != 0x1603)) {
        *(s32 *)0x4000 = 0x97;
        *(void *)0x4000 = arg0;
        *(void *)0x4000 = arg1;
        *(void *)0x4000 = (bitwise s32) (4.656613e-10f * (f32) arg2->unk0);
        *(void *)0x4000 = (bitwise s32) (4.656613e-10f * (f32) arg2->unk4);
        *(void *)0x4000 = (bitwise s32) (4.656613e-10f * (f32) arg2->unk8);
        *(void *)0x4000 = (bitwise s32) (4.656613e-10f * (f32) arg2->unkC);
        return;
    }
    *(void *)0x4000 = 0x97;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = (bitwise s32) (f32) arg2->unk0;
    *(void *)0x4000 = (bitwise s32) (f32) arg2->unk4;
    *(void *)0x4000 = (bitwise s32) (f32) arg2->unk8;
    *(void *)0x4000 = 0;
}

void __glkonlc_Materiali(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 var_a5;
    void *temp_a2;

    if (arg1 != 0x1601) {
        __glsplc_InvalidEnum();
        return;
    }
    var_a5 = *(s32 *)0x1028;
    if (var_a5 < 7) {
        sp18 = arg1;
        sp20 = arg2;
        sp10 = arg0;
        var_a5 = __glSPDlistSpace(0, var_a5);
    }
    temp_a2 = *(void **)0x1030;
    temp_a2->unk0 = 0x97;
    temp_a2->unk4 = (s32) arg0;
    temp_a2->unk8 = (s32) arg1;
    temp_a2->unk10 = 0;
    temp_a2->unk14 = 0;
    temp_a2->unk18 = 0;
    temp_a2->unkC = (f32) arg2;
    *(void *)0x1030 = (void *) (temp_a2 + 0x1C);
    *(void *)0x1028 = (s32) (var_a5 - 7);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 7);
}

void __glkonlc_Materialiv(s32 arg0, s32 arg1, void *arg2) {
    s32 var_a5;
    void *temp_a0;

    var_a5 = *(s32 *)0x1028;
    if (var_a5 < 7) {
        var_a5 = __glSPDlistSpace(0, var_a5);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk8 = arg1;
    temp_a0->unk4 = arg0;
    temp_a0->unk0 = 0x97;
    if ((arg1 != 0x1601) && (arg1 != 0x1603)) {
        temp_a0->unkC = (f32) (4.656613e-10f * (f32) arg2->unk0);
        temp_a0->unk10 = (f32) (4.656613e-10f * (f32) arg2->unk4);
        temp_a0->unk14 = (f32) (4.656613e-10f * (f32) arg2->unk8);
        temp_a0->unk18 = (f32) (4.656613e-10f * (f32) arg2->unkC);
        *(void *)0x1030 = (void *) (temp_a0 + 0x1C);
        *(void *)0x1028 = (s32) (var_a5 - 7);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 7);
        return;
    }
    temp_a0->unkC = (f32) arg2->unk0;
    temp_a0->unk10 = (f32) arg2->unk4;
    temp_a0->unk18 = 0.0f;
    temp_a0->unk14 = (f32) arg2->unk8;
    *(void *)0x1028 = (s32) (var_a5 - 7);
    *(void *)0x1030 = (void *) (temp_a0 + 0x1C);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 7);
}
