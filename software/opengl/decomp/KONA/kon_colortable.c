? __glInitMemGet(void *, void *, s32, ?, ?, s32);   /* extern */
? __glInitMemPack(void *, void *, s32, ?, ?, u32, u32, s32); /* extern */
? __glInitPacker(void *, void *);                   /* extern */
? __glInitUnpacker(void *, void *);                 /* extern */
? __glKonDefaultState(?);                           /* extern */
? __glKonPopState(void *);                          /* extern */
? __glKonPushState(?, void *, s64, s32);            /* extern */
? __glKonSetPixelLEModes(void *);                   /* extern */
? __glKonUnsetLEModes(void *);                      /* extern */
f32 __glSetError(?, s32, s32, s32, s32, u32 *, u32 *, u32 *); /* extern */
? __glkon_get_special2(?, s32, s32, s32);           /* extern */
f32 __glkon_get_special3(?, s32, s32, s32);         /* extern */
? __glkon_get_special4(?, void *, u32, s32, s32);   /* extern */
s32 __glkon_mem_alloc(?, s64, ?, s32, s32);         /* extern */
s32 __glkon_mem_free(?, s64, s64);                  /* extern */
? __glkonim_ReadPixels(s64, s64, s64, ?, ?, ?, s64); /* extern */
? __glkonim_ColorTableSGI(s64, s64, s64, s64, s64, s64); /* static */
void __glkonim_GetPixelMapusv(s32 arg0, s16 *arg1); /* static */
void __glkonim_PixelMapusv(s32, s32, s32);          /* static */

void __glKonInitColortableState(void *arg0) {
    arg0->unk8B80 = (s32) (arg0 + 0x1718);
    arg0->unk8B68 = (void *) (arg0 + 0x1678);
    arg0->unk8B50 = (void *) (arg0 + 0x15D8);
    arg0->unk8B38 = (void *) (arg0 + 0x1538);
}

s32 EramAlloc(s64 arg0, s32 arg2, s64 arg3, s64 arg4) {
    s64 sp18;
    s64 sp8;
    s64 sp0;
    s64 var_a7;

    var_a7 = arg3;
    if (arg2 != arg3) {
        sp8 = arg4;
        sp0 = arg0;
        if (arg2 != 0) {
            sp18 = arg3;
            var_a7 = sp18;
            if (__glkon_mem_free(2, sp0, var_a7) != 0) {
                return 1;
            }
        }
        if (var_a7 != 0) {
            if (__glkon_mem_alloc(2, sp0, 0, var_a7 * 4, sp8 * 4) != 0) {
                __glSetError(0x505);
                return 1;
            }
            /* Duplicate return node #8. Try simplifying control flow for better match */
            return 0;
        }
        return 0;
    }
    return 0;
}

/*
Decompilation failure in function __glkonim_ColorTableSGI:

Unable to determine jump table for jr instruction at kon_colortable.s line 248.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glkonle_ColorTableSGI(s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;

    sp78 = arg6;
    sp80 = arg5;
    sp88 = arg4;
    sp90 = arg3;
    sp98 = arg2;
    __glKonSetPixelLEModes(sp);
    __glkonim_ColorTableSGI(arg1, sp98, sp90, sp88, sp80, sp78);
    __glKonUnsetLEModes(sp);
}

void PixelMapHostReadback(s32 arg0, s32 arg1, s16 *arg2, s16 *arg3, s16 *arg4) {
    if (arg1 != 0) {
        __glkonim_GetPixelMapusv();
    }
    if (arg2 != NULL) {
        __glkonim_GetPixelMapusv(arg0 + 1, arg2);
    }
    if (arg3 != NULL) {
        __glkonim_GetPixelMapusv(arg0 + 2, arg3);
    }
    if (arg4 != NULL) {
        __glkonim_GetPixelMapusv(arg0 + 3, arg4);
    }
}

void PixelMapHostDownload(s32 arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    if (arg2 != 0) {
        __glkonim_PixelMapusv(arg1->unk8);
    }
    if (arg3 != 0) {
        __glkonim_PixelMapusv(arg0 + 1, arg1->unkC, arg3);
    }
    if (arg4 != 0) {
        __glkonim_PixelMapusv(arg0 + 2, arg1->unk10, arg4);
    }
    if (arg5 != 0) {
        __glkonim_PixelMapusv(arg0 + 3, arg1->unk14, arg5);
    }
}

void do_pixelmap(u32 arg0, s32 arg1, s32 arg2, s32 arg3, u32 *arg6, ? arg_sp0) {
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t1_6;
    s32 temp_t1_7;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a3;
    s32 var_a5;
    s32 var_at;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    s64 var_a0;
    s64 var_a1_3;
    s64 var_a4;
    s64 var_s3;
    u16 temp_at_2;
    u16 temp_ra_2;
    u32 *var_a6;
    u32 *var_a7;
    u32 temp_at;
    u32 temp_f2;
    u32 temp_f3;
    u32 temp_ra;
    void *var_a7_2;
    void *var_s2_2;
    void *var_sp;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    var_sp = sp;
    arg_sp0.unk-88 = (s64) saved_reg_fp;
    arg_sp0.unk-2C = 0;
    temp_a4 = *(s32 *)0x1010;
    arg_sp0.unk-90 = (s64) saved_reg_ra;
    var_a7 = (u32 *)1;
    arg_sp0.unk-80 = (s64) saved_reg_s0;
    var_a5 = var_a2;
    arg_sp0.unk-78 = (s64) saved_reg_s1;
    var_s1 = var_a1;
    arg_sp0.unk-40 = (s64) saved_reg_s2;
    if (*(s32 *)0x1018 != 1) {
        if (var_a1 != 0) {
            if ((var_a1 > 0) && (var_a1 < 0x1001)) {
                if (arg0 != 0xC70) {
                    var_a1 = 0xC72;
                    if (arg0 != 0xC71) {
                        var_a2 = 0xC73;
                        if (arg0 != 0xC72) {
                            var_a6 = (u32 *)0xC74;
                            if (arg0 != 0xC73) {
                                var_at = var_s1 - 1;
                                if (arg0 != 0xC74) {
                                    var_a7 = (u32 *)0xC75;
                                    var_at = var_s1 - 1;
                                    if (arg0 != 0xC75) {
                                        goto block_10;
                                    }
                                }
                                goto block_20;
                            }
                        }
                    }
                }
                var_at = var_s1 - 1;
block_20:
                if (var_s1 & var_at) {
                    __glSetError(0x501, var_a1, var_a2, temp_a4, var_a5, var_a6, var_a7);
                } else {
                    goto block_10;
                }
            } else {
                __glSetError(0x501, temp_a4, var_a5, 1);
            }
        } else {
            var_s1 = 1;
            if (arg0 != 0xC70) {
                var_s1 = 1;
                if (arg0 != 0xC71) {
                    var_s1 = 1;
                    if (arg0 != 0xC72) {
                        var_a1 = 0xC73;
                        var_a2 = 0xC74;
                        if ((arg0 != 0xC73) && (arg0 != 0xC74)) {
                            var_s1 = 1;
                            if (arg0 != 0xC75) {
                                var_a5 = (s32) (&arg_sp0 - 0x2C);
                                var_a3 = 0x1404;
                                var_s1 = 1;
block_10:
                                if (arg0 != 0xC70) {
                                    goto block_11;
                                }
                                goto block_45;
                            }
                            goto block_44;
                        }
                        var_s1 = 1;
                        goto block_44;
                    }
                }
            }
block_44:
            var_a5 = (s32) (&arg_sp0 - 0x2C);
            var_a3 = 0x1404;
            if (arg0 == 0xC70) {
block_45:
                var_a0 = 0xC70;
                var_s2 = 0x8AD0;
                var_a7_2 = NULL;
                goto block_46;
            }
block_11:
            if (arg0 != 0xC71) {
                if (arg0 >= 0xC72U) {
                    var_v0 = arg0 < 0xC76U;
                    if (arg0 < 0xC76U) {
                        var_a7_2 = (void *)1;
                        var_a0 = 0xC72;
                        var_s2_2 = temp_a4 + 0x8B00;
                        switch (arg0) {             /* irregular */
                        default:
                            var_a0 = 0xC72;
                            var_a7_2 = (void *)1;
                            if (arg0 == 0xC75) {
                                goto block_30;
                            }
                            break;
                        case 0xC72:
                            goto block_47;
                        case 0xC73:
                            var_a7_2 = (void *)1;
                            var_a0 = 0xC72;
                            goto block_91;
                        case 0xC74:
                            var_a7_2 = (void *)1;
                            var_a0 = 0xC72;
                            goto block_95;
                        }
                    } else {
                        goto block_23;
                    }
                } else {
                    var_v0 = arg0 < 0xC76U;
block_23:
                    if ((var_v0 == 0) && (arg0 < 0xC7AU)) {
                        var_s2_2 = temp_a4 + 0x8B18;
                        if (arg0 != 0xC76) {
                            if (arg0 != 0xC77) {
                                if (arg0 != 0xC78) {
                                    if (arg0 == 0xC79) {
                                        var_a0 = 0xC76;
                                        var_a7_2 = (void *)2;
block_30:
                                        temp_a4_2 = var_s2_2->unk10;
                                        temp_t2 = var_s2_2->unkC;
                                        temp_t9 = var_s2_2->unk8;
                                        var_a1_2 = (var_s1 >= temp_a4_2) ? var_s1 : temp_a4_2;
                                        temp_t1 = (temp_t2 >= temp_t9) ? temp_t2 : temp_t9;
                                        if (var_a1_2 < temp_t1) {
                                            var_a1_2 = temp_t1;
                                        }
                                        arg_sp0.unk-98 = (s64) saved_reg_s3;
                                        goto block_50;
                                    }
                                } else {
                                    var_a0 = 0xC76;
                                    var_a7_2 = (void *)2;
block_95:
                                    temp_t2_2 = var_s2_2->unkC;
                                    temp_t9_2 = var_s2_2->unk8;
                                    temp_t3 = var_s2_2->unk14;
                                    temp_t1_2 = (temp_t2_2 >= temp_t9_2) ? temp_t2_2 : temp_t9_2;
                                    var_a1_2 = (temp_t3 >= var_s1) ? temp_t3 : var_s1;
                                    if (var_a1_2 < temp_t1_2) {
                                        var_a1_2 = temp_t1_2;
                                    }
                                    arg_sp0.unk-98 = (s64) saved_reg_s3;
                                    goto block_50;
                                }
                            } else {
                                var_a0 = 0xC76;
                                var_a7_2 = (void *)2;
block_91:
                                temp_a4_3 = var_s2_2->unk10;
                                temp_t9_3 = var_s2_2->unk8;
                                temp_t3_2 = var_s2_2->unk14;
                                temp_t1_3 = (var_s1 >= temp_t9_3) ? var_s1 : temp_t9_3;
                                var_a1_2 = (temp_t3_2 >= temp_a4_3) ? temp_t3_2 : temp_a4_3;
                                if (var_a1_2 < temp_t1_3) {
                                    var_a1_2 = temp_t1_3;
                                }
                                arg_sp0.unk-98 = (s64) saved_reg_s3;
                                goto block_50;
                            }
                        } else {
                            var_a0 = 0xC76;
                            var_a7_2 = (void *)2;
                            goto block_47;
                        }
                    } else {
                        __glSetError(0x500, var_a1, var_a2, var_a3, temp_a4, (u32 *) var_a5, var_a6, var_a7);
                    }
                }
            } else {
                var_a0 = 0xC71;
                var_a7_2 = (void *)3;
                var_s2 = 0x8AE8;
block_46:
                var_s2_2 = temp_a4 + var_s2;
block_47:
                temp_t3_3 = var_s2_2->unk14;
                temp_a4_4 = var_s2_2->unk10;
                temp_t2_3 = var_s2_2->unkC;
                var_a1_2 = (temp_t3_3 >= temp_a4_4) ? temp_t3_3 : temp_a4_4;
                temp_t1_4 = (temp_t2_3 >= var_s1) ? temp_t2_3 : var_s1;
                if (var_a1_2 < temp_t1_4) {
                    var_a1_2 = temp_t1_4;
                }
                arg_sp0.unk-98 = (s64) saved_reg_s3;
block_50:
                if (var_a1_2 >= 0x401) {
                    var_s3 = 0x1000;
                    var_a4 = 0x1000;
                } else if (var_a1_2 >= 0x101) {
                    var_s3 = 0x400;
                    var_a4 = 0x400;
                } else {
                    var_a4 = (s64) ((var_a1_2 == 0) ? arg_sp0.unk-30 : 0x100);
                    var_s3 = (s64) ((var_a1_2 != 0) ? 0x100 : var_a1_2);
                }
                if ((var_a0 == 0xC72) || (var_a1_3 = var_s3, (var_a0 == 0xC76))) {
                    var_a1_3 = var_s3 * 2;
                }
                temp_a2 = var_s2_2->unk0;
                if ((temp_a2 != 0) && (var_a1_3 != 0) && (temp_a2 != var_a1_3) && (arg0 != 0xC70) && (temp_t0 = arg0 - var_a0, (arg0 != 0xC71))) {
                    arg_sp0.unk-A8 = var_a4;
                    arg_sp0.unk-48 = var_a1_3;
                    if (temp_t0 != 0) {
                        var_a6 = (u32 *)-0x10;
                        var_sp = sp - (((var_s2_2->unk8 * 2) + 0xF) & ~0xF);
                        arg_sp0.unk-70 = (s64) var_sp;
                        if (temp_t0 != 1) {
                            goto block_61;
                        }
                        goto block_99;
                    }
                    arg_sp0.unk-70 = 0;
                    if (temp_t0 == 1) {
block_99:
                        arg_sp0.unk-50 = 0;
                    } else {
block_61:
                        var_sp -= ((var_s2_2->unkC * 2) + 0xF) & ~0xF;
                        arg_sp0.unk-50 = (s64) var_sp;
                    }
                    if (temp_t0 != 2) {
                        var_sp -= ((var_s2_2->unk10 * 2) + 0xF) & ~0xF;
                        arg_sp0.unk-60 = (s64) var_sp;
                    } else {
                        arg_sp0.unk-60 = 0;
                    }
                    if (temp_t0 != 3) {
                        arg_sp0.unk-A0 = (s64) var_a7_2;
                        arg_sp0.unk-C = var_a5;
                        arg_sp0.unk-4 = var_a3;
                        arg_sp0.unk-58 = var_a0;
                        arg_sp0.unk-68 = (s64) (var_sp - (((var_s2_2->unk14 * 2) + 0xF) & ~0xF));
                    } else {
                        arg_sp0.unk-68 = 0;
                        arg_sp0.unk-A0 = (s64) var_a7_2;
                        arg_sp0.unk-C = var_a5;
                        arg_sp0.unk-4 = var_a3;
                        arg_sp0.unk-58 = var_a0;
                    }
                    __glkonle_ColorTableSGI(arg_sp0.unk-58, arg_sp0.unk-70, arg_sp0.unk-50, arg_sp0.unk-60, arg_sp0.unk-68, (s64) var_a5, var_a6, (s64) var_a7_2);
                    var_a4 = arg_sp0.unk-A8;
                    var_a7_2 = (void *) arg_sp0.unk-A0;
                } else {
                    arg_sp0.unk-70 = 0;
                    arg_sp0.unk-50 = 0;
                    arg_sp0.unk-60 = 0;
                    arg_sp0.unk-68 = 0;
                    arg_sp0.unk-C = var_a5;
                    arg_sp0.unk-4 = var_a3;
                    arg_sp0.unk-48 = var_a1_3;
                    arg_sp0.unk-58 = var_a0;
                }
                if (__glKonInitColortableState(var_a7_2, arg_sp0.unk-34, var_s2_2->unk0, arg_sp0.unk-48, var_a4) != 0) {
                    var_s2_2->unk0 = 0;
                    return;
                }
                var_s2_2->unk0 = (s32) arg_sp0.unk-48;
                (var_s2_2 + ((arg0 - arg_sp0.unk-58) * 4))->unk8 = var_s1;
                if (arg_sp0.unk-4 != 0x1403) {
                    temp_v0 = arg_sp0.unk-4;
                    if (temp_v0 != 0x1405) {
                        if (temp_v0 == 0x1406) {
                            temp_t1_5 = arg_sp0.unk-C;
                            *(u32 *)0x4000 = 0x34;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) var_s1;
                            *(void *)0x4000 = (bitwise u32) (f32) (var_s1 - 1);
                            var_a2_2 = temp_t1_5;
                            *(void *)0x4000 = (u32) var_s3;
                            if (var_s1 & 1) {
                                var_a2_2 = temp_t1_5 + 4;
                                *(void *)0x4000 = (u32) *temp_t1_5;
                            }
                            if ((var_s1 >> 1) != 0) {
                                do {
                                    temp_f3 = var_a2_2->unk0;
                                    temp_f2 = var_a2_2->unk4;
                                    var_a2_2 += 8;
                                    *(void *)0x4000 = temp_f3;
                                    *(void *)0x4000 = temp_f2;
                                } while (var_a2_2 != ((var_s1 * 4) + temp_t1_5));
                            }
                        }
                    } else {
                        temp_t1_6 = arg_sp0.unk-C;
                        *(void *)0x4000 = 0x35U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_s1;
                        *(void *)0x4000 = (bitwise u32) (f32) (var_s1 - 1);
                        var_a2_3 = temp_t1_6;
                        *(void *)0x4000 = (u32) var_s3;
                        if (var_s1 & 1) {
                            var_a2_3 = temp_t1_6 + 4;
                            *(void *)0x4000 = (u32) *temp_t1_6;
                        }
                        if ((var_s1 >> 1) != 0) {
                            do {
                                temp_ra = var_a2_3->unk4;
                                temp_at = var_a2_3->unk0;
                                var_a2_3 += 8;
                                *(void *)0x4000 = temp_at;
                                *(void *)0x4000 = temp_ra;
                            } while (var_a2_3 != ((var_s1 * 4) + temp_t1_6));
                        }
                    }
                } else {
                    temp_t1_7 = arg_sp0.unk-C;
                    *(void *)0x4000 = 0x36U;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (u32) var_s1;
                    *(void *)0x4000 = (bitwise u32) (f32) (var_s1 - 1);
                    var_a2_4 = temp_t1_7;
                    *(void *)0x4000 = (u32) var_s3;
                    if (var_s1 & 1) {
                        var_a2_4 = temp_t1_7 + 2;
                        *(void *)0x4000 = (u32) (u16) *temp_t1_7;
                    }
                    if ((var_s1 >> 1) != 0) {
                        do {
                            temp_ra_2 = var_a2_4->unk2;
                            temp_at_2 = var_a2_4->unk0;
                            var_a2_4 += 4;
                            *(void *)0x4000 = (u32) temp_at_2;
                            *(void *)0x4000 = (u32) temp_ra_2;
                        } while (var_a2_4 != ((var_s1 * 2) + temp_t1_7));
                    }
                }
                __glkonle_ColorTableSGI(arg_sp0.unk-58, (s64) var_s2_2, arg_sp0.unk-70, arg_sp0.unk-50, arg_sp0.unk-60, arg_sp0.unk-68);
            }
        }
    } else {
        __glSetError(0x502, temp_a4, var_a5, 1);
    }
}

void __glkonim_PixelMapfv(void) {
    __glkonle_ColorTableSGI(0x1406);
}

void __glkonim_PixelMapuiv(void) {
    __glkonle_ColorTableSGI(0x1405);
}

void __glkonim_PixelMapusv(void) {
    __glkonle_ColorTableSGI(0x1403);
}

void __glkonim_CopyColorTableSGI(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0) {
    s32 temp_a6;

    arg_sp0.unk-C8 = (s64) saved_reg_fp;
    temp_a6 = arg4 & (arg4 - 1);
    arg_sp0.unk-D8 = (s64) saved_reg_s0;
    arg_sp0.unk-D0 = (s64) saved_reg_gp;
    arg_sp0.unk-E0 = (s64) saved_reg_ra;
    if (*(s32 *)0x1018 != 1) {
        if (arg4 >= 0) {
            arg_sp0.unk-C0 = arg2;
            arg_sp0.unk-B8 = arg3;
            arg_sp0.unk-B0 = arg0;
            arg_sp0.unk-A8 = arg1;
            if (arg4 != 0) {
                if (temp_a6 != 0) {
                    goto block_4;
                }
                goto block_7;
            }
block_7:
            *(s32 *)0x4000 = 0x111;
            *(void *)0x4000 = 8;
            *(void *)0x4000 = 0x40000000;
            arg_sp0.unk-A0 = (s64) (sp - (((arg4 * 8) + 0xF) & ~0xF));
            __glKonPushState(0xF, &arg_sp0 - 0x98, saved_reg_fp, temp_a6);
            __glKonDefaultState(0xF);
            __glkonim_ReadPixels(arg_sp0.unk-C0, arg_sp0.unk-B8, arg4, 1, 0x1908, 0x1403, arg_sp0.unk-A0);
            *(void *)0x4000 = 0x111;
            *(void *)0x4000 = 8;
            *(void *)0x4000 = 0;
            __glkonim_ColorTableSGI(arg_sp0.unk-B0, arg_sp0.unk-A8, arg4, 0x1908, 0x1403, arg_sp0.unk-A0);
            __glKonPopState(&arg_sp0 - 0x98);
        } else {
block_4:
            __glSetError(0x501, (s32) saved_reg_fp, temp_a6);
        }
    } else {
        __glSetError(0x502, (s32) saved_reg_fp, temp_a6);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x1f8, 0x1fc, 0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x240, 0x244], gap at: 0x230. */
void __glkonim_GetColorTableSGI(void *arg0, u32 arg1, u32 arg2, s32 arg3, s32 arg5, s32 arg6) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s5;
    s32 var_a1;
    s32 var_a2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s2;
    void *temp_s0;
    void *temp_t0;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *(void **)0x1010;
    temp_a3 = arg2 < 0x1407U;
    if (*(s32 *)0x1018 != 1) {
        if ((arg1 < 0x1903U) || (arg1 >= 0x190BU)) {
            if (arg1 != 0x8000) {
                __glSetError(0x500, 0x8000, temp_a3, 1);
            } else {
                goto block_6;
            }
        } else {
block_6:
            temp_a2 = arg2 < 0x1400U;
            if ((temp_a2 != 0) || (temp_a3 == 0)) {
                var_a5 = arg2 < 0x8032U;
                var_a6 = 0x8036;
                if (var_a5 == 0) {
                    var_a6 = arg2 > 0x8036U;
                    if (var_a6 == 0) {
                        goto block_10;
                    }
                }
                __glSetError(0x500, 0x8000, temp_a2, temp_a3, 1, (u32 *) var_a5, (u32 *) var_a6);
            } else {
block_10:
                if (arg2 != 0x8032) {
                    goto block_11;
                }
                var_a7 = 0x8033;
                if (arg1 != 0x1907) {
                    goto block_30;
                }
block_11:
                var_a7 = arg2 < 0x8033U;
                if (var_a7 == 0) {
                    if ((arg2 <= 0x8036U) && (arg1 != 0x1908)) {
                        if (arg1 == 0x8000) {
                            goto block_15;
                        }
block_30:
                        __glSetError(0x502, 0x8000, temp_a2, temp_a3, 1, (u32 *) var_a5, (u32 *) var_a6, (u32 *) var_a7);
                    } else {
                        goto block_16;
                    }
                } else {
block_15:
block_16:
                    var_a2 = temp_s0 + 0x1718;
                    switch (arg0) {                 /* irregular */
                    default:
                        __glSetError(0x500, 0x8000, var_a2, temp_a3, 1, (u32 *) var_a5, (u32 *) var_a6, (u32 *) var_a7);
                        break;
                    case 0x80BC:
block_22:
                        temp_s5 = var_a2->unkC;
                        var_a1 = temp_s0->unk8C6C->unkC;
                        if (temp_s5 > 0) {
                            unksp228 = (s64) var_a1;
                            var_s2 = 0;
                            do {
                                temp_s1 = temp_s5 - var_s2;
                                temp_s1_2 = (temp_s1 >= 0x200) ? 0x200 : temp_s1;
                                __glkon_get_special4(0xEA, arg0, arg1, var_s2, temp_s1_2);
                                __glInitMemGet(temp_s0, sp, temp_s1_2, 1, 0x1908, temp_s0->unk7B64 + 8);
                                __glInitMemPack(temp_s0, sp, temp_s1_2, 1, 0, arg1, arg2, arg3);
                                __glInitUnpacker(temp_s0, sp);
                                __glInitPacker(temp_s0, sp);
                                temp_s0->unk3154(temp_s0, sp, 0, 0, 0, 1);
                                temp_t0 = temp_s0->unk8C6C;
                                var_s2 += temp_s1_2;
                                temp_t0->unkC = (s32) (temp_s1_2 + temp_t0->unkC);
                            } while (var_s2 < temp_s5);
                            var_a1 = (s32) unksp228;
                        }
                        temp_s0->unk8C6C->unkC = var_a1;
                        return;
                    case 0x80D0:
                        var_a2 = (s32) (temp_s0 + 0x1538);
                        goto block_22;
                    case 0x80D1:
                        var_a2 = temp_s0 + 0x15D8;
                        goto block_22;
                    case 0x80D2:
                        var_a2 = temp_s0 + 0x1678;
                        goto block_22;
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a3, 1);
    }
}

/*
Decompilation failure in function get_pixel_map_setup:

Unable to determine jump table for jr instruction at kon_colortable.s line 2302.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glkonim_GetPixelMapfv(s32 arg0, void *arg1) {
    s32 sp4;
    f32 *var_a5;
    f32 temp_f0;
    f32 temp_f1;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a6;
    s32 var_s2;
    void *temp_s4;
    void *var_a1;
    void *var_s1;

    var_s1 = arg1;
    temp_s4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glkonim_GetColorTableSGI(sp, (u32) &sp4);
        var_s2 = 0;
        if (sp0 > 0) {
            var_a2 = 0;
            do {
                temp_s0 = sp0 - var_s2;
                temp_s0_2 = (temp_s0 >= 0x200) ? 0x200 : temp_s0;
                __glkon_get_special3(0x48, arg0, var_a2, temp_s0_2);
                var_s2 += temp_s0_2;
                var_a2_2 = temp_s0_2 & 3;
                var_a6 = 0;
                var_a5 = temp_s4->unk7B64 + (sp4 * 4) + 8;
                if (temp_s0_2 > 0) {
                    if (var_a2_2 != 0) {
                        do {
                            var_a2_2 -= 1;
                            temp_f0 = *var_a5;
                            var_a6 += 1;
                            var_s1 += 4;
                            var_a5 += 0x10;
                            var_s1->unk-4 = temp_f0;
                        } while (var_a2_2 != 0);
                    }
                    var_a1 = var_s1;
                    if ((temp_s0_2 >> 2) != 0) {
                        do {
                            var_a1->unk0 = (f32) var_a5->unk0;
                            var_a1->unk4 = (f32) var_a5->unk10;
                            var_a1->unk8 = (f32) var_a5->unk20;
                            var_a6 += 4;
                            temp_f1 = var_a5->unk30;
                            var_a1 += 0x10;
                            var_a5 += 0x40;
                            var_a1->unk-4 = temp_f1;
                        } while (temp_s0_2 != var_a6);
                        var_s1 = var_a1;
                    }
                }
                var_a2 = var_s2;
            } while (var_s2 < sp0);
        }
    } else {
        __glSetError(0x502);
    }
}

f32 __glkonim_GetPixelMapuiv(s32 arg0, f32 *arg1) {
    s32 sp4;
    f32 *var_s0;
    f32 var_f0;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 var_a0;
    s32 var_s5;
    void *temp_a5;
    void *temp_s6;
    void *var_a5;

    temp_s6 = *(void **)0x1010;
    var_s0 = arg1;
    if (*(s32 *)0x1018 != 1) {
        var_f0 = (bitwise f32) __glkonim_GetColorTableSGI(sp, (u32) &sp4);
        if (sp0 > 0) {
            var_s5 = 0;
loop_7:
            temp_s4 = sp0 - var_s5;
            temp_s4_2 = (temp_s4 >= 0x200) ? 0x200 : temp_s4;
            var_f0 = __glkon_get_special3(0x48, arg0, var_s5, temp_s4_2);
            var_s5 += temp_s4_2;
            var_a0 = 0;
            temp_a5 = temp_s6->unk7B64 + (sp4 * 4);
            var_a5 = temp_a5 + 8;
            if (temp_s4_2 > 0) {
                if (temp_s4_2 & 1) {
                    var_a0 = 1;
                    if ((arg0 == 0xC70) || (arg0 == 0xC71)) {
                        var_f0 = second half of f64;
                        *var_s0 = (bitwise f32) (s64) temp_a5->unk8;
                    } else {
                        var_f0 = (bitwise f32) (s64) (temp_a5->unk8 * 4294967296.0f);
                        *var_s0 = var_f0;
                    }
                    var_a5 += 0x10;
                    var_s0 += 4;
                }
                if ((temp_s4_2 >> 1) != 0) {
loop_15:
                    var_a0 += 2;
                    if ((arg0 != 0xC70) && (arg0 != 0xC71)) {
                        var_s0->unk0 = (bitwise f32) (s64) (var_a5->unk0 * 4294967296.0f);
                    } else {
                        var_s0->unk0 = (bitwise f32) (s64) var_a5->unk0;
                    }
                    if ((arg0 == 0xC70) || (arg0 == 0xC71)) {
                        var_s0->unk4 = (s32) (s64) var_a5->unk10;
                    } else {
                        var_s0->unk4 = (s32) (s64) (var_a5->unk10 * 4294967296.0f);
                    }
                    var_a5 += 0x20;
                    var_s0 = var_s0 + 4 + 4;
                    if (temp_s4_2 != var_a0) {
                        goto loop_15;
                    }
                }
            }
            if (var_s5 < sp0) {
                goto loop_7;
            }
        }
    } else {
        var_f0 = __glSetError(0x502);
    }
    return var_f0;
}

void __glkonim_GetPixelMapusv(s32 arg0, s16 *arg1) {
    s32 sp4;
    s16 *var_s0;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 var_a0;
    s32 var_s5;
    void *temp_a5;
    void *temp_s6;
    void *var_a5;

    temp_s6 = *(void **)0x1010;
    var_s0 = arg1;
    if (*(s32 *)0x1018 != 1) {
        __glkonim_GetColorTableSGI(sp, (u32) &sp4);
        if (sp0 > 0) {
            var_s5 = 0;
loop_7:
            temp_s4 = sp0 - var_s5;
            temp_s4_2 = (temp_s4 >= 0x200) ? 0x200 : temp_s4;
            __glkon_get_special3(0x48, arg0, var_s5, temp_s4_2);
            var_s5 += temp_s4_2;
            var_a0 = 0;
            temp_a5 = temp_s6->unk7B64 + (sp4 * 4);
            var_a5 = temp_a5 + 8;
            if (temp_s4_2 > 0) {
                if (temp_s4_2 & 1) {
                    var_a0 = 1;
                    if ((arg0 == 0xC70) || (arg0 == 0xC71)) {
                        *var_s0 = (s16) (s32) temp_a5->unk8;
                    } else {
                        *var_s0 = (s16) (s32) ((f64) temp_a5->unk8 * 65535.98);
                    }
                    var_a5 += 0x10;
                    var_s0 += 2;
                }
                if ((temp_s4_2 >> 1) != 0) {
loop_14:
                    var_a0 += 2;
                    if ((arg0 != 0xC70) && (arg0 != 0xC71)) {
                        var_s0->unk0 = (s16) (s32) ((f64) var_a5->unk0 * 65535.98);
                    } else {
                        var_s0->unk0 = (s16) (s32) var_a5->unk0;
                    }
                    if ((arg0 == 0xC70) || (arg0 == 0xC71)) {
                        var_s0->unk2 = (s16) (s32) var_a5->unk10;
                    } else {
                        var_s0->unk2 = (s16) (s32) ((f64) var_a5->unk10 * 65535.98);
                    }
                    var_a5 += 0x20;
                    var_s0 = var_s0 + 2 + 2;
                    if (temp_s4_2 != var_a0) {
                        goto loop_14;
                    }
                }
            }
            if (var_s5 < sp0) {
                goto loop_7;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_GetColorTableParameterfvSGI(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;

    sp0 = arg2;
    sp8 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glkon_get_special2(0xEC, arg0, arg1, arg0);
        if (arg1 != 0x80D6) {
            if (arg1 != 0x80D7) {
                sp0->unk0 = (f32) sp8->unk7B64->unk8;
                return;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            sp0->unk0 = (f32) ((void *) sp8)->unk7B64->unk8;
            sp0->unk4 = (f32) ((void *) sp8)->unk7B64->unkC;
            sp0->unk8 = (f32) ((void *) sp8)->unk7B64->unk10;
            sp0->unkC = (f32) ((void *) sp8)->unk7B64->unk14;
            return;
        }
        sp0->unk0 = (f32) ((void *) sp8)->unk7B64->unk8;
        sp0->unk4 = (f32) ((void *) sp8)->unk7B64->unkC;
        sp0->unk8 = (f32) ((void *) sp8)->unk7B64->unk10;
        sp0->unkC = (f32) ((void *) sp8)->unk7B64->unk14;
        return;
    }
    __glSetError(0x502, arg0);
}

void __glkonim_GetColorTableParameterivSGI(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;

    sp0 = arg2;
    sp8 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glkon_get_special2(0xEC, arg0, arg1, arg0);
        if (arg1 != 0x80D6) {
            if (arg1 != 0x80D7) {
                sp0->unk0 = (s32) sp8->unk7B64->unk8;
                return;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            sp0->unk0 = (s32) ((void *) sp8)->unk7B64->unk8;
            sp0->unk4 = (s32) ((void *) sp8)->unk7B64->unkC;
            sp0->unk8 = (s32) ((void *) sp8)->unk7B64->unk10;
            sp0->unkC = (s32) ((void *) sp8)->unk7B64->unk14;
            return;
        }
        sp0->unk0 = (s32) ((void *) sp8)->unk7B64->unk8;
        sp0->unk4 = (s32) ((void *) sp8)->unk7B64->unkC;
        sp0->unk8 = (s32) ((void *) sp8)->unk7B64->unk10;
        sp0->unkC = (s32) ((void *) sp8)->unk7B64->unk14;
        return;
    }
    __glSetError(0x502, arg0);
}
