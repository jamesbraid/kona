? .L0d979020(s32, s32, s32, f32 *, f32 *, s32);     /* extern */
? __glKonFreeTextureObj(s32, s32);                  /* extern */
s32 sub_0d980000(void *, s32, s64, s32, void *, s32); /* extern */
extern ? __glNop;

void allocHashBlock(void) {
    s32 *(**temp_a0)(?, ?);
    s32 *temp_v0;
    s32 *var_a2;

    temp_a0 = *(s32 *(***)(?, ?))0x1010;
    temp_v0 = *temp_a0(temp_a0, 0x8004);
    *temp_v0 = 0;
    var_a2 = temp_v0;
    do {
        var_a2->unk20 = 0;
        var_a2->unk18 = 0;
        var_a2 += 0x20;
        var_a2->unk-10 = 0;
        var_a2->unk-18 = 0;
    } while (var_a2 != (temp_v0 + 0x8000));
}

void wrapHashCacheLRU(s32 arg0) {
    s32 temp_a0;
    s32 temp_v0;
    s32 var_a4;
    void *var_a2;

    var_a4 = 0;
    var_a2 = arg0 + 8;
loop_3:
    var_a4 += 2;
    temp_v0 = var_a2->unk4 + 0xE0000000;
    if (var_a2->unk8 != 0) {
        var_a2->unk4 = temp_v0;
        if (temp_v0 < 0) {
            var_a2->unk4 = 0;
        }
    }
    temp_a0 = var_a2->unk10 + 0xE0000000;
    if (var_a2->unk14 != 0) {
        var_a2->unk10 = temp_a0;
        if (temp_a0 < 0) {
            var_a2->unk10 = 0;
        }
    }
    var_a2 += 0x18;
    if (var_a4 != 0x1000) {
        goto loop_3;
    }
}

void insertHashBlock(? **arg0, s32 arg1, s64 arg2, s32 arg5, s32 arg6) {
    s64 sp28;
    s64 sp8;
    s32 sp0;
    ? *temp_at;
    ? *temp_v0;
    ? *var_a7;
    ? *var_s1;
    s32 temp_s0;
    s32 temp_t2;
    s32 var_a1;
    s32 var_a5;
    s32 var_a6;
    s32 var_t0;
    s32 var_v0;
    void *temp_a7;
    void *temp_t1;

    var_a1 = arg1;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_at = *arg0;
    temp_s0 = var_a1;
    var_a7 = temp_at;
    var_s1 = temp_at;
    if (temp_at != NULL) {
        var_t0 = 6;
        temp_t2 = var_a1 & 0x3F;
        var_a1 &= 0xFFF;
        var_v0 = temp_s0 >> 6;
        do {
            var_a5 = var_a1;
            var_a6 = 0;
loop_3:
            var_a6 += 1;
            if ((var_a7 + (var_a5 * 8))->unk8 != 0) {
                var_a5 = (var_a5 - (temp_t2 | (var_v0 << 6))) & 0xFFF;
                if (var_a6 != 8) {
                    goto loop_3;
                }
            }
            var_t0 += 1;
            var_s1 = var_a7;
            var_a7 = *var_a7;
            var_v0 = temp_s0 >> var_t0;
        } while (var_a7 != NULL);
        sp0 = var_a5;
    }
    sp8 = (s64) arg0;
    if (var_a7 == NULL) {
        sp28 = arg2;
        temp_v0 = allocHashBlock(var_a1, var_a5, var_a6, var_a7);
        if (var_s1 == NULL) {
            *sp8 = temp_v0;
        } else {
            *var_s1 = temp_v0;
        }
        temp_t1 = temp_v0 + ((temp_s0 & 0xFFF) * 8);
        temp_t1->unk4 = (s32) sp28;
        temp_t1->unk8 = temp_s0;
        return;
    }
    temp_a7 = var_a7 + (sp0 * 8);
    temp_a7->unk4 = (s32) arg2;
    temp_a7->unk8 = temp_s0;
}

s32 __glKonHashFindTexFast(s32 arg0, u32 arg1) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 var_a3;
    s32 var_a4;
    void *temp_a4;
    void *temp_a6;

    temp_a3 = arg1 & 0xFFF;
    temp_a4 = arg0 + (temp_a3 * 0xC);
    if (temp_a4->unk10 != arg1) {
        var_a4 = 0;
        temp_a5 = (arg1 & 0x3F) | ((arg1 >> 0xC) << 6);
        var_a3 = temp_a3 - temp_a5;
loop_2:
        temp_a3_2 = var_a3 & 0xFFF;
        temp_a6 = arg0 + (temp_a3_2 * 0xC);
        var_a4 += 1;
        if (temp_a6->unk10 != arg1) {
            var_a3 = temp_a3_2 - temp_a5;
            if (var_a4 == 4) {
                return 0;
            }
            goto loop_2;
        }
        return temp_a6->unk8;
    }
    return temp_a4->unk8;
}

s32 __glKonHashFindTexSlow(void *arg0, u32 arg1) {
    s64 sp38;
    s64 sp30;
    s64 sp20;
    s64 sp18;
    s64 sp0;
    ? *var_a5_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_s1;
    s32 var_t2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 var_ra;
    u32 temp_a6_2;
    u32 temp_v0;
    void *temp_a2;
    void *temp_a5;
    void *temp_s1;
    void *temp_s1_2;

    var_ra = saved_reg_ra;
    temp_t1 = arg1 & 0xFFF;
    temp_a2 = arg0 + (temp_t1 * 0xC);
    var_v0_2 = temp_t1;
    if (temp_a2->unk10 != arg1) {
        var_a0 = 0;
        var_a5 = 0x40000000;
        temp_t3 = arg1 & 0x3F;
        var_a2 = 0;
loop_2:
        temp_a6 = (var_v0_2 - (temp_t3 | ((arg1 >> 0xC) << 6))) & 0xFFF;
        temp_s1 = arg0 + (temp_a6 * 0xC);
        temp_t8 = temp_s1->unk10;
        var_a2 += 1;
        var_v0_2 = temp_a6;
        temp_t9 = temp_s1->unkC;
        if (temp_t8 != arg1) {
            temp_t8_2 = temp_t9 < var_a5;
            var_a5 = (temp_t8_2 != 0) ? temp_t9 : var_a5;
            var_a0 = (temp_t8_2 != 0) ? temp_a6 : var_a0;
            if (var_a2 == 4) {
                var_a5_2 = arg0->unk0;
                if (var_a5_2 != NULL) {
                    var_t2 = 7;
                    var_a6 = (arg1 >> 6) << 6;
loop_6:
                    var_v0_3 = temp_t1;
                    var_a2_2 = 0;
                    var_s1 = var_v0_3 * 8;
loop_7:
                    temp_s1_2 = var_a5_2 + var_s1;
                    var_a2_2 += 1;
                    var_v0_3 = (var_v0_3 - (temp_t3 | var_a6)) & 0xFFF;
                    if (temp_s1_2->unk8 != arg1) {
                        var_s1 = var_v0_3 * 8;
                        if (var_a2_2 == 8) {
                            var_a5_2 = *var_a5_2;
                            temp_a6_2 = arg1 >> var_t2;
                            var_t2 += 1;
                            var_a6 = temp_a6_2 << 6;
                            if (var_a5_2 == NULL) {
                                goto block_10;
                            }
                            goto loop_6;
                        }
                        goto loop_7;
                    }
                    temp_a6_3 = arg0->unk4;
                    temp_a5 = arg0 + (var_a0 * 0xC);
                    temp_v0 = temp_a5->unk10;
                    temp_a2_2 = temp_a5->unk8;
                    arg0->unk4 = (s32) (temp_a6_3 + 1);
                    temp_a5->unk10 = arg1;
                    temp_a5->unkC = temp_a6_3;
                    temp_a4 = temp_s1_2->unk4;
                    temp_a5->unk8 = temp_a4;
                    temp_a3 = arg0->unk4;
                    sp0 = (s64) temp_a5;
                    if (temp_a3 == 0x40000000) {
                        sp18 = (s64) temp_a2_2;
                        sp20 = (s64) temp_v0;
                        allocHashBlock((s32) arg0, temp_a2_2, temp_a3, (? *) temp_a4, temp_a5, temp_a6_3, 0x40000000);
                        var_ra = sp38;
                    }
                    temp_s1_2->unk8 = 0;
                    if ((s32) temp_v0 >= 0) {
                        sp38 = var_ra;
                        allocHashBlock((s32) arg0, (s32) temp_v0, temp_a2_2);
                    }
                    return sp0->unk8;
                }
block_10:
                var_v0 = 0;
                /* Duplicate return node #13. Try simplifying control flow for better match */
                return var_v0;
            }
            goto loop_2;
        }
        temp_a0 = arg0->unk4;
        temp_a1 = temp_a0 + 1;
        arg0->unk4 = temp_a1;
        temp_s1->unkC = temp_a0;
        if (arg0->unk4 == 0x40000000) {
            allocHashBlock((s32) arg0, temp_a1, var_a2, (? *) var_a5, (void *) temp_a6, 0x40000000);
        }
        var_v0 = temp_s1->unk8;
        return var_v0;
    }
    temp_a0_2 = arg0->unk4;
    temp_a1_2 = temp_a0_2 + 1;
    arg0->unk4 = temp_a1_2;
    temp_a2->unkC = temp_a0_2;
    if (arg0->unk4 == 0x40000000) {
        sp30 = (s64) temp_a2;
        allocHashBlock((s32) arg0, temp_a1_2, (s32) temp_a2, (? *)0x40000000);
    }
    return temp_a2->unk8;
}

s32 __glKonHashDeleteTexFast(s32 arg0, u32 arg1) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 var_a3;
    s32 var_a4;
    void *temp_a4;
    void *temp_a6;

    temp_a3 = arg1 & 0xFFF;
    temp_a4 = arg0 + (temp_a3 * 0xC);
    if (temp_a4->unk10 != arg1) {
        var_a4 = 0;
        temp_a5 = (arg1 & 0x3F) | ((arg1 >> 0xC) << 6);
        var_a3 = temp_a3 - temp_a5;
loop_2:
        temp_a3_2 = var_a3 & 0xFFF;
        temp_a6 = arg0 + (temp_a3_2 * 0xC);
        var_a4 += 1;
        if (temp_a6->unk10 != arg1) {
            var_a3 = temp_a3_2 - temp_a5;
            if (var_a4 == 4) {
                return 0;
            }
            goto loop_2;
        }
        temp_a6->unk10 = 0;
        return temp_a6->unk8;
    }
    temp_a4->unk10 = 0;
    return temp_a4->unk8;
}

s32 __glKonHashDeleteTexSlow(? **arg0, u32 arg1) {
    ? *var_a5;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_t0;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_t1;
    u32 temp_a6_2;
    void *temp_a0;
    void *temp_a4;
    void *temp_a6;

    temp_t0 = arg1 & 0xFFF;
    temp_a4 = arg0 + (temp_t0 * 0xC);
    if (temp_a4->unk10 != arg1) {
        temp_t2 = arg1 & 0x3F;
        var_a4 = 0;
        temp_a5 = temp_t2 | ((arg1 >> 0xC) << 6);
        var_a3 = temp_t0 - temp_a5;
loop_2:
        temp_a3 = var_a3 & 0xFFF;
        temp_a6 = arg0 + (temp_a3 * 0xC);
        var_a4 += 1;
        if (temp_a6->unk10 != arg1) {
            var_a3 = temp_a3 - temp_a5;
            if (var_a4 == 4) {
                var_a5 = *arg0;
                if (var_a5 != NULL) {
                    var_t1 = 7;
                    var_a6 = (arg1 >> 6) << 6;
loop_6:
                    var_a3_2 = temp_t0;
                    var_a4_2 = 0;
                    var_a0 = var_a3_2 * 8;
loop_7:
                    temp_a0 = var_a5 + var_a0;
                    var_a4_2 += 1;
                    var_a3_2 = (var_a3_2 - (temp_t2 | var_a6)) & 0xFFF;
                    if (temp_a0->unk8 != arg1) {
                        var_a0 = var_a3_2 * 8;
                        if (var_a4_2 == 8) {
                            var_a5 = *var_a5;
                            temp_a6_2 = arg1 >> var_t1;
                            var_t1 += 1;
                            var_a6 = temp_a6_2 << 6;
                            if (var_a5 == NULL) {
                                /* Duplicate return node #10. Try simplifying control flow for better match */
                                return 0;
                            }
                            goto loop_6;
                        }
                        goto loop_7;
                    }
                    temp_a0->unk8 = 0;
                    return temp_a0->unk4;
                }
                return 0;
            }
            goto loop_2;
        }
        temp_a6->unk10 = 0;
        return temp_a6->unk8;
    }
    temp_a4->unk10 = 0;
    return temp_a4->unk8;
}

void __glKonHashInsertTexSlow(void *arg0, u32 arg1, s32 arg2) {
    ? *temp_a7;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 var_a4;
    s32 var_a5;
    void *temp_a5;

    temp_a4 = arg1 & 0xFFF;
    temp_a5 = arg0 + (temp_a4 * 0xC);
    if (temp_a5->unk10 != 0) {
        var_a5 = 0;
        temp_a6 = (arg1 & 0x3F) | ((arg1 >> 0xC) << 6);
        var_a4 = temp_a4 - temp_a6;
loop_2:
        temp_a4_2 = var_a4 & 0xFFF;
        temp_a7 = arg0 + (temp_a4_2 * 0xC);
        var_a5 += 1;
        if (temp_a7->unk10 != 0) {
            var_a4 = temp_a4_2 - temp_a6;
            if (var_a5 == 4) {
                allocHashBlock(var_a4, var_a5, temp_a6, temp_a7);
                return;
            }
            goto loop_2;
        }
        temp_a7->unk8 = arg2;
        temp_a7->unk10 = arg1;
        temp_a7->unkC = (s32) arg0->unk4;
        return;
    }
    temp_a5->unk8 = arg2;
    temp_a5->unk10 = arg1;
    temp_a5->unkC = (s32) arg0->unk4;
}

void __glKonHashInsertTexFast(s32 arg0, u32 arg1, s32 arg2) {
    ? *var_a5;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a4;
    void *temp_a5;
    void *temp_a6;

    temp_a4 = arg1 & 0xFFF;
    temp_a5 = arg0 + (temp_a4 * 0xC);
    if (temp_a5->unk10 != 0) {
        temp_a3 = (arg1 >> 0xC) << 6;
        var_a5 = NULL;
        temp_a0 = (arg1 & 0x3F) | temp_a3;
        var_a4 = temp_a4 - temp_a0;
loop_2:
        temp_a4_2 = var_a4 & 0xFFF;
        temp_a6 = arg0 + (temp_a4_2 * 0xC);
        var_a5 += 1;
        if (temp_a6->unk10 != 0) {
            var_a4 = temp_a4_2 - temp_a0;
            if (var_a5 == (? *)4) {
                allocHashBlock(arg0, temp_a3, var_a4, var_a5, temp_a6, 4);
                arg0->unkC010 = __glKonHashInsertTexSlow;
                arg0->unkC00C = __glKonHashDeleteTexSlow;
                arg0->unkC008 = __glKonHashFindTexSlow;
                return;
            }
            goto loop_2;
        }
        temp_a6->unk8 = arg2;
        temp_a6->unk10 = arg1;
        return;
    }
    temp_a5->unk8 = arg2;
    temp_a5->unk10 = arg1;
}

void __glKonInitTextureHash(void *arg0) {
    arg0->unkC008 = __glKonHashFindTexFast;
    arg0->unkC00C = __glKonHashDeleteTexFast;
    arg0->unkC010 = __glKonHashInsertTexFast;
}

void __glKonFreeTextures(s32 arg0, ? **arg1) {
    ? **var_s0;
    ? *var_s0_2;
    ? *var_s3;

    var_s0 = arg1;
    do {
        if (var_s0->unk10 != 0) {
            __glKonFreeTextureObj(arg0, var_s0->unk8);
        }
        var_s0 += 0xC;
    } while (var_s0 != (arg1 + 0xC000));
    var_s3 = *arg1;
    if (var_s3 != NULL) {
        var_s0_2 = var_s3;
        do {
loop_7:
            if (var_s0_2->unk8 != 0) {
                __glKonFreeTextureObj(arg0, var_s0_2->unk4);
            }
            var_s0_2 += 8;
            if (var_s0_2 != (var_s3 + 0x8000)) {
                goto loop_7;
            }
            var_s3 = *var_s3;
            var_s0_2 = var_s3;
        } while (var_s3 != NULL);
    }
}

void __glKonFreeTextureHash(void **arg0, ? **arg1) {
    ? *temp_a1;
    ? *var_s0;

    var_s0 = *arg1;
    if (var_s0 != NULL) {
        do {
            temp_a1 = var_s0;
            var_s0 = *var_s0;
            arg0->unkC(arg0, temp_a1);
        } while (var_s0 != NULL);
    }
}

void ARMTexCacheUnused2Used(void *arg0, s32 arg1) {
    void *temp_v0;

    temp_v0 = arg0->unk4;
    arg0->unk4 = (void *) temp_v0->unkC;
    temp_v0->unk0 = arg1;
    arg0->unk0->unk8->unkC = temp_v0;
    temp_v0->unk8 = (void *) arg0->unk0->unk8;
    temp_v0->unkC = (void *) arg0->unk0;
    arg0->unk0->unk8 = temp_v0;
}

void __glKonUpdateARMTexCacheLRU(void **arg0, void *arg1) {
    arg1->unk8->unkC = (void *) arg1->unkC;
    arg1->unkC->unk8 = (void *) arg1->unk8;
    (*arg0)->unk8->unkC = arg1;
    arg1->unk8 = (void *) (*arg0)->unk8;
    arg1->unkC = (void *) *arg0;
    (*arg0)->unk8 = arg1;
}

void __glKonInsertARMTexCacheSlow(void **arg0, ? **arg1) {
    s64 sp0;
    void **temp_a0;

    if (arg0->unk4 != 0) {
        __glKonFreeTextureHash();
        return;
    }
    temp_a0 = arg0->unk0->unkC;
    sp0 = (s64) temp_a0;
    sub_0d980000(*temp_a0);
    __glKonUpdateARMTexCacheLRU(arg0, (void *) sp0);
    *sp0 = arg1;
}

void __glKonInsertARMTexCacheFast(void **arg0, ? **arg1, void *arg2, s64 arg3, s32 arg5, s32 arg6) {
    s64 sp28;
    s64 sp8;
    s64 sp0;
    s32 temp_a3;
    s32 temp_a7;
    s32 temp_t2;
    s32 temp_t9;
    s32 var_a5;
    s32 var_a6;
    s64 temp_a2;
    s64 var_a3;
    void *temp_a0;
    void *temp_v0;
    void *var_a2;
    void *var_a4;
    void *var_a4_2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a4 = arg0->unk4;
    if (var_a4 == NULL) {
        var_a5 = arg0->unk8;
        if (var_a5 < arg0->unkC) {
            temp_a3 = arg0->unk10;
            temp_a0 = *(void **)0x1010;
            sp28 = (s64) arg1;
            M2C_TRAP_IF(temp_a3 == 0);
            sp0 = (s64) temp_a0;
            temp_a2 = ((s32) ((second half of f64) / (f64) (second half of f64)) + 1) * 4;
            sp8 = temp_a2;
            arg0->unk34 = sub_0d980000(temp_a0, arg0->unk34, temp_a2, temp_a3, var_a4, var_a5);
            temp_v0 = temp_a0->unk0(temp_a0, arg0->unk10 * 0x10);
            var_a3 = sp8;
            arg0->unk4 = temp_v0;
            (arg0->unk34 + var_a3)->unk-4 = temp_v0;
            var_a6 = arg0->unk10;
            var_a2 = arg0->unk4;
            var_a5 = var_a6 - 1;
            if (var_a6 != 0) {
                var_a4_2 = var_a2 + 0x10;
                if (var_a6 & 1) {
                    var_a2->unkC = var_a4_2;
                    temp_a7 = arg0->unk8;
                    var_a5 = var_a6 - 2;
                    arg0->unk8 = (s32) (temp_a7 + 1);
                    var_a2->unk4 = temp_a7;
                    var_a2 = var_a4_2;
                    var_a4_2 += 0x10;
                }
                if ((var_a6 >> 1) != 0) {
                    do {
                        var_a2->unkC = var_a4_2;
                        temp_t9 = arg0->unk8;
                        arg0->unk8 = (s32) (temp_t9 + 1);
                        var_a2->unk4 = temp_t9;
                        var_a2->unk1C = (void *) (var_a4_2 + 0x10);
                        temp_t2 = arg0->unk8;
                        var_a5 -= 2;
                        var_a2 += 0x20;
                        arg0->unk8 = (s32) (temp_t2 + 1);
                        var_a4_2 += 0x20;
                        var_a2->unk-C = temp_t2;
                    } while (var_a5 != -1);
                }
            }
            var_a2->unk-4 = 0;
            var_a4 = arg0->unk4;
        }
        if (var_a4 != NULL) {
            /* Duplicate return node #3. Try simplifying control flow for better match */
            __glKonFreeTextureHash(arg0, arg1, var_a2, var_a3, var_a4, var_a5, var_a6);
            return;
        }
        arg0->unk1C = __glKonUpdateARMTexCacheLRU;
        arg0->unk14 = __glKonInsertARMTexCacheSlow;
        __glKonInsertARMTexCacheSlow(arg0, arg1, var_a2, var_a3, var_a4, var_a5, var_a6);
        return;
    }
    __glKonFreeTextureHash(arg0, arg1, var_a2, var_a3, var_a4, var_a5, var_a6);
}

void __glKonDeleteARMTexCache(void *arg0, void *arg1) {
    arg1->unk8->unkC = (void *) arg1->unkC;
    arg1->unkC->unk8 = (void *) arg1->unk8;
    arg1->unkC = (void *) arg0->unk4;
    arg0->unk4 = arg1;
}

void __glKonInitARMTexCache(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_a3;

    arg0->unk8 = 0;
    arg0->unk34 = 0;
    arg0->unk4 = 0;
    arg0->unk20 = arg3;
    temp_a3 = arg0 + 0x24;
    arg0->unk30 = temp_a3;
    arg0->unk2C = temp_a3;
    arg0->unk10 = arg2;
    arg0->unk0 = temp_a3;
    arg0->unkC = arg1;
    arg0->unk1C = &__glNop;
    arg0->unk18 = __glKonDeleteARMTexCache;
    arg0->unk14 = __glKonInsertARMTexCacheFast;
}

void __glKonInvalidateARMTexCache(void *arg1) {
    void *temp_v0;
    void *var_s0;

    temp_v0 = arg1->unk0;
    var_s0 = temp_v0->unkC;
    if (temp_v0 != var_s0) {
        do {
            arg1->unk20(var_s0->unk0);
            var_s0 = var_s0->unkC;
        } while (arg1->unk0 != var_s0);
        var_s0->unk8->unkC = (void *) arg1->unk4;
        arg1->unk4 = (void *) var_s0->unkC;
        var_s0->unkC = var_s0;
        var_s0->unk8 = var_s0;
    }
}

void __glKonFreeARMTexCache(void *arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_f0;
    s32 var_s0;

    temp_f0 = (s32) ((f64) (second half of f64) / (second half of f64));
    M2C_TRAP_IF(arg1->unk10 == 0);
    if (temp_f0 > 0) {
        var_s0 = 0;
        do {
            arg0->unkC(arg0, *(arg1->unk34 + var_s0));
            var_s0 += 4;
        } while (var_s0 != (temp_f0 * 4));
    }
    temp_a1 = arg1->unk34;
    if (temp_a1 != 0) {
        arg0->unkC(arg0, temp_a1);
    }
}

s32 __glKonTexChecksum(s32 arg0, void *arg1) {
    s32 temp_a3;
    s32 temp_t3;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_t1;
    void *var_a1;
    void *var_a1_2;

    var_a1 = arg1;
    var_a3 = arg0 - 1;
    if (var_a3 != -1) {
        var_a4 = 0;
        var_a6 = 0;
        if (arg0 & 1) {
            var_a3 -= 1;
            if (var_a3 & 1) {
                var_a1 += 4;
                var_a4 = var_a1->unk-4;
            } else {
                var_a1 += 4;
                var_a6 = var_a1->unk-4;
            }
        }
        var_t1 = var_a3 & 1;
        if ((arg0 >> 1) != 0) {
loop_9:
            temp_a3 = var_a3 - 1;
            temp_t3 = temp_a3 & 1;
            var_a3 = temp_a3 - 1;
            if (var_t1 != 0) {
                var_a1_2 = var_a1 + 4;
                var_a4 += var_a1_2->unk-4;
            } else {
                var_a1_2 = var_a1 + 4;
                var_a6 ^= var_a1_2->unk-4;
            }
            if (temp_t3 == 0) {
                var_a1 = var_a1_2 + 4;
                var_a6 ^= var_a1->unk-4;
            } else {
                var_a1 = var_a1_2 + 4;
                var_a4 += var_a1->unk-4;
            }
            var_t1 = var_a3 & 1;
            if (var_a3 != -1) {
                goto loop_9;
            }
        }
        return var_a6 ^ var_a4;
    }
    return 0 ^ 0;
}

void __glKonTexQuickSortPairs(s32 arg0, s32 arg1, s32 arg2) {
    f32 *var_a5;
    f32 *var_a6;
    f32 temp_f0;
    f32 temp_f4;
    f32 var_f5;
    f32 var_f6;
    s32 var_a0;
    s32 var_a4;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_condition_bit;
    s32 var_s0;

    var_a4 = arg1;
    var_s0 = arg2;
    temp_f4 = *(arg0 + (((arg2 + arg1) & ~1) * 4));
    if (arg1 < arg2) {
        var_a6 = (arg2 * 8) + arg0;
        var_a5 = (arg1 * 8) + arg0;
        var_a0 = 0;
        var_a7 = var_a4 < var_s0;
loop_8:
        var_f6 = *var_a5;
        var_f5 = *var_a6;
        var_condition_bit = temp_f4 <= var_f5;
        if ((var_f6 < temp_f4) && (var_a7 != 0)) {
loop_12:
            var_a4 += 1;
            var_a5 = arg0 + (var_a4 * 8);
            var_f6 = *var_a5;
            var_condition_bit = var_f6 < temp_f4;
            if ((var_f6 < temp_f4) && (var_a4 < var_s0)) {
                var_a4 += 1;
                var_a5 = arg0 + (var_a4 * 8);
                var_f6 = *var_a5;
                var_condition_bit = var_f6 < temp_f4;
                if (var_f6 < temp_f4) {
                    if (var_a4 < var_s0) {
                        goto loop_12;
                    }
                }
            }
        }
        var_a7_2 = var_a4 < var_s0;
        if (var_condition_bit && (var_a7_2 != 0)) {
loop_3:
            var_s0 -= 1;
            var_a6 = arg0 + (var_s0 * 8);
            var_f5 = *var_a6;
            var_a7_2 = var_a4 < var_s0;
            if ((temp_f4 <= var_f5) && (var_a7_2 != 0)) {
                var_s0 -= 1;
                var_a6 = arg0 + (var_s0 * 8);
                var_f5 = *var_a6;
                var_a7_2 = var_a4 < var_s0;
                if (temp_f4 <= var_f5) {
                    if (var_a7_2 != 0) {
                        goto loop_3;
                    }
                }
            }
        }
        if (var_a4 != var_s0) {
            var_a5->unk0 = var_f5;
            var_a6->unk0 = var_f6;
            temp_f0 = var_a5->unk4;
            var_a5->unk4 = (f32) var_a6->unk4;
            var_a0 = 1;
            var_a7 = var_a4 < var_s0;
            var_a6->unk4 = temp_f0;
            goto loop_8;
        }
        if (var_a0 != 0) {
            .L0d979020(arg0, var_a4 - 1, var_a4, var_a5, var_a6, var_a7_2);
            .L0d979020(arg0, var_s0 + 1, arg2);
        }
    }
}

void __glKonTexGetCubicSpline(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    s64 sp8;
    s64 sp0;
    f32 temp_f11;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f1;
    f32 temp_f3;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_v1;
    s32 var_a2_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_t2;
    s32 var_t2_2;
    s64 temp_a0;
    s64 temp_v1_2;
    void *var_a2;
    void *var_a3;
    void *var_a5;
    void *var_a6;
    void *var_a6_2;
    void *var_t0;
    void *var_t1;
    void *var_t1_2;
    void *var_t3;
    void *var_t8;

    temp_v1 = arg4 * 4;
    var_t3 = arg0 + 4;
    temp_a0 = temp_v1 + arg3;
    sp8 = temp_a0;
    temp_v1_2 = temp_v1 + arg2;
    sp0 = temp_v1_2;
    var_t0 = arg3 + 4;
    var_t1 = arg2 + 4;
    temp_a0->unk-4 = 0.0f;
    var_t8 = arg1 + 4;
    arg3->unk0 = 0.0f;
    temp_ra = arg4 - 2;
    temp_s0 = arg4 - 3;
    temp_v1_2->unk-4 = 0.0f;
    arg2->unk0 = 0.0f;
    var_t2 = temp_s0;
    if (temp_ra > 0) {
        if (temp_ra & 1) {
            temp_f6 = var_t3->unk-4;
            temp_f1 = 1.0f / M2C_ERROR(/* unknown instruction: madd.s $f1, $f10, $f1, $f4 */);
            arg2->unk4 = (f32) (temp_f1 * (((arg0->unk4 - temp_f6) / (var_t3->unk4 - temp_f6)) + -1.0f));
            temp_f3 = arg1->unk4;
            temp_f5 = arg0->unk4;
            arg3->unk4 = (f32) (((var_t8->unk4 - temp_f3) / (var_t3->unk4 - temp_f5)) - ((temp_f3 - var_t8->unk-4) / (temp_f5 - var_t3->unk-4)));
            var_t2 = temp_s0 - 1;
            var_t0 += 4;
            var_t1 += 4;
            var_t8 += 4;
            var_t3 += 4;
            var_t0->unk-4 = (f32) (temp_f1 * M2C_ERROR(/* unknown instruction: nmsub.s $f2, $f2, $f3, $f4 */));
        }
        var_a3 = var_t3;
        var_a5 = var_t0;
        var_a6 = var_t1;
        var_a4 = var_t2;
        if ((temp_ra >> 1) != 0) {
            var_a2 = var_t8;
            do {
                temp_f18 = var_a3->unk-4;
                temp_f13 = 1.0f / M2C_ERROR(/* unknown instruction: madd.s $f13, $f10, $f13, $f16 */);
                var_a6->unk0 = (f32) (temp_f13 * (((var_a3->unk0 - temp_f18) / (var_a3->unk4 - temp_f18)) + -1.0f));
                temp_f17 = var_a3->unk0;
                temp_f15 = var_a2->unk0;
                var_a5->unk0 = (f32) (((var_a2->unk4 - temp_f15) / (var_a3->unk4 - temp_f17)) - ((temp_f15 - var_a2->unk-4) / (temp_f17 - var_a3->unk-4)));
                var_a5->unk0 = (f32) (temp_f13 * M2C_ERROR(/* unknown instruction: nmsub.s $f14, $f14, $f15, $f16 */));
                temp_f14 = var_a3->unk0;
                temp_f5_2 = 1.0f / M2C_ERROR(/* unknown instruction: madd.s $f5, $f10, $f5, $f12 */);
                var_a6->unk4 = (f32) (temp_f5_2 * (((var_a3->unk4 - temp_f14) / (var_a3->unk8 - temp_f14)) + -1.0f));
                temp_f13_2 = var_a3->unk4;
                temp_f11 = var_a2->unk4;
                var_a5->unk4 = (f32) (((var_a2->unk8 - temp_f11) / (var_a3->unk8 - temp_f13_2)) - ((temp_f11 - var_a2->unk0) / (temp_f13_2 - var_a3->unk0)));
                var_a5 += 8;
                var_a4 -= 2;
                var_a6 += 8;
                var_a2 += 8;
                var_a3 += 8;
                var_a5->unk-4 = (f32) (temp_f5_2 * M2C_ERROR(/* unknown instruction: nmsub.s $f6, $f6, $f11, $f12 */));
            } while (var_a4 != -1);
        }
        var_a2_2 = temp_ra & 3;
        var_t1_2 = sp0 - 8;
        var_t2_2 = temp_s0;
        if (var_a2_2 != 0) {
            do {
                var_a2_2 -= 1;
                var_t2_2 -= 1;
                var_t1_2 -= 4;
                var_t1_2->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
            } while (var_a2_2 != 0);
        }
        var_a6_2 = var_t1_2;
        var_a4_2 = var_t2_2;
        if ((temp_ra >> 2) != 0) {
            do {
                var_a6_2->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                var_a6_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                var_a6_2->unk-8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                var_a4_2 -= 4;
                var_a6_2 -= 0x10;
                var_a6_2->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f25 */);
            } while (var_a4_2 != -1);
        }
    }
}

void __glKonTexEvaluateCubicSpline(f32 *arg0, f32 *arg1, s32 arg2, f32 *arg3, f32 *arg4, s32 arg6) {
    f32 *var_a0;
    f32 *var_a1;
    f32 *var_a3;
    f32 *var_a4;
    s32 temp_a0;
    s32 var_a2;
    s32 var_a6;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if ((var_a2 > 0) && (*var_a0 < *var_a3)) {
loop_2:
        var_a2 -= 1;
        var_a1 += 4;
        var_a0 += 4;
        var_a1->unk-4 = (f32) *var_a4;
        if ((var_a2 > 0) && (*var_a0 < *var_a3)) {
            var_a2 -= 1;
            var_a1 += 4;
            var_a0 += 4;
            var_a1->unk-4 = (f32) *var_a4;
            if (var_a2 > 0) {
                if (*var_a0 < *var_a3) {
                    goto loop_2;
                }
            }
        }
    }
    var_a6 = arg6 - 1;
    if (var_a2 > 0) {
loop_18:
        var_a6 -= 1;
        var_a4 += 4;
        var_a3 += 4;
        if (var_a6 > 0) {
            if (!(var_a3->unk0 <= *var_a0)) {

            } else {
                goto loop_18;
            }
        }
        if ((var_a2 > 0) && (*var_a0 < var_a3->unk0)) {
loop_12:
            M2C_ERROR(/* unknown instruction: nmsub.s $f18, $f11, $f9, $f17 */);
            M2C_ERROR(/* unknown instruction: madd.s $f16, $f12, $f18, $f18 */);
            M2C_ERROR(/* unknown instruction: madd.s $f21, $f12, $f17, $f17 */);
            M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f19, $f21 */);
            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f16, $f17 */);
            var_a2 -= 1;
            var_a1 += 4;
            var_a0 += 4;
            var_a1->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f10, $f15 */);
            if (var_a2 > 0) {
                if (*var_a0 < var_a3->unk0) {
                    goto loop_12;
                }
            }
        }
        if (var_a6 != 0) {
            if (var_a2 > 0) {
                goto loop_18;
            }
            return;
        }
        if (var_a2 > 0) {
            temp_a0 = var_a2;
            if (var_a2 & 1) {
                var_a1 += 4;
                var_a2 -= 1;
                var_a1->unk-4 = (f32) var_a4->unk0;
            }
            if ((temp_a0 >> 1) != 0) {
                do {
                    *var_a1 = var_a4->unk0;
                    var_a2 -= 2;
                    var_a1 += 8;
                    var_a1->unk-4 = (f32) var_a4->unk0;
                } while (var_a2 != 0);
            }
        }
    }
}

f32 __glKonTexExp2NegX64(f32 fparg0) {
    if ((s32) fparg0 >= -6) {

    }
    return M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
}
