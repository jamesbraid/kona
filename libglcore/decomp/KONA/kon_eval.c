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
Error occurred while processing instruction: bgez $at, .L0d980278

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
Error occurred while processing instruction: bgez $at, .L0d980278

void *__glSetError(void *, void *, s32, s32, void *, s32); /* extern */
? __glkon_GetDeformationd(s32, s32, s32, s32, s32); /* extern */
? __glkon_GetDeformationf(s32, s32, s32, s32, s32); /* extern */
? __glkon_GetDeformationi(s32, s32, s32, s32, s32); /* extern */
? glColor4fv(s64, s64, s64, s64, s64, s64, s64, s64); /* extern */
? glIndexfv(s64, s64, s64, s64, s64, s64, s64, s64); /* extern */
? glNormal3fv(s64);                                 /* extern */
? glTexCoord3fv(s64, ?);                            /* extern */
? glTexCoord4fv(s64);                               /* extern */
? glVertex3fv(s64);                                 /* extern */
? glVertex4fv(s64);                                 /* extern */
? sub_0d980000(s64);                                /* extern */
? __glKonEvalDisable(void *, ? *, s64, s64, s64, s64, s64, void *); /* static */
extern ? __rodata0;

/*
Decompilation failure in function __glKonEvalEnable:

Unable to determine jump table for jr instruction at kon_eval.s line 30.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glKonEvalDisable:

Unable to determine jump table for jr instruction at kon_eval.s line 311.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function changebasis:

Unable to determine jump table for jr instruction at kon_eval.s line 645.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void EvalV(s32 arg0, void *arg1, f32 *arg3, f32 fparg2) {
    f32 *var_a3;
    f32 *var_t3;
    s32 temp_a4;
    s32 temp_v1;
    s32 var_a6;
    s32 var_t0;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t8;
    s32 var_t8_2;

    var_a3 = arg3;
    temp_a4 = arg1->unk4;
    if (arg1->unkC != 1) {
        if (arg1->unk24 == fparg2) {

        }
        if (temp_a4 > 0) {
            var_t8 = 0;
loop_9:
            if (arg1->unk8 > 0) {
                var_t3 = var_a3;
                var_t2 = 0;
loop_16:
                var_t0 = arg1->unkC;
                var_t2 += 1;
                if (!(var_t0 & 1)) {
                    var_t0 -= 1;
                }
                var_a6 = var_t0 - 1;
                if (var_t0 >= 2) {
                    do {
                        M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f5, $f4 */);
                        var_a6 -= 2;
                        M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f7 */);
                    } while (var_a6 > 0);
                }
                *var_t3 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f6 */);
                var_t3 += 4;
                if (var_t2 < arg1->unk8) {
                    goto loop_16;
                }
            }
            var_t8 += 1;
            var_a3 += arg1->unk8 * 4;
            if (var_t8 < arg1->unk4) {
                goto loop_9;
            }
        }
    } else if (temp_a4 > 0) {
        var_t8_2 = 0;
        do {
            var_t2_2 = 0;
            if (arg1->unk8 > 0) {
                do {
                    temp_v1 = (var_t2_2 + (arg1->unk8 * var_t8_2)) * 4;
                    *(temp_v1 + var_a3) = *(temp_v1 + arg0);
                    var_t2_2 += 1;
                } while (var_t2_2 < arg1->unk8);
            }
            var_t8_2 += 1;
        } while (var_t8_2 < arg1->unk4);
    }
}

void EvalU(f32 *arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5) {
    f32 *var_a2;
    f32 *var_a4;
    f32 *var_t0;
    f32 var_f4;
    s32 temp_a7;
    s32 temp_t9;
    s32 var_a3;
    s32 var_t1;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_v1;

    var_a3 = arg3;
    if (arg1->unk8 != 1) {
        if (arg4 > 0) {
            var_t8 = 0;
            temp_t9 = var_a3 + arg4;
loop_5:
            var_t0 = arg0;
            if (arg2->unkC == var_a3) {
                var_f4 = arg2->unk4;
            } else {
                var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
            }
            if (arg1->unk18 == var_f4) {

            }
            if (arg1->unk4 > 0) {
                var_t3 = 0;
                var_v1 = arg1->unk8 & 1;
loop_17:
                var_t1 = arg1->unk8;
                if (var_v1 == 0) {
                    var_t1 = arg1->unk8 - 1;
                }
                if (var_t1 >= 2) {
                    var_a4 = var_t0 + (var_t1 * 4);
                    do {
                        M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f5, $f4 */);
                        var_a4 -= 8;
                        M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f7 */);
                    } while ((u32) (var_t0 + 4) < (u32) var_a4);
                }
                *(arg5 + ((var_t3 + (arg1->unk4 * var_t8)) * 4)) = M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f6 */);
                var_t3 += 1;
                temp_a7 = arg1->unk8;
                var_v1 = temp_a7 & 1;
                var_t0 += temp_a7 * 4;
                if (var_t3 < arg1->unk4) {
                    goto loop_17;
                }
            }
            var_a3 += 1;
            var_t8 += 1;
            if (var_a3 != temp_t9) {
                goto loop_5;
            }
        }
    } else if (arg4 > 0) {
        var_t8_2 = 0;
        do {
            var_a2 = arg0;
            if (arg1->unk4 > 0) {
                var_t3_2 = 0;
                do {
                    *(arg5 + ((var_t3_2 + (arg1->unk4 * var_t8_2)) * 4)) = *var_a2;
                    var_t3_2 += 1;
                    var_a2 += 4;
                } while (var_t3_2 < arg1->unk4);
            }
            var_t8_2 += 1;
        } while (arg4 != var_t8_2);
    }
}

void EvalVdV(f32 *arg0, void *arg1, f32 *arg3, f32 *arg4, f32 fparg2) {
    f32 *var_a0;
    f32 *var_a3;
    f32 *var_a4;
    f32 *var_t8;
    f32 *var_t9;
    f32 var_f4;
    f32 var_f5;
    s32 temp_v1;
    s32 var_a6;
    s32 var_ra;
    s32 var_t1;
    s32 var_t3;

    var_a0 = arg0;
    var_a3 = arg3;
    var_a4 = arg4;
    if (arg1->unk24 == fparg2) {

    }
    if (arg1->unk4 > 0) {
        var_ra = 0;
loop_8:
        var_t9 = var_a3;
        if (arg1->unk8 > 0) {
            var_t8 = var_a4;
            var_t3 = 0;
loop_15:
            var_t1 = arg1->unkC;
            var_t3 += 1;
            var_f4 = 0.0f;
            if (!(var_t1 & 1)) {
                var_t1 -= 1;
                var_f4 = *(var_a0 + (arg1->unk8 * var_t1 * 4));
            }
            var_a6 = var_t1 - 1;
            var_f5 = var_f4;
            if (var_t1 >= 2) {
                do {
                    M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f7, $f4 */);
                    M2C_ERROR(/* unknown instruction: msub.s $f5, $f8, $f6, $f5 */);
                    var_a6 -= 2;
                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                    var_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f4, $f7, $f5 */);
                } while (var_a6 > 0);
            }
            *var_t9 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f6 */);
            *var_t8 = var_f5 - *var_a0;
            var_t9 += 4;
            var_t8 += 4;
            var_a0 += 4;
            if (var_t3 < arg1->unk8) {
                goto loop_15;
            }
        }
        temp_v1 = arg1->unk8 * 4;
        var_a4 += temp_v1;
        var_ra += 1;
        var_a3 += temp_v1;
        var_a0 += arg1->unk8 * (arg1->unkC - 1) * 4;
        if (var_ra < arg1->unk4) {
            goto loop_8;
        }
    }
}

void EvalUdU(s64 arg0, s64 arg1, void *arg2, void *arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 *var_s1;
    f32 *var_t1;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    s32 temp_a5;
    s32 var_a0;
    s32 var_s2;
    s32 var_s4;
    s32 var_s6;
    s32 var_t9;
    s64 var_t8;
    void *var_s0;
    void *var_s0_2;
    void *var_s7;

    sp90 = arg0;
    sp80 = arg1;
    sp88 = (s64) *(s32 *)0x1010;
    var_s0 = arg3;
    if (arg5 > 0) {
        var_s6 = arg4;
        var_s4 = 0;
        var_s7 = arg7;
        sp78 = arg4 + arg5;
loop_5:
        var_t8 = sp90;
        if (var_s0->unkC == var_s6) {
            var_f4 = var_s0->unk4;
        } else {
            var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
        }
        if (arg2->unk18 == var_f4) {

        }
        if (arg2->unk4 > 0) {
            var_s1 = &sp10;
            sp98 = (s64) var_s0;
            var_s0_2 = sp;
            var_s2 = 0;
            var_a0 = arg2->unk8 & 1;
loop_17:
            var_f4_2 = 0.0f;
            var_s0_2 += 4;
            var_t9 = arg2->unk8;
            if (var_a0 == 0) {
                var_t9 = arg2->unk8 - 1;
                var_f4_2 = *((var_t9 * 4) + var_t8);
            }
            var_f5 = var_f4_2;
            var_t1 = (var_t9 * 4) + var_t8;
            if (var_t9 >= 2) {
                do {
                    M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f8, $f4 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f8, $f6 */);
                    var_t1 -= 8;
                    M2C_ERROR(/* unknown instruction: msub.s $f5, $f10, $f7, $f5 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f10 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f9 */);
                    var_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f4, $f8, $f5 */);
                } while ((u32) (var_t8 + 4) < (u32) var_t1);
            }
            *(arg6 + ((var_s2 + (arg2->unk4 * var_s4)) * 4)) = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f7 */);
            temp_a5 = arg2->unk8;
            var_s1 += 4;
            var_s2 += 1;
            var_a0 = temp_a5 & 1;
            var_s0_2->unk-4 = (f32) (var_f5 - *var_t8);
            var_t8 += temp_a5 * 4;
            var_s1->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f13, $f7 */);
            if (var_s2 < arg2->unk4) {
                goto loop_17;
            }
            var_s0 = (void *) sp98;
        }
        if (arg2->unk4 == 4) {
            sp18 = M2C_ERROR(/* unknown instruction: msub.s $f6, $f27, $f17, $f6 */);
            sp14 = M2C_ERROR(/* unknown instruction: msub.s $f7, $f25, $f17, $f7 */);
            sp10 = M2C_ERROR(/* unknown instruction: msub.s $f9, $f23, $f17, $f9 */);
            sp8 = M2C_ERROR(/* unknown instruction: msub.s $f8, $f21, $f17, $f8 */);
            sp4 = M2C_ERROR(/* unknown instruction: msub.s $f5, $f19, $f17, $f5 */);
            sp0 = M2C_ERROR(/* unknown instruction: msub.s $f4, $f16, $f17, $f4 */);
        }
        var_s7->unk8 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f4, $f7 */);
        var_s7->unk4 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f9, $f8 */);
        var_s7->unk0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f6, $f5 */);
        sp88->unk2EB8(var_s7, var_s7);
        var_s6 += 1;
        var_s7 += 0xC;
        var_s4 += 1;
        if (var_s6 != sp78) {
            goto loop_5;
        }
    }
}

void EvalRow1D(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_s0;
    ? *temp_s3;
    ? *temp_s4_2;
    s32 temp_a2;
    s32 var_s8;
    s64 temp_a5;
    s64 temp_at;
    s64 temp_v0;
    s64 var_s2;
    s64 var_s6;
    s64 var_s7;
    void *temp_s4;

    sp20 = arg1;
    sp18 = arg0;
    temp_s4 = *(void **)0x1010;
    sp50 = arg2;
    sp88 = (s64) temp_s4->unk8CA4;
    sp10 = (s64) temp_s4->unk8CB8;
    temp_s3 = temp_s4->unk8CB0;
    var_s2 = arg3;
    temp_s0 = temp_s4->unk8C98;
    temp_s4_2 = temp_s4->unk8C8C;
    sp0 = (s64) temp_s4->unk8CAC;
    sp8 = (s64) temp_s4->unk8CA0;
    __glKonEvalDisable(temp_s4->unk8C94, temp_s4_2, arg0, arg1, arg2, var_s2);
    if (sp88 != 0) {
        __glKonEvalDisable((void *) sp0, (? *) sp88, sp18, sp20, sp50, var_s2 + 0x2000);
    }
    if (temp_s0 != NULL) {
        __glKonEvalDisable((void *) sp8, temp_s0, sp18, sp20, sp50, var_s2 + 0x1000);
    }
    if (temp_s3 != NULL) {
        __glKonEvalDisable((void *) sp10, temp_s3, sp18, sp20, sp50, var_s2 + 0x3000);
    }
    temp_at = var_s2 + 0x3000;
    if (sp50 > 0) {
        temp_v0 = var_s2 + 0x1000;
        sp58 = 0;
        sp80 = var_s2;
        sp60 = temp_at;
        sp70 = temp_at;
        sp78 = temp_v0;
        sp68 = temp_at;
        var_s8 = var_s2 + 0x2000;
        var_s7 = temp_at;
        var_s6 = temp_v0;
loop_12:
        if (temp_s0 != NULL) {
            if (temp_s0->unk4 != 1) {
                glColor4fv(var_s6);
            } else {
                M2C_ERROR(/* Read from unset register $t9 */)(sp78);
            }
        }
        if (temp_s3 != NULL) {
            temp_a2 = temp_s3->unk4;
            switch (temp_a2) {                      /* irregular */
            default:
                sub_0d980000(var_s7);
                break;
            case 3:
                glTexCoord3fv(sp70);
                break;
            case 1:
                M2C_ERROR(/* Read from unset register $t9 */)(sp68);
                break;
            case 2:
                M2C_ERROR(/* Read from unset register $t9 */)(sp60);
                break;
            }
        }
        if (sp88 != 0) {
            M2C_ERROR(/* Read from unset register $t9 */)(var_s8);
        }
        if (temp_s4_2->unk4 != 3) {
            glVertex4fv(var_s2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(sp80);
        }
        sp70 += 0xC;
        sp80 += 0xC;
        temp_a5 = sp58 + 1;
        sp58 = temp_a5;
        var_s7 += 0x10;
        var_s6 += 0x10;
        var_s2 += 0x10;
        sp60 += 8;
        var_s8 += 0xC;
        sp68 += 4;
        sp78 += 4;
        if (sp50 != temp_a5) {
            goto loop_12;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x1e0, 0x1e4, 0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x228, 0x22c, 0x230, 0x234, 0x280, 0x284, 0x288, 0x28c, 0x290, 0x294], gap at: 0x1e8. */
void EvalRow2D(s64 arg1, s64 arg2, s64 arg3, s64 arg4, s32 arg5, f32 fparg0) {
    ? spF0;
    ? *temp_s0;
    ? *temp_s2;
    s32 temp_a2;
    s32 temp_t0;
    s64 temp_a6;
    s64 temp_at;
    s64 temp_v0;
    s64 var_s1;
    s64 var_s3;
    s64 var_s5;
    s64 var_s6;
    void *temp_a0;
    void *temp_s7;

    unksp238 = arg3;
    temp_s7 = *(void **)0x1010;
    temp_s2 = temp_s7->unk8EB8;
    temp_s0 = temp_s7->unk8EA0;
    temp_a2 = temp_s7->unk8EC0;
    unksp1F8 = (s64) temp_a2;
    unksp1E8 = (s64) temp_s7->unk8EB4;
    unksp1F0 = (s64) temp_s7->unk8EA8;
    unksp278 = (s64) temp_s7->unk8EAC;
    var_s1 = arg4;
    temp_a0 = temp_s7->unk8E9C;
    unksp240 = (s64) temp_s7->unk8E94;
    if (temp_s7->unk90AC != 0) {
        __glKonEvalDisable(temp_a0, (? *) unksp240, (s64) temp_a2, (s64) sp, (s64) &spF0, (bitwise s64) fparg0);
        __glKonEvalDisable(sp, &spF0, unksp240, arg1, arg2, unksp238, var_s1, var_s1 + 0x2000);
    } else {
        __glKonEvalDisable(temp_a0, (? *) unksp240, (s64) temp_a2, (s64) sp, (bitwise s64) fparg0);
        __glKonEvalDisable(sp, (? *) unksp240, arg1, arg2, unksp238, var_s1);
        if (unksp278 != 0) {
            __glKonEvalDisable((void *) unksp1E8, (? *) unksp278);
            __glKonEvalDisable(sp, (? *) unksp278, arg1, arg2, unksp238, var_s1 + 0x2000);
        }
    }
    if (temp_s0 != NULL) {
        __glKonEvalDisable((void *) unksp1F0, temp_s0);
        __glKonEvalDisable(sp, temp_s0, arg1, arg2, unksp238, var_s1 + 0x1000);
    }
    if (temp_s2 != NULL) {
        __glKonEvalDisable((void *) unksp1F8, temp_s2);
        __glKonEvalDisable(sp, temp_s2, arg1, arg2, unksp238, var_s1 + 0x3000);
    }
    if (arg5 != 0) {
        if (unksp238 > 0) {
            temp_v0 = var_s1 + 0x1000;
            unksp248 = 0;
            unksp270 = var_s1;
            temp_at = var_s1 + 0x3000;
            unksp250 = temp_at;
            var_s3 = var_s1 + 0x2000;
            unksp260 = temp_at;
            unksp268 = temp_v0;
            var_s5 = temp_v0;
            unksp258 = temp_at;
            var_s6 = temp_at;
loop_15:
            if (temp_s0 != NULL) {
                if (temp_s0->unk4 != 1) {
                    glColor4fv(var_s5);
                } else {
                    glIndexfv(unksp268);
                }
            }
            if (temp_s2 != NULL) {
                temp_t0 = temp_s2->unk4;
                switch (temp_t0) {                  /* irregular */
                default:
                    glTexCoord4fv(var_s6);
                    break;
                case 3:
                    glTexCoord3fv(unksp260);
                    break;
                case 1:
                    M2C_ERROR(/* Read from unset register $t9 */)(unksp258);
                    break;
                case 2:
                    M2C_ERROR(/* Read from unset register $t9 */)(unksp250);
                    break;
                }
            }
            if ((unksp278 != 0) || (temp_s7->unk90AC != 0)) {
                glNormal3fv(var_s3);
            }
            if (((void *) unksp240)->unk4 != 3) {
                glVertex4fv(var_s1);
            } else {
                glVertex3fv(unksp270);
            }
            unksp260 += 0xC;
            unksp270 += 0xC;
            temp_a6 = unksp248 + 1;
            unksp248 = temp_a6;
            var_s3 += 0xC;
            var_s6 += 0x10;
            var_s5 += 0x10;
            unksp250 += 8;
            var_s1 += 0x10;
            unksp258 += 4;
            unksp268 += 4;
            if (unksp238 != temp_a6) {
                goto loop_15;
            }
        }
    }
}

void Eval2Rows(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    ? (*temp_t9_2)(s64);
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_s7;
    s64 temp_at;
    s64 temp_ra;
    s64 temp_t9;
    s64 temp_v0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    s64 var_a4;
    s64 var_a5;
    s64 var_a6;
    s64 var_a7;
    s64 var_s5;
    s64 var_s6;
    s64 var_s8;
    void *temp_s0;
    void *temp_s1;
    void *temp_s3;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    sp20 = arg0;
    temp_s3 = *(void **)0x1010;
    temp_s1 = temp_s3->unk8EB8;
    temp_s7 = temp_s3->unk8EAC;
    temp_s0 = temp_s3->unk8EA0;
    temp_t9 = var_a1 + 0x3000;
    sp80 = (s64) temp_s3->unk8E94;
    if (arg0 > 0) {
        temp_v0 = var_a2 + 0x1000;
        sp28 = 0;
        sp70 = var_a1;
        sp78 = var_a2;
        temp_at = var_a2 + 0x3000;
        sp38 = temp_at;
        sp30 = temp_t9;
        temp_ra = var_a1 + 0x1000;
        spA0 = temp_ra;
        sp90 = temp_t9;
        sp98 = temp_v0;
        sp88 = temp_at;
        sp50 = temp_t9;
        spA8 = var_a1 + 0x2000;
        sp58 = temp_at;
        sp60 = temp_v0;
        sp48 = temp_at;
        sp68 = temp_ra;
        var_s6 = var_a1;
        var_s5 = var_a2;
        var_s8 = var_a2 + 0x2000;
        sp40 = temp_t9;
loop_23:
        if (temp_s0 != NULL) {
            if (temp_s0->unk4 != 1) {
                glColor4fv(sp98, var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
            } else {
                glIndexfv(sp60, var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
            }
        }
        if (temp_s1 != NULL) {
            temp_a4 = temp_s1->unk4;
            switch (temp_a4) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp88, 2);
                break;
            case 3:                                 /* switch 2 */
                glTexCoord3fv(sp58, 2);
                break;
            case 1:                                 /* switch 2 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp48, 2);
                break;
            case 2:                                 /* switch 2 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp38, 2);
                break;
            }
        }
        if ((temp_s7 != 0) || (temp_s3->unk90AC != 0)) {
            glNormal3fv(var_s8);
        }
        temp_t9_2 = ((void *) sp80)->unk4;
        if (temp_t9_2 != (? (*)(s64))3) {
            glVertex4fv(var_s5);
        } else {
            temp_t9_2(sp78);
        }
        if (temp_s0 != NULL) {
            if (temp_s0->unk4 != 1) {
                glColor4fv(spA0);
            } else {
                M2C_ERROR(/* Read from unset register $t9 */)(sp68);
            }
        }
        if (temp_s1 != NULL) {
            temp_a4_2 = temp_s1->unk4;
            switch (temp_a4_2) {                    /* switch 1; irregular */
            default:                                /* switch 1 */
                glTexCoord4fv(sp90);
                break;
            case 3:                                 /* switch 1 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp50);
                break;
            case 1:                                 /* switch 1 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp40);
                break;
            case 2:                                 /* switch 1 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp30);
                break;
            }
        }
        if ((temp_s7 != 0) || (temp_s3->unk90AC != 0)) {
            glNormal3fv(spA8);
        }
        if (((void *) sp80)->unk4 != 3) {
            glVertex4fv(var_s6);
        } else {
            glVertex3fv(sp70);
        }
        sp58 += 0xC;
        sp78 += 0xC;
        spA8 += 0xC;
        sp50 += 0xC;
        sp70 += 0xC;
        sp88 += 0x10;
        sp98 += 0x10;
        sp90 += 0x10;
        spA0 += 0x10;
        var_a7 = sp30 + 8;
        sp30 = var_a7;
        var_a6 = sp38 + 8;
        sp38 = var_a6;
        var_a5 = sp40 + 4;
        sp40 = var_a5;
        var_a1 = sp28 + 1;
        sp28 = var_a1;
        var_s8 += 0xC;
        var_s5 += 0x10;
        var_a4 = sp68 + 4;
        sp68 = var_a4;
        var_s6 += 0x10;
        var_a3 = sp48 + 4;
        sp48 = var_a3;
        var_a2 = sp60 + 4;
        sp60 = var_a2;
        if (sp20 != var_a1) {
            goto loop_23;
        }
    }
}

void __glKonEvalCoord1DHost(f32 fparg0) {
    ? sp10;

    __glKonEvalDisable(sp, NULL, 1, (s64) &sp10, (bitwise s64) fparg0, 0);
}

void __glKonEvalMesh1DHost(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_s0;
    s32 var_s2;
    s32 var_s2_2;
    void *temp_s1;
    void *var_s5;
    void *var_s5_2;

    temp_s1 = *(void **)0x1010;
    var_s0 = arg1;
    if ((temp_s1->unk798 != 0) && (arg2 >= arg1)) {
        if (arg0 != 0x1B00) {
            if (arg0 == 0x1B01) {
                var_s2 = var_s0 + 0x100;
                var_s5 = temp_s1 + 0x78C;
                if (arg2 >= var_s2) {
                    do {
                        temp_s1->unk17F4->unk1C(3);
                        __glKonEvalDisable(var_s5, (? *) var_s0, 0x100, (s64) sp);
                        temp_s1->unk17F4->unk2C();
                        var_s2 += 0xFF;
                        var_s0 += 0xFF;
                    } while (arg2 >= var_s2);
                } else {
                    var_s5 = temp_s1 + 0x78C;
                }
                temp_s1->unk17F4->unk1C(3);
                __glKonEvalDisable(var_s5, (? *) var_s0, (arg2 - var_s0) + 1, (s64) sp);
                temp_s1->unk17F4->unk2C();
            }
        } else {
            var_s2_2 = arg1 + 0x100;
            var_s5_2 = temp_s1 + 0x78C;
            if (arg2 >= var_s2_2) {
                do {
                    temp_s1->unk17F4->unk1C(0);
                    __glKonEvalDisable(var_s5_2, (? *) var_s0, 0x100, (s64) sp);
                    temp_s1->unk17F4->unk2C();
                    var_s2_2 += 0x100;
                    var_s0 += 0x100;
                } while (arg2 >= var_s2_2);
            } else {
                var_s5_2 = temp_s1 + 0x78C;
            }
            temp_s1->unk17F4->unk1C(0);
            __glKonEvalDisable(var_s5_2, (? *) var_s0, (arg2 - var_s0) + 1, (s64) sp);
            temp_s1->unk17F4->unk2C();
        }
    }
}

void __glKonEvalCoord2DHost(f32 fparg0, f32 fparg1) {
    ? sp10;

    __glKonEvalDisable(sp, NULL, 1, (s64) &sp10, 1, (bitwise s64) fparg1, (bitwise s64) fparg0, NULL);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x28, 0x2c, 0x38, 0x3c, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0xb8, 0xbc, 0xc0, 0xc4, 0xc8, 0xcc], gap at: 0x48. */
void __glKonEvalMesh2DHost(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0) {
    s64 sp10;
    ? *var_s2;
    ? *var_s2_2;
    ? *var_s2_3;
    ? *var_s2_4;
    ? *var_s4;
    ? *var_s4_2;
    ? *var_s4_3;
    ? *var_s4_4;
    s32 temp_a6;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_ra;
    s64 temp_t1;
    s64 temp_t3;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_f13;
    s64 var_f13_2;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s1_3;
    s64 var_s1_4;
    s64 var_s1_5;
    s64 var_s1_6;
    s64 var_s6;
    void *temp_s0;
    void *var_f12;
    void *var_f12_2;
    void *var_f12_3;
    void *var_f12_4;
    void *var_f20;
    void *var_f20_2;
    void *var_f20_3;
    void *var_f20_4;
    void *var_f20_5;
    void *var_f20_6;

    unksp68 = arg3;
    temp_s0 = *(void **)0x1010;
    var_s6 = arg1;
    if ((temp_s0->unk7A8 != 0) && (temp_a6 = temp_s0->unk7B8, (temp_a6 != 0)) && (arg2 >= arg1) && (arg4 >= unksp68)) {
        sp10 = arg4;
        unksp20 = arg2;
        if (arg0 != 0x1B00) {
            if (arg0 != 0x1B01) {
                if (arg0 == 0x1B02) {
                    temp_t1 = unksp20 - 0x100;
                    unksp58 = temp_t1;
                    if (temp_t1 >= var_s6) {
                        unksp88 = sp10 + 1;
                        temp_t3 = unksp68 + 1;
                        unksp48 = temp_t3;
                        unksp50 = sp10 >= temp_t3;
loop_13:
                        if ((s64) temp_s0->unk7B8 == unksp68) {
                            var_f12 = temp_s0->unk7B0;
                        } else {
                            var_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                        }
                        __glKonEvalDisable((void *) unksp68, temp_s0 + 0x79C, var_s6, 0x100, (s64) (&arg_sp0 + 0xFFFF7FD0), 0, (s64) temp_s0->unk7B8, var_f12);
                        var_s2 = &arg_sp0 - 0x4030;
                        var_s1 = unksp48;
                        var_s4 = &arg_sp0 + 0xFFFF7FD0;
                        if (unksp50 != 0) {
loop_20:
                            var_f13 = var_s1;
                            var_f12_2 = temp_s0->unk7B0;
                            if (temp_s0->unk7B8 != var_s1) {
                                var_f13 = (bitwise s64) (f32) var_f13;
                                var_f12_2 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            }
                            __glKonEvalDisable(var_f12_2, (? *) var_f13, (s64) temp_s0->unk7B4);
                            temp_s0->unk17F4->unk1C(8);
                            unksp80 = (s64) var_s4;
                            __glKonEvalDisable((void *)0x100, var_s4, (s64) var_s2);
                            temp_s0->unk17F4->unk2C();
                            var_s1 += 1;
                            var_s4 = var_s2;
                            var_s2 = (? *) unksp80;
                            if (unksp88 != var_s1) {
                                goto loop_20;
                            }
                        }
                        var_s6 += 0xFF;
                        if (unksp58 >= var_s6) {
                            goto loop_13;
                        }
                        if (temp_s0->unk7B8 == unksp68) {
                            goto block_23;
                        }
                        goto block_26;
                    }
                    temp_a1 = unksp68 + 1;
                    unksp48 = temp_a1;
                    unksp50 = sp10 >= temp_a1;
                    if (temp_a6 != unksp68) {
block_26:
                        var_f12_3 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                    } else {
block_23:
                        var_f12_3 = temp_s0->unk7B0;
                    }
                    __glKonEvalDisable(var_f12_3);
                    var_s1_2 = unksp48;
                    unksp70 = (unksp20 - var_s6) + 1;
                    if (unksp50 != 0) {
                        var_s2_2 = &arg_sp0 - 0x4030;
                        unksp88 = sp10 + 1;
                        var_s4_2 = &arg_sp0 + 0xFFFF7FD0;
loop_31:
                        var_f13_2 = var_s1_2;
                        var_f12_4 = temp_s0->unk7B0;
                        if (temp_s0->unk7B8 != var_s1_2) {
                            var_f13_2 = (bitwise s64) (f32) var_f13_2;
                            var_f12_4 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                        }
                        __glKonEvalDisable(var_f12_4, (? *) var_f13_2, (s64) temp_s0->unk7B4);
                        temp_s0->unk17F4->unk1C(8);
                        unksp60 = (s64) var_s4_2;
                        __glKonEvalDisable((void *) unksp70, var_s4_2, (s64) var_s2_2);
                        temp_s0->unk17F4->unk2C();
                        var_s1_2 += 1;
                        var_s4_2 = var_s2_2;
                        var_s2_2 = (? *) unksp60;
                        if (unksp88 != var_s1_2) {
                            goto loop_31;
                        }
                    }
                }
            } else {
                temp_ra = unksp20 - 0x100;
                unksp58 = temp_ra;
                if (temp_ra >= var_s6) {
                    unksp88 = sp10 + 1;
                    temp_v0 = unksp68 + 1;
                    unksp48 = temp_v0;
                    unksp50 = sp10 >= temp_v0;
loop_51:
                    if (temp_s0->unk7B8 == unksp68) {
                        var_f20 = temp_s0->unk7B0;
                    } else {
                        var_f20 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
                    }
                    temp_s0->unk17F4->unk1C(3);
                    __glKonEvalDisable(var_f20);
                    temp_s0->unk17F4->unk2C();
                    var_s2_3 = &arg_sp0 - 0x4030;
                    var_s1_3 = unksp48;
                    var_s4_3 = &arg_sp0 + 0xFFFF7FD0;
                    if (unksp50 != 0) {
loop_58:
                        var_f20_2 = temp_s0->unk7B0;
                        if (temp_s0->unk7B8 != var_s1_3) {
                            var_f20_2 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
                        }
                        temp_s0->unk17F4->unk1C(3);
                        __glKonEvalDisable(var_f20_2);
                        temp_s0->unk17F4->unk2C();
                        temp_s0->unk17F4->unk1C(1);
                        unksp78 = (s64) var_s4_3;
                        __glKonEvalDisable((void *)0xFF, var_s4_3, (s64) var_s2_3);
                        temp_s0->unk17F4->unk2C();
                        var_s1_3 += 1;
                        var_s4_3 = var_s2_3;
                        var_s2_3 = (? *) unksp78;
                        if (unksp88 != var_s1_3) {
                            goto loop_58;
                        }
                    }
                    var_s6 += 0xFF;
                    if (unksp58 >= var_s6) {
                        goto loop_51;
                    }
                    if (temp_s0->unk7B8 == unksp68) {
                        goto block_61;
                    }
                    goto block_64;
                }
                temp_a1_2 = unksp68 + 1;
                unksp48 = temp_a1_2;
                unksp50 = sp10 >= temp_a1_2;
                if (temp_a6 != unksp68) {
block_64:
                    var_f20_3 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
                } else {
block_61:
                    var_f20_3 = temp_s0->unk7B0;
                }
                temp_s0->unk17F4->unk1C(3);
                __glKonEvalDisable(var_f20_3);
                unksp70 = (unksp20 - var_s6) + 1;
                temp_s0->unk17F4->unk2C();
                var_s1_4 = unksp48;
                if (unksp50 != 0) {
                    var_s2_4 = &arg_sp0 - 0x4030;
                    unksp88 = sp10 + 1;
                    var_s4_4 = &arg_sp0 + 0xFFFF7FD0;
loop_69:
                    var_f20_4 = temp_s0->unk7B0;
                    if (temp_s0->unk7B8 != var_s1_4) {
                        var_f20_4 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
                    }
                    temp_s0->unk17F4->unk1C(3);
                    __glKonEvalDisable(var_f20_4);
                    temp_s0->unk17F4->unk2C();
                    temp_s0->unk17F4->unk1C(1);
                    unksp40 = (s64) var_s4_4;
                    __glKonEvalDisable((void *) unksp70, var_s4_4, (s64) var_s2_4);
                    temp_s0->unk17F4->unk2C();
                    var_s1_4 += 1;
                    var_s4_4 = var_s2_4;
                    var_s2_4 = (? *) unksp40;
                    if (unksp88 != var_s1_4) {
                        goto loop_69;
                    }
                }
            }
        } else {
            temp_v0_2 = unksp20 - 0x100;
            unksp58 = temp_v0_2;
            if (temp_v0_2 >= var_s6) {
                unksp88 = sp10 + 1;
loop_38:
                var_s1_5 = unksp68;
loop_41:
                var_f20_5 = temp_s0->unk7B0;
                if (temp_s0->unk7B8 != var_s1_5) {
                    var_f20_5 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
                }
                temp_s0->unk17F4->unk1C(0);
                __glKonEvalDisable(var_f20_5);
                temp_s0->unk17F4->unk2C();
                var_s1_5 += 1;
                if (unksp88 != var_s1_5) {
                    goto loop_41;
                }
                var_s6 += 0x100;
                if (unksp58 >= var_s6) {
                    goto loop_38;
                }
            } else {
                unksp88 = sp10 + 1;
            }
            var_s1_6 = unksp68;
loop_46:
            var_f20_6 = temp_s0->unk7B0;
            if (temp_s0->unk7B8 != var_s1_6) {
                var_f20_6 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
            }
            temp_s0->unk17F4->unk1C(0);
            __glKonEvalDisable(var_f20_6);
            temp_s0->unk17F4->unk2C();
            var_s1_6 += 1;
            if (unksp88 != var_s1_6) {
                goto loop_46;
            }
        }
    }
}

void __glKonEvalCoord1DGe11(f32 fparg0) {
    *(f32 *)0x4000 = 2.2e-43f;
    *(void *)0x4000 = 1e-45f;
    *(void *)0x4000 = fparg0;
}

void __glKonEvalCoord2DGe11(f32 fparg0, f32 fparg1) {
    *(f32 *)0x4000 = 2.26e-43f;
    *(void *)0x4000 = 3e-45f;
    *(void *)0x4000 = fparg0;
    *(void *)0x4000 = fparg1;
}

void __glKonEvalMesh1DGe11(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a5;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;

    var_a1 = arg1;
    if (arg2 >= var_a1) {
        var_a4 = var_a1 + 6;
        temp_a5 = arg2 < var_a4;
        if (arg0 != 0x1B00) {
            var_a5 = arg0 - 0x1B00;
            if (temp_a5 == 0) {
                do {
                    *(s32 *)0x4000 = 0x26;
                    var_a4 += 5;
                    *(void *)0x4000 = var_a5;
                    *(void *)0x4000 = var_a1;
                    var_a1 += 5;
                    *(void *)0x4000 = 6;
                } while (arg2 >= var_a4);
            } else {
                var_a5 = arg0 - 0x1B00;
            }
            *(void *)0x4000 = 0x26;
            *(void *)0x4000 = var_a5;
            *(void *)0x4000 = var_a1;
            *(void *)0x4000 = (s32) ((arg2 - var_a1) + 1);
            return;
        }
        if (temp_a5 == 0) {
            var_a5_2 = arg0 - 0x1B00;
            do {
                *(void *)0x4000 = 0x26;
                var_a4 += 6;
                *(void *)0x4000 = var_a5_2;
                *(void *)0x4000 = var_a1;
                var_a1 += 6;
                *(void *)0x4000 = 6;
            } while (arg2 >= var_a4);
        } else {
            var_a5_2 = arg0 - 0x1B00;
        }
        *(void *)0x4000 = 0x26;
        *(void *)0x4000 = var_a5_2;
        *(void *)0x4000 = var_a1;
        *(void *)0x4000 = (s32) ((arg2 - var_a1) + 1);
    }
}

void __glKonEvalMesh2DGe11(s32 arg0, s32 arg1, s64 arg2, s32 arg3, s64 arg4) {
    s64 sp8;
    s64 sp0;
    s32 temp_a6;
    s32 temp_ra;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a1;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t2;
    s32 var_t2_2;

    var_a1 = arg1;
    if ((arg2 >= var_a1) && (arg4 >= arg3)) {
        temp_ra = arg2 - 6;
        temp_a6 = temp_ra < var_a1;
        if (arg0 != 0x1B00) {
            temp_t0 = arg4 - 0x32;
            temp_t9 = temp_t0 >= arg3;
            if (temp_a6 == 0) {
                var_a7 = arg0 - 0x1B00;
                sp8 = (arg4 - arg3) - 1;
                do {
                    var_a6 = arg3;
                    if (temp_t9 != 0) {
                        do {
                            *(s32 *)0x4000 = 0x27;
                            *(void *)0x4000 = var_a7;
                            *(void *)0x4000 = 0x10;
                            *(void *)0x4000 = var_a1;
                            *(void *)0x4000 = 6;
                            *(void *)0x4000 = var_a6;
                            var_a6 += 0x31;
                            *(void *)0x4000 = 0x32;
                        } while (temp_t0 >= var_a6);
                    }
                    *(void *)0x4000 = 0x27;
                    *(void *)0x4000 = var_a7;
                    *(void *)0x4000 = 0x12;
                    *(void *)0x4000 = var_a1;
                    var_a1 += 5;
                    *(void *)0x4000 = 6;
                    *(void *)0x4000 = var_a6;
                    *(void *)0x4000 = (s32) ((arg4 - var_a6) + 1);
                } while (temp_ra >= var_a1);
                var_a6_2 = arg3;
                if (temp_t9 != 0) {
                    goto block_10;
                }
                var_t2 = (arg2 - var_a1) + 1;
            } else {
                var_a6_2 = arg3;
                if ((temp_t0 < arg3) == 0) {
                    var_a7 = arg0 - 0x1B00;
                    sp8 = (arg4 - arg3) - 1;
block_10:
                    var_a6_2 = arg3;
                    var_t2 = (arg2 - var_a1) + 1;
                    do {
                        *(void *)0x4000 = 0x27;
                        *(void *)0x4000 = var_a7;
                        *(void *)0x4000 = 0x11;
                        *(void *)0x4000 = var_a1;
                        *(void *)0x4000 = var_t2;
                        *(void *)0x4000 = var_a6_2;
                        var_a6_2 += 0x31;
                        *(void *)0x4000 = 0x32;
                    } while (temp_t0 >= var_a6_2);
                } else {
                    var_a7 = arg0 - 0x1B00;
                    var_t2 = (arg2 - var_a1) + 1;
                }
            }
            *(void *)0x4000 = 0x27;
            *(void *)0x4000 = var_a7;
            *(void *)0x4000 = 0x13;
            *(void *)0x4000 = var_a1;
            *(void *)0x4000 = var_t2;
            *(void *)0x4000 = var_a6_2;
            *(void *)0x4000 = (s32) ((arg4 - var_a6_2) + 1);
            return;
        }
        temp_t0_2 = arg4 - 0x32;
        temp_t9_2 = temp_t0_2 >= arg3;
        if (temp_a6 == 0) {
            sp0 = arg4 - arg3;
            var_a7_2 = arg0 - 0x1B00;
            do {
                var_a6_3 = arg3;
                if (temp_t9_2 != 0) {
                    do {
                        *(void *)0x4000 = 0x27;
                        *(void *)0x4000 = var_a7_2;
                        *(void *)0x4000 = 0x10;
                        *(void *)0x4000 = var_a1;
                        *(void *)0x4000 = 6;
                        *(void *)0x4000 = var_a6_3;
                        var_a6_3 += 0x32;
                        *(void *)0x4000 = 0x32;
                    } while (temp_t0_2 >= var_a6_3);
                }
                *(void *)0x4000 = 0x27;
                *(void *)0x4000 = var_a7_2;
                *(void *)0x4000 = 0x13;
                *(void *)0x4000 = var_a1;
                var_a1 += 6;
                *(void *)0x4000 = 6;
                *(void *)0x4000 = var_a6_3;
                *(void *)0x4000 = (s32) ((arg4 - var_a6_3) + 1);
            } while (temp_ra >= var_a1);
            var_a6_4 = arg3;
            if (temp_t9_2 != 0) {
                goto block_21;
            }
            var_t2_2 = (arg2 - var_a1) + 1;
        } else {
            var_a6_4 = arg3;
            if ((temp_t0_2 < arg3) == 0) {
                sp0 = arg4 - arg3;
                var_a7_2 = arg0 - 0x1B00;
block_21:
                var_a6_4 = arg3;
                var_t2_2 = (arg2 - var_a1) + 1;
                do {
                    *(void *)0x4000 = 0x27;
                    *(void *)0x4000 = var_a7_2;
                    *(void *)0x4000 = 0x11;
                    *(void *)0x4000 = var_a1;
                    *(void *)0x4000 = var_t2_2;
                    *(void *)0x4000 = var_a6_4;
                    var_a6_4 += 0x32;
                    *(void *)0x4000 = 0x32;
                } while (temp_t0_2 >= var_a6_4);
            } else {
                var_a7_2 = arg0 - 0x1B00;
                var_t2_2 = (arg2 - var_a1) + 1;
            }
        }
        *(void *)0x4000 = 0x27;
        *(void *)0x4000 = var_a7_2;
        *(void *)0x4000 = 0x13;
        *(void *)0x4000 = var_a1;
        *(void *)0x4000 = var_t2_2;
        *(void *)0x4000 = var_a6_4;
        *(void *)0x4000 = (s32) ((arg4 - var_a6_4) + 1);
    }
}

void __glKonSendMapSpec1D(void *arg0, s32 arg1) {
    if (arg0 != NULL) {
        if (arg1 == 0) {
            *(void *)0x4000 = (s32) arg0->unk8;
        }
        *(s32 *)0x4000 = arg0->unk4;
        *(void *)0x4000 = (s32) (arg0->unk2C * 4);
        return;
    }
    if (arg1 == 0) {
        *(void *)0x4000 = 0;
    }
    *(void *)0x4000 = 0;
    *(void *)0x4000 = 0;
}

void __glKonSendMapSpec2D(void *arg0) {
    if (arg0 != NULL) {
        *(s32 *)0x4000 = arg0->unk8;
        *(void *)0x4000 = (s32) arg0->unkC;
        *(void *)0x4000 = (s32) arg0->unk4;
        *(void *)0x4000 = (s32) (arg0->unk2C * 4);
        return;
    }
    *(void *)0x4000 = 0;
    *(void *)0x4000 = 0;
    *(void *)0x4000 = 0;
    *(void *)0x4000 = 0;
}

void __glKonSendMapData1D(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_f6;
    s32 var_a2;
    void *var_a3;

    if (arg0 != NULL) {
        *(s32 *)0x4000 = 0x2A;
        temp_a4 = arg0->unk2C;
        *(void *)0x4000 = (s32) (temp_a4 + 5);
        *(void *)0x4000 = (s32) (arg0->unk0 * 4);
        *(void *)0x4000 = (s32) arg0->unk14;
        *(void *)0x4000 = (s32) arg0->unk18;
        *(void *)0x4000 = (s32) arg0->unk1C;
        *(void *)0x4000 = temp_a4;
        if (temp_a4 > 0) {
            var_a3 = arg0->unk30;
            var_a2 = 0;
loop_3:
            temp_a2 = var_a2 + 1;
            *(void *)0x4000 = (s32) var_a3->unk0;
            temp_a2_2 = temp_a2 + 1;
            if (temp_a2 < temp_a4) {
                *(void *)0x4000 = (s32) var_a3->unk4;
                temp_a2_3 = temp_a2_2 + 1;
                if (temp_a2_2 < temp_a4) {
                    *(void *)0x4000 = (s32) var_a3->unk8;
                    var_a2 = temp_a2_3 + 1;
                    if (temp_a2_3 < temp_a4) {
                        temp_f6 = var_a3->unkC;
                        var_a3 += 0x10;
                        *(void *)0x4000 = temp_f6;
                        if (var_a2 < temp_a4) {
                            goto loop_3;
                        }
                    }
                }
            }
        }
    }
}

void __glKonSendMapData2D(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_f9;
    s32 var_a2;
    void *var_a3;

    if (arg0 != NULL) {
        *(s32 *)0x4000 = 0x2B;
        temp_a4 = arg0->unk2C;
        *(void *)0x4000 = (s32) (temp_a4 + 8);
        *(void *)0x4000 = (s32) (arg0->unk0 * 4);
        *(void *)0x4000 = (s32) arg0->unk14;
        *(void *)0x4000 = (s32) arg0->unk18;
        *(void *)0x4000 = (s32) arg0->unk1C;
        *(void *)0x4000 = (s32) arg0->unk20;
        *(void *)0x4000 = (s32) arg0->unk24;
        *(void *)0x4000 = (s32) arg0->unk28;
        *(void *)0x4000 = temp_a4;
        if (temp_a4 > 0) {
            var_a3 = arg0->unk30;
            var_a2 = 0;
loop_3:
            temp_a2 = var_a2 + 1;
            *(void *)0x4000 = (s32) var_a3->unk0;
            temp_a2_2 = temp_a2 + 1;
            if (temp_a2 < temp_a4) {
                *(void *)0x4000 = (s32) var_a3->unk4;
                temp_a2_3 = temp_a2_2 + 1;
                if (temp_a2_2 < temp_a4) {
                    *(void *)0x4000 = (s32) var_a3->unk8;
                    var_a2 = temp_a2_3 + 1;
                    if (temp_a2_3 < temp_a4) {
                        temp_f9 = var_a3->unkC;
                        var_a3 += 0x10;
                        *(void *)0x4000 = temp_f9;
                        if (var_a2 < temp_a4) {
                            goto loop_3;
                        }
                    }
                }
            }
        }
    }
}

void __glKonHostMapData1D(void *arg0, s64 arg5) {
    s32 temp_a1;
    s32 temp_s3;
    s32 var_s0;
    s64 temp_a4;
    s64 var_a5;

    var_a5 = arg5;
    temp_s3 = (*(s32 *)0x1010 + (arg0->unk0 * 0xC))->unk8C94;
    if (arg0->unk4 > 0) {
        var_s0 = 0;
        do {
            temp_a1 = arg0->unk8;
            temp_a4 = temp_a1 * var_s0 * 4;
            __glKonEvalDisable(arg0->unk30 + temp_a4, (? *) temp_a1, temp_a4 + temp_s3, 1, temp_a4, var_a5);
            var_s0 += 1;
            var_a5 = var_s0 < arg0->unk4;
        } while (var_a5 != 0);
    }
}

void __glKonHostMapData2D(void *arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_t8;
    s32 var_a0;
    s32 var_a1;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s5;
    s32 var_s5_2;
    void *var_s0;
    void *var_s4;

    var_s4 = arg0->unk30;
    temp_a2 = *(s32 *)0x1010;
    var_a1 = arg0->unk4;
    var_s0 = (temp_a2 + (arg0->unk0 * 0xC))->unk8E9C;
    if (var_a1 > 0) {
        var_a0 = arg0->unkC;
        var_s5 = 0;
        sp0 = (s64) temp_a2;
        do {
            var_s1 = 0;
            if (var_a0 > 0) {
                do {
                    __glKonEvalDisable(var_s4, (? *) arg0->unk8, (s64) var_s0, 1);
                    var_a0 = arg0->unkC;
                    var_s1 += 1;
                    temp_t8 = arg0->unk8 * 4;
                    var_s0 += temp_t8;
                    var_s4 += temp_t8;
                } while (var_s1 < var_a0);
                var_a1 = arg0->unk4;
            }
            var_s5 += 1;
        } while (var_s5 < var_a1);
        var_s0 = (sp0 + (arg0->unk0 * 0xC))->unk8E9C;
    }
    if (var_a1 > 0) {
        var_s5_2 = 0;
        do {
            var_s1_2 = 0;
            if (arg0->unk8 > 0) {
                do {
                    __glKonEvalDisable(var_s0, (? *) arg0->unkC, (s64) var_s0, (s64) arg0->unk8);
                    var_s1_2 += 1;
                    var_s0 += 4;
                } while (var_s1_2 < arg0->unk8);
                var_a1 = arg0->unk4;
            }
            var_s5_2 += 1;
            var_s0 += arg0->unk8 * (arg0->unkC - 1) * 4;
        } while (var_s5_2 < var_a1);
    }
}

void __glKonCleanUp1D(s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a2;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    void *temp_a0;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_s2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s2 = *(void **)0x1010;
    var_a3 = 0;
    var_a1 = 0;
    temp_a4 = temp_s2->unk8C8C;
    if (temp_a4 != NULL) {
        temp_t9 = temp_a4->unk8;
        var_a1 = temp_a4->unk2C;
        var_a3 = (temp_t9 > 0) ? temp_t9 : 0;
    }
    temp_a4_2 = temp_s2->unk8C98;
    if (temp_a4_2 != NULL) {
        var_a5 = temp_a4_2->unk8;
        var_a6 = temp_a4_2->unk2C;
        var_a1 += var_a6;
        var_a3 = (var_a3 < var_a5) ? var_a5 : var_a3;
    }
    temp_a4_3 = temp_s2->unk8CA4;
    if (temp_a4_3 != NULL) {
        temp_t0 = temp_a4_3->unk8;
        var_a7 = var_a3 < temp_t0;
        var_a1 += temp_a4_3->unk2C;
        var_a3 = (var_a7 != 0) ? temp_t0 : var_a3;
    }
    temp_a4_4 = temp_s2->unk8CB0;
    if (temp_a4_4 != NULL) {
        temp_t3 = temp_a4_4->unk8;
        var_a1 += temp_a4_4->unk2C;
        var_a3 = (var_a3 < temp_t3) ? temp_t3 : var_a3;
    }
    if (var_a1 != 0) {
        temp_a2 = var_a3 < 9;
        if (var_a1 >= 0xD1) {
            goto block_10;
        }
        var_a3 = (s32) __glKonEvalCoord1DGe11;
        if (temp_a2 != 0) {
            temp_s2->unk9098 = 0;
            temp_s2->unk909C = (void (*)(f32)) (s32) __glKonEvalCoord1DGe11;
            temp_a1 = temp_s2->unk8C94;
            temp_a5 = temp_s2->unk8C8C;
            temp_a6 = temp_s2->unk8CB0;
            temp_a7 = temp_s2->unk8C98;
            temp_s2->unk90A4 = __glKonEvalMesh1DGe11;
            temp_s2->unk8CA8 = (void *) temp_s2->unk8CA4;
            temp_s2->unk8C9C = temp_a7;
            temp_s2->unk8CB4 = temp_a6;
            temp_s2->unk8C90 = temp_a5;
            if (temp_a1 != 0) {
                __glKonHostMapData1D(temp_s2, (s64) temp_a1, temp_a2, (void (*)(f32)) (s32) __glKonEvalCoord1DGe11, __glKonEvalMesh1DGe11, temp_a5, temp_a6, temp_a7);
                temp_s2->unk8C94 = 0;
            }
            temp_a1_2 = temp_s2->unk8CA0;
            if (temp_a1_2 != 0) {
                temp_s2->unkC(temp_s2, temp_a1_2);
                temp_s2->unk8CA0 = 0;
            }
            temp_a1_3 = temp_s2->unk8CAC;
            if (temp_a1_3 != 0) {
                temp_s2->unkC(temp_s2, temp_a1_3);
                temp_s2->unk8CAC = 0;
            }
            temp_a1_4 = temp_s2->unk8CB8;
            if (temp_a1_4 != 0) {
                temp_s2->unkC(temp_s2, temp_a1_4);
                temp_s2->unk8CB8 = 0;
            }
            temp_a0 = temp_s2->unk8C90;
            var_a3_2 = 0;
            *(s32 *)0x4000 = 0x2C;
            if (temp_a0 != NULL) {
                var_a3_2 = temp_a0->unk8;
            }
            *(void *)0x4000 = var_a3_2;
            __glKonSendMapSpec1D(temp_a0, 1);
            __glKonSendMapSpec1D(temp_s2->unk8CB4, 0);
            __glKonSendMapSpec1D(temp_s2->unk8C9C, 0);
            __glKonSendMapSpec1D(temp_s2->unk8CA8, 0);
            __glKonSendMapData1D(temp_s2->unk8C90);
            __glKonSendMapData1D(temp_s2->unk8CB4);
            __glKonSendMapData1D(temp_s2->unk8C9C);
            __glKonSendMapData1D(temp_s2->unk8CA8);
        } else {
block_10:
            temp_s2->unk9098 = 1;
            temp_s2->unk8CA8 = (void *) temp_s2->unk8CA4;
            temp_s2->unk8C9C = (void *) temp_s2->unk8C98;
            temp_s2->unk8CB4 = (void *) temp_s2->unk8CB0;
            temp_s2->unk8C90 = (void *) temp_s2->unk8C8C;
            temp_s2->unk90A4 = __glKonEvalMesh1DHost;
            temp_s2->unk909C = __glKonEvalCoord1DHost;
            temp_a1_5 = temp_s2->unk8C94;
            if (temp_a1_5 != 0) {
                temp_s2->unkC(temp_s2, temp_a1_5, 1, var_a3, temp_a4_4, var_a5, var_a6, var_a7);
                temp_s2->unk8C94 = 0;
            }
            temp_s1 = temp_s2->unk8C8C;
            if (temp_s1 != NULL) {
                temp_s2->unk8C94 = temp_s2->unk0(temp_s2, temp_s1->unk2C * 4);
                __glKonHostMapData1D(temp_s1);
            }
            temp_a1_6 = temp_s2->unk8CA0;
            if (temp_a1_6 != 0) {
                __glKonHostMapData1D(temp_s2, (s64) temp_a1_6);
                temp_s2->unk8CA0 = 0;
            }
            temp_s1_2 = temp_s2->unk8C98;
            if (temp_s1_2 != NULL) {
                temp_s2->unk8CA0 = temp_s2->unk0(temp_s2, temp_s1_2->unk2C * 4);
                __glKonHostMapData1D(temp_s1_2);
            }
            temp_a1_7 = temp_s2->unk8CAC;
            if (temp_a1_7 != 0) {
                __glKonHostMapData1D(temp_s2, (s64) temp_a1_7);
                temp_s2->unk8CAC = 0;
            }
            temp_s1_3 = temp_s2->unk8CA4;
            if (temp_s1_3 != NULL) {
                temp_s2->unk8CAC = temp_s2->unk0(temp_s2, temp_s1_3->unk2C * 4);
                __glKonHostMapData1D(temp_s1_3);
            }
            temp_a1_8 = temp_s2->unk8CB8;
            if (temp_a1_8 != 0) {
                __glKonHostMapData1D(temp_s2, (s64) temp_a1_8);
                temp_s2->unk8CB8 = 0;
            }
            temp_s1_4 = temp_s2->unk8CB0;
            if (temp_s1_4 != NULL) {
                temp_s2->unk8CB8 = temp_s2->unk0(temp_s2, temp_s1_4->unk2C * 4);
                __glKonHostMapData1D(temp_s1_4);
            }
        }
    }
}

void __glKonCleanUp2D(s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u8 temp_a5;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_7;
    void *temp_a1_8;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a6;
    void *temp_a7;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_s2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s2 = *(void **)0x1010;
    var_a4 = 0;
    var_a1 = 0;
    temp_a3 = temp_s2->unk8E94;
    if (temp_a3 != NULL) {
        temp_t9 = temp_a3->unk8;
        temp_a4 = temp_a3->unkC;
        temp_t9_2 = (temp_t9 <= 0) ? 0 : temp_t9;
        var_a1 = temp_a3->unk2C;
        var_a4 = (temp_t9_2 >= temp_a4) ? temp_t9_2 : temp_a4;
    }
    temp_a3_2 = temp_s2->unk8EA0;
    if (temp_a3_2 != NULL) {
        temp_a0 = temp_a3_2->unk8;
        temp_v1 = temp_a3_2->unkC;
        temp_at = (var_a4 >= temp_a0) ? var_a4 : temp_a0;
        var_a1 += temp_a3_2->unk2C;
        var_a4 = (temp_at >= temp_v1) ? temp_at : temp_v1;
    }
    temp_a3_3 = temp_s2->unk8EAC;
    if (temp_a3_3 != NULL) {
        temp_t0 = temp_a3_3->unk8;
        var_a7 = temp_a3_3->unkC;
        var_a6 = temp_a3_3->unk2C;
        var_a5 = (var_a4 >= temp_t0) ? var_a4 : temp_t0;
        var_a1 += var_a6;
        var_a4 = (var_a5 >= var_a7) ? var_a5 : var_a7;
    }
    temp_a3_4 = temp_s2->unk8EB8;
    if (temp_a3_4 != NULL) {
        temp_t9_3 = temp_a3_4->unk8;
        temp_t8 = temp_a3_4->unkC;
        temp_t2 = (var_a4 >= temp_t9_3) ? var_a4 : temp_t9_3;
        var_a1 += temp_a3_4->unk2C;
        var_a4 = (temp_t2 >= temp_t8) ? temp_t2 : temp_t8;
    }
    if (var_a1 != 0) {
        temp_a2 = var_a4 < 9;
        if (var_a1 >= 0xD1) {
            goto block_11;
        }
        if (temp_a2 != 0) {
            temp_s2->unk9098 = 0;
            temp_a1 = temp_s2->unk8E9C;
            temp_a5 = temp_s2->unk90AC;
            temp_a6 = temp_s2->unk8E94;
            temp_a7 = temp_s2->unk8EB8;
            temp_s2->unk90A8 = (void (*)(s32, s64, s64, s64, s64, ?)) __glKonEvalMesh2DGe11;
            temp_s2->unk90A0 = __glKonEvalCoord2DGe11;
            temp_s2->unk8EB0 = (void *) temp_s2->unk8EAC;
            temp_s2->unk8EA4 = (void *) temp_s2->unk8EA0;
            temp_s2->unk8EBC = temp_a7;
            temp_s2->unk8E98 = temp_a6;
            temp_s2->unk90AD = temp_a5;
            if (temp_a1 != NULL) {
                __glKonHostMapData2D(temp_s2, temp_a1, temp_a2, __glKonEvalCoord2DGe11, __glKonEvalMesh2DGe11, temp_a5, temp_a6, temp_a7);
                temp_s2->unk8E9C = NULL;
            }
            temp_a1_2 = temp_s2->unk8EA8;
            if (temp_a1_2 != NULL) {
                temp_s2->unkC(temp_s2, temp_a1_2);
                temp_s2->unk8EA8 = NULL;
            }
            temp_a1_3 = temp_s2->unk8EB4;
            if (temp_a1_3 != NULL) {
                temp_s2->unkC(temp_s2, temp_a1_3);
                temp_s2->unk8EB4 = NULL;
            }
            temp_a1_4 = temp_s2->unk8EC0;
            if (temp_a1_4 != NULL) {
                temp_s2->unkC(temp_s2, temp_a1_4);
                temp_s2->unk8EC0 = NULL;
            }
            *(s32 *)0x4000 = 0x2D;
            *(void *)0x4000 = (s32) temp_s2->unk90AC;
            __glKonSendMapSpec2D(temp_s2->unk8E98);
            __glKonSendMapSpec2D(temp_s2->unk8EBC);
            __glKonSendMapSpec2D(temp_s2->unk8EA4);
            __glKonSendMapSpec2D(temp_s2->unk8EB0);
            __glKonSendMapData2D(temp_s2->unk8E98);
            __glKonSendMapData2D(temp_s2->unk8EBC);
            __glKonSendMapData2D(temp_s2->unk8EA4);
            __glKonSendMapData2D(temp_s2->unk8EB0);
        } else {
block_11:
            temp_s2->unk9098 = 1;
            temp_a2_2 = temp_s2->unk8EAC;
            temp_s2->unk8EB0 = temp_a2_2;
            temp_s2->unk8EA4 = (void *) temp_s2->unk8EA0;
            temp_s2->unk8EBC = (void *) temp_s2->unk8EB8;
            temp_s2->unk8E98 = (void *) temp_s2->unk8E94;
            temp_s2->unk90A8 = __glKonEvalMesh2DHost;
            temp_s2->unk90A0 = __glKonEvalCoord2DHost;
            temp_a1_5 = temp_s2->unk8E9C;
            if (temp_a1_5 != NULL) {
                temp_s2->unkC(temp_s2, temp_a1_5, temp_a2_2, 1, var_a4, var_a5, var_a6, var_a7);
                temp_s2->unk8E9C = NULL;
            }
            temp_s1 = temp_s2->unk8E94;
            if (temp_s1 != NULL) {
                temp_s2->unk8E9C = temp_s2->unk0(temp_s2, temp_s1->unk2C * 4);
                __glKonHostMapData2D(temp_s1);
            }
            temp_a1_6 = temp_s2->unk8EA8;
            if (temp_a1_6 != NULL) {
                __glKonHostMapData2D(temp_s2, temp_a1_6);
                temp_s2->unk8EA8 = NULL;
            }
            temp_s1_2 = temp_s2->unk8EA0;
            if (temp_s1_2 != NULL) {
                temp_s2->unk8EA8 = temp_s2->unk0(temp_s2, temp_s1_2->unk2C * 4);
                __glKonHostMapData2D(temp_s1_2);
            }
            temp_a1_7 = temp_s2->unk8EB4;
            if (temp_a1_7 != NULL) {
                __glKonHostMapData2D(temp_s2, temp_a1_7);
                temp_s2->unk8EB4 = NULL;
            }
            temp_s1_3 = temp_s2->unk8EAC;
            if (temp_s1_3 != NULL) {
                temp_s2->unk8EB4 = temp_s2->unk0(temp_s2, temp_s1_3->unk2C * 4);
                __glKonHostMapData2D(temp_s1_3);
            }
            temp_a1_8 = temp_s2->unk8EC0;
            if (temp_a1_8 != NULL) {
                __glKonHostMapData2D(temp_s2, temp_a1_8);
                temp_s2->unk8EC0 = NULL;
            }
            temp_s1_4 = temp_s2->unk8EB8;
            if (temp_s1_4 != NULL) {
                temp_s2->unk8EC0 = temp_s2->unk0(temp_s2, temp_s1_4->unk2C * 4);
                __glKonHostMapData2D(temp_s1_4);
            }
        }
    }
}

void __glKonInitEvaluators(void *arg0) {
    f32 *temp_a6;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_t3;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    void *temp_s0;
    void *temp_s1;
    void *temp_s6;
    void *var_a2;
    void *var_s3;

    arg0->unk9098 = 1;
    arg0->unk90A8 = __glKonEvalMesh2DGe11;
    arg0->unk90A0 = __glKonEvalCoord2DGe11;
    arg0->unk90A4 = __glKonEvalMesh1DGe11;
    arg0->unk909C = __glKonEvalCoord1DGe11;
    arg0->unk8EC0 = 0;
    arg0->unk8EBC = 0;
    arg0->unk8EB8 = 0;
    arg0->unk8CB8 = 0;
    arg0->unk8CB4 = 0;
    arg0->unk8CB0 = 0;
    arg0->unk8EB4 = 0;
    arg0->unk8EB0 = 0;
    arg0->unk8EAC = 0;
    arg0->unk8CAC = 0;
    arg0->unk8CA8 = 0;
    arg0->unk8CA4 = 0;
    arg0->unk8EA8 = 0;
    arg0->unk8EA4 = 0;
    arg0->unk8EA0 = 0;
    arg0->unk8CA0 = 0;
    arg0->unk8C9C = 0;
    arg0->unk8C98 = 0;
    arg0->unk8E9C = 0;
    arg0->unk8E98 = 0;
    arg0->unk8E94 = 0;
    arg0->unk8C94 = 0;
    arg0->unk8C90 = 0;
    arg0->unk8C8C = 0;
    var_s3 = &__rodata0 + 0x198;
    temp_s6 = var_s3 + 0x120;
    do {
        temp_a2 = var_s3->unk8;
        temp_s2 = var_s3->unkC;
        temp_s1 = arg0 + (var_s3->unk0 * 0x34) + 0xFFFE0000;
        temp_s1->unk-3458 = temp_s2;
        temp_s1->unk-3460 = 1.0f;
        temp_s1->unk-3464 = 0.0f;
        temp_s1->unk-346C = 1.0f;
        temp_s1->unk-3470 = 0.0f;
        temp_s1->unk-3474 = 0;
        temp_s1->unk-3478 = 1;
        temp_s1->unk-347C = 1;
        temp_s1->unk-3480 = temp_s2;
        temp_s0 = arg0 + (var_s3->unk4 * 0x34) + 0xFFFE0000;
        temp_s1->unk-3484 = temp_a2;
        temp_s0->unk-38D0 = temp_s2;
        temp_s0->unk-38D8 = 1.0f;
        temp_s0->unk-38DC = 0.0f;
        temp_s0->unk-38E4 = 1.0f;
        temp_s0->unk-38E8 = 0.0f;
        temp_s0->unk-38EC = 0;
        temp_s0->unk-38F0 = 1;
        temp_s0->unk-38F4 = 1;
        temp_s0->unk-38F8 = temp_s2;
        temp_s0->unk-38FC = temp_a2;
        temp_s1->unk-3454 = arg0->unk0(arg0, temp_s1->unk-3458 * 4, temp_a2);
        temp_s0->unk-38CC = arg0->unk0(arg0, temp_s0->unk-38D0 * 4);
        if (temp_s2 > 0) {
            temp_a0 = (temp_s2 >= 1) ? temp_s2 : 1;
            var_a5 = temp_a0 & 3;
            var_a4 = 0;
            var_a3 = 0;
            var_a2 = var_s3;
            if (var_a5 != 0) {
                do {
                    temp_f0 = var_a2->unk10;
                    *(temp_s1->unk-3454 + var_a4) = temp_f0;
                    var_a2 += 4;
                    var_a5 -= 1;
                    var_a3 += 1;
                    temp_a6 = temp_s0->unk-38CC + var_a4;
                    var_a4 += 4;
                    *temp_a6 = temp_f0;
                } while (var_a5 != 0);
            }
            if ((temp_a0 >> 2) != 0) {
                do {
                    temp_f4 = var_a2->unk10;
                    *(temp_s1->unk-3454 + var_a4) = temp_f4;
                    *(temp_s0->unk-38CC + var_a4) = temp_f4;
                    temp_f3 = var_a2->unk14;
                    temp_v1 = var_a4 + 4;
                    *(temp_s1->unk-3454 + temp_v1) = temp_f3;
                    *(temp_s0->unk-38CC + temp_v1) = temp_f3;
                    temp_f2 = var_a2->unk18;
                    temp_ra = var_a4 + 8;
                    *(temp_s1->unk-3454 + temp_ra) = temp_f2;
                    *(temp_s0->unk-38CC + temp_ra) = temp_f2;
                    temp_f1 = var_a2->unk1C;
                    temp_t3 = var_a4 + 0xC;
                    *(temp_s1->unk-3454 + temp_t3) = temp_f1;
                    var_a3 += 4;
                    var_a2 += 0x10;
                    var_a4 += 0x10;
                    *(temp_s0->unk-38CC + temp_t3) = temp_f1;
                } while (var_a3 < temp_s2);
            }
        }
        var_s3 += 0x20;
    } while (var_s3 != temp_s6);
}

void __glKonFreeEvaluators(void *arg0) {
    s32 temp_a1;
    s32 temp_a1_10;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a1_9;
    void *var_s0;

    var_s0 = arg0 + 0x10000;
    do {
        temp_a1 = var_s0->unk-7314;
        if (temp_a1 != 0) {
            arg0->unkC(arg0, temp_a1);
            var_s0->unk-7314 = 0;
        }
        temp_a1_2 = var_s0->unk-710C;
        if (temp_a1_2 != 0) {
            arg0->unkC(arg0, temp_a1_2);
            var_s0->unk-710C = 0;
        }
        var_s0 += 0x34;
    } while (var_s0 != (arg0 + 0x1D4 + 0x10000));
    temp_a1_3 = arg0->unk8C94;
    if (temp_a1_3 != 0) {
        arg0->unkC(arg0, temp_a1_3);
        arg0->unk8C94 = 0;
    }
    temp_a1_4 = arg0->unk8E9C;
    if (temp_a1_4 != 0) {
        arg0->unkC(arg0, temp_a1_4);
        arg0->unk8E9C = 0;
    }
    temp_a1_5 = arg0->unk8CA0;
    if (temp_a1_5 != 0) {
        arg0->unkC(arg0, temp_a1_5);
        arg0->unk8CA0 = 0;
    }
    temp_a1_6 = arg0->unk8EA8;
    if (temp_a1_6 != 0) {
        arg0->unkC(arg0, temp_a1_6);
        arg0->unk8EA8 = 0;
    }
    temp_a1_7 = arg0->unk8CAC;
    if (temp_a1_7 != 0) {
        arg0->unkC(arg0, temp_a1_7);
        arg0->unk8CAC = 0;
    }
    temp_a1_8 = arg0->unk8EB4;
    if (temp_a1_8 != 0) {
        arg0->unkC(arg0, temp_a1_8);
        arg0->unk8EB4 = 0;
    }
    temp_a1_9 = arg0->unk8CB8;
    if (temp_a1_9 != 0) {
        arg0->unkC(arg0, temp_a1_9);
        arg0->unk8CB8 = 0;
    }
    temp_a1_10 = arg0->unk8EC0;
    if (temp_a1_10 != 0) {
        arg0->unkC(arg0, temp_a1_10);
        arg0->unk8EC0 = 0;
    }
}

void *__glKonSetUpMap1(s32 arg0, s64 arg1, s32 arg2, s32 arg4, s32 *arg5, f32 fparg2, f32 fparg3) {
    s64 sp0;
    s32 temp_a3;
    s32 temp_lo;
    s32 var_a2;
    s64 temp_v0;
    s64 var_a1;
    void *temp_a7;
    void *temp_s0;
    void *var_a0;

    var_a1 = arg1;
    var_a2 = arg2;
    temp_v0 = var_a1;
    temp_a7 = *(void **)0x1010;
    if ((u32) (arg0 - 0xD90) < 9U) {
        if ((fparg2 != fparg3) && (var_a1 > 0)) {
            var_a1 = arg0 * 3;
            if (var_a1 < 0x10) {
                var_a1 = temp_a7 + (arg0 * 0x34);
                temp_s0 = var_a1 + 0xFFFE0000;
                var_a2 = temp_s0->unk-347C;
                if (arg4 >= temp_s0->unk-3480) {
                    sp0 = var_a1;
                    if (var_a2 != temp_v0) {
                        *arg5 = 1;
                    } else {
                        *arg5 = 0;
                    }
                    temp_a3 = temp_s0->unk-3480;
                    temp_lo = temp_a3 * temp_v0;
                    temp_s0->unk-346C = fparg3;
                    temp_s0->unk-3470 = fparg2;
                    temp_s0->unk-347C = (s32) temp_v0;
                    temp_s0->unk-3458 = temp_lo;
                    temp_s0->unk-3468 = (f32) ((second half of f64) / (f64) (second half of f64));
                    temp_s0->unk-3454 = __glSetError(temp_a7, temp_s0->unk-3454, temp_lo * 4, temp_a3, temp_a7);
                    var_a0 = sp0 + 0xFFFDCB7C;
                    /* Duplicate return node #9. Try simplifying control flow for better match */
                    return var_a0;
                }
            }
        }
        __glSetError((void *)0x501, (void *) var_a1, var_a2, 1, temp_a7);
        return NULL;
    }
    __glSetError((void *)0x500, temp_a7);
    var_a0 = NULL;
    return var_a0;
}

void *__glKonSetUpMap2(s32 arg0, s64 arg1, s32 arg2, s32 arg7, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, s32 arg_sp4, s32 arg_spC) {
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a2;
    s64 temp_t0;
    s64 temp_v0;
    s64 var_a1;
    void *temp_a6;
    void *var_a0;

    var_a1 = arg1;
    var_a2 = arg2;
    temp_a5 = var_a2;
    temp_a6 = *(void **)0x1010;
    temp_v0 = var_a1;
    if ((u32) (arg0 - 0xDB0) < 9U) {
        if ((fparg3 != fparg4) && (fparg5 != fparg6) && (var_a1 > 0) && (var_a1 < 0x10) && (var_a2 > 0)) {
            var_a1 = 0xFFFE0000;
            if (var_a2 < 0x10) {
                temp_t0 = temp_a6 + (arg0 * 0x34);
                var_a1 = temp_t0 + 0xFFFE0000;
                temp_a2 = var_a1->unk-38F8;
                var_a2 = arg_spC;
                if ((arg7 >= temp_a2) && (arg_sp4 >= temp_a2)) {
                    if ((var_a1->unk-38F4 != temp_v0) || (var_a1->unk-38F0 != temp_a5)) {
                        sp0 = temp_t0;
                        sp8 = var_a1;
                        *arg_spC = 1;
                    } else {
                        sp0 = temp_t0;
                        sp8 = var_a1;
                        *var_a2 = 0;
                    }
                    temp_lo = temp_v0 * temp_a5;
                    sp8->unk-38D8 = fparg6;
                    temp_lo_2 = sp8->unk-38F8 * temp_lo;
                    sp8->unk-38DC = fparg5;
                    sp8->unk-38E4 = fparg4;
                    sp8->unk-38E8 = fparg3;
                    sp8->unk-38F0 = temp_a5;
                    sp8->unk-38F4 = (s32) temp_v0;
                    sp8->unk-38D0 = temp_lo_2;
                    sp8->unk-38D4 = (f32) ((second half of f64) / (f64) (fparg6 - fparg5));
                    sp8->unk-38E0 = (f32) (second half of f64);
                    sp8->unk-38CC = temp_a6->unk8(temp_a6, sp8->unk-38CC, temp_lo_2 * 4, temp_lo, temp_a5, temp_a6);
                    var_a0 = sp0 + 0xFFFDC704;
                    /* Duplicate return node #13. Try simplifying control flow for better match */
                    return var_a0;
                }
            }
        }
        __glSetError((void *)0x501, (void *) var_a1, var_a2, temp_a5, temp_a6);
        return NULL;
    }
    __glSetError((void *)0x500, (void *) temp_a5, (s32) temp_a6);
    var_a0 = NULL;
    return var_a0;
}

f32 __glkonim_Map1d(s32 arg3, s32 arg4, s64 arg5, f64 fparg1, f64 fparg2) {
    s64 sp8;
    f32 var_f0;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a7;
    s32 var_a3;
    s32 var_a7;
    s32 var_t2;
    s32 var_t3;
    s64 var_a5;
    s64 var_t0;
    void *temp_ret;
    void *temp_s2;
    void *temp_v0;

    sp8 = arg5;
    temp_s2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_ret = __glKonSetUpMap1(arg4, arg3, (s32) sp, (bitwise s32) (f32) fparg1, (bitwise s32 *) (f32) fparg2);
        temp_v0 = temp_ret;
        var_f0 = (bitwise f32) temp_ret;
        if (temp_v0 != NULL) {
            if (arg4 > 0) {
                temp_a0 = arg4 * 4;
                var_t2 = 0;
                var_a5 = sp8;
                var_t3 = 0;
                do {
                    var_a7 = 0;
                    if (temp_v0->unk4 > 0) {
                        var_t0 = var_a5;
                        var_a3 = var_t2;
loop_6:
                        var_f0 = (f32) var_t0->unk0;
                        *(temp_v0->unk30 + var_a3) = var_f0;
                        temp_a7 = var_a7 + 1;
                        temp_a3 = var_a3 + temp_a0;
                        if (temp_a7 < temp_v0->unk4) {
                            var_f0 = second half of f64;
                            *(temp_v0->unk30 + temp_a3) = (f32) var_t0->unk8;
                            var_a7 = temp_a7 + 1;
                            var_t0 += 0x10;
                            var_a3 = temp_a3 + temp_a0;
                            if (var_a7 < temp_v0->unk4) {
                                goto loop_6;
                            }
                        }
                    }
                    var_t3 += 1;
                    var_a5 += arg3 * 8;
                    var_t2 += 4;
                } while (arg4 != var_t3);
            }
            if ((temp_s2 + (temp_v0->unk0 * 0xC) + 0x8C8C)->unk4 == temp_v0) {
                if (sp0 != 0) {
                    var_f0 = (bitwise f32) __glKonHostMapData2D();
                } else if (temp_s2->unk9098 != 1) {
                    var_f0 = (bitwise f32) __glKonSendMapData1D(temp_v0);
                } else {
                    var_f0 = (bitwise f32) __glKonHostMapData1D(temp_v0);
                }
            }
        }
    } else {
        var_f0 = (bitwise f32) __glSetError((void *)0x502);
    }
    return var_f0;
}

void __glkonim_Map1f(s32 arg3, s32 arg4, s64 arg5, f32 fparg1, f32 fparg2) {
    s64 sp8;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a7;
    s32 var_a3;
    s32 var_a7;
    s32 var_t2;
    s32 var_t3;
    s64 var_a5;
    s64 var_t0;
    void *temp_s2;
    void *temp_v0;

    sp8 = arg5;
    temp_s2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glKonSetUpMap1(arg4, arg3, (s32) sp, (bitwise s32) fparg1, (bitwise s32 *) fparg2);
        if (temp_v0 != NULL) {
            if (arg4 > 0) {
                temp_a0 = arg4 * 4;
                var_t2 = 0;
                var_a5 = sp8;
                var_t3 = 0;
                do {
                    var_a7 = 0;
                    if (temp_v0->unk4 > 0) {
                        var_t0 = var_a5;
                        var_a3 = var_t2;
loop_6:
                        *(temp_v0->unk30 + var_a3) = var_t0->unk0;
                        temp_a7 = var_a7 + 1;
                        temp_a3 = var_a3 + temp_a0;
                        if (temp_a7 < temp_v0->unk4) {
                            *(temp_v0->unk30 + temp_a3) = var_t0->unk4;
                            var_a7 = temp_a7 + 1;
                            var_t0 += 8;
                            var_a3 = temp_a3 + temp_a0;
                            if (var_a7 < temp_v0->unk4) {
                                goto loop_6;
                            }
                        }
                    }
                    var_t3 += 1;
                    var_a5 += arg3 * 4;
                    var_t2 += 4;
                } while (arg4 != var_t3);
            }
            if ((temp_s2 + (temp_v0->unk0 * 0xC) + 0x8C8C)->unk4 == temp_v0) {
                if (sp0 != 0) {
                    __glKonHostMapData2D();
                } else if (temp_s2->unk9098 != 1) {
                    __glKonSendMapData1D(temp_v0);
                } else {
                    __glKonHostMapData1D(temp_v0);
                }
            }
        }
    } else {
        __glSetError((void *)0x502, (bitwise void *) fparg2);
    }
}

f32 __glkonim_Map2d(s32 arg3, s32 arg4, s32 arg7, f64 fparg1, f64 fparg2, f64 fparg5, f64 fparg6, s32 arg_sp4, void *arg_spC) {
    void *sp10;
    f32 var_f0;
    s32 temp_a0;
    s32 temp_a7;
    s32 var_a3;
    s32 var_a7;
    s32 var_ra;
    s32 var_t3;
    s32 var_t8;
    s32 var_t9;
    void *temp_a0_2;
    void *temp_a2;
    void *temp_ret;
    void *temp_s6;
    void *temp_v0;
    void *var_a4;
    void *var_t0;
    void *var_t2;

    temp_s6 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_ret = __glKonSetUpMap2(arg4, arg_sp4, arg3, (bitwise s32) (f32) fparg1, (f32) fparg2, (f32) fparg5, (f32) fparg6, (bitwise f32) arg7, (s32) &sp10);
        temp_v0 = temp_ret;
        var_f0 = (bitwise f32) temp_ret;
        if (temp_v0 != NULL) {
            var_a3 = 0x8E94;
            temp_a2 = temp_s6 + (temp_v0->unk0 * 0xC) + 0x8E94;
            if (arg_sp4 > 0) {
                var_t9 = 0;
                var_a4 = arg_spC;
                var_ra = 0;
                temp_a0 = arg4 * arg_sp4 * 4;
                do {
                    var_t2 = var_a4;
                    if (arg4 > 0) {
                        var_t3 = var_t9;
                        var_t8 = 0;
                        do {
                            var_a3 = 0;
                            if (temp_v0->unk4 > 0) {
                                var_a7 = var_t3;
                                var_t0 = var_t2;
loop_8:
                                var_f0 = (f32) var_t0->unk0;
                                *(temp_v0->unk30 + var_a7) = var_f0;
                                var_a3 += 1;
                                temp_a7 = var_a7 + temp_a0;
                                if (var_a3 < temp_v0->unk4) {
                                    var_f0 = second half of f64;
                                    *(temp_v0->unk30 + temp_a7) = (f32) var_t0->unk8;
                                    var_a3 += 1;
                                    var_t0 += 0x10;
                                    var_a7 = temp_a7 + temp_a0;
                                    if (var_a3 < temp_v0->unk4) {
                                        goto loop_8;
                                    }
                                }
                            }
                            var_t8 += 1;
                            var_t2 += arg3 * 8;
                            var_t3 += 4;
                        } while (arg4 != var_t8);
                    }
                    var_ra += 1;
                    var_a4 += arg7 * 8;
                    var_t9 += arg4 * 4;
                } while (var_ra != arg_sp4);
            }
            temp_a0_2 = temp_a2->unk4;
            if (temp_a0_2 == temp_v0) {
                if (sp10 != NULL) {
                    var_f0 = (bitwise f32) __glKonHostMapData2D(temp_a0_2, sp10, (s32) temp_a2, (void (*)(f32, f32)) var_a3);
                } else if (temp_s6->unk9098 != 1) {
                    var_f0 = (bitwise f32) __glKonSendMapData2D(temp_v0, sp10, temp_a2, (void (*)(f32, f32)) var_a3);
                } else {
                    var_f0 = (bitwise f32) __glKonHostMapData2D(temp_v0, sp10, (s32) temp_a2, (void (*)(f32, f32)) var_a3);
                }
            }
        }
    } else {
        var_f0 = (bitwise f32) __glSetError((void *)0x502);
    }
    return var_f0;
}

void __glkonim_Map2f(s32 arg3, s32 arg4, s32 arg7, f32 fparg1, f32 fparg2, s32 arg_sp4, void *arg_spC) {
    void *sp10;
    s32 temp_a0;
    s32 temp_a7;
    s32 var_a3;
    s32 var_a7;
    s32 var_ra;
    s32 var_t3;
    s32 var_t8;
    s32 var_t9;
    void *temp_a0_2;
    void *temp_a2;
    void *temp_s6;
    void *temp_v0;
    void *var_a4;
    void *var_t0;
    void *var_t2;

    temp_s6 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glKonSetUpMap2(arg4, arg_sp4, arg3, (bitwise s32) fparg1, fparg2, (bitwise f32) arg7, (bitwise f32) &sp10);
        if (temp_v0 != NULL) {
            var_a3 = 0x8E94;
            temp_a2 = temp_s6 + (temp_v0->unk0 * 0xC) + 0x8E94;
            if (arg_sp4 > 0) {
                var_t9 = 0;
                var_a4 = arg_spC;
                var_ra = 0;
                temp_a0 = arg4 * arg_sp4 * 4;
                do {
                    var_t2 = var_a4;
                    if (arg4 > 0) {
                        var_t3 = var_t9;
                        var_t8 = 0;
                        do {
                            var_a3 = 0;
                            if (temp_v0->unk4 > 0) {
                                var_a7 = var_t3;
                                var_t0 = var_t2;
loop_8:
                                *(temp_v0->unk30 + var_a7) = var_t0->unk0;
                                var_a3 += 1;
                                temp_a7 = var_a7 + temp_a0;
                                if (var_a3 < temp_v0->unk4) {
                                    *(temp_v0->unk30 + temp_a7) = var_t0->unk4;
                                    var_a3 += 1;
                                    var_t0 += 8;
                                    var_a7 = temp_a7 + temp_a0;
                                    if (var_a3 < temp_v0->unk4) {
                                        goto loop_8;
                                    }
                                }
                            }
                            var_t8 += 1;
                            var_t2 += arg3 * 4;
                            var_t3 += 4;
                        } while (arg4 != var_t8);
                    }
                    var_ra += 1;
                    var_a4 += arg7 * 4;
                    var_t9 += arg4 * 4;
                } while (var_ra != arg_sp4);
            }
            temp_a0_2 = temp_a2->unk4;
            if (temp_a0_2 == temp_v0) {
                if (sp10 != NULL) {
                    __glKonHostMapData2D(temp_a0_2, sp10, (s32) temp_a2, (void (*)(f32, f32)) var_a3);
                } else if (temp_s6->unk9098 != 1) {
                    __glKonSendMapData2D(temp_v0, sp10, temp_a2, (void (*)(f32, f32)) var_a3);
                } else {
                    __glKonHostMapData2D(temp_v0, sp10, (s32) temp_a2, (void (*)(f32, f32)) var_a3);
                }
            }
        }
    } else {
        __glSetError((void *)0x502);
    }
}

void __glkonim_EvalCoord1d(f64 fparg0) {
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (temp_a1->unk8C8C != 0) {
        temp_a1->unk909C(temp_a1 + 0x10000, 0x10000, (f32) fparg0);
    }
}

void __glkonim_EvalCoord1dv(f64 *arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (temp_a2->unk8C8C != 0) {
        temp_a2->unk909C(temp_a2 + 0x10000, 0x10000, (f32) *arg0, second half of f64);
    }
}

void __glkonim_EvalCoord1f(void) {
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (temp_a1->unk8C8C != 0) {
        temp_a1->unk909C(temp_a1 + 0x10000, 0x10000);
    }
}

void __glkonim_EvalCoord1fv(f32 *arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (temp_a2->unk8C8C != 0) {
        temp_a2->unk909C(temp_a2 + 0x10000, 0x10000, *arg0);
    }
}

void __glkonim_EvalCoord2d(f64 fparg0, f64 fparg1) {
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (temp_a1->unk8E94 != 0) {
        temp_a1->unk90A0(temp_a1 + 0x10000, 0x10000, (f32) fparg0, (f32) fparg1);
    }
}

void __glkonim_EvalCoord2dv(void *arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (temp_a2->unk8E94 != 0) {
        temp_a2->unk90A0(temp_a2 + 0x10000, 0x10000, (f32) (second half of f64), (f32) arg0->unk8);
    }
}

void __glkonim_EvalCoord2f(void) {
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (temp_a1->unk8E94 != 0) {
        temp_a1->unk90A0(temp_a1 + 0x10000, 0x10000);
    }
}

void __glkonim_EvalCoord2fv(void *arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (temp_a2->unk8E94 != 0) {
        temp_a2->unk90A0(temp_a2 + 0x10000, 0x10000, arg0->unk0, arg0->unk4);
    }
}

void __glkonim_MapGrid1d(s32 arg0, f64 fparg1, f64 fparg2) {
    f32 temp_f4;
    f32 temp_f5;
    f32 var_f6;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            temp_a2->unk798 = arg0;
            temp_f4 = (f32) fparg2;
            temp_f5 = (f32) fparg1;
            temp_a2->unk790 = temp_f4;
            temp_a2->unk78C = temp_f5;
            if (arg0 > 0) {
                var_f6 = (temp_f4 - temp_f5) / (f32) arg0;
                temp_a2->unk794 = var_f6;
            } else {
                var_f6 = 0.0f;
                temp_a2->unk794 = 0.0f;
            }
            *(s32 *)0x4000 = 0x28;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (bitwise s32) temp_f5;
            *(void *)0x4000 = (bitwise s32) temp_f4;
            *(void *)0x4000 = (bitwise s32) var_f6;
            return;
        }
        *(void *)0x4000 = 0xE4;
        *(void *)0x4000 = 0x501;
        return;
    }
    __glSetError((void *)0x502, temp_a2);
}

void __glkonim_MapGrid1f(s32 arg0, f32 fparg1, f32 fparg2) {
    f32 var_f4;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            temp_a2->unk798 = arg0;
            temp_a2->unk790 = fparg2;
            temp_a2->unk78C = fparg1;
            if (arg0 > 0) {
                var_f4 = (fparg2 - fparg1) / (f32) arg0;
                temp_a2->unk794 = var_f4;
            } else {
                var_f4 = 0.0f;
                temp_a2->unk794 = 0.0f;
            }
            *(s32 *)0x4000 = 0x28;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (bitwise s32) fparg1;
            *(void *)0x4000 = (bitwise s32) fparg2;
            *(void *)0x4000 = (bitwise s32) var_f4;
            return;
        }
        *(void *)0x4000 = 0xE4;
        *(void *)0x4000 = 0x501;
        return;
    }
    __glSetError((void *)0x502, temp_a2);
}

void __glkonim_MapGrid2d(s32 arg0, s32 arg3, f64 fparg1, f64 fparg2, f64 fparg4, f64 fparg5) {
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 var_f8;
    f32 var_f9;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 >= 0) && (arg3 >= 0)) {
            temp_a2->unk7A8 = arg0;
            temp_f7 = (f32) fparg5;
            temp_f6 = (f32) fparg2;
            temp_f5 = (f32) fparg1;
            temp_a2->unk7A0 = temp_f6;
            temp_f4 = (f32) fparg4;
            temp_a2->unk79C = temp_f5;
            if (arg0 > 0) {
                var_f9 = (temp_f6 - temp_f5) / (f32) arg0;
                temp_a2->unk7A4 = var_f9;
            } else {
                var_f9 = 0.0f;
                temp_a2->unk7A4 = 0.0f;
            }
            temp_a2->unk7B8 = arg3;
            temp_a2->unk7B0 = temp_f7;
            temp_a2->unk7AC = temp_f4;
            if (arg3 > 0) {
                var_f8 = (temp_f7 - temp_f4) / (f32) arg3;
                temp_a2->unk7B4 = var_f8;
            } else {
                var_f8 = 0.0f;
                temp_a2->unk7B4 = 0.0f;
            }
            *(s32 *)0x4000 = 0x29;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (bitwise s32) temp_f5;
            *(void *)0x4000 = (bitwise s32) temp_f6;
            *(void *)0x4000 = (bitwise s32) var_f9;
            *(void *)0x4000 = arg3;
            *(void *)0x4000 = (bitwise s32) temp_f4;
            *(void *)0x4000 = (bitwise s32) temp_f7;
            *(void *)0x4000 = (bitwise s32) var_f8;
            return;
        }
        *(void *)0x4000 = 0xE4;
        *(void *)0x4000 = 0x501;
        return;
    }
    __glSetError((void *)0x502, temp_a2);
}

void __glkonim_MapGrid2f(s32 arg0, s32 arg3, f32 fparg1, f32 fparg2, f32 fparg4, f32 fparg5) {
    f32 var_f4;
    f32 var_f5;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 >= 0) && (arg3 >= 0)) {
            temp_a2->unk7A8 = arg0;
            temp_a2->unk7A0 = fparg2;
            temp_a2->unk79C = fparg1;
            if (arg0 > 0) {
                var_f4 = (fparg2 - fparg1) / (f32) arg0;
                temp_a2->unk7A4 = var_f4;
            } else {
                var_f4 = 0.0f;
                temp_a2->unk7A4 = 0.0f;
            }
            temp_a2->unk7B8 = arg3;
            temp_a2->unk7B0 = fparg5;
            temp_a2->unk7AC = fparg4;
            if (arg3 > 0) {
                var_f5 = (fparg5 - fparg4) / (f32) arg3;
                temp_a2->unk7B4 = var_f5;
            } else {
                var_f5 = 0.0f;
                temp_a2->unk7B4 = 0.0f;
            }
            *(s32 *)0x4000 = 0x29;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (bitwise s32) fparg1;
            *(void *)0x4000 = (bitwise s32) fparg2;
            *(void *)0x4000 = (bitwise s32) var_f4;
            *(void *)0x4000 = arg3;
            *(void *)0x4000 = (bitwise s32) fparg4;
            *(void *)0x4000 = (bitwise s32) fparg5;
            *(void *)0x4000 = (bitwise s32) var_f5;
            return;
        }
        *(void *)0x4000 = 0xE4;
        *(void *)0x4000 = 0x501;
        return;
    }
    __glSetError((void *)0x502, temp_a2);
}

void __glkonim_EvalMesh1(u32 arg0) {
    s32 temp_a3;
    s32 temp_a6;
    s32 var_a5;
    void *temp_a4;

    var_a5 = arg0 < 0x1B02U;
    temp_a4 = *(void **)0x1010;
    temp_a3 = arg0 < 0x1B00U;
    if (*(s32 *)0x1018 != 1) {
        if ((temp_a3 == 0) && (var_a5 = 0x10000, (var_a5 != 0))) {
            temp_a6 = temp_a4->unk8C8C;
            if (temp_a6 != 0) {
                __glSetError((void *) temp_a3, temp_a4, temp_a4 + 0x10000, temp_a6);
            }
        } else {
            __glSetError((void *)0x500, (void *) temp_a3, (s32) temp_a4, var_a5);
        }
    } else {
        __glSetError((void *)0x502, (void *) temp_a3, (s32) temp_a4, var_a5);
    }
}

void __glkonim_EvalPoint1(s32 arg0) {
    f32 var_f12;
    s32 temp_a4;
    s32 var_f13;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    var_f13 = arg0;
    if (temp_a2->unk8C8C != 0) {
        temp_a4 = temp_a2->unk798;
        var_f12 = temp_a2->unk790;
        if (temp_a4 != arg0) {
            var_f13 = (bitwise s32) (f32) var_f13;
            var_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
        }
        temp_a2->unk909C(temp_a2, temp_a2 + 0x10000, temp_a4, var_f12, var_f13, temp_a2->unk794);
    }
}

void __glkonim_EvalMesh2(u32 arg0) {
    s32 temp_a5;
    s32 temp_a7;
    void *temp_a6;

    temp_a7 = arg0 < 0x1B03U;
    temp_a6 = *(void **)0x1010;
    temp_a5 = arg0 < 0x1B00U;
    if (*(s32 *)0x1018 != 1) {
        if ((temp_a5 == 0) && (temp_a7 != 0)) {
            if (temp_a6->unk8E94 != 0) {
                __glSetError((void *) temp_a5, temp_a6, temp_a6 + 0x10000);
            }
        } else {
            __glSetError((void *)0x500, (void *) temp_a5, (s32) temp_a6, temp_a7);
        }
    } else {
        __glSetError((void *)0x502, (void *) temp_a5, (s32) temp_a6, temp_a7);
    }
}

void __glkonim_EvalPoint2(s32 arg0, s32 arg1) {
    f32 var_f12;
    f32 var_f13;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_f14;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (temp_a3->unk8E94 != 0) {
        var_f12 = temp_a3->unk7A0;
        temp_a5 = temp_a3->unk7A8;
        temp_a6 = temp_a3->unk7B8;
        if (temp_a5 != arg0) {
            var_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
        }
        var_f14 = arg1;
        if (temp_a6 == arg1) {
            var_f13 = temp_a3->unk7B0;
        } else {
            var_f14 = (bitwise s32) (f32) var_f14;
            var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
        }
        temp_a3->unk90A0(temp_a3, temp_a3 + 0x10000, temp_a5, temp_a6, var_f12, var_f13, var_f14, temp_a3->unk7B4);
    }
}

void __glKonUpdateEvalAttributes(void *arg0, u8 arg6) {
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_t1;
    u8 var_a6;
    void *var_a3;
    void *var_a3_2;
    void *var_a3_3;
    void *var_a3_4;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d980278
    if (M2C_ERROR()) {
        arg0->unk90AC = 1U;
    } else {
        arg0->unk90AC = 0U;
    }
    arg0->unk9074 = 0;
    arg0->unk8E6C = 0;
    arg0->unk9040 = 0;
    arg0->unk8E38 = 0;
    arg0->unk900C = 0;
    arg0->unk8E04 = 0;
    arg0->unk8FD8 = 0;
    arg0->unk8DD0 = 0;
    arg0->unk8FA4 = 0;
    arg0->unk8D9C = 0;
    arg0->unk8F70 = 0;
    arg0->unk8D68 = 0;
    arg0->unk8F3C = 0;
    arg0->unk8D34 = 0;
    arg0->unk8F08 = 0;
    arg0->unk8D00 = 0;
    arg0->unk8ED4 = 0;
    arg0->unk8CCC = 0;
    var_a3 = NULL;
    if (arg0->unk710 & 0x80) {
        arg0->unk8E38 = 1;
        var_a3 = arg0 + 0x8E28;
    }
    if (arg0->unk710 & 0x100) {
        arg0->unk8E6C = 1;
        var_a3 = arg0 + 0x8E5C;
    }
    arg0->unk8C8C = var_a3;
    var_a3_2 = NULL;
    if (arg0->unk710 & 8) {
        arg0->unk8D68 = 1;
        var_a3_2 = arg0 + 0x8D58;
    }
    var_a5 = arg0->unk710 & 0x20;
    if (arg0->unk710 & 0x10) {
        arg0->unk8D9C = 1;
        var_a3_2 = arg0 + 0x8D8C;
        var_a5 = arg0->unk710 & 0x20;
    }
    var_a5_2 = arg0->unk710 & 0x40;
    if (var_a5 != 0) {
        arg0->unk8D68 = 1;
        var_a3_2 = arg0 + 0x8D58;
        var_a5_2 = arg0->unk710 & 0x40;
    }
    if (var_a5_2 != 0) {
        arg0->unk8D9C = 1;
        var_a3_2 = arg0 + 0x8D8C;
    }
    arg0->unk8C98 = NULL;
    arg0->unk8CB0 = var_a3_2;
    if (arg0->unk710 & 2) {
        arg0->unk8D00 = 1;
        var_a6 = arg0->unkC95;
        if (var_a6 != 0) {
            arg0->unk8C98 = (void *) (arg0 + 0x8CF0);
        }
    }
    if (arg0->unk710 & 1) {
        arg0->unk8CCC = 1;
        if (arg0->unkC95 == 0) {
            arg0->unk8C98 = (void *) (arg0 + 0x8CBC);
        }
    }
    arg0->unk8CA4 = NULL;
    if (arg0->unk710 & 4) {
        arg0->unk8D34 = 1;
        arg0->unk8CA4 = (void *) (arg0 + 0x8D24);
    }
    var_a3_3 = NULL;
    if (arg0->unk714 & 0x80) {
        arg0->unk9040 = 1;
        var_a3_3 = arg0 + 0x9030;
    }
    if (arg0->unk714 & 0x100) {
        arg0->unk9074 = 1;
        var_a3_3 = arg0 + 0x9064;
    }
    arg0->unk8E94 = var_a3_3;
    var_a3_4 = NULL;
    if (arg0->unk714 & 8) {
        arg0->unk8F70 = 1;
        var_a3_4 = arg0 + 0x8F60;
    }
    var_a5_3 = arg0->unk714 & 0x20;
    if (arg0->unk714 & 0x10) {
        arg0->unk8FA4 = 1;
        var_a3_4 = arg0 + 0x8F94;
        var_a5_3 = arg0->unk714 & 0x20;
    }
    var_a5_4 = arg0->unk714 & 0x40;
    if (var_a5_3 != 0) {
        arg0->unk8F70 = 1;
        var_a3_4 = arg0 + 0x8F60;
        var_a5_4 = arg0->unk714 & 0x40;
    }
    if (var_a5_4 != 0) {
        arg0->unk8FA4 = 1;
        var_a3_4 = arg0 + 0x8F94;
    }
    arg0->unk8EB8 = var_a3_4;
    arg0->unk8EA0 = NULL;
    temp_a4 = arg0->unk714;
    temp_a5 = temp_a4 & 2;
    var_t1 = temp_a4 & 1;
    if (temp_a5 != 0) {
        arg0->unk8F08 = 1;
        var_a6 = arg0->unkC95;
        if (var_a6 != 0) {
            arg0->unk8EA0 = (void *) (arg0 + 0x8EF8);
        }
        var_t1 = arg0->unk714 & 1;
    }
    if (var_t1 != 0) {
        arg0->unk8ED4 = 1;
        if (arg0->unkC95 == 0) {
            arg0->unk8EA0 = (void *) (arg0 + 0x8EC4);
        }
    }
    arg0->unk8EAC = NULL;
    if (arg0->unk714 & 4) {
        arg0->unk8F3C = 1;
        if (arg0->unk90AC == 0) {
            arg0->unk8EAC = (void *) (arg0 + 0x8F2C);
        }
    }
    *(?32 *)0x4000 = 0x28;
    *(void *)0x4000 = (?32) arg0->unk798;
    *(void *)0x4000 = (?32) arg0->unk78C;
    *(void *)0x4000 = (?32) arg0->unk790;
    *(void *)0x4000 = (?32) arg0->unk794;
    *(void *)0x4000 = 0x29;
    *(void *)0x4000 = (?32) arg0->unk7A8;
    *(void *)0x4000 = (?32) arg0->unk79C;
    *(void *)0x4000 = (?32) arg0->unk7A0;
    *(void *)0x4000 = (?32) arg0->unk7A4;
    *(void *)0x4000 = (?32) arg0->unk7B8;
    *(void *)0x4000 = (?32) arg0->unk7AC;
    *(void *)0x4000 = (?32) arg0->unk7B0;
    *(void *)0x4000 = (?32) arg0->unk7B4;
    __glKonHostMapData2D((void *)0x28, arg0 + 0x10000, (s32) var_a3_4, (void (*)(f32, f32)) arg0->unk714, (void (*)(s32, s32, s64, s32, s64)) temp_a5, var_a6, (void *)1);
    __glKonHostMapData2D();
}

void __glkonim_GetMapfv(u32 arg0, s32 arg1, void *arg2, s32 arg6, s32 arg7) {
    s32 temp_a4;
    s32 temp_t9;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_a7;
    void *temp_t3;

    var_a6 = arg6;
    var_a7 = arg7;
    temp_a4 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a3 = arg0 < 0xDB1U;
        var_a5 = arg0 < 0xDB2U;
        if (var_a3 == 0) {
            if (var_a5 == 0) {
                var_a6 = arg0 < 0xDB6U;
                var_a7 = arg0 < 0xDB7U;
                if (var_a6 == 0) {
                    if (var_a7 == 0) {
                        var_a5 = 0x8194;
                        if (arg0 >= 0x8194U) {
                            if ((arg0 <= 0x8194U) || (arg0 == 0x8195)) {
                                __glkon_GetDeformationf(var_a3, temp_a4, 0x8194, var_a6, var_a7);
                            } else {
                                goto block_41;
                            }
                        } else {
                            if (arg0 >= 0xDB8U) {
                                if (arg0 >= 0xDB9U) {
                                    goto block_42;
                                }
                                goto block_17;
                            }
                            if (arg0 != 0xDB7) {
                                goto block_42;
                            }
                            goto block_17;
                        }
                    } else {
                        goto block_17;
                    }
                } else {
                    var_a5 = arg0 < 0xDB4U;
                    if (var_a5 == 0) {
                        if ((arg0 >= 0xDB5U) && (arg0 != 0xDB5)) {
                            goto block_42;
                        }
                        goto block_17;
                    }
                    if (arg0 >= 0xDB3U) {
                        if (var_a5 != 0) {
                            goto block_17;
                        }
                        goto block_41;
                    }
                    if (arg0 != 0xDB2) {
                        goto block_42;
                    }
                    goto block_17;
                }
            } else {
                goto block_17;
            }
        } else {
            var_a5 = arg0 < 0xD95U;
            if (var_a5 == 0) {
                var_a5 = arg0 < 0xD98U;
                if (arg0 >= 0xD96U) {
                    if (var_a5 == 0) {
                        if (arg0 >= 0xD99U) {
                            if (arg0 != 0xDB0) {
                                goto block_42;
                            }
block_17:
                            switch (arg1) {         /* switch 1; irregular */
                            default:                /* switch 1 */
                                __glSetError((void *)0x500, (void *) var_a3, temp_a4, var_a5, (void *) (arg0 * 4), arg0 * 4);
                                break;
                            case 0xA01:             /* switch 1 */
                                temp_t3 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                                arg2->unk0 = (f32) temp_t3->unk-38F4;
                                arg2->unk4 = (f32) temp_t3->unk-38F0;
                                return;
                            case 0xA00:             /* switch 1 */
                                temp_a5 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                                if (temp_a5->unk-38F0 > 0) {
                                    var_a6_2 = 0;
                                    do {
                                        if (temp_a5->unk-38F4 > 0) {
                                            var_a4 = 0;
                                            do {
                                                if (temp_a5->unk-38F8 > 0) {
                                                    var_a0 = 0;
                                                    do {
                                                        temp_t9 = temp_a5->unk-38F4;
                                                        *(arg2 + ((var_a0 + (temp_a5->unk-38F8 * (var_a4 + (temp_t9 * var_a6_2)))) * 4)) = *(temp_a5->unk-38CC + ((var_a4 + (temp_t9 * (var_a6_2 + (temp_a5->unk-38F0 * var_a0)))) * 4));
                                                        var_a0 += 1;
                                                    } while (var_a0 < temp_a5->unk-38F8);
                                                }
                                                var_a4 += 1;
                                            } while (var_a4 < temp_a5->unk-38F4);
                                        }
                                        var_a6_2 += 1;
                                    } while (var_a6_2 < temp_a5->unk-38F0);
                                }
                                break;
                            case 0xA02:             /* switch 1 */
                                temp_a6 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                                arg2->unk0 = (f32) temp_a6->unk-38E8;
                                arg2->unk4 = (f32) temp_a6->unk-38E4;
                                arg2->unk8 = (f32) temp_a6->unk-38DC;
                                arg2->unkC = (f32) temp_a6->unk-38D8;
                                return;
                            }
                        } else {
                            goto block_30;
                        }
                    } else {
                        var_a3 = 0xD96;
                        if (arg0 >= 0xD97U) {
                            if (var_a5 == 0) {
                                goto block_42;
                            }
                            goto block_31;
                        }
                        if (arg0 != 0xD96) {
                            goto block_42;
                        }
                        goto block_31;
                    }
                } else {
                    goto block_30;
                }
            } else {
                var_a6 = arg0 < 0xD92U;
                var_a7 = arg0 < 0xD91U;
                if (var_a6 == 0) {
                    var_a3 = arg0 < 0xD93U;
                    var_a6 = arg0 < 0xD94U;
                    if (var_a3 == 0) {
                        if (var_a6 == 0) {
                            if (var_a5 == 0) {
                                goto block_42;
                            }
                            goto block_31;
                        }
                        var_a5 = 0xD93;
                        if (arg0 != 0xD93) {
                            goto block_42;
                        }
                        goto block_31;
                    }
                    goto block_30;
                }
                if (var_a7 == 0) {
                    if (var_a6 != 0) {
                        goto block_30;
                    }
                    goto block_42;
                }
                if (arg0 != 0xD90) {
block_41:
block_42:
                    __glSetError((void *)0x500, (void *) var_a3, temp_a4, var_a5, (void *) var_a6, var_a7);
                } else {
block_30:
block_31:
                    switch (arg1) {                 /* switch 2; irregular */
                    default:                        /* switch 2 */
                        __glSetError((void *)0x500, (void *) var_a3, temp_a4, var_a5, (void *) var_a6, arg0 * 4);
                        break;
                    case 0xA01:                     /* switch 2 */
                        arg2->unk0 = (f32) *(0xFFFDCB84 + (s32) (temp_a4 + (arg0 * 0x34)));
                        return;
                    case 0xA00:                     /* switch 2 */
                        temp_a5_2 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                        if (temp_a5_2->unk-347C > 0) {
                            var_a4_2 = 0;
                            do {
                                var_a0_2 = 0;
                                if (temp_a5_2->unk-3480 > 0) {
                                    do {
                                        *(arg2 + ((var_a0_2 + (temp_a5_2->unk-3480 * var_a4_2)) * 4)) = *(temp_a5_2->unk-3454 + ((var_a4_2 + (temp_a5_2->unk-347C * var_a0_2)) * 4));
                                        var_a0_2 += 1;
                                    } while (var_a0_2 < temp_a5_2->unk-3480);
                                }
                                var_a4_2 += 1;
                            } while (var_a4_2 < temp_a5_2->unk-347C);
                        }
                        break;
                    case 0xA02:                     /* switch 2 */
                        temp_a7 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                        arg2->unk0 = (f32) temp_a7->unk-3470;
                        arg2->unk4 = (f32) temp_a7->unk-346C;
                        return;
                    }
                }
            }
        }
    } else {
        __glSetError((void *)0x502, (void *) temp_a4);
    }
}

void __glkonim_GetMapdv(u32 arg0, s32 arg1, void *arg2, s32 arg6, s32 arg7) {
    s32 temp_a4;
    s32 temp_t9;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_a7;
    void *temp_t3;

    var_a6 = arg6;
    var_a7 = arg7;
    temp_a4 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a3 = arg0 < 0xDB1U;
        var_a5 = arg0 < 0xD95U;
        if (var_a3 == 0) {
            var_a5 = arg0 < 0xDB2U;
            if (var_a5 == 0) {
                var_a6 = arg0 < 0xDB6U;
                var_a7 = arg0 < 0xDB7U;
                if (var_a6 == 0) {
                    var_a5 = 0x8194;
                    if (var_a7 == 0) {
                        if (arg0 >= 0x8194U) {
                            if ((arg0 <= 0x8194U) || (arg0 == 0x8195)) {
                                __glkon_GetDeformationd(var_a3, temp_a4, 0x8194, var_a6, var_a7);
                            } else {
                                goto block_42;
                            }
                        } else {
                            if (arg0 >= 0xDB8U) {
                                if (arg0 >= 0xDB9U) {
                                    goto block_43;
                                }
                                goto block_18;
                            }
                            if (arg0 != 0xDB7) {
                                goto block_43;
                            }
                            goto block_18;
                        }
                    } else {
                        goto block_17;
                    }
                } else {
                    var_a5 = arg0 < 0xDB4U;
                    if (var_a5 == 0) {
                        if (arg0 >= 0xDB5U) {
                            if (arg0 != 0xDB5) {
                                goto block_43;
                            }
                            goto block_18;
                        }
                        goto block_17;
                    }
                    if (arg0 >= 0xDB3U) {
                        if (var_a5 != 0) {
block_17:
                            goto block_18;
                        }
                        goto block_43;
                    }
                    if (arg0 != 0xDB2) {
                        goto block_43;
                    }
                    goto block_18;
                }
            } else {
                goto block_18;
            }
        } else if (var_a5 == 0) {
            var_a5 = arg0 < 0xD98U;
            if (arg0 >= 0xD96U) {
                if (var_a5 == 0) {
                    if (arg0 >= 0xD99U) {
                        if (arg0 != 0xDB0) {
                            goto block_43;
                        }
block_18:
                        switch (arg1) {             /* switch 1; irregular */
                        default:                    /* switch 1 */
                            __glSetError((void *)0x500, (void *) var_a3, temp_a4, var_a5, (void *) (arg0 * 4), arg0 * 4);
                            break;
                        case 0xA01:                 /* switch 1 */
                            temp_t3 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                            arg2->unk0 = (f64) temp_t3->unk-38F4;
                            arg2->unk8 = (f64) temp_t3->unk-38F0;
                            return;
                        case 0xA00:                 /* switch 1 */
                            temp_a5 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                            if (temp_a5->unk-38F0 > 0) {
                                var_a6_2 = 0;
                                do {
                                    if (temp_a5->unk-38F4 > 0) {
                                        var_a4 = 0;
                                        do {
                                            if (temp_a5->unk-38F8 > 0) {
                                                var_a0 = 0;
                                                do {
                                                    temp_t9 = temp_a5->unk-38F4;
                                                    *(arg2 + ((var_a0 + (temp_a5->unk-38F8 * (var_a4 + (temp_t9 * var_a6_2)))) * 8)) = (f64) *(temp_a5->unk-38CC + ((var_a4 + (temp_t9 * (var_a6_2 + (temp_a5->unk-38F0 * var_a0)))) * 4));
                                                    var_a0 += 1;
                                                } while (var_a0 < temp_a5->unk-38F8);
                                            }
                                            var_a4 += 1;
                                        } while (var_a4 < temp_a5->unk-38F4);
                                    }
                                    var_a6_2 += 1;
                                } while (var_a6_2 < temp_a5->unk-38F0);
                            }
                            break;
                        case 0xA02:                 /* switch 1 */
                            temp_a6 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                            arg2->unk0 = (f64) temp_a6->unk-38E8;
                            arg2->unk8 = (f64) temp_a6->unk-38E4;
                            arg2->unk10 = (f64) temp_a6->unk-38DC;
                            arg2->unk18 = (f64) temp_a6->unk-38D8;
                            return;
                        }
                    } else {
                        goto block_31;
                    }
                } else {
                    var_a3 = 0xD96;
                    if (arg0 >= 0xD97U) {
                        if (var_a5 == 0) {
                            goto block_43;
                        }
                        goto block_32;
                    }
                    if (arg0 != 0xD96) {
                        goto block_43;
                    }
                    goto block_32;
                }
            } else {
                goto block_31;
            }
        } else {
            var_a6 = arg0 < 0xD92U;
            var_a7 = arg0 < 0xD91U;
            if (var_a6 == 0) {
                var_a3 = arg0 < 0xD93U;
                var_a6 = arg0 < 0xD94U;
                if (var_a3 == 0) {
                    if (var_a6 == 0) {
                        if (var_a5 == 0) {
                            goto block_43;
                        }
                        goto block_32;
                    }
                    var_a5 = 0xD93;
                    if (arg0 != 0xD93) {
                        goto block_43;
                    }
                    goto block_32;
                }
                goto block_31;
            }
            if (var_a7 == 0) {
                if (var_a6 != 0) {
                    goto block_31;
                }
                goto block_43;
            }
            if (arg0 != 0xD90) {
block_42:
block_43:
                __glSetError((void *)0x500, (void *) var_a3, temp_a4, var_a5, (void *) var_a6, var_a7);
            } else {
block_31:
block_32:
                switch (arg1) {                     /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError((void *)0x500, (void *) var_a3, temp_a4, var_a5, (void *) var_a6, arg0 * 4);
                    break;
                case 0xA01:                         /* switch 2 */
                    arg2->unk0 = (f64) *(0xFFFDCB84 + (s32) (temp_a4 + (arg0 * 0x34)));
                    return;
                case 0xA00:                         /* switch 2 */
                    temp_a5_2 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                    if (temp_a5_2->unk-347C > 0) {
                        var_a4_2 = 0;
                        do {
                            var_a0_2 = 0;
                            if (temp_a5_2->unk-3480 > 0) {
                                do {
                                    *(arg2 + ((var_a0_2 + (temp_a5_2->unk-3480 * var_a4_2)) * 8)) = (f64) *(temp_a5_2->unk-3454 + ((var_a4_2 + (temp_a5_2->unk-347C * var_a0_2)) * 4));
                                    var_a0_2 += 1;
                                } while (var_a0_2 < temp_a5_2->unk-3480);
                            }
                            var_a4_2 += 1;
                        } while (var_a4_2 < temp_a5_2->unk-347C);
                    }
                    break;
                case 0xA02:                         /* switch 2 */
                    temp_a7 = temp_a4 + (arg0 * 0x34) + 0xFFFE0000;
                    arg2->unk0 = (f64) temp_a7->unk-3470;
                    arg2->unk8 = (f64) temp_a7->unk-346C;
                    return;
                }
            }
        }
    } else {
        __glSetError((void *)0x502, (void *) temp_a4);
    }
}

void __glkonim_GetMapiv(u32 arg0, s32 arg1, void *arg2, s32 arg7) {
    f64 temp_f4;
    f64 temp_f5;
    f64 var_f4;
    f64 var_f4_2;
    f64 var_f4_3;
    f64 var_f4_4;
    f64 var_f4_5;
    f64 var_f4_6;
    f64 var_f4_7;
    f64 var_f5;
    f64 var_f5_2;
    f64 var_f5_3;
    f64 var_f5_4;
    f64 var_f5_5;
    f64 var_f5_6;
    f64 var_f5_7;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_f7;
    s32 temp_f7_2;
    s32 temp_f7_3;
    s32 temp_f7_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    s32 var_a7_2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_at;

    var_a7 = arg7;
    temp_a5 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a3 = arg0 < 0xDB1U;
        var_a4 = arg0 < 0xDB2U;
        if (var_a3 == 0) {
            var_a6 = arg0 < 0xDB6U;
            if (var_a4 == 0) {
                var_a4 = arg0 < 0xDB4U;
                if (var_a6 == 0) {
                    var_a7 = arg0 < 0xDB7U;
                    var_a4 = 0x8194;
                    if (var_a7 == 0) {
                        var_a6 = arg0 < 0xDB8U;
                        if (arg0 >= 0x8194U) {
                            if ((arg0 <= 0x8194U) || (arg0 == 0x8195)) {
                                __glkon_GetDeformationi(var_a3, 0x8194, temp_a5, var_a6, var_a7);
                            } else {
                                goto block_41;
                            }
                        } else {
                            if (var_a6 == 0) {
                                var_a7 = arg0 < 0xDB9U;
                                if (var_a7 == 0) {
                                    goto block_41;
                                }
                                goto block_18;
                            }
                            if (arg0 != 0xDB7) {
                                goto block_41;
                            }
                            goto block_18;
                        }
                    } else {
                        goto block_17;
                    }
                } else {
                    if (var_a4 == 0) {
                        if (arg0 >= 0xDB5U) {
                            if (arg0 != 0xDB5) {
                                goto block_41;
                            }
                            goto block_18;
                        }
                        goto block_17;
                    }
                    if (arg0 >= 0xDB3U) {
                        if (var_a4 != 0) {
                            goto block_17;
                        }
                        goto block_41;
                    }
                    if (arg0 != 0xDB2) {
                        goto block_41;
                    }
                    goto block_18;
                }
            } else {
block_17:
                goto block_18;
            }
        } else {
            var_a4 = arg0 < 0xD95U;
            var_a6 = arg0 < 0xD92U;
            if (var_a4 == 0) {
                if (arg0 >= 0xD96U) {
                    var_a4 = arg0 < 0xD98U;
                    if (var_a4 == 0) {
                        if (arg0 >= 0xD99U) {
                            if (arg0 != 0xDB0) {
                                goto block_41;
                            }
block_18:
                            switch (arg1) {         /* switch 1; irregular */
                            default:                /* switch 1 */
                                __glSetError((void *)0x500, (void *) var_a3, var_a4, temp_a5, (void *) var_a6, var_a7);
                                break;
                            case 0xA01:             /* switch 1 */
                                temp_at = temp_a5 + (arg0 * 0x34) + 0xFFFE0000;
                                arg2->unk0 = (s32) temp_at->unk-38F4;
                                arg2->unk4 = (s32) temp_at->unk-38F0;
                                return;
                            case 0xA00:             /* switch 1 */
                                temp_a4 = temp_a5 + (arg0 * 0x34) + 0xFFFE0000;
                                if (temp_a4->unk-38F0 > 0) {
                                    var_a7_2 = 0;
loop_48:
                                    if (temp_a4->unk-38F4 > 0) {
                                        var_a1 = 0;
loop_53:
                                        var_a0 = 0;
                                        if (temp_a4->unk-38F8 > 0) {
loop_57:
                                            temp_a5_2 = temp_a4->unk-38F4;
                                            temp_f4 = (f64) *(temp_a4->unk-38CC + ((var_a1 + (temp_a5_2 * (var_a7_2 + (temp_a4->unk-38F0 * var_a0)))) * 4));
                                            if (!(GLUE_F64(0x3FE0000000000000U, 0U) < temp_f4)) {
                                                var_f5 = temp_f4 + -0.5;
                                            } else {
                                                var_f5 = temp_f4 + 0.5;
                                            }
                                            *(arg2 + ((var_a0 + (temp_a4->unk-38F8 * (var_a1 + (temp_a5_2 * var_a7_2)))) * 4)) = (s32) var_f5;
                                            var_a0 += 1;
                                            if (var_a0 < temp_a4->unk-38F8) {
                                                goto loop_57;
                                            }
                                        }
                                        var_a1 += 1;
                                        if (var_a1 < temp_a4->unk-38F4) {
                                            goto loop_53;
                                        }
                                    }
                                    var_a7_2 += 1;
                                    if (var_a7_2 < temp_a4->unk-38F0) {
                                        goto loop_48;
                                    }
                                }
                                break;
                            case 0xA02:             /* switch 1 */
                                temp_a4_2 = temp_a5 + (arg0 * 0x34) + 0xFFFE0000;
                                var_f4 = -0.5;
                                var_f5_2 = second half of f64;
                                if (GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U) < (f64) temp_a4_2->unk-38E8) {
                                    var_f4 = 0.5;
                                    var_f5_2 = second half of f64;
                                }
                                temp_f7 = (s32) (var_f5_2 + var_f4);
                                arg2->unk0 = temp_f7;
                                if (GLUE_F64(temp_f7, 0U) < (f64) temp_a4_2->unk-38E4) {
                                    var_f4_2 = 0.5;
                                    var_f5_3 = second half of f64;
                                } else {
                                    var_f4_2 = -0.5;
                                    var_f5_3 = second half of f64;
                                }
                                temp_f7_2 = (s32) (var_f5_3 + var_f4_2);
                                arg2->unk4 = temp_f7_2;
                                var_f4_3 = -0.5;
                                var_f5_4 = second half of f64;
                                if (GLUE_F64(temp_f7_2, 0U) < (f64) temp_a4_2->unk-38DC) {
                                    var_f4_3 = 0.5;
                                    var_f5_4 = second half of f64;
                                }
                                temp_f7_3 = (s32) (var_f5_4 + var_f4_3);
                                arg2->unk8 = temp_f7_3;
                                var_f4_4 = -0.5;
                                var_f5_5 = second half of f64;
                                if (GLUE_F64(temp_f7_3, 0U) < (f64) temp_a4_2->unk-38D8) {
                                    var_f4_4 = 0.5;
                                    var_f5_5 = second half of f64;
                                }
                                arg2->unkC = (s32) (var_f5_5 + var_f4_4);
                                return;
                            }
                        } else {
                            goto block_32;
                        }
                    } else {
                        if (arg0 >= 0xD97U) {
                            if (var_a4 == 0) {
                                goto block_41;
                            }
                            goto block_32;
                        }
                        if (arg0 != 0xD96) {
                            goto block_41;
                        }
                        goto block_32;
                    }
                } else {
                    goto block_32;
                }
            } else {
                var_a3 = arg0 < 0xD93U;
                if (var_a6 == 0) {
                    var_a6 = arg0 < 0xD94U;
                    if (var_a3 == 0) {
                        if (var_a6 == 0) {
                            if (var_a4 == 0) {
                                goto block_41;
                            }
                            goto block_32;
                        }
                        if (arg0 != 0xD93) {
                            goto block_41;
                        }
                        goto block_32;
                    }
                    goto block_31;
                }
                var_a7 = arg0 < 0xD91U;
                if (var_a7 == 0) {
                    if (var_a6 != 0) {
block_31:
                        goto block_32;
                    }
                    goto block_41;
                }
                if (arg0 != 0xD90) {
block_41:
                    __glSetError((void *)0x500, (void *) var_a3, var_a4, temp_a5, (void *) var_a6, var_a7);
                } else {
block_32:
                    switch (arg1) {                 /* switch 2; irregular */
                    default:                        /* switch 2 */
                        __glSetError((void *)0x500, (void *) var_a3, arg0 * 4, temp_a5, (void *) var_a6, var_a7);
                        break;
                    case 0xA01:                     /* switch 2 */
                        arg2->unk0 = (s32) *(0xFFFDCB84 + (s32) (temp_a5 + (arg0 * 0x34)));
                        return;
                    case 0xA00:                     /* switch 2 */
                        temp_a4_3 = temp_a5 + (arg0 * 0x34) + 0xFFFE0000;
                        if (temp_a4_3->unk-347C > 0) {
                            var_a1_2 = 0;
loop_63:
                            if (temp_a4_3->unk-3480 > 0) {
                                var_a0_2 = 0;
loop_67:
                                temp_f5 = (f64) *(temp_a4_3->unk-3454 + ((var_a1_2 + (temp_a4_3->unk-347C * var_a0_2)) * 4));
                                if (!(GLUE_F64(0x3FE0000000000000U, 0U) < temp_f5)) {
                                    var_f4_5 = temp_f5 + -0.5;
                                } else {
                                    var_f4_5 = temp_f5 + 0.5;
                                }
                                *(arg2 + ((var_a0_2 + (temp_a4_3->unk-3480 * var_a1_2)) * 4)) = (s32) var_f4_5;
                                var_a0_2 += 1;
                                if (var_a0_2 < temp_a4_3->unk-3480) {
                                    goto loop_67;
                                }
                            }
                            var_a1_2 += 1;
                            if (var_a1_2 < temp_a4_3->unk-347C) {
                                goto loop_63;
                            }
                        }
                        break;
                    case 0xA02:                     /* switch 2 */
                        temp_a4_4 = temp_a5 + (arg0 * 0x34) + 0xFFFE0000;
                        var_f4_6 = -0.5;
                        var_f5_6 = second half of f64;
                        if (GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U) < (f64) temp_a4_4->unk-3470) {
                            var_f4_6 = 0.5;
                            var_f5_6 = second half of f64;
                        }
                        temp_f7_4 = (s32) (var_f5_6 + var_f4_6);
                        arg2->unk0 = temp_f7_4;
                        if (GLUE_F64(temp_f7_4, 0U) < (f64) temp_a4_4->unk-346C) {
                            var_f4_7 = 0.5;
                            var_f5_7 = second half of f64;
                        } else {
                            var_f4_7 = -0.5;
                            var_f5_7 = second half of f64;
                        }
                        arg2->unk4 = (s32) (var_f5_7 + var_f4_7);
                        return;
                    }
                }
            }
        }
    } else {
        __glSetError((void *)0x502, (void *) temp_a5);
    }
}
