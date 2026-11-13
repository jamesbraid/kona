s32 __glKon_ioctl(s32, ?, void *, s32, s32, s32, s32, s32); /* extern */
s32 __glKonlSendPackedVertex(void *, s32, void *, void *); /* extern */
? __glSetError(void *, u32, s64, s32);              /* extern */
? perror(void *);                                   /* extern */
extern ? __rodata0;

s32 StartSelectFeed(s32 arg0, s32 arg1) {
    s32 temp_v0;

    temp_v0 = arg1 * 4;
    if (__glKon_ioctl(*(s32 *)0x1010, 0x2712, sp, arg0, temp_v0, temp_v0, 0, 0) != 0) {
        perror(&__rodata0 + 0x140);
        return -1;
    }
    return 0;
}

s32 FinishSelectFeed(s64 arg0) {
    s64 sp8;

    sp8 = arg0;
    if (__glKon_ioctl(*(s32 *)0x1010, 0x2713, sp) != 0) {
        perror(&__rodata0 + 0x158);
        return -1;
    }
    *sp8 = sp4;
    return sp0;
}

void __glkon_SuspendSelectfeed(void) {
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_a1 = temp_s0->unkC84;
    if (temp_a1 != 0x1C01) {
        if (temp_a1 != 0x1C02) {
            if (temp_s0->unk7B78 == 0) {

            } else {
                temp_s0->unk7B88 = __glKonlSendPackedVertex(sp, temp_a1);
            }
        } else if (temp_s0->unk1324 == 0) {
            temp_s0->unk7B74 = (s32) (temp_s0->unk7B74 + __glKonlSendPackedVertex(sp, temp_a1));
            temp_s0->unk1324 = (u8) (sp0 | temp_s0->unk1324);
        }
    } else if (temp_s0->unk1304 == 0) {
        temp_s0->unk7B6C = (s32) (temp_s0->unk7B6C + __glKonlSendPackedVertex(sp, temp_a1));
        temp_s0->unk1304 = (u8) (sp0 | temp_s0->unk1304);
    }
}

void __glkon_ResumeSelectfeed(void) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    void *temp_a3;
    void *temp_a4;

    temp_a3 = *(void **)0x1010;
    temp_a1 = temp_a3->unkC84;
    if (temp_a1 != 0x1C01) {
        if (temp_a1 != 0x1C02) {
            temp_a4 = temp_a3->unk7B78;
            if (temp_a4 != NULL) {
                temp_a0 = temp_a3->unk7B88;
                __glKonlSendPackedVertex(temp_a4 + (temp_a0 * 4), temp_a3->unk7B8C - temp_a0, temp_a3, temp_a4);
            }
        } else if (temp_a3->unk1324 == 0) {
            temp_a2 = temp_a3->unk7B74;
            __glKonlSendPackedVertex(temp_a3->unk7B70 + (temp_a2 * 4), (temp_a3->unk7B50 * (temp_a3->unk1330 + 0x100)) - temp_a2, (void *) temp_a2, temp_a3);
        }
    } else if (temp_a3->unk1304 == 0) {
        temp_a2_2 = temp_a3->unk7B6C;
        temp_a2_3 = temp_a2_2 * 4;
        __glKonlSendPackedVertex(temp_a3->unk7B68 + temp_a2_3, temp_a3->unk1310 - temp_a2_2, (void *) temp_a2_3, temp_a3);
    }
}

void __glkonim_SelectBuffer(s32 arg0, s64 arg1) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    u32 temp_a1;
    u32 temp_v0;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            if (temp_s0->unkC84 != 0x1C02) {
                temp_a1 = temp_s0->unk7B70;
                sp0 = arg1;
                if (temp_a1 != 0) {
                    __glSetError(temp_s0, temp_a1, arg1);
                }
                temp_a2 = temp_s0->unk7B50;
                temp_a3 = arg0 + 0x100;
                temp_v0 = temp_s0->unk0(temp_s0, temp_a2 * temp_a3 * 4, temp_a2, temp_a3);
                temp_s0->unk1330 = arg0;
                temp_s0->unk7B70 = temp_v0;
                temp_s0->unk1328 = (s32) sp0;
                return;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(0x502, 0x1C02, arg1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x1C02, arg1);
        }
    } else {
        __glSetError((void *)0x502, 0x1C02U, arg1);
    }
}

void __glkonim_FeedbackBuffer(s32 arg0, u32 arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a6;
    u32 temp_a3;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a3 = arg1 < 0x600U;
        temp_a5 = arg1 < 0x605U;
        if ((temp_a3 == 0) && (temp_a5 != 0)) {
            if (arg0 >= 0) {
                temp_a6 = temp_a4->unkC84;
                if (temp_a6 != 0x1C01) {
                    temp_a4->unk1314 = arg1;
                    temp_a4->unk1308 = arg2;
                    temp_a4->unk1310 = arg0;
                    *(u32 *)0x4000 = 0x17;
                    *(void *)0x4000 = arg1;
                    temp_a4->unk7B68 = arg2;
                    return;
                }
                M2C_ERROR(/* Read from unset register $t9 */)(0x502, temp_a3, temp_a4, temp_a5, temp_a6, 0x1C01);
            } else {
                M2C_ERROR(/* Read from unset register $t9 */)(0x501, temp_a3, temp_a4, temp_a5);
            }
        } else {
            __glSetError((void *)0x500, temp_a3, (s64) temp_a4, temp_a5);
        }
    } else {
        __glSetError((void *)0x502, (u32) temp_a4);
    }
}

/*
Decompilation failure in function ResolveFeedback:

Unable to determine jump table for jr instruction at kon_select.s line 621.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 ResolveSelect(void) {
    s32 sp0;
    s32 *var_a1;
    s32 *var_a1_3;
    s32 *var_a3;
    s32 *var_s0;
    s32 *var_s1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a6;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a5;
    s32 var_s2;
    s32 var_t1;
    s32 var_t2;
    s32 var_v1;
    u32 temp_at_2;
    u32 temp_v1;
    u32 var_a7;
    u32 var_t0;
    u8 temp_at;
    void *temp_s3;
    void *temp_t3;
    void *var_s0_2;

    temp_s3 = *(void **)0x1010;
    var_s2 = temp_s3->unk1330;
    temp_at = temp_s3->unk1324;
    var_s1 = temp_s3->unk1328;
    var_s0 = temp_s3->unk7B70;
    sp0 = (s32) temp_at;
    if (temp_at != 0) {
        var_a5 = sp4;
        goto block_2;
    }
    temp_v0 = __glKonlSendPackedVertex(sp);
    var_a5 = temp_v0;
    if (temp_v0 < 0) {
        return 0;
    }
block_2:
    var_t2 = 0;
    if (var_a5 > 0) {
loop_25:
        if ((var_a5 >= 2) && (var_s2 > 0)) {
            var_t1 = var_s0->unk0;
            var_s0_2 = var_s0 + 4;
            if (!(temp_s3->unk7B5C & 8) && ((var_t1 == 0) || (var_t1 == 0x2BAD2D00))) {
                var_t1 = var_s0->unk4;
                var_s0_2 += 4;
            }
            temp_a1 = var_s0_2->unk0;
            var_a5 = (var_a5 - temp_a1) - 4;
            *var_s1 = temp_a1;
            if ((var_a5 >= 0) && (var_s2 = (var_s2 - temp_a1) - 3, var_s0 = var_s0_2 + 0xC, (var_s2 >= 0))) {
                temp_t8 = temp_a1 - 1;
                var_t0 = var_s0->unk-4;
                temp_t3 = var_s1 + 4;
                var_s1 += 0xC;
                var_a7 = var_s0->unk-8;
                var_a2_2 = temp_t8;
                if (temp_t8 != -1) {
                    var_v1 = temp_a1 >> 1;
                    if (temp_a1 & 1) {
                        var_s1 += 4;
                        var_a2_2 = temp_a1 - 2;
                        var_s0 += 4;
                        var_s1->unk-4 = (s32) var_s0_2->unkC;
                        var_v1 = temp_a1 >> 1;
                    }
                    var_a3 = var_s1;
                    if (var_v1 != 0) {
                        var_a1 = var_s0;
                        do {
                            var_a2_2 -= 2;
                            *var_a3 = var_a1->unk0;
                            var_a3 += 8;
                            temp_a0 = var_a1->unk4;
                            var_a1 += 8;
                            var_a3->unk-4 = temp_a0;
                        } while (var_a2_2 != -1);
                        var_s0 = var_a1;
                        var_s1 = var_a3;
                    }
                }
                var_t2 += 1;
                if (*var_s0 == var_t1) {
loop_14:
                    temp_a6 = var_s0->unk4;
                    var_a5 = (var_a5 - temp_a6) - 4;
                    var_a2 = 1;
                    if (var_a5 >= 0) {
                        temp_at_2 = var_s0->unk8;
                        var_a2_3 = temp_a6 - 1;
                        temp_v1 = var_s0->unkC;
                        temp_t8_2 = temp_at_2 < var_a7;
                        var_s0 += 0x10;
                        var_a7 = (temp_t8_2 != 0) ? temp_at_2 : var_a7;
                        var_t0 = (var_t0 < temp_v1) ? temp_v1 : var_t0;
                        if (var_a2_3 != -1) {
                            var_a1_2 = temp_a6 & 7;
                            if (var_a1_2 != 0) {
                                do {
                                    var_a1_2 -= 1;
                                    var_a2_3 -= 1;
                                    var_s0 += 4;
                                } while (var_a1_2 != 0);
                            }
                            var_a1_3 = var_s0;
                            if ((temp_a6 >> 3) != 0) {
                                do {
                                    var_a2_3 -= 8;
                                    var_a1_3 += 0x20;
                                } while (var_a2_3 != -1);
                                var_s0 = var_a1_3;
                            }
                        }
                        if (*var_s0 != var_t1) {
                            goto block_24;
                        }
                        goto loop_14;
                    }
                } else {
block_24:
                    temp_t3->unk4 = var_t0;
                    temp_t3->unk0 = var_a7;
                    if (var_a5 > 0) {
                        goto loop_25;
                    }
                    goto block_33;
                }
            } else {
                var_a2 = 1;
            }
        } else {
            var_a2 = 1;
        }
    } else {
        var_t2 = 0;
block_33:
        var_a2 = sp0;
    }
    return (var_a2 != 0) ? -1 : var_t2;
}

s32 __glkonim_RenderMode(u32 arg0, s32 arg3) {
    s64 sp8;
    s32 sp0;
    s32 var_a2;
    s32 var_a3;
    s64 var_a1;
    u32 temp_v0;

    var_a3 = arg3;
    var_a1 = 0x130000;
    if (*(s32 *)0x1018 != 1) {
        var_a2 = arg0 < 0x1C00U;
        if ((var_a2 == 0) && (var_a3 = arg0 < 0x1C03U, (var_a3 != 0))) {
            sp8 = (s64) *(s32 *)0x1010;
            if (arg0 != 0x1C01) {
                goto block_5;
            }
            var_a2 = sp8->unk1308;
            if (var_a2 == 0) {
                goto block_16;
            }
block_5:
            var_a1 = sp8;
            if (arg0 != 0x1C02) {
                goto block_6;
            }
            var_a1 = (s64) var_a1->unk1328;
            if (var_a1 == 0) {
block_16:
                __glSetError((void *)0x502, (u32) var_a1, (s64) var_a2, 0x1C02);
                /* Duplicate return node #13. Try simplifying control flow for better match */
                return 0;
            }
block_6:
            temp_v0 = sp8->unkC84;
            *(u32 *)0x4000 = 0x19;
            *(void *)0x4000 = arg0;
            switch (temp_v0) {                      /* switch 1; irregular */
            case 0x1C00:                            /* switch 1 */
                sp0 = 0;
                break;
            case 0x1C01:                            /* switch 1 */
                sp0 = __glkonim_FeedbackBuffer(0x1C01, (u32) var_a1, var_a2, 0x1C02, 0x1C00, 0x19);
                break;
            case 0x1C02:                            /* switch 1 */
                sp0 = __glkonim_FeedbackBuffer(0x1C01, (u32) var_a1, var_a2, 0x1C02, 0x1C00, 0x19);
                break;
            }
            switch (arg0) {                         /* switch 2; irregular */
            default:                                /* switch 2 */
            case 0x1C00:                            /* switch 2 */
                sp8->unkC84 = arg0;
                return sp0;
            case 0x1C02:                            /* switch 2 */
                sp8->unk1324 = 0;
                sp8->unk7B74 = 0;
                if (__glKonlSendPackedVertex(sp8->unk7B70, sp8->unk7B50 * (sp8->unk1330 + 0x100)) < 0) {
                    /* Duplicate return node #13. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #12. Try simplifying control flow for better match */
                sp8->unkC84 = arg0;
                return sp0;
            case 0x1C01:                            /* switch 2 */
                sp8->unk1304 = 0;
                sp8->unk7B6C = 0;
                if (__glKonlSendPackedVertex(sp8->unk7B68, sp8->unk1310) < 0) {
                    /* Duplicate return node #13. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #12. Try simplifying control flow for better match */
                sp8->unkC84 = arg0;
                return sp0;
            }
        } else {
            __glSetError((void *)0x500, (u32) 0x130000, (s64) var_a2, var_a3);
            return 0;
        }
    } else {
        __glSetError((void *)0x502, (u32) 0x130000);
        return 0;
    }
}
