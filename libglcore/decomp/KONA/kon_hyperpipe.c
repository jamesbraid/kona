s32 ioctl(s32, ?, void *, s32, void *);             /* extern */

void __glkon_EnableHyperpipe(void) {

}

void __glkon_DisableHyperpipe(void) {

}

void __glkon_FinishHyperpipe(void) {

}

void __glkon_InitHyperpipeState(void *arg0) {
    arg0->unk4 = 0;
}

s32 __glkon__QueryHyperpipeBestRect(void) {
    return 0;
}

s32 __glkon__QueryHyperpipeRect(void) {
    return 0;
}

s32 __glkon__QueryHyperpipeLimit(void) {
    return 0;
}

s32 __glkon__HyperpipeRect(void) {
    return 0;
}

s32 __glkon_BindHyperpipe(s32 arg1) {
    s32 sp0;
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    if (temp_a5->unkC96 != 0) {
        sp0 = arg1;
        return (ioctl(temp_a5->unk7B48, 0x2726, sp, arg1, temp_a5) == 0) ? 0 : 1;
    }
    return 1;
}

s32 __glkon_UnbindHyperpipe(s32 arg1) {
    return (ioctl((*(void **)0x1010)->unk7B48, 0x2727, sp, arg1) == 0) ? 0 : 1;
}
