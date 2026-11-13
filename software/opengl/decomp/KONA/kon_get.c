? __glKon_ioctl(void *, ?, ?);                      /* extern */
f32 __glSetError(?, u32, u32, u32, u32, u32, u32, u32); /* extern */
s32 __glkonle_SeparableFilter2DEXT();               /* extern */
s32 _sysconf(?);                                    /* extern */
? fprintf(s64, void *, s32);                        /* extern */
s32 sginap(s32, u32, s32, u32);                     /* extern */
s32 sub_0d960000(s64, void *);                      /* extern */
extern ? __iob;
extern ? __rodata0;

s32 kona_get_offset(u32 arg0) {
    s32 var_t0;
    s32 var_t1;
    s32 var_v0;
    u32 temp_a1;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a6;
    u32 temp_a7;

    temp_a5 = arg0 < 0x3006U;
    temp_a3 = arg0 < 0x2A03U;
    temp_a1 = arg0 < 0xDF5U;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 < 0xB00U) || (temp_a1 == 0)) {
            temp_a7 = arg0 < 0x4008U;
            temp_a2 = arg0 < 0x2A00U;
            var_t1 = arg0 < 0x6001U;
            if (temp_a2 == 0) {
                if (temp_a3 == 0) {
                    var_t1 = arg0 < 0x6001U;
                    goto block_6;
                }
                return arg0 - 0x270B;
            }
block_6:
            temp_a4 = arg0 < 0x3000U;
            if ((temp_a4 != 0) || (temp_a5 == 0)) {
                temp_a6 = arg0 < 0x4000U;
                var_t0 = arg0 < 0x6000U;
                if (temp_a6 == 0) {
                    if (temp_a7 == 0) {
                        var_t0 = arg0 < 0x6000U;
                        goto block_11;
                    }
                    return arg0 - 0x3D02;
                }
block_11:
                var_v0 = arg0 - 0x5CFA;
                if (((var_t0 == 0) && (var_t1 != 0)) || ((var_v0 = arg0 - 0x7CFE, ((arg0 < 0x8005U) == 0)) && (arg0 <= 0x81C8U))) {
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    return var_v0;
                }
                __glSetError(0x500, temp_a1, temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
                return -1;
            }
            return arg0 - 0x2D08;
        }
        return arg0 - 0xB00;
    }
    __glSetError(0x502, temp_a1, temp_a3, temp_a5);
    var_v0 = -1;
    return var_v0;
}

void __glkona_wait_rdata(void) {
    s64 sp8;
    s64 sp0;
    s32 *temp_s0;
    s32 *var_s1;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_gp;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_s2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_v0;
    u32 temp_a1;
    u32 temp_a3;
    u32 temp_t3;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x138818;
    temp_s0 = (*(void **)0x1010)->unk7B64;
    var_a2 = 0 < 0x30D40;
    var_v0 = 1;
loop_1:
    if ((*temp_s0 == 0) && (var_a2 != 0)) {
        temp_v0 = var_v0 + 1;
        if (*temp_s0 == 0) {
            var_a2 = temp_v0 < 0x30D40;
            var_v0 = temp_v0 + 1;
            if (var_v0 < 0x30D40) {
                goto loop_1;
            }
        }
    }
    var_s3 = 0;
    if (*temp_s0 == 0) {
loop_13:
        temp_v0_2 = sginap(0);
        var_s3 += 1;
        if ((*temp_s0 == 0) && (temp_v0_2 == 0)) {
            if (var_s3 >= 0x30D40) {

            } else {
                goto loop_13;
            }
        }
    }
    if (*temp_s0 == 0) {
        var_s3_2 = 0;
        sp0 = (s64) (temp_s0 + 0x100);
        sp8 = (s64) (&__iob + 0x20);
loop_11:
        temp_a3 = _sysconf(3) * 2;
        temp_t3 = temp_a3 >> 0x1F;
        temp_a2 = (0xA3D7 << 0x10) | 0xA3E;
        temp_a1 = (temp_t3 == 0) ? temp_a3 : (u32) -(s32) temp_a3;
        temp_a0 = (s32) MULTU_HI(temp_a1, temp_a2) >> 6;
        if (sginap((temp_t3 != 0) ? -temp_a0 : temp_a0, temp_a1, temp_a2, temp_a3) == 0) {
            if (var_s3_2 == 0xBB8) {
                __glKon_ioctl(*(void *)0x1010, 0x2721, 0);
                fprintf(sp8, &__rodata0 - 0x1A20);
                var_s2 = 1;
                var_s1 = temp_s0;
loop_19:
                fprintf(sp8, temp_gp - 0x3FE0, *var_s1);
                temp_a4 = var_s2 >> 0x1F;
                if ((((((var_s2 ^ temp_a4) - temp_a4) & 7) ^ temp_a4) - temp_a4) == 0) {
                    fprintf(sp8, temp_gp - 0x3FD8);
                }
                var_s1 += 4;
                var_s2 += 1;
                if (var_s1 != sp0) {
                    goto loop_19;
                }
            }
            var_s3_2 += 1;
            if (*temp_s0 == 0) {
                goto loop_11;
            }
        }
    }
    *temp_s0 = 0;
}

s32 kona_get(s32 arg0) {
    void *temp_s8;

    *(s32 *)0x4000 = 0x4C;
    *(void *)0x4000 = arg0;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64 + 8;
}

s32 *__glkon_get_special(u32 arg0, u32 arg1) {
    void *temp_s8;

    *(u32 *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64 + 8;
}

f32 *__glkon_get_special2(u32 arg0, u32 arg1, u32 arg2) {
    void *temp_s8;

    *(u32 *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64 + 8;
}

s32 __glkon_get_special3(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_s8;

    *(s32 *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    *(void *)0x4000 = arg3;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64 + 8;
}

s32 __glkon_get_special4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *temp_s8;

    *(s32 *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    *(void *)0x4000 = arg3;
    *(void *)0x4000 = arg4;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64 + 8;
}

void __glkonim_GetPointervEXT(u32 arg0, s32 *arg1, u32 arg7) {
    u32 temp_a5;
    u32 temp_a6;
    u32 var_a2;
    u32 var_a4;
    u32 var_a7;
    void *temp_a3;

    var_a7 = arg7;
    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a2 = arg0 < 0x8090U;
        temp_a5 = arg0 > 0x8090U;
        var_a4 = 0x8093;
        temp_a6 = arg0 < 0x8093U;
        if (var_a2 == 0) {
            if (temp_a5 != 0) {
                if (temp_a6 == 0) {
                    var_a7 = arg0 > 0x8093U;
                    if (var_a7 != 0) {
                        if (arg0 == 0x8180) {
                            *arg1 = temp_a3->unk7B78;
                        } else {
                            goto block_11;
                        }
                    } else {
                        *arg1 = temp_a3->unk1464;
                    }
                } else {
                    var_a4 = 0x8092;
                    var_a7 = 0x8091;
                    var_a2 = arg0 > 0x8092U;
                    if (arg0 >= 0x8092U) {
                        if (var_a2 == 0) {
                            *arg1 = temp_a3->unk1448;
                            return;
                        }
                        goto block_11;
                    }
                    if (arg0 == 0x8091) {
                        *arg1 = temp_a3->unk1430;
                    } else {
                        goto block_11;
                    }
                }
            } else {
                *arg1 = temp_a3->unk1414;
            }
        } else {
            var_a4 = 0x808E;
            if (arg0 >= 0x808EU) {
                if (arg0 > 0x808EU) {
                    if (arg0 == 0x808F) {
                        *arg1 = temp_a3->unk13FC;
                        return;
                    }
                    goto block_11;
                }
                *arg1 = temp_a3->unk13E0;
                return;
            }
            var_a4 = 0xDF0;
            if (arg0 >= 0xDF3U) {
                if (arg0 < 0xDF4U) {
                    *arg1 = temp_a3->unk1328;
                    return;
                }
                goto block_11;
            }
            if (arg0 == 0xDF0) {
                *arg1 = temp_a3->unk1308;
            } else {
block_11:
                __glSetError(0x500, var_a2, (u32) temp_a3, var_a4, temp_a5, temp_a6, var_a7);
            }
        }
    } else {
        __glSetError(0x502, (u32) temp_a3);
    }
}

void __glkonim_GetBooleanv(s64 arg0, s8 *arg1) {
    s64 sp18;
    s64 sp10;
    s32 sp4;
    s32 sp0;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a5;
    s8 *var_a1;
    s8 var_a2;
    u16 temp_v0_2;
    u8 var_a4;
    void *temp_s0;

    sp10 = arg0;
    sp18 = (s64) *(s32 *)0x1010;
    temp_v0 = __glkonle_SeparableFilter2DEXT();
    if (temp_v0 >= 0) {
        temp_s0 = &__rodata0 + 0x2B10 + (temp_v0 * 8);
        temp_v0_2 = temp_s0->unk0;
        sp0 = (s32) temp_s0->unk3;
        switch (temp_v0_2) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
block_7:
            *arg1 = 0;
            var_a5 = sp4;
            var_a4 = sp8;
            var_a1 = arg1;
            if (sp0 > 0) {
                var_a0 = 1;
loop_14:
                temp_v0_3 = temp_s0->unk2 & 0xF;
                switch (temp_v0_3) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    var_a5 += 1;
block_11:
                    var_a4 = var_a5->unk-1;
block_12:
                    var_a2 = var_a4 != 0;
                    break;
                default:                            /* switch 2 */
                    var_a2 = var_a4 != 0;
                    if (temp_v0_3 == 4) {
                        var_a5 += 4;
                        goto block_11;
                    }
                    break;
                case 1:                             /* switch 2 */
                    var_a5 += 1;
                    goto block_11;
                case 2:                             /* switch 2 */
                    temp_a4 = (s32) (f64) *var_a5;
                    var_a5 += 8;
                    var_a4 = temp_a4 & 0xFF;
                    goto block_12;
                case 3:                             /* switch 2 */
                    temp_a4_2 = (s32) *var_a5;
                    var_a5 += 4;
                    var_a4 = temp_a4_2 & 0xFF;
                    goto block_12;
                }
                *var_a1 = var_a2;
                var_a1 += 1;
                var_a0 += 1;
                if (var_a0 < sp0) {
                    goto loop_14;
                }
            }
            break;
        case 1:                                     /* switch 1 */
            sp4 = temp_s0->unk4 + *(void *)0x1010;
            goto block_7;
        case 4:                                     /* switch 1 */
            sp4 = temp_s0->unk4;
            goto block_7;
        case 5:                                     /* switch 1 */
            sp4 = (sp18 + (temp_s0->unk4 * 4))->unk7BB0 + 0x17C;
            goto block_7;
        case 2:                                     /* switch 1 */
            sp4 = __glkona_wait_rdata(sp10);
            goto block_7;
        case 3:                                     /* switch 1 */
            sp4 = sub_0d960000(sp10, sp);
            goto block_7;
        case 0:                                     /* switch 1 */
            __glSetError(0x500);
            break;
        }
    }
}

void __glkonim_GetDoublev(s64 arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp4;
    s32 sp0;
    f32 temp_f4;
    f64 var_f4;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a4_2;
    s64 var_a1;
    u16 temp_v0_2;
    u8 var_a4;
    u8 var_f4_2;
    void *temp_s0;

    sp20 = arg1;
    sp10 = arg0;
    sp18 = (s64) *(s32 *)0x1010;
    temp_v0 = __glkonle_SeparableFilter2DEXT();
    if (temp_v0 >= 0) {
        temp_s0 = &__rodata0 + 0x2B10 + (temp_v0 * 8);
        temp_v0_2 = temp_s0->unk0;
        var_a4 = temp_s0->unk3;
        sp0 = (s32) var_a4;
        switch (temp_v0_2) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
block_7:
            var_f4 = sp8;
            if ((s32) var_a4 > 0) {
                var_a1 = sp20;
                var_a4_2 = sp4;
                var_a0 = 1;
loop_12:
                temp_v0_3 = temp_s0->unk2 & 0xF;
                switch (temp_v0_3) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    var_f4_2 = *var_a4_2;
                    var_a4_2 += 1;
block_10:
                    var_f4 = (f64) var_f4_2;
                    break;
                case 4:                             /* switch 2 */
                    var_f4_2 = (u8) (s32) *var_a4_2;
                    var_a4_2 += 4;
                    goto block_10;
                case 1:                             /* switch 2 */
                    var_f4_2 = *var_a4_2;
                    var_a4_2 += 1;
                    goto block_10;
                case 2:                             /* switch 2 */
                    var_a4_2 += 8;
                    var_f4 = var_a4_2->unk-8;
                    break;
                case 3:                             /* switch 2 */
                    temp_f4 = (bitwise f32) *var_a4_2;
                    var_a4_2 += 4;
                    var_f4 = (f64) temp_f4;
                    break;
                }
                *var_a1 = var_f4;
                var_a1 += 8;
                var_a0 += 1;
                if (var_a0 < sp0) {
                    goto loop_12;
                }
            }
            break;
        case 1:                                     /* switch 1 */
            sp4 = temp_s0->unk4 + *(void *)0x1010;
            goto block_7;
        case 4:                                     /* switch 1 */
            sp4 = temp_s0->unk4;
            goto block_7;
        case 5:                                     /* switch 1 */
            sp4 = (sp18 + (temp_s0->unk4 * 4))->unk7BB0 + 0x17C;
            goto block_7;
        case 2:                                     /* switch 1 */
            var_a4 = (u8) sp0;
            sp4 = __glkona_wait_rdata(sp10);
            goto block_7;
        case 3:                                     /* switch 1 */
            var_a4 = (u8) sp0;
            sp4 = sub_0d960000(sp10, sp);
            goto block_7;
        case 0:                                     /* switch 1 */
            __glSetError(0x500);
            break;
        }
    }
}

void __glkonim_GetFloatv(s64 arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp4;
    s32 sp0;
    f32 var_f4;
    f64 temp_f4;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a4_2;
    s64 var_a1;
    u16 temp_v0_2;
    u8 var_a4;
    u8 var_f4_2;
    void *temp_s0;

    sp20 = arg1;
    sp10 = arg0;
    sp18 = (s64) *(s32 *)0x1010;
    temp_v0 = __glkonle_SeparableFilter2DEXT();
    if (temp_v0 >= 0) {
        temp_s0 = &__rodata0 + 0x2B10 + (temp_v0 * 8);
        temp_v0_2 = temp_s0->unk0;
        var_a4 = temp_s0->unk3;
        sp0 = (s32) var_a4;
        switch (temp_v0_2) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
block_7:
            var_f4 = sp8;
            if ((s32) var_a4 > 0) {
                var_a1 = sp20;
                var_a4_2 = sp4;
                var_a0 = 1;
loop_12:
                temp_v0_3 = temp_s0->unk2 & 0xF;
                switch (temp_v0_3) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    var_f4_2 = *var_a4_2;
                    var_a4_2 += 1;
block_10:
                    var_f4 = (f32) var_f4_2;
                    break;
                case 4:                             /* switch 2 */
                    var_f4_2 = (u8) (s32) *var_a4_2;
                    var_a4_2 += 4;
                    goto block_10;
                case 1:                             /* switch 2 */
                    var_f4_2 = *var_a4_2;
                    var_a4_2 += 1;
                    goto block_10;
                case 2:                             /* switch 2 */
                    temp_f4 = (bitwise f64) *var_a4_2;
                    var_a4_2 += 8;
                    var_f4 = (f32) temp_f4;
                    break;
                case 3:                             /* switch 2 */
                    var_a4_2 += 4;
                    var_f4 = var_a4_2->unk-4;
                    break;
                }
                *var_a1 = var_f4;
                var_a1 += 4;
                var_a0 += 1;
                if (var_a0 < sp0) {
                    goto loop_12;
                }
            }
            break;
        case 1:                                     /* switch 1 */
            sp4 = temp_s0->unk4 + *(void *)0x1010;
            goto block_7;
        case 4:                                     /* switch 1 */
            sp4 = temp_s0->unk4;
            goto block_7;
        case 5:                                     /* switch 1 */
            sp4 = (sp18 + (temp_s0->unk4 * 4))->unk7BB0 + 0x17C;
            goto block_7;
        case 2:                                     /* switch 1 */
            var_a4 = (u8) sp0;
            sp4 = __glkona_wait_rdata(sp10);
            goto block_7;
        case 3:                                     /* switch 1 */
            var_a4 = (u8) sp0;
            sp4 = sub_0d960000(sp10, sp);
            goto block_7;
        case 0:                                     /* switch 1 */
            __glSetError(0x500);
            break;
        }
    }
}

void __glkonim_GetIntegerv(s64 arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp4;
    s32 sp0;
    f32 temp_f4;
    f64 var_f4;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a5;
    s32 var_f8;
    s64 var_a1;
    u16 temp_v0_2;
    u8 temp_a4;
    u8 var_a4;
    u8 var_f4_2;
    void *temp_s0;

    sp20 = arg1;
    sp10 = arg0;
    sp18 = (s64) *(s32 *)0x1010;
    temp_v0 = __glkonle_SeparableFilter2DEXT();
    if (temp_v0 >= 0) {
        temp_s0 = &__rodata0 + 0x2B10 + (temp_v0 * 8);
        temp_v0_2 = temp_s0->unk0;
        var_a4 = temp_s0->unk3;
        sp0 = (s32) var_a4;
        switch (temp_v0_2) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
block_7:
            if ((s32) var_a4 > 0) {
                var_a5 = sp4;
                var_a0 = 0;
                var_f4 = second half of f64;
                var_a1 = sp20;
loop_15:
                temp_a4 = temp_s0->unk2;
                temp_v0_3 = temp_a4 & 0xF;
                var_a0 += 1;
                switch (temp_v0_3) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    var_f4_2 = *var_a5;
                    var_a5 += 1;
block_11:
                    var_f4 = (f64) var_f4_2;
                    break;
                case 4:                             /* switch 2 */
                    var_f4_2 = (u8) (s32) *var_a5;
                    var_a5 += 4;
                    goto block_11;
                case 1:                             /* switch 2 */
                    var_f4_2 = *var_a5;
                    var_a5 += 1;
                    goto block_11;
                case 2:                             /* switch 2 */
                    var_a5 += 8;
                    var_f4 = var_a5->unk-8;
                    break;
                case 3:                             /* switch 2 */
                    temp_f4 = (bitwise f32) *var_a5;
                    var_a5 += 4;
                    var_f4 = (f64) temp_f4;
                    break;
                }
                if (temp_a4 & 0x10) {
                    var_f8 = (s32) (0.5 * M2C_ERROR(/* unknown instruction: madd.d $f8, $f5, $f4, $f6 */));
                } else {
                    var_f8 = (s32) var_f4;
                }
                *var_a1 = var_f8;
                var_a1 += 4;
                if (var_a0 < sp0) {
                    goto loop_15;
                }
            }
            break;
        case 1:                                     /* switch 1 */
            sp4 = temp_s0->unk4 + *(void *)0x1010;
            goto block_7;
        case 4:                                     /* switch 1 */
            sp4 = temp_s0->unk4;
            goto block_7;
        case 5:                                     /* switch 1 */
            sp4 = (sp18 + (temp_s0->unk4 * 4))->unk7BB0 + 0x17C;
            goto block_7;
        case 2:                                     /* switch 1 */
            var_a4 = (u8) sp0;
            sp4 = __glkona_wait_rdata(sp10);
            goto block_7;
        case 3:                                     /* switch 1 */
            var_a4 = (u8) sp0;
            sp4 = sub_0d960000(sp10, sp);
            goto block_7;
        case 0:                                     /* switch 1 */
            __glSetError(0x500);
            break;
        }
    }
}

s32 __glkonim_GetError(void) {
    if (*(s32 *)0x1018 != 1) {
        return *__glkon_get_special(0x3EU, 0xDBDBDBDBU);
    }
    __glSetError(0x502);
    return 0;
}

u8 __glkonim_IsEnabled(s64 arg0) {
    s64 sp8;

    sp8 = arg0;
    if (__glkonle_SeparableFilter2DEXT() < 0) {
        return 0U;
    }
    __glkonim_GetBooleanv(sp8, sp);
    return sp0;
}

void __glkonim_GetClipPlane(u32 arg0, s64 arg1) {
    s64 sp0;
    s32 *temp_v0;
    u32 temp_a2;

    if (*(s32 *)0x1018 != 1) {
        temp_a2 = (*(void **)0x1010)->unkE10;
        sp0 = arg1;
        if ((u32) (arg0 - 0x3000) >= temp_a2) {
            __glSetError(0x500, temp_a2, arg0);
        } else {
            temp_v0 = __glkon_get_special(0x3CU, arg0, temp_a2, arg0);
            sp0->unk0 = (f64) temp_v0->unk0;
            sp0->unk8 = (f64) temp_v0->unk4;
            sp0->unk10 = (f64) temp_v0->unk8;
            sp0->unk18 = (f64) temp_v0->unkC;
        }
    } else {
        __glSetError(0x502, arg0);
    }
}

void __glkonim_GetLightfv(s32 arg0, u32 arg1, s64 arg2) {
    f32 *temp_a1_2;
    f32 *var_v0;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_a6;
    s64 var_a0;
    u32 temp_a1;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a5;

    temp_a5 = arg1 < 0x120AU;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = arg0 - 0x4000;
        temp_a3 = temp_a1 < (u32) (*(void **)0x1010)->unkE04;
        temp_a4 = arg1 < 0x1200U;
        if ((temp_a3 != 0) && (temp_a4 == 0) && (unksp8 = arg2, (temp_a5 != 0))) {
            var_v0 = __glkon_get_special2(0x41U, temp_a1, arg1, temp_a3, temp_a4, temp_a5);
            temp_a6 = var_v0->unk-4;
            if (temp_a6 > 0) {
                var_a0 = unksp8;
                temp_a1_2 = &var_v0[temp_a6];
                if (temp_a6 & 1) {
                    temp_f0 = var_v0->unk0;
                    var_v0 += 4;
                    var_a0 = unksp8 + 4;
                    *unksp8 = temp_f0;
                }
                if ((temp_a6 >> 1) != 0) {
                    do {
                        temp_f2 = *var_v0;
                        var_v0 += 8;
                        *var_a0 = temp_f2;
                        var_a0 += 8;
                        var_a0->unk-4 = (f32) var_v0->unk-4;
                    } while (var_v0 != temp_a1_2);
                }
            }
        } else {
            __glSetError(0x500, temp_a1, temp_a3, temp_a4, temp_a5);
        }
    } else {
        __glSetError(0x502, 0x1378C8U, temp_a5);
    }
}

f32 __glkonim_GetLightiv(s32 arg0, u32 arg1, s64 arg2, u32 arg3, u32 arg4) {
    s64 sp0;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_ret;
    f32 *var_v0;
    f32 temp_f8;
    f32 var_f0;
    f64 temp_f1;
    s32 temp_a1_2;
    s32 temp_f7;
    s32 var_a5;
    s32 var_a5_2;
    s64 var_a2;
    s64 var_a2_2;
    u32 temp_a1;
    u32 temp_a2;
    u32 var_a3;
    u32 var_a4;

    var_a3 = arg3;
    var_a4 = arg4;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = arg0 - 0x4000;
        temp_a2 = temp_a1 < (u32) (*(void **)0x1010)->unkE04;
        if ((temp_a2 != 0) && (var_a3 = arg1 < 0x1200U, var_a4 = arg1 < 0x120AU, (var_a3 == 0)) && (sp0 = arg2, (var_a4 != 0))) {
            temp_ret = __glkon_get_special2(0x41U, temp_a1, arg1, var_a3, var_a4);
            var_v0 = temp_ret;
            var_f0 = (bitwise f32) temp_ret;
            var_a2 = sp0;
            temp_a1_2 = var_v0->unk-4;
            if (arg1 < 0x1203U) {
                if (temp_a1_2 > 0) {
                    var_a5 = temp_a1_2 & 3;
                    var_a2_2 = sp0;
                    temp_a0 = &var_v0[temp_a1_2];
                    if (var_a5 != 0) {
                        do {
                            var_a5 -= 1;
                            var_a2_2 += 4;
                            var_f0 = (bitwise f32) (s32) ((f64) (*var_v0 * 4294967296.0f) * 0.5);
                            var_v0 += 4;
                            var_a2_2->unk-4 = var_f0;
                        } while (var_a5 != 0);
                    }
                    if ((temp_a1_2 >> 2) != 0) {
                        do {
                            var_a2_2->unk0 = (s32) ((f64) (var_v0->unk0 * 4294967296.0f) * 0.5);
                            var_a2_2->unk4 = (s32) ((f64) (var_v0->unk4 * 4294967296.0f) * 0.5);
                            var_a2_2->unk8 = (s32) ((f64) (var_v0->unk8 * 4294967296.0f) * 0.5);
                            temp_f1 = (f64) (var_v0->unkC * 4294967296.0f) * 0.5;
                            var_f0 = second half of f64;
                            var_v0 += 0x10;
                            var_a2_2 += 0x10;
                            var_a2_2->unk-4 = (s32) temp_f1;
                        } while (var_v0 != temp_a0);
                    }
                }
            } else if (temp_a1_2 > 0) {
                var_a5_2 = temp_a1_2 & 3;
                temp_a0_2 = &var_v0[temp_a1_2];
                if (var_a5_2 != 0) {
                    do {
                        var_a5_2 -= 1;
                        var_a2 += 4;
                        temp_f7 = (s32) *var_v0;
                        var_v0 += 4;
                        var_a2->unk-4 = temp_f7;
                    } while (var_a5_2 != 0);
                }
                if ((temp_a1_2 >> 2) != 0) {
                    do {
                        var_a2->unk0 = (s32) var_v0->unk0;
                        var_a2->unk4 = (s32) var_v0->unk4;
                        var_a2->unk8 = (s32) var_v0->unk8;
                        temp_f8 = var_v0->unkC;
                        var_v0 += 0x10;
                        var_a2 += 0x10;
                        var_a2->unk-4 = (s32) temp_f8;
                    } while (var_v0 != temp_a0_2);
                }
            }
        } else {
            var_f0 = __glSetError(0x500, temp_a1, temp_a2, var_a3, var_a4);
        }
    } else {
        var_f0 = __glSetError(0x502, 0x1377B8U);
    }
    return var_f0;
}

void __glkonim_GetMaterialfv(u32 arg0, u32 arg1, s64 arg2, u32 arg4, u32 arg6, u32 arg7) {
    s64 sp0;
    f32 *temp_v0;
    f32 *var_a0;
    f32 temp_f2;
    s32 temp_a6;
    s64 var_v0;
    u32 temp_a3;
    u32 var_a4;
    u32 var_a6;
    u32 var_a7;

    var_a4 = arg4;
    var_a6 = arg6;
    var_a7 = arg7;
    if (*(s32 *)0x1018 != 1) {
        temp_a3 = arg0 < 0x404U;
        if ((temp_a3 == 0) && (var_a4 = arg0 < 0x406U, (var_a4 != 0)) && (((var_a6 = arg1 < 0x1200U, sp0 = arg2, (var_a6 == 0)) && (var_a7 = arg1 < 0x120AU, (var_a7 != 0))) || ((arg1 >= 0x1600U) && (arg1 < 0x1604U)))) {
            temp_v0 = __glkon_get_special2(0x46U, arg0, arg1, temp_a3, var_a4, arg0, var_a6, var_a7);
            temp_a6 = temp_v0->unk-4;
            if (temp_a6 > 0) {
                var_v0 = sp0;
                var_a0 = temp_v0;
                if (temp_a6 & 1) {
                    var_a0 = temp_v0 + 4;
                    var_v0 = sp0 + 4;
                    *sp0 = (f32) temp_v0->unk0;
                }
                if ((temp_a6 >> 1) != 0) {
                    do {
                        temp_f2 = *var_a0;
                        var_a0 += 8;
                        *var_v0 = temp_f2;
                        var_v0 += 8;
                        var_v0->unk-4 = (f32) var_a0->unk-4;
                    } while (var_a0 != &temp_v0[temp_a6]);
                }
            }
        } else {
            __glSetError(0x500, 0x130000U, temp_a3, var_a4, arg0, var_a6, var_a7);
        }
    } else {
        __glSetError(0x502, 0x130000U, arg0);
    }
}

void __glkonim_GetMaterialiv(u32 arg0, u32 arg1, s64 arg2, u32 arg4, u32 arg5, u32 arg6, u32 arg7) {
    s64 sp0;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *var_v0;
    f32 temp_f1;
    f64 temp_f7;
    s32 temp_a1;
    s32 temp_f0;
    s32 temp_f6;
    s32 var_a5_2;
    s32 var_a5_3;
    s64 var_a2;
    s64 var_a2_2;
    u32 temp_a3;
    u32 var_a4;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    if (*(s32 *)0x1018 != 1) {
        temp_a3 = arg0 < 0x404U;
        if ((temp_a3 == 0) && (var_a4 = arg0 < 0x406U, (var_a4 != 0)) && (((var_a5 = arg1 < 0x1200U, sp0 = arg2, (var_a5 == 0)) && (var_a6 = arg1 < 0x120AU, (var_a6 != 0))) || ((var_a7 = arg1 < 0x1600U, (var_a7 == 0)) && (arg1 < 0x1604U)))) {
            var_v0 = __glkon_get_special2(0x46U, arg0, arg1, temp_a3, var_a4, var_a5, var_a6, var_a7);
            var_a2 = sp0;
            temp_a1 = var_v0->unk-4;
            if (((arg1 < 0x1200U) || (arg1 >= 0x1203U)) && (var_a5_2 = temp_a1 & 3, (arg1 != 0x1600))) {
                if (temp_a1 > 0) {
                    var_a2_2 = sp0;
                    temp_a0 = &var_v0[temp_a1];
                    if (var_a5_2 != 0) {
                        do {
                            var_a5_2 -= 1;
                            var_a2_2 += 4;
                            temp_f0 = (s32) *var_v0;
                            var_v0 += 4;
                            var_a2_2->unk-4 = temp_f0;
                        } while (var_a5_2 != 0);
                    }
                    if ((temp_a1 >> 2) != 0) {
                        do {
                            var_a2_2->unk0 = (s32) var_v0->unk0;
                            var_a2_2->unk4 = (s32) var_v0->unk4;
                            var_a2_2->unk8 = (s32) var_v0->unk8;
                            temp_f1 = var_v0->unkC;
                            var_v0 += 0x10;
                            var_a2_2 += 0x10;
                            var_a2_2->unk-4 = (s32) temp_f1;
                        } while (var_v0 != temp_a0);
                    }
                }
            } else if (temp_a1 > 0) {
                var_a5_3 = temp_a1 & 3;
                temp_a0_2 = &var_v0[temp_a1];
                if (var_a5_3 != 0) {
                    do {
                        var_a5_3 -= 1;
                        var_a2 += 4;
                        temp_f6 = (s32) ((f64) (*var_v0 * 4294967296.0f) * 0.5);
                        var_v0 += 4;
                        var_a2->unk-4 = temp_f6;
                    } while (var_a5_3 != 0);
                }
                if ((temp_a1 >> 2) != 0) {
                    do {
                        var_a2->unk0 = (s32) ((f64) (var_v0->unk0 * 4294967296.0f) * 0.5);
                        var_a2->unk4 = (s32) ((f64) (var_v0->unk4 * 4294967296.0f) * 0.5);
                        var_a2->unk8 = (s32) ((f64) (var_v0->unk8 * 4294967296.0f) * 0.5);
                        temp_f7 = (f64) (var_v0->unkC * 4294967296.0f) * 0.5;
                        var_v0 += 0x10;
                        var_a2 += 0x10;
                        var_a2->unk-4 = (s32) temp_f7;
                    } while (var_v0 != temp_a0_2);
                }
            }
        } else {
            __glSetError(0x500, 0x130000U, temp_a3, var_a4, var_a5, var_a6, var_a7);
        }
    } else {
        __glSetError(0x502, 0x130000U);
    }
}

s32 do_gettexenv(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp0;
    s32 *temp_v0;

    sp0 = arg2;
    if (arg0 != 0x2300) {
        __glSetError(0x500);
        return 0;
    }
    temp_v0 = __glkon_get_special(0x4DU);
    switch (arg1) {                                 /* irregular */
    default:
        __glSetError(0x500, 0x80BEU, (u32) sp0);
        return 0;
    case 0x2201:
    case 0x80BE:
        sp0->unk0 = (s32) temp_v0->unk0;
        sp0->unk4 = (f32) temp_v0->unk4;
        sp0->unk8 = (f32) temp_v0->unk8;
        sp0->unkC = (f32) temp_v0->unkC;
        return 1;
    case 0x2200:
        sp0->unk0 = (bitwise s32) (f32) ((u64) ((s64) temp_v0->unk0 << 0x20) >> 0x20);
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return 1;
    }
}

void __glkonim_GetTexEnvfv(void) {
    if (*(s32 *)0x1018 != 1) {
        __glkonim_GetMaterialiv();
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_GetTexEnviv(s32 arg1, s64 arg2) {
    s64 sp10;

    sp10 = arg2;
    if (*(s32 *)0x1018 != 1) {
        if (__glkonim_GetMaterialiv((u32) sp) != 0) {
            switch (arg1) {                         /* irregular */
            case 0x2201:
            case 0x80BE:
                sp10->unk0 = (s32) ((f64) (sp0 * 4294967296.0f) * 0.5);
                sp10->unk4 = (s32) ((f64) (sp4 * 4294967296.0f) * 0.5);
                sp10->unk8 = (s32) ((f64) (sp8 * 4294967296.0f) * 0.5);
                sp10->unkC = (s32) ((f64) (spC * (second half of f64)) * (second half of f64));
                return;
            case 0x2200:
                sp10->unk0 = (s32) sp0;
                return;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_GetTexGeniv(u32 arg0, u32 arg1, s64 arg2) {
    s64 sp0;
    f32 *temp_s0_2;
    f32 *temp_v0_2;
    s32 var_t8;
    s64 temp_v0;
    s64 var_a2;
    u32 temp_a3;
    u32 temp_a5;
    u32 temp_s0;
    u32 var_a1;
    u32 var_a4;
    void *temp_t8;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a4 = 0x81F4;
    temp_v0 = var_a2;
    temp_s0 = var_a1;
    temp_a3 = temp_s0 < 0x2503U;
    if (*(s32 *)0x1018 != 1) {
        temp_a5 = temp_s0 > 0x81F7U;
        if (arg0 >= 0x2000U) {
            var_a1 = arg0 < 0x2004U;
            var_a2 = temp_s0 < 0x2500U;
            if (var_a1 != 0) {
                sp0 = temp_v0;
                if (var_a2 == 0) {
                    if (temp_a3 == 0) {
                        goto block_7;
                    }
                    var_a4 = temp_s0 < 0x81F4U;
                    goto block_9;
                }
block_7:
                var_a4 = temp_s0 < 0x81F4U;
                if ((var_a4 == 0) && (temp_a5 == 0)) {
block_9:
                    temp_v0_2 = __glkon_get_special2(0x50U, arg0, temp_s0, temp_a3, var_a4, temp_a5);
                    if (temp_s0 != 0x2500) {
                        var_t8 = arg0 * 4;
                        if (temp_s0 != 0x2501) {
                            var_t8 = arg0 * 4;
                            if (temp_s0 != 0x2502) {
                                var_t8 = arg0 * 4;
                                if (temp_s0 != 0x81F5) {
                                    if (temp_s0 != 0x81F4) {
                                        temp_s0_2 = &temp_v0_2[arg0];
                                        sp0->unk0 = (s32) temp_s0_2->unk-8000;
                                        sp0->unk4 = (s32) temp_s0_2->unk-7FF0;
                                        sp0->unkC = 1;
                                        sp0->unk8 = (s32) temp_s0_2->unk-7FE0;
                                        sp0->unk10 = (s32) temp_s0_2->unk-7FD0;
                                        sp0->unk14 = (s32) temp_s0_2->unk-7FC0;
                                        sp0->unk18 = (s32) temp_s0_2->unk-7FB0;
                                        return;
                                    }
                                    var_t8 = arg0 * 4;
                                    /* Duplicate return node #18. Try simplifying control flow for better match */
                                    temp_t8 = temp_v0_2 + var_t8;
                                    sp0->unk0 = (s32) temp_t8->unk-8000;
                                    sp0->unk4 = (s32) temp_t8->unk-7FF0;
                                    sp0->unk8 = (s32) temp_t8->unk-7FE0;
                                    sp0->unkC = (s32) temp_t8->unk-7FD0;
                                    return;
                                }
                            }
                        }
                        temp_t8 = temp_v0_2 + var_t8;
                        sp0->unk0 = (s32) temp_t8->unk-8000;
                        sp0->unk4 = (s32) temp_t8->unk-7FF0;
                        sp0->unk8 = (s32) temp_t8->unk-7FE0;
                        sp0->unkC = (s32) temp_t8->unk-7FD0;
                        return;
                    }
                    sp0->unk0 = (bitwise s32) *temp_v0_2;
                    return;
                }
                goto block_15;
            }
        }
block_15:
        __glSetError(0x500, var_a1, (u32) var_a2, temp_a3, var_a4, temp_a5);
    } else {
        __glSetError(0x502, temp_a3, 0x81F4U, 1U);
    }
}

void __glkonim_GetTexGendv(u32 arg0, u32 arg1, s64 arg2, u32 arg4, u32 arg6) {
    s64 sp0;
    f32 *temp_v0;
    s32 var_v1;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_a5;
    u32 var_a4;
    u32 var_a6;
    u32 var_a7;
    void *temp_at;
    void *temp_v1;

    var_a4 = arg4;
    var_a6 = arg6;
    var_a7 = 0x81F7;
    temp_a5 = arg1 < 0x2503U;
    if (*(s32 *)0x1018 != 1) {
        temp_a2 = arg0 < 0x2000U;
        temp_a3 = arg0 < 0x2004U;
        if (temp_a2 == 0) {
            var_a4 = arg1 < 0x2500U;
            if ((temp_a3 != 0) && (((sp0 = arg2, (var_a4 == 0)) && (temp_a5 != 0)) || ((var_a6 = arg1 < 0x81F4U, var_a7 = arg1 > 0x81F7U, (var_a6 == 0)) && (var_a7 == 0)))) {
                temp_v0 = __glkon_get_special2(0x50U, arg0, arg1, temp_a3, var_a4, temp_a5, var_a6, var_a7);
                temp_at = temp_v0 + (arg0 * 4);
                if (arg1 != 0x2500) {
                    var_v1 = arg0 * 4;
                    if (arg1 != 0x2501) {
                        var_v1 = arg0 * 4;
                        if (arg1 != 0x2502) {
                            var_v1 = arg0 * 4;
                            if (arg1 != 0x81F5) {
                                var_v1 = arg0 * 4;
                                if (arg1 != 0x81F4) {
                                    sp0->unk0 = (f64) temp_at->unk-8000;
                                    sp0->unk8 = (f64) temp_at->unk-7FF0;
                                    sp0->unk18 = 1.0;
                                    sp0->unk10 = (f64) temp_at->unk-7FE0;
                                    sp0->unk20 = (f64) temp_at->unk-7FD0;
                                    sp0->unk28 = (f64) temp_at->unk-7FC0;
                                    sp0->unk30 = (f64) temp_at->unk-7FB0;
                                    return;
                                }
                            }
                        }
                    }
                    temp_v1 = temp_v0 + var_v1;
                    sp0->unk0 = (f64) temp_v1->unk-8000;
                    sp0->unk8 = (f64) temp_v1->unk-7FF0;
                    sp0->unk10 = (f64) temp_v1->unk-7FE0;
                    sp0->unk18 = (f64) temp_v1->unk-7FD0;
                    return;
                }
                sp0->unk0 = (f64) *temp_v0;
                return;
            }
        }
        __glSetError(0x500, 0x130000U, temp_a2, temp_a3, var_a4, temp_a5, var_a6, var_a7);
    } else {
        __glSetError(0x502, 0x130000U, temp_a5, 0x81F7U);
    }
}

void __glkonim_GetTexGenfv(u32 arg0, u32 arg1, s64 arg2, u32 arg4, u32 arg6) {
    s64 sp0;
    f32 *temp_v0;
    s32 var_v1;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_a5;
    u32 var_a4;
    u32 var_a6;
    u32 var_a7;
    void *temp_at;
    void *temp_v1;

    var_a4 = arg4;
    var_a6 = arg6;
    var_a7 = 0x81F7;
    temp_a5 = arg1 < 0x2503U;
    if (*(s32 *)0x1018 != 1) {
        temp_a2 = arg0 < 0x2000U;
        temp_a3 = arg0 < 0x2004U;
        if (temp_a2 == 0) {
            var_a4 = arg1 < 0x2500U;
            if ((temp_a3 != 0) && (((sp0 = arg2, (var_a4 == 0)) && (temp_a5 != 0)) || ((var_a6 = arg1 < 0x81F4U, var_a7 = arg1 > 0x81F7U, (var_a6 == 0)) && (var_a7 == 0)))) {
                temp_v0 = __glkon_get_special2(0x50U, arg0, arg1, temp_a3, var_a4, temp_a5, var_a6, var_a7);
                temp_at = temp_v0 + (arg0 * 4);
                if (arg1 != 0x2500) {
                    if (arg1 != 0x2501) {
                        var_v1 = arg0 * 4;
                        if (arg1 != 0x2502) {
                            var_v1 = arg0 * 4;
                            if (arg1 != 0x81F5) {
                                var_v1 = arg0 * 4;
                                if (arg1 != 0x81F4) {
                                    sp0->unk0 = (f32) temp_at->unk-8000;
                                    sp0->unk4 = (f32) temp_at->unk-7FF0;
                                    sp0->unkC = 1.0f;
                                    sp0->unk8 = (f32) temp_at->unk-7FE0;
                                    sp0->unk10 = (f32) temp_at->unk-7FD0;
                                    sp0->unk14 = (f32) temp_at->unk-7FC0;
                                    sp0->unk18 = (f32) temp_at->unk-7FB0;
                                    return;
                                }
                            }
                        }
                        /* Duplicate return node #16. Try simplifying control flow for better match */
                        temp_v1 = temp_v0 + var_v1;
                        sp0->unk0 = (f32) temp_v1->unk-8000;
                        sp0->unk4 = (f32) temp_v1->unk-7FF0;
                        sp0->unk8 = (f32) temp_v1->unk-7FE0;
                        sp0->unkC = (f32) temp_v1->unk-7FD0;
                        return;
                    }
                    var_v1 = arg0 * 4;
                    temp_v1 = temp_v0 + var_v1;
                    sp0->unk0 = (f32) temp_v1->unk-8000;
                    sp0->unk4 = (f32) temp_v1->unk-7FF0;
                    sp0->unk8 = (f32) temp_v1->unk-7FE0;
                    sp0->unkC = (f32) temp_v1->unk-7FD0;
                    return;
                }
                sp0->unk0 = (f32) *temp_v0;
                return;
            }
        }
        __glSetError(0x500, 0x130000U, temp_a2, temp_a3, var_a4, temp_a5, var_a6, var_a7);
    } else {
        __glSetError(0x502, 0x130000U, temp_a5, 0x81F7U);
    }
}

s32 *kona_get_current(s32 arg0) {
    s32 *temp_a2;
    s32 *var_v0;

    temp_a2 = __glkon_get_special(0x3BU, 0U);
    if (arg0 != 0xB00) {
        var_v0 = temp_a2 + 0x20;
        switch (arg0) {                             /* irregular */
        default:
            return ((arg0 ^ 0xB43) == 0) ? (temp_a2 + 0x30) : NULL;
        case 0xB01:
            return temp_a2 + 0x10;
        case 0xB02:
            var_v0 = temp_a2 + 0x14;
            return var_v0;
        case 0xB03:
            /* Duplicate return node #5. Try simplifying control flow for better match */
            return var_v0;
        }
    } else {
        return temp_a2;
    }
}

s32 *kona_get_raster(s32 arg0) {
    s32 *temp_a2;
    s32 *temp_a5;
    s32 *var_v0;

    temp_a2 = __glkon_get_special(0x3DU, 0U);
    temp_a5 = temp_a2 + 0x38;
    if (arg0 != 0xB04) {
        var_v0 = temp_a2 + 0x14;
        if (arg0 != 0xB05) {
            if (arg0 != 0xB06) {
                var_v0 = temp_a2 + 0x34;
                if (arg0 != 0xB07) {
                    if (arg0 != 0xB08) {
                        return ((arg0 ^ 0xB09) == 0) ? temp_a5 : NULL;
                    }
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    return var_v0;
                }
                var_v0 = temp_a2 + 0x24;
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return var_v0;
            }
            return var_v0;
        }
        return temp_a2 + 0x10;
    }
    return temp_a2;
}

s32 kona_get_evaluator(s32 arg0) {
    s32 temp_v0;
    void *temp_a3;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    temp_a3 = temp_a4->unk7B64;
    temp_v0 = temp_a3 + 8;
    switch (arg0) {                                 /* irregular */
    default:
        return temp_v0;
    case 0xDD3:
        temp_a3->unk8 = (f32) temp_a4->unk7A8;
        temp_a3->unkC = (f32) temp_a4->unk7B8;
        return temp_v0;
    case 0xDD0:
        temp_a3->unk8 = (f32) temp_a4->unk78C;
        temp_a3->unkC = (f32) temp_a4->unk790;
        return temp_v0;
    case 0xDD1:
        temp_a3->unk8 = (f32) temp_a4->unk798;
        return temp_v0;
    case 0xDD2:
        temp_a3->unk8 = (f32) temp_a4->unk79C;
        temp_a3->unkC = (f32) temp_a4->unk7A0;
        temp_a3->unk10 = (f32) temp_a4->unk7AC;
        temp_a3->unk14 = (f32) temp_a4->unk7B0;
        return temp_v0;
    }
}

s32 kona_get_crud(u32 arg0) {
    s32 temp_a3;
    s32 temp_at;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    void *temp_a4;
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    temp_at = arg0 < 0xDB3U;
    temp_a4 = temp_a5->unk7B64;
    temp_a3 = temp_a4 + 8;
    if (temp_at == 0) {
        if (arg0 >= 0xDB4U) {
            if (arg0 >= 0x806FU) {
                if (arg0 <= 0x806FU) {
                    var_a4 = temp_a5->unk7B90 & 8;
                } else if (arg0 >= 0x8077U) {
                    if (arg0 <= 0x8077U) {
                        var_a4 = temp_a5->unk1528 & 8;
                    } else if (arg0 >= 0x8079U) {
                        if (arg0 <= 0x8079U) {
                            var_a4 = temp_a5->unk1528 & 0x10;
                        } else {
                            var_a4 = sp0;
                        }
                    } else if (arg0 != 0x8078) {
                        var_a4 = sp0;
                    } else {
                        var_a4 = temp_a5->unk1528 & 4;
                    }
                } else if (arg0 >= 0x8075U) {
                    if (arg0 <= 0x8075U) {
                        var_a4 = temp_a5->unk1528 & 1;
                    } else if (arg0 != 0x8076) {
                        var_a4 = sp0;
                    } else {
                        var_a4 = temp_a5->unk1528 & 2;
                    }
                } else if (arg0 != 0x8074) {
                    var_a4 = sp0;
                } else {
                    var_a4 = temp_a5->unk1528 & 0x20;
                }
            } else if (arg0 >= 0xDB7U) {
                if (arg0 >= 0xDB8U) {
                    if (arg0 >= 0xDE0U) {
                        if (arg0 < 0xDE1U) {
                            var_a4 = temp_a5->unk7B90 & 2;
                        } else if (arg0 != 0xDE1) {
                            var_a4 = sp0;
                        } else {
                            var_a4 = temp_a5->unk7B90 & 4;
                        }
                    } else if (arg0 != 0xDB8) {
                        var_a4 = sp0;
                    } else {
                        goto block_12;
                    }
                } else {
                    goto block_12;
                }
            } else if (arg0 >= 0xDB5U) {
                if ((arg0 >= 0xDB6U) && (arg0 != 0xDB6)) {
                    var_a4 = sp0;
                } else {
                    goto block_12;
                }
            } else if (arg0 != 0xDB4) {
                var_a4 = sp0;
            } else {
                goto block_12;
            }
        } else {
            goto block_12;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        temp_a4->unk8 = (s32) (var_a4 != 0);
        return temp_a3;
    }
    if (arg0 >= 0xD95U) {
        if (arg0 >= 0xD96U) {
            if (arg0 >= 0xDB0U) {
                if (arg0 >= 0xDB1U) {
                    if (arg0 >= 0xDB2U) {
                        if (temp_at == 0) {
                            var_a4 = sp0;
                        } else {
                            goto block_12;
                        }
                    } else if (arg0 != 0xDB1) {
                        var_a4 = sp0;
                    } else {
                        goto block_12;
                    }
                } else {
block_12:
                    var_a4_2 = temp_a5->unk714;
                    var_a6 = 1 << (arg0 - 0xDB0);
                    goto block_13;
                }
            } else if (arg0 >= 0xD97U) {
                if ((arg0 >= 0xD98U) && (arg0 != 0xD98)) {
                    var_a4 = sp0;
                } else {
                    goto block_21;
                }
            } else if (arg0 != 0xD96) {
                var_a4 = sp0;
            } else {
                goto block_21;
            }
        } else {
            goto block_21;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        temp_a4->unk8 = (s32) (var_a4 != 0);
        return temp_a3;
    }
    if (arg0 >= 0xD91U) {
        if (arg0 >= 0xD92U) {
            if (arg0 >= 0xD93U) {
                if ((arg0 >= 0xD94U) && (arg0 != 0xD94)) {
                    var_a4 = sp0;
                } else {
                    goto block_21;
                }
            } else if (arg0 != 0xD92) {
                var_a4 = sp0;
            } else {
                goto block_21;
            }
        } else {
            goto block_21;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        temp_a4->unk8 = (s32) (var_a4 != 0);
        return temp_a3;
    }
    if (arg0 >= 0xD80U) {
        if (arg0 < 0xD81U) {
            var_a4_2 = temp_a5->unk700;
            var_a6 = 0x800000;
            goto block_13;
        }
        if (arg0 != 0xD90) {
            var_a4 = sp0;
        } else {
block_21:
            var_a4_2 = temp_a5->unk710;
            var_a6 = 1 << (arg0 - 0xD90);
block_13:
            var_a4 = var_a4_2 & var_a6;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        temp_a4->unk8 = (s32) (var_a4 != 0);
        return temp_a3;
    }
    if (arg0 != 0xBB1) {
        var_a4 = sp0;
        temp_a4->unk8 = (s32) (var_a4 != 0);
        return temp_a3;
    }
    temp_a4->unk8 = (s32) ((s32) (temp_a5->unk31C4 - temp_a5->unk31C0) >> 2);
    return temp_a3;
}

void *kona_get_variable(s32 *arg1) {
    void *temp_v0;

    temp_v0 = __glkona_wait_rdata(0x812A);
    *arg1 = temp_v0->unk-4;
    return temp_v0;
}
