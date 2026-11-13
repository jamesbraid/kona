/* Warning: missing "jr $ra" in last block of __glKonInitializeEnables (.L0d94df08). */

? ValidateHistogramSink(s32, s32, void *, s32, s32, s32, s32); /* extern */
? __glKonEvalDisable(void *, s32, void *, s32, s32, s32, s32); /* extern */
? __glKonEvalEnable(u32, s32, void *, s32, s32, ?, s32); /* extern */
s32 __glSPDlistSpace(?, s32, s32);                  /* extern */
? __glSetError(?, void *, void *, s32, u32, s32, s32); /* extern */
? __glkon_EnableTexture(void *, ?, void *, s32, s32, s32, s32); /* extern */
? __glkona_wait_rdata(?);                           /* extern */
? __glsplc_InvalidValue();                          /* extern */
? exit(?);                                          /* extern */
? fprintf(void *, void *, u16, u16, void *, s32, u16); /* extern */
extern ? __iob;
extern ? __rodata0;
extern ? sub_0da90000;

void __glkonim_Begin(u32 arg0) {
    if (arg0 < 0xAU) {
        *(s32 *)0x4000 = arg0 + 0x57;
        *(void *)0x4000 = 0;
        *(s32 *)0x1018 = 1;
        return;
    }
    *(void *)0x4000 = 0xE4;
    *(void *)0x4000 = 0x500;
}

void __glkonim_End(void) {
    *(s32 *)0x1018 = 0;
    *(s32 *)0x4000 = 0x71;
    *(void *)0x4000 = 0;
}

void __glkonim_Finish(void) {
    if (*(s32 *)0x1018 != 1) {
        *(s32 *)0x4000 = 0xC6;
        *(void *)0x4000 = 1;
        __glkona_wait_rdata(1);
    } else {
        __glSetError(0x502, (void *)1);
    }
}

void __glkonim_Flush(void) {
    *(s32 *)0x4000 = 0xC7;
    *(void *)0x4000 = 0;
}

void __glkonim_AlphaFunc(s32 arg0, f32 fparg1) {
    if (fparg1 < 0.0f) {
        *(s32 *)0x4000 = 0xCA;
        *(void *)0x4000 = arg0;
        *(void *)0x4000 = 0;
        return;
    }
    *(void *)0x4000 = 0xCA;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = (s32) M2C_ERROR(/* unknown instruction: movt.s $f13, $f2, $fcc1 */);
}

void __glkonlc_AlphaFunc(s32 arg0, f32 fparg1) {
    f32 var_f20;
    s32 var_a3;
    void *temp_a1;

    if (fparg1 < 0.0f) {
        var_f20 = 0.0f;
    } else {
        var_f20 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f1, $fcc1 */);
    }
    var_a3 = *(s32 *)0x1028;
    if (var_a3 < 3) {
        var_a3 = __glSPDlistSpace(0, var_a3);
    }
    temp_a1 = *(void **)0x1030;
    temp_a1->unk0 = 0xCA;
    temp_a1->unk4 = arg0;
    temp_a1->unk8 = var_f20;
    *(void *)0x1030 = (void *) (temp_a1 + 0xC);
    *(void *)0x1028 = (s32) (var_a3 - 3);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
}

void __glkonim_SampleMaskSGIS(s32 arg1, f32 fparg0) {
    if (fparg0 < 0.0f) {
        *(s32 *)0x4000 = 0x118;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = arg1;
        return;
    }
    *(void *)0x4000 = 0x118;
    *(void *)0x4000 = (s32) M2C_ERROR(/* unknown instruction: movt.s $f12, $f2, $fcc1 */);
    *(void *)0x4000 = arg1;
}

void __glkonlc_SampleMaskSGIS(s32 arg1, f32 fparg0) {
    f32 var_f20;
    s32 var_a3;
    void *temp_a1;

    if (fparg0 < 0.0f) {
        var_f20 = 0.0f;
    } else {
        var_f20 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f1, $fcc1 */);
    }
    var_a3 = *(s32 *)0x1028;
    if (var_a3 < 3) {
        var_a3 = __glSPDlistSpace(0, var_a3);
    }
    temp_a1 = *(void **)0x1030;
    temp_a1->unk0 = 0x118;
    temp_a1->unk4 = var_f20;
    temp_a1->unk8 = arg1;
    *(void *)0x1030 = (void *) (temp_a1 + 0xC);
    *(void *)0x1028 = (s32) (var_a3 - 3);
    *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
}

void __glKonInitializeEnables(void) {
    s32 temp_a6;
    u16 temp_a3;
    u16 temp_a7;
    u16 temp_t1;
    void *temp_a2;
    void *temp_a5;
    void *temp_t0;
    void *var_a1;

    var_a1 = &__rodata0 + 0x25C8;
    temp_a5 = &sub_0da90000 - 0x2830;
    temp_a2 = var_a1 + 0x2E8;
loop_1:
    temp_a3 = var_a1->unk2;
    temp_a6 = temp_a3 & 0xFF;
    temp_a7 = *(temp_a5 + ((temp_a6 + ((s32) temp_a3 >> 7)) * 4));
    if (temp_a7 == 0) {
        temp_t1 = var_a1->unk0;
        var_a1 += 4;
        temp_t0 = temp_a5 + (temp_a6 * 4);
        temp_t0->unk2 = temp_t1;
        temp_t0->unk0 = temp_a3;
        if (var_a1 == temp_a2) {
            return;
        }
        goto loop_1;
    }
    fprintf(&__iob + 0x20, &__rodata0 - 0x1A50, *(temp_a5 + (temp_a6 * 4)), temp_a3, temp_a5, temp_a6, temp_a7);
    exit(1);
}

void __glkonim_xEnable(u32 arg0, void *arg2, s32 arg4, u32 arg5, s32 arg7) {
    s32 var_a4;
    s32 var_a7;
    u16 temp_a0;
    u32 var_a5;
    void *temp_a3;
    void *var_a2;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a7 = arg7;
    temp_a3 = *(void **)0x1010;
    if ((arg0 < 0xFFFFU) && (var_a5 = arg0 >> 7, var_a4 = ((arg0 & 0xFF) + var_a5) * 4, var_a2 = &sub_0da90000 - 0x2830 + var_a4, var_a7 = 0x24, (var_a2->unk0 == arg0))) {
        temp_a0 = var_a2->unk2;
        *(s32 *)0x4000 = 0x24;
        *(void *)0x4000 = (s32) temp_a0;
        switch (temp_a0) {                          /* irregular */
        case 0xAD:
            temp_a3->unk1528 = (s32) (temp_a3->unk1528 | 0x20);
            return;
        case 0xAE:
            temp_a3->unk1528 = (s32) (temp_a3->unk1528 | 1);
            return;
        case 0xAF:
            temp_a3->unk1528 = (s32) (temp_a3->unk1528 | 2);
            return;
        case 0xB0:
            temp_a3->unk1528 = (s32) (temp_a3->unk1528 | 8);
            return;
        case 0xB1:
            temp_a3->unk1528 = (s32) (temp_a3->unk1528 | 4);
            return;
        case 0xB2:
            temp_a3->unk1528 = (s32) (temp_a3->unk1528 | 0x10);
            break;
        }
    } else {
        __glSetError(0x500, var_a2, temp_a3, var_a4, var_a5, var_a7);
    }
}

void __glkonim_Enable(u32 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a4;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    void *temp_a2;

    var_a6 = arg6;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 < 0xD90U) || (arg0 >= 0xDB9U)) {
            temp_a1 = arg0 < 0x8012U;
            var_a3 = arg0 > 0x8012U;
            if (temp_a1 == 0) {
                if (var_a3 == 0) {
                    var_a4 = temp_a2->unk700 | 0x08000000;
                    goto block_6;
                }
                if (arg0 >= 0x8076U) {
                    if (arg0 > 0x8076U) {
                        if (arg0 >= 0x8079U) {
                            if (arg0 > 0x8079U) {
                                if (arg0 >= 0x81C7U) {
                                    if (arg0 <= 0x81C7U) {
                                        temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x100);
                                    }
                                } else if (arg0 == 0x8094) {
                                    temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x20);
                                }
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                *(u32 *)0x4000 = 0x24;
                                *(void *)0x4000 = arg0;
                                return;
                            }
                            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 0x10);
                            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0x08000000);
                            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x10);
                        } else if (arg0 >= 0x8078U) {
                            if (arg0 <= 0x8078U) {
                                temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 4);
                                temp_a2->unk151C = (s32) (temp_a2->unk151C | 0x07F00000);
                                temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 4);
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                *(u32 *)0x4000 = 0x24;
                                *(void *)0x4000 = arg0;
                            }
                        } else if (arg0 == 0x8077) {
                            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 8);
                            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xF0000000);
                            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 8);
                        } else {
                            /* Duplicate return node #8. Try simplifying control flow for better match */
                            *(u32 *)0x4000 = 0x24;
                            *(void *)0x4000 = arg0;
                        }
                    } else {
                        temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 2);
                        temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xFF000);
                        temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 2);
                    }
                } else {
                    var_a6 = arg0 < 0x806FU;
                    var_a7 = arg0 > 0x806FU;
                    if (var_a6 == 0) {
                        if (var_a7 != 0) {
                            if (arg0 >= 0x8075U) {
                                if (arg0 <= 0x8075U) {
                                    temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 1);
                                    temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xF00);
                                    temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 1);
                                } else {
                                    /* Duplicate return node #8. Try simplifying control flow for better match */
                                    *(u32 *)0x4000 = 0x24;
                                    *(void *)0x4000 = arg0;
                                }
                            } else if (arg0 == 0x8074) {
                                temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 0x20);
                                temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xFF);
                                temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x20);
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                *(u32 *)0x4000 = 0x24;
                                *(void *)0x4000 = arg0;
                            }
                        } else {
                            goto block_40;
                        }
                    } else {
                        if (arg0 >= 0x802EU) {
                            if (arg0 <= 0x802EU) {
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x20000000);
                                ValidateHistogramSink(0x802E, temp_a1, temp_a2, var_a3, var_a6, var_a7);
                            }
                        } else if (arg0 == 0x8024) {
                            temp_a0 = temp_a2->unk700 | 0x10000000;
                            temp_a2->unk700 = temp_a0;
                            ValidateHistogramSink(temp_a0, 0x10000000, temp_a2, var_a3, var_a6, var_a7);
                        }
                        goto block_7;
                    }
                }
            } else {
                temp_a0_2 = arg0 < 0xC63U;
                temp_a1_2 = arg0 < 0xC60U;
                if (temp_a0_2 == 0) {
                    var_a7 = arg0 < 0xC64U;
                    temp_a0_3 = arg0 < 0xDE1U;
                    if (var_a7 != 0) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x200000);
                        goto block_7;
                    }
                    if (temp_a0_3 == 0) {
                        if (arg0 >= 0xDE2U) {
                            if (arg0 >= 0x8011U) {
                                if (arg0 <= 0x8011U) {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x04000000);
                                }
                            } else if (arg0 == 0x8010) {
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x02000000);
                            }
                        } else {
                            goto block_41;
                        }
                        /* Duplicate return node #8. Try simplifying control flow for better match */
                        *(u32 *)0x4000 = 0x24;
                        *(void *)0x4000 = arg0;
                        return;
                    }
                    var_a3 = 0xD80;
                    if (arg0 >= 0xDE0U) {
                        if (temp_a0_3 != 0) {
block_40:
block_41:
                            __glkon_EnableTexture((void *) arg0, 1, temp_a2, var_a3, var_a6, var_a7);
                        }
                        goto block_7;
                    }
                    if (arg0 == 0xD80) {
                        temp_a4 = temp_a2->unk700 | 0x800000;
                        temp_a2->unk700 = temp_a4;
                        __glKonEvalEnable(arg0, temp_a1_2, temp_a2, 0xD80, temp_a4, 0x800000, var_a7);
                        return;
                    }
                    goto block_7;
                }
                if (temp_a1_2 == 0) {
                    if (arg0 < 0xC61U) {
                        var_a4 = temp_a2->unk700 | 0x40000;
block_6:
                        temp_a2->unk700 = var_a4;
                    } else if (arg0 >= 0xC62U) {
                        if (temp_a0_2 != 0) {
                            temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x100000);
                        }
                    } else if (arg0 == 0xC61) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x80000);
                    }
                } else if (arg0 >= 0xBA1U) {
                    if (arg0 < 0xBA2U) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x400000);
                    }
                } else if (arg0 == 0xB50) {
                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x40);
block_7:
                }
                *(u32 *)0x4000 = 0x24;
                *(void *)0x4000 = arg0;
            }
        } else {
            sp18 = (s64) temp_a2;
            __glkon_EnableTexture(temp_a2, 1);
            if (arg0 < 0xDB0U) {
                sp18->unk710 = (s32) (sp18->unk710 | ((1 << (arg0 - 0xD90)) & 0xFFFF));
                return;
            }
            sp18->unk714 = (s32) (sp18->unk714 | ((1 << (arg0 - 0xDB0)) & 0xFFFF));
        }
    } else {
        *(void *)0x4000 = 0xE4U;
        *(void *)0x4000 = 0x502U;
    }
}

void __glkonim_Disable(u32 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a5;
    s32 var_a6;
    void *temp_a2;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_a2 = *(void **)0x1010;
    temp_a3 = temp_a2->unk1528;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 < 0xD90U) || (arg0 >= 0xDB9U)) {
            temp_a1 = arg0 < 0x8012U;
            temp_a4 = arg0 > 0x8012U;
            if (temp_a1 == 0) {
                if (temp_a4 == 0) {
                    temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x08000000);
                    goto block_6;
                }
                if (arg0 >= 0x8076U) {
                    if (arg0 <= 0x8076U) {
                        temp_at = temp_a3 & ~2;
                        temp_a2->unk1528 = temp_at;
                        temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0xFF000);
                        if (temp_at != temp_a3) {
                            temp_a2->unk8AC8 = -1;
                            return;
                        }
                        temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 2);
                        return;
                    }
                    if (arg0 >= 0x8079U) {
                        if (arg0 <= 0x8079U) {
                            temp_t9 = temp_a3 & ~0x10;
                            temp_a2->unk1528 = temp_t9;
                            temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0x08000000);
                            if (temp_t9 != temp_a3) {
                                temp_a2->unk8AC8 = -1;
                            } else {
                                temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x10);
                            }
                        } else {
                            if (arg0 >= 0x81C7U) {
                                if (arg0 <= 0x81C7U) {
                                    temp_a2->unk704 = (s32) (temp_a2->unk704 & ~0x100);
                                }
                            } else if (arg0 == 0x8094) {
                                temp_a2->unk704 = (s32) (temp_a2->unk704 & ~0x20);
                            }
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            *(u32 *)0x4000 = 0x25;
                            *(void *)0x4000 = arg0;
                        }
                    } else if (arg0 >= 0x8078U) {
                        if (arg0 <= 0x8078U) {
                            temp_v1 = temp_a3 & ~4;
                            temp_a2->unk1528 = temp_v1;
                            temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0x07F00000);
                            if (temp_v1 != temp_a3) {
                                temp_a2->unk8AC8 = -1;
                            } else {
                                temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 4);
                            }
                        } else {
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            *(u32 *)0x4000 = 0x25;
                            *(void *)0x4000 = arg0;
                        }
                    } else if (arg0 == 0x8077) {
                        temp_t1 = temp_a3 & ~8;
                        temp_a2->unk1528 = temp_t1;
                        temp_a2->unk151C = (s32) (temp_a2->unk151C & 0x0FFFFFFF);
                        if (temp_t1 != temp_a3) {
                            temp_a2->unk8AC8 = -1;
                        } else {
                            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 8);
                        }
                    } else {
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        *(u32 *)0x4000 = 0x25;
                        *(void *)0x4000 = arg0;
                    }
                } else {
                    var_a5 = arg0 < 0x806FU;
                    var_a6 = arg0 > 0x806FU;
                    if (var_a5 == 0) {
                        if (var_a6 != 0) {
                            if (arg0 >= 0x8075U) {
                                if (arg0 <= 0x8075U) {
                                    temp_t2 = temp_a3 & ~1;
                                    temp_a2->unk1528 = temp_t2;
                                    temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0xF00);
                                    if (temp_t2 != temp_a3) {
                                        temp_a2->unk8AC8 = -1;
                                    } else {
                                        temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 1);
                                    }
                                } else {
                                    /* Duplicate return node #7. Try simplifying control flow for better match */
                                    *(u32 *)0x4000 = 0x25;
                                    *(void *)0x4000 = arg0;
                                }
                            } else if (arg0 == 0x8074) {
                                temp_at_2 = temp_a3 & ~0x20;
                                temp_a2->unk1528 = temp_at_2;
                                temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0xFF);
                                if (temp_at_2 != temp_a3) {
                                    temp_a2->unk8AC8 = -1;
                                } else {
                                    temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x20);
                                }
                            } else {
                                /* Duplicate return node #7. Try simplifying control flow for better match */
                                *(u32 *)0x4000 = 0x25;
                                *(void *)0x4000 = arg0;
                            }
                        } else {
                            goto block_37;
                        }
                    } else {
                        if (arg0 >= 0x802EU) {
                            if (arg0 <= 0x802EU) {
                                temp_a1_2 = ~0x20000000;
                                temp_a0 = temp_a2->unk700 & temp_a1_2;
                                temp_a2->unk700 = temp_a0;
                                ValidateHistogramSink(temp_a0, temp_a1_2, temp_a2, 0x8024, temp_a4, var_a5, var_a6);
                            }
                        } else if (arg0 == 0x8024) {
                            temp_a5 = ~0x10000000;
                            temp_a4_2 = temp_a2->unk700 & temp_a5;
                            temp_a2->unk700 = temp_a4_2;
                            ValidateHistogramSink(0x802E, temp_a1, temp_a2, 0x8024, temp_a4_2, temp_a5, var_a6);
                        }
                        goto block_6;
                    }
                }
            } else {
                temp_a0_2 = arg0 < 0xC63U;
                if (temp_a0_2 == 0) {
                    temp_a0_3 = arg0 < 0xDE1U;
                    if (arg0 < 0xC64U) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x200000);
                        goto block_6;
                    }
                    if (temp_a0_3 == 0) {
                        if (arg0 >= 0xDE2U) {
                            if (arg0 >= 0x8011U) {
                                if (arg0 <= 0x8011U) {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x04000000);
                                }
                            } else if (arg0 == 0x8010) {
                                temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x02000000);
                            }
                        } else {
                            goto block_37;
                        }
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        *(u32 *)0x4000 = 0x25;
                        *(void *)0x4000 = arg0;
                        return;
                    }
                    var_a6 = 0xD80;
                    if (arg0 >= 0xDE0U) {
                        if (temp_a0_3 != 0) {
block_37:
                            __glkon_EnableTexture((void *) arg0, 0, temp_a2, temp_a3, temp_a4, var_a5, var_a6);
                        }
                        goto block_6;
                    }
                    if (arg0 == 0xD80) {
                        temp_a7 = temp_a2->unk700 & ~0x800000;
                        temp_a2->unk700 = temp_a7;
                        __glKonEvalDisable((void *) arg0, temp_a1, temp_a2, temp_a3, temp_a4, 0xD80, temp_a7);
                        return;
                    }
                    goto block_6;
                }
                if (arg0 >= 0xC60U) {
                    if (arg0 < 0xC61U) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x40000);
                    } else if (arg0 >= 0xC62U) {
                        if (temp_a0_2 != 0) {
                            temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x100000);
                        }
                    } else if (arg0 == 0xC61) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x80000);
                    }
                } else if (arg0 >= 0xBA1U) {
                    if (arg0 < 0xBA2U) {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x400000);
                    }
                } else if (arg0 == 0xB50) {
                    temp_a2->unk700 = (s32) (temp_a2->unk700 & ~0x40);
block_6:
                }
                *(u32 *)0x4000 = 0x25;
                *(void *)0x4000 = arg0;
            }
        } else {
            sp18 = (s64) temp_a2;
            __glKonEvalDisable(temp_a2, temp_a3, (void *)1);
            if (arg0 < 0xDB0U) {
                sp18->unk710 = (s32) (sp18->unk710 & (~(1 << (arg0 - 0xD90)) & 0xFFFF));
                return;
            }
            sp18->unk714 = (s32) (sp18->unk714 & (~(1 << (arg0 - 0xDB0)) & 0xFFFF));
        }
    } else {
        *(void *)0x4000 = 0xE4U;
        *(void *)0x4000 = 0x502U;
    }
}

void __glkonim_EnableClientState(s32 arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500, (void *)0x8077, temp_a2, 0x8078, 0x8079U, 0x8074, temp_a2 + 0x10000);
            break;
        case 0x8074:
            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xFF);
            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 0x20);
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x20);
            return;
        case 0x8075:
            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 1);
            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xF00);
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 1);
            return;
        case 0x8076:
            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 2);
            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xFF000);
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 2);
            return;
        case 0x8077:
            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 8);
            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xF0000000);
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 8);
            return;
        case 0x8078:
            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 4);
            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0x07F00000);
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 4);
            return;
        case 0x8079:
            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 0x10);
            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0x08000000);
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x10);
            break;
        }
    } else {
        *(s32 *)0x4000 = 0xE4;
        *(void *)0x4000 = 0x502;
    }
}

void __glkonim_DisableClientState(s32 arg0) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_v0;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    temp_a3 = temp_a2->unk1528;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x8075) {
            if (arg0 != 0x8076) {
                temp_t0 = temp_a3 & ~0x20;
                switch (arg0) {                     /* irregular */
                default:
                    __glSetError(0x500, (void *)0x8077, temp_a2, temp_a3, 0x8078U, 0x8079, 0x8074);
                    break;
                case 0x8074:
                    temp_a2->unk1528 = temp_t0;
                    temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0xFF);
                    if (temp_t0 != temp_a3) {
                        temp_a2->unk8AC8 = -1;
                        return;
                    }
                    temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x20);
                    return;
                case 0x8077:
                    temp_a4 = temp_a3 & ~8;
                    temp_a2->unk1528 = temp_a4;
                    temp_a2->unk151C = (s32) (temp_a2->unk151C & 0x0FFFFFFF);
                    if (temp_a4 != temp_a3) {
                        temp_a2->unk8AC8 = -1;
                    } else {
                        temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 8);
                    }
                    break;
                case 0x8078:
                    temp_a7 = temp_a3 & ~4;
                    temp_a2->unk1528 = temp_a7;
                    temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0x07F00000);
                    if (temp_a7 != temp_a3) {
                        temp_a2->unk8AC8 = -1;
                    } else {
                        temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 4);
                    }
                    break;
                case 0x8079:
                    temp_t2 = temp_a3 & ~0x10;
                    temp_a2->unk1528 = temp_t2;
                    temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0x08000000);
                    if (temp_t2 != temp_a3) {
                        temp_a2->unk8AC8 = -1;
                    } else {
                        temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 0x10);
                    }
                    break;
                }
            } else {
                temp_v0 = temp_a3 & ~2;
                temp_a2->unk1528 = temp_v0;
                temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0xFF000);
                if (temp_v0 != temp_a3) {
                    temp_a2->unk8AC8 = -1;
                } else {
                    temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 2);
                }
            }
        } else {
            temp_t8 = temp_a3 & ~1;
            temp_a2->unk1528 = temp_t8;
            temp_a2->unk151C = (s32) (temp_a2->unk151C & ~0xF00);
            if (temp_t8 != temp_a3) {
                temp_a2->unk8AC8 = -1;
                return;
            }
            temp_a2->unk8AC8 = (s32) (temp_a2->unk8AC8 | 1);
        }
    } else {
        *(s32 *)0x4000 = 0xE4;
        *(void *)0x4000 = 0x502;
    }
}

f32 __glkonim_TexGendv(s32 arg0, s32 arg1, void *arg2) {
    *(s32 *)0x4000 = 0x14;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    switch (arg1) {                                 /* irregular */
    default:
        *(void *)0x4000 = (s32) arg2->unk0;
        *(void *)0x4000 = (s32) (second half of f64);
        *(void *)0x4000 = (s32) (second half of f64);
        *(void *)0x4000 = (s32) (second half of f64);
        *(void *)0x4000 = (s32) (second half of f64);
        *(void *)0x4000 = (s32) (second half of f64);
        *(void *)0x4000 = (s32) (second half of f64);
        return (bitwise f32) (second half of f64);
    case 0x2501:
    case 0x2502:
    case 0x81F5:
    case 0x81F4:
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk0;
        *(void *)0x4000 = (bitwise s32) (f32) (second half of f64);
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk10;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk18;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        return 0.0f;
    case 0x81F7:
    case 0x81F6:
        *(void *)0x4000 = (bitwise s32) (f32) (second half of f64);
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk8;
        *(void *)0x4000 = (bitwise s32) (f32) (second half of f64);
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk18;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk20;
        *(void *)0x4000 = (bitwise s32) (f32) (second half of f64);
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk30;
        return 0.0f;
    }
}

void __glkonim_TexGenfv(s32 arg0, s32 arg1, void *arg2) {
    *(s32 *)0x4000 = 0x14;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    switch (arg1) {                                 /* irregular */
    default:
        *(void *)0x4000 = (s32) arg2->unk0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        return;
    case 0x2501:
    case 0x2502:
    case 0x81F5:
    case 0x81F4:
        *(void *)0x4000 = (bitwise s32) arg2->unk0;
        *(void *)0x4000 = (s32) arg2->unk4;
        *(void *)0x4000 = (s32) arg2->unk8;
        *(void *)0x4000 = (s32) arg2->unkC;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        return;
    case 0x81F7:
    case 0x81F6:
        *(void *)0x4000 = (bitwise s32) arg2->unk0;
        *(void *)0x4000 = (s32) arg2->unk4;
        *(void *)0x4000 = (s32) arg2->unk8;
        *(void *)0x4000 = (s32) arg2->unkC;
        *(void *)0x4000 = (s32) arg2->unk10;
        *(void *)0x4000 = (s32) arg2->unk14;
        *(void *)0x4000 = (s32) arg2->unk18;
        return;
    }
}

void __glkonim_TexGeniv(s32 arg0, s32 arg1, void *arg2) {
    *(s32 *)0x4000 = 0x14;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    switch (arg1) {                                 /* irregular */
    default:
        *(void *)0x4000 = (s32) arg2->unk0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        return;
    case 0x2501:
    case 0x2502:
    case 0x81F5:
    case 0x81F4:
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk0;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk4;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk8;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unkC;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = 0;
        return;
    case 0x81F7:
    case 0x81F6:
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk0;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk4;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk8;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unkC;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk10;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk14;
        *(void *)0x4000 = (bitwise s32) (f32) arg2->unk18;
        return;
    }
}

void __glkonlc_TexGendv(s32 arg0, s32 arg1, void *arg2) {
    s64 sp18;
    s64 sp10;
    s32 var_a5;
    void *temp_a1;

    var_a5 = *(s32 *)0x1028;
    if (var_a5 < 0xA) {
        sp18 = (s64) arg2;
        sp10 = (s64) arg0;
        var_a5 = __glSPDlistSpace(0, var_a5);
    }
    temp_a1 = *(void **)0x1030;
    temp_a1->unk8 = arg1;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x14;
    switch (arg1) {                                 /* irregular */
    default:
        temp_a1->unk24 = 0.0f;
        temp_a1->unk20 = 0.0f;
        temp_a1->unk1C = 0.0f;
        temp_a1->unk18 = 0.0f;
        temp_a1->unk14 = 0.0f;
        temp_a1->unk10 = 0.0f;
        temp_a1->unkC = (s32) arg2->unk0;
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0xA);
        return;
    case 0x2501:
    case 0x2502:
    case 0x81F5:
    case 0x81F4:
        temp_a1->unkC = (bitwise s32) (f32) arg2->unk0;
        temp_a1->unk10 = (f32) arg2->unk8;
        temp_a1->unk14 = (f32) arg2->unk10;
        temp_a1->unk24 = 0.0f;
        temp_a1->unk20 = 0.0f;
        temp_a1->unk1C = 0.0f;
        temp_a1->unk18 = (f32) arg2->unk18;
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 0xA);
        return;
    case 0x81F7:
    case 0x81F6:
        temp_a1->unkC = (bitwise s32) (f32) arg2->unk0;
        temp_a1->unk10 = (f32) arg2->unk8;
        temp_a1->unk14 = (f32) arg2->unk10;
        temp_a1->unk18 = (f32) arg2->unk18;
        temp_a1->unk1C = (f32) arg2->unk20;
        temp_a1->unk20 = (f32) arg2->unk28;
        temp_a1->unk24 = (f32) arg2->unk30;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 0xA);
        return;
    }
}

void __glkonlc_TexGenfv(s32 arg0, s32 arg1, void *arg2) {
    s64 sp18;
    s64 sp10;
    s32 var_a5;
    void *temp_a1;

    var_a5 = *(s32 *)0x1028;
    if (var_a5 < 0xA) {
        sp18 = (s64) arg2;
        sp10 = (s64) arg0;
        var_a5 = __glSPDlistSpace(0, var_a5);
    }
    temp_a1 = *(void **)0x1030;
    temp_a1->unk8 = arg1;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x14;
    switch (arg1) {                                 /* irregular */
    default:
        temp_a1->unk24 = 0;
        temp_a1->unk20 = 0;
        temp_a1->unk1C = 0;
        temp_a1->unk18 = 0;
        temp_a1->unk14 = 0;
        temp_a1->unk10 = 0;
        temp_a1->unkC = (s32) arg2->unk0;
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0xA);
        return;
    case 0x2501:
    case 0x2502:
    case 0x81F5:
    case 0x81F4:
        temp_a1->unkC = (bitwise s32) arg2->unk0;
        temp_a1->unk10 = (?32) arg2->unk4;
        temp_a1->unk14 = (?32) arg2->unk8;
        temp_a1->unk24 = 0;
        temp_a1->unk20 = 0;
        temp_a1->unk1C = 0;
        temp_a1->unk18 = (?32) arg2->unkC;
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 0xA);
        return;
    case 0x81F7:
    case 0x81F6:
        temp_a1->unkC = (bitwise s32) arg2->unk0;
        temp_a1->unk10 = (?32) arg2->unk4;
        temp_a1->unk14 = (?32) arg2->unk8;
        temp_a1->unk18 = (?32) arg2->unkC;
        temp_a1->unk1C = (?32) arg2->unk10;
        temp_a1->unk20 = (?32) arg2->unk14;
        temp_a1->unk24 = (?32) arg2->unk18;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 0xA);
        return;
    }
}

void __glkonlc_TexGeniv(s32 arg0, s32 arg1, void *arg2) {
    s64 sp18;
    s64 sp10;
    s32 var_a5;
    void *temp_a1;

    var_a5 = *(s32 *)0x1028;
    if (var_a5 < 0xA) {
        sp18 = (s64) arg2;
        sp10 = (s64) arg0;
        var_a5 = __glSPDlistSpace(0, var_a5);
    }
    temp_a1 = *(void **)0x1030;
    temp_a1->unk8 = arg1;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x14;
    switch (arg1) {                                 /* irregular */
    default:
        temp_a1->unk24 = 0.0f;
        temp_a1->unk20 = 0.0f;
        temp_a1->unk1C = 0.0f;
        temp_a1->unk18 = 0.0f;
        temp_a1->unk14 = 0.0f;
        temp_a1->unk10 = 0.0f;
        temp_a1->unkC = (s32) arg2->unk0;
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 0xA);
        return;
    case 0x2501:
    case 0x2502:
    case 0x81F5:
    case 0x81F4:
        temp_a1->unkC = (bitwise s32) (f32) arg2->unk0;
        temp_a1->unk10 = (f32) arg2->unk4;
        temp_a1->unk14 = (f32) arg2->unk8;
        temp_a1->unk24 = 0.0f;
        temp_a1->unk20 = 0.0f;
        temp_a1->unk1C = 0.0f;
        temp_a1->unk18 = (f32) arg2->unkC;
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 0xA);
        return;
    case 0x81F7:
    case 0x81F6:
        temp_a1->unkC = (bitwise s32) (f32) arg2->unk0;
        temp_a1->unk10 = (f32) arg2->unk4;
        temp_a1->unk14 = (f32) arg2->unk8;
        temp_a1->unk18 = (f32) arg2->unkC;
        temp_a1->unk1C = (f32) arg2->unk10;
        temp_a1->unk20 = (f32) arg2->unk14;
        temp_a1->unk24 = (f32) arg2->unk18;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        *(void *)0x1030 = (void *) (temp_a1 + 0x28);
        *(void *)0x1028 = (s32) (var_a5 - 0xA);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 0xA);
        return;
    }
}

void __glkonim_Clear(s32 arg0) {
    *(s32 *)0x4000 = 0x1A;
    *(void *)0x4000 = arg0;
}

void __glkonlc_Clear(s32 arg0) {
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a4;

    temp_a2 = *(s32 *)0x1028;
    if (temp_a2 >= 2) {
        temp_a0 = *(void **)0x1030;
        temp_a0->unk0 = 0x1A;
        temp_a0->unk4 = arg0;
        *(void *)0x1030 = (void *) (temp_a0 + 8);
        *(void *)0x1028 = (s32) (temp_a2 - 2);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 2);
        return;
    }
    temp_v0 = __glSPDlistSpace(0, 0x1A, temp_a2);
    temp_a4 = *(void *)0x1030;
    temp_a4->unk0 = 0x1A;
    temp_a4->unk4 = arg0;
    *(void *)0x1030 = (void *) (temp_a4 + 8);
    *(void *)0x1028 = (s32) (temp_v0 - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glkonim_LineWidth(f32 fparg0) {
    if (fparg0 <= 0.0f) {
        *(f32 *)0x4000 = 3.2e-43f;
        *(void *)0x4000 = 1.795e-42f;
        return;
    }
    *(void *)0x4000 = 2.65e-43f;
    *(void *)0x4000 = fparg0;
    *(void *)0x4000 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f1, $f12, $fcc1 */);
}

void __glkonim_PointSize(f32 fparg0) {
    if (fparg0 <= 0.0f) {
        *(f32 *)0x4000 = 3.2e-43f;
        *(void *)0x4000 = 1.795e-42f;
        return;
    }
    *(void *)0x4000 = 2.66e-43f;
    *(void *)0x4000 = fparg0;
    *(void *)0x4000 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f1, $f12, $fcc1 */);
}

void __glkonlc_LineWidth(f32 fparg0) {
    f32 var_f4;
    s32 var_a2;
    void *temp_a1;

    var_f4 = fparg0;
    if (!(fparg0 <= 0.0f)) {
        var_a2 = *(s32 *)0x1028;
        if (var_a2 < 3) {
            unksp8 = (bitwise f64) fparg0;
            var_f4 = (bitwise f32) unksp8;
            var_a2 = __glSPDlistSpace(0, var_a2);
        }
        temp_a1 = *(void **)0x1030;
        temp_a1->unk0 = 0xBD;
        temp_a1->unk4 = var_f4;
        temp_a1->unk8 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f1, $f4, $fcc1 */);
        *(void *)0x1030 = (void *) (temp_a1 + 0xC);
        *(void *)0x1028 = (s32) (var_a2 - 3);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
        return;
    }
    __glsplc_InvalidValue();
}

void __glkonlc_PointSize(f32 fparg0) {
    f32 var_f4;
    s32 var_a2;
    void *temp_a1;

    var_f4 = fparg0;
    if (!(fparg0 <= 0.0f)) {
        var_a2 = *(s32 *)0x1028;
        if (var_a2 < 3) {
            unksp8 = (bitwise f64) fparg0;
            var_f4 = (bitwise f32) unksp8;
            var_a2 = __glSPDlistSpace(0, var_a2);
        }
        temp_a1 = *(void **)0x1030;
        temp_a1->unk0 = 0xBE;
        temp_a1->unk4 = var_f4;
        temp_a1->unk8 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f1, $f4, $fcc1 */);
        *(void *)0x1030 = (void *) (temp_a1 + 0xC);
        *(void *)0x1028 = (s32) (var_a2 - 3);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
        return;
    }
    __glsplc_InvalidValue();
}
