Error occurred while processing instruction: sdc1 $f1, ($sp)

Error occurred while processing instruction: sdc1 $f1, ($sp)

/* Warning: missing "jr $ra" in last block of __glSPDlalloc (.L0d94caa0). */

/* Warning: missing "jr $ra" in last block of __glSPDlalloc2 (.L0d94cccc). */

Tried to use a double-precision instruction with odd-numbered float register $f1
Tried to use a double-precision instruction with odd-numbered float register $f1
? *__glDlistAllocBlock(void *);                     /* extern */
? __glDlistBlockStateFree(void *, void *);          /* extern */
? __glDlistBlockStateInit(? *, ?, void *, void *, ? *, s32); /* extern */
? __glDlistFreeBlock(s32, s32);                     /* extern */
? __glDlistFreeTransient(void *);                   /* extern */
? __glDlistHeapFree(void *);                        /* extern */
? __glDlistHeapInit(void *);                        /* extern */
? __glDlistHeapInsert(void *, ? *);                 /* extern */
? __glDlistHeapPriorityChanged(void *, void *);     /* extern */
void *__glDlistHeapQueryMin(s64);                   /* extern */
? __glDlistHeapRemove(s32, ? *, s32, ? *);          /* extern */
s32 __glDlistIsBlock(s32);                          /* extern */
s32 __glDlistPreallocBlocks(void *, s32);           /* extern */
? __glDlistTransientBlock(s32, s32);                /* extern */
s32 __glKonCreateContext(? *, ? *, ?);              /* extern */
s32 __glKon_ioctl(s32, ?, ? *, s32, s32, s32, s32); /* extern */
void *__glNamesLockData(void *, s32, f32 *, s32, s32, s32, s32, s32); /* extern */
? __glNamesUnlockData(void *, void *, s64);         /* extern */
? __glSPCreatePlist(? *, ? *);                      /* extern */
s32 __glSPDlistSpace(s32, s32, s32, s32);           /* extern */
? __glSPFreeDlist(? *, ? *);                        /* extern */
? __glSetError(?, s32 *, ?, s32);                   /* extern */
s32 __glkon_dlist_mem_alloc(s32, s32, s32, s32);    /* extern */
? __glkon_dlist_mem_free(s32, s32, s32, s32);       /* extern */
s32 __glkon_dlist_mem_realloc(s32, s32, s32, s32);  /* extern */
s64 __glkonim_GetIntegerv(s64, void *);             /* extern */
? __glsplc_AddIlist(? *, s32, s32, void *, s32, s32, void *); /* extern */
? __glsplc_CallList(s64, void *, s32, s32);         /* extern */
? __glsplc_CallLists(s64, s64, s64, s32, s32, s32); /* extern */
s32 close(s64);                                     /* extern */
s32 exit(?);                                        /* extern */
? fprintf(s64, void *, s32, f64, f64, f64, void *, s32); /* extern */
s32 getenv(void *, s64, s64, void (*)(? *, s32), void *, void (*)(? *, ? *, ?), void (*)(? *, s64), void *); /* extern */
? memmove(? *, ? *, ?);                             /* extern */
s64 mmap(s64, s32, ?, ?, s64, ?, s32);              /* extern */
s32 munmap(s32, s32);                               /* extern */
s64 open(void *, ?, s64, s64, s32, s32);            /* extern */
? perror(void *);                                   /* extern */
s32 strtol(s32, ?, ?);                              /* extern */
? sub_0d950000(s64, s32);                           /* extern */
s32 sysconf(?);                                     /* extern */
void __glkonSPFreeDlist(? *arg0, ? *arg1, ?);       /* static */
void __glkonSPValidateDlist(? *arg0, s64 arg1);     /* static */
void __glkonSPValidateOnlyDlist(? *arg0, ? *arg1);  /* static */
void __glkon_InitDlistState(? *arg0, s32, s32, s32, void (*)(? *, s64), s32, ?); /* static */
extern ? __glSPDlistCompiler;
extern ? __glSPExecuteDlist;
extern ? __glkon_spop;
extern ? __glkonle_Push;
extern ? __glsple_Sentinel;
extern ? __iob;
extern ? __rodata0;

void __glkonCompressPlist(void *arg0) {
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    void *temp_t0;
    void *var_a2;
    void *var_a3;

    temp_t0 = arg0->unk14;
    if ((arg0->unk18 - 1) > 0) {
        var_a6 = 0;
        var_a7 = 0;
        var_a2 = temp_t0;
        var_a3 = temp_t0;
        var_a5 = 1;
loop_5:
        temp_a4 = var_a2->unk0;
        if ((var_a2 != temp_t0) && (temp_a1 = var_a3->unk-8 + (var_a6 << 0xA), var_a6 += 1, temp_t3 = var_a3->unk-4, (temp_a4 == temp_a1)) && (temp_t2 = ((var_a2->unk4 + temp_t3) - (temp_t3 & 0xFF)) + 0x100, ((temp_t2 < 0x01000000) != 0))) {
            var_a3->unk-4 = temp_t2;
        } else {
            var_a3->unk0 = temp_a4;
            var_a3 += 8;
            var_a6 = 1;
            var_a7 += 1;
            var_a3->unk-4 = (s32) var_a2->unk4;
        }
        var_a2 += 8;
        var_a5 += 1;
        if (var_a5 < (arg0->unk18 - 1)) {
            goto loop_5;
        }
        arg0->unk1C = var_a7;
        return;
    }
    arg0->unk1C = 0;
}

s32 __glSdramFree(void) {
    return 1;
}

s64 __glSdramSbrk(s32 arg0, void *arg1) {
    s64 sp0;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_s1;
    s32 var_a0;
    s32 var_a4;

    temp_a3 = arg1->unk8;
    temp_a5 = arg1->unk10;
    var_a4 = arg1->unk4;
    sp0 = var_a4 + arg1->unk0;
    if (arg0 >= 0) {
        if (arg0 > 0) {
            M2C_TRAP_IF(temp_a5 == 0);
            var_a0 = (s32) ((f64) (second half of f64) / (second half of f64));
        } else {
            var_a0 = 0;
        }
    } else {
        M2C_TRAP_IF(temp_a5 == 0);
        var_a0 = (s32) ((f64) ((var_a4 + arg0) - temp_a3) / (f64) temp_a5);
    }
    temp_s1 = temp_a3 + (temp_a5 * var_a0);
    if (temp_a3 != temp_s1) {
        if (temp_a3 != 0) {
            if (temp_s1 != 0) {
                if (__glkon_dlist_mem_realloc(temp_s1, temp_a3, var_a4, temp_a5) >= 0) {
                    goto block_7;
                }
                return -1;
            }
            __glkon_dlist_mem_free(var_a0, temp_a3, var_a4, temp_a5);
            goto block_7;
        }
        if (__glkon_dlist_mem_alloc(temp_s1, temp_a3, var_a4, temp_a5) < 0) {
            return -1;
        }
block_7:
        var_a4 = arg1->unk4;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        arg1->unk8 = temp_s1;
        arg1->unk4 = (s32) (var_a4 + arg0);
        return sp0;
    }
    arg1->unk8 = temp_s1;
    arg1->unk4 = (s32) (var_a4 + arg0);
    return sp0;
}

s32 __glSdramInit(void *arg0) {
    arg0->unk4 = 0;
    arg0->unk0 = 0;
    arg0->unk8 = 0;
    arg0->unk10 = 0x400;
    return 1;
}

s32 __glSdramMemmove(s32 arg0, s32 arg1, s32 arg2) {
    *(s32 *)0x4000 = 0x16F;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    return arg0;
}

s32 __glSdramCopyIn(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp98;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    ? sp10;
    s32 temp_v0;

    sp98 = 1;
    temp_v0 = arg2 * 4;
    sp24 = temp_v0;
    sp1C = 2;
    sp14 = 1;
    sp20 = arg0;
    sp18 = 0x1C8;
    if (__glKon_ioctl(*(s32 *)0x1010, 0x2711, &sp10, arg1, temp_v0, temp_v0, 0) < 0) {
        perror(&__rodata0 - 0x1B78);
    }
    return arg0;
}

s32 __glSdramPushIn(s32 arg0, s32 arg1, s32 arg2) {
    *(s32 *)0x4000 = 0x167;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = (s32) (arg2 * 4);
    *(void *)0x4000 = 0;
    return arg0;
}

s32 __glKonSdramInvalidate(? *arg0, void *arg1, s32 arg2) {
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_s3;
    s32 temp_s7;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    s32 var_s4;
    void *temp_a1;
    void *var_s2;

    var_a2 = arg2;
    temp_s7 = arg0->unk133C->unk10;
    if (arg1->unk1C > 0) {
        temp_s3 = temp_s7 + 0x40;
        var_s2 = arg1->unk14;
        var_s4 = 0;
        do {
            var_s1 = var_s2->unk4;
            var_s0 = 0;
loop_3:
            __glDlistFreeBlock(temp_s3, var_s2->unk0 + var_s0);
            var_s1 -= 0x100;
            var_s0 += 0x400;
            if (var_s1 > 0) {
                goto loop_3;
            }
            var_s4 += 1;
            var_a2 = var_s4 < arg1->unk1C;
            var_s2 += 8;
        } while (var_a2 != 0);
    }
    __glDlistHeapRemove(temp_s7 + 0x80, arg1 + 0x3C, var_a2);
    temp_a1 = arg1->unk14;
    if (temp_a1 != NULL) {
        arg0->unk13A0(arg0, temp_a1);
        arg1->unk14 = NULL;
    }
    temp_a5 = arg1->unk20 & ~0x20;
    arg1->unk20 = temp_a5;
    arg1->unk8 = __glkonSPValidateDlist;
    temp_a3 = arg0->unk7B5C & 0x20;
    if (temp_a3 != 0) {
        __glkon_InitDlistState(arg0, 4, -1, temp_a3, __glkonSPValidateDlist, temp_a5, -0x21);
    }
    return 0;
}

s32 __glKonSdramSwapIn(void *arg0, ? *arg1) {
    s64 sp40;
    s64 sp8;
    s32 sp0;
    ? *temp_a2;
    ? *temp_at;
    ? *temp_s0;
    ? *temp_v0;
    ? *var_s2;
    s32 temp_s5;
    s32 var_s4;
    void *temp_s6;
    void *temp_s7;
    void *var_s1;

    sp40 = (s64) arg1->unk14;
    temp_s7 = arg0->unk133C->unk10;
    var_s1 = arg1->unk10;
    temp_s6 = temp_s7 + 0x40;
    if (__glDlistPreallocBlocks(temp_s6, arg1->unk18 - 1) != 0) {
        sp8 = (s64) arg0;
        if (sp40 == 0) {
            sp40 = __glkonim_GetIntegerv(sp8, (arg1->unk18 * 8) - 8);
        }
        var_s4 = 1;
        if (!(sp8->unk7B5C & 0x10) || !(arg1->unk20 & 2)) {
            var_s4 = 0;
        }
        sp0 = 0;
        temp_at = arg1->unkC;
        var_s2 = temp_at;
        if (temp_at != NULL) {
loop_10:
            temp_s5 = *var_s1->unk4;
            temp_v0 = __glDlistAllocBlock(temp_s6);
            temp_s0 = temp_v0;
            if (var_s4 == 0) {
                __glKonCreateContext(temp_v0, var_s2 + 0xC, 0xFD);
            } else {
                __glKonCreateContext(temp_s0, (var_s2 - temp_s7->unk2C) + 0xC, 0xFD);
            }
            *(sp40 + (sp0 * 8)) = temp_s0;
            (sp40 + (sp0 * 8))->unk4 = temp_s5;
            sp0 += 1;
            temp_a2 = *var_s2;
            var_s1 += 8;
            var_s2 = temp_a2;
            if (temp_a2 != NULL) {
                goto loop_10;
            }
            if (var_s4 != 0) {
                goto block_13;
            }
        } else if (var_s4 == 0) {

        } else {
block_13:
            __glkonim_GetIntegerv(0xBD0, sp);
        }
        arg1->unk14 = (s32) sp40;
        __glKonCreateContext(arg1);
        arg1->unk20 = (s32) (arg1->unk20 | 0x20);
        __glDlistHeapInsert(temp_s7 + 0x80, arg1 + 0x3C);
        if (sp8->unk7B5C & 0x20) {
            __glkon_InitDlistState((? *) sp8, 4, 1);
        }
        return 1;
    }
    return 0;
}

s32 __glKonSdramForceSwapIn(void *arg0, void *arg1) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    void *temp_a4;

    if (arg1->unk20 & 0x20) {
        /* Duplicate return node #1. Try simplifying control flow for better match */
        return 1;
    }
    sp8 = arg0->unk133C->unk10 + 0x80;
    sp10 = (s64) arg0;
    sp18 = (s64) arg1;
loop_3:
    if (__glKonCreateContext((? *) sp10, (? *) sp18) != 0) {
        if (sp18->unk20 & 2) {
            sp18->unk30 = 0.001f;
            __glDlistHeapPriorityChanged(sp10->unk133C + 4, sp18 + 0x30);
        }
        return 1;
    }
    temp_a4 = __glDlistHeapQueryMin(sp8)->unk8;
    if ((temp_a4 == NULL) || (sp0 = (s64) temp_a4, (sp18->unk3C <= temp_a4->unk3C))) {
        if (!(sp18->unk20 & 0x20)) {
            return 0;
        }
        /* Duplicate return node #1. Try simplifying control flow for better match */
        return 1;
    }
    __glKonCreateContext((? *) sp10, (? *) sp0);
    sp0->unk30 = (f32) sp0->unk3C;
    if (sp0->unk20 & 2) {
        __glDlistHeapPriorityChanged(sp10->unk133C + 4, sp0 + 0x30);
    }
    if (sp18->unk20 & 0x20) {
        return 1;
    }
    goto loop_3;
}

s32 __glLockedMemoryInit(s64 arg0) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 var_a1;
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v0_4;

    sp10 = arg0;
    sp10->unk10 = sysconf(0xB);
    temp_v0 = open(&__rodata0 - 0x1B68, 2, sp10);
    sp8 = temp_v0;
    if (temp_v0 != -1) {
        temp_v0_2 = getenv(&__rodata0 - 0x1B58);
        if (temp_v0_2 == 0) {
            var_a1 = 0x800000;
            sp10->unkC = 0x800000;
        } else {
            temp_v0_3 = M2C_ERROR(/* Read from unset register $t9 */)(temp_v0_2);
            var_a1 = temp_v0_3;
            sp10->unkC = temp_v0_3;
        }
        temp_v0_4 = mmap(0, var_a1, 3, 0x101, sp8, 0);
        sp0 = temp_v0_4;
        if (temp_v0_4 != -1) {
            if (close(sp8) != 0) {
                return 0;
            }
            sp10->unk4 = 0;
            sp10->unk0 = (s32) sp0;
            sp10->unk8 = 0;
            *sp0 = 0;
            temp_v0_5 = getenv(&__rodata0 - 0x1B48, sp0, sp10);
            if (temp_v0_5 != 0) {
                saved_reg_gp->unk-4088 = strtol(temp_v0_5, 0, 0);
            }
            var_v0 = 1;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return var_v0;
        }
        perror(saved_reg_gp - 0x4008);
        var_v0 = 0;
        return var_v0;
    }
    return 0;
}

s32 __glLockedMemoryFree(void *arg0) {
    if (munmap(arg0->unk0, arg0->unkC) < 0) {
        perror(saved_reg_gp - 0x4000);
    }
    return 1;
}

s64 __glLockedMemorySbrk(s64 arg0, void *arg1, s32 arg3) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_s0;
    s32 temp_t1;
    s32 var_a1;
    s32 var_a3;
    s32 var_a6;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a0;
    s64 var_a5;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a3 = arg3;
    var_a6 = arg1->unk8;
    temp_a7 = arg1->unk4;
    temp_s0 = temp_a7 + var_a0;
    var_a4 = *(void **)0x1010;
    var_a5 = temp_a7 + arg1->unk0;
    var_v0 = var_a6;
    if (var_a0 != 0) {
        if (var_a0 >= 0) {
            if (var_a0 > 0) {
                temp_a7_2 = (M2C_ERROR(/* Read from unset register $t9 */) + 0x146278)->unk-4088 < temp_s0;
                if (temp_a7_2 == 0) {
                    var_a1 = 0;
                    if (arg1->unkC >= temp_s0) {
                        goto block_5;
                    }
                    sp40 = (s64) var_a6;
                    sp48 = var_a5;
                    sp50 = var_a0;
                    sp20 = (s64) var_a4;
                    temp_v0 = open(&__rodata0 - 0x1B68, 2, (s64) var_a4, var_a5, var_a6, temp_a7_2);
                    sp18 = temp_v0;
                    if (temp_v0 >= 0) {
                        temp_a6 = arg1->unk0;
                        temp_a0 = arg1->unkC + temp_a6;
                        sp10 = temp_a0;
                        temp_v0_2 = mmap(temp_a0, 0x400000, 3, 0x101, sp18, 0, temp_a6);
                        if (temp_v0_2 != -1) {
                            if (temp_v0_2 != sp10) {
                                munmap((s32) temp_v0_2, 0x400000);
                                close(sp18);
                                /* Duplicate return node #14. Try simplifying control flow for better match */
                                return -1;
                            }
                            arg1->unkC = (s32) (arg1->unkC + 0x400000);
                            M2C_ERROR(/* Read from unset register $t9 */)(sp18);
                            var_ra = sp58;
                            var_a0 = sp50;
                            var_a4 = (void *) sp20;
                            var_a5 = sp48;
                            var_a6 = (s32) sp40;
                            var_a1 = 1;
                            var_v0 = arg1->unk8;
block_5:
                            if (var_v0 < temp_s0) {
                                do {
                                    *(var_v0 + arg1->unk0) = 0;
                                    var_v0 = arg1->unk8 + arg1->unk10;
                                    arg1->unk8 = var_v0;
                                } while (var_v0 < temp_s0);
                            }
                            goto block_8;
                        }
                        close(sp18);
                        /* Duplicate return node #14. Try simplifying control flow for better match */
                        return -1;
                    }
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    return -1;
                }
                /* Duplicate return node #14. Try simplifying control flow for better match */
                return -1;
            }
            arg1->unk4 = temp_s0;
            if (!(var_a4->unk7B5C & 0x10)) {
                /* Duplicate return node #13. Try simplifying control flow for better match */
                return var_a5;
            }
            goto block_10;
        }
        temp_t1 = arg1->unk10;
        M2C_TRAP_IF(temp_t1 == 0);
        arg1->unk8 = (s32) (var_a6 + (temp_t1 * (s32) ((second half of f64) / (f64) (second half of f64))));
        var_a1 = 0;
        goto block_8;
    }
    var_a1 = 0;
block_8:
    arg1->unk4 = temp_s0;
    var_a3 = var_a4->unk7B5C & 0x10;
    if (var_a3 != 0) {
        if (var_a1 == 0) {
block_10:
            if (var_a6 == 0) {
                sp20 = (s64) var_a4;
                if (var_a0 != 0) {
                    goto block_12;
                }
            }
            /* Duplicate return node #13. Try simplifying control flow for better match */
            return var_a5;
        }
block_12:
        sp58 = var_ra;
        sp20 = (s64) var_a4;
        spC = 1;
        sp8 = 0;
        sp48 = var_a5;
        temp_a5 = arg1->unk0;
        sp0 = temp_a5;
        temp_a4 = arg1->unkC;
        sp4 = temp_a4;
        if (__glKon_ioctl((s32) sp20, 0x2722, sp, var_a3, temp_a4, temp_a5, 1) >= 0) {
            /* Duplicate return node #13. Try simplifying control flow for better match */
            return var_a5;
        }
        perror(&__rodata0 - 0x1B30);
        return -1;
    }
    return var_a5;
}

void __glLockedMemoryMemmove(void) {
    memmove();
}

void __glKonExecuteLDMA(void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk14;
    *(s32 *)0x4000 = 0x16D;
    *(void *)0x4000 = (s32) temp_v0->unk0;
    *(void *)0x4000 = (s32) temp_v0->unk4;
}

void __glKonExecuteLDMAn(void *arg1) {
    s32 temp_a7;
    s32 var_a4;
    u32 temp_a1;
    u32 temp_t0;
    u32 var_a1;
    u32 var_a3;
    void *var_a2;

    var_a3 = arg1->unk1C;
    var_a2 = arg1->unk14;
    var_a4 = ((u32) (var_a3 + 7) >> 3) - 1;
    do {
        *(u32 *)0x4000 = 0x170;
        temp_a1 = var_a3;
        temp_a7 = var_a3 >= 8U;
        var_a3 -= 8;
        var_a1 = (temp_a7 != 0) ? 8U : temp_a1;
        *(void *)0x4000 = var_a1;
loop_2:
        temp_t0 = var_a2->unk4;
        var_a1 -= 1;
        *(void *)0x4000 = (u32) var_a2->unk0;
        var_a2 += 8;
        *(void *)0x4000 = temp_t0;
        if (var_a1 != 0) {
            goto loop_2;
        }
        var_a4 -= 1;
    } while (var_a4 != 0);
}

void __glKonExecuteIDMA(void *arg1) {
    s32 temp_at;
    s32 var_a3;
    void *var_a2;

    var_a3 = arg1->unk1C;
    var_a2 = arg1->unk14;
    do {
        temp_at = var_a2->unk4;
        *(s32 *)0x4000 = 0x16E;
        var_a3 -= 1;
        *(void *)0x4000 = (s32) var_a2->unk0;
        var_a2 += 8;
        *(void *)0x4000 = temp_at;
    } while (var_a3 != 0);
}

void __glKonExecuteIDMAn(void *arg1) {
    s32 temp_a7;
    s32 var_a4;
    u32 temp_a1;
    u32 temp_t0;
    u32 var_a1;
    u32 var_a3;
    void *var_a2;

    var_a3 = arg1->unk1C;
    var_a2 = arg1->unk14;
    var_a4 = ((u32) (var_a3 + 3) >> 2) - 1;
    do {
        *(u32 *)0x4000 = 0x171;
        temp_a1 = var_a3;
        temp_a7 = var_a3 >= 4U;
        var_a3 -= 4;
        var_a1 = (temp_a7 != 0) ? 4U : temp_a1;
        *(void *)0x4000 = var_a1;
loop_2:
        temp_t0 = var_a2->unk4;
        var_a1 -= 1;
        *(void *)0x4000 = (u32) var_a2->unk0;
        var_a2 += 8;
        *(void *)0x4000 = temp_t0;
        if (var_a1 != 0) {
            goto loop_2;
        }
        var_a4 -= 1;
    } while (var_a4 != 0);
}

void __glkonAdjustPlist(void *arg0, void *arg1) {
    s32 *var_a1;
    s32 *var_a5;
    s32 temp_a3;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a4;
    s32 var_a6;

    var_a4 = arg1->unk1C;
    temp_a7 = (var_a4 >= 1) ? var_a4 : 1;
    var_a6 = temp_a7 & 3;
    var_a5 = arg1->unk14;
    temp_a3 = arg0->unk133C->unk10->unk2C;
    if (var_a6 != 0) {
        do {
            var_a6 -= 1;
            temp_t0 = *var_a5;
            var_a4 -= 1;
            var_a5 += 8;
            var_a5->unk-8 = (s32) (temp_t0 - temp_a3);
        } while (var_a6 != 0);
    }
    var_a1 = var_a5;
    var_a2 = var_a4;
    if ((temp_a7 >> 2) != 0) {
        do {
            var_a1 += 0x20;
            var_a1->unk-8 = (s32) (var_a1->unk-8 - temp_a3);
            var_a1->unk-10 = (s32) (var_a1->unk-10 - temp_a3);
            var_a2 -= 4;
            var_a1->unk-18 = (s32) (var_a1->unk-18 - temp_a3);
            var_a1->unk-20 = (s32) (var_a1->unk-20 - temp_a3);
        } while (var_a2 != 0);
    }
}

void __glkonim_ListParameterfvSGIX(f32 *arg0, s32 arg1, f32 *arg2) {
    s64 sp8;
    f64 sp0;
    s32 temp_a5;
    s32 var_v0;
    void *temp_s1;
    void *temp_v0;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != NULL) {
            if (arg1 != 0x8182) {
                __glSetError(0x500, (s32 *)0x140000, 0x8182);
            } else {
                if ((f64) *arg2 < 0.0) {
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f1
                    // At instruction: sdc1 $f1, ($sp)
                } else {
                    sp0 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f2, $fcc1 */);
                }
                temp_a5 = temp_s1->unk133C->unk10;
                sp8 = (s64) temp_a5;
                temp_v0 = __glNamesLockData(temp_s1, temp_s1->unk1340, arg0, 0x140000, 0x8182, temp_a5);
                if (temp_v0 != NULL) {
                    var_v0 = temp_v0->unk20;
                    temp_v0->unk3C = (f32) sp0;
                    temp_v0->unk30 = (f32) sp0;
                    temp_v0->unk2C = (f32) sp0;
                    if (var_v0 & 2) {
                        __glDlistHeapPriorityChanged(temp_s1->unk133C + 4, temp_v0 + 0x30);
                        var_v0 = temp_v0->unk20;
                    }
                    if (var_v0 & 0x20) {
                        __glDlistHeapPriorityChanged(sp8 + 0x80, temp_v0 + 0x3C);
                    }
                    __glNamesUnlockData(temp_s1, temp_v0);
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x140000, 0x8182);
        }
    } else {
        __glSetError(0x502, (s32 *)0x140000, 0x8182);
    }
}

void __glkonim_ListParameterfSGIX(f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    __glkonim_ListParameterfvSGIX(&sp20);
}

void __glkonim_ListParameterivSGIX(f32 *arg0, s32 arg1, s32 *arg2) {
    s64 sp8;
    s64 sp0;
    f32 temp_f0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_v0;
    void *temp_s1;
    void *temp_v0;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != NULL) {
            if (arg1 != 0x8182) {
                __glSetError(0x500, arg2, 1);
            } else {
                temp_t0 = *arg2;
                temp_a7 = temp_t0 > 1;
                temp_a4 = temp_t0 < 0;
                temp_a5 = temp_s1->unk133C->unk10;
                temp_a6 = (temp_a7 == 0) ? temp_t0 : 1;
                sp0 = (s64) temp_a5;
                temp_a3 = (temp_a4 == 0) ? temp_a6 : 0;
                sp8 = (s64) temp_a3;
                temp_v0 = __glNamesLockData(temp_s1, temp_s1->unk1340, arg0, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
                if (temp_v0 != NULL) {
                    temp_f0 = (f32) sp8;
                    var_v0 = temp_v0->unk20;
                    temp_v0->unk3C = temp_f0;
                    temp_v0->unk30 = temp_f0;
                    temp_v0->unk2C = temp_f0;
                    if (var_v0 & 2) {
                        __glDlistHeapPriorityChanged(temp_s1->unk133C + 4, temp_v0 + 0x30);
                        var_v0 = temp_v0->unk20;
                    }
                    if (var_v0 & 0x20) {
                        __glDlistHeapPriorityChanged(sp0 + 0x80, temp_v0 + 0x3C);
                    }
                    __glNamesUnlockData(temp_s1, temp_v0);
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, arg2, 1);
        }
    } else {
        __glSetError(0x502, arg2, 1);
    }
}

void __glkonim_ListParameteriSGIX(s32 arg2) {
    s32 sp24;

    sp24 = arg2;
    __glkonim_ListParameterivSGIX((f32 *) &sp24);
}

void __glkonim_GetListParameterfvSGIX(f32 *arg0, s32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a5;
    void *temp_v0;

    temp_a5 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != NULL) {
            sp0 = arg2;
            sp8 = (s64) temp_a5;
            if (arg1 != 0x8182) {
                __glSetError(0x500, (s32 *)0x140000, 0x8182, temp_a5);
            } else {
                temp_v0 = __glNamesLockData((void *) sp8, sp8->unk1340, arg0, 0x140000, 0x8182, temp_a5);
                if (temp_v0 != NULL) {
                    *sp0 = (f32) temp_v0->unk2C;
                    __glNamesUnlockData((void *) sp8, temp_v0, sp0);
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x140000, 0x8182, temp_a5);
        }
    } else {
        __glSetError(0x502, (s32 *)0x140000, 0x8182, temp_a5);
    }
}

void __glkonim_GetListParameterivSGIX(f32 *arg0, s64 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a5;
    void *temp_v0;

    temp_a5 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != NULL) {
            sp0 = arg2;
            sp8 = (s64) temp_a5;
            if (arg1 != 0x8182) {
                __glSetError(0x500, (s32 *)0x140000, 0x8182, temp_a5);
            } else {
                temp_v0 = __glNamesLockData((void *) sp8, sp8->unk1340, arg0, 0x140000, 0x8182, temp_a5);
                if (temp_v0 != NULL) {
                    *sp0 = (s32) temp_v0->unk2C;
                    __glNamesUnlockData((void *) sp8, temp_v0, sp0);
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x140000, 0x8182, temp_a5);
        }
    } else {
        __glSetError(0x502, (s32 *)0x140000, 0x8182, temp_a5);
    }
}

s32 __glKonLockedMemorySwapOut(void *arg0, s32 arg2, ? *arg3) {
    ? *temp_s5;
    ? *temp_v0;
    ? *var_a3;
    ? *var_s2;
    ? *var_v0;
    s32 temp_a3;
    s32 temp_s6;
    s32 var_a2;
    s32 var_s3;
    void *var_s0;

    var_a2 = arg2;
    var_a3 = arg3;
    var_s0 = arg0->unk10;
    temp_s5 = *(? **)0x1010;
    var_s3 = 0;
    temp_s6 = temp_s5->unk133C->unk10;
    if ((arg0->unk18 - 1) > 0) {
        var_s2 = NULL;
loop_4:
        temp_v0 = temp_s5->unk0(temp_s5, 0x400, var_a2, var_a3);
        memmove(temp_v0, var_s0->unk4 - 8, 0x400);
        if (var_s2 == NULL) {
            arg0->unkC = temp_v0;
        } else {
            *var_s2 = temp_v0;
        }
        __glDlistTransientBlock(temp_s6, var_s0->unk4 - 8);
        var_a3 = temp_v0 + 8;
        var_s0->unk4 = var_a3;
        var_s3 += 1;
        var_a2 = var_s3 < (arg0->unk18 - 1);
        var_s0 += 8;
        var_s2 = temp_v0;
        if (var_a2 != 0) {
            goto loop_4;
        }
        var_v0 = temp_v0;
    } else {
        var_v0 = sp0;
    }
    *var_v0 = NULL;
    __glDlistHeapRemove(temp_s5->unk133C + 4, arg0 + 0x30, var_a2, var_a3);
    arg0->unk8 = __glkonSPValidateDlist;
    temp_a3 = arg0->unk20 & ~2;
    arg0->unk20 = temp_a3;
    if (temp_s5->unk7B5C & 0x20) {
        __glkon_InitDlistState(temp_s5, 5, -1, temp_a3, (void (*)(? *, s64))-3);
    }
    return 1;
}

s32 __glKonLockedMemoryForceSwapIn(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    f32 *temp_a0;

    sp0 = arg0;
    sp8 = arg1;
    if (__glkonim_GetListParameterivSGIX() != 0) {
        return 1;
    }
    if (sp8->unk20 & 2) {
        goto block_3;
    }
loop_6:
    temp_a0 = __glDlistHeapQueryMin(sp0->unk133C + 4)->unk8;
    if (temp_a0 != NULL) {
        if (!(sp8->unk30 <= temp_a0->unk30)) {
            __glkonim_GetListParameterivSGIX(temp_a0, sp8);
            if (__glkonim_GetListParameterivSGIX((f32 *) sp0, sp8) != 0) {
                return 1;
            }
            if (sp8->unk20 & 2) {
                goto block_3;
            }
            goto loop_6;
        }
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return 0;
    }
block_3:
    return 0;
}

s32 __glKonLockedMemorySwapIn(? *arg0, ? *arg1) {
    ? *temp_v0;
    ? *var_a0;
    ? *var_s2;
    s32 var_s4;
    void *temp_s7;
    void *var_s0;
    void *var_s3;

    var_s0 = arg1->unk10;
    temp_s7 = arg0->unk133C->unk10;
    var_s3 = arg1->unk14;
    if (__glDlistPreallocBlocks(temp_s7, arg1->unk18 - 1) != 0) {
        goto block_1;
    }
    if ((u32) temp_s7->unk28 >= 0x20U) {
        __glkonim_GetIntegerv(0xBD0, sp);
        __glDlistFreeTransient(temp_s7);
        if (__glDlistPreallocBlocks(temp_s7, arg1->unk18 - 1) == 0) {
            /* Duplicate return node #15. Try simplifying control flow for better match */
            return 0;
        }
block_1:
        var_a0 = sp4;
        if ((arg1->unk18 - 1) > 0) {
            var_s4 = 0;
            var_s2 = NULL;
loop_8:
            temp_v0 = __glDlistAllocBlock(temp_s7);
            memmove(temp_v0, var_s0->unk4 - 8, 0x400);
            if (var_s2 == NULL) {
                arg1->unkC = temp_v0;
            } else {
                *var_s2 = temp_v0;
            }
            arg0->unk13A0(arg0, var_s0->unk4);
            var_s0->unk4 = (? *) (temp_v0 + 8);
            if (var_s3 != NULL) {
                var_s3 += 8;
                var_s3->unk-8 = (? *) (temp_v0 + 0xC);
            }
            var_s4 += 1;
            var_s2 = temp_v0;
            var_s0 += 8;
            if (var_s4 < (arg1->unk18 - 1)) {
                goto loop_8;
            }
            var_a0 = temp_v0;
        }
        *var_a0 = NULL;
        if (var_s3 == NULL) {
            __glSPCreatePlist(arg0, arg1);
        }
        __glKonCreateContext(arg1);
        __glKonCreateContext(arg0, arg1);
        arg1->unk20 = (s32) (arg1->unk20 | 2);
        __glDlistHeapInsert(arg0->unk133C + 4, arg1 + 0x30);
        if (arg0->unk7B5C & 0x20) {
            __glkon_InitDlistState(arg0, 5, 1);
        }
        return 1;
    }
    return 0;
}

? *__glkonSwapOutList(? *arg0) {
    ? *temp_s1;
    ? *temp_s6;
    ? *temp_v0;
    ? *var_s2;
    ? *var_v0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a5;
    s32 var_s5;
    s32 var_v0_2;
    void *temp_s4;
    void *var_a4;
    void *var_s3;

    temp_s4 = *(void **)0x1010;
    temp_a1 = temp_s4->unk13D4;
    var_v0 = arg0;
    if (temp_a1 & 2) {
        if (arg0 != NULL) {
            var_s5 = temp_s4->unk13DC;
            var_s3 = temp_s4->unk13D8;
            var_s2 = NULL;
loop_5:
            temp_s1 = var_v0;
            temp_s6 = *var_v0;
            temp_v0 = temp_s4->unk0(temp_s4, 0x400);
            memmove(temp_v0, temp_s1, 0x400);
            temp_s4->unk13A8(temp_s4, temp_s1);
            if (var_s2 != NULL) {
                *var_s2 = temp_v0;
            } else {
                temp_s4->unk138C = temp_v0;
            }
            var_s2 = temp_v0;
            if (var_s3 != NULL) {
                if (var_s5 <= 0) {

                } else {
                    var_s3 += 8;
                    var_s5 -= 1;
                    var_s3->unk-4 = (? *) (temp_v0 + 8);
                }
            }
            var_v0 = temp_s6;
            if (temp_s6 != NULL) {
                goto loop_5;
            }
            if (var_s5 > 0) {
                var_v0_2 = var_s5 & 3;
                var_a5 = temp_v0 - temp_s1;
                temp_a1_2 = var_s5 >> 2;
                if (var_v0_2 != 0) {
                    do {
                        var_v0_2 -= 1;
                        temp_v1 = var_s3->unk4;
                        var_s5 -= 1;
                        var_s3 += 8;
                        var_s3->unk-4 = (s32) (var_a5 + temp_v1);
                    } while (var_v0_2 != 0);
                }
                var_a4 = var_s3;
                if (temp_a1_2 != 0) {
                    var_a1 = var_s5;
                    do {
                        var_a4 += 0x20;
                        var_a4->unk-4 = (s32) (var_a5 + var_a4->unk-4);
                        var_a4->unk-C = (s32) (var_a5 + var_a4->unk-C);
                        var_a1 -= 4;
                        var_a4->unk-14 = (s32) (var_a5 + var_a4->unk-14);
                        var_a4->unk-1C = (s32) (var_a5 + var_a4->unk-1C);
                    } while (var_a1 != 0);
                }
            } else {
                var_a5 = temp_v0 - temp_s1;
            }
            *(? **)0x102C = temp_v0;
            *(void *)0x1030 = (s32) (var_a5 + *(s32 *)0x1030);
            temp_s4->unk13D4 = (s32) (temp_s4->unk13D4 & ~2);
            return temp_s4->unk138C;
        }
        /* Duplicate return node #19. Try simplifying control flow for better match */
        temp_s4->unk13D4 = (s32) (temp_a1 & ~2);
        return arg0;
    }
    temp_s4->unk13D4 = (s32) (temp_a1 & ~2);
    return arg0;
}

void __glkonSPBalloc(void *arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    ? *temp_v0;
    s32 var_v0;
    void *temp_s0;

    sp8 = arg1;
    var_v0 = arg0->unk13D4;
    sp10 = (s64) arg0;
    temp_s0 = arg0->unk133C->unk10;
    if ((var_v0 & 3) == 3) {
        __glkonim_GetListParameterivSGIX(sp10->unk138C);
        var_v0 = sp10->unk13D4;
    }
    if (var_v0 & 2) {
        if ((u32) temp_s0->unk28 >= 0x20U) {
            __glkonim_GetIntegerv(0xBD0, sp);
            __glDlistFreeTransient(temp_s0);
        }
        temp_v0 = __glDlistAllocBlock(temp_s0);
        if (temp_v0 != (? *)-1) {
            return;
        }
        __glkonim_GetListParameterivSGIX(sp10->unk138C, (s64) temp_v0);
        sub_0d950000(sp10, 0x400);
        return;
    }
    sub_0d950000(sp10, *sp8 * 4);
}

void __glkonSPBfree(s64 arg0, s32 arg1) {
    s64 sp8;
    s64 sp0;
    s32 temp_at;

    sp0 = arg0;
    temp_at = arg0->unk133C->unk10;
    sp8 = (s64) temp_at;
    if (__glDlistIsBlock(temp_at) != 0) {
        __glDlistTransientBlock((s32) sp8, arg1);
    } else {
        sp0->unk13A0(sp0, arg1);
    }
}

void __glkonDlistNewArray(? *arg0, void *arg1) {
    ? *temp_s8;
    ? *temp_s8_2;
    s32 temp_v0;

    temp_v0 = arg0->unk1398(0x8C);
    temp_s8 = temp_v0 + 0x2C;
    arg1->unk10 = temp_v0;
    __glKonCreateContext(temp_s8);
    __glDlistBlockStateInit(arg0, 0x400, sub_0d950000 - 0x52A0, sub_0d950000 - 0x4FE0, temp_s8, temp_v0);
    temp_s8_2 = temp_v0 + 0x6C;
    __glKonCreateContext(temp_s8_2);
    __glDlistBlockStateInit(arg0, 0x400, sub_0d950000 - 0x5BA0, sub_0d950000 - 0x5A00, temp_s8_2, temp_v0 + 0x40);
    __glDlistHeapInit(arg1 + 4);
    __glDlistHeapInit(temp_v0 + 0x80);
    if (arg0->unk7B5C & 0x20) {
        __glkon_InitDlistState(arg0, 6, 0);
    }
    arg0->unk13B8 = &__glkonle_Push;
    arg0->unk13B4 = &__glkon_spop;
}

void __glkonDlistFreeArray(void *arg0, void *arg1) {
    void *temp_s0;

    temp_s0 = arg1->unk10;
    __glDlistFreeTransient(temp_s0);
    __glDlistBlockStateFree(arg0, temp_s0);
    __glKonCreateContext(temp_s0 + 0x2C);
    __glDlistBlockStateFree(arg0, temp_s0 + 0x40);
    __glKonCreateContext(temp_s0 + 0x6C);
    __glDlistHeapFree(temp_s0 + 0x80);
    arg0->unk13A0(arg0, arg1->unk10);
    __glDlistHeapFree(arg1 + 4);
}

void __glkonDlistOptimizer(void) {

}

void __glkonPadBlocks(void *arg0) {
    s32 *var_a1;
    s32 temp_a1;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a5;
    void *var_a4;

    var_a4 = arg0->unkC;
loop_5:
    if (var_a4->unk0 != NULL) {
        temp_a1 = var_a4->unk8;
        var_a2 = 0xFC - temp_a1;
        var_a1 = var_a4 + (temp_a1 * 4) + 0xC;
        if (var_a2 >= 4) {
            temp_a6 = (s32) ((var_a2 >= 0) ? var_a2 : (var_a2 + 3)) >> 2;
            var_a5 = temp_a6 & 7;
            if (var_a5 != 0) {
                do {
                    var_a5 -= 1;
                    var_a1 += 0x10;
                    var_a2 -= 4;
                    var_a1->unk-10 = 0x1D9;
                } while (var_a5 != 0);
            }
            if ((temp_a6 >> 3) != 0) {
                do {
                    var_a1 += 0x80;
                    var_a1->unk-10 = 0x1D9;
                    var_a1->unk-20 = 0x1D9;
                    var_a1->unk-30 = 0x1D9;
                    var_a1->unk-40 = 0x1D9;
                    var_a1->unk-50 = 0x1D9;
                    var_a2 -= 0x20;
                    var_a1->unk-60 = 0x1D9;
                    var_a1->unk-70 = 0x1D9;
                    var_a1->unk-80 = 0x1D9;
                } while (var_a2 >= 4);
            }
        }
        if (var_a2 < 2) {
            if (var_a2 == 0) {
                goto block_14;
            }
            goto block_3;
        }
        var_a1 += 8;
        var_a1->unk-8 = 0x1D8;
        if ((var_a2 - 2) != 0) {
block_3:
            *var_a1 = 0x1DA;
        } else {
block_14:
            *var_a1 = 0x1D9;
        }
        var_a4 = var_a4->unk0;
        goto loop_5;
    }
}

void __glkonSPPostCompiler(? *arg0, ? *arg1) {
    f32 temp_f0;
    s32 temp_a3;

    arg1->unk44 = arg1;
    arg1->unk38 = arg1;
    temp_a3 = arg1->unk20;
    temp_f0 = arg1->unk2C;
    arg1->unk3C = temp_f0;
    arg1->unk30 = temp_f0;
    if (temp_a3 & 1) {
        if (temp_a3 & 2) {
            __glkonim_GetListParameterivSGIX(arg0->unk138C, (s64) temp_a3);
            arg1->unk20 = (s32) (arg1->unk20 & ~2);
            arg1->unkC = (f32 *) arg0->unk138C;
        }
    } else {
        __glkonDlistOptimizer(arg1, temp_a3);
        if (arg1->unk20 & 2) {
            __glDlistHeapInsert(arg0->unk133C + 4, arg1 + 0x30);
        }
    }
    if (arg0->unk7B5C & 0x20) {
        __glkon_InitDlistState(arg0, 1, arg1->unk20);
    }
    if (((M2C_ERROR(/* Read from unset register $t9 */) + 0x144DB8)->unk-3E28 != 0) && !(arg1->unk20 & 1)) {
        __glkonSPValidateOnlyDlist(arg0, arg1);
    }
}

void __glkon_DlistInit(void *arg0) {
    *(s32 *)0x1034 = 0;
    *(s32 *)0x1030 = 0;
    *(s32 *)0x1028 = 0;
    *(s32 *)0x102C = 0;
    arg0->unk13D4 = 2;
    arg0->unk13DC = 0;
    arg0->unk13D8 = 0;
    arg0->unk13D0 = 0;
    arg0->unk13CC = 0;
    __glSPDlistSpace(0);
}

void __glkon_InitDlistState(? *arg0) {
    void *temp_a4;
    void *temp_a7;

    arg0->unk136C = 0;
    arg0->unk1364 = 0;
    arg0->unk1360 = 0;
    arg0->unk135C = 0;
    arg0->unk1354 = 0;
    arg0->unk13B8 = &__glkonle_Push;
    arg0->unk13B4 = &__glkon_spop;
    arg0->unk1370 = __glkonSPValidateDlist;
    arg0->unk1368 = __glkonSPFreeDlist;
    arg0->unk134C = __glkonDlistOptimizer;
    arg0->unk1348 = __glkonDlistFreeArray;
    arg0->unk1344 = __glkonDlistNewArray;
    arg0->unk13AC = __glkonSPPostCompiler;
    arg0->unk1350 = &__glSPDlistCompiler;
    arg0->unk13B0 = (void *) (sub_0d950000 - 0x3810);
    arg0->unk13A8 = (void *) (sub_0d950000 - 0x4160);
    temp_a7 = sub_0d950000 - 0x4290;
    arg0->unk13A4 = temp_a7;
    temp_a4 = sub_0d950000 - 0x3CC0;
    arg0->unk1358 = temp_a4;
    (M2C_ERROR(/* Read from unset register $t9 */) + 0x144C38)->unk-3E28 = (s32) (getenv(&__rodata0 - 0x1B20, (s64) __glkonDlistNewArray, (s64) __glkonDlistFreeArray, __glkonDlistOptimizer, temp_a4, __glkonSPFreeDlist, __glkonSPValidateDlist, temp_a7) != 0);
}

void __glkonDlistMemUsage(void *arg0, s32 arg1, s32 arg2) {
    s64 sp0;
    f64 temp_f4;
    s32 temp_a2;
    s32 temp_a7_2;
    s32 temp_a7_3;
    void *temp_a7;
    void *temp_a7_4;
    void *temp_a7_5;
    void *temp_at;
    void *temp_s0;
    void *temp_s0_2;

    temp_a7 = &__rodata0 + 0x2158;
    temp_s0 = arg0->unk133C->unk10;
    switch (arg1) {                                 /* irregular */
    default:
        temp_a2 = temp_a7->unk450;
        if (arg1 != 6) {
            sp0 = (s64) (&__iob + 0x20);
            if (temp_a2 != 0) {
                fprintf(sp0, &__rodata0 - 0x1B08, temp_a2, second half of f64, ((f64) temp_a7->unk454 * 100.0) / (f64) temp_a2, ((f64) temp_a7->unk458 * 100.0) / (second half of f64), temp_a7);
            }
            temp_a7_2 = temp_s0->unk4;
            if (temp_a7_2 != 0) {
                temp_f4 = (f64) (second half of f64);
                fprintf(sp0, &__rodata0 - 0x1AD0, (bitwise s32) (f64) (f32) ((100.0 - (second half of f64)) - temp_f4), temp_f4, second half of f64, (f64) (second half of f64) * (second half of f64), (void *) ((u64) ((s64) temp_s0->unk1C << 0x20) >> 0x20), temp_a7_2);
            }
            temp_a7_3 = temp_s0->unk44;
            if (temp_a7_3 != 0) {
                fprintf(sp0, &__rodata0 - 0x1AA0, (bitwise s32) (f64) (f32) (((second half of f64) - (f64) (f32) (((second half of f64) * 100.0) / (second half of f64))) - (second half of f64)), second half of f64, second half of f64, (f64) (second half of f64) * 9.5367431640625e-07, (void *) ((u64) ((s64) temp_s0->unk5C << 0x20) >> 0x20), temp_a7_3);
            } else {
                M2C_ERROR(/* Read from unset register $t9 */)(sp0, saved_reg_gp - 0x3FF8);
            }
            return;
        }
        temp_at = &__rodata0 + 0x2158;
        temp_at->unk450 = 0;
        temp_at->unk454 = 0;
        temp_at->unk458 = 0;
        temp_at->unk45C = 0;
        return;
    case 1:
        temp_a7_4 = &__rodata0 + 0x2158;
        temp_a7_4->unk450 = (s32) (temp_a7_4->unk450 + 1);
        if (arg2 & 2) {
            temp_a7_4->unk454 = (s32) (temp_a7_4->unk454 + 1);
        }
        if (arg2 & 0x20) {
            temp_a7_4->unk458 = (s32) (temp_a7_4->unk458 + 1);
        }
        if (!(arg2 & 1)) {
            temp_a7_4->unk45C = (s32) (temp_a7_4->unk45C + 1);
            return;
        }
        break;
    case 2:
        temp_a7_5 = &__rodata0 + 0x2158;
        temp_a7_5->unk450 = (s32) (temp_a7_5->unk450 - 1);
        if (arg2 & 2) {
            temp_a7_5->unk454 = (s32) (temp_a7_5->unk454 - 1);
        }
        if (!(arg2 & 1)) {
            temp_a7_5->unk45C = (s32) (temp_a7_5->unk45C - 1);
        }
        break;
    case 4:
        temp_s0_2 = &__rodata0 + 0x2158;
        temp_s0_2->unk458 = (s32) (temp_s0_2->unk458 + arg2);
        return;
    case 5:
        (void *)0x215C->unk454 = (s32) ((void *)0x215C->unk454 + arg2);
        return;
    }
}

void __glkon_dlerror(s32 arg0) {
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a4;

    temp_a2 = *(s32 *)0x1028;
    if (temp_a2 >= 2) {
        temp_a0 = *(void **)0x1030;
        temp_a0->unk0 = 0xE4;
        temp_a0->unk4 = arg0;
        *(void *)0x1030 = (void *) (temp_a0 + 8);
        *(void *)0x1028 = (s32) (temp_a2 - 2);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 2);
        return;
    }
    temp_v0 = __glSPDlistSpace(0, 0xE4, temp_a2);
    temp_a4 = *(void *)0x1030;
    temp_a4->unk0 = 0xE4;
    temp_a4->unk4 = arg0;
    *(void *)0x1030 = (void *) (temp_a4 + 8);
    *(void *)0x1028 = (s32) (temp_v0 - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

s32 __glSPDlalloc(s64 arg0, s32 arg1) {
    s64 sp38;
    ? *temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s4;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_ra;
    s32 var_s2;
    void *temp_a3;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    temp_a2 = temp_s1->unk13D4;
    if (temp_a2 & 4) {
        var_ra = temp_a2 | 1;
        if (arg1 != 0xD2) {
            var_ra = temp_a2 | 1;
            if (arg1 != 0x9A) {
                var_ra = temp_a2 | 1;
                if (arg1 != 0x9C) {
                    var_ra = temp_a2 | 1;
                    if (arg1 != 0x96) {
                        if (arg1 != 0x98) {
                            __glkon_InitDlistState((? *)0x502, 0x9A, temp_a2, 0x9C, (void (*)(? *, s64))0x96, 0x98);
                            return 0;
                        }
                        goto block_7;
                    }
                }
            }
        }
        goto block_8;
    }
block_7:
    var_ra = temp_a2 | 1;
block_8:
    temp_s1->unk13D4 = var_ra;
    temp_a5 = *(s32 *)0x1034;
    temp_a4 = *(s32 *)0x1030;
    if (temp_a5 == 0) {
        *(void *)0x1030 = (s32) (temp_a4 - 4);
        var_a1 = *(s32 *)0x1028 + 1;
        *(void *)0x1028 = var_a1;
    } else {
        temp_a3 = temp_a4 + (temp_a5 * 0xFFFFFFFC);
        temp_a3->unk-4 = temp_a5;
        temp_a2_2 = *(void *)0x1034;
        sp38 = arg0;
        __glsplc_AddIlist(temp_s1->unk13B8, (temp_a4 + (temp_a2_2 * 0xFFFFFFFC)) - 4, temp_a2_2, temp_a3, temp_a4, temp_a5);
        var_a1 = *(void *)0x1028;
    }
    temp_s3 = arg0 >> 2;
    var_s2 = var_a1;
    if (var_a1 < temp_s3) {
        temp_a2_3 = temp_s3 >= 0x100;
        var_s2 = __glSPDlistSpace((temp_a2_3 != 0) ? temp_s3 : 1, var_a1, temp_a2_3);
    }
    temp_a0 = *(temp_s1->unk13B4 + (arg1 * 4));
    temp_s4 = *(void *)0x1030;
    temp_s2 = var_s2 - temp_s3;
    if (temp_a0 != NULL) {
        __glsplc_AddIlist(temp_a0, temp_s4);
        *(void *)0x1028 = temp_s2;
        var_a1_2 = temp_s2;
        var_a0 = temp_s4 + (temp_s3 * 4);
        *(void *)0x1030 = var_a0;
        if (temp_s2 <= 0) {
            var_a1_2 = __glSPDlistSpace(1, var_a1_2);
            var_a0 = *(void *)0x1030;
        }
        *(void *)0x1030 = (s32) (var_a0 + 4);
        *(void *)0x1028 = (s32) (var_a1_2 - 1);
        *(void *)0x1034 = 0;
        return (temp_s1->unk13D8 + (temp_s1->unk13DC * 8))->unk-4;
    }
    fprintf((s64) (&__iob + 0x20), &__rodata0 - 0x1A70, arg1);
    return exit(1);
}

s32 __glSPDlalloc2(s64 arg0, s32 arg1) {
    s64 sp48;
    s64 sp8;
    s64 sp0;
    ? *temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_s3;
    s32 var_a0;
    s32 var_a2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_s2;
    s32 var_s3;
    s64 temp_a1_2;
    s64 temp_a6;
    void *temp_a3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_a2 = temp_s0->unk13D4;
    if ((temp_a2 & 4) && (arg1 != 0x95) && (arg1 != 0x97)) {
        __glkon_InitDlistState((? *)0x502, 0x97, temp_a2);
        return 0;
    }
    temp_s0->unk13D4 = (s32) (temp_a2 | 1);
    temp_a5 = *(s32 *)0x1034;
    temp_a4 = *(s32 *)0x1030;
    if (temp_a5 == 0) {
        var_a5 = temp_a4 - 4;
        *(void *)0x1030 = var_a5;
        var_a2 = *(s32 *)0x1028 + 1;
        *(void *)0x1028 = var_a2;
    } else {
        temp_a3 = temp_a4 + (temp_a5 * 0xFFFFFFFC);
        temp_a3->unk-4 = temp_a5;
        temp_a2_2 = *(void *)0x1034;
        sp48 = arg0;
        __glsplc_AddIlist(temp_s0->unk13B8, (temp_a4 + (temp_a2_2 * 0xFFFFFFFC)) - 4, temp_a2_2, temp_a3, temp_a4, temp_a5);
        var_a2 = *(void *)0x1028;
        var_a5 = *(void *)0x1030;
    }
    temp_a1 = arg0 >> 2;
    temp_a6 = (var_a5 & 4) != 0;
    sp8 = (s64) temp_a1;
    temp_a1_2 = temp_a1 + temp_a6;
    var_s3 = var_a2;
    if (var_a2 < temp_a1_2) {
        sp0 = temp_a1_2;
        unksp28 = temp_a6;
        var_a5 = *(void *)0x1030;
        var_s3 = __glSPDlistSpace((s32) ((sp0 >= 0x100) ? sp0 : 1), (s32) temp_a1_2, var_a2);
    }
    temp_a2_3 = arg1 * 4;
    temp_a0 = *(temp_s0->unk13B4 + temp_a2_3);
    var_s2 = var_a5;
    temp_a4_2 = var_a5 + 4;
    temp_a3_2 = var_a5 & 4;
    temp_s3 = var_s3 - temp_a1_2;
    if (temp_a0 != NULL) {
        if (temp_a6 != 0) {
            var_s2 = (temp_a3_2 != 0) ? temp_a4_2 : var_s2;
        }
        __glsplc_AddIlist(temp_a0, var_s2, temp_a2_3, (void *) temp_a3_2, temp_a4_2, var_a5, (void *) temp_a6);
        *(void *)0x1028 = temp_s3;
        var_a0 = temp_s3;
        var_a5_2 = var_s2 + (sp8 * 4);
        *(void *)0x1030 = var_a5_2;
        if (temp_s3 <= 0) {
            var_a0 = __glSPDlistSpace(1);
            var_a5_2 = *(void *)0x1030;
        }
        *(void *)0x1030 = (s32) (var_a5_2 + 4);
        *(void *)0x1028 = (s32) (var_a0 - 1);
        *(void *)0x1034 = 0;
        return (temp_s0->unk13D8 + (temp_s0->unk13DC * 8))->unk-4;
    }
    fprintf((s64) (&__iob + 0x20), &__rodata0 - 0x1A70, arg1, (bitwise f64) temp_a3_2, (bitwise f64) temp_a4_2, (bitwise f64) var_a5, (void *) temp_a6);
    return exit(1);
}

s32 __glkonle_SetBegin(s32 arg0) {
    *(s32 *)0x1018 = 1;
    return arg0;
}

void __glsplc_AddSentinel(void) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a4;
    void *temp_a3;
    void *temp_a5;
    void *temp_s0;

    temp_a3 = *(void **)0x1030;
    temp_a4 = *(s32 *)0x1034;
    temp_s0 = *(void **)0x1010;
    if (temp_a4 == 0) {
        *(void *)0x1030 = (void *) (temp_a3 - 4);
        *(void *)0x1028 = (s32) (*(s32 *)0x1028 + 1);
    } else {
        temp_a5 = temp_a3 + (temp_a4 * 0xFFFFFFFC);
        temp_a5->unk-4 = temp_a4;
        temp_a2 = *(void *)0x1034;
        __glsplc_AddIlist(temp_s0->unk13B8, (temp_a3 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, temp_a4, (s32) temp_a5);
    }
    temp_a3_2 = temp_s0->unk13D4;
    if (temp_a3_2 & 4) {
        temp_a2_2 = temp_a3_2 | 1;
        temp_s0->unk13D4 = temp_a2_2;
        __glsplc_AddIlist(sub_0d950000 - 0x3300, 0, temp_a2_2, (void *) temp_a3_2);
    }
    __glsplc_AddIlist(&__glsple_Sentinel, 0);
}

void __glkonlc_End(void) {
    s32 temp_a3;
    s32 var_a2;
    void *temp_a1;
    void *temp_a3_2;

    temp_a1 = *(void **)0x1010;
    temp_a3 = temp_a1->unk13D4;
    if (temp_a3 & 4) {
        temp_a1->unk13D4 = (s32) (temp_a3 & ~4);
        var_a2 = *(s32 *)0x1028;
        if (var_a2 < 2) {
            var_a2 = __glSPDlistSpace(0, (s32) temp_a1, var_a2, temp_a3);
        }
        temp_a3_2 = *(void **)0x1030;
        temp_a3_2->unk0 = 0x71;
        temp_a3_2->unk4 = 0;
        *(void *)0x1030 = (void *) (temp_a3_2 + 8);
        *(void *)0x1028 = (s32) (var_a2 - 2);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 2);
        return;
    }
    __glSPDlalloc(0, 0x16, temp_a3);
}

void __glkonSPFreeDlist(? *arg0, ? *arg1) {
    s32 temp_a0;
    s32 var_ra;

    if (arg0->unk7B5C & 0x20) {
        __glkon_InitDlistState((? *)2, arg1->unk20);
    }
    temp_a0 = arg1->unk20;
    var_ra = temp_a0 & 2;
    if (temp_a0 & 0x20) {
        __glKonCreateContext(arg0, arg1);
        var_ra = arg1->unk20 & 2;
    }
    if (var_ra != 0) {
        __glDlistHeapRemove(arg0->unk133C + 4, arg1 + 0x30);
        arg1->unk20 = (s32) (arg1->unk20 & ~2);
    }
    __glSPFreeDlist(arg0, arg1);
}

s32 __glkonSPValidateLocalDlist(void) {
    return (__glKonCreateContext() == 0) ? 0 : 1;
}

void __glkonSPValidateOnlyDlist(? *arg0, ? *arg1) {
    s32 var_a0;
    s32 var_a1;
    s32 var_v0;
    s64 temp_a2;

    arg1->unk8 = &__glSPExecuteDlist;
    if (*(s32 *)0x1018 != 1) {
        if (arg1->unk20 & 1) {
            goto block_2;
        }
        var_a0 = arg0->unk7B5C;
        if (arg1->unk18 >= 2) {
            var_v0 = var_a0 & 0x10;
            if (var_a0 & 2) {
                if (__glkonSPFreeDlist(arg0, (? *) &__glSPExecuteDlist, 1) != 0) {
                    arg1->unk8 = (? *) (((arg1->unk1C ^ 1) == 0) ? (sub_0d950000 - 0x4FA0) : (sub_0d950000 - 0x4F80));
                    var_a0 = arg0->unk7B5C;
                    goto block_3;
                }
                var_a0 = arg0->unk7B5C;
                var_v0 = var_a0 & 0x10;
                goto block_13;
            }
block_13:
            var_a1 = var_a0 & 0x20;
            if (var_v0 != 0) {
                if (arg1->unk14 == NULL) {
                    sub_0d950000((s64) arg0, (s32) arg1);
                    __glKonCreateContext(arg1);
                    __glKonCreateContext(arg0, arg1);
                }
                if (arg1->unk1C != 1) {
                    arg1->unk8 = (? *) (sub_0d950000 - 0x4ED0);
                } else {
                    arg1->unk8 = (? *) (((u32) arg1->unk14->unk4 >= 0x4CU) ? (sub_0d950000 - 0x4F10) : &__glSPExecuteDlist);
                }
                temp_a2 = arg1->unk20 & 2;
                if (temp_a2 == 0) {
                    if (__glkonim_GetListParameterivSGIX((f32 *) arg0, (s64) arg1, temp_a2) == 0) {
                        arg1->unk8 = &__glSPExecuteDlist;
                    }
                }
                var_a0 = arg0->unk7B5C;
                goto block_3;
            }
        } else {
            goto block_3;
        }
    } else {
block_2:
        var_a0 = arg0->unk7B5C;
block_3:
        var_a1 = var_a0 & 0x20;
    }
    if (var_a1 != 0) {
        __glkon_InitDlistState(arg0, 3, 0);
    }
}

void __glkonSPValidateDlist(? *arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    __glkonSPValidateOnlyDlist();
    __glkonSPValidateOnlyDlist(arg0, (? *) sp18);
}

/*
Decompilation failure in function __glkonlc_Begin:

Cannot find branch target __glkon_InitDlistState
*/

void __glkonlc_CallList(s64 arg0, void *arg1, s32 arg3) {
    s64 sp18;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a4;
    s32 var_a3;
    s64 var_a0;
    void *temp_a3;
    void *temp_a5;
    void *var_a1;
    void *var_a2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a3 = arg3;
    var_a2 = *(void **)0x1010;
    if (var_a2->unk13D4 & 4) {
        temp_a4 = *(s32 *)0x1034;
        temp_a3 = *(void **)0x1030;
        sp0 = (s64) var_a2;
        sp18 = var_a0;
        if (temp_a4 == 0) {
            *(void *)0x1030 = (void *) (temp_a3 - 4);
            *(void *)0x1028 = (s32) (*(s32 *)0x1028 + 1);
        } else {
            temp_a5 = temp_a3 + (temp_a4 * 0xFFFFFFFC);
            temp_a5->unk-4 = temp_a4;
            temp_a2 = *(void *)0x1034;
            __glsplc_AddIlist(sp0->unk13B8, (temp_a3 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, temp_a4, (s32) temp_a5);
        }
        sp0->unk13D4 = (s32) ((sp0->unk13D4 & ~4) | 1);
        __glsplc_AddIlist(sub_0d950000 - 0x3300, 0);
        var_a3 = *(void *)0x1028;
        if (var_a3 <= 0) {
            var_a3 = M2C_ERROR(/* Read from unset register $t9 */)(1);
        }
        var_a0 = sp18;
        var_a2 = var_a3 - 1;
        *(void *)0x1028 = (s32) var_a2;
        *(void *)0x1034 = 0;
        var_a1 = *(void *)0x1030 + 4;
        *(void *)0x1030 = var_a1;
    }
    __glsplc_CallList(var_a0, var_a1, (s32) var_a2, var_a3);
}

void __glkonlc_CallLists(s64 arg0, s64 arg1, s64 arg2, s32 arg3, s32 arg5) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a3;
    s32 var_a5;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *var_a4;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a4 = *(void **)0x1010;
    if (var_a4->unk13D4 & 4) {
        sp0 = (s64) var_a4;
        sp18 = var_a2;
        temp_a6 = *(s32 *)0x1034;
        temp_a5 = *(s32 *)0x1030;
        sp20 = var_a1;
        sp28 = var_a0;
        if (temp_a6 == 0) {
            *(void *)0x1030 = (s32) (temp_a5 - 4);
            *(void *)0x1028 = (s32) (*(s32 *)0x1028 + 1);
        } else {
            temp_a3 = temp_a5 + (temp_a6 * 0xFFFFFFFC);
            temp_a3->unk-4 = temp_a6;
            temp_a2 = *(void *)0x1034;
            __glsplc_AddIlist(sp0->unk13B8, (temp_a5 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, (s32) var_a4, temp_a5, (void *) temp_a6);
        }
        sp0->unk13D4 = (s32) ((sp0->unk13D4 & ~4) | 1);
        __glsplc_AddIlist(sub_0d950000 - 0x3300, 0);
        var_a5 = *(void *)0x1028;
        if (var_a5 <= 0) {
            var_a5 = M2C_ERROR(/* Read from unset register $t9 */)(1);
        }
        var_a0 = sp28;
        var_a1 = sp20;
        var_a2 = sp18;
        var_a4 = var_a5 - 1;
        *(void *)0x1028 = (s32) var_a4;
        *(void *)0x1034 = 0;
        var_a3 = *(void *)0x1030 + 4;
        *(void *)0x1030 = var_a3;
    }
    __glsplc_CallLists(var_a0, var_a1, var_a2, var_a3, (s32) var_a4, var_a5);
}

void __glkonlc_ClearColor(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    s32 *temp_a1;
    s32 var_a2;
    void *temp_a3;

    temp_a1 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        M2C_ERROR(/* unknown instruction: movt.s $f2, $f3, $fcc7 */);
        M2C_ERROR(/* unknown instruction: movt.s $f1, $f3, $fcc6 */);
        M2C_ERROR(/* unknown instruction: movt.s $f0, $f3, $fcc5 */);
        M2C_ERROR(/* unknown instruction: movf.s $f3, $f15, $fcc4 */);
        var_a2 = *(s32 *)0x1028;
        if (var_a2 < 5) {
            var_a2 = __glSPDlistSpace(0, (s32) temp_a1, var_a2);
        }
        temp_a3 = *(void **)0x1030;
        temp_a3->unk0 = 0x1D;
        temp_a3->unk4 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f20, $f0, $fcc0 */);
        temp_a3->unk8 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f22, $f1, $fcc1 */);
        temp_a3->unkC = (f32) M2C_ERROR(/* unknown instruction: movf.s $f26, $f2, $fcc2 */);
        temp_a3->unk10 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f24, $f3, $fcc3 */);
        *(void *)0x1030 = (void *) (temp_a3 + 0x14);
        *(void *)0x1028 = (s32) (var_a2 - 5);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 5);
        return;
    }
    __glSetError(0x502, temp_a1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c], gap at: 0x10. */
void __glkonlc_ClearAccum(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    s32 var_a2;
    void *temp_a3;

    if (*(s32 *)0x1018 != 1) {
        var_a2 = *(s32 *)0x1028;
        if (var_a2 < 5) {
            unksp8 = fparg0;
            unksp10 = fparg1;
            unksp18 = fparg2;
            unksp20 = fparg3;
            var_a2 = __glSPDlistSpace(0, var_a2);
        }
        M2C_ERROR(/* unknown instruction: movt.s $f5, $f1, $fcc7 */);
        M2C_ERROR(/* unknown instruction: movt.s $f6, $f1, $fcc6 */);
        M2C_ERROR(/* unknown instruction: movt.s $f7, $f1, $fcc5 */);
        M2C_ERROR(/* unknown instruction: movf.s $f1, $f4, $fcc4 */);
        temp_a3 = *(void **)0x1030;
        temp_a3->unk0 = 0x1B;
        temp_a3->unk4 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f4, $f0, $fcc3 */);
        temp_a3->unk8 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f3, $f0, $fcc2 */);
        temp_a3->unkC = (f32) M2C_ERROR(/* unknown instruction: movt.s $f2, $f0, $fcc1 */);
        temp_a3->unk10 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f0, $f1, $fcc0 */);
        *(void *)0x1030 = (void *) (temp_a3 + 0x14);
        *(void *)0x1028 = (s32) (var_a2 - 5);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 5);
        return;
    }
    __glSetError(0x502);
}

void __glkonlc_ClearDepth(f64 fparg0) {
    f64 sp0;
    s32 *temp_a1;
    s32 var_a2;
    void *temp_a3;

    temp_a1 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a2 = *(s32 *)0x1028;
        M2C_ERROR(/* unknown instruction: movf.d $f0, $f12, $fcc1 */);
        if (var_a2 < 3) {
            var_a2 = __glSPDlistSpace(0, (s32) temp_a1, var_a2);
        }
        sp0 = M2C_ERROR(/* unknown instruction: movf.d $f20, $f0, $fcc0 */);
        temp_a3 = *(void **)0x1030;
        temp_a3->unk0 = 0x1F;
        temp_a3->unk4 = (s32) sp0;
        temp_a3->unk8 = unksp4;
        *(void *)0x1030 = (void *) (temp_a3 + 0xC);
        *(void *)0x1028 = (s32) (var_a2 - 3);
        *(void *)0x1034 = (s32) (*(s32 *)0x1034 + 3);
        return;
    }
    __glSetError(0x502, temp_a1);
}
