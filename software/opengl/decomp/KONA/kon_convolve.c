s32 __glKonParseErrorDraw(s32 *);                   /* extern */
s32 __glKonParseErrorRead(s32 *);                   /* extern */
? __glKonParseHostImage(s32 *, void *, void *, ?);  /* extern */
s32 __glKonParseInput(s32 *, s64, ?);               /* extern */
? __glKonSendData(s32 *, s64, s64, ?, s64, s32, s32, s32); /* extern */
? __glKonSetPixelLEModes(void *);                   /* extern */
? __glKonUnsetLEModes(void *);                      /* extern */
? __glSetError(?, s32, void *, s32, ?);             /* extern */
? __glkonHostCopy(s32 *, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glkon_ResumeSelectfeed();                       /* extern */
? __glkon_SuspendSelectfeed();                      /* extern */
? __glkona_wait_rdata();                            /* extern */
? __glkonim_GetPixelTransformParameterfvSGI();      /* extern */
? __glkonim_GetPixelTransformParameterivSGI();      /* extern */
? __glkonim_PixelTransformParameterfSGI();          /* extern */
? __glkonim_PixelTransformParameterfvSGI();         /* extern */
? __glkonim_PixelTransformParameteriSGI();          /* extern */
? __glkonim_PixelTransformParameterivSGI();         /* extern */

void __glKonInitConvolutionState(void *arg0) {
    arg0->unk2FC = (s32) (arg0 + 0x354);
    arg0->unk3F4 = 7;
    arg0->unk3F0 = 7;
    arg0->unk3EC = 0;
    arg0->unk3E8 = 0;
    arg0->unk3B4 = 4;
    arg0->unk3B0 = 0x1908;
    arg0->unk3AC = 0x8016;
    arg0->unk3A8 = 0x8012;
    arg0->unk3A0 = 7;
    arg0->unk39C = 7;
    arg0->unk398 = 0;
    arg0->unk394 = 0;
    arg0->unk360 = 4;
    arg0->unk35C = 0x1908;
    arg0->unk358 = 0x8016;
    arg0->unk354 = 0x8010;
    arg0->unk34C = 1;
    arg0->unk348 = 7;
    arg0->unk344 = 1;
    arg0->unk340 = 0;
    arg0->unk30C = 4;
    arg0->unk308 = 0x1908;
    arg0->unk304 = 0x8016;
    arg0->unk300 = 0x8010;
    arg0->unk2B8 = 0.0f;
    arg0->unk2BC = 0.0f;
    arg0->unk2C0 = 0.0f;
    arg0->unk2C4 = 0.0f;
    arg0->unk3C8 = 0.0f;
    arg0->unk3CC = 0.0f;
    arg0->unk3D0 = 0.0f;
    arg0->unk3D4 = 0.0f;
    arg0->unk374 = 0.0f;
    arg0->unk378 = 0.0f;
    arg0->unk380 = 0.0f;
    arg0->unk320 = 0.0f;
    arg0->unk324 = 0.0f;
    arg0->unk328 = 0.0f;
    arg0->unk32C = 0.0f;
    arg0->unk2A8 = 1.0f;
    arg0->unk2AC = 1.0f;
    arg0->unk2B0 = 1.0f;
    arg0->unk2B4 = 1.0f;
    arg0->unk3B8 = 1.0f;
    arg0->unk3BC = 1.0f;
    arg0->unk3C0 = 1.0f;
    arg0->unk3C4 = 1.0f;
    arg0->unk364 = 1.0f;
    arg0->unk368 = 1.0f;
    arg0->unk36C = 1.0f;
    arg0->unk370 = 1.0f;
    arg0->unk310 = 1.0f;
    arg0->unk314 = 1.0f;
    arg0->unk318 = 1.0f;
    arg0->unk31C = 1.0f;
}

s32 InvalidGetFormat(u32 arg0) {
    if ((arg0 < 0x1903U) || (arg0 >= 0x190BU)) {
        if (arg0 == 0x8000) {
            /* Duplicate return node #4. Try simplifying control flow for better match */
            return 0;
        }
        __glSetError(0x500);
        return 1;
    }
    return 0;
}

s32 InvalidGetType(u32 arg0, s32 arg1) {
    s32 var_a1;

    var_a1 = arg1;
    if ((arg0 < 0x1400U) || (arg0 >= 0x1407U)) {
        if (arg0 >= 0x8032U) {
            var_a1 = arg0 > 0x8036U;
            if (var_a1 == 0) {
                return 0;
            }
        }
        __glSetError(0x500, var_a1);
        return 1;
    }
    return 0;
}

s32 __glChkConvFilterArgs(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 *arg4, void *arg5, s32 arg6) {
    s32 var_a3;
    s32 var_a6;
    s32 var_v0;
    void *var_a5;

    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    if ((arg1 >= 0) && (arg2 >= 0)) {
        switch (var_a3) {                           /* switch 1; irregular */
        default:                                    /* switch 1 */
            var_a5 = (void *)0x8049;
            var_a6 = 0x1907;
            if (var_a3 != 0x8049) {
                var_a6 = 1;
                if (var_a3 != 0x1907) {
                    if (var_a3 != 0x1908) {
                        __glSetError(0x500, 0x8049, (void *)1, 0x1908);
                        return 0;
                    }
                    *arg4 = 2;
                    goto block_10;
                }
                *arg4 = 1;
                goto block_10;
            }
            var_a5 = (void *)5;
            *arg4 = 5;
block_10:
            switch (arg0) {                         /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, var_a3, var_a5, var_a6, 0x1908);
                return 0;
            case 0x8012:                            /* switch 2 */
                if ((arg1 < 8) && (arg2 < 8)) {
block_16:
                    var_v0 = 1;
                    return var_v0;
                }
                __glSetError(0x501, var_a3, var_a5, var_a6, 0x1908);
                return 0;
            case 0x8010:                            /* switch 2 */
                if (arg1 >= 8) {
                    __glSetError(0x501, var_a3, var_a5, var_a6, 0x1908);
                    var_v0 = 0;
                } else {
                    goto block_16;
                }
                /* Duplicate return node #17. Try simplifying control flow for better match */
                return var_v0;
            case 0x8011:                            /* switch 2 */
                if ((arg1 >= 8) || (var_v0 = 1, ((arg2 < 8) == 0))) {
                    __glSetError(0x501, var_a3, var_a5, var_a6, 0x1908);
                    return 0;
                }
                /* Duplicate return node #17. Try simplifying control flow for better match */
                return var_v0;
            }
            break;
        case 0x1906:                                /* switch 1 */
            *arg4 = 0;
            goto block_10;
        case 0x1909:                                /* switch 1 */
            *arg4 = 3;
            goto block_10;
        case 0x190A:                                /* switch 1 */
            var_a3 = 4;
            *arg4 = 4;
            goto block_10;
        }
    } else {
        __glSetError(0x501, 0x1908);
        return 0;
    }
}

void __glkonim_ConvolutionFilter1DEXT(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 spC;
    s32 sp8;
    s32 temp_a5;
    s32 temp_a7;

    temp_a7 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        spE0 = (s64) temp_a7;
        spD8 = arg3;
        spD0 = arg4;
        spC8 = arg5;
        spF0 = arg1;
        spE8 = arg2;
        if (arg0 != 0x8010) {
            __glSetError(0x500, temp_a7);
        } else if ((__glKonInitConvolutionState((void *) spE8, 1, spF0, sp, temp_a7) != 0) && (sp20 = 1, spC = 1, sp1C = (s32) spC8, sp14 = (s32) spD8, sp18 = (s32) spD0, sp8 = (s32) spE8, (__glKonParseInput(&sp8, spC8) == 0))) {
            if (__glKonParseErrorDraw(&sp8) == 0) {
                __glKonParseHostImage(&sp8);
                *(s32 *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0x40000000;
                *(void *)0x4000 = 0xEF;
                spE0->unk340 = (s32) spE8;
                spE0->unk308 = (s32) spF0;
                *(void *)0x4000 = sp0;
                *(void *)0x4000 = (s32) spE8;
                *(void *)0x4000 = sp98;
                *(void *)0x4000 = sp9C;
                temp_a5 = spC8 & 3;
                *(void *)0x4000 = temp_a5;
                *(void *)0x4000 = spBC;
                *(void *)0x4000 = spC0;
                if (spE8 != 0) {
                    __glKonSendData(&sp8, spE8, 1, 0, spE8, temp_a5, sp9C, 0x10);
                }
                *(void *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0;
            }
        }
    } else {
        __glSetError(0x502, temp_a7);
    }
}

void __glkonim_ConvolutionFilter2DEXT(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 spC;
    s32 sp8;
    s32 temp_a6;

    if (*(s32 *)0x1018 != 1) {
        spE0 = (s64) *(s32 *)0x1010;
        spD8 = arg4;
        spD0 = arg5;
        spC8 = arg6;
        spE8 = arg1;
        spF0 = arg2;
        spF8 = arg3;
        if (arg0 != 0x8011) {
            __glSetError(0x500);
        } else if (__glKonInitConvolutionState((void *) spF0, spF8, spE8, sp) != 0) {
            sp20 = 1;
            sp1C = (s32) spC8;
            sp14 = (s32) spD8;
            spC = (s32) spF8;
            sp18 = (s32) spD0;
            sp8 = (s32) spF0;
            if ((__glKonParseInput(&sp8, spC8, 1) == 0) && (__glKonParseErrorDraw(&sp8) == 0)) {
                __glKonParseHostImage(&sp8);
                *(s32 *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0x40000000;
                *(void *)0x4000 = 0xF0;
                spE0->unk398 = (s32) spF8;
                spE0->unk394 = (s32) spF0;
                spE0->unk35C = (s32) spE8;
                *(void *)0x4000 = sp0;
                *(void *)0x4000 = (s32) spF0;
                *(void *)0x4000 = (s32) spF8;
                *(void *)0x4000 = sp98;
                *(void *)0x4000 = sp9C;
                temp_a6 = spC8 & 3;
                *(void *)0x4000 = temp_a6;
                *(void *)0x4000 = spBC;
                *(void *)0x4000 = spC0;
                if ((spF0 != 0) && (spF8 != 0)) {
                    __glKonSendData(&sp8, spF0, spF8, 0, spF0, spBC, temp_a6, sp9C);
                }
                *(void *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_SeparableFilter2DEXT(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 spC;
    s32 sp8;
    s32 temp_a5;
    s32 temp_a6;

    if (*(s32 *)0x1018 != 1) {
        spE8 = arg7;
        spE0 = (s64) *(s32 *)0x1010;
        spD8 = arg4;
        spD0 = arg5;
        spC8 = arg6;
        spF8 = arg1;
        spF0 = arg3;
        sp100 = arg2;
        if (arg0 != 0x8012) {
            __glSetError(0x500);
        } else if ((__glKonInitConvolutionState((void *) sp100, spF0, spF8, sp) != 0) && (sp20 = 1, spC = 1, sp1C = (s32) spC8, sp14 = (s32) spD8, sp18 = (s32) spD0, sp8 = (s32) sp100, (__glKonParseInput(&sp8, spC8) == 0))) {
            if (__glKonParseErrorDraw(&sp8) == 0) {
                __glKonParseHostImage(&sp8);
                *(s32 *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0x40000000;
                *(void *)0x4000 = 0xF5;
                spE0->unk3EC = (s32) spF0;
                spE0->unk3E8 = (s32) sp100;
                spE0->unk3B0 = (s32) spF8;
                *(void *)0x4000 = sp0;
                *(void *)0x4000 = (s32) sp100;
                *(void *)0x4000 = (s32) spF0;
                *(void *)0x4000 = sp98;
                *(void *)0x4000 = sp9C;
                temp_a6 = spC8 & 3;
                *(void *)0x4000 = temp_a6;
                *(void *)0x4000 = 1;
                *(void *)0x4000 = spBC;
                *(void *)0x4000 = spC0;
                if (sp100 != 0) {
                    __glKonSendData(&sp8, sp100, 1, 0, (s64) spBC, 1, temp_a6, sp9C);
                }
                sp1C = (s32) spE8;
                sp8 = (s32) spF0;
                __glKonParseHostImage(&sp8);
                *(void *)0x4000 = 0xF5;
                *(void *)0x4000 = sp0;
                *(void *)0x4000 = (s32) sp100;
                *(void *)0x4000 = (s32) spF0;
                *(void *)0x4000 = sp98;
                *(void *)0x4000 = sp9C;
                temp_a5 = spE8 & 3;
                *(void *)0x4000 = temp_a5;
                *(void *)0x4000 = 2;
                *(void *)0x4000 = spBC;
                *(void *)0x4000 = spC0;
                if (spF0 != 0) {
                    __glKonSendData(&sp8, spF0, 1, 0, 2, temp_a5, sp9C, sp98);
                }
                *(void *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_CopyConvolutionFilter1DEXT(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void *temp_a6;

    temp_a6 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp10 = arg2;
        sp8 = arg3;
        unksp30 = (s64) temp_a6;
        sp20 = arg4;
        sp18 = arg1;
        if (arg0 != 0x8010) {
            __glSetError(0x500, 0x8010, temp_a6);
        } else if ((__glKonInitConvolutionState((void *) sp20, 1, sp18, sp, 0x8010, temp_a6) != 0) && (unksp30->unkC94 != 0)) {
            *(s32 *)0x4000 = 0x111;
            *(void *)0x4000 = 0x10;
            *(void *)0x4000 = 0x40000000;
            *(void *)0x4000 = 0xF2;
            unksp30->unk308 = (s32) sp18;
            unksp30->unk340 = (s32) sp20;
            *(void *)0x4000 = sp0;
            *(void *)0x4000 = (s32) sp10;
            *(void *)0x4000 = (s32) sp8;
            *(void *)0x4000 = (s32) sp20;
            *(void *)0x4000 = 0x111;
            *(void *)0x4000 = 0x10;
            *(void *)0x4000 = 0;
        }
    } else {
        __glSetError(0x502, 0x8010, temp_a6);
    }
}

void __glkonim_CopyConvolutionFilter2DEXT(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;

    sp30 = arg5;
    sp28 = arg4;
    sp10 = arg3;
    sp8 = arg2;
    sp20 = arg1;
    sp18 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (__glKonInitConvolutionState(arg0, sp28, sp30, (void *) sp20, (s32) sp) != 0) {
            if (arg0 != (void *)0x8011) {
                __glSetError(0x500);
            } else if (sp18->unkC94 != 0) {
                *(s32 *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0x40000000;
                *(void *)0x4000 = 0xF3;
                sp18->unk398 = (s32) sp30;
                sp18->unk394 = (s32) sp28;
                sp18->unk35C = (s32) sp20;
                *(void *)0x4000 = sp0;
                *(void *)0x4000 = (s32) sp8;
                *(void *)0x4000 = (s32) sp10;
                *(void *)0x4000 = (s32) sp28;
                *(void *)0x4000 = (s32) sp30;
                *(void *)0x4000 = 0x111;
                *(void *)0x4000 = 0x10;
                *(void *)0x4000 = 0;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_GetConvolutionFilterEXT(void *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 spC;
    s32 sp8;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_lo;
    void *temp_a4;

    spD8 = arg3;
    spE0 = arg2;
    spF0 = arg1;
    temp_a1 = *(s32 *)0x1010;
    spE8 = (s64) temp_a1;
    spD0 = temp_a1 + 0x8AD0;
    if (*(s32 *)0x1018 != 1) {
        if (__glKonInitConvolutionState(arg0, 0, 0, (void *)0x1908, (s32) sp) != 0) {
            if (arg0 != (void *)0x8010) {
                if (arg0 != (void *)0x8011) {
                    __glSetError(0x500);
                } else {
                    spC8 = spE8 + 0x354;
                    goto block_6;
                }
            } else {
                spC8 = spE8 + 0x300;
block_6:
                if (__glKonInitConvolutionState((void *) spF0) != 0) {

                } else if ((__glKonInitConvolutionState((void *) spE0) == 0) && (temp_a5 = spC8->unk40, (temp_a5 != 0)) && (spC8->unk44 != 0)) {
                    sp8 = temp_a5;
                    sp20 = 0x20;
                    sp1C = (s32) spD8;
                    sp18 = (s32) spE0;
                    sp14 = (s32) spF0;
                    spC = spC8->unk44;
                    if ((__glKonParseInput(&sp8) == 0) && (__glKonParseErrorRead(&sp8) == 0)) {
                        *(void **)0x4000 = (void *)0x111;
                        *(void *)0x4000 = (void *)0x10;
                        *(void *)0x4000 = (void *)0x40000000;
                        __glkon_SuspendSelectfeed();
                        *(void *)0x4000 = (void *)0xF4;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = sp98;
                        *(void *)0x4000 = sp9C;
                        __glKonParseHostImage(&sp8);
                        __glkona_wait_rdata();
                        __glkon_ResumeSelectfeed();
                        temp_a4 = spD0->unk19C;
                        temp_a7 = temp_a4->unk8;
                        temp_lo = spB0 * temp_a7;
                        *(void *)0x4000 = (void *)0x111;
                        *(void *)0x4000 = (void *)0x10;
                        *(void *)0x4000 = NULL;
                        __glkonHostCopy(&sp8, spE8->unk7B64 + 8, spD8 + temp_lo, sp8 * spB4, spB4 * temp_a4->unkC, spC, temp_lo, temp_a7);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a1);
    }
}

void __glkonim_GetSeparableFilterEXT(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 spC;
    s32 sp8;
    s32 temp_a1;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_t8;
    void *temp_a4;
    void *temp_t0;

    spC8 = arg4;
    spD8 = arg3;
    spE8 = arg2;
    spF0 = arg1;
    temp_a1 = *(s32 *)0x1010;
    spE0 = (s64) temp_a1;
    spD0 = temp_a1 + 0x8AD0;
    if (*(s32 *)0x1018 != 1) {
        if (__glKonInitConvolutionState(arg0, 0, 0, (void *)0x1908, (s32) sp) != 0) {
            if (arg0 != (void *)0x8012) {
                __glSetError(0x500);
            } else if ((__glKonInitConvolutionState((void *) spF0) == 0) && (__glKonInitConvolutionState((void *) spE8) == 0)) {
                temp_a6 = spE0->unk3E8;
                if ((temp_a6 != 0) && (spE0->unk3EC != 0)) {
                    sp20 = 0x20;
                    spC = 1;
                    sp8 = temp_a6;
                    sp1C = (s32) spD8;
                    sp18 = (s32) spE8;
                    sp14 = (s32) spF0;
                    if ((__glKonParseInput(&sp8) == 0) && (__glKonParseErrorRead(&sp8) == 0)) {
                        *(void **)0x4000 = (void *)0x111;
                        *(void *)0x4000 = (void *)0x10;
                        *(void *)0x4000 = (void *)0x40000000;
                        __glkon_SuspendSelectfeed();
                        *(void *)0x4000 = (void *)0xF7;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = sp98;
                        *(void *)0x4000 = sp9C;
                        __glKonParseHostImage(&sp8, sp9C, sp98, 0xF7);
                        __glkona_wait_rdata();
                        __glkon_ResumeSelectfeed();
                        temp_a4 = spD0->unk19C;
                        temp_a7 = temp_a4->unk8;
                        temp_lo = spB0 * temp_a7;
                        *(void *)0x4000 = (void *)0x111;
                        *(void *)0x4000 = (void *)0x10;
                        *(void *)0x4000 = NULL;
                        __glkonHostCopy(&sp8, spE0->unk7B64 + 8, spD8 + temp_lo, sp8 * spB4, spB4 * temp_a4->unkC, spC, temp_lo, temp_a7);
                        temp_ra = spE0->unk3E8;
                        temp_t8 = spE0->unk3EC;
                        sp8 = temp_t8;
                        temp_s0 = spE0->unk7B64 + (*(M2C_ERROR(/* Read from unset register $t9 */) + 0x2AF0 + (((temp_t8 >= temp_ra) ? temp_t8 : temp_ra) * 4)) * spB4) + 8;
                        __glKonParseHostImage(&sp8);
                        temp_t0 = spD0->unk19C;
                        temp_lo_2 = spB0 * temp_t0->unk8;
                        __glkonHostCopy(&sp8, temp_s0, spC8 + temp_lo_2, sp8 * spB4, spB4 * temp_t0->unkC, spC, temp_lo_2, spB4);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a1);
    }
}

void __glkonim_ConvolutionParameteriEXT(void) {
    __glkonim_PixelTransformParameteriSGI();
}

void __glkonim_ConvolutionParameterivEXT(void) {
    __glkonim_PixelTransformParameterivSGI();
}

void __glkonim_ConvolutionParameterfEXT(void) {
    __glkonim_PixelTransformParameterfSGI();
}

void __glkonim_ConvolutionParameterfvEXT(void) {
    __glkonim_PixelTransformParameterfvSGI();
}

void __glkonim_GetConvolutionParameterivEXT(void) {
    __glkonim_GetPixelTransformParameterivSGI();
}

void __glkonim_GetConvolutionParameterfvEXT(void) {
    __glkonim_GetPixelTransformParameterfvSGI();
}

void *__glkonle_ConvolutionFilter1DEXT(void *arg0) {
    s32 temp_a2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a2 = *(s32 *)0x1018;
    if (temp_a2 != 0) {
        if (temp_a2 != 2) {
            __glSetError(0x502, temp_a2, temp_a3);
            return arg0 + ((arg0->unk14 + 3) & ~3) + 0x18;
        }
        temp_a3->unk2E40(temp_a3, temp_a2, temp_a3);
        *(void *)0x1018 = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glKonSetPixelLEModes(sp);
        __glkonim_ConvolutionFilter1DEXT(0x8010, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) (arg0 + 0x18));
        __glKonUnsetLEModes(sp);
        return arg0 + ((arg0->unk14 + 3) & ~3) + 0x18;
    }
    __glKonSetPixelLEModes(sp);
    __glkonim_ConvolutionFilter1DEXT(0x8010, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) (arg0 + 0x18));
    __glKonUnsetLEModes(sp);
    return arg0 + ((arg0->unk14 + 3) & ~3) + 0x18;
}

void *__glkonle_ConvolutionFilter2DEXT(void *arg0) {
    s32 temp_a2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a2 = *(s32 *)0x1018;
    if (temp_a2 != 0) {
        if (temp_a2 != 2) {
            __glSetError(0x502, temp_a2, temp_a3);
            return arg0 + ((arg0->unk18 + 3) & ~3) + 0x1C;
        }
        temp_a3->unk2E40(temp_a3, temp_a2, temp_a3);
        *(void *)0x1018 = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glKonSetPixelLEModes(sp);
        __glkonim_ConvolutionFilter2DEXT(0x8011, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) arg0->unk14, (s64) (arg0 + 0x1C));
        __glKonUnsetLEModes(sp);
        return arg0 + ((arg0->unk18 + 3) & ~3) + 0x1C;
    }
    __glKonSetPixelLEModes(sp);
    __glkonim_ConvolutionFilter2DEXT(0x8011, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) arg0->unk14, (s64) (arg0 + 0x1C));
    __glKonUnsetLEModes(sp);
    return arg0 + ((arg0->unk18 + 3) & ~3) + 0x1C;
}

void *__glkonle_SeparableFilter2DEXT(void *arg0) {
    s32 temp_a2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a2 = *(s32 *)0x1018;
    if (temp_a2 != 0) {
        if (temp_a2 != 2) {
            __glSetError(0x502, temp_a2, temp_a3);
            return arg0 + ((arg0->unk18 + arg0->unk1C + 3) & ~3) + 0x20;
        }
        temp_a3->unk2E40(temp_a3, temp_a2, temp_a3);
        *(void *)0x1018 = 0;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        __glKonSetPixelLEModes(sp);
        __glkonim_SeparableFilter2DEXT(0x8012, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) arg0->unk14, (s64) (arg0 + 0x20), (s64) (arg0 + (arg0->unk18 << 5)));
        __glKonUnsetLEModes(sp);
        return arg0 + ((arg0->unk18 + arg0->unk1C + 3) & ~3) + 0x20;
    }
    __glKonSetPixelLEModes(sp);
    __glkonim_SeparableFilter2DEXT(0x8012, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) arg0->unk14, (s64) (arg0 + 0x20), (s64) (arg0 + (arg0->unk18 << 5)));
    __glKonUnsetLEModes(sp);
    return arg0 + ((arg0->unk18 + arg0->unk1C + 3) & ~3) + 0x20;
}
