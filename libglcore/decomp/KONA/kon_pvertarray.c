s32 __glSPDlistSpace(?, s32);                       /* extern */
? __glkon_pvarray_funcs(s32, s64, s64);             /* extern */
? __glkon_pvarray_lfuncs(s32, s32, s64);            /* extern */
? glBegin(s32, s32, void *, s32, ?);                /* extern */
? glEnd();                                          /* extern */

void __glKonSendPackedVertex(s32 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;

    *(s32 *)0x4000 = 0x1B7;
    *(void *)0x4000 = arg3;
    sp18 = (s64) arg3;
    sp20 = arg2;
    sp28 = arg1;
    *(void *)0x4000 = (s32) ((arg3 >> 0x10) & 0xFF);
    glBegin();
    __glkon_pvarray_funcs(arg0, arg1, arg2);
    glEnd();
    *(void *)0x4000 = 0x1CF;
    *(void *)0x4000 = 0;
}

void __glKonlSendPackedVertex(s32 arg0, s32 arg1, s64 arg2, s32 arg3) {
    s32 temp_a1;
    s32 temp_a3;
    s32 var_a0;
    s32 var_a6;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_a2_2;

    unksp20 = arg2;
    var_a6 = *(s32 *)0x1028;
    if (var_a6 < 3) {
        var_a6 = __glSPDlistSpace(0, var_a6);
    }
    temp_a2 = *(void **)0x1030;
    temp_a2->unk0 = 0x1B7;
    temp_a2->unk4 = arg3;
    temp_a3 = (arg3 >> 0x10) & 0xFF;
    temp_a2->unk8 = temp_a3;
    temp_a2_2 = temp_a2 + 0xC;
    *(void *)0x1030 = temp_a2_2;
    temp_a1 = var_a6 - 3;
    *(void *)0x1028 = temp_a1;
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
    glBegin(arg0, temp_a1, temp_a2_2, temp_a3, 0x1B7);
    __glkon_pvarray_lfuncs(arg0, arg1, unksp20);
    glEnd();
    var_a0 = *(void *)0x1028;
    if (var_a0 < 2) {
        var_a0 = M2C_ERROR(/* Read from unset register $t9 */)(0);
    }
    temp_a1_2 = *(void *)0x1030;
    temp_a1_2->unk0 = 0x1CF;
    temp_a1_2->unk4 = 0;
    *(void *)0x1030 = (void *) (temp_a1_2 + 8);
    *(void *)0x1028 = (s32) (var_a0 - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}
