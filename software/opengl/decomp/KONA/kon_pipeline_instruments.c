s32 __glKon_ioctl(void *, ?, u32 *, s64, ?, ?);     /* extern */
? __glSetError(?, s64, ?, ?);                       /* extern */
? perror(void *, s64);                              /* extern */
extern ? __rodata0;

void __glkonim_InstrumentsBufferSGIX(s32 arg0, u32 arg1) {
    s64 sp30;
    s64 sp28;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    u32 sp10;
    u32 sp8;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s64 temp_a3_2;
    s64 temp_a4_2;
    s64 temp_t3;
    u32 temp_a0;
    u32 temp_a3;
    u32 temp_a5_2;
    u32 temp_a5_3;
    u32 temp_a6;
    u32 temp_t2;
    u32 var_a0;
    void *temp_a4;
    void *temp_s0;
    void *var_a1_2;
    void *var_a1_3;

    temp_s0 = *(void **)0x1010;
    temp_a4 = temp_s0->unk7B64;
    temp_a4_2 = temp_a4 + 0x3FF8;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            temp_a0 = temp_s0->unk7B78;
            if ((temp_a0 == arg1) && (arg1 != 0)) {
                var_a0 = temp_s0->unk7B7C;
                temp_a3 = arg1 + (arg0 * 4);
                if (var_a0 < temp_a3) {
                    temp_t2 = (temp_a3 - var_a0) + 0x27;
                    temp_a6 = temp_t2 >> 0x1F;
                    temp_a7 = (s32) MULTU_HI(((temp_a6 == 0) ? temp_t2 : (u32) -(s32) temp_t2), ((0xCCCC << 0x10) | 0xCCCD)) >> 5;
                    temp_a5 = (temp_a6 == 0) ? temp_a7 : -temp_a7;
                    var_a1 = temp_a5 & 7;
                    if (var_a1 != 0) {
                        do {
                            var_a1 -= 1;
                            var_a0 += 0x28;
                            var_a0->unk-28 = 0;
                        } while (var_a1 != 0);
                    }
                    if ((temp_a5 >> 3) != 0) {
                        do {
                            var_a0->unk118 = 0;
                            var_a0->unkF0 = 0;
                            var_a0->unkC8 = 0;
                            var_a0->unkA0 = 0;
                            var_a0->unk78 = 0;
                            var_a0 += 0x140;
                            var_a0->unk-F0 = 0;
                            var_a0->unk-118 = 0;
                            var_a0->unk-140 = 0;
                        } while (var_a0 < temp_a3);
                    }
                }
                *(s32 *)0x4000 = 0x1BC;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = 0x1B8;
                *(void *)0x4000 = 0;
                temp_a4->unk3FF8 = 0;
                temp_s0->unk7B80 = arg1;
                temp_s0->unk7B7C = arg1;
                /* Duplicate return node #16. Try simplifying control flow for better match */
                temp_s0->unk7B84 = 0;
                return;
            }
            if (temp_a0 != 0) {
                sp28 = temp_a4_2;
                if (arg1 == 0) {
                    if (__glKon_ioctl(temp_s0, 0x2713, sp, temp_a4_2, 1, 0x12CEF8) != 0) {
                        perror(&__rodata0 - 0x19E8);
                    }
                    temp_s0->unk7B80 = 0U;
                    temp_s0->unk7B7C = 0U;
                    temp_s0->unk7B78 = 0U;
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    temp_s0->unk7B84 = 0;
                    return;
                }
                if (__glKon_ioctl(temp_s0, 0x2713, &sp8, temp_a4_2, 1, 0x12CEF8) != 0) {
                    perror(&__rodata0 - 0x19E8);
                }
                temp_s0->unk7B80 = arg1;
                temp_s0->unk7B7C = arg1;
                temp_s0->unk7B78 = arg1;
                sp20 = 1;
                sp1C = 0;
                temp_a3_2 = arg0 * 4;
                sp30 = temp_a3_2;
                sp14 = (s32) temp_a3_2;
                sp18 = (s32) temp_a3_2;
                sp10 = arg1;
                if (__glKon_ioctl(temp_s0, 0x2712, &sp10, temp_a3_2, 1) != 0) {
                    perror(&__rodata0 - 0x19C8);
                } else {
                    *(void *)0x4000 = 0x1B8;
                    *(void *)0x4000 = 0;
                    *sp28 = 0;
                    if (arg0 >= 0xA) {
                        temp_a5_2 = (u32) arg0 >> 0x1F;
                        temp_a6_2 = (s32) MULTU_HI(((temp_a5_2 == 0) ? arg0 : -arg0), ((0xCCCC << 0x10) | 0xCCCD)) >> 3;
                        temp_a4_3 = (temp_a5_2 == 0) ? temp_a6_2 : -temp_a6_2;
                        var_a0_2 = temp_a4_3 & 7;
                        var_a1_2 = arg1 + 0x24;
                        if (var_a0_2 != 0) {
                            do {
                                var_a0_2 -= 1;
                                var_a1_2 += 0x28;
                                var_a1_2->unk-28 = 0;
                            } while (var_a0_2 != 0);
                        }
                        if ((temp_a4_3 >> 3) != 0) {
                            do {
                                var_a1_2->unk118 = 0;
                                var_a1_2->unkF0 = 0;
                                var_a1_2->unkC8 = 0;
                                var_a1_2->unkA0 = 0;
                                var_a1_2->unk78 = 0;
                                var_a1_2 += 0x140;
                                var_a1_2->unk-F0 = 0;
                                var_a1_2->unk-118 = 0;
                                var_a1_2->unk-140 = 0;
                            } while ((u32) var_a1_2 < (u32) (sp30 + arg1));
                        }
                    }
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    temp_s0->unk7B84 = 0;
                }
            } else {
                sp28 = temp_a4_2;
                if (arg1 != 0) {
                    temp_s0->unk7B8C = arg0;
                    temp_s0->unk7B80 = arg1;
                    temp_s0->unk7B7C = arg1;
                    temp_s0->unk7B78 = arg1;
                    sp20 = 1;
                    sp1C = 0;
                    temp_t3 = arg0 * 4;
                    sp30 = temp_t3;
                    sp14 = (s32) temp_t3;
                    sp18 = (s32) temp_t3;
                    sp10 = arg1;
                    if (__glKon_ioctl(temp_s0, 0x2712, &sp10, temp_a4_2, 1, 0x12CEF8) != 0) {
                        perror(&__rodata0 - 0x19C8, sp28);
                    } else {
                        *(void *)0x4000 = 0x1B8;
                        *(void *)0x4000 = 0;
                        *sp28 = 0;
                        if (arg0 >= 0xA) {
                            temp_a5_3 = (u32) arg0 >> 0x1F;
                            temp_a6_3 = (s32) MULTU_HI(((temp_a5_3 == 0) ? arg0 : -arg0), ((0xCCCC << 0x10) | 0xCCCD)) >> 3;
                            temp_a4_4 = (temp_a5_3 == 0) ? temp_a6_3 : -temp_a6_3;
                            var_a0_3 = temp_a4_4 & 7;
                            var_a1_3 = arg1 + 0x24;
                            if (var_a0_3 != 0) {
                                do {
                                    var_a0_3 -= 1;
                                    var_a1_3 += 0x28;
                                    var_a1_3->unk-28 = 0;
                                } while (var_a0_3 != 0);
                            }
                            if ((temp_a4_4 >> 3) != 0) {
                                do {
                                    var_a1_3->unk118 = 0;
                                    var_a1_3->unkF0 = 0;
                                    var_a1_3->unkC8 = 0;
                                    var_a1_3->unkA0 = 0;
                                    var_a1_3->unk78 = 0;
                                    var_a1_3 += 0x140;
                                    var_a1_3->unk-F0 = 0;
                                    var_a1_3->unk-118 = 0;
                                    var_a1_3->unk-140 = 0;
                                } while ((u32) var_a1_3 < (u32) (sp30 + arg1));
                            }
                        }
                        /* Duplicate return node #16. Try simplifying control flow for better match */
                        temp_s0->unk7B84 = 0;
                    }
                } else {
                    temp_s0->unk7B84 = 0;
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, temp_a4_2, 1, 0x12CEF8);
        }
    } else {
        __glSetError(0x502, temp_a4_2, 1, 0x12CEF8);
    }
}

s32 __glkonim_PollInstrumentsSGIX(s32 *arg0) {
    void *temp_a3;
    void *temp_a4;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (temp_a3->unk7B64->unk3FF8 != 0) {
            return -1;
        }
        temp_a4 = temp_a3->unk7B7C;
        if (temp_a4->unk24 == (temp_a3->unk7B84 + 1)) {
            *arg0 = temp_a4->unk20;
            temp_a3->unk7B84 = (s32) (temp_a3->unk7B84 + 1);
            temp_a3->unk7B7C->unk24 = 0;
            temp_a3->unk7B7C = (void *) (temp_a3->unk7B7C + 0x28);
            return 1;
        }
        return 0;
    }
    __glSetError(0x502, (s64) temp_a3);
    return 0;
}

s32 __glkonim_GetInstrumentsSGIX(void) {
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_a1;
    s32 var_a5;
    s32 var_v0;
    u32 temp_a1;
    u32 temp_a4;
    u32 var_a2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (temp_a3->unk7B64->unk3FF8 != 0) {
            return -1;
        }
        temp_a4 = temp_a3->unk7B7C;
        temp_a1 = temp_a3->unk7B80;
        var_a5 = (s32) (temp_a4 - temp_a1) >> 2;
        if (temp_a1 < temp_a4) {
            temp_a3->unk7B80 = temp_a4;
        } else {
            var_a5 = 0;
        }
        var_a2 = temp_a4;
        var_a1 = temp_a3->unk7B84 + 1;
        var_v0 = var_a2 * 0;
        if (temp_a4->unk24 == var_a1) {
loop_7:
            temp_a6 = var_a2->unk4C;
            temp_a1_2 = var_a1 + 1;
            var_a2 += 0x28;
            if (temp_a6 == temp_a1_2) {
                temp_a7 = var_a2->unk4C;
                temp_a1_3 = temp_a1_2 + 1;
                var_a2 += 0x28;
                if (temp_a7 == temp_a1_3) {
                    var_a1 = temp_a1_3 + 1;
                    var_a2 += 0x28;
                    if (var_a2->unk4C == var_a1) {
                        goto loop_7;
                    }
                }
            }
            var_v0 = var_a2 - temp_a4;
        }
        temp_a3->unk7B80 = var_a2;
        return var_a5 + (var_v0 >> 2);
    }
    __glSetError(0x502, (s64) temp_a3);
    return 0;
}
