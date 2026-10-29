s32 __glKon_ioctl(void *, ?, void *, s8, s8, s16, s32, s32); /* extern */

s32 __glkon_mem_alloc(s8 arg0, s8 arg1, s16 arg2, s32 arg3, s32 arg4) {
    return (__glKon_ioctl(*(void **)0x1010, 0x271A, sp, arg0, arg1, arg2, arg3, arg4) == 0) ? 0 : -1;
}

s32 __glkon_mem_realloc(s8 arg0, s8 arg1, s16 arg2, s32 arg3, s32 arg4) {
    return (__glKon_ioctl(*(void **)0x1010, 0x271E, sp, arg0, arg1, arg2, arg3, arg4) == 0) ? 0 : -1;
}

s32 __glkon_mem_free(s8 arg0, s8 arg1) {
    s8 sp1;
    s8 sp0;
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    if (temp_a5->unk7B4C != 0) {
        sp1 = arg1;
        sp0 = arg0;
        return (__glKon_ioctl(temp_a5, 0x271B, sp, arg0, (s8) temp_a5, (s16) arg1) == 0) ? 0 : -1;
    }
    return 0;
}

void __glkon_dlist_mem_alloc(s32 arg0) {
    __glkon_mem_alloc(1, 0, 0, arg0, 0);
}

void __glkon_dlist_mem_realloc(s32 arg0) {
    __glkon_mem_realloc(1, 0, 0, arg0, 0);
}

void __glkon_dlist_mem_free(void) {
    __glkon_mem_free(1, 0);
}

void __glkon_texture_mem_alloc(s32 arg0) {
    __glkon_mem_alloc(3, 0, 0, arg0, 0);
}

void __glkon_texture_mem_realloc(s32 arg0) {
    __glkon_mem_realloc(3, 0, 0, arg0, 0);
}

void __glkon_unique_per_ge_mem_alloc(void) {
    __glkon_mem_alloc(2, 9, 1, 1, 0);
}

s32 __glkon_share(void *arg0) {
    s64 sp8;
    s64 sp0;
    void *temp_at;

    temp_at = arg0->unk8AAC;
    sp8 = (s64) temp_at;
    sp0 = temp_at->unk8;
    if (__glKon_ioctl(*(void **)0x1010, 0x271F, sp) != 0) {
        return -1;
    }
    sp8->unk8 = sp0;
    return 0;
}
