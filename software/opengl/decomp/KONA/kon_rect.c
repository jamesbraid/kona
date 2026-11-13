s32 __glSPDlistSpace(?, s32);                       /* extern */
? glVertex2d(f64, f64);                             /* extern */
? glVertex2f(f32, f32);                             /* extern */
? glVertex2i(s32, s32);                             /* extern */
? glVertex2s(s16, s16);                             /* extern */

void __glkonim_Rectd(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0x16;
    glVertex2d();
    glVertex2d(second half of f64, fparg1);
    glVertex2d(second half of f64, fparg3);
    glVertex2d(second half of f64, fparg3);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Rectdv(void *arg0, void *arg1) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0x16;
    glVertex2d(arg0->unk0, second half of f64);
    glVertex2d(arg1->unk0, second half of f64);
    glVertex2d(arg1->unk0, second half of f64);
    glVertex2d(arg0->unk0, second half of f64);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Rectf(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0xE;
    glVertex2f();
    glVertex2f(fparg2, fparg1);
    glVertex2f(fparg2, fparg3);
    glVertex2f(fparg0, fparg3);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Rectfv(void *arg0, void *arg1) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0xE;
    glVertex2f(arg0->unk0, arg0->unk4);
    glVertex2f(arg1->unk0, arg0->unk4);
    glVertex2f(arg1->unk0, arg1->unk4);
    glVertex2f(arg0->unk0, arg1->unk4);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Recti(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0xE;
    glVertex2i();
    glVertex2i(arg2, arg1);
    glVertex2i(arg2, arg3);
    glVertex2i(arg0, arg3);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Rectiv(void *arg0, void *arg1) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0xE;
    glVertex2i(arg0->unk0, arg0->unk4);
    glVertex2i(arg1->unk0, arg0->unk4);
    glVertex2i(arg1->unk0, arg1->unk4);
    glVertex2i(arg0->unk0, arg1->unk4);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Rects(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0xA;
    glVertex2s();
    glVertex2s(arg2, arg1);
    glVertex2s(arg2, arg3);
    glVertex2s(arg0, arg3);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Rectsv(void *arg0, void *arg1) {
    *(s32 *)0x4000 = 3;
    *(void *)0x4000 = 0xA;
    glVertex2s(arg0->unk0, arg0->unk2);
    glVertex2s(arg1->unk0, arg0->unk2);
    glVertex2s(arg1->unk0, arg1->unk2);
    glVertex2s(arg0->unk0, arg1->unk2);
    *(void *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonlc_Rectd(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    f64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 var_a2;
    void *temp_a0;

    var_a2 = *(s32 *)0x1028;
    var_f6 = fparg3;
    var_f4 = fparg1;
    var_f5 = second half of f64;
    if (var_a2 < 0x18) {
        sp50 = fparg3;
        sp58 = fparg2;
        sp60 = fparg1;
        var_f5 = sp58;
        var_f4 = second half of f64;
        var_f6 = sp50;
        var_a2 = __glSPDlistSpace(0, var_a2);
    }
    sp30 = fparg0;
    sp0 = fparg0;
    sp38 = var_f6;
    sp8 = var_f4;
    sp28 = var_f6;
    sp20 = var_f5;
    sp18 = var_f4;
    sp10 = var_f5;
    temp_a0 = *(void **)0x1030;
    temp_a0->unk8 = 0x8B;
    temp_a0->unk18 = unkspC;
    temp_a0->unk1C = 0x8B;
    temp_a0->unk20 = (bitwise s32) sp10;
    temp_a0->unk24 = unksp14;
    temp_a0->unk28 = (bitwise s32) sp18;
    temp_a0->unk2C = unksp1C;
    temp_a0->unk30 = 0x8B;
    temp_a0->unk34 = (bitwise s32) sp20;
    temp_a0->unk38 = unksp24;
    temp_a0->unk3C = (bitwise s32) sp28;
    temp_a0->unk40 = unksp2C;
    temp_a0->unk44 = 0x8B;
    temp_a0->unk14 = (bitwise s32) sp8;
    temp_a0->unk58 = 0x71;
    temp_a0->unk5C = 0;
    temp_a0->unk10 = unksp4;
    temp_a0->unkC = (bitwise s32) sp0;
    temp_a0->unk4 = 0x16;
    temp_a0->unk0 = 3;
    temp_a0->unk48 = (bitwise s32) sp30;
    temp_a0->unk4C = unksp34;
    temp_a0->unk50 = (bitwise s32) sp38;
    temp_a0->unk54 = unksp3C;
    *(void *)0x1030 = (void *) (temp_a0 + 0x60);
    *(void *)0x1028 = (s32) (var_a2 - 0x18);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0x18);
}

void __glkonlc_Rectdv(void *arg0, void *arg1) {
    s64 sp50;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    s32 var_a4;
    void *temp_a0;

    var_a4 = *(s32 *)0x1028;
    if (var_a4 < 0x18) {
        sp50 = (s64) arg1;
        var_a4 = __glSPDlistSpace(0, var_a4);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk0 = 3;
    temp_a0->unk8 = 0x8B;
    temp_a0->unk4 = 0x16;
    sp0 = arg0->unk0;
    temp_a0->unk10 = unksp4;
    temp_a0->unkC = (s32) sp0;
    temp_a0->unk1C = 0x8B;
    sp8 = arg0->unk8;
    temp_a0->unk18 = unkspC;
    temp_a0->unk14 = (s32) sp8;
    sp10 = arg1->unk0;
    temp_a0->unk24 = unksp14;
    temp_a0->unk20 = (s32) sp10;
    temp_a0->unk30 = 0x8B;
    sp18 = arg0->unk8;
    temp_a0->unk2C = unksp1C;
    temp_a0->unk28 = (s32) sp18;
    sp20 = arg1->unk0;
    temp_a0->unk38 = unksp24;
    temp_a0->unk34 = (s32) sp20;
    temp_a0->unk44 = 0x8B;
    sp28 = arg1->unk8;
    temp_a0->unk40 = unksp2C;
    temp_a0->unk3C = (s32) sp28;
    sp30 = arg0->unk0;
    temp_a0->unk4C = unksp34;
    temp_a0->unk48 = (s32) sp30;
    temp_a0->unk58 = 0x71;
    temp_a0->unk5C = 0;
    sp38 = arg1->unk8;
    temp_a0->unk50 = (s32) sp38;
    temp_a0->unk54 = unksp3C;
    *(void *)0x1030 = (void *) (temp_a0 + 0x60);
    *(void *)0x1028 = (s32) (var_a4 - 0x18);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0x18);
}

void __glkonlc_Rectf(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    s32 var_a2;
    void *temp_a0;

    var_a2 = *(s32 *)0x1028;
    var_f6 = fparg3;
    var_f5 = fparg2;
    var_f4 = fparg1;
    if (var_a2 < 0x10) {
        sp10 = (f64) fparg3;
        sp18 = (f64) fparg2;
        sp20 = (f64) fparg1;
        var_f5 = (f32) sp18;
        var_f4 = second half of f64;
        var_f6 = (f32) sp10;
        var_a2 = __glSPDlistSpace(0, var_a2);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk0 = 3;
    temp_a0->unk4 = 0xE;
    temp_a0->unk8 = 0x8C;
    temp_a0->unkC = fparg0;
    temp_a0->unk10 = var_f4;
    temp_a0->unk14 = 0x8C;
    temp_a0->unk18 = var_f5;
    temp_a0->unk1C = var_f4;
    temp_a0->unk20 = 0x8C;
    temp_a0->unk24 = var_f5;
    temp_a0->unk28 = var_f6;
    temp_a0->unk2C = 0x8C;
    temp_a0->unk30 = fparg0;
    temp_a0->unk34 = var_f6;
    temp_a0->unk38 = 0x71;
    temp_a0->unk3C = 0;
    *(void *)0x1030 = (void *) (temp_a0 + 0x40);
    *(void *)0x1028 = (s32) (var_a2 - 0x10);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0x10);
}

void __glkonlc_Rectfv(void *arg0, void *arg1) {
    s64 sp10;
    s32 var_a4;
    void *temp_a0;

    var_a4 = *(s32 *)0x1028;
    if (var_a4 < 0x10) {
        sp10 = (s64) arg1;
        var_a4 = __glSPDlistSpace(0, var_a4);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk8 = 0x8C;
    temp_a0->unk4 = 0x16;
    temp_a0->unk0 = 3;
    temp_a0->unkC = (f32) arg0->unk0;
    temp_a0->unk14 = 0x8C;
    temp_a0->unk10 = (f32) arg0->unk4;
    temp_a0->unk18 = (f32) arg1->unk0;
    temp_a0->unk20 = 0x8C;
    temp_a0->unk1C = (f32) arg0->unk4;
    temp_a0->unk24 = (f32) arg1->unk0;
    temp_a0->unk2C = 0x8C;
    temp_a0->unk28 = (f32) arg1->unk4;
    temp_a0->unk30 = (f32) arg0->unk0;
    temp_a0->unk38 = 0x71;
    temp_a0->unk3C = 0;
    temp_a0->unk34 = (f32) arg1->unk4;
    *(void *)0x1030 = (void *) (temp_a0 + 0x40);
    *(void *)0x1028 = (s32) (var_a4 - 0x10);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0x10);
}

void __glkonlc_Recti(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 var_a6;
    void *temp_a0;

    var_a6 = *(s32 *)0x1028;
    if (var_a6 < 0x10) {
        sp10 = (s64) arg3;
        sp18 = (s64) arg2;
        sp20 = (s64) arg1;
        var_a6 = __glSPDlistSpace(0, var_a6);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk0 = 3;
    temp_a0->unk4 = 0xE;
    temp_a0->unk8 = 0x8D;
    temp_a0->unkC = arg0;
    temp_a0->unk14 = 0x8D;
    temp_a0->unk18 = arg2;
    temp_a0->unk20 = 0x8D;
    temp_a0->unk24 = arg2;
    temp_a0->unk28 = arg3;
    temp_a0->unk2C = 0x8D;
    temp_a0->unk30 = arg0;
    temp_a0->unk34 = arg3;
    temp_a0->unk10 = arg1;
    temp_a0->unk1C = arg1;
    temp_a0->unk38 = 0x71;
    temp_a0->unk3C = 0;
    *(void *)0x1030 = (void *) (temp_a0 + 0x40);
    *(void *)0x1028 = (s32) (var_a6 - 0x10);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0x10);
}

void __glkonlc_Rectiv(void *arg0, void *arg1) {
    s64 sp10;
    s32 var_a4;
    void *temp_a0;

    var_a4 = *(s32 *)0x1028;
    if (var_a4 < 0x10) {
        sp10 = (s64) arg1;
        var_a4 = __glSPDlistSpace(0, var_a4);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk8 = 0x8D;
    temp_a0->unk4 = 0x16;
    temp_a0->unk0 = 3;
    temp_a0->unkC = (s32) arg0->unk0;
    temp_a0->unk14 = 0x8D;
    temp_a0->unk10 = (s32) arg0->unk4;
    temp_a0->unk18 = (s32) arg1->unk0;
    temp_a0->unk20 = 0x8D;
    temp_a0->unk1C = (s32) arg0->unk4;
    temp_a0->unk24 = (s32) arg1->unk0;
    temp_a0->unk2C = 0x8D;
    temp_a0->unk28 = (s32) arg1->unk4;
    temp_a0->unk30 = (s32) arg0->unk0;
    temp_a0->unk38 = 0x71;
    temp_a0->unk3C = 0;
    temp_a0->unk34 = (s32) arg1->unk4;
    *(void *)0x1030 = (void *) (temp_a0 + 0x40);
    *(void *)0x1028 = (s32) (var_a4 - 0x10);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0x10);
}

void __glkonlc_Rects(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 var_a6;
    void *temp_a0;

    var_a6 = *(s32 *)0x1028;
    if (var_a6 < 0xC) {
        sp10 = arg3;
        sp18 = arg2;
        sp20 = arg1;
        var_a6 = __glSPDlistSpace(0, var_a6);
    }
    temp_a0 = *(void **)0x1030;
    temp_a4 = (arg0 << 0x10) | 0x8E;
    temp_a0->unk8 = temp_a4;
    temp_a0->unk0 = 3;
    temp_a7 = arg1 << 0x10;
    temp_a0->unkC = temp_a7;
    temp_a0->unk14 = temp_a7;
    temp_a0->unk4 = 0xE;
    temp_a2 = arg3 << 0x10;
    temp_a0->unk1C = temp_a2;
    temp_a0->unk20 = temp_a4;
    temp_a0->unk24 = temp_a2;
    temp_a0->unk28 = 0x71;
    temp_a0->unk2C = 0;
    temp_a5 = (arg2 << 0x10) | 0x8E;
    temp_a0->unk10 = temp_a5;
    temp_a0->unk18 = temp_a5;
    *(void *)0x1030 = (void *) (temp_a0 + 0x30);
    *(void *)0x1028 = (s32) (var_a6 - 0xC);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0xC);
}

void __glkonlc_Rectsv(void *arg0, void *arg1) {
    s64 sp10;
    s32 var_a4;
    void *temp_a0;

    var_a4 = *(s32 *)0x1028;
    if (var_a4 < 0xC) {
        sp10 = (s64) arg1;
        var_a4 = __glSPDlistSpace(0, var_a4);
    }
    temp_a0 = *(void **)0x1030;
    temp_a0->unk4 = 0x16;
    temp_a0->unk0 = 3;
    temp_a0->unk8 = (s32) ((arg0->unk0 << 0x10) | 0x8E);
    temp_a0->unkC = (s32) (arg0->unk2 << 0x10);
    temp_a0->unk10 = (s32) ((arg1->unk0 << 0x10) | 0x8E);
    temp_a0->unk14 = (s32) (arg0->unk2 << 0x10);
    temp_a0->unk18 = (s32) ((arg1->unk0 << 0x10) | 0x8E);
    temp_a0->unk1C = (s32) (arg1->unk2 << 0x10);
    temp_a0->unk20 = (s32) ((arg0->unk0 << 0x10) | 0x8E);
    temp_a0->unk28 = 0x71;
    temp_a0->unk2C = 0;
    temp_a0->unk24 = (s32) (arg1->unk2 << 0x10);
    *(void *)0x1030 = (void *) (temp_a0 + 0x30);
    *(void *)0x1028 = (s32) (var_a4 - 0xC);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0xC);
}
