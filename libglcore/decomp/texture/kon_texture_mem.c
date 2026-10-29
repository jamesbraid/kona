Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $at, .L0d977d50

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $at, .L0d977d50

s32 __glKonFreeAllocedTexObjBank(void *, void *, s32, s64, void *); /* extern */
s64 __glkon_texture_mem_alloc(s64, s64);            /* extern */
s64 __glkon_texture_mem_realloc(s64);               /* extern */
s32 __glkonle_TexSubImage3DEXT(s32, void *, s64, s32, s64); /* extern */
? exit(?);                                          /* extern */
? fprintf(void *, void *, s32, ?, s64);             /* extern */
s32 getenv(void *, void *, s32, s32, ?, s32);       /* extern */
? printf(void *, s64, s32, s32);                    /* extern */
? sub_0d970000(s64, s32 *);                         /* extern */
extern ? __iob;
extern ? __rodata0;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
s64 globalAlloc(void *arg0, s32 arg1) {
    s32 temp_v0;
    s32 var_a1;
    s64 temp_a0;
    s64 temp_a3;

    if (arg0->unk0 & 2) {
        temp_a0 = (arg0->unkC2B8 + arg1) << 6;
        unksp10 = temp_a0;
        unksp8 = __glkon_texture_mem_realloc(temp_a0);
    } else {
        temp_a3 = arg1 << 6;
        unksp10 = temp_a3;
        unksp8 = __glkon_texture_mem_alloc(temp_a3, temp_a3);
        arg0->unk0 = (s32) (arg0->unk0 | 2);
    }
    var_a1 = saved_reg_gp->unk-4074;
    if (var_a1 == -1) {
        temp_v0 = M2C_ERROR(/* Read from unset register $t9 */)(&__rodata0 - 0x1238, var_a1, -1);
        var_a1 = temp_v0;
        saved_reg_gp->unk-4074 = temp_v0;
    }
    if (var_a1 != 0) {
        fprintf(&__iob + 0x20, &__rodata0 - 0x1220, unksp10 >> 1);
    }
    return unksp8;
}

s32 whichBucket(s32 arg0) {
    s32 temp_t0;
    s32 var_a3;
    s32 var_t0;

    if ((arg0 >> 0x10) != 0) {
        var_a3 = ((arg0 >> 0x17) == 0) ? 0x16 : 0x1E;
    } else {
        var_a3 = ((arg0 >> 8) == 0) ? 7 : 0xF;
    }
    if (arg0 != 0) {
        var_t0 = var_a3 - 1;
        if ((arg0 >> var_a3) == 0) {
loop_4:
            var_a3 -= 1;
            if ((arg0 >> var_a3) == 0) {
                var_a3 -= 1;
                if ((arg0 >> var_a3) == 0) {
                    goto loop_4;
                }
            }
            var_t0 = var_a3 - 1;
        }
        temp_t0 = ((arg0 >> var_t0) & 1) + ((var_a3 - 5) * 2);
        return (var_a3 >= 5) ? ((temp_t0 < 0x1E) ? temp_t0 : 0x1D) : 0;
    }
    return 0;
}

s32 *findFreeBank(s64 arg0, s64 arg1, s32 arg2) {
    s32 *temp_a2_2;
    s32 *temp_a2_3;
    s32 *var_a4;
    s32 *var_v0;
    s32 temp_v0;
    void *temp_a2;
    void *var_a1;

    temp_v0 = __glkonle_TexSubImage3DEXT(arg2);
    temp_a2 = arg0 + (arg1 * 0xC0);
    var_a4 = (temp_a2 + (temp_v0 * 4))->unkC14C;
    if (var_a4 != NULL) {
loop_1:
        if (var_a4->unk10 < arg2) {
            var_a4 = var_a4->unk18;
            if (var_a4 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
        return var_a4;
    }
block_3:
    if (temp_a2->unkC1C4 & (0x40000000 - (1 << temp_v0))) {
        var_a1 = temp_a2 + ((temp_v0 + 1) * 4) + 0x10000;
loop_5:
        temp_a2_2 = var_a1->unk-3EB4;
        var_v0 = temp_a2_2;
        if (temp_a2_2 == NULL) {
            temp_a2_3 = var_a1->unk-3EB0;
            if (temp_a2_3 == NULL) {
                var_a1 = var_a1 + 4 + 4;
                goto loop_5;
            }
            var_v0 = temp_a2_3;
        }
        return var_v0;
    }
    return NULL;
}

void deleteFreeBank(s64 arg0, s64 arg1, void *arg2) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 temp_a6;
    s32 temp_s3;
    s64 temp_a2;
    void *temp_a6_2;
    void *temp_s1;
    void *temp_s2;
    void *var_a1;

    sp40 = arg1;
    sp30 = arg0;
    temp_s1 = arg2->unk18;
    temp_s2 = arg2->unk14;
    temp_s3 = __glkonle_TexSubImage3DEXT(arg2->unk10);
    temp_a6 = temp_s3 * 4;
    temp_s2->unk18 = temp_s1;
    if (temp_s1 != NULL) {
        temp_s1->unk14 = temp_s2;
    }
    temp_a2 = sp30 + (arg1 * 0xC0);
    temp_a6_2 = temp_a2 + temp_a6;
    var_a1 = temp_a2 + 0x10000;
    if (temp_a6_2->unkC14C == arg2) {
        if ((temp_s1 != NULL) && (sp28 = temp_a6_2 + 0x10000, sp38 = temp_a2, (__glkonle_TexSubImage3DEXT(temp_s1->unk10, var_a1, temp_a2) == temp_s3))) {
            var_a1 = temp_a2 + 0x10000;
            temp_a6_2->unkC14C = temp_s1;
        } else {
            temp_a6_2->unkC14C = NULL;
            var_a1 = temp_a2 + 0x10000;
            temp_a2->unkC1C4 = (s32) (temp_a2->unkC1C4 & ~(1 << temp_s3));
        }
    }
    if (var_a1->unk-3E38 == arg2) {
        var_a1->unk-3E38 = temp_s2;
        var_a1->unk-3E34 = (s32) (var_a1->unk-3E34 - arg2->unk10);
        return;
    }
    var_a1->unk-3E34 = (s32) (var_a1->unk-3E34 - arg2->unk10);
}

void sizeNoGreaterPriorityInterval(void *arg0, s64 arg1, ? *arg2) {
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *var_a6;
    void *var_a7;
    s32 phi_v0;
    s32 phi_v0_2;

    var_a7 = arg0;
    var_a6 = arg0->unk4;
    if (arg0 != arg2) {
        phi_v0 = 0;
        if (arg1 >= arg0->unk8) {
            phi_v0_2 = 0;
loop_3:
            temp_a5 = var_a7->unk0;
            temp_v0 = var_a7->unk10 + phi_v0_2;
            var_a7 = temp_a5;
            phi_v0 = temp_v0;
            phi_v0_2 = temp_v0;
            if (temp_a5 != arg2) {
                if (arg1 < temp_a5->unk8) {

                } else {
                    goto loop_3;
                }
            }
        }
    } else {
        phi_v0 = 0;
    }
    if ((arg2 != var_a6) && (arg1 >= var_a6->unk8)) {
loop_9:
        temp_a5_2 = var_a6->unk4;
        temp_v0_2 = var_a6->unk10 + phi_v0;
        if (temp_a5_2 != arg2) {
            temp_a5_3 = temp_a5_2->unk4;
            var_a6 = temp_a5_3;
            if (arg1 >= temp_a5_2->unk8) {
                phi_v0 = temp_a5_2->unk10 + temp_v0_2;
                if (temp_a5_3 != arg2) {
                    if (arg1 >= temp_a5_3->unk8) {
                        goto loop_9;
                    }
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x20. */
void insertFreeBank(s64 arg0, s64 arg1, void *arg2, s64 arg3) {
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_t8;
    s32 temp_v0;
    s64 var_s0;
    void *temp_a0;
    void *temp_a3;
    void *temp_a4;
    void *temp_a6;
    void *temp_t1;
    void *var_a0;
    void *var_a2;
    void *var_a2_2;
    void *var_s1;
    void *var_v0;
    void *var_v0_2;

    unksp20 = arg1;
    unksp18 = arg0;
    var_s0 = arg3;
    temp_v0 = __glkonle_TexSubImage3DEXT(arg2->unk10);
    temp_a6 = (unksp20 * 0xC0) + unksp18;
    temp_a3 = (temp_v0 * 4) + temp_a6;
    var_a2 = temp_a3->unkC14C;
    if (var_a2 != NULL) {
        temp_a1 = arg2->unk10;
        var_v0 = var_a2;
        var_a0 = var_a2->unk14;
        if (var_a2->unk10 < temp_a1) {
            var_v0 = var_a2->unk18;
            var_a0 = var_a2;
            if (var_v0 != NULL) {
loop_5:
                temp_a0 = var_v0->unk18;
                if (var_v0->unk10 < temp_a1) {
                    var_a2 = var_v0;
                    var_v0 = temp_a0;
                    if ((temp_a0 != NULL) && (temp_a0->unk10 < temp_a1)) {
                        temp_t1 = var_v0->unk18;
                        var_a2 = var_v0;
                        var_v0 = temp_t1;
                        if (temp_t1 != NULL) {
                            goto loop_5;
                        }
                    }
                }
                var_a0 = var_a2;
            }
        } else {
            temp_a3->unkC14C = arg2;
        }
    } else {
        temp_a3->unkC14C = arg2;
        temp_a6->unkC1C4 = (s32) (temp_a6->unkC1C4 | (1 << temp_v0));
        temp_a0_2 = temp_v0 - 1;
        if (temp_a3->unkC148 == 0) {
            var_v0_2 = temp_a6 + (temp_a0_2 * 4) + 0x10000;
loop_25:
            var_a2_2 = var_v0_2->unk-3EB8;
            if (var_a2_2 == NULL) {
                var_a2_2 = var_v0_2->unk-3EBC;
                if (var_a2_2 == NULL) {
                    var_a2_2 = var_v0_2->unk-3EC0;
                    if (var_a2_2 == NULL) {
                        var_a2_2 = var_v0_2->unk-3EC4;
                        if (var_a2_2 == NULL) {
                            var_a2_2 = var_v0_2->unk-3EC8;
                            var_v0_2 -= 0x14;
                            if (var_a2_2 == NULL) {
                                goto loop_25;
                            }
                        }
                    }
                }
            }
        } else {
            var_a2_2 = (temp_a6 + (temp_a0_2 * 4))->unkC14C;
        }
        var_v0 = var_a2_2->unk18;
        var_a0 = var_a2_2;
        if (var_v0 != NULL) {
loop_34:
            temp_a4 = var_v0->unk18;
            if (var_v0->unk10 < arg2->unk10) {
                var_a0 = var_v0;
                var_v0 = temp_a4;
                if (temp_a4 == NULL) {

                } else {
                    goto loop_34;
                }
            }
        }
    }
    var_a0->unk18 = arg2;
    arg2->unk18 = var_v0;
    arg2->unk14 = var_a0;
    if (var_v0 != NULL) {
        var_v0->unk14 = arg2;
    }
    if (temp_a6->unkC1C8 == var_a0) {
        temp_a6->unkC1C8 = arg2;
    }
    temp_a6->unkC1CC = (s32) (temp_a6->unkC1CC + arg2->unk10);
    if ((temp_a6->unkC148 == 0) && (var_s0 >= 0)) {
        var_s1 = temp_a6 + (var_s0 * 4) + 0x10000;
loop_16:
        temp_t8 = sizeNoGreaterPriorityInterval(arg2, var_s0, temp_a6->unkC1D0) < var_s1->unk-3EC4;
        var_s1 -= 4;
        var_s0 -= 1;
        if (temp_t8 != 0) {
            if (var_s0 == -1) {

            } else {
                goto loop_16;
            }
        } else {
            temp_a6->unkC148 = 1;
        }
    }
}

s32 inInterval(void *arg0, s64 arg1, void *arg2) {
    s32 var_a3;
    void *var_a4;

    var_a4 = arg0;
    if (arg1 > 0) {
        var_a3 = 0;
loop_2:
        if (arg2 != var_a4) {
            var_a3 += var_a4->unk10;
            var_a4 = var_a4->unk4;
            if (var_a3 >= arg1) {
                /* Duplicate return node #4. Try simplifying control flow for better match */
                return 0;
            }
            goto loop_2;
        }
        return 1;
    }
    return 0;
}

s32 maxSizeNoGreaterPriorityInterval(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a3;
    s32 var_a5;
    s32 var_t2;
    void *temp_a4;
    void *temp_a6;
    void *var_a4;

    temp_a6 = (arg0 + (arg1 * 0xC0))->unkC1D0;
    var_a4 = temp_a6->unk4;
    var_a3 = 0;
    var_a5 = 0;
    if (temp_a6 != var_a4) {
        var_t2 = 0 < 0;
loop_4:
        if (arg2 < var_a4->unk8) {
            var_a5 = (var_t2 != 0) ? var_a3 : var_a5;
            var_a3 = 0;
        } else {
            var_a3 += var_a4->unk10;
        }
        temp_a4 = var_a4->unk4;
        if (temp_a6 != temp_a4) {
            var_a4 = temp_a4->unk4;
            if (arg2 < temp_a4->unk8) {
                var_a5 = (var_a5 < var_a3) ? var_a3 : var_a5;
                var_a3 = 0;
            } else {
                var_a3 += temp_a4->unk10;
            }
            var_t2 = var_a5 < var_a3;
            if (temp_a6 != var_a4) {
                goto loop_4;
            }
        }
        return (var_a5 < var_a3) ? var_a3 : var_a5;
    }
    return 0;
}

void validateMaxIntervalBank(s32 arg0, s32 arg1) {
    ? sp2C;
    s32 sp20;
    s32 sp10;
    void *sp8;
    void *sp4;
    void *sp0;
    s32 *temp_a3;
    s32 *temp_a3_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    void *temp_a4;
    void *temp_t1;
    void *var_a4;

    temp_t1 = arg0 + (arg1 * 0xC0);
    temp_a4 = temp_t1->unkC1D0;
    sp20.unk8 = 0;
    sp20.unk4 = 0;
    sp20 = 0;
    sp10.unk8 = 0;
    sp10.unk4 = 0;
    sp10 = 0;
    temp_t1->unkC138 = temp_a4;
    sp8 = temp_a4;
    temp_t1->unkC134 = temp_a4;
    sp4 = temp_a4;
    temp_t1->unkC130 = temp_a4;
    sp0 = temp_a4;
    var_a4 = temp_a4->unk4;
    if (temp_a4 != var_a4) {
loop_4:
        if (var_a4->unk8 > 0) {
            if (sp10 < sp20) {
                sp10 = sp20;
                temp_t1->unkC130 = sp0;
            }
            sp20.unk0 = 0;
            sp->unk0 = (void *) var_a4->unk4;
        } else {
            sp20 += var_a4->unk10;
        }
        temp_a3 = &sp20 + 4;
        if (temp_a3 != &sp2C) {
            temp_a2 = sp20.unk4;
            if (var_a4->unk8 > 1) {
                if (sp10.unk4 < temp_a2) {
                    sp10.unk4 = temp_a2;
                    temp_t1->unkC134 = (void *) sp->unk4;
                }
                sp20.unk4 = 0;
                sp->unk4 = (void *) var_a4->unk4;
            } else {
                sp20.unk4 = (s32) (var_a4->unk10 + temp_a2);
            }
            if ((temp_a3 + 4) != &sp2C) {
                temp_a2_2 = temp_a3->unk4;
                if (var_a4->unk8 > 2) {
                    if (sp10.unk8 < temp_a2_2) {
                        sp10.unk8 = temp_a2_2;
                        temp_t1->unkC138 = (void *) sp->unk8;
                    }
                    temp_a3->unk4 = 0;
                    sp->unk8 = (void *) var_a4->unk4;
                } else {
                    temp_a3->unk4 = (s32) (var_a4->unk10 + temp_a2_2);
                }
            }
        }
        var_a4 = var_a4->unk4;
        if (temp_t1->unkC1D0 != var_a4) {
            goto loop_4;
        }
    }
    var_a1 = sp10;
    temp_a3_2 = &sp20 + 4;
    if (var_a1 < sp20) {
        sp10 = sp20;
        var_a1 = sp20;
        temp_t1->unkC130 = sp0;
    }
    temp_t1->unkC13C = var_a1;
    if (temp_a3_2 != &sp2C) {
        temp_a2_3 = sp20.unk4;
        var_a1_2 = sp10.unk4;
        if (var_a1_2 < temp_a2_3) {
            sp10.unk4 = temp_a2_3;
            var_a1_2 = temp_a2_3;
            temp_t1->unkC134 = (void *) sp->unk4;
        }
        temp_t1->unkC140 = var_a1_2;
        if ((temp_a3_2 + 4) != &sp2C) {
            temp_a2_4 = temp_a3_2->unk4;
            var_a1_3 = sp10.unk8;
            if (var_a1_3 < temp_a2_4) {
                sp10.unk8 = temp_a2_4;
                var_a1_3 = temp_a2_4;
                temp_t1->unkC138 = (void *) sp->unk8;
            }
            temp_t1->unkC144 = var_a1_3;
        }
    }
    temp_t1->unkC148 = 0;
}

void validateBank(void *arg0, s64 arg1) {
    s32 temp_a2;
    void *temp_s3;

    temp_s3 = arg0 + (arg1 * 0xC0);
    if (temp_s3->unkC148 != 0) {
        inInterval();
    }
    temp_a2 = temp_s3->unkC1C4;
    if ((temp_a2 * 2) < (1 << __glkonle_TexSubImage3DEXT(temp_s3->unkC1C8->unk10))) {
        printf(&__rodata0 - 0x11F8, arg1, temp_a2, temp_s3->unkC1C8->unk10);
    }
    if (temp_s3->unkC13C != inInterval(arg0, arg1, NULL)) {
        printf(&__rodata0 - 0x11C0, arg1);
    }
    if (1 != 3) {
        if (temp_s3->unkC140 != inInterval(arg0, arg1, (void *)1)) {
            M2C_ERROR(/* Read from unset register $t9 */)(&__rodata0 - 0x11C0, arg1);
        }
        if ((2 != 3) && (temp_s3->unkC144 != inInterval(arg0, arg1, (void *)2))) {
            M2C_ERROR(/* Read from unset register $t9 */)(&__rodata0 - 0x11C0, arg1);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x88, 0x8c, 0x98, 0x9c, 0xa0, 0xa4], gap at: 0x68. */
s64 stealNoGreaterPriorityBank(void *arg0, s64 arg1, s32 arg2, s64 arg3) {
    s64 spB0;
    s64 spA8;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *(**temp_v0)(?, ?, s64, ?);
    s32 *temp_v0_4;
    s32 *var_a3_2;
    s32 *var_a3_3;
    s32 *var_a6_3;
    s32 *var_a6_4;
    s32 *var_s7;
    s32 *var_t0;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a6_2;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a6_2;
    s32 var_s0;
    s32 var_s2;
    s32 var_s6;
    s32 var_t9;
    s32 var_v0_2;
    s64 temp_a6;
    s64 temp_s8;
    s64 temp_t0;
    s64 var_a7;
    s64 var_s5;
    s64 var_t0_2;
    s64 var_v0;
    void *temp_a7;
    void *temp_s8_2;
    void *temp_t9;
    void *var_a3;
    void *var_a6;
    void *var_s3;
    void *var_s4;
    void *var_t2;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_s6 = saved_reg_s6;
    temp_v0 = *(s32 *(***)(?, ?, s64, ?))0x1010;
    temp_s8 = arg0 + (arg1 * 0xC0);
    sp20 = temp_s8;
    var_s2 = arg2;
    var_s5 = arg1;
    sp28 = temp_s8 + 0x10000;
    temp_s8_2 = temp_s8->unkC1D0;
    temp_a6 = arg0->unkC2B4 + 1;
    if (temp_s8->unkC1C8->unk10 >= arg3) {
        goto block_35;
    }
    sp18 = (s64) temp_v0;
    unksp80 = temp_a6;
    var_s7 = *temp_v0(temp_v0, 0x200, temp_a6, 0x11A988);
    inInterval(arg0, var_s5);
    if (var_s2 <= 0) {
        goto block_56;
    }
    var_v0 = sp28;
    var_s0 = 0;
loop_3:
    var_v0 += 4;
    if (var_v0->unk-3EC4 >= arg3) {
        goto block_5;
    }
    var_s0 += 1;
    if (var_v0 != (sp20 + (var_s2 * 4) + 0x10000)) {
        goto loop_3;
    }
block_5:
    temp_a7 = temp_s8_2->unk4;
    var_s3 = temp_a7;
    var_s4 = temp_a7;
    if (temp_a7 == temp_s8_2) {
        goto block_32;
    }
    sp10 = var_s5;
    var_s5 = -1;
    var_s6 = 0;
    var_v0_2 = 1;
    var_s2 = 0;
    unksp60 = -1;
    goto block_9;
block_7:
    var_s5 = -1;
    var_s6 = 0;
    var_v0_2 = 1;
    var_s2 = 0;
    var_s4 = var_a6;
block_8:
    var_s3 = var_a6;
    if (temp_s8_2 == var_a6) {
        goto block_33;
    }
block_9:
    temp_a3 = var_s3->unk8;
    var_a6 = var_s3->unk4;
    if (var_s0 < temp_a3) {
        goto block_7;
    }
    if (temp_a3 != var_s0) {
        goto block_15;
    }
    temp_a0 = var_s3->unk14->unk120;
    if (var_v0_2 == 0) {
        goto block_50;
    }
block_12:
    var_s5 = M2C_ERROR(/* Read from unset register $t1 */) & (var_s5 + 1);
    if (var_v0_2 == 0) {
        goto block_36;
    }
    var_t9 = var_s5 * 8;
block_14:
    temp_t9 = var_s7 + var_t9;
    temp_t9->unk4 = temp_a0;
    var_v0_2 = 0;
    temp_t9->unk0 = var_s3;
block_15:
    var_s2 += var_s3->unk10;
    if (var_s2 < arg3) {
        goto block_31;
    }
    var_t2 = var_s7 + (var_s5 * 8);
    var_a3 = var_s4->unk4;
    var_s2 -= var_s4->unk10;
    var_t0 = var_s7 + (var_s6 * 8);
    if ((var_s2 - var_a3->unk10) < arg3) {
        goto block_22;
    }
block_17:
    var_t0 = var_s7 + (var_s6 * 8);
    var_a6_2 = *var_t0;
loop_18:
    if (var_a6_2 != var_s4) {
        goto block_20;
    }
    var_s6 = M2C_ERROR(/* Read from unset register $t1 */) & (var_s6 + 1);
    temp_v0_2 = (s32) var_t0 ^ (s32) var_t2;
    var_t0 = var_s7 + (var_s6 * 8);
    var_v0_2 = temp_v0_2 == 0;
    var_a6_2 = *var_t0;
block_20:
    temp_a7_2 = var_a3->unk10;
    var_s4 = var_a3;
    var_a3 = var_a3->unk4;
    var_s2 -= temp_a7_2;
    if ((var_s2 - var_a3->unk10) >= arg3) {
        goto loop_18;
    }
    goto block_23;
block_22:
    var_a6_2 = *var_t0;
block_23:
    temp_t2 = var_t0->unk4;
    if (temp_t2 < M2C_ERROR(/* Read from unset register $a1 */)) {
        goto block_26;
    }
    if (temp_t2 != M2C_ERROR(/* Read from unset register $a1 */)) {
        goto block_27;
    }
    if (M2C_ERROR(/* Read from unset register $t8 */) >= var_s2) {
        goto block_27;
    }
block_26:
    unksp60 = (s64) var_s4;
block_27:
    var_s4 = var_a3;
    if (var_a6_2 != var_s4) {
        goto block_30;
    }
block_28:
    temp_v0_3 = var_s6 ^ var_s5;
    var_s6 = M2C_ERROR(/* Read from unset register $t1 */) & (var_s6 + 1);
    var_v0_2 = temp_v0_3 == 0;
block_29:
    var_s4 = var_a3;
block_30:
    var_a6 = var_s3->unk4;
    goto block_8;
block_31:
    var_a6 = var_s3->unk4;
    goto block_8;
block_32:
    unksp60 = -1;
    sp10 = var_s5;
block_33:
    sub_0d970000(sp18, var_s7);
    var_s4 = (void *) unkspA0;
    if (unksp60 == -1) {
        goto block_57;
    }
    return unksp60;
block_35:
    return findFreeBank(arg3, temp_a6, 0x11A988);
block_36:
    var_t9 = var_s5 * 8;
    if (var_s6 != var_s5) {
        goto block_14;
    }
    spA8 = M2C_ERROR(/* Read from unset register $t3 */);
    unksp70 = (s64) temp_a0;
    spB0 = M2C_ERROR(/* Read from unset register $a1 */);
    unksp80 = M2C_ERROR(/* Read from unset register $t8 */);
    sp0 = spA8 * 2;
    temp_v0_4 = findFreeBank(sp18, spA8 * 0x10);
    var_a3_2 = temp_v0_4;
    if (var_s6 >= spA8) {
        goto block_59;
    }
    var_a6_3 = var_s7 + (var_s6 * 8);
loop_39:
    temp_t2_2 = *var_a6_3;
    var_a6_3 += 8;
    *var_a3_2 = temp_t2_2;
    var_a3_2 += 8;
    var_a3_2->unk-4 = (s32) var_a6_3->unk-4;
    if (var_a6_3 != (var_s7 + (spA8 * 8))) {
        goto loop_39;
    }
    var_s5 = spA8 - var_s6;
    if (var_s6 <= 0) {
        goto block_60;
    }
block_41:
    var_a6_4 = var_s7;
    temp_t0 = var_s5 * 8;
    sp8 = temp_t0;
    var_a3_3 = temp_t0 + temp_v0_4;
    if (!(var_s6 & 1)) {
        goto block_43;
    }
    sp8 = temp_t0 + 8;
    *var_a3_3 = var_s7->unk0;
    var_a3_3 += 8;
    var_s5 += 1;
    var_a6_4 = var_s7 + 8;
    var_a3_3->unk-4 = (s32) var_s7->unk4;
block_43:
    var_t0_2 = var_s5;
    var_a7 = sp8;
    if ((var_s6 >> 1) == 0) {
        goto block_47;
    }
loop_45:
    var_a3_3->unk0 = var_a6_4->unk0;
    var_a3_3->unk4 = (s32) var_a6_4->unk4;
    temp_v1 = var_a6_4->unk8;
    var_a6_4 += 0x10;
    var_a3_3->unk8 = temp_v1;
    var_a3_3 += 0x10;
    var_a7 += 0x10;
    var_t0_2 += 2;
    var_a3_3->unk-4 = (s32) var_a6_4->unk-4;
    if (var_a6_4 != (var_s7 + (var_s6 * 8))) {
        goto loop_45;
    }
    var_s5 = var_t0_2;
    sp8 = var_a7;
block_47:
    unksp68 = (s64) temp_v0_4;
    sp18->unkC(sp18, var_s7);
    var_t2 = sp8 + temp_v0_4;
    var_t2->unk4 = (s32) unksp70;
    var_t2->unk0 = var_s3;
    var_s7 = temp_v0_4;
    temp_a6_2 = var_s3->unk10 + var_s2;
    var_s6 = 0;
    var_s2 = temp_a6_2;
    if (temp_a6_2 < arg3) {
        goto block_58;
    }
    var_a3 = var_s4->unk4;
    var_s2 = temp_a6_2 - var_s4->unk10;
    if ((var_s2 - var_a3->unk10) < arg3) {
        goto block_61;
    }
    var_v0_2 = 0;
    var_s6 = 0;
    goto block_17;
block_50:
    if ((var_s7 + (var_s5 * 8))->unk4 >= temp_a0) {
        goto block_12;
    }
loop_51:
    var_v0_2 = var_s6 == var_s5;
    var_s5 = M2C_ERROR(/* Read from unset register $t1 */) & (var_s5 - 1);
    if (var_v0_2 != 0) {
        goto block_55;
    }
    if ((var_s7 + (var_s5 * 8))->unk4 >= temp_a0) {
        goto block_55;
    }
    var_v0_2 = var_s6 == var_s5;
    var_s5 = M2C_ERROR(/* Read from unset register $t1 */) & (var_s5 - 1);
    if (var_v0_2 != 0) {
        goto block_55;
    }
    if ((var_s7 + (var_s5 * 8))->unk4 < temp_a0) {
        goto loop_51;
    }
block_55:
    goto block_12;
block_56:
    var_s0 = 0;
    goto block_5;
block_57:
    printf(&__rodata0 - 0x1198, arg3, (s32) sp10, var_s0);
    exit(1);
block_58:
    var_v0_2 = 0;
    var_a6 = var_s3->unk4;
    goto block_8;
block_59:
    var_s5 = 0;
    if (var_s6 > 0) {
        goto block_41;
    }
block_60:
    sp8 = var_s5 * 8;
    goto block_47;
block_61:
    temp_a7_3 = temp_v0_4->unk4;
    if (temp_a7_3 < spB0) {
        goto block_64;
    }
    if (temp_a7_3 != spB0) {
        goto block_65;
    }
    if (unksp80 >= var_s2) {
        goto block_65;
    }
block_64:
    unksp60 = (s64) var_s4;
block_65:
    var_v0_2 = 0;
    if (temp_v0_4->unk0 != var_s4) {
        goto block_67;
    }
    var_s6 = 0;
    goto block_28;
block_67:
    var_s6 = 0;
    goto block_29;
}

void getMemNode(void *arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 var_a5;
    void *temp_a0;
    void *temp_t1;
    void *temp_t2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a0;
    void *var_a3;

    temp_v0 = arg0->unkC2D0;
    if (temp_v0 != NULL) {
        arg0->unkC2D0 = (void *) temp_v0->unk4;
        return;
    }
    temp_a0 = *(void **)0x1010;
    temp_a2 = arg0->unkC2CC + 1;
    arg0->unkC2CC = temp_a2;
    sp0 = (s64) temp_a0;
    arg0->unkC2C8 = temp_a0->unk8(temp_a0, arg0->unkC2C8, temp_a2 * 4);
    temp_v0_2 = temp_a0->unk0(temp_a0, 0x1C00);
    var_a5 = 7;
    arg0->unkC2D0 = temp_v0_2;
    var_a0 = temp_v0_2 + 0x1C;
    var_a3 = temp_v0_2;
    (arg0->unkC2C8 + (arg0->unkC2CC * 4))->unk-4 = temp_v0_2;
    do {
        var_a5 -= 1;
        var_a3->unk4 = var_a0;
        var_a0 += 0x1C;
        var_a3 += 0x1C;
    } while (var_a5 != 0);
    do {
        var_a3 += 0xE0;
        var_a3->unk-18 = (void *) (var_a0 + 0xC4);
        var_a3->unk-34 = (void *) (var_a0 + 0xA8);
        var_a3->unk-50 = (void *) (var_a0 + 0x8C);
        var_a3->unk-6C = (void *) (var_a0 + 0x70);
        var_a3->unk-88 = (void *) (var_a0 + 0x54);
        temp_t2 = var_a0 + 0x38;
        temp_t1 = var_a0 + 0x1C;
        var_a3->unk-DC = var_a0;
        var_a0 += 0xE0;
        var_a3->unk-A4 = temp_t2;
        var_a3->unk-C0 = temp_t1;
    } while (var_a0 != (temp_v0_2 + 0x1C00));
    temp_v0_2->unk1BE8 = 0;
    arg0->unkC2D0 = (void *) arg0->unkC2D0->unk4;
}

void putMemNode(void *arg0, void *arg1) {
    arg1->unk4 = (void *) arg0->unkC2D0;
    arg0->unkC2D0 = arg1;
}

/*
Decompilation failure in function releaseMemBank:

Cannot find branch target sizeNoGreaterPriorityInterval
*/

? *addFreeBank(void *arg0, s64 arg1, s32 arg2) {
    s64 sp0;
    ? *temp_s3;
    ? *temp_v0;
    ? *var_s1;
    void *temp_t8;

    temp_t8 = arg0 + (arg1 * 0xC0);
    sp0 = temp_t8 + 0x10000;
    temp_s3 = *temp_t8->unkC1D0;
    var_s1 = temp_s3;
    if (temp_s3->unk8 != -1) {
        temp_v0 = stealNoGreaterPriorityBank();
        temp_s3->unk4 = temp_v0;
        temp_v0->unk0 = temp_s3;
        temp_v0->unk4 = (? **) sp0->unk-3E30;
        *sp0->unk-3E30 = temp_v0;
        temp_v0->unk8 = -1;
        temp_v0->unk10 = arg2;
        var_s1 = temp_v0;
        temp_v0->unkC = (s32) arg0->unkC2B8;
    } else {
        findFreeBank((s64) temp_s3);
        temp_s3->unk10 = (s32) (temp_s3->unk10 + arg2);
    }
    sizeNoGreaterPriorityInterval(arg0, arg1, var_s1, 2);
    return var_s1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c], gap at: 0x10. */
void getFreeBank(void *arg0, s64 arg1, ? *arg2, s32 arg3, s64 arg4) {
    ? *temp_s5;
    ? *temp_v0_4;
    ? *temp_v0_5;
    ? *var_s2;
    s32 temp_s1;
    s32 temp_t9;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s4;
    s64 temp_t8;
    s64 temp_v0_2;
    s64 var_s0;
    void *temp_a4;
    void *temp_a7;
    void *temp_s0;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_6;
    void *temp_v1;

    unksp60 = arg1;
    unksp30 = (s64) arg2;
    unksp38 = arg4;
    unksp10 = (s64) *arg2;
    temp_v0 = arg0 + (arg1 * 0xC0);
    temp_v0_2 = temp_v0 + 0x10000;
    var_s2 = arg2;
    if (temp_v0->unkC148 == 0) {
        var_s1 = 0;
        var_s0 = temp_v0_2;
        if (unksp38->unk8 > 0) {
            unksp8 = temp_v0_2;
loop_21:
            if (inInterval((void *) unksp30, (s64) arg3, var_s0->unk-3ED0) != 0) {
                goto block_22;
            }
            if (inInterval(var_s0->unk-3ED0, (s64) var_s0->unk-3EC4, (void *) unksp30) == 0) {
                var_s1 += 1;
                var_s0 += 4;
                if (var_s1 >= unksp38->unk8) {

                } else {
                    goto loop_21;
                }
            } else {
block_22:
                unksp8->unk-3EB8 = 1;
            }
        }
    }
    var_s1_2 = 0;
    if (arg3 > 0) {
        unksp40 = arg0 + 0x10000;
        var_s4 = -1;
        unksp58 = unksp60 * 4;
        temp_t8 = unksp60 == 0;
        unksp50 = temp_t8;
        unksp48 = temp_t8 * 4;
loop_9:
        temp_s0 = var_s2->unk14;
        temp_s5 = var_s2;
        if (var_s2->unk8 != -1) {
            if (temp_s0->unk20 & 0x100000) {
                temp_a7 = temp_s0->unk124;
                temp_v0_3 = temp_s0->unk128;
                if (temp_a7 == NULL) {
                    unksp40->unk-3D50 = temp_v0_3;
                    if (temp_v0_3 == NULL) {

                    } else {
                        goto block_4;
                    }
                } else {
                    temp_a7->unk128 = temp_v0_3;
                    if (temp_v0_3 != NULL) {
block_4:
                        temp_v0_3->unk124 = temp_a7;
                    }
                }
                temp_s0->unk20 = (s32) (temp_s0->unk20 & 0xFFEFFFFF);
            }
            temp_a4 = unksp58 + temp_s0;
            temp_a4->unk108 = 0;
            if (__glKonFreeAllocedTexObjBank(arg0, temp_s0, temp_s0->unk11C != unksp60, unksp60, temp_a4) != 0) {
                temp_s2 = unksp48 + temp_s0;
                stealNoGreaterPriorityBank(arg0, unksp50, temp_s2->unk108);
                temp_s2->unk108 = 0;
            }
        } else {
            findFreeBank((s64) arg0, unksp60, (s32) var_s2);
        }
        temp_t9 = temp_s5->unk8;
        var_s4 = (var_s4 < temp_t9) ? temp_t9 : var_s4;
        var_s1_2 += temp_s5->unk10;
        var_s2 = temp_s5->unk4;
        stealNoGreaterPriorityBank(arg0, (s64) temp_s5);
        if (var_s1_2 < arg3) {
            goto loop_9;
        }
    } else {
        var_s4 = -1;
        var_s1_2 = 0;
        unksp58 = unksp60 * 4;
    }
    temp_v0_4 = stealNoGreaterPriorityBank(arg0);
    unksp10->unk4 = temp_v0_4;
    temp_v0_4->unk0 = (? *) unksp10;
    temp_v0_4->unk8 = (s32) unksp38->unk8;
    temp_s1 = var_s1_2 - arg3;
    temp_v0_4->unk14 = (s32) unksp38;
    temp_v0_4->unk10 = arg3;
    temp_v0_4->unkC = (s32) unksp30->unkC;
    if (temp_s1 > 0) {
        if (var_s2->unk8 != -1) {
            temp_v0_5 = stealNoGreaterPriorityBank(arg0);
            temp_v0_4->unk4 = temp_v0_5;
            temp_v0_5->unk8 = -1;
            temp_v0_5->unk4 = var_s2;
            temp_v0_5->unk0 = temp_v0_4;
            temp_v0_5->unk10 = temp_s1;
            temp_v0_5->unkC = (s32) (temp_v0_4->unkC + arg3);
            var_s2->unk0 = temp_v0_5;
            sizeNoGreaterPriorityInterval(arg0, unksp60, temp_v0_5, var_s4);
        } else {
            temp_v0_4->unk4 = var_s2;
            var_s2->unk0 = temp_v0_4;
            findFreeBank((s64) arg0, unksp60, (s32) var_s2);
            var_s2->unk10 = (s32) (var_s2->unk10 + temp_s1);
            var_s2->unkC = (s32) (temp_v0_4->unkC + arg3);
            sizeNoGreaterPriorityInterval(arg0, unksp60, var_s2, var_s4);
        }
        temp_v1 = unksp58 + unksp38;
        temp_v1->unk114 = (s32) temp_v0_4->unkC;
        temp_v1->unk108 = temp_v0_4;
        return;
    }
    temp_v0_4->unk4 = var_s2;
    var_s2->unk0 = temp_v0_4;
    temp_v0_6 = unksp58 + unksp38;
    temp_v0_6->unk114 = (s32) temp_v0_4->unkC;
    temp_v0_6->unk108 = temp_v0_4;
}

s32 __glKonTexAlloc(void *arg0, void *arg1, s64 arg2) {
    s64 sp90;
    s64 sp88;
    s64 sp60;
    s64 sp28;
    s64 sp18;
    s64 sp10;
    s32 sp8;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *var_s1_2;
    s32 *var_s7;
    s32 *var_s8;
    s32 *var_v0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a5;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s32 var_t0;
    s32 var_t1;
    s32 var_t3;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a3_4;
    s64 temp_t9_2;
    s64 temp_v0_4;
    s64 var_a1;
    s64 var_a2;
    s64 var_a4;
    s64 var_a7;
    void *temp_a0;
    void *temp_a3_2;
    void *temp_gp;
    void *temp_t1;
    void *temp_v0_7;
    void *var_a1_3;
    void *var_a2_2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x119BF8;
    sp60 = arg2;
    inInterval(NULL);
    inInterval(arg0, 1);
    temp_s2 = sp60 & 2;
    if (temp_s2 != 0) {
        var_s0 = arg1->unk11C;
        var_a1 = var_s0 == 0;
        temp_a3 = var_a1 * 4;
        var_v0 = temp_a3 + sp;
        if (arg1->unk108 != 0) {
            temp_ra = var_s0 * 4;
            *var_v0 = 0;
            *(temp_ra + sp) = *(temp_ra + arg1);
        } else if (arg1->unk10C != 0) {
            *var_v0 = *(temp_a3 + arg1);
            *(sp + (var_s0 * 4)) = 0;
        }
    } else {
        var_s0 = (arg0->unkC1CC >= arg0->unkC28C) == (arg1->unk0 >= arg1->unk4);
        var_a1 = var_s0 == 0;
        var_v0 = sp + (var_a1 * 4);
    }
    var_s1 = *var_v0;
    var_s7 = NULL;
    if (arg0->unkC1C8->unk10 >= var_s1) {
        var_s4 = *(sp + (var_s0 * 4));
        var_s7 = NULL;
        if (arg0->unkC288->unk10 < var_s4) {
            goto block_6;
        }
        sp10 = var_a1;
        var_s8 = findFreeBank((s64) arg0, 0, var_s1);
        temp_v0 = findFreeBank((s64) arg0, 1, var_s4);
        var_s7 = temp_v0;
        if (var_s8->unk10 == var_s1) {
            var_v0_2 = 0;
            if (temp_v0->unk10 == var_s4) {
                var_v0_2 = 1;
            }
        } else {
            var_v0_2 = 0;
        }
        sp90 = (s64) var_s0;
        if (var_v0_2 == 0) {
            var_a1 = sp10;
            goto block_7;
        }
        goto block_12;
    }
block_6:
    var_s8 = NULL;
block_7:
    if (temp_s2 != 0) {
        goto block_8;
    }
    temp_s4 = *(sp + (var_s0 * 4));
    if (arg0->unkC1C8->unk10 >= temp_s4) {
        sp10 = var_a1;
        if (arg0->unkC288->unk10 >= var_s1) {
            sp88 = findFreeBank((s64) arg0, 0, temp_s4);
            temp_v0_2 = findFreeBank((s64) arg0, 1, var_s1);
            if ((sp88->unk10 == temp_s4) && (temp_v0_2->unk10 == var_s1)) {
                sp90 = sp10;
                var_s8 = (s32 *) sp88;
                var_s4 = *((sp10 * 4) + sp);
                var_s1_2 = ((sp10 == 0) * 4) + sp;
                var_s7 = temp_v0_2;
                goto block_11;
            }
            if ((var_s8 == NULL) || (var_s7 == NULL)) {
                var_s8 = (s32 *) sp88;
                var_s0 = (s32) sp10;
                var_s7 = temp_v0_2;
            }
            goto block_8;
        }
    }
block_8:
    if ((var_s8 != NULL) && (var_s7 != NULL)) {
        sp90 = (s64) var_s0;
        var_s4 = *((var_s0 * 4) + sp);
        var_s1_2 = ((var_s0 == 0) * 4) + sp;
        goto block_11;
    }
    var_a7 = var_s0 == 0;
    if (arg1->unk8 != 0) {
        goto block_27;
    }
    var_a7 = var_s0 == 0;
    if (!(sp60 & 1)) {
        /* Duplicate return node #23. Try simplifying control flow for better match */
        return -1;
    }
block_27:
    temp_a1 = arg0->unkC13C;
    temp_v0_3 = *((var_a7 * 4) + sp);
    var_a2 = temp_a1 < temp_v0_3;
    var_a4 = var_a7;
    var_s4 = *((var_s0 * 4) + sp);
    var_s1 = temp_v0_3;
    if ((var_a2 != 0) || (sp90 = (s64) var_s0, ((arg0->unkC1FC < var_s4) != 0))) {
        if (temp_s2 != 0) {
            goto block_30;
        }
        if ((temp_a1 >= var_s4) && (arg0->unkC1FC >= temp_v0_3)) {
            sp90 = var_a7;
            var_s1_2 = sp + ((var_a7 == 0) * 4);
            var_s4 = temp_v0_3;
            goto block_11;
        }
block_30:
        temp_t1 = *arg0->unkC1D0;
        temp_a3_2 = *arg0->unkC290;
        temp_a1_2 = temp_a3_2->unk8;
        if (temp_t1->unk8 != -1) {
            var_t0 = 0;
            if (temp_a1_2 != -1) {
                var_a1_2 = 0;
            } else {
                var_a1_2 = temp_a3_2->unk10;
            }
            temp_t8 = var_s4 - var_a1_2;
            var_a3 = (temp_t8 >= temp_v0_3) ? temp_t8 : temp_v0_3;
            if (temp_s2 == 0) {
                var_t1 = temp_v0_3 - var_a1_2;
                var_t3 = var_s4;
                if (var_t1 < var_s4) {
                    goto block_87;
                }
                goto block_84;
            }
        } else {
            var_t0 = temp_t1->unk10;
            if (temp_a1_2 != -1) {
                var_a1_2 = 0;
            } else {
                var_a1_2 = temp_a3_2->unk10;
            }
            temp_a3_3 = temp_v0_3 - var_t0;
            temp_t9 = var_s4 - var_a1_2;
            var_a3 = (temp_t9 >= temp_a3_3) ? temp_t9 : temp_a3_3;
            if (temp_s2 == 0) {
                var_t1 = temp_v0_3 - var_a1_2;
                var_t3 = var_s4 - var_t0;
                if (var_t1 < var_t3) {
block_87:
                    var_t1 = var_t3;
                }
block_84:
                if (var_t1 < var_a3) {
                    var_a4 = var_a7 == 0;
                    var_s1 = *(sp + (var_a4 * 4));
                    var_s0 = (s32) var_a7;
                    var_s4 = temp_v0_3;
                    temp_a3_4 = temp_v0_3 - var_t0;
                    var_a2 = var_s1 - var_a1_2;
                    var_a3 = (s32) ((var_a2 >= temp_a3_4) ? var_a2 : temp_a3_4);
                }
            }
        }
        temp_v0_4 = arg0->unkC2B4 - arg0->unkC2B8;
        if (temp_v0_4 & 0x3FF) {
            sp28 = temp_v0_4;
            fprintf(&__iob + 0x20, &__rodata0 - 0x1160, (s32) sp28, 0x400, var_a4);
            return -1;
        }
        temp_t9_2 = (var_a3 + 0x3FF) & ~0x3FF;
        sp18 = temp_t9_2;
        if (temp_v0_4 < temp_t9_2) {
            sp28 = temp_v0_4;
            sp10 = var_a4;
            if (temp_v0_4 != 0) {
                if (__glkonle_TexSubImage3DEXT((s32) arg0, (void *) sp28, var_a2, var_a3, var_a4) >= 0) {
                    stealNoGreaterPriorityBank(arg0, 0, (s32) sp28);
                    stealNoGreaterPriorityBank(arg0, 1, (s32) sp28);
                    arg0->unkC2B8 = (s32) (arg0->unkC2B8 + sp28);
                    goto block_49;
                }
                fprintf(&__iob + 0x20, &__rodata0 - 0x1120);
                /* Duplicate return node #23. Try simplifying control flow for better match */
                return -1;
            }
block_49:
            inInterval(arg0, 0);
            inInterval(arg0, 1);
            var_v0_3 = 3;
            if (sp60 & 1) {
                sp90 = (s64) var_s0;
                goto block_51;
            }
            var_v0_3 = arg1->unk8;
            sp90 = (s64) var_s0;
            if (var_v0_3 <= 0) {
                /* Duplicate return node #74. Try simplifying control flow for better match */
                return -1;
            }
block_51:
            var_s0_2 = 0;
            var_a1_3 = arg0 + 0x10000;
            var_a2_2 = arg0 + (var_v0_3 * 4);
            temp_a0 = var_a2_2 + 0x10000;
loop_62:
            temp_a3_5 = var_a1_3->unk-3EC4;
            temp_a5 = temp_a3_5 < var_s1;
            if ((temp_a5 == 0) && (var_a1_3->unk-3E04 >= var_s4)) {
                var_a0 = temp_gp->unk-4070;
                sp8 = var_s0_2;
                if (var_a0 == -1) {
                    temp_v0_5 = getenv(&__rodata0 - 0x1238, var_a1_3, (s32) var_a2_2, temp_a3_5);
                    var_a0 = temp_v0_5;
                    temp_gp->unk-4070 = temp_v0_5;
                }
                if (var_a0 != 0) {
                    fprintf(&__iob + 0x20, &__rodata0 - 0x10E8, var_s0_2);
                }
                goto block_12;
            }
            var_a2_2 = (void *) (temp_a3_5 < var_s4);
            if (temp_s2 != 0) {
                goto block_60;
            }
            if (var_a2_2 == NULL) {
                temp_a3_6 = var_a1_3->unk-3E04 < var_s1;
                var_a1_3 += 4;
                if (temp_a3_6 == 0) {
                    var_a0_2 = temp_gp->unk-406C;
                    sp8 = var_s0_2;
                    if (var_a0_2 == -1) {
                        temp_v0_6 = getenv(&__rodata0 - 0x1238, var_a1_3, (s32) var_a2_2, temp_a3_6, -1, temp_a5);
                        var_a0_2 = temp_v0_6;
                        temp_gp->unk-406C = temp_v0_6;
                    }
                    if (var_a0_2 != 0) {
                        fprintf(&__iob + 0x20, &__rodata0 - 0x10E8, var_s0_2);
                    }
                    sp90 = sp10;
                    var_s4 = *((sp10 * 4) + sp);
                    var_s1_2 = ((sp10 == 0) * 4) + sp;
block_11:
                    var_s1 = *var_s1_2;
                    goto block_12;
                }
                goto block_61;
            }
block_60:
            var_a1_3 += 4;
block_61:
            var_s0_2 += 1;
            if (var_a1_3 != temp_a0) {
                goto loop_62;
            }
            return -1;
        }
        if (__glkonle_TexSubImage3DEXT((s32) arg0, (void *) sp18, var_a2, var_a3, var_a4) >= 0) {
            var_s8 = stealNoGreaterPriorityBank(arg0, 0, (s32) sp18);
            var_s7 = stealNoGreaterPriorityBank(arg0, 1, (s32) sp18);
            sp90 = (s64) var_s0;
            arg0->unkC2B8 = (s32) (arg0->unkC2B8 + sp18);
            goto block_12;
        }
        fprintf(&__iob + 0x20, &__rodata0 - 0x1120);
        return -1;
    }
block_12:
    arg1->unk124 = 0;
    arg1->unk128 = (void *) arg0->unkC2B0;
    temp_v0_7 = arg0->unkC2B0;
    if (temp_v0_7 != NULL) {
        temp_v0_7->unk124 = arg1;
    }
    arg0->unkC2B0 = arg1;
    if ((var_s8 != NULL) && (var_s7 != NULL)) {
        var_s2 = 0;
        if (var_s1 != 0) {
            goto block_17;
        }
    } else {
        var_s2 = 1;
        if (var_s1 != 0) {
            var_s8 = stealNoGreaterPriorityBank(arg0, 0, sp8, (s64) var_s1);
block_17:
            stealNoGreaterPriorityBank(arg0, 0, (s32) var_s8, (s64) var_s1, arg1);
        }
    }
    if (var_s4 != 0) {
        if (var_s2 != 0) {
            var_s7 = stealNoGreaterPriorityBank(arg0, 1, sp8, (s64) var_s4);
        }
        stealNoGreaterPriorityBank(arg0, 1, (s32) var_s7, (s64) var_s4, arg1);
    }
    arg1->unk11C = (s32) sp90;
    arg1->unk20 = (s32) (arg1->unk20 | 0x100000);
    return 0;
}

s32 __glKonTexFree(void *arg0, void *arg1) {
    s64 sp0;
    s32 temp_a2_2;
    s32 temp_a2_3;
    void *temp_a1;
    void *temp_a2;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d977d50
    if (M2C_ERROR()) {
        temp_a2 = arg1->unk124;
        temp_a1 = arg1->unk128;
        if (temp_a2 != NULL) {
            temp_a2->unk128 = temp_a1;
            if (temp_a1 == NULL) {

            } else {
                goto block_5;
            }
        } else {
            arg0->unkC2B0 = temp_a1;
            if (temp_a1 != NULL) {
block_5:
                temp_a1->unk124 = temp_a2;
            }
        }
        arg1->unk20 = (s32) (arg1->unk20 & 0xFFEFFFFF);
    }
    temp_a2_2 = arg1->unk108;
    if (temp_a2_2 != 0) {
        sp0 = (s64) arg0;
        stealNoGreaterPriorityBank(arg0, 0, temp_a2_2);
        arg1->unk108 = 0;
    }
    temp_a2_3 = arg1->unk10C;
    if (temp_a2_3 != 0) {
        stealNoGreaterPriorityBank(arg0, 1, temp_a2_3);
        arg1->unk10C = 0;
        return 0;
    }
    return 0;
}

void __glKonTexUpdatePriority(s32 arg0, void *arg1, s32 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a4;
    s32 temp_at;
    s32 temp_v0;
    s32 var_s3;
    s64 temp_ra;
    void *temp_a1;
    void *temp_a1_2;
    void *var_s0;
    void *var_s0_2;
    void *var_s1;
    void *var_s1_2;
    void *var_s2;
    void *var_s3_2;

    temp_a4 = arg1->unk8;
    var_s2 = arg0 + 0xC130;
    if (temp_a4 != arg2) {
        if (temp_a4 < arg2) {
            sp8 = (s64) (arg1 + 8);
            var_s0 = arg1;
            var_s3 = (arg2 * 4) + var_s2;
            do {
                temp_a1 = var_s0->unk108;
                if (temp_a1 != NULL) {
                    temp_a1->unk8 = arg2;
                    if (var_s2->unk18 == 0) {
                        temp_at = arg1->unk8;
                        sp0 = (s64) temp_at;
                        if (temp_at < arg2) {
                            var_s1 = var_s2 + (sp0 * 4);
loop_17:
                            var_s1 += 4;
                            if (inInterval(var_s1->unk0, (s64) var_s1->unkC, var_s0->unk108) == 0) {
                                if (var_s1 == var_s3) {

                                } else {
                                    goto loop_17;
                                }
                            } else {
                                var_s2->unk18 = 1;
                            }
                        }
                    }
                }
                var_s0 += 4;
                var_s3 += 0xC0;
                var_s2 += 0xC0;
            } while (var_s0 != sp8);
        } else {
            sp8 = (s64) (arg1 + 8);
            var_s0_2 = arg1;
            var_s3_2 = (arg2 * 4) + var_s2;
            do {
                temp_a1_2 = var_s0_2->unk108;
                if (temp_a1_2 != NULL) {
                    temp_a1_2->unk8 = arg2;
                    if (var_s2->unk18 == 0) {
                        var_s1_2 = var_s3_2;
                        sp0 = (s64) arg2;
                        if (arg2 < arg1->unk8) {
loop_23:
                            temp_v0 = var_s1_2->unkC < sizeNoGreaterPriorityInterval(var_s0_2->unk108, sp0, var_s2->unkA0);
                            var_s1_2 += 4;
                            temp_ra = sp0 + 1;
                            if (temp_v0 != 0) {
                                var_s2->unk18 = 1;
                            } else {
                                sp0 = temp_ra;
                                if (temp_ra < arg1->unk8) {
                                    goto loop_23;
                                }
                            }
                        }
                    }
                }
                var_s0_2 += 4;
                var_s3_2 += 0xC0;
                var_s2 += 0xC0;
            } while (var_s0_2 != sp8);
        }
        arg1->unk8 = arg2;
    }
}

void __glKonInitTextureMemory(void *arg0, s32 arg1) {
    s32 temp_a4;
    s32 temp_a7;

    temp_a4 = arg0 + 0xC1D4;
    arg0->unkC2B4 = arg1;
    arg0->unkC2AC = 0;
    arg0->unkC2A8 = 0;
    arg0->unkC2A0 = 0;
    arg0->unkC2A4 = 0;
    arg0->unkC29C = -2;
    temp_a7 = temp_a4 + 0xC0;
    arg0->unkC1F8 = temp_a7;
    arg0->unkC20C = temp_a7;
    arg0->unkC288 = temp_a7;
    arg0->unkC298 = temp_a7;
    arg0->unkC294 = temp_a7;
    arg0->unkC290 = temp_a7;
    arg0->unkC284 = 1;
    arg0->unkC1EC = 0;
    arg0->unkC1E8 = 0;
    arg0->unkC1E0 = 0;
    arg0->unkC1E4 = 0;
    arg0->unkC1DC = -2;
    arg0->unkC138 = temp_a4;
    arg0->unkC14C = temp_a4;
    arg0->unkC1C8 = temp_a4;
    arg0->unkC1D8 = temp_a4;
    arg0->unkC1D4 = temp_a4;
    arg0->unkC1D0 = temp_a4;
    arg0->unkC1C4 = 1;
}

void __glKonFreeTextureMemory(void *arg0, void *arg1, s32 arg2) {
    s32 var_a2;
    s32 var_s0;
    s32 var_s2;

    var_a2 = arg2;
    if (arg1->unkC2CC > 0) {
        var_s0 = 0;
        var_s2 = 0;
        do {
            arg0->unkC(arg0, *(arg1->unkC2C8 + var_s0), var_a2);
            var_s2 += 1;
            var_a2 = var_s2 < arg1->unkC2CC;
            var_s0 += 4;
        } while (var_a2 != 0);
    }
    arg0->unkC(arg0, arg1->unkC2C8, var_a2);
}
