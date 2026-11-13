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
Error occurred while processing instruction: bgez $at, .L0d95bba4

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
Error occurred while processing instruction: bgez $t1, .L0d95bba4

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
Error occurred while processing instruction: bgez $t8, .L0d95bba4

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $v1, .L0d95ba1c

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $at, .L0d95ba1c

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a3, .L0d95b860

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $t3, .L0d95b864

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
Error occurred while processing instruction: bgez $at, .L0d95bba4

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
Error occurred while processing instruction: bgez $t1, .L0d95bba4

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
Error occurred while processing instruction: bgez $t8, .L0d95bba4

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $v1, .L0d95ba1c

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $at, .L0d95ba1c

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a3, .L0d95b860

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $t3, .L0d95b864

? __glKonlSendPackedVertex(s32, s32, s32, s32, void *); /* extern */
? __glSetError(?, void *);                          /* extern */
? __glim_ColorPointerEXT(s64, s64, ?, s64);         /* extern */
? __glim_EdgeFlagPointerEXT(?, s64);                /* extern */
? __glim_IndexPointerEXT(s64, ?, s64);              /* extern */
? __glim_NormalPointerEXT(s64, ?, s64);             /* extern */
? __glim_TexCoordPointerEXT(s64, s64, ?, s64);      /* extern */
? __glim_VertexPointerEXT(s64, s64, ?, s64);        /* extern */
s32 __glkonim_GetTexGenfv(s64, s32, s32, ? *, s32, s64, s64); /* extern */
? __glsplc_InvalidEnum(s32, s32, s32, s32, s32);    /* extern */
? __glsplc_InvalidOperation(s32, s32, s32, s32, s32); /* extern */
? __glsplc_InvalidValue(s32, s32, s32, s32, s32);   /* extern */
? glBegin(s32, s32, s32, s32, void *);              /* extern */
? glEnd(s32, s32, s32);                             /* extern */
extern ? __glNop;
extern ? __rodata0;

void pass_dword(f64 *arg0) {
    *(f64 *)0x4000 = *arg0;
}

void pass_dword_word(void *arg0) {
    *(f64 *)0x4000 = arg0->unk0;
    *(void *)0x4000 = (s32) arg0->unk8;
}

void pass_dword_dword(void *arg0) {
    *(f64 *)0x4000 = second half of f64;
    *(void *)0x4000 = (f64) arg0->unk8;
}

void pass_dword_dword_word(void *arg0) {
    *(f64 *)0x4000 = second half of f64;
    *(void *)0x4000 = (f64) arg0->unk8;
    *(void *)0x4000 = (s32) arg0->unk10;
}

void pass_dword_dword_dword(void *arg0) {
    *(f64 *)0x4000 = arg0->unk0;
    *(void *)0x4000 = (f64) arg0->unk8;
    *(void *)0x4000 = (f64) (second half of f64);
}

void pass_dword_dword_dword_word(void *arg0) {
    *(f64 *)0x4000 = arg0->unk0;
    *(void *)0x4000 = (f64) arg0->unk8;
    *(void *)0x4000 = (f64) (second half of f64);
    *(void *)0x4000 = (s32) arg0->unk18;
}

void pass_dword_dword_dword_dword(void *arg0) {
    *(f64 *)0x4000 = second half of f64;
    *(void *)0x4000 = (f64) arg0->unk8;
    *(void *)0x4000 = (f64) arg0->unk10;
    *(void *)0x4000 = (f64) (second half of f64);
}

void pass_word(s32 *arg0) {
    *(s32 *)0x4000 = *arg0;
}

void pass_word_word(void *arg0) {
    *(s32 *)0x4000 = arg0->unk0;
    *(void *)0x4000 = (s32) arg0->unk4;
}

void pass_word_word_word(void *arg0) {
    *(s32 *)0x4000 = arg0->unk0;
    *(void *)0x4000 = (s32) arg0->unk4;
    *(void *)0x4000 = (s32) arg0->unk8;
}

void pass_word_word_word_word(void *arg0) {
    *(s32 *)0x4000 = arg0->unk0;
    *(void *)0x4000 = (s32) arg0->unk4;
    *(void *)0x4000 = (s32) arg0->unk8;
    *(void *)0x4000 = (s32) arg0->unkC;
}

void pass_hword(u16 *arg0) {
    *(s32 *)0x4000 = *arg0 << 0x10;
}

void pass_hword_hword(void *arg0) {
    *(s32 *)0x4000 = arg0->unk2 | (arg0->unk0 << 0x10);
}

void pass_hword_hword_hword(void *arg0) {
    *(s32 *)0x4000 = arg0->unk2 | (arg0->unk0 << 0x10);
    *(void *)0x4000 = (s32) (arg0->unk4 << 0x10);
}

void pass_hword_hword_hword_hword(void *arg0) {
    *(s32 *)0x4000 = arg0->unk2 | (arg0->unk0 << 0x10);
    *(void *)0x4000 = (s32) (arg0->unk6 | (arg0->unk4 << 0x10));
}

void pass_byte(u8 *arg0) {
    *(s32 *)0x4000 = *arg0 << 0x18;
}

void pass_byte_byte(void *arg0) {
    *(s32 *)0x4000 = (arg0->unk0 << 0x18) | (arg0->unk1 << 0x10);
}

void pass_byte_byte_byte(void *arg0) {
    *(s32 *)0x4000 = (arg0->unk0 << 0x18) | (arg0->unk1 << 0x10) | (arg0->unk2 << 8);
}

void pass_byte_byte_byte_byte(void *arg0) {
    *(s32 *)0x4000 = arg0->unk3 | (arg0->unk2 << 8) | ((arg0->unk0 << 0x18) | (arg0->unk1 << 0x10));
}

void pass_invalid(void) {

}

s32 compute_func_ptr(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 var_a0;

    if (arg0 & 7) {
        goto block_1;
    }
    temp_a4 = arg1 >> 0x1F;
    if (((((((arg1 ^ temp_a4) - temp_a4) & 7) ^ temp_a4) - temp_a4) == 0) && (arg2 >= 5)) {
        var_a0 = 4;
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return *(&__rodata0 + 0x5168 + ((arg2 + (var_a0 * 0x21)) * 4));
    }
block_1:
    temp_a6 = arg1 >> 0x1F;
    if (arg0 & 3) {
        goto block_2;
    }
    if (((((((arg1 ^ temp_a6) - temp_a6) & 3) ^ temp_a6) - temp_a6) == 0) && (arg2 >= 3)) {
        var_a0 = 3;
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return *(&__rodata0 + 0x5168 + ((arg2 + (var_a0 * 0x21)) * 4));
    }
block_2:
    var_a0 = 1;
    if (!(arg0 & 1)) {
        temp_a3 = arg1 >> 0x1F;
        var_a0 = 1;
        if ((((((arg1 ^ temp_a3) - temp_a3) & 1) ^ temp_a3) - temp_a3) == 0) {
            if (arg2 >= 2) {
                return *(&__rodata0 + 0x5168 + ((arg2 + 0x42) * 4));
            }
            var_a0 = 1;
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return *(&__rodata0 + 0x5168 + ((arg2 + (var_a0 * 0x21)) * 4));
        }
    }
    return *(&__rodata0 + 0x5168 + ((arg2 + (var_a0 * 0x21)) * 4));
}

void update_cmpnd_cmd(void *arg0, s32 arg1) {
    *(s32 *)0x4000 = 0x180;
    *(void *)0x4000 = (s32) (arg0->unk1518 & arg0->unk151C);
    arg0->unk8AC8 = (s32) (arg0->unk8AC8 & ~arg1);
}

/*
Decompilation failure in function __glkonim_DrawArraysEXT:

Unable to determine jump table for jr instruction at kon_vertarray.s line 633.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glkonlc_DrawArraysEXT(u32 arg0, s64 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_lo_6;
    s32 temp_ra;
    s32 temp_s3;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t9;
    s32 var_a3;
    s32 var_a4;
    s32 var_a7;
    s32 var_t1;
    s32 var_t3;
    s32 var_t8;
    s64 var_s0;
    void *temp_s1;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d95bba4
    if (M2C_ERROR()) {
        // Error: negative shift count
        // At instruction: bgez $t1, .L0d95bba4
        if (M2C_ERROR() && (M2C_ERROR(/* Read from unset register $t3 */) < 0)) {
            // Error: negative shift count
            // At instruction: bgez $t8, .L0d95bba4
            if (M2C_ERROR()) {
                goto block_4;
            }
        }
    }
    var_t1 = 0;
    if ((0x40000 == 0) && (// Error: negative shift count, // At instruction: bltz $a3, .L0d95b860, M2C_ERROR())) {
        var_a3 = 1;
        if (0x1357D8 >= 0) {
            // Error: negative shift count
            // At instruction: bltz $t3, .L0d95b864
            if (M2C_ERROR()) {
                var_a3 = 0;
            }
        }
    } else {
block_4:
        var_a3 = 1;
    }
    if (temp_s1->unk13D4 & 4) {
        __glsplc_InvalidOperation(var_a3, 0x1357D8, temp_a5, temp_a6, var_a7);
    } else if ((arg1 >= 0) && (arg2 >= 0)) {
        if (arg0 < 0xAU) {
            if (!(temp_s1->unk8ACC & temp_a6) && (arg2 != 0) && (temp_a6 != 0)) {
                if ((temp_s1->unkC94 != 0) && ((var_a3 = temp_t0 & var_a7, (var_a3 == 0)) || (var_a3 = temp_t0 & var_a7, (var_t1 != 0))) && (// Error: negative shift count, // At instruction: bltz $v1, .L0d95ba1c, M2C_ERROR()) && (var_a4 = var_a3 & 0x1357D8, var_a7 = var_a3 & 0xFF, temp_t3 = (var_a3 >> 8) & 0xF, (var_a4 == 0)) && (var_a7 != 0)) {
                    var_a7 = (s32) (&__rodata0 + 0x5168);
                    temp_t9 = ((temp_t3 * 4) + var_a7)->unk374;
                    temp_t0_2 = (temp_t9 * 2) | (((((var_a3 >> 4) & 0xF) + ((var_a3 & 0xF) * 5)) * 4) + var_a7)->unk284;
                    if ((temp_t3 == 0) || ((temp_t0_2 >> 1) != 0)) {
                        var_t8 = 0;
                    } else {
                        var_t8 = 1;
                    }
                    temp_t3_2 = (var_a3 >> 0xC) & 0xF;
                    temp_t1 = temp_t0_2 | ((var_a7 + ((((var_a3 >> 0x10) & 0xF) + (temp_t3_2 * 5)) * 4))->unk394 * 4);
                    if ((temp_t3_2 == 0) || ((temp_t1 >> 2) != 0)) {
                        var_t3 = 0;
                    } else {
                        var_t3 = 1;
                    }
                    temp_ra = (var_a3 >> 0x14) & 0xF;
                    temp_t0_3 = temp_t1 | ((var_a7 + ((((var_a3 >> 0x18) & 7) + (temp_ra * 5)) * 4))->unk474 * 8);
                    if (((temp_ra != 0) && ((temp_t0_3 >> 3) == 0)) || (temp_t1_2 = (var_a7 + (temp_t0_3 * 4))->unk568, (temp_t1_2 >= 0)) || ((var_t8 | var_t3) != 0) || ((var_a3 = temp_t1_2, (temp_t9 != 0)) && ((// Error: negative shift count, // At instruction: bltz $at, .L0d95ba1c, M2C_ERROR()) || (temp_t2 == 0) || (sp0 = (s64) temp_a6, ((temp_t2 & 3) != 0))))) {
                        goto block_35;
                    }
                    if (temp_a5 & 0x40) {
                        var_a3 = (temp_t9 == 0) ? (temp_t1_2 | 0x100000) : var_a3;
                    }
                    __glKonlSendPackedVertex(var_a3, var_a4, temp_a5, temp_a6, (void *) var_a7);
                } else {
block_35:
                    sp8 = arg1;
                    sp0 = (s64) temp_a6;
                    unksp20 = arg2;
                    glBegin(var_a3, var_a4, temp_a5, temp_a6, (void *) var_a7);
                    var_s0 = sp8;
                    temp_s3 = unksp20 + var_s0;
                    if (var_s0 < temp_s3) {
                        do {
                            if (sp0 & 1) {
                                temp_a2 = temp_s1->unk1404;
                                temp_lo = temp_a2 * var_s0;
                                glEnd(temp_s1->unk13FC + temp_lo, temp_lo, temp_a2);
                            }
                            if (sp0 & 2) {
                                temp_a2_2 = temp_s1->unk1420;
                                temp_lo_2 = temp_a2_2 * var_s0;
                                temp_s1->unk142C(temp_s1->unk1414 + temp_lo_2, temp_lo_2, temp_a2_2);
                            }
                            if (sp0 & 4) {
                                temp_a2_3 = temp_s1->unk1454;
                                temp_lo_3 = temp_a2_3 * var_s0;
                                temp_s1->unk1460(temp_s1->unk1448 + temp_lo_3, temp_lo_3, temp_a2_3);
                            }
                            if (sp0 & 8) {
                                temp_a2_4 = temp_s1->unk1438;
                                temp_lo_4 = temp_a2_4 * var_s0;
                                temp_s1->unk1444(temp_s1->unk1430 + temp_lo_4, temp_lo_4, temp_a2_4);
                            }
                            if (sp0 & 0x10) {
                                temp_a2_5 = temp_s1->unk1468;
                                temp_lo_5 = temp_a2_5 * var_s0;
                                temp_s1->unk1474(temp_s1->unk1464 + temp_lo_5, temp_lo_5, temp_a2_5);
                            }
                            if (sp0 & 0x20) {
                                temp_a2_6 = temp_s1->unk13EC;
                                temp_lo_6 = temp_a2_6 * var_s0;
                                temp_s1->unk13F8(temp_s1->unk13E0 + temp_lo_6, temp_lo_6, temp_a2_6);
                            }
                            var_s0 += 1;
                        } while (temp_s3 != var_s0);
                    }
                    glEnd();
                }
            }
        } else {
            __glsplc_InvalidEnum(var_a3, 0x1357D8, temp_a5, temp_a6, var_a7);
        }
    } else {
        __glsplc_InvalidValue(var_a3, 0x1357D8, temp_a5, temp_a6, var_a7);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x10. */
void __glkonim_VertexPointerEXT(s64 arg0, s64 arg1, s64 arg4) {
    ? *temp_a3;
    s32 temp_a4;
    s64 temp_a5;
    void *temp_s0;

    unksp20 = arg4;
    unksp18 = arg1;
    unksp8 = arg0;
    temp_s0 = *(void **)0x1010;
    unksp10 = (s64) temp_s0->unk1518;
    __glim_VertexPointerEXT();
    if (temp_s0->unk13F8 == M2C_ERROR(/* Read from unset register $t9 */)) {
        temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC | 0x20);
        return;
    }
    temp_a5 = unksp18 * 5;
    temp_a4 = (unksp8 + temp_a5) * 4;
    temp_a3 = &__rodata0 + 0x5750 + temp_a4;
    temp_s0->unk8AB0 = __glkonim_GetTexGenfv(unksp20, temp_s0->unk13EC, *(0xFFFE7000 + (s32) temp_a3), temp_a3, temp_a4, temp_a5, unksp18);
    if (temp_s0->unk1518 != unksp10) {
        temp_s0->unk8AC8 = (s32) (temp_s0->unk8AC8 | 0x20);
    }
    temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC & ~0x20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34], gap at: 0x10. */
void __glkonim_NormalPointerEXT(s64 arg0, s64 arg3) {
    ? *temp_a3;
    s32 temp_a4;
    void *temp_s0;

    unksp10 = arg3;
    unksp8 = arg0;
    temp_s0 = *(void **)0x1010;
    unksp18 = (s64) temp_s0->unk1518;
    __glim_NormalPointerEXT();
    if (temp_s0->unk1410 == M2C_ERROR(/* Read from unset register $t9 */)) {
        temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC | 1);
        return;
    }
    temp_a4 = unksp8 * 0x14;
    temp_a3 = &__rodata0 + 0x5750 + temp_a4;
    temp_s0->unk8AB4 = __glkonim_GetTexGenfv(unksp10, temp_s0->unk1404, *(0xFFFE700C + (s32) temp_a3), temp_a3, temp_a4, unksp8);
    if (temp_s0->unk1518 != unksp18) {
        temp_s0->unk8AC8 = (s32) (temp_s0->unk8AC8 | 1);
    }
    temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC & ~1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x10. */
void __glkonim_ColorPointerEXT(s64 arg0, s64 arg1, s64 arg4) {
    ? *temp_a3;
    s32 temp_a4;
    s64 temp_a5;
    void *temp_s0;

    unksp20 = arg4;
    unksp18 = arg1;
    unksp8 = arg0;
    temp_s0 = *(void **)0x1010;
    unksp10 = (s64) temp_s0->unk1518;
    __glim_ColorPointerEXT();
    if (temp_s0->unk142C == M2C_ERROR(/* Read from unset register $t9 */)) {
        temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC | 2);
        return;
    }
    temp_a5 = unksp18 * 5;
    temp_a4 = (unksp8 + temp_a5) * 4;
    temp_a3 = &__rodata0 + 0x5750 + temp_a4;
    temp_s0->unk8AB8 = __glkonim_GetTexGenfv(unksp20, temp_s0->unk1420, *(0xFFFE7000 + (s32) temp_a3), temp_a3, temp_a4, temp_a5, unksp18);
    if (temp_s0->unk1518 != unksp10) {
        temp_s0->unk8AC8 = (s32) (temp_s0->unk8AC8 | 2);
    }
    temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC & ~2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34], gap at: 0x10. */
void __glkonim_IndexPointerEXT(s64 arg0, s64 arg3) {
    ? *temp_a3;
    s32 temp_a4;
    void *temp_s0;

    unksp10 = arg3;
    unksp8 = arg0;
    temp_s0 = *(void **)0x1010;
    unksp18 = (s64) temp_s0->unk1518;
    __glim_IndexPointerEXT();
    if (temp_s0->unk1444 == M2C_ERROR(/* Read from unset register $t9 */)) {
        temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC | 8);
        return;
    }
    temp_a4 = unksp8 * 0x14;
    temp_a3 = &__rodata0 + 0x5750 + temp_a4;
    temp_s0->unk8ABC = __glkonim_GetTexGenfv(unksp10, temp_s0->unk1438, *(0xFFFE7004 + (s32) temp_a3), temp_a3, temp_a4, unksp8);
    if (temp_s0->unk1518 != unksp18) {
        temp_s0->unk8AC8 = (s32) (temp_s0->unk8AC8 | 8);
    }
    temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC & ~8);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x10. */
void __glkonim_TexCoordPointerEXT(s64 arg0, s64 arg1, s64 arg4) {
    ? *temp_a3;
    s32 temp_a4;
    s64 temp_a5;
    void *temp_s0;

    unksp20 = arg4;
    unksp18 = arg1;
    unksp8 = arg0;
    temp_s0 = *(void **)0x1010;
    unksp10 = (s64) temp_s0->unk1518;
    __glim_TexCoordPointerEXT();
    if (temp_s0->unk1460 == M2C_ERROR(/* Read from unset register $t9 */)) {
        temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC | 4);
        return;
    }
    temp_a5 = unksp18 * 5;
    temp_a4 = (unksp8 + temp_a5) * 4;
    temp_a3 = &__rodata0 + 0x5750 + temp_a4;
    temp_s0->unk8AC0 = __glkonim_GetTexGenfv(unksp20, temp_s0->unk1454, *(0xFFFE7000 + (s32) temp_a3), temp_a3, temp_a4, temp_a5, unksp18);
    if (temp_s0->unk1518 != unksp10) {
        temp_s0->unk8AC8 = (s32) (temp_s0->unk8AC8 | 4);
    }
    temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC & ~4);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
void __glkonim_EdgeFlagPointerEXT(s64 arg2) {
    void *temp_s0;

    unksp8 = arg2;
    temp_s0 = *(void **)0x1010;
    unksp10 = (s64) temp_s0->unk1518;
    __glim_EdgeFlagPointerEXT();
    if (temp_s0->unk1474 == M2C_ERROR(/* Read from unset register $t9 */)) {
        temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC | 0x10);
        return;
    }
    temp_s0->unk8AC4 = __glkonim_GetTexGenfv(unksp8, temp_s0->unk1468, 1);
    if (temp_s0->unk1518 != unksp10) {
        temp_s0->unk8AC8 = (s32) (temp_s0->unk8AC8 | 0x10);
    }
    temp_s0->unk8ACC = (s32) (temp_s0->unk8ACC & ~0x10);
}

void __glkonim_VertexPointer(s64 arg0, s64 arg1, s64 arg3) {
    s64 sp38;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a3;
    s32 temp_a4;
    s64 temp_a5;
    void *temp_a1;

    sp18 = arg3;
    sp8 = arg0;
    sp10 = arg1;
    temp_a1 = *(void **)0x1010;
    sp20 = (s64) temp_a1;
    sp0 = (s64) temp_a1->unk1518;
    if (*(s32 *)0x1018 != 1) {
        __glim_VertexPointerEXT(sp8, sp10, 0, sp18);
        if (sp20->unk13F8 == &__glNop) {
            sp20->unk8ACC = (s32) (sp20->unk8ACC | 0x20);
            return;
        }
        sp38 = sp20 + 0x10000;
        temp_a5 = sp10 * 5;
        temp_a4 = (sp8 + temp_a5) * 4;
        temp_a3 = &__rodata0 + 0x5750 + temp_a4;
        sp20->unk8AB0 = __glkonim_GetTexGenfv(sp18, sp20->unk13EC, *(0xFFFE7000 + (s32) temp_a3), temp_a3, temp_a4, temp_a5, sp10);
        if (sp20->unk1518 != sp0) {
            sp20->unk8AC8 = (s32) (sp20->unk8AC8 | 0x20);
        }
        sp20->unk8ACC = (s32) (sp20->unk8ACC & ~0x20);
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glkonim_NormalPointer(s64 arg0, s64 arg2) {
    s64 sp30;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a3;
    s32 temp_a4;
    void *temp_a2;

    sp8 = arg0;
    sp10 = arg2;
    temp_a2 = *(void **)0x1010;
    sp18 = (s64) temp_a2;
    sp0 = (s64) temp_a2->unk1518;
    if (*(s32 *)0x1018 != 1) {
        __glim_NormalPointerEXT(sp8, 0, sp10);
        if (sp18->unk1410 == &__glNop) {
            sp18->unk8ACC = (s32) (sp18->unk8ACC | 1);
            return;
        }
        sp30 = sp18 + 0x10000;
        temp_a4 = sp8 * 0x14;
        temp_a3 = &__rodata0 + 0x5750 + temp_a4;
        sp18->unk8AB4 = __glkonim_GetTexGenfv(sp10, sp18->unk1404, *(0xFFFE700C + (s32) temp_a3), temp_a3, temp_a4, sp8);
        if (sp18->unk1518 != sp0) {
            sp18->unk8AC8 = (s32) (sp18->unk8AC8 | 1);
        }
        sp18->unk8ACC = (s32) (sp18->unk8ACC & ~1);
        return;
    }
    __glSetError(0x502, temp_a2);
}

void __glkonim_ColorPointer(s64 arg0, s64 arg1, s64 arg3) {
    s64 sp38;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a3;
    s32 temp_a4;
    s64 temp_a5;
    void *temp_a1;

    sp18 = arg3;
    sp8 = arg0;
    sp10 = arg1;
    temp_a1 = *(void **)0x1010;
    sp20 = (s64) temp_a1;
    sp0 = (s64) temp_a1->unk1518;
    if (*(s32 *)0x1018 != 1) {
        __glim_ColorPointerEXT(sp8, sp10, 0, sp18);
        if (sp20->unk142C == &__glNop) {
            sp20->unk8ACC = (s32) (sp20->unk8ACC | 2);
            return;
        }
        sp38 = sp20 + 0x10000;
        temp_a5 = sp10 * 5;
        temp_a4 = (sp8 + temp_a5) * 4;
        temp_a3 = &__rodata0 + 0x5750 + temp_a4;
        sp20->unk8AB8 = __glkonim_GetTexGenfv(sp18, sp20->unk1420, *(0xFFFE7000 + (s32) temp_a3), temp_a3, temp_a4, temp_a5, sp10);
        if (sp20->unk1518 != sp0) {
            sp20->unk8AC8 = (s32) (sp20->unk8AC8 | 2);
        }
        sp20->unk8ACC = (s32) (sp20->unk8ACC & ~2);
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glkonim_IndexPointer(s64 arg0, s64 arg2) {
    s64 sp30;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a3;
    s32 temp_a4;
    void *temp_a2;

    sp8 = arg0;
    sp10 = arg2;
    temp_a2 = *(void **)0x1010;
    sp18 = (s64) temp_a2;
    sp0 = (s64) temp_a2->unk1518;
    if (*(s32 *)0x1018 != 1) {
        __glim_IndexPointerEXT(sp8, 0, sp10);
        if (sp18->unk1444 == &__glNop) {
            sp18->unk8ACC = (s32) (sp18->unk8ACC | 8);
            return;
        }
        sp30 = sp18 + 0x10000;
        temp_a4 = sp8 * 0x14;
        temp_a3 = &__rodata0 + 0x5750 + temp_a4;
        sp18->unk8ABC = __glkonim_GetTexGenfv(sp10, sp18->unk1438, *(0xFFFE7004 + (s32) temp_a3), temp_a3, temp_a4, sp8);
        if (sp18->unk1518 != sp0) {
            sp18->unk8AC8 = (s32) (sp18->unk8AC8 | 8);
        }
        sp18->unk8ACC = (s32) (sp18->unk8ACC & ~8);
        return;
    }
    __glSetError(0x502, temp_a2);
}

void __glkonim_TexCoordPointer(s64 arg0, s64 arg1, s64 arg3) {
    s64 sp38;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a3;
    s32 temp_a4;
    s64 temp_a5;
    void *temp_a1;

    sp18 = arg3;
    sp8 = arg0;
    sp10 = arg1;
    temp_a1 = *(void **)0x1010;
    sp20 = (s64) temp_a1;
    sp0 = (s64) temp_a1->unk1518;
    if (*(s32 *)0x1018 != 1) {
        __glim_TexCoordPointerEXT(sp8, sp10, 0, sp18);
        if (sp20->unk1460 == &__glNop) {
            sp20->unk8ACC = (s32) (sp20->unk8ACC | 4);
            return;
        }
        sp38 = sp20 + 0x10000;
        temp_a5 = sp10 * 5;
        temp_a4 = (sp8 + temp_a5) * 4;
        temp_a3 = &__rodata0 + 0x5750 + temp_a4;
        sp20->unk8AC0 = __glkonim_GetTexGenfv(sp18, sp20->unk1454, *(0xFFFE7000 + (s32) temp_a3), temp_a3, temp_a4, temp_a5, sp10);
        if (sp20->unk1518 != sp0) {
            sp20->unk8AC8 = (s32) (sp20->unk8AC8 | 4);
        }
        sp20->unk8ACC = (s32) (sp20->unk8ACC & ~4);
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glkonim_EdgeFlagPointer(s64 arg1) {
    s64 sp28;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    void *temp_a1;
    void *temp_a1_2;

    sp8 = arg1;
    temp_a1 = *(void **)0x1010;
    sp10 = (s64) temp_a1;
    temp_a1_2 = temp_a1->unk1518;
    sp0 = (s64) temp_a1_2;
    if (*(s32 *)0x1018 != 1) {
        __glim_EdgeFlagPointerEXT(0, sp8);
        if (sp10->unk1474 == &__glNop) {
            sp10->unk8ACC = (s32) (sp10->unk8ACC | 0x10);
            return;
        }
        sp28 = sp10 + 0x10000;
        sp10->unk8AC4 = __glkonim_GetTexGenfv(sp8, sp10->unk1468, 1, &__glNop);
        if (sp10->unk1518 != sp0) {
            sp10->unk8AC8 = (s32) (sp10->unk8AC8 | 0x10);
        }
        sp10->unk8ACC = (s32) (sp10->unk8ACC & ~0x10);
        return;
    }
    __glSetError(0x502, temp_a1_2);
}
