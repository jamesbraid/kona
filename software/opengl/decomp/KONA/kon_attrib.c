Error occurred while processing instruction: c.lt.d $f12, $f1

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
Error occurred while processing instruction: bgez $a6, .L0d9603ec

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
Error occurred while processing instruction: bgez $a5, .L0d960b80

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
Error occurred while processing instruction: bgez $t0, .L0d960f68

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
Error occurred while processing instruction: bgez $t9, .L0d9615b4

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
Error occurred while processing instruction: bgez $v1, .L0d9634a8

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
Error occurred while processing instruction: bgez $a3, .L0d962028

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
Error occurred while processing instruction: bgez $a3, .L0d962144

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
Error occurred while processing instruction: bgez $t2, .L0d963424

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
Error occurred while processing instruction: bgez $t3, .L0d963434

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
Error occurred while processing instruction: bgez $v1, .L0d963768

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
Error occurred while processing instruction: bgez $a2, .L0d963084

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
Error occurred while processing instruction: bgez $a3, .L0d963094

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
Error occurred while processing instruction: bgez $a4, .L0d9630a4

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
Error occurred while processing instruction: bgez $a5, .L0d9630b4

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
Error occurred while processing instruction: bgez $a6, .L0d9630c4

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
Error occurred while processing instruction: bgez $a7, .L0d9630d4

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
Error occurred while processing instruction: bgez $t0, .L0d9630e4

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
Error occurred while processing instruction: bgez $a1, .L0d963c78

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
Error occurred while processing instruction: bgez $a2, .L0d963c8c

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
Error occurred while processing instruction: bgez $a3, .L0d963c9c

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
Error occurred while processing instruction: bgez $a4, .L0d963cac

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
Error occurred while processing instruction: bgez $a5, .L0d963cc0

Error occurred while processing instruction: c.lt.d $f12, $f1

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
Error occurred while processing instruction: bgez $a6, .L0d9603ec

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
Error occurred while processing instruction: bgez $a5, .L0d960b80

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
Error occurred while processing instruction: bgez $t0, .L0d960f68

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
Error occurred while processing instruction: bgez $t9, .L0d9615b4

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
Error occurred while processing instruction: bgez $v1, .L0d9634a8

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
Error occurred while processing instruction: bgez $a3, .L0d962028

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
Error occurred while processing instruction: bgez $a3, .L0d962144

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
Error occurred while processing instruction: bgez $t2, .L0d963424

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
Error occurred while processing instruction: bgez $t3, .L0d963434

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
Error occurred while processing instruction: bgez $v1, .L0d963768

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
Error occurred while processing instruction: bgez $a2, .L0d963084

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
Error occurred while processing instruction: bgez $a3, .L0d963094

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
Error occurred while processing instruction: bgez $a4, .L0d9630a4

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
Error occurred while processing instruction: bgez $a5, .L0d9630b4

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
Error occurred while processing instruction: bgez $a6, .L0d9630c4

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
Error occurred while processing instruction: bgez $a7, .L0d9630d4

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
Error occurred while processing instruction: bgez $t0, .L0d9630e4

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
Error occurred while processing instruction: bgez $a1, .L0d963c78

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
Error occurred while processing instruction: bgez $a2, .L0d963c8c

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
Error occurred while processing instruction: bgez $a3, .L0d963c9c

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
Error occurred while processing instruction: bgez $a4, .L0d963cac

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
Error occurred while processing instruction: bgez $a5, .L0d963cc0

Tried to use a double-precision instruction with odd-numbered float register $f1
Tried to use a double-precision instruction with odd-numbered float register $f1
? ValidateHistogramSink(s32);                       /* extern */
? __glKonPopTextureAttrib(s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glKonPushTextureAttrib(s32, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
? __glKonUpdateEvalAttributes(void *);              /* extern */
f32 __glSetError(?, void *, u32, s32, void *);      /* extern */
? __glkonConvertPolygonStipple(void *, s32, s64 *, s32, void *, void *, void *, ?); /* extern */
? __glkon_EnableTexture(?, s32, s32);               /* extern */
? __glkon_datavn(void *, ?);                        /* extern */
void *__glkon_get_special(?, ?);                    /* extern */
s32 __glkon_mem_alloc(?, ?, ?, s32, ?);             /* extern */
s32 __glkona_wait_rdata(void *, s32, s32, s32 *, ? *, void *, u32, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
? __glkonim_Disable(?, s32);                        /* extern */
? __glkonim_Enable(?, s32);                         /* extern */
? __glkonim_GetBooleanv(?, void *);                 /* extern */
? __glkonim_GetColorTableParameterfvSGI(?, ?, void *); /* extern */
? __glkonim_GetDoublev(?, void *);                  /* extern */
? __glkonim_GetFloatv(?, void *);                   /* extern */
? __glkonim_GetIntegerv(?, void *, s32, s64, s32 *, void *, void *, void *); /* extern */
? __glkonim_GetLightfv(s32, ?, s32, void *, s32, s32, s32, s32); /* extern */
? __glkonim_GetPolygonStipple(void *);              /* extern */
? __glkonim_GetTexGeniv(s32, ?, void *);            /* extern */
? __glkonim_GetTexParameterfv(s32, ?, s32);         /* extern */
? __glkonim_GetTexParameteriv(s32, ?, s32);         /* extern */
s64 __glkonim_IsEnabled(void *, s32, s32, s32, s32); /* extern */
? glAlphaFunc(s32);                                 /* extern */
? glBlendColorEXT(f32, f32, f32, f32);              /* extern */
? glBlendFunc(s32, s32);                            /* extern */
? glClearAccum(f32, f32, f32, f32);                 /* extern */
? glClearColor(f32, f32, f32, f32);                 /* extern */
? glClearDepth(f64, ?);                             /* extern */
? glClearIndex(f32);                                /* extern */
? glClearStencil(s16);                              /* extern */
? glColor4fv(void *, ?);                            /* extern */
? glColorMask(u8, u8, u8, u8);                      /* extern */
? glColorMaterial(s32, s32);                        /* extern */
? glColorTableParameterfvSGI(?, ?, void *);         /* extern */
? glCullFace(s32);                                  /* extern */
? glDeformSGIX(s32);                                /* extern */
? glDepthFunc(s32);                                 /* extern */
? glDepthMask(u8);                                  /* extern */
? glDepthRange(f64, ?);                             /* extern */
? glDisable(?, s32);                                /* extern */
? glDrawBuffer(s32);                                /* extern */
? glEdgeFlag(u8);                                   /* extern */
? glEnable(?, s32);                                 /* extern */
? glFogFuncSGIS(s32, void *);                       /* extern */
? glFogf(?, s32);                                   /* extern */
? glFogfv(?, void *);                               /* extern */
? glFogi(?, s32);                                   /* extern */
? glFrontFace(s32);                                 /* extern */
? glHint(?, s32);                                   /* extern */
? glIndexMask(s32);                                 /* extern */
? glIndexf(f32);                                    /* extern */
? glLightModelfv(?, void *);                        /* extern */
? glLightModeli(?, u8);                             /* extern */
? glLightf(s32, ?);                                 /* extern */
? glLightfv(s32, ?, void *);                        /* extern */
? glLineStipple(s16, u16);                          /* extern */
? glLineWidth(s32, f32);                            /* extern */
? glListBase(s32);                                  /* extern */
? glLogicOp(s32);                                   /* extern */
? glMapGrid1f(s32);                                 /* extern */
? glMapGrid2f(s32);                                 /* extern */
? glMaterialf(?, ?);                                /* extern */
? glMaterialfv(?, ?, void *);                       /* extern */
? glNormal3fv(void *);                              /* extern */
? glPixelTransferf(?, f32);                         /* extern */
? glPixelZoom(f32, f32);                            /* extern */
? glPointSize(f32);                                 /* extern */
? glPolygonMode(s32, s32);                          /* extern */
? glPolygonOffsetEXT(f32, f32);                     /* extern */
? glPolygonStipple(void *);                         /* extern */
? glReadBuffer(s32);                                /* extern */
? glSampleMaskSGIS(f32);                            /* extern */
? glSamplePatternSGIS(s32);                         /* extern */
? glScissor(s32, s32, s32, s32);                    /* extern */
? glShadeModel(s32);                                /* extern */
? glSpriteParameterfvSGIX(?, void *);               /* extern */
? glSpriteParameteriSGIX(?, s32);                   /* extern */
? glStencilFunc(s32, s16, s16);                     /* extern */
? glStencilMask(s16);                               /* extern */
? glStencilOp(s32, s32, s32);                       /* extern */
? glTexCoord4fv(void *);                            /* extern */
? glTexEnvfv(?, ?, void *);                         /* extern */
? glTexEnviv(?, ?, void *);                         /* extern */
? glTexGeniv(?, ?, void *, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
? glTexParameterfv(?, ?, s32);                      /* extern */
? glTexParameteriv(?, ?, s32);                      /* extern */
? glViewport(s32, s32, s32, s32);                   /* extern */
? memcpy(s32 *, void *, u32);                       /* extern */
void __glkonResolveContext(void *);                 /* static */

void __glkonim_ClearColor(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    if (*(s32 *)0x1018 != 1) {
        M2C_ERROR(/* unknown instruction: movt.s $f12, $f2, $fcc5 */);
        M2C_ERROR(/* unknown instruction: movt.s $f13, $f2, $fcc6 */);
        M2C_ERROR(/* unknown instruction: movt.s $f14, $f2, $fcc7 */);
        M2C_ERROR(/* unknown instruction: movf.s $f2, $f15, $fcc4 */);
        *(?32 *)0x4000 = 0x1D;
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movf.s $f4, $f12, $fcc3 */);
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movf.s $f3, $f13, $fcc2 */);
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movf.s $f1, $f14, $fcc1 */);
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc0 */);
        return;
    }
    __glSetError(0x502, *(void **)0x1010);
}

void __glkonim_ClearAccum(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    if (*(s32 *)0x1018 != 1) {
        M2C_ERROR(/* unknown instruction: movt.s $f14, $f2, $fcc7 */);
        M2C_ERROR(/* unknown instruction: movt.s $f13, $f2, $fcc6 */);
        M2C_ERROR(/* unknown instruction: movt.s $f12, $f2, $fcc5 */);
        M2C_ERROR(/* unknown instruction: movf.s $f2, $f15, $fcc4 */);
        *(?32 *)0x4000 = 0x1B;
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movt.s $f4, $f0, $fcc3 */);
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movt.s $f3, $f0, $fcc2 */);
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movt.s $f1, $f0, $fcc1 */);
        *(void *)0x4000 = (?32) M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc0 */);
        return;
    }
    __glSetError(0x502);
}

f32 __glkonim_ClearDepth(f32 fparg0) {
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f1
        // At instruction: c.lt.d $f12, $f1
        return temp_a1->unkDD8;
    }
    return __glSetError(0x502, temp_a1);
}

void __glkonim_PushAttrib(s32 arg0) {
    s64 sp8;
    ? *temp_s0;
    ? *temp_v0;
    ? *temp_v0_2;
    ? *temp_v0_3;
    ? *var_a0;
    ? *var_a2_3;
    ? *var_s1;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f17;
    f32 temp_f17_2;
    f32 temp_f17_3;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f19;
    f32 temp_f19_2;
    s32 *temp_a4_2;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v1_2;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_5;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_t1;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_v0;
    s32 var_v1;
    s64 *temp_t0;
    s64 temp_a3;
    s64 var_a3;
    s64 var_a4;
    s64 var_a5;
    s64 var_at;
    u32 temp_a0;
    u32 temp_s4;
    u32 var_a6;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s3;
    void *var_a1_4;
    void *var_s2;

    temp_s3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((temp_s3->unkA124 != NULL) || (__glkon_mem_alloc(0, 0, 0, temp_s3->unkEC0 << 0xB, 0) >= 0)) {
            *(s32 *)0x4000 = 0xC9;
            *(void *)0x4000 = arg0;
            __glkona_wait_rdata();
            temp_a1 = temp_s3->unkEC0;
            temp_a0 = temp_s3->unk31BC;
            temp_s2 = temp_s3->unk7B64;
            var_s2 = temp_s2 + 4;
            if (temp_a0 < (u32) (temp_s3->unk31B8 + (temp_a1 * 4))) {
                sp8 = (s64) temp_a0;
                if (temp_s3->unkA124 != NULL) {
                    var_a0 = temp_s3->unkA128;
                } else {
                    temp_v0 = temp_s3->unk4(temp_s3, temp_a1, 4);
                    temp_s3->unkA128 = temp_v0;
                    var_a0 = temp_v0;
                    temp_s3->unkA124 = temp_v0;
                }
                if (*var_a0 == NULL) {
                    *temp_s3->unkA128 = temp_s3->unk4(temp_s3, 1, 0x105C);
                    var_a0 = temp_s3->unkA128;
                }
                temp_s3->unkA128 = (? *) (var_a0 + 4);
                temp_s0 = *var_a0;
                temp_s0->unk0 = NULL;
                temp_v0_2 = *sp8;
                var_s1 = temp_v0_2;
                if (temp_v0_2 == NULL) {
                    temp_v0_3 = temp_s3->unk4(temp_s3, 1, 0xBD0);
                    var_s1 = temp_v0_3;
                    *sp8 = temp_v0_3;
                }
                var_s1->unk0 = arg0;
                var_a5 = temp_s3->unk700;
                var_a6 = sp8 + 4;
                temp_s3->unk31BC = var_a6;
                var_s1->unk650 = var_a5;
                var_a4 = temp_s3->unk708;
                var_s1->unk658 = var_a4;
                var_a3 = temp_s3->unk710;
                var_s1->unk660 = var_a3;
                var_s1->unk668 = (s32) temp_s3->unk718;
                if (arg0 & 1) {
                    var_s1->unk10 = (f32) temp_s2->unk4;
                    var_s1->unk14 = (f32) var_s2->unk4;
                    var_s1->unk18 = (f32) var_s2->unk8;
                    var_s1->unk1C = (f32) var_s2->unkC;
                    var_s1->unk2C = (f32) var_s2->unk10;
                    var_s1->unk20 = (f32) var_s2->unk14;
                    var_s1->unk24 = (f32) var_s2->unk18;
                    var_s1->unk28 = (f32) var_s2->unk1C;
                    var_s1->unk30 = (f32) var_s2->unk20;
                    var_s1->unk34 = (f32) var_s2->unk24;
                    var_s1->unk38 = (f32) var_s2->unk28;
                    var_s1->unk3C = (f32) var_s2->unk2C;
                    var_s1->unk115 = (s8) (s32) var_s2->unk30;
                    var_s1->unkD0 = (f32) var_s2->unk34;
                    var_s1->unkD4 = (f32) var_s2->unk38;
                    var_s1->unkD8 = (f32) var_s2->unk3C;
                    var_s1->unkDC = (f32) var_s2->unk40;
                    var_s1->unkE0 = (f32) var_s2->unk44;
                    var_s1->unk70 = (f32) var_s2->unk48;
                    var_s1->unk74 = (f32) var_s2->unk4C;
                    var_s1->unk78 = (f32) var_s2->unk50;
                    var_s1->unk7C = (f32) var_s2->unk54;
                    var_s1->unkC0 = (f32) var_s2->unk58;
                    var_s1->unkC4 = (f32) var_s2->unk5C;
                    var_s1->unkC8 = (f32) var_s2->unk60;
                    var_s1->unkCC = (f32) var_s2->unk64;
                    var_s1->unk44 = (s32) (s64) var_s2->unk68;
                    temp_f0 = var_s2->unk6C;
                    var_s2 += 0x70;
                    var_s1->unkA8 = temp_f0;
                }
                if (arg0 & 0x2000) {
                    var_a0_2 = (s32) temp_s3->unk700;
                    var_s1->unk650 = var_a0_2;
                    temp_a1_2 = temp_s3->unk7B90;
                    var_t3 = temp_a1_2 & 4;
                    if (temp_a1_2 & 2) {
                        var_a0_2 |= 0x10000;
                        var_s1->unk650 = var_a0_2;
                        var_t3 = temp_s3->unk7B90 & 4;
                    }
                    if (var_t3 != 0) {
                        var_a0_2 |= 0x20000;
                        var_s1->unk650 = var_a0_2;
                    }
                    if (temp_s3->unk7B90 & 8) {
                        var_s1->unk650 = (s32) (var_a0_2 | 0x40000000);
                    }
                    var_s1->unk660 = (s32) temp_s3->unk710;
                    var_s1->unk664 = (s32) temp_s3->unk714;
                }
                var_t1 = arg0 & 0x80;
                if (0x10000 & arg0) {
                    var_a0_3 = 0xC;
                    var_a1 = 0;
                    do {
                        var_a0_3 -= 2;
                        *(var_a1 + (var_s1 + 0x6DC)) = *(var_a1 + (temp_s3 + 0x78C));
                        var_a3 = (s64) (var_a1 + (var_s1 + 0x6E0));
                        temp_v1 = *(var_a1 + (temp_s3 + 0x790));
                        var_a1 += 8;
                        *var_a3 = temp_v1;
                    } while (var_a0_3 > 0);
                    var_s1->unk660 = (s32) temp_s3->unk710;
                    var_a6 = 0x800000;
                    var_s1->unk664 = (s32) temp_s3->unk714;
                    temp_a4 = (s32) var_s1->unk650 & ~0x800000U;
                    var_s1->unk650 = temp_a4;
                    var_a5 = (s32) temp_s3->unk700 & 0x800000;
                    var_a4 = temp_a4 | var_a5;
                    var_s1->unk650 = (s32) var_a4;
                    var_t1 = arg0 & 0x80;
                }
                var_v1 = arg0 & 0x40;
                if (var_t1 != 0) {
                    var_s1->unk584 = (s32) var_s2->unk0;
                    var_s1->unk598 = (f32) var_s2->unk4;
                    var_s1->unk59C = (f32) var_s2->unk8;
                    var_s1->unk5A0 = (f32) var_s2->unkC;
                    var_s1->unk588 = (f32) var_s2->unk10;
                    var_s1->unk58C = (f32) var_s2->unk14;
                    var_s1->unk590 = (f32) var_s2->unk18;
                    var_s1->unk594 = (f32) var_s2->unk1C;
                    var_s1->unk5A8 = (f32) var_s2->unk20;
                    temp_s0->unk1008 = (f32) var_s2->unk24;
                    temp_s0->unk100C = (f32) var_s2->unk28;
                    temp_s0->unk1010 = (f32) var_s2->unk2C;
                    temp_s0->unk1014 = (f32) var_s2->unk30;
                    temp_t3 = var_s2->unk34;
                    temp_s0->unk4 = temp_t3;
                    temp_a0_2 = var_s2->unk38;
                    temp_s2_2 = (temp_a0_2 == 0) ? (var_s2 + 0x3C) : (var_s2 + 0x44);
                    if ((temp_t3 * 2) > 0) {
                        var_a5 = (s64) temp_s2_2;
                        var_a4 = (s64) temp_s0;
                        var_a2 = 0;
loop_25:
                        var_a4->unk8 = (f32) var_a5->unk0;
                        temp_a2 = var_a2 + 1;
                        if (temp_a2 < (temp_s0->unk4 * 2)) {
                            var_a4->unkC = (f32) var_a5->unk4;
                            temp_a2_2 = temp_a2 + 1;
                            if (temp_a2_2 < (temp_s0->unk4 * 2)) {
                                var_a4->unk10 = (f32) var_a5->unk8;
                                var_a2 = temp_a2_2 + 1;
                                var_a5 += 0xC;
                                var_a4 += 0xC;
                                if (var_a2 < (temp_s0->unk4 * 2)) {
                                    goto loop_25;
                                }
                            }
                        }
                    }
                    temp_s2_3 = temp_s2_2 + 0x100;
                    var_s2 = (temp_a0_2 == 0) ? (temp_s2_3 + 8) : temp_s2_3;
                    var_v1 = arg0 & 0x40;
                }
                var_v0 = 0x20000 & arg0;
                if (var_v1 != 0) {
                    var_s1->unk4E0 = (f32) var_s2->unk0;
                    var_s1->unk4E4 = (f32) var_s2->unk4;
                    var_s1->unk4E8 = (f32) var_s2->unk8;
                    var_s1->unk4EC = (f32) var_s2->unkC;
                    var_s1->unk4F0 = (f32) var_s2->unk10;
                    var_s1->unk4F4 = (f32) var_s2->unk14;
                    var_s1->unk4F8 = (f32) var_s2->unk18;
                    var_s1->unk4FC = (f32) var_s2->unk1C;
                    var_s1->unk500 = (f32) var_s2->unk20;
                    var_s1->unk504 = (f32) var_s2->unk24;
                    var_s1->unk508 = (f32) var_s2->unk28;
                    var_s1->unk50C = (f32) var_s2->unk2C;
                    var_s1->unk510 = (f32) var_s2->unk30;
                    var_s1->unk514 = (f32) var_s2->unk34;
                    temp_f16 = var_s2->unk38;
                    var_s1->unk518 = temp_f16;
                    temp_f15 = var_s2->unk3C;
                    var_s1->unk51C = temp_f15;
                    temp_f14 = var_s2->unk40;
                    var_s1->unk520 = temp_f14;
                    temp_f13 = var_s2->unk50;
                    var_s1->unk524 = temp_f13;
                    temp_f12 = var_s2->unk54;
                    var_s1->unk528 = temp_f12;
                    var_s1->unk52C = (f32) var_s2->unk58;
                    var_s1->unk530 = (f32) var_s2->unk60;
                    var_s1->unk534 = (f32) var_s2->unk64;
                    var_s1->unk538 = (f32) var_s2->unk68;
                    var_s1->unk53C = (f32) var_s2->unk6C;
                    var_s1->unk540 = (f32) var_s2->unk70;
                    var_s1->unk544 = (f32) var_s2->unk74;
                    var_s1->unk548 = (f32) var_s2->unk78;
                    var_s1->unk54C = (f32) var_s2->unk7C;
                    var_s1->unk550 = (f32) var_s2->unk80;
                    var_s1->unk554 = (f32) var_s2->unk84;
                    var_s1->unk558 = (f32) var_s2->unk88;
                    var_s1->unk55C = (f32) var_s2->unk8C;
                    var_s1->unk560 = (f32) var_s2->unk90;
                    var_s1->unk564 = (f32) var_s2->unk94;
                    var_s1->unk568 = (f32) var_s2->unk98;
                    var_s1->unk56C = (f32) var_s2->unk9C;
                    var_s1->unk570 = (f32) var_s2->unkA0;
                    temp_f19 = var_s2->unkB0;
                    var_s1->unk574 = temp_f19;
                    temp_f18 = var_s2->unkB4;
                    var_s1->unk578 = temp_f18;
                    temp_f17 = var_s2->unkB8;
                    var_s1->unk57C = temp_f17;
                    temp_a2_3 = temp_s3->unkE04;
                    var_s2 += 0xC0;
                    var_s1->unk580 = __glkona_wait_rdata(temp_s3, temp_a2_3 * 0xCC, temp_a2_3, (s32 *) var_a3, (? *) var_a4, (void *) var_a5, var_a6, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
                    var_a1_2 = 0;
                    if (temp_s3->unkE04 > 0) {
                        var_a0_4 = 0;
                        do {
                            (var_s1->unk580 + var_a1_2)->unk30 = (f32) var_s2->unk0;
                            (var_s1->unk580 + var_a1_2)->unk34 = (f32) var_s2->unk4;
                            (var_s1->unk580 + var_a1_2)->unk38 = (f32) var_s2->unk8;
                            (var_s1->unk580 + var_a1_2)->unk3C = (f32) var_s2->unkC;
                            (var_s1->unk580 + var_a1_2)->unk40 = (f32) var_s2->unk10;
                            (var_s1->unk580 + var_a1_2)->unk44 = (f32) var_s2->unk14;
                            (var_s1->unk580 + var_a1_2)->unk48 = (f32) var_s2->unk18;
                            (var_s1->unk580 + var_a1_2)->unk4C = (f32) var_s2->unk1C;
                            (var_s1->unk580 + var_a1_2)->unk50 = (f32) var_s2->unk20;
                            (var_s1->unk580 + var_a1_2)->unk54 = (f32) var_s2->unk24;
                            (var_s1->unk580 + var_a1_2)->unk58 = (f32) var_s2->unk28;
                            (var_s1->unk580 + var_a1_2)->unk5C = (f32) var_s2->unk2C;
                            var_a0_4 += 1;
                            var_s2 += 0x30;
                            var_a1_2 += 0x74;
                        } while (var_a0_4 < temp_s3->unkE04);
                    }
                    var_v0 = 0x20000 & arg0;
                }
                var_a0_5 = arg0 & 0x20;
                if (var_v0 != 0) {
                    var_s1->unk70C = (s32) temp_s3->unk7BC;
                    var_a0_5 = arg0 & 0x20;
                }
                var_t3_2 = arg0 & 8;
                if (var_a0_5 != 0) {
                    temp_a7 = temp_s3 + 0x288;
                    temp_a6 = var_s1 + 0x1D8;
                    temp_a4_2 = var_s1 + 0x1D0;
                    temp_a5 = temp_s3 + 0x280;
                    var_a2_2 = 8;
                    var_a1_3 = 0xE;
                    var_s1->unk1D0 = (s64) temp_s3->unk280;
                    do {
                        var_a1_3 -= 2;
                        *(var_a2_2 + temp_a4_2) = *(var_a2_2 + temp_a5);
                        temp_t0 = var_a2_2 + temp_a6;
                        temp_a3 = *(var_a2_2 + temp_a7);
                        var_a2_2 += 0x10;
                        *temp_t0 = temp_a3;
                    } while (var_a1_3 > 0);
                    *(var_a2_2 + temp_a4_2) = *(var_a2_2 + temp_a5);
                    var_s1->unk4B4 = (s32) temp_s3->unk564;
                    __glkonim_GetIntegerv(0xC02, var_s1 + 0x424, var_a2_2, temp_a3, temp_a4_2, temp_a5, temp_a6, temp_a7);
                    __glkonim_GetColorTableParameterfvSGI(0x80D0, 0x80D6, var_s1 + 0x964);
                    __glkonim_GetColorTableParameterfvSGI(0x80D1, 0x80D6, var_s1 + 0xA04);
                    __glkonim_GetColorTableParameterfvSGI(0x80D2, 0x80D6, var_s1 + 0xAA4);
                    __glkonim_GetColorTableParameterfvSGI(0x80BC, 0x80D6, var_s1 + 0xB44);
                    __glkonim_GetColorTableParameterfvSGI(0x80D0, 0x80D7, var_s1 + 0x974);
                    __glkonim_GetColorTableParameterfvSGI(0x80D1, 0x80D7, var_s1 + 0xA14);
                    __glkonim_GetColorTableParameterfvSGI(0x80D2, 0x80D7, var_s1 + 0xAB4);
                    __glkonim_GetColorTableParameterfvSGI(0x80BC, 0x80D7, var_s1 + 0xB54);
                    var_t3_2 = arg0 & 8;
                }
                if (var_t3_2 != 0) {
                    var_s1->unk144 = (f32) var_s2->unk4;
                    temp_f17_2 = var_s2->unkC;
                    var_s2 += 0x10;
                    var_s1->unk148 = temp_f17_2;
                }
                var_at = (s64) arg0 << 0x2D;
                if (arg0 & 0x10) {
                    var_a2_3 = var_s1;
                    var_a1_4 = var_s2;
                    do {
                        var_a2_3 += 8;
                        var_a2_3->unk148 = (s32) var_a1_4->unk0;
                        temp_t9 = var_a1_4->unk4;
                        var_a1_4 += 8;
                        var_a2_3->unk14C = temp_t9;
                    } while (var_a2_3 != (var_s1 + 0x80));
                    var_s2 = var_a1_4;
                    var_at = (s64) arg0 << 0x2D;
                }
                var_a1_5 = arg0 & 0x1000;
                if (var_at < 0) {
                    temp_v0_4 = temp_s3->unk0(temp_s3, 0x24U);
                    var_s1->unk904 = temp_v0_4;
                    temp_a0_3 = var_s2->unk0;
                    *temp_v0_4 = temp_a0_3;
                    temp_v1_2 = var_s1->unk904;
                    temp_v1_2->unk4 = (f32) var_s2->unk4;
                    temp_v1_2->unk8 = (f32) var_s2->unk8;
                    temp_v1_2->unkC = (f32) var_s2->unkC;
                    temp_v1_2->unk10 = (f32) var_s2->unk10;
                    temp_v0_5 = var_s1->unk904;
                    temp_v0_5->unk14 = (f32) var_s2->unk14;
                    temp_v0_5->unk18 = (f32) var_s2->unk18;
                    temp_v0_5->unk1C = (f32) var_s2->unk1C;
                    temp_v0_5->unk20 = (f32) var_s2->unk20;
                    var_s1->unk714 = (f32) var_s2->unk24;
                    var_s1->unk718 = (f32) var_s2->unk28;
                    var_s1->unk71C = (f32) var_s2->unk2C;
                    var_s1->unk720 = (f32) var_s2->unk30;
                    var_s1->unk790 = (f32) var_s2->unk34;
                    var_s1->unk794 = (f32) var_s2->unk38;
                    var_s1->unk798 = (f32) var_s2->unk3C;
                    var_s1->unk79C = (f32) var_s2->unk40;
                    var_s1->unk80C = (f32) var_s2->unk44;
                    var_s1->unk810 = (f32) var_s2->unk48;
                    var_s1->unk814 = (f32) var_s2->unk4C;
                    var_s1->unk818 = (f32) var_s2->unk50;
                    var_s1->unk888 = (f32) var_s2->unk54;
                    var_s1->unk88C = (f32) var_s2->unk58;
                    var_s1->unk890 = (f32) var_s2->unk5C;
                    var_s1->unk894 = (f32) var_s2->unk60;
                    var_s1->unk724 = (f32) var_s2->unk64;
                    var_s1->unk728 = (f32) var_s2->unk68;
                    var_s1->unk72C = (f32) var_s2->unk6C;
                    var_s1->unk730 = (f32) var_s2->unk70;
                    var_s1->unk7A0 = (f32) var_s2->unk74;
                    var_s1->unk7A4 = (f32) var_s2->unk78;
                    var_s1->unk7A8 = (f32) var_s2->unk7C;
                    var_s1->unk7AC = (f32) var_s2->unk80;
                    var_s1->unk81C = (f32) var_s2->unk84;
                    var_s1->unk820 = (f32) var_s2->unk88;
                    var_s1->unk824 = (f32) var_s2->unk8C;
                    var_s1->unk828 = (f32) var_s2->unk90;
                    var_s1->unk898 = (f32) var_s2->unk94;
                    var_s1->unk89C = (f32) var_s2->unk98;
                    var_s1->unk8A0 = (f32) var_s2->unk9C;
                    var_s1->unk8A4 = (f32) var_s2->unkA0;
                    var_s1->unk734 = (f32) var_s2->unkA4;
                    var_s1->unk738 = (f32) var_s2->unkA8;
                    var_s1->unk73C = (f32) var_s2->unkAC;
                    var_s1->unk740 = (f32) var_s2->unkB0;
                    var_s1->unk7B0 = (f32) var_s2->unkB4;
                    var_s1->unk7B4 = (f32) var_s2->unkB8;
                    var_s1->unk7B8 = (f32) var_s2->unkBC;
                    var_s1->unk7BC = (f32) var_s2->unkC0;
                    var_s1->unk82C = (f32) var_s2->unkC4;
                    var_s1->unk830 = (f32) var_s2->unkC8;
                    var_s1->unk834 = (f32) var_s2->unkCC;
                    var_s1->unk838 = (f32) var_s2->unkD0;
                    var_s1->unk8A8 = (f32) var_s2->unkD4;
                    var_s1->unk8AC = (f32) var_s2->unkD8;
                    var_s1->unk8B0 = (f32) var_s2->unkDC;
                    var_s1->unk8B4 = (f32) var_s2->unkE0;
                    var_s1->unk744 = (f32) var_s2->unkE4;
                    var_s1->unk748 = (f32) var_s2->unkE8;
                    var_s1->unk74C = (f32) var_s2->unkEC;
                    var_s1->unk750 = (f32) var_s2->unkF0;
                    var_s1->unk7C0 = (f32) var_s2->unkF4;
                    var_s1->unk7C4 = (f32) var_s2->unkF8;
                    var_s1->unk7C8 = (f32) var_s2->unkFC;
                    var_s1->unk7CC = (f32) var_s2->unk100;
                    var_s1->unk83C = (f32) var_s2->unk104;
                    var_s1->unk840 = (f32) var_s2->unk108;
                    var_s1->unk844 = (f32) var_s2->unk10C;
                    var_s1->unk848 = (f32) var_s2->unk110;
                    var_s1->unk8B8 = (f32) var_s2->unk114;
                    var_s1->unk8BC = (f32) var_s2->unk118;
                    var_s1->unk8C0 = (f32) var_s2->unk11C;
                    var_s1->unk8C4 = (f32) var_s2->unk120;
                    var_s1->unk754 = (f32) var_s2->unk124;
                    var_s1->unk758 = (f32) var_s2->unk134;
                    var_s1->unk75C = (f32) var_s2->unk144;
                    var_s1->unk764 = (f32) var_s2->unk154;
                    var_s1->unk768 = (f32) var_s2->unk164;
                    var_s1->unk76C = (f32) var_s2->unk174;
                    var_s1->unk7D0 = (f32) var_s2->unk128;
                    var_s1->unk7D4 = (f32) var_s2->unk138;
                    var_s1->unk7D8 = (f32) var_s2->unk148;
                    var_s1->unk7E0 = (f32) var_s2->unk158;
                    var_s1->unk7E4 = (f32) var_s2->unk168;
                    var_s1->unk7E8 = (f32) var_s2->unk178;
                    var_s1->unk84C = (f32) var_s2->unk12C;
                    var_s1->unk850 = (f32) var_s2->unk13C;
                    var_s1->unk854 = (f32) var_s2->unk14C;
                    var_s1->unk85C = (f32) var_s2->unk15C;
                    var_s1->unk860 = (f32) var_s2->unk16C;
                    var_s1->unk864 = (f32) var_s2->unk17C;
                    var_s1->unk8C8 = (f32) var_s2->unk130;
                    var_s1->unk8CC = (f32) var_s2->unk140;
                    var_s1->unk8D0 = (f32) var_s2->unk150;
                    var_s1->unk8D8 = (f32) var_s2->unk160;
                    temp_f18_2 = var_s2->unk170;
                    var_s1->unk8DC = temp_f18_2;
                    temp_f17_3 = var_s2->unk180;
                    var_s1->unk8E0 = temp_f17_3;
                    temp_f16_2 = var_s2->unk184;
                    var_s1->unk770 = temp_f16_2;
                    temp_f15_2 = var_s2->unk194;
                    var_s1->unk774 = temp_f15_2;
                    temp_f14_2 = var_s2->unk1A4;
                    var_s1->unk778 = temp_f14_2;
                    temp_f13_2 = var_s2->unk1B4;
                    var_s1->unk780 = temp_f13_2;
                    temp_f12_2 = var_s2->unk1C4;
                    var_s1->unk784 = temp_f12_2;
                    var_s1->unk788 = (f32) var_s2->unk1D4;
                    var_s1->unk7EC = (f32) var_s2->unk188;
                    var_s1->unk7F0 = (f32) var_s2->unk198;
                    var_s1->unk7F4 = (f32) var_s2->unk1A8;
                    var_s1->unk7FC = (f32) var_s2->unk1B8;
                    var_s1->unk800 = (f32) var_s2->unk1C8;
                    var_s1->unk804 = (f32) var_s2->unk1D8;
                    var_s1->unk868 = (f32) var_s2->unk18C;
                    var_s1->unk86C = (f32) var_s2->unk19C;
                    var_s1->unk870 = (f32) var_s2->unk1AC;
                    var_s1->unk878 = (f32) var_s2->unk1BC;
                    var_s1->unk87C = (f32) var_s2->unk1CC;
                    var_s1->unk880 = (f32) var_s2->unk1DC;
                    var_s1->unk8E4 = (f32) var_s2->unk190;
                    var_s1->unk8E8 = (f32) var_s2->unk1A0;
                    var_s1->unk8EC = (f32) var_s2->unk1B0;
                    var_s1->unk8F4 = (f32) var_s2->unk1C0;
                    var_s1->unk8F8 = (f32) var_s2->unk1D0;
                    temp_f19_2 = var_s2->unk1E0;
                    var_s2 += 0x1E4;
                    var_s1->unk8FC = temp_f19_2;
                    __glKonPushTextureAttrib(temp_a0_3, temp_f12_2, temp_f13_2, temp_f14_2, temp_f15_2, temp_f16_2, temp_f17_3, temp_f18_2, temp_f19_2);
                    var_a1_5 = arg0 & 0x1000;
                }
                if (var_a1_5 != 0) {
                    temp_s4 = (temp_s3->unkE10 * 2 * 0x10) + 0x34;
                    temp_v0_6 = temp_s3->unk0(temp_s3, temp_s4);
                    var_s1->unk624 = temp_v0_6;
                    memcpy(temp_v0_6, var_s2, temp_s4);
                    var_s1->unk64C = (s32) (var_s2 + ((temp_s4 >> 2) * 4))->unk4;
                }
            }
        } else {
            __glSetError(0x505);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_PopAttrib(void) {
    s64 sp8;
    s64 sp0;
    s32 *temp_t1;
    s32 *temp_t3_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_f0;
    s32 temp_f12;
    s32 temp_f13;
    s32 temp_f14;
    s32 temp_f15;
    s32 temp_f16;
    s32 temp_f17;
    s32 temp_f18;
    s32 temp_f19;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_at;
    s32 var_ra;
    s64 *temp_a2_4;
    s64 *temp_v1;
    s64 temp_v0;
    s64 var_a0_3;
    u32 temp_a0;
    void *temp_a4_2;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_t3;
    void *var_a7;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = temp_s1->unk31BC;
        temp_a2 = (u32) temp_s1->unk31B8 < temp_a0;
        if (temp_a2 != 0) {
            temp_s0 = temp_a0->unk-4;
            var_a3 = temp_s0->unk0 & 0x40;
            if (var_a3 != 0) {
                temp_a4 = temp_s1->unkE04;
                temp_a5 = temp_a4 * 0xC;
                var_a6 = 0x119;
                *(s32 *)0x4000 = 0x119;
                *(void *)0x4000 = temp_a5;
                if (temp_a4 > 0) {
                    var_a0 = 0;
                    var_a3 = temp_s0->unk580;
                    do {
                        temp_f0 = var_a3->unk5C;
                        *(void *)0x4000 = (s32) var_a3->unk30;
                        *(void *)0x4000 = (s32) var_a3->unk34;
                        *(void *)0x4000 = (s32) var_a3->unk38;
                        *(void *)0x4000 = (s32) var_a3->unk3C;
                        *(void *)0x4000 = (s32) var_a3->unk40;
                        *(void *)0x4000 = (s32) var_a3->unk44;
                        *(void *)0x4000 = (s32) var_a3->unk48;
                        *(void *)0x4000 = (s32) var_a3->unk4C;
                        *(void *)0x4000 = (s32) var_a3->unk50;
                        var_a0 += 1;
                        *(void *)0x4000 = (s32) var_a3->unk54;
                        var_a6 = var_a0 < temp_a4;
                        *(void *)0x4000 = (s32) var_a3->unk58;
                        var_a3 += 0x74;
                        *(void *)0x4000 = temp_f0;
                    } while (var_a6 != 0);
                }
                temp_s1->unkC(temp_s1, (void *) temp_s0->unk580, temp_a2, var_a3, temp_a4, temp_a5, var_a6);
                temp_s0->unk580 = 0;
            }
        }
        *(void *)0x4000 = 0xC8;
        *(void *)0x4000 = 0;
        if (temp_s1->unk31B8 < temp_s1->unk31BC) {
            temp_t3 = temp_s1->unkA128;
            temp_s1->unkA128 = (void *) (temp_t3 - 4);
            temp_t3_2 = temp_t3->unk-4;
            *temp_t3_2 = 0;
            temp_s0_2 = temp_s1->unk31BC->unk-4;
            temp_s2 = temp_s0_2->unk0;
            sp8 = (s64) temp_t3_2;
            temp_s1->unk31BC = (u32) (temp_s1->unk31BC - 4);
            if (temp_s2 & 1) {
                glColor4fv(temp_s0_2 + 0x10, 0x10000);
                glIndexf(temp_s0_2->unk2C);
                glNormal3fv(temp_s0_2 + 0x20);
                glTexCoord4fv(temp_s0_2 + 0x30);
                glEdgeFlag(temp_s0_2->unk115);
                __glkonResolveContext(temp_s0_2 + 0x40);
            }
            sp0 = 0x10000 & temp_s2;
            if (temp_s2 & 0x2000) {
                temp_a2_2 = temp_s0_2->unk650;
                temp_s1->unk700 = temp_a2_2;
                temp_s1->unk704 = (s32) temp_s0_2->unk654;
                __glkon_EnableTexture(0xDE0, 0x10000 & temp_a2_2, temp_a2_2);
                temp_a2_3 = temp_s1->unk700;
                __glkon_EnableTexture(0xDE1, 0x20000 & temp_a2_3, temp_a2_3);
                __glkon_EnableTexture(0x806F, temp_s1->unk700 & 0x40000000, 0x40000000);
                ValidateHistogramSink();
                var_a7 = temp_s0_2 + 0x6E0;
                if (sp0 != 0) {
                    goto block_12;
                }
                temp_s1->unk710 = (s32) temp_s0_2->unk660;
                temp_s1->unk714 = (s32) temp_s0_2->unk664;
                if (temp_s0_2->unk660 & 1) {
                    __glkonim_Enable(0xD90);
                } else {
                    __glkonim_Disable(0xD90);
                }
                if (temp_s0_2->unk660 & 2) {
                    __glkonim_Enable(0xD91);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD91);
                }
                if (temp_s0_2->unk660 & 4) {
                    __glkonim_Enable(0xD92);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD92);
                }
                if (temp_s0_2->unk660 & 8) {
                    __glkonim_Enable(0xD93);
                } else {
                    __glkonim_Disable(0xD93);
                }
                if (temp_s0_2->unk660 & 0x10) {
                    __glkonim_Enable(0xD94);
                } else {
                    __glkonim_Disable(0xD94);
                }
                if (temp_s0_2->unk660 & 0x20) {
                    __glkonim_Enable(0xD95);
                } else {
                    __glkonim_Disable(0xD95);
                }
                if (temp_s0_2->unk660 & 0x40) {
                    __glkonim_Enable(0xD96);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD96);
                }
                if (temp_s0_2->unk660 & 0x80) {
                    __glkonim_Enable(0xD97);
                } else {
                    __glkonim_Disable(0xD97);
                }
                if (temp_s0_2->unk660 & 0x100) {
                    __glkonim_Enable(0xD98);
                } else {
                    __glkonim_Disable(0xD98);
                }
                if (temp_s0_2->unk664 & 1) {
                    __glkonim_Enable(0xDB0);
                } else {
                    __glkonim_Disable(0xDB0);
                }
                temp_a1 = temp_s0_2->unk664 & 2;
                if (temp_a1 != 0) {
                    __glkonim_Enable(0xDB1, temp_a1);
                } else {
                    __glkonim_Disable(0xDB1, temp_a1);
                }
                if (temp_s0_2->unk664 & 4) {
                    __glkonim_Enable(0xDB2);
                } else {
                    __glkonim_Disable(0xDB2);
                }
                if (temp_s0_2->unk664 & 8) {
                    __glkonim_Enable(0xDB3);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB3);
                }
                if (temp_s0_2->unk664 & 0x10) {
                    __glkonim_Enable(0xDB4);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB4);
                }
                if (temp_s0_2->unk664 & 0x20) {
                    __glkonim_Enable(0xDB5);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB5);
                }
                if (temp_s0_2->unk664 & 0x40) {
                    __glkonim_Enable(0xDB6);
                } else {
                    __glkonim_Disable(0xDB6);
                }
                if (temp_s0_2->unk664 & 0x80) {
                    __glkonim_Enable(0xDB7);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB7);
                }
                if (temp_s0_2->unk664 & 0x100) {
                    __glkonim_Enable(0xDB8);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB8);
                }
                __glKonUpdateEvalAttributes(temp_s1);
                var_a7 = temp_s0_2 + 0x6E0;
                if (sp0 == 0) {

                } else {
                    goto block_12;
                }
            } else if (sp0 != 0) {
                var_a7 = temp_s0_2 + 0x6E0;
block_12:
                var_a0_2 = 0xC;
                var_a1 = 0;
                do {
                    var_a0_2 -= 2;
                    *(var_a1 + (temp_s1 + 0x78C)) = *(var_a1 + (temp_s0_2 + 0x6DC));
                    temp_t1 = var_a1 + (temp_s1 + 0x790);
                    temp_t0 = *(var_a1 + var_a7);
                    var_a1 += 8;
                    *temp_t1 = temp_t0;
                } while (var_a0_2 > 0);
                temp_t9 = temp_s1->unk700 & ~0x800000;
                temp_s1->unk700 = temp_t9;
                temp_t9_2 = temp_t9 | (temp_s0_2->unk650 & 0x800000);
                temp_s1->unk700 = temp_t9_2;
                temp_s1->unk710 = (s32) temp_s0_2->unk660;
                temp_s1->unk714 = (s32) temp_s0_2->unk664;
                if (temp_s0_2->unk660 & 1) {
                    __glkonim_Enable(0xD90, var_a1);
                } else {
                    ((? (*)(?, s32)) temp_t9_2)(0xD90, var_a1);
                }
                if (temp_s0_2->unk660 & 2) {
                    __glkonim_Enable(0xD91);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD91);
                }
                if (temp_s0_2->unk660 & 4) {
                    __glkonim_Enable(0xD92);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD92);
                }
                if (temp_s0_2->unk660 & 8) {
                    __glkonim_Enable(0xD93);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD93);
                }
                if (temp_s0_2->unk660 & 0x10) {
                    __glkonim_Enable(0xD94);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD94);
                }
                temp_a1_2 = temp_s0_2->unk660 & 0x20;
                if (temp_a1_2 != 0) {
                    __glkonim_Enable(0xD95, temp_a1_2);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD95, temp_a1_2);
                }
                if (temp_s0_2->unk660 & 0x40) {
                    __glkonim_Enable(0xD96);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD96);
                }
                if (temp_s0_2->unk660 & 0x80) {
                    __glkonim_Enable(0xD97);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD97);
                }
                if (temp_s0_2->unk660 & 0x100) {
                    __glkonim_Enable(0xD98);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xD98);
                }
                if (temp_s0_2->unk664 & 1) {
                    __glkonim_Enable(0xDB0);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB0);
                }
                if (temp_s0_2->unk664 & 2) {
                    __glkonim_Enable(0xDB1);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB1);
                }
                if (temp_s0_2->unk664 & 4) {
                    __glkonim_Enable(0xDB2);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB2);
                }
                if (temp_s0_2->unk664 & 8) {
                    __glkonim_Enable(0xDB3);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB3);
                }
                if (temp_s0_2->unk664 & 0x10) {
                    __glkonim_Enable(0xDB4);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB4);
                }
                if (temp_s0_2->unk664 & 0x20) {
                    __glkonim_Enable(0xDB5);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB5);
                }
                if (temp_s0_2->unk664 & 0x40) {
                    __glkonim_Enable(0xDB6);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB6);
                }
                if (temp_s0_2->unk664 & 0x80) {
                    __glkonim_Enable(0xDB7);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0xDB7);
                }
                temp_t9_3 = temp_s0_2->unk664 & 0x100;
                if (temp_t9_3 != 0) {
                    __glkonim_Enable(0xDB8);
                } else {
                    ((? (*)(?)) temp_t9_3)(0xDB8);
                }
                __glKonUpdateEvalAttributes(temp_s1);
            }
            var_a1_2 = temp_s2 & 0x40;
            if (temp_s2 & 0x80) {
                glFogf(0xB62, var_a1_2);
                glFogf(0xB63);
                glFogf(0xB64);
                glFogi(0xB65, temp_s0_2->unk584);
                glFogfv(0xB66, temp_s0_2 + 0x588);
                glFogf(0xB61);
                glFogfv(0x8199, sp8 + 0x1008);
                glFogFuncSGIS(sp8->unk4, sp8 + 8);
                var_a1_2 = temp_s2 & 0x40;
            }
            if (var_a1_2 != 0) {
                glMaterialfv(0x404, 0x1200, temp_s0_2 + 0x4E0);
                glMaterialfv(0x404, 0x1201, temp_s0_2 + 0x4F0);
                glMaterialfv(0x404, 0x1202, temp_s0_2 + 0x500);
                glMaterialfv(0x404, 0x1600, temp_s0_2 + 0x510);
                glMaterialfv(0x404, 0x1601, temp_s0_2 + 0x520);
                glMaterialfv(0x404, 0x1603, temp_s0_2 + 0x524);
                glMaterialfv(0x405, 0x1200, temp_s0_2 + 0x530);
                glMaterialfv(0x405, 0x1201, temp_s0_2 + 0x540);
                glMaterialfv(0x405, 0x1202, temp_s0_2 + 0x550);
                glMaterialfv(0x405, 0x1600, temp_s0_2 + 0x560);
                glMaterialfv(0x405, 0x1601, temp_s0_2 + 0x570);
                glMaterialfv(0x405, 0x1603, temp_s0_2 + 0x574);
            }
            var_a4 = temp_s2 & 0x20;
            if (0x20000 & temp_s2) {
                temp_s1->unk7BC = (s32) temp_s0_2->unk70C;
                var_a4 = temp_s2 & 0x20;
            }
            var_ra = temp_s2 & 8;
            if (var_a4 != 0) {
                __glkonResolveContext(temp_s0_2);
                var_ra = temp_s2 & 8;
            }
            var_at = temp_s2 & 0x10;
            if (var_ra != 0) {
                glPolygonOffsetEXT(temp_s0_2->unk144, temp_s0_2->unk148);
                var_at = temp_s2 & 0x10;
            }
            var_a0_3 = (s64) temp_s2 << 0x2D;
            if (var_at != 0) {
                temp_a4_2 = temp_s0_2 + 0x158;
                var_a1_3 = 0x10;
                var_a3_2 = 0;
                temp_a5_2 = temp_s1 + 0x200;
                temp_a6 = temp_s0_2 + 0x150;
                do {
                    temp_a2_4 = var_a3_2 + temp_a5_2;
                    var_a1_3 -= 2;
                    *temp_a2_4 = *(var_a3_2 + temp_a6);
                    temp_v1 = var_a3_2 + (temp_s1 + 0x208);
                    temp_v0 = *(var_a3_2 + temp_a4_2);
                    var_a3_2 += 0x10;
                    *temp_v1 = temp_v0;
                } while (var_a1_3 > 0);
                __glkonConvertPolygonStipple(temp_s1, var_a1_3, temp_a2_4, var_a3_2, temp_a4_2, temp_a5_2, temp_a6, 0x10);
                var_a0_3 = (s64) temp_s2 << 0x2D;
            }
            var_a4_2 = temp_s2 & 0x1000;
            if (var_a0_3 < 0) {
                glTexEnviv(0x2300, 0x2200, temp_s0_2->unk904);
                glTexEnvfv(0x2300, 0x2201, temp_s0_2->unk904 + 4);
                glTexEnvfv(0x2300, 0x80BE, temp_s0_2->unk904 + 0x14);
                temp_s1->unkC(temp_s1, temp_s0_2->unk904);
                temp_s0_2->unk904 = NULL;
                temp_f12 = temp_s0_2->unk8FC;
                temp_f13 = temp_s0_2->unk880;
                temp_f14 = temp_s0_2->unk804;
                temp_f15 = temp_s0_2->unk788;
                temp_f16 = temp_s0_2->unk8F8;
                temp_f17 = temp_s0_2->unk87C;
                temp_f18 = temp_s0_2->unk800;
                temp_f19 = temp_s0_2->unk784;
                *(void *)0x4000 = 0x1D6;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = (s32) temp_s0_2->unk714;
                *(void *)0x4000 = (s32) temp_s0_2->unk718;
                *(void *)0x4000 = (s32) temp_s0_2->unk71C;
                *(void *)0x4000 = (s32) temp_s0_2->unk720;
                *(void *)0x4000 = (s32) temp_s0_2->unk790;
                *(void *)0x4000 = (s32) temp_s0_2->unk794;
                *(void *)0x4000 = (s32) temp_s0_2->unk798;
                *(void *)0x4000 = (s32) temp_s0_2->unk79C;
                *(void *)0x4000 = (s32) temp_s0_2->unk80C;
                *(void *)0x4000 = (s32) temp_s0_2->unk810;
                *(void *)0x4000 = (s32) temp_s0_2->unk814;
                *(void *)0x4000 = (s32) temp_s0_2->unk818;
                *(void *)0x4000 = (s32) temp_s0_2->unk888;
                *(void *)0x4000 = (s32) temp_s0_2->unk88C;
                *(void *)0x4000 = (s32) temp_s0_2->unk890;
                *(void *)0x4000 = (s32) temp_s0_2->unk894;
                *(void *)0x4000 = (s32) temp_s0_2->unk724;
                *(void *)0x4000 = (s32) temp_s0_2->unk728;
                *(void *)0x4000 = (s32) temp_s0_2->unk72C;
                *(void *)0x4000 = (s32) temp_s0_2->unk730;
                *(void *)0x4000 = (s32) temp_s0_2->unk7A0;
                *(void *)0x4000 = (s32) temp_s0_2->unk7A4;
                *(void *)0x4000 = (s32) temp_s0_2->unk7A8;
                *(void *)0x4000 = (s32) temp_s0_2->unk7AC;
                *(void *)0x4000 = (s32) temp_s0_2->unk81C;
                *(void *)0x4000 = (s32) temp_s0_2->unk820;
                *(void *)0x4000 = (s32) temp_s0_2->unk824;
                *(void *)0x4000 = (s32) temp_s0_2->unk828;
                *(void *)0x4000 = (s32) temp_s0_2->unk898;
                *(void *)0x4000 = (s32) temp_s0_2->unk89C;
                *(void *)0x4000 = (s32) temp_s0_2->unk8A0;
                *(void *)0x4000 = (s32) temp_s0_2->unk8A4;
                *(void *)0x4000 = (s32) temp_s0_2->unk734;
                *(void *)0x4000 = (s32) temp_s0_2->unk738;
                *(void *)0x4000 = (s32) temp_s0_2->unk73C;
                *(void *)0x4000 = (s32) temp_s0_2->unk740;
                *(void *)0x4000 = (s32) temp_s0_2->unk7B0;
                *(void *)0x4000 = (s32) temp_s0_2->unk7B4;
                *(void *)0x4000 = (s32) temp_s0_2->unk7B8;
                *(void *)0x4000 = (s32) temp_s0_2->unk7BC;
                *(void *)0x4000 = (s32) temp_s0_2->unk82C;
                *(void *)0x4000 = (s32) temp_s0_2->unk830;
                *(void *)0x4000 = (s32) temp_s0_2->unk834;
                *(void *)0x4000 = (s32) temp_s0_2->unk838;
                *(void *)0x4000 = (s32) temp_s0_2->unk8A8;
                *(void *)0x4000 = (s32) temp_s0_2->unk8AC;
                *(void *)0x4000 = (s32) temp_s0_2->unk8B0;
                *(void *)0x4000 = (s32) temp_s0_2->unk8B4;
                *(void *)0x4000 = (s32) temp_s0_2->unk744;
                *(void *)0x4000 = (s32) temp_s0_2->unk748;
                *(void *)0x4000 = (s32) temp_s0_2->unk74C;
                *(void *)0x4000 = (s32) temp_s0_2->unk750;
                *(void *)0x4000 = (s32) temp_s0_2->unk7C0;
                *(void *)0x4000 = (s32) temp_s0_2->unk7C4;
                *(void *)0x4000 = (s32) temp_s0_2->unk7C8;
                *(void *)0x4000 = (s32) temp_s0_2->unk7CC;
                *(void *)0x4000 = (s32) temp_s0_2->unk83C;
                *(void *)0x4000 = (s32) temp_s0_2->unk840;
                *(void *)0x4000 = (s32) temp_s0_2->unk844;
                *(void *)0x4000 = (s32) temp_s0_2->unk848;
                *(void *)0x4000 = (s32) temp_s0_2->unk8B8;
                *(void *)0x4000 = (s32) temp_s0_2->unk8BC;
                *(void *)0x4000 = (s32) temp_s0_2->unk8C0;
                *(void *)0x4000 = (s32) temp_s0_2->unk8C4;
                *(void *)0x4000 = (s32) temp_s0_2->unk754;
                *(void *)0x4000 = (s32) temp_s0_2->unk7D0;
                *(void *)0x4000 = (s32) temp_s0_2->unk84C;
                *(void *)0x4000 = (s32) temp_s0_2->unk8C8;
                *(void *)0x4000 = (s32) temp_s0_2->unk758;
                *(void *)0x4000 = (s32) temp_s0_2->unk7D4;
                *(void *)0x4000 = (s32) temp_s0_2->unk850;
                *(void *)0x4000 = (s32) temp_s0_2->unk8CC;
                *(void *)0x4000 = (s32) temp_s0_2->unk75C;
                *(void *)0x4000 = (s32) temp_s0_2->unk7D8;
                *(void *)0x4000 = (s32) temp_s0_2->unk854;
                *(void *)0x4000 = (s32) temp_s0_2->unk8D0;
                *(void *)0x4000 = (s32) temp_s0_2->unk764;
                *(void *)0x4000 = (s32) temp_s0_2->unk7E0;
                *(void *)0x4000 = (s32) temp_s0_2->unk85C;
                *(void *)0x4000 = (s32) temp_s0_2->unk8D8;
                *(void *)0x4000 = (s32) temp_s0_2->unk768;
                *(void *)0x4000 = (s32) temp_s0_2->unk7E4;
                *(void *)0x4000 = (s32) temp_s0_2->unk860;
                *(void *)0x4000 = (s32) temp_s0_2->unk8DC;
                *(void *)0x4000 = (s32) temp_s0_2->unk76C;
                *(void *)0x4000 = (s32) temp_s0_2->unk7E8;
                *(void *)0x4000 = (s32) temp_s0_2->unk864;
                *(void *)0x4000 = (s32) temp_s0_2->unk8E0;
                *(void *)0x4000 = (s32) temp_s0_2->unk770;
                *(void *)0x4000 = (s32) temp_s0_2->unk7EC;
                *(void *)0x4000 = (s32) temp_s0_2->unk868;
                *(void *)0x4000 = (s32) temp_s0_2->unk8E4;
                *(void *)0x4000 = (s32) temp_s0_2->unk774;
                *(void *)0x4000 = (s32) temp_s0_2->unk7F0;
                *(void *)0x4000 = (s32) temp_s0_2->unk86C;
                *(void *)0x4000 = (s32) temp_s0_2->unk8E8;
                *(void *)0x4000 = (s32) temp_s0_2->unk778;
                *(void *)0x4000 = (s32) temp_s0_2->unk7F4;
                *(void *)0x4000 = (s32) temp_s0_2->unk870;
                *(void *)0x4000 = (s32) temp_s0_2->unk8EC;
                *(void *)0x4000 = (s32) temp_s0_2->unk780;
                *(void *)0x4000 = (s32) temp_s0_2->unk7FC;
                *(void *)0x4000 = (s32) temp_s0_2->unk878;
                *(void *)0x4000 = (s32) temp_s0_2->unk8F4;
                *(void *)0x4000 = temp_f19;
                *(void *)0x4000 = temp_f18;
                *(void *)0x4000 = temp_f17;
                *(void *)0x4000 = temp_f16;
                *(void *)0x4000 = temp_f15;
                *(void *)0x4000 = temp_f14;
                *(void *)0x4000 = temp_f13;
                *(void *)0x4000 = temp_f12;
                __glKonPopTextureAttrib(temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
                var_a4_2 = temp_s2 & 0x1000;
            }
            if (var_a4_2 != 0) {
                *(void *)0x4000 = 0x1CA;
                *(void *)0x4000 = 0;
                __glkon_datavn(temp_s0_2->unk624, 0x3D);
                temp_s1->unkC(temp_s1, temp_s0_2->unk624);
                temp_s0_2->unk624 = NULL;
                glDeformSGIX(temp_s0_2->unk64C);
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_PushClientAttrib(s32 arg0) {
    s32 *temp_a1_2;
    s32 *temp_v1;
    s32 temp_a1;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 var_a0;
    s32 var_a2;
    s32 var_a5;
    u32 temp_s1;
    void *temp_a2;
    void *temp_a3;
    void *temp_a4;
    void *temp_s0;
    void *temp_v0;
    void *var_a6;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_s1 = temp_s0->unk31C4;
        temp_a1 = temp_s0->unkEC4 * 4;
        if (temp_s1 < (u32) (temp_s0->unk31C0 + temp_a1)) {
            temp_a2 = *temp_s1;
            var_a6 = temp_a2;
            if (temp_a2 == NULL) {
                temp_v0 = temp_s0->unk4(temp_s0, 1, 0x1B4, var_a6);
                var_a6 = temp_v0;
                *temp_s1 = temp_v0;
            }
            var_a6->unk0 = arg0;
            temp_s0->unk31C4 = (u32) (temp_s1 + 4);
            if (arg0 & 1) {
                var_a6->unk4 = (s32) temp_s0->unk478;
                var_a6->unk8 = (s32) temp_s0->unk47C;
                var_a6->unkC = (s32) temp_s0->unk480;
                var_a6->unk10 = (s32) temp_s0->unk484;
                var_a6->unk14 = (s32) temp_s0->unk488;
                var_a6->unk18 = (s32) temp_s0->unk48C;
                var_a6->unk1C = (s32) temp_s0->unk490;
                var_a6->unk20 = (s32) temp_s0->unk494;
                var_a6->unk24 = (s32) temp_s0->unk498;
                var_a6->unk28 = (s32) temp_s0->unk49C;
                var_a6->unk2C = (s32) temp_s0->unk4A0;
                var_a6->unk30 = (s32) temp_s0->unk4A4;
                var_a6->unk34 = (s32) temp_s0->unk4A8;
                var_a6->unk38 = (s32) temp_s0->unk4AC;
                var_a6->unk3C = (s32) temp_s0->unk4B0;
                var_a6->unk40 = (s32) temp_s0->unk4B4;
                var_a6->unk44 = (s32) temp_s0->unk4B8;
                var_a6->unk48 = (s32) temp_s0->unk4BC;
                var_a6->unk4C = (s32) temp_s0->unk4C0;
                var_a6->unk50 = (s32) temp_s0->unk4C4;
                var_a6->unk54 = (s32) temp_s0->unk4C8;
                var_a6->unk58 = (s32) temp_s0->unk4CC;
            }
            var_a0 = 0x56;
            var_a2 = 0;
            temp_a4 = var_a6 + 0x5C;
            var_a5 = 6;
            if (arg0 & 2) {
                temp_a3 = temp_s0 + 0x13E0;
                do {
                    var_a5 -= 1;
                    var_a0 -= 1;
                    temp_v1 = var_a2 + temp_a4;
                    temp_v0_2 = *(var_a2 + temp_a3);
                    var_a2 += 4;
                    *temp_v1 = temp_v0_2;
                } while (var_a5 != 0);
                do {
                    *(var_a2 + temp_a4) = *(var_a2 + temp_a3);
                    *(var_a2 + (temp_a4 + 4)) = *(var_a2 + (temp_a3 + 4));
                    *(var_a2 + (temp_a4 + 8)) = *(var_a2 + (temp_a3 + 8));
                    *(var_a2 + (temp_a4 + 0xC)) = *(var_a2 + (temp_a3 + 0xC));
                    *(var_a2 + (temp_a4 + 0x10)) = *(var_a2 + (temp_a3 + 0x10));
                    *(var_a2 + (temp_a4 + 0x14)) = *(var_a2 + (temp_a3 + 0x14));
                    var_a0 -= 8;
                    *(var_a2 + (temp_a4 + 0x18)) = *(var_a2 + (temp_a3 + 0x18));
                    temp_a1_2 = var_a2 + (temp_a4 + 0x1C);
                    temp_v1_2 = *(var_a2 + (temp_a3 + 0x1C));
                    var_a2 += 0x20;
                    *temp_a1_2 = temp_v1_2;
                } while (var_a0 > 0);
            }
        } else {
            __glSetError(0x503, (void *) temp_a1);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_PopClientAttrib(void) {
    s32 *temp_a6_2;
    s32 *temp_v0;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_at;
    s32 var_a1;
    s32 var_a2;
    s32 var_a5;
    u32 temp_a1;
    u32 temp_a3;
    void *temp_a3_2;
    void *temp_a4;
    void *temp_a6;
    void *temp_s5;

    temp_a6 = *(void **)0x1010;
    var_a5 = 6;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = temp_a6->unk31C4;
        temp_a3 = temp_a1 - 4;
        if ((u32) temp_a6->unk31C0 < temp_a1) {
            temp_s5 = temp_a1->unk-4;
            temp_a2 = temp_s5->unk0;
            temp_a6->unk31C4 = temp_a3;
            if (temp_a2 & 1) {
                temp_a6->unk478 = (s32) temp_s5->unk4;
                temp_a6->unk47C = (s32) temp_s5->unk8;
                temp_a6->unk480 = (s32) temp_s5->unkC;
                temp_a6->unk484 = (s32) temp_s5->unk10;
                temp_a6->unk488 = (s32) temp_s5->unk14;
                temp_a6->unk48C = (s32) temp_s5->unk18;
                temp_a6->unk490 = (s32) temp_s5->unk1C;
                temp_a6->unk494 = (s32) temp_s5->unk20;
                temp_a6->unk498 = (s32) temp_s5->unk24;
                temp_a6->unk49C = (s32) temp_s5->unk28;
                temp_a6->unk4A0 = (s32) temp_s5->unk2C;
                temp_a6->unk4A4 = (s32) temp_s5->unk30;
                temp_a6->unk4A8 = (s32) temp_s5->unk34;
                temp_a6->unk4AC = (s32) temp_s5->unk38;
                temp_a6->unk4B0 = (s32) temp_s5->unk3C;
                temp_a6->unk4B4 = (s32) temp_s5->unk40;
                temp_a6->unk4B8 = (s32) temp_s5->unk44;
                temp_a6->unk4BC = (s32) temp_s5->unk48;
                temp_a6->unk4C0 = (s32) temp_s5->unk4C;
                temp_a6->unk4C4 = (s32) temp_s5->unk50;
                temp_a6->unk4C8 = (s32) temp_s5->unk54;
                temp_a6->unk4CC = (s32) temp_s5->unk58;
            }
            var_a2 = 0;
            temp_a4 = temp_s5 + 0x5C;
            temp_a3_2 = temp_a6 + 0x13E0;
            var_a1 = 0x56;
            if (temp_a2 & 2) {
                do {
                    var_a5 -= 1;
                    var_a1 -= 1;
                    temp_a6_2 = var_a2 + temp_a3_2;
                    temp_a0 = *(var_a2 + temp_a4);
                    var_a2 += 4;
                    *temp_a6_2 = temp_a0;
                } while (var_a5 != 0);
                do {
                    *(var_a2 + temp_a3_2) = *(var_a2 + temp_a4);
                    *(var_a2 + (temp_a3_2 + 4)) = *(var_a2 + (temp_a4 + 4));
                    *(var_a2 + (temp_a3_2 + 8)) = *(var_a2 + (temp_a4 + 8));
                    *(var_a2 + (temp_a3_2 + 0xC)) = *(var_a2 + (temp_a4 + 0xC));
                    *(var_a2 + (temp_a3_2 + 0x10)) = *(var_a2 + (temp_a4 + 0x10));
                    *(var_a2 + (temp_a3_2 + 0x14)) = *(var_a2 + (temp_a4 + 0x14));
                    var_a1 -= 8;
                    *(var_a2 + (temp_a3_2 + 0x18)) = *(var_a2 + (temp_a4 + 0x18));
                    temp_v0 = var_a2 + (temp_a3_2 + 0x1C);
                    temp_at = *(var_a2 + (temp_a4 + 0x1C));
                    var_a2 += 0x20;
                    *temp_v0 = temp_at;
                } while (var_a1 > 0);
            }
            temp_s5->unk0 = 0;
            return;
        }
        __glSetError(0x504, (void *) temp_a1, temp_a3, 6, temp_a6);
    } else {
        __glSetError(0x502, (void *)6, (u32) temp_a6);
    }
}

s32 __glkonCopyContext(void *arg0, void *arg1, s64 arg2) {
    s64 spC8;
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
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s32 *temp_a4_2;
    s32 *temp_t1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_s0_6;
    s32 temp_t0;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_ra;
    s32 var_s0;
    s32 var_s1_3;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_t3;
    s32 var_t8;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_2;
    s64 *temp_a1_5;
    s64 temp_a3_2;
    s64 temp_s0;
    s64 temp_s0_10;
    s64 temp_s0_11;
    s64 temp_s0_13;
    s64 temp_s0_2;
    s64 temp_s0_3;
    s64 temp_s0_4;
    s64 temp_s0_5;
    s64 temp_s0_7;
    s64 temp_s0_8;
    s64 temp_s0_9;
    s64 temp_s1;
    s64 temp_s1_2;
    s64 temp_s1_3;
    s64 temp_s1_4;
    s64 temp_s1_5;
    s64 temp_s1_6;
    s64 temp_s1_7;
    s64 temp_s1_8;
    s64 temp_s1_9;
    s64 temp_s2;
    s64 temp_s2_2;
    s64 temp_s2_3;
    s64 temp_s2_4;
    s64 temp_s2_5;
    s64 temp_s2_6;
    s64 temp_s2_7;
    s64 temp_s2_8;
    s64 temp_s3;
    s64 temp_s3_2;
    s64 temp_s3_3;
    s64 temp_s3_4;
    s64 temp_s3_5;
    s64 temp_s3_6;
    s64 temp_s3_7;
    s64 temp_s4;
    s64 temp_s4_2;
    s64 temp_s4_3;
    s64 temp_s4_4;
    s64 temp_s4_5;
    s64 temp_s4_6;
    s64 temp_s4_7;
    s64 temp_s8;
    s64 temp_s8_2;
    s64 temp_s8_3;
    s64 temp_s8_4;
    s64 temp_v0_2;
    s64 temp_v1;
    s64 var_a6_2;
    u32 temp_s0_12;
    void *temp_a1_4;
    void *temp_a2_3;
    void *temp_a2_5;
    void *temp_a3_3;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_t0_2;
    void *temp_v0;
    void *temp_v0_3;
    void *var_s1;
    void *var_s1_2;

    if (*(s32 *)0x1010 != arg1) {
        return 1;
    }
    if (arg2 & 0x200) {
        __glkonim_GetFloatv(0xB80, arg0 + 0x670);
    }
    if (arg2 & 0x4000) {
        __glkonim_GetIntegerv(0xBC1, arg0 + 0x71C);
        __glkonim_GetFloatv(0xBC2, arg0 + 0x720);
        __glkonim_GetIntegerv(0xBE1, arg0 + 0x724);
        __glkonim_GetIntegerv(0xBE0, arg0 + 0x728);
        __glkonim_GetIntegerv(0xBF0, arg0 + 0x740);
        __glkonim_GetIntegerv(0xC01, arg0 + 0x760);
        __glkonim_GetIntegerv(0xC21, arg0 + 0x758);
        __glkonim_GetBooleanv(0xC23, arg0 + 0x75C);
        __glkonim_GetFloatv(0xC22, arg0 + 0x744);
        __glkonim_GetFloatv(0xC20, arg0 + 0x754);
        __glkonim_GetFloatv(0x8005, arg0 + 0x730);
        temp_a1 = arg0->unk700 & ~0xF;
        arg0->unk700 = temp_a1;
        temp_s1 = __glkonim_IsEnabled((void *)0xBE2, temp_a1, -0x10);
        temp_s0 = __glkonim_IsEnabled((void *)0xBC0);
        temp_s2 = __glkonim_IsEnabled((void *)0xBD0);
        arg0->unk700 = (s32) (arg0->unk700 | (temp_s0 | (temp_s1 * 2) | ((temp_s2 * 8) | (__glkonim_IsEnabled((void *)0xBF1) * 4))));
    }
    if (arg2 & 1) {
        __glkonim_GetFloatv(0xB00, arg0 + 0x1B0);
        __glkonim_GetFloatv(0xB01, arg0 + 0x1C0);
        __glkonim_GetFloatv(0xB03, arg0 + 0xE0);
        __glkonim_GetFloatv(0xB02, arg0 + 0xD0);
        __glkonim_GetFloatv(0xB04, arg0 + 0x180);
        __glkonim_GetFloatv(0xB05, arg0 + 0x190);
        __glkonim_GetFloatv(0xB06, arg0 + 0x120);
        __glkonim_GetFloatv(0xB07, arg0 + 0x170);
        __glkonim_GetFloatv(0xB09, arg0 + 0x158);
        __glkonim_GetFloatv(0xB08, arg0 + 0xF4);
        __glkonim_GetBooleanv(0xB43, arg0 + 0x1C5);
    }
    if (arg2 & 0x100) {
        __glkonim_GetIntegerv(0xB74, arg0 + 0x660);
        __glkonim_GetBooleanv(0xB72, arg0 + 0x664);
        __glkonim_GetDoublev(0xB73, arg0 + 0x668);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x10);
        arg0->unk700 = (s32) (arg0->unk700 | (__glkonim_IsEnabled((void *)0xB71) * 0x10));
    }
    if (arg2 & 0x2000) {
        temp_s1_2 = __glkonim_IsEnabled((void *)0xBE2);
        temp_s0_2 = __glkonim_IsEnabled((void *)0xBC0);
        temp_s2_2 = __glkonim_IsEnabled((void *)0xBF1);
        temp_s4 = __glkonim_IsEnabled((void *)0xBD0);
        temp_s3 = __glkonim_IsEnabled((void *)0xB71);
        spC8 = __glkonim_IsEnabled((void *)0xB60);
        temp_s8 = __glkonim_IsEnabled((void *)0xB50);
        spA0 = __glkonim_IsEnabled((void *)0xB24);
        sp8 = __glkonim_IsEnabled((void *)0xB20);
        sp10 = __glkonim_IsEnabled((void *)0xB10);
        sp58 = __glkonim_IsEnabled((void *)0xB41);
        sp60 = __glkonim_IsEnabled((void *)0xB44);
        sp68 = __glkonim_IsEnabled((void *)0xB42);
        sp70 = __glkonim_IsEnabled((void *)0xC11);
        sp78 = __glkonim_IsEnabled((void *)0xB90);
        sp80 = __glkonim_IsEnabled((void *)0xDE0);
        sp88 = __glkonim_IsEnabled((void *)0xDE1);
        sp90 = __glkonim_IsEnabled((void *)0xC60);
        sp98 = __glkonim_IsEnabled((void *)0xC61);
        sp18 = __glkonim_IsEnabled((void *)0xC62);
        sp20 = __glkonim_IsEnabled((void *)0xC63);
        sp28 = __glkonim_IsEnabled((void *)0xBA1);
        sp30 = __glkonim_IsEnabled((void *)0x8010);
        sp38 = __glkonim_IsEnabled((void *)0x8011);
        sp40 = __glkonim_IsEnabled((void *)0x8012);
        sp48 = __glkonim_IsEnabled((void *)0x8024);
        sp50 = __glkonim_IsEnabled((void *)0x802E);
        temp_a0 = sp48 << 0x1C;
        arg0->unk700 = (s32) (temp_s0_2 | (temp_s1_2 * 2) | ((temp_s2_2 * 4) | (temp_s4 * 8)) | ((temp_s3 * 0x10) | (spC8 << 5)) | ((temp_s8 << 6) | (spA0 << 8)) | ((sp8 << 9) | (sp10 << 0xA)) | ((sp58 << 0xB) | (sp60 << 0xC)) | ((sp68 << 0xD) | (sp70 << 0xE)) | ((sp78 << 0xF) | (sp80 << 0x10)) | ((sp88 << 0x11) | (sp90 << 0x12)) | ((sp98 << 0x13) | (sp18 << 0x14)) | ((sp20 << 0x15) | (sp28 << 0x16)) | ((sp30 << 0x19) | (sp38 << 0x1A)) | ((sp40 << 0x1B) | temp_a0) | ((sp50 << 0x1D) | (__glkonim_IsEnabled((void *)0x80BC) * -0x80000000)));
        ValidateHistogramSink(temp_a0);
        temp_s1_3 = __glkonim_IsEnabled((void *)0x4001);
        temp_s0_3 = __glkonim_IsEnabled((void *)0x4000);
        temp_s2_3 = __glkonim_IsEnabled((void *)0x4002);
        temp_s4_2 = __glkonim_IsEnabled((void *)0x4003);
        temp_s3_2 = __glkonim_IsEnabled((void *)0x4004);
        spC8 = __glkonim_IsEnabled((void *)0x4005);
        temp_s8_2 = __glkonim_IsEnabled((void *)0x4006);
        temp_a2 = spC8 << 5;
        temp_a1_2 = (temp_s3_2 * 0x10) | temp_a2;
        arg0->unk708 = (s32) (temp_s0_3 | (temp_s1_3 * 2) | ((temp_s2_3 * 4) | (temp_s4_2 * 8)) | temp_a1_2 | ((temp_s8_2 << 6) | (__glkonim_IsEnabled((void *)0x4007) << 7)));
        temp_s1_4 = __glkonim_IsEnabled((void *)0x3001, temp_a1_2, temp_a2);
        temp_s0_4 = __glkonim_IsEnabled((void *)0x3000);
        temp_s2_4 = __glkonim_IsEnabled((void *)0x3002);
        temp_s4_3 = __glkonim_IsEnabled((void *)0x3003);
        temp_s3_3 = __glkonim_IsEnabled((void *)0x3004);
        temp_a4 = temp_s4_3 * 8;
        temp_a2_2 = temp_s0_4 | (temp_s1_4 * 2);
        temp_a3 = (temp_s2_4 * 4) | temp_a4;
        temp_a1_3 = __glkonim_IsEnabled((void *)0x3005) << 5;
        arg0->unk70C = (s32) (temp_a2_2 | temp_a3 | ((temp_s3_3 * 0x10) | temp_a1_3));
        temp_s1_5 = __glkonim_IsEnabled((void *)0x80D1, temp_a1_3, temp_a2_2, temp_a3, temp_a4);
        temp_s0_5 = __glkonim_IsEnabled((void *)0x80D0);
        temp_s2_5 = __glkonim_IsEnabled((void *)0x80D2);
        temp_s4_4 = __glkonim_IsEnabled((void *)0x8148);
        temp_s3_4 = __glkonim_IsEnabled((void *)0x8198);
        spC8 = __glkonim_IsEnabled((void *)0x8094);
        temp_s8_3 = __glkonim_IsEnabled((void *)0x817D);
        spA0 = __glkonim_IsEnabled((void *)0x8183);
        arg0->unk704 = (s32) (temp_s0_5 | (temp_s1_5 * 2) | (temp_s2_5 * 4) | ((temp_s4_4 * 8) | (temp_s3_4 * 0x10)) | ((spC8 << 5) | (temp_s8_3 << 6)) | ((spA0 << 7) | (__glkonim_IsEnabled((void *)0x81C7) << 8)));
        arg0->unk710 = (s32) arg1->unk710;
        arg0->unk714 = (s32) arg1->unk714;
    }
    // Error: negative shift count
    // At instruction: bgez $a6, .L0d9603ec
    if (M2C_ERROR()) {
        temp_a2_3 = arg0 + 0x790;
        var_v0 = 0xC;
        var_a0 = 0;
        temp_a1_4 = arg1 + 0x78C;
        do {
            var_v0 -= 2;
            *(var_a0 + (arg0 + 0x78C)) = *(var_a0 + temp_a1_4);
            temp_t1 = var_a0 + temp_a2_3;
            temp_t0 = *(var_a0 + (arg2 << 0x2F));
            var_a0 += 8;
            *temp_t1 = temp_t0;
        } while (var_v0 > 0);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x800000);
        arg0->unk700 = (s32) (arg0->unk700 | (__glkonim_IsEnabled((void *)0xD80, (s32) temp_a1_4, (s32) temp_a2_3) << 0x17));
        arg0->unk710 = (s32) arg1->unk710;
        arg0->unk714 = (s32) arg1->unk714;
    }
    var_a6 = arg2 & 0x8000;
    if (arg2 & 0x80) {
        __glkonim_GetFloatv(0xB66, arg0 + 0x638);
        __glkonim_GetFloatv(0xB61, arg0 + 0x658);
        __glkonim_GetFloatv(0xB62, arg0 + 0x648);
        __glkonim_GetFloatv(0xB63, arg0 + 0x64C);
        __glkonim_GetFloatv(0xB64, arg0 + 0x650);
        __glkonim_GetIntegerv(0xB65, arg0 + 0x634);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x20);
        temp_a3_2 = __glkonim_IsEnabled((void *)0xB60, -0x21) << 5;
        temp_a2_4 = arg0->unk700 | temp_a3_2;
        arg0->unk700 = temp_a2_4;
        __glkonim_GetIntegerv(0x812B, arg0 + 0x90B0, temp_a2_4, temp_a3_2);
        __glkonim_GetFloatv(0x812A, arg0 + 0x90B4);
        __glkonim_GetFloatv(0x8199, arg0 + 0xA0B4);
        arg0->unk704 = (s32) (arg0->unk704 & ~0x10);
        arg0->unk704 = (s32) (arg0->unk704 | (__glkonim_IsEnabled((void *)0x8198) * 0x10));
        var_a6 = arg2 & 0x8000;
    }
    if (var_a6 != 0) {
        __glkonim_GetIntegerv(0xC50, arg0 + 0x768);
        __glkonim_GetIntegerv(0xC51, arg0 + 0x76C);
        __glkonim_GetIntegerv(0xC52, arg0 + 0x770);
        __glkonim_GetIntegerv(0xC53, arg0 + 0x774);
        __glkonim_GetIntegerv(0xC54, arg0 + 0x778);
    }
    if (arg2 & 0x40) {
        temp_s0_6 = arg0->unk630;
        __glkonim_GetIntegerv(0xB54, arg0 + 0x570);
        __glkonim_GetIntegerv(0xB55, arg0 + 0x568);
        __glkonim_GetIntegerv(0xB56, arg0 + 0x56C);
        __glkonim_GetFloatv(0xB53, arg0 + 0x574);
        __glkonim_GetBooleanv(0xB51, arg0 + 0x584);
        __glkonim_GetBooleanv(0xB52, arg0 + 0x585);
        temp_v0 = __glkon_get_special(0x10B, 0);
        arg0->unk590 = (f32) temp_v0->unk-4;
        arg0->unk594 = (f32) temp_v0->unk0;
        arg0->unk598 = (f32) temp_v0->unk4;
        arg0->unk59C = (f32) temp_v0->unk8;
        arg0->unk5A0 = (f32) temp_v0->unkC;
        arg0->unk5A4 = (f32) temp_v0->unk10;
        arg0->unk5A8 = (f32) temp_v0->unk14;
        arg0->unk5AC = (f32) temp_v0->unk18;
        arg0->unk5B0 = (f32) temp_v0->unk1C;
        arg0->unk5B4 = (f32) temp_v0->unk20;
        arg0->unk5B8 = (f32) temp_v0->unk24;
        arg0->unk5BC = (f32) temp_v0->unk28;
        arg0->unk5C0 = (f32) temp_v0->unk2C;
        arg0->unk5C4 = (f32) temp_v0->unk30;
        arg0->unk5C8 = (f32) temp_v0->unk34;
        arg0->unk5CC = (f32) temp_v0->unk38;
        arg0->unk5D0 = (f32) temp_v0->unk3C;
        arg0->unk5D4 = (f32) temp_v0->unk4C;
        arg0->unk5D8 = (f32) temp_v0->unk50;
        arg0->unk5DC = (f32) temp_v0->unk54;
        arg0->unk5E0 = (f32) temp_v0->unk5C;
        arg0->unk5E4 = (f32) temp_v0->unk60;
        arg0->unk5E8 = (f32) temp_v0->unk64;
        arg0->unk5EC = (f32) temp_v0->unk68;
        arg0->unk5F0 = (f32) temp_v0->unk6C;
        arg0->unk5F4 = (f32) temp_v0->unk70;
        arg0->unk5F8 = (f32) temp_v0->unk74;
        arg0->unk5FC = (f32) temp_v0->unk78;
        arg0->unk600 = (f32) temp_v0->unk7C;
        arg0->unk604 = (f32) temp_v0->unk80;
        arg0->unk608 = (f32) temp_v0->unk84;
        arg0->unk60C = (f32) temp_v0->unk88;
        arg0->unk610 = (f32) temp_v0->unk8C;
        arg0->unk614 = (f32) temp_v0->unk90;
        arg0->unk618 = (f32) temp_v0->unk94;
        arg0->unk61C = (f32) temp_v0->unk98;
        arg0->unk620 = (f32) temp_v0->unk9C;
        arg0->unk624 = (f32) temp_v0->unkAC;
        arg0->unk628 = (f32) temp_v0->unkB0;
        arg0->unk62C = (f32) temp_v0->unkB4;
        sp0 = 0;
        var_a5 = 0;
        var_s1 = temp_v0 + 0xBC;
        if (arg0->unkE04 > 0) {
            var_ra = 0 * 8;
            do {
                (temp_s0_6 + ((((var_ra - var_a5) * 4) + var_a5) * 4))->unk30 = (f32) var_s1->unk0;
                (temp_s0_6 + (sp0 * 0x74))->unk34 = (f32) var_s1->unk4;
                (temp_s0_6 + (sp0 * 0x74))->unk38 = (f32) var_s1->unk8;
                (temp_s0_6 + (sp0 * 0x74))->unk3C = (f32) var_s1->unkC;
                (temp_s0_6 + (sp0 * 0x74))->unk40 = (f32) var_s1->unk10;
                (temp_s0_6 + (sp0 * 0x74))->unk44 = (f32) var_s1->unk14;
                (temp_s0_6 + (sp0 * 0x74))->unk48 = (f32) var_s1->unk18;
                (temp_s0_6 + (sp0 * 0x74))->unk4C = (f32) var_s1->unk1C;
                (temp_s0_6 + (sp0 * 0x74))->unk50 = (f32) var_s1->unk20;
                (temp_s0_6 + (sp0 * 0x74))->unk54 = (f32) var_s1->unk24;
                (temp_s0_6 + (sp0 * 0x74))->unk58 = (f32) var_s1->unk28;
                temp_a3_3 = temp_s0_6 + (sp0 * 0x74);
                temp_a3_3->unk5C = (f32) var_s1->unk2C;
                var_s1 += 0x30;
                __glkonim_GetLightfv(sp0 + 0x4000, 0x1205, temp_s0_6 + (sp0 * 0x74) + 0x60, temp_a3_3, sp0, sp0, sp0, sp0);
                __glkonim_GetLightfv(sp0 + 0x4000, 0x1206, temp_s0_6 + (sp0 * 0x74) + 0x64);
                __glkonim_GetLightfv(sp0 + 0x4000, 0x1207, temp_s0_6 + (sp0 * 0x74) + 0x68);
                __glkonim_GetLightfv(sp0 + 0x4000, 0x1208, temp_s0_6 + (sp0 * 0x74) + 0x6C);
                __glkonim_GetLightfv(sp0 + 0x4000, 0x1209, temp_s0_6 + (sp0 * 0x74) + 0x70);
                var_a5 = sp0 + 1;
                sp0 = var_a5;
                var_ra = var_a5 * 8;
            } while (var_a5 < arg0->unkE04);
        }
        arg0->unk700 = (s32) (arg0->unk700 & ~0xC0);
        temp_s0_7 = __glkonim_IsEnabled((void *)0xB50);
        arg0->unk700 = (s32) (arg0->unk700 | ((temp_s0_7 << 6) | (__glkonim_IsEnabled((void *)0xB57) << 7)));
        temp_s1_6 = __glkonim_IsEnabled((void *)0x4001);
        temp_s0_8 = __glkonim_IsEnabled((void *)0x4000);
        temp_s2_6 = __glkonim_IsEnabled((void *)0x4002);
        temp_s4_5 = __glkonim_IsEnabled((void *)0x4003);
        temp_s3_5 = __glkonim_IsEnabled((void *)0x4004);
        spC8 = __glkonim_IsEnabled((void *)0x4005);
        temp_s8_4 = __glkonim_IsEnabled((void *)0x4006);
        arg0->unk708 = (s32) (temp_s0_8 | (temp_s1_6 * 2) | ((temp_s2_6 * 4) | (temp_s4_5 * 8)) | ((temp_s3_5 * 0x10) | (spC8 << 5)) | ((temp_s8_4 << 6) | (__glkonim_IsEnabled((void *)0x4007) << 7)));
    }
    if (arg2 & 4) {
        sp0 = 0;
        __glkonim_GetFloatv(0xB21, arg0 + 0x1D4);
        __glkonim_GetIntegerv(0xB25, sp);
        arg0->unk1E0 = (s16) sp0;
        __glkonim_GetIntegerv(0xB26, sp);
        arg0->unk1E2 = (s16) sp0;
        arg0->unk700 = (s32) (arg0->unk700 & ~0x300);
        temp_s0_9 = __glkonim_IsEnabled((void *)0xB24, sp0);
        arg0->unk700 = (s32) (arg0->unk700 | ((temp_s0_9 << 8) | (__glkonim_IsEnabled((void *)0xB20) << 9)));
    }
    // Error: negative shift count
    // At instruction: bgez $a5, .L0d960b80
    if (M2C_ERROR()) {
        arg0->unk7BC = (s32) arg1->unk7BC;
    }
    var_t9 = arg2 & 2;
    if (M2C_ERROR(/* Read from unset register $a7 */) != 0) {
        temp_a6 = arg1 + 0x288;
        temp_a7 = arg0 + 0x288;
        temp_a5 = arg0 + 0x280;
        temp_a2_5 = arg1 + 0x280;
        var_v0_2 = 8;
        var_a0_2 = 0xE;
        arg0->unk280 = (s64) arg1->unk280;
        do {
            var_a0_2 -= 2;
            *(var_v0_2 + temp_a5) = *(var_v0_2 + temp_a2_5);
            temp_a1_5 = var_v0_2 + temp_a7;
            temp_v1 = *(var_v0_2 + temp_a6);
            var_v0_2 += 0x10;
            *temp_a1_5 = temp_v1;
        } while (var_a0_2 > 0);
        temp_a4_2 = var_v0_2 + temp_a5;
        temp_a3_4 = *(var_v0_2 + temp_a2_5);
        *temp_a4_2 = temp_a3_4;
        temp_a2_6 = arg1->unk564;
        arg0->unk564 = temp_a2_6;
        __glkonim_GetIntegerv(0xC02, arg0 + 0x4D4, temp_a2_6, (s64) temp_a3_4, temp_a4_2, temp_a5, temp_a6, temp_a7);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x02000000);
        arg0->unk700 = (s32) ((arg0->unk700 | (__glkonim_IsEnabled((void *)0x8010) << 0x19)) & ~0x04000000);
        arg0->unk700 = (s32) ((arg0->unk700 | (__glkonim_IsEnabled((void *)0x8011) << 0x1A)) & ~0x08000000);
        arg0->unk700 = (s32) ((arg0->unk700 | (__glkonim_IsEnabled((void *)0x8012) << 0x1B)) & ~0x10000000);
        temp_a1_6 = arg0->unk700;
        arg0->unk700 = (s32) ((temp_a1_6 | (__glkonim_IsEnabled((void *)0x8024) << 0x1C)) & ~0x20000000);
        temp_v0_2 = __glkonim_IsEnabled((void *)0x802E, temp_a1_6);
        temp_a2_7 = arg0->unk704 & ~1;
        arg0->unk704 = temp_a2_7;
        temp_a1_7 = temp_v0_2 << 0x1D;
        arg0->unk700 = (s32) (arg0->unk700 | temp_a1_7);
        arg0->unk704 = (s32) ((arg0->unk704 | __glkonim_IsEnabled((void *)0x80D0, temp_a1_7, temp_a2_7, -2)) & ~2);
        arg0->unk704 = (s32) ((arg0->unk704 | (__glkonim_IsEnabled((void *)0x80D1) * 2)) & ~4);
        arg0->unk704 = (s32) ((arg0->unk704 | (__glkonim_IsEnabled((void *)0x80D2) * 4)) & ~0x20);
        arg0->unk704 = (s32) ((arg0->unk704 | (__glkonim_IsEnabled((void *)0x8094) << 5)) & ~0x100);
        arg0->unk704 = (s32) (arg0->unk704 | (__glkonim_IsEnabled((void *)0x81C7) << 8));
        ValidateHistogramSink();
        __glkonim_GetColorTableParameterfvSGI(0x80D0, 0x80D6, arg0 + 0xA14);
        __glkonim_GetColorTableParameterfvSGI(0x80D1, 0x80D6, arg0 + 0xAB4);
        __glkonim_GetColorTableParameterfvSGI(0x80D2, 0x80D6, arg0 + 0xB54);
        __glkonim_GetColorTableParameterfvSGI(0x80BC, 0x80D6, arg0 + 0xBF4);
        __glkonim_GetColorTableParameterfvSGI(0x80D0, 0x80D7, arg0 + 0xA24);
        __glkonim_GetColorTableParameterfvSGI(0x80D1, 0x80D7, arg0 + 0xAC4);
        __glkonim_GetColorTableParameterfvSGI(0x80D2, 0x80D7, arg0 + 0xB64);
        __glkonim_GetColorTableParameterfvSGI(0x80BC, 0x80D7, arg0 + 0xC04);
        var_t9 = arg2 & 2;
    }
    if (var_t9 != 0) {
        __glkonim_GetFloatv(0xB11, arg0 + 0x1C8);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x400);
        arg0->unk700 = (s32) (arg0->unk700 | (__glkonim_IsEnabled((void *)0xB10) << 0xA));
    }
    if (arg2 & 8) {
        __glkonim_GetIntegerv(0xB45, arg0 + 0x1EC);
        __glkonim_GetIntegerv(0xB46, arg0 + 0x1F0);
        __glkonim_GetIntegerv(0xB40, arg0 + 0x1E4);
        arg0->unk700 = (s32) (arg0->unk700 & (M2C_ERROR(/* Read from unset register $t9 */) + 0x131478)->unk-3DA0);
        temp_s0_10 = __glkonim_IsEnabled((void *)0xB41);
        temp_s1_7 = __glkonim_IsEnabled((void *)0xB44);
        arg0->unk700 = (s32) (arg0->unk700 | ((temp_s0_10 << 0xB) | (temp_s1_7 << 0xC) | (__glkonim_IsEnabled((void *)0xB42) << 0xD)));
    }
    if (arg2 & 0x10) {
        __glkonim_GetPolygonStipple(arg0 + 0x200);
    }
    // Error: negative shift count
    // At instruction: bgez $t0, .L0d960f68
    if (M2C_ERROR()) {
        __glkonim_GetIntegerv(0xC10, arg0 + 0x9DC);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x4000);
        arg0->unk700 = (s32) (arg0->unk700 | (__glkonim_IsEnabled((void *)0xC11) << 0xE));
    }
    var_a6_2 = arg2 << 0x2D;
    if (arg2 & 0x400) {
        sp0 = 0;
        __glkonim_GetIntegerv(0xB92, arg0 + 0x680);
        __glkonim_GetIntegerv(0xB93, sp);
        arg0->unk688 = (s16) sp0;
        __glkonim_GetIntegerv(0xB97, sp);
        arg0->unk686 = (s16) sp0;
        __glkonim_GetIntegerv(0xB94, arg0 + 0x68C);
        __glkonim_GetIntegerv(0xB95, arg0 + 0x690);
        __glkonim_GetIntegerv(0xB96, arg0 + 0x694);
        __glkonim_GetIntegerv(0xB98, sp);
        arg0->unk68A = (s16) sp0;
        __glkonim_GetIntegerv(0xB91, sp);
        arg0->unk684 = (s16) sp0;
        temp_a2_8 = ~0x8000;
        temp_a1_8 = arg0->unk700 & temp_a2_8;
        arg0->unk700 = temp_a1_8;
        arg0->unk700 = (s32) (arg0->unk700 | (__glkonim_IsEnabled((void *)0xB90, temp_a1_8, temp_a2_8, sp0) << 0xF));
        var_a6_2 = arg2 << 0x2D;
    }
    var_t3 = arg2 & 0x1000;
    if (var_a6_2 < 0) {
        var_s0 = arg0->unk9B0;
        var_s1_2 = arg0 + 0x7C0;
        temp_v0_3 = __glkon_get_special(0x134, 0);
        arg0->unk9B4->unk0 = (s32) temp_v0_3->unk-4;
        temp_t0_2 = arg0->unk9B4;
        temp_t0_2->unk4 = (f32) temp_v0_3->unk0;
        temp_t0_2->unk8 = (f32) temp_v0_3->unk4;
        temp_t0_2->unkC = (f32) temp_v0_3->unk8;
        temp_t0_2->unk10 = (f32) temp_v0_3->unkC;
        temp_a7_2 = arg0->unk9B4;
        temp_a7_2->unk14 = (f32) temp_v0_3->unk10;
        temp_a7_2->unk18 = (f32) temp_v0_3->unk14;
        temp_a7_2->unk1C = (f32) temp_v0_3->unk18;
        temp_a7_2->unk20 = (f32) temp_v0_3->unk1C;
        arg0->unk7C4 = (f32) temp_v0_3->unk20;
        arg0->unk7C8 = (f32) temp_v0_3->unk24;
        arg0->unk7CC = (f32) temp_v0_3->unk28;
        arg0->unk7D0 = (f32) temp_v0_3->unk2C;
        arg0->unk840 = (f32) temp_v0_3->unk30;
        arg0->unk844 = (f32) temp_v0_3->unk34;
        arg0->unk848 = (f32) temp_v0_3->unk38;
        arg0->unk84C = (f32) temp_v0_3->unk3C;
        arg0->unk8BC = (f32) temp_v0_3->unk40;
        arg0->unk8C0 = (f32) temp_v0_3->unk44;
        arg0->unk8C4 = (f32) temp_v0_3->unk48;
        arg0->unk8C8 = (f32) temp_v0_3->unk4C;
        arg0->unk938 = (f32) temp_v0_3->unk50;
        arg0->unk93C = (f32) temp_v0_3->unk54;
        arg0->unk940 = (f32) temp_v0_3->unk58;
        arg0->unk944 = (f32) temp_v0_3->unk5C;
        arg0->unk7D4 = (f32) temp_v0_3->unk60;
        arg0->unk7D8 = (f32) temp_v0_3->unk64;
        arg0->unk7DC = (f32) temp_v0_3->unk68;
        arg0->unk7E0 = (f32) temp_v0_3->unk6C;
        arg0->unk850 = (f32) temp_v0_3->unk70;
        arg0->unk854 = (f32) temp_v0_3->unk74;
        arg0->unk858 = (f32) temp_v0_3->unk78;
        arg0->unk85C = (f32) temp_v0_3->unk7C;
        arg0->unk8CC = (f32) temp_v0_3->unk80;
        arg0->unk8D0 = (f32) temp_v0_3->unk84;
        arg0->unk8D4 = (f32) temp_v0_3->unk88;
        arg0->unk8D8 = (f32) temp_v0_3->unk8C;
        arg0->unk948 = (f32) temp_v0_3->unk90;
        arg0->unk94C = (f32) temp_v0_3->unk94;
        arg0->unk950 = (f32) temp_v0_3->unk98;
        arg0->unk954 = (f32) temp_v0_3->unk9C;
        var_a5_2 = 0x2000;
        sp0 = 0x2000;
        do {
            __glkonim_GetTexGeniv(var_a5_2, 0x2500, var_s1_2);
            var_s1_2 += 0x7C;
            var_a5_2 = sp0 + 1;
            sp0 = var_a5_2;
        } while (sp0 < 0x2003);
        var_s4 = var_s0 + 0x98;
        var_s3 = var_s0 + 4;
        var_s2 = var_s0 + 0x10;
        var_s1_3 = var_s0 + 0xC;
        var_a5_3 = 0xDE0;
        sp0 = 0xDE0;
        do {
            __glkonim_GetTexParameteriv(var_a5_3, 0x2801, var_s1_3);
            __glkonim_GetTexParameteriv(sp0, 0x2800, var_s2);
            __glkonim_GetTexParameteriv(sp0, 0x2802, var_s0);
            __glkonim_GetTexParameteriv(sp0, 0x2803, var_s3);
            __glkonim_GetTexParameterfv(sp0, 0x1004, var_s4);
            var_s1_3 += 0xE0;
            var_s2 += 0xE0;
            var_s3 += 0xE0;
            var_s4 += 0xE0;
            var_s0 += 0xE0;
            var_a5_3 = sp0 + 1;
            sp0 = var_a5_3;
        } while (sp0 < 0xDE1);
        arg0->unk700 = (s32) (arg0->unk700 & 0x3FC0FFFF);
        temp_s0_11 = __glkonim_IsEnabled((void *)0xDE0);
        temp_s1_8 = __glkonim_IsEnabled((void *)0xDE1);
        temp_s2_7 = __glkonim_IsEnabled((void *)0xC60);
        temp_s4_6 = __glkonim_IsEnabled((void *)0xC61);
        temp_s3_6 = __glkonim_IsEnabled((void *)0xC62);
        arg0->unk700 = (s32) (arg0->unk700 | ((temp_s0_11 << 0x10) | (temp_s1_8 << 0x11) | ((temp_s2_7 << 0x12) | (temp_s4_6 << 0x13)) | ((temp_s3_6 << 0x14) | (__glkonim_IsEnabled((void *)0xC63) << 0x15))));
        var_t3 = arg2 & 0x1000;
    }
    var_t8 = arg2 & 0x800;
    if (var_t3 != 0) {
        temp_s0_12 = arg0->unkE10 * 2 * 0x10;
        __glkonim_IsEnabled(arg0, arg0->unk6D4);
        arg0->unk6D4 = arg0->unk0(arg0, temp_s0_12);
        memcpy((s32 *) arg0->unk6D4, __glkon_get_special(0x1CB, 0) - 4, temp_s0_12);
        __glkonim_GetIntegerv(0xBA0, arg0 + 0x6D0);
        arg0->unk700 = (s32) (arg0->unk700 & ~0x400000);
        arg0->unk700 = (s32) ((arg0->unk700 | (__glkonim_IsEnabled((void *)0xBA1) << 0x16)) & 0x7FFFFFFF);
        temp_a2_9 = __glkonim_IsEnabled((void *)0x80BC) * -0x80000000;
        temp_a1_9 = arg0->unk700 | temp_a2_9;
        arg0->unk700 = temp_a1_9;
        temp_s1_9 = __glkonim_IsEnabled((void *)0x3001, temp_a1_9, temp_a2_9);
        temp_s0_13 = __glkonim_IsEnabled((void *)0x3000);
        temp_s2_8 = __glkonim_IsEnabled((void *)0x3002);
        temp_s4_7 = __glkonim_IsEnabled((void *)0x3003);
        temp_s3_7 = __glkonim_IsEnabled((void *)0x3004);
        arg0->unk70C = (s32) (temp_s0_13 | (temp_s1_9 * 2) | ((temp_s2_8 * 4) | (temp_s4_7 * 8)) | ((temp_s3_7 * 0x10) | (__glkonim_IsEnabled((void *)0x3005) << 5)));
        __glkonim_GetIntegerv(0x8149, arg0 + 0x6D8);
        __glkonim_GetFloatv(0x814A, arg0 + 0x6DC);
        __glkonim_GetFloatv(0x814B, arg0 + 0x6EC);
        arg0->unk704 = (s32) (arg0->unk704 & ~8);
        arg0->unk704 = (s32) (arg0->unk704 | (__glkonim_IsEnabled((void *)0x8148) * 8));
        __glkonim_GetIntegerv(0x8196, arg0 + 0x6FC);
        arg0->unk704 = (s32) (arg0->unk704 & ~0x40);
        arg0->unk704 = (s32) (arg0->unk704 | (__glkonim_IsEnabled((void *)0x817D) << 6));
        var_t8 = arg2 & 0x800;
    }
    if (var_t8 != 0) {
        __glkonim_GetIntegerv(0xBA2, arg0 + 0x698);
        __glkonim_GetDoublev(0xB70, arg0 + 0x6A8);
    }
    // Error: negative shift count
    // At instruction: bgez $t9, .L0d9615b4
    if (M2C_ERROR()) {
        __glkonim_GetIntegerv(0x80AC, arg0 + 0xC70);
        __glkonim_GetFloatv(0x80AA, arg0 + 0xC74);
        __glkonim_GetBooleanv(0x80AB, arg0 + 0xC78);
    }
    if (arg2 & 0x20002000) {
        __glkonim_GetBooleanv(0x809D, arg0 + 0xC6C);
        __glkonim_GetBooleanv(0x80A0, arg0 + 0xC79);
        __glkonim_GetBooleanv(0x809F, arg0 + 0xC7A);
        __glkonim_GetBooleanv(0x809E, arg0 + 0xC7B);
    }
    arg0->unk7B5C = (s32) (arg0->unk7B5C | 1);
    arg0->unk7B60 = (s32) (arg0->unk7B60 | arg2);
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void __glkonResolveContext(void) {
    s32 temp_a0;
    s32 temp_a0_2;
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
    s32 temp_f0;
    s32 temp_f12;
    s32 temp_f13;
    s32 temp_f14;
    s32 temp_f15;
    s32 temp_f16;
    s32 temp_f17;
    s32 temp_f18;
    s32 temp_f19;
    s32 temp_s2;
    s32 temp_s2_6;
    s32 temp_s3;
    s32 temp_s4_2;
    s32 temp_s5_2;
    s32 temp_s6;
    s32 temp_s7_2;
    s32 temp_t9;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_t9_5;
    s32 temp_t9_6;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a7_2;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_s2;
    s32 var_s3;
    s32 var_s3_2;
    s64 var_a7;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_t0;
    s64 var_v0;
    u8 temp_t9_2;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s2_5;
    void *temp_s4;
    void *temp_s5;
    void *temp_s7;
    void *var_s4;
    void *var_s5;

    temp_s0 = *(void **)0x1010;
    temp_s6 = temp_s0->unk7B60;
    if (temp_s6 & 0x200) {
        glClearAccum(temp_s0->unk670, temp_s0->unk674, temp_s0->unk678, temp_s0->unk67C);
    }
    if (temp_s6 & 0x4000) {
        glAlphaFunc(temp_s0->unk71C);
        glBlendFunc(temp_s0->unk724, temp_s0->unk728);
        glLogicOp(temp_s0->unk740);
        glClearColor(temp_s0->unk744, temp_s0->unk748, temp_s0->unk74C, temp_s0->unk750);
        glClearIndex(temp_s0->unk754);
        glIndexMask(temp_s0->unk758);
        glColorMask(temp_s0->unk75C, temp_s0->unk75D, temp_s0->unk75E, temp_s0->unk75F);
        glBlendColorEXT(temp_s0->unk730, temp_s0->unk734, temp_s0->unk738, temp_s0->unk73C);
        glDrawBuffer(temp_s0->unk760);
        if (temp_s0->unk700 & 1) {
            glEnable(0xBC0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBC0);
        }
        temp_a1 = temp_s0->unk700 & 2;
        if (temp_a1 != 0) {
            glEnable(0xBE2, temp_a1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBE2, temp_a1);
        }
        if (temp_s0->unk700 & 8) {
            glEnable(0xBD0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBD0);
        }
        if (temp_s0->unk700 & 4) {
            glEnable(0xBF1);
        } else {
            glDisable(0xBF1);
        }
    }
    var_ra = temp_s6 & 0x100;
    if (temp_s6 & 1) {
        glColor4fv(temp_s0 + 0x1B0);
        glIndexf(temp_s0->unk1C0);
        glTexCoord4fv(temp_s0 + 0xE0);
        glNormal3fv(temp_s0 + 0xD0);
        __glkonResolveContext(temp_s0 + 0xF0);
        glEdgeFlag(temp_s0->unk1C5);
        var_ra = temp_s6 & 0x100;
    }
    var_v0 = (s64) temp_s6 << 0x2F;
    if (var_ra != 0) {
        glDepthFunc(temp_s0->unk660);
        glDepthMask(temp_s0->unk664);
        glClearDepth(temp_s0->unk668, second half of f64);
        if (temp_s0->unk700 & 0x10) {
            glEnable(0xB71);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB71);
        }
        var_v0 = (s64) temp_s6 << 0x2F;
    }
    var_a0 = temp_s6 & 0x80;
    if (var_v0 < 0) {
        // Error: negative shift count
        // At instruction: bgez $v1, .L0d9634a8
        if (M2C_ERROR()) {
            glEnable(0xD80);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD80);
        }
        if (temp_s0->unk710 & 0x80) {
            glEnable(0xD97);
        } else {
            glDisable(0xD97);
        }
        temp_a1_2 = temp_s0->unk710 & 0x100;
        if (temp_a1_2 != 0) {
            glEnable(0xD98, temp_a1_2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD98, temp_a1_2);
        }
        if (temp_s0->unk710 & 1) {
            glEnable(0xD90);
        } else {
            glDisable(0xD90);
        }
        if (temp_s0->unk710 & 2) {
            glEnable(0xD91);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD91);
        }
        if (temp_s0->unk710 & 4) {
            glEnable(0xD92);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD92);
        }
        if (temp_s0->unk710 & 8) {
            glEnable(0xD93);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD93);
        }
        if (temp_s0->unk710 & 0x10) {
            glEnable(0xD94);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD94);
        }
        if (temp_s0->unk710 & 0x20) {
            glEnable(0xD95);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD95);
        }
        if (temp_s0->unk710 & 0x40) {
            glEnable(0xD96);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD96);
        }
        if (temp_s0->unk714 & 0x80) {
            glEnable(0xDB7);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB7);
        }
        if (temp_s0->unk714 & 0x100) {
            glEnable(0xDB8);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB8);
        }
        if (temp_s0->unk714 & 1) {
            glEnable(0xDB0);
        } else {
            glDisable(0xDB0);
        }
        if (temp_s0->unk714 & 2) {
            glEnable(0xDB1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB1);
        }
        if (temp_s0->unk714 & 4) {
            glEnable(0xDB2);
        } else {
            glDisable(0xDB2);
        }
        if (temp_s0->unk714 & 8) {
            glEnable(0xDB3);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB3);
        }
        if (temp_s0->unk714 & 0x10) {
            glEnable(0xDB4);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB4);
        }
        if (temp_s0->unk714 & 0x20) {
            glEnable(0xDB5);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB5);
        }
        if (temp_s0->unk714 & 0x40) {
            glEnable(0xDB6);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB6);
        }
        var_a0 = temp_s6 & 0x80;
    }
    var_a3 = temp_s6 & 0x8000;
    if (var_a0 != 0) {
        glFogfv(0xB66, temp_s0 + 0x638);
        glFogf(0xB61);
        glFogf(0xB62);
        glFogf(0xB63);
        glFogf(0xB64);
        glFogi(0xB65, temp_s0->unk634);
        temp_a1_3 = temp_s0->unk700 & 0x20;
        if (temp_a1_3 != 0) {
            glEnable(0xB60, temp_a1_3);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB60, temp_a1_3);
        }
        glFogFuncSGIS(temp_s0->unk90B0, temp_s0 + 0x90B4);
        glFogfv(0x8199, temp_s0 + 0xA0B4);
        if (temp_s0->unk704 & 0x10) {
            glEnable(0x8198);
        } else {
            glDisable(0x8198);
        }
        var_a3 = temp_s6 & 0x8000;
    }
    var_a4 = temp_s6 & 0x40;
    if (var_a3 != 0) {
        glHint(0xC50, temp_s0->unk768);
        glHint(0xC51, temp_s0->unk76C);
        glHint(0xC52, temp_s0->unk770);
        glHint(0xC53, temp_s0->unk774);
        glHint(0xC54, temp_s0->unk778);
        var_a4 = temp_s6 & 0x40;
    }
    if (var_a4 != 0) {
        temp_s2 = temp_s0->unk630;
        temp_s1 = temp_s0 + 0x590;
        glShadeModel(temp_s0->unk570);
        unksp18 = (s64) temp_s2;
        glColorMaterial(temp_s0->unk568, temp_s0->unk56C);
        temp_s2_2 = temp_s1 + 0x44;
        temp_s4 = temp_s1 + 0x30;
        temp_s5 = temp_s1 + 0x20;
        temp_s7 = temp_s1 + 0x10;
        glMaterialfv(0x404, 0x1200, temp_s1);
        glMaterialfv(0x404, 0x1201, temp_s7);
        glMaterialfv(0x404, 0x1202, temp_s5);
        glMaterialfv(0x404, 0x1600, temp_s4);
        glMaterialf(0x404, 0x1601);
        glMaterialfv(0x404, 0x1603, temp_s2_2);
        glMaterialfv(0x405, 0x1200, temp_s1 + 0x50);
        glMaterialfv(0x405, 0x1201, temp_s7 + 0x50);
        glMaterialfv(0x405, 0x1202, temp_s5 + 0x50);
        glMaterialfv(0x405, 0x1600, temp_s4 + 0x50);
        glMaterialf(0x405, 0x1601);
        glMaterialfv(0x405, 0x1603, temp_s2_2 + 0x50);
        temp_a0 = temp_s0->unkE04;
        *(s32 *)0x4000 = 0x119;
        *(void *)0x4000 = (s32) (temp_a0 * 0xC);
        if (temp_a0 > 0) {
            var_s1 = unksp18;
            var_s3 = 0;
            do {
                temp_f0 = var_s1->unk5C;
                *(void *)0x4000 = (s32) var_s1->unk30;
                *(void *)0x4000 = (s32) var_s1->unk34;
                *(void *)0x4000 = (s32) var_s1->unk38;
                *(void *)0x4000 = (s32) var_s1->unk3C;
                *(void *)0x4000 = (s32) var_s1->unk40;
                *(void *)0x4000 = (s32) var_s1->unk44;
                *(void *)0x4000 = (s32) var_s1->unk48;
                *(void *)0x4000 = (s32) var_s1->unk4C;
                *(void *)0x4000 = (s32) var_s1->unk50;
                var_s3 += 1;
                *(void *)0x4000 = (s32) var_s1->unk54;
                *(void *)0x4000 = (s32) var_s1->unk58;
                var_s1 += 0x74;
                *(void *)0x4000 = temp_f0;
            } while (var_s3 < temp_a0);
            var_s4 = unksp18 + 0x20;
            if (temp_a0 > 0) {
                var_s5 = unksp18 + 0x10;
                var_s1_2 = unksp18;
                var_s2 = 0x4000;
                var_s3_2 = 0;
                do {
                    glLightfv(var_s2, 0x1200, (void *) var_s1_2);
                    glLightfv(var_s2, 0x1201, var_s5);
                    glLightfv(var_s2, 0x1202, var_s4);
                    glLightf(var_s2, 0x1205);
                    glLightf(var_s2, 0x1206);
                    glLightf(var_s2, 0x1207);
                    glLightf(var_s2, 0x1208);
                    glLightf(var_s2, 0x1209);
                    var_s3_2 += 1;
                    var_s2 += 1;
                    var_s5 += 0x74;
                    var_s4 += 0x74;
                    var_s1_2 += 0x74;
                } while (var_s3_2 < temp_s0->unkE04);
            }
        }
        glLightModelfv(0xB53, temp_s0 + 0x574);
        glLightModeli(0xB51, temp_s0->unk584);
        glLightModeli(0xB52, temp_s0->unk585);
        if (temp_s0->unk700 & 0x40) {
            glEnable(0xB50);
        } else {
            glDisable(0xB50);
        }
        if (temp_s0->unk700 & 0x80) {
            glEnable(0xB57);
        } else {
            glDisable(0xB57);
        }
        if (temp_s0->unk708 & 1) {
            glEnable(0x4000);
        } else {
            glDisable(0x4000);
        }
        if (temp_s0->unk708 & 2) {
            glEnable(0x4001);
        } else {
            glDisable(0x4001);
        }
        if (temp_s0->unk708 & 4) {
            glEnable(0x4002);
        } else {
            glDisable(0x4002);
        }
        temp_t9 = temp_s0->unk708 & 8;
        if (temp_t9 != 0) {
            glEnable(0x4003);
        } else {
            ((? (*)(?)) temp_t9)(0x4003);
        }
        if (temp_s0->unk708 & 0x10) {
            glEnable(0x4004);
        } else {
            glDisable(0x4004);
        }
        if (temp_s0->unk708 & 0x20) {
            glEnable(0x4005);
        } else {
            glDisable(0x4005);
        }
        if (temp_s0->unk708 & 0x40) {
            glEnable(0x4006);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4006);
        }
        if (temp_s0->unk708 & 0x80) {
            glEnable(0x4007);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4007);
        }
    }
    temp_a0_2 = temp_s6 & 4;
    if (temp_a0_2 != 0) {
        glLineWidth(temp_a0_2, temp_s0->unk1D4);
        glLineStipple(temp_s0->unk1E2, temp_s0->unk1E0);
        temp_a1_4 = temp_s0->unk700 & 0x100;
        if (temp_a1_4 != 0) {
            glEnable(0xB24, temp_a1_4);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB24, temp_a1_4);
        }
        if (temp_s0->unk700 & 0x200) {
            glEnable(0xB20);
        } else {
            glDisable(0xB20);
        }
    }
    // Error: negative shift count
    // At instruction: bgez $a3, .L0d962028
    if (M2C_ERROR()) {
        glListBase(temp_s0->unk7BC);
    }
    if (temp_s6 & 0x20) {
        __glkonResolveContext(temp_s0 + 0xB0);
    }
    if (temp_s6 & 2) {
        glPointSize(temp_s0->unk1C8);
        if (temp_s0->unk700 & 0x400) {
            glEnable(0xB10);
        } else {
            glDisable(0xB10);
        }
    }
    var_a2 = temp_s6 & 0x10;
    if (temp_s6 & 8) {
        glCullFace(temp_s0->unk1EC);
        glFrontFace(temp_s0->unk1F0);
        glPolygonMode(temp_s0->unk1E4, temp_s0->unk1E8);
        if (temp_s0->unk700 & 0x800) {
            glEnable(0xB41);
        } else {
            glDisable(0xB41);
        }
        if (temp_s0->unk700 & 0x1000) {
            glEnable(0xB44);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB44);
        }
        temp_a1_5 = temp_s0->unk700 & 0x2000;
        if (temp_a1_5 != 0) {
            glEnable(0xB42, temp_a1_5);
        } else {
            glDisable(0xB42, temp_a1_5);
        }
        var_a2 = temp_s6 & 0x10;
    }
    if (var_a2 != 0) {
        glPolygonStipple(temp_s0 + 0x200);
    }
    // Error: negative shift count
    // At instruction: bgez $a3, .L0d962144
    if (M2C_ERROR()) {
        glScissor(temp_s0->unk9DC, temp_s0->unk9E0, temp_s0->unk9E4, temp_s0->unk9E8);
        if (temp_s0->unk700 & 0x4000) {
            glEnable(0xC11);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC11);
        }
    }
    var_a7 = (s64) temp_s6 << 0x2D;
    if (M2C_ERROR(/* Read from unset register $a5 */) != 0) {
        glStencilFunc(temp_s0->unk680, temp_s0->unk686, temp_s0->unk688);
        glStencilOp(temp_s0->unk68C, temp_s0->unk690, temp_s0->unk694);
        glStencilMask(temp_s0->unk68A);
        glClearStencil(temp_s0->unk684);
        if (temp_s0->unk700 & 0x8000) {
            glEnable(0xB90);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB90);
        }
        var_a7 = (s64) temp_s6 << 0x2D;
    }
    var_ra_2 = temp_s6 & 0x1000;
    if (var_a7 < 0) {
        temp_s3 = temp_s0->unk9B0;
        temp_f12 = temp_s0->unk954;
        temp_f13 = temp_s0->unk950;
        temp_f14 = temp_s0->unk94C;
        temp_f15 = temp_s0->unk948;
        temp_f16 = temp_s0->unk8D8;
        temp_f17 = temp_s0->unk8D4;
        temp_f18 = temp_s0->unk8D0;
        temp_f19 = temp_s0->unk8CC;
        *(void *)0x4000 = 0x1D6;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = (s32) temp_s0->unk7C4;
        *(void *)0x4000 = (s32) temp_s0->unk7C8;
        *(void *)0x4000 = (s32) temp_s0->unk7CC;
        *(void *)0x4000 = (s32) temp_s0->unk7D0;
        *(void *)0x4000 = (s32) temp_s0->unk840;
        *(void *)0x4000 = (s32) temp_s0->unk844;
        *(void *)0x4000 = (s32) temp_s0->unk848;
        *(void *)0x4000 = (s32) temp_s0->unk84C;
        *(void *)0x4000 = (s32) temp_s0->unk8BC;
        *(void *)0x4000 = (s32) temp_s0->unk8C0;
        *(void *)0x4000 = (s32) temp_s0->unk8C4;
        *(void *)0x4000 = (s32) temp_s0->unk8C8;
        *(void *)0x4000 = (s32) temp_s0->unk938;
        *(void *)0x4000 = (s32) temp_s0->unk93C;
        *(void *)0x4000 = (s32) temp_s0->unk940;
        *(void *)0x4000 = (s32) temp_s0->unk944;
        *(void *)0x4000 = (s32) temp_s0->unk7D4;
        *(void *)0x4000 = (s32) temp_s0->unk7D8;
        *(void *)0x4000 = (s32) temp_s0->unk7DC;
        *(void *)0x4000 = (s32) temp_s0->unk7E0;
        *(void *)0x4000 = (s32) temp_s0->unk850;
        *(void *)0x4000 = (s32) temp_s0->unk854;
        *(void *)0x4000 = (s32) temp_s0->unk858;
        *(void *)0x4000 = (s32) temp_s0->unk85C;
        *(void *)0x4000 = temp_f19;
        *(void *)0x4000 = temp_f18;
        *(void *)0x4000 = temp_f17;
        *(void *)0x4000 = temp_f16;
        *(void *)0x4000 = temp_f15;
        *(void *)0x4000 = temp_f14;
        *(void *)0x4000 = temp_f13;
        temp_s2_3 = temp_s0 + 0x7C0;
        *(void *)0x4000 = temp_f12;
        glTexGeniv(0x2000, 0x2500, temp_s2_3, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
        temp_s2_4 = temp_s2_3 + 0x7C;
        glTexGeniv(0x2001, 0x2500, temp_s2_4);
        temp_s2_5 = temp_s2_4 + 0x7C;
        glTexGeniv(0x2002, 0x2500, temp_s2_5);
        glTexGeniv(0x2003, 0x2500, temp_s2_5 + 0x7C);
        temp_s4_2 = temp_s3 + 0x98;
        temp_s2_6 = temp_s3 + 4;
        temp_s5_2 = temp_s3 + 0x10;
        temp_s7_2 = temp_s3 + 0xC;
        glTexParameteriv(0xDE0, 0x2801, temp_s7_2);
        glTexParameteriv(0xDE0, 0x2800, temp_s5_2);
        glTexParameteriv(0xDE0, 0x2802, temp_s3);
        glTexParameteriv(0xDE0, 0x2803, temp_s2_6);
        glTexParameterfv(0xDE0, 0x1004, temp_s4_2);
        glTexParameteriv(0xDE1, 0x2801, temp_s7_2 + 0xE0);
        glTexParameteriv(0xDE1, 0x2800, temp_s5_2 + 0xE0);
        glTexParameteriv(0xDE1, 0x2802, temp_s3 + 0xE0);
        glTexParameteriv(0xDE1, 0x2803, temp_s2_6 + 0xE0);
        glTexParameterfv(0xDE1, 0x1004, temp_s4_2 + 0xE0);
        glTexEnviv(0x2300, 0x2200, temp_s0->unk9B4);
        glTexEnvfv(0x2300, 0x2201, temp_s0->unk9B4 + 4);
        glTexEnvfv(0x2300, 0x80BE, temp_s0->unk9B4 + 0x14);
        if (0x10000 & temp_s0->unk700) {
            glEnable(0xDE0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDE0);
        }
        if (0x20000 & temp_s0->unk700) {
            glEnable(0xDE1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDE1);
        }
        if (0x40000 & temp_s0->unk700) {
            glEnable(0xC60);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC60);
        }
        if (0x80000 & temp_s0->unk700) {
            glEnable(0xC61);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC61);
        }
        // Error: negative shift count
        // At instruction: bgez $t2, .L0d963424
        if (M2C_ERROR()) {
            glEnable(0xC62);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC62);
        }
        // Error: negative shift count
        // At instruction: bgez $t3, .L0d963434
        if (M2C_ERROR()) {
            glEnable(0xC63);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC63);
        }
        if (temp_s0->unk700 & 0x80000000) {
            glEnable(0x80BC);
        } else {
            (? (*)(?))0x80000000(0x80BC);
        }
        var_ra_2 = temp_s6 & 0x1000;
    }
    var_a7_2 = temp_s6 & 0x800;
    if (var_ra_2 != 0) {
        *(void *)0x4000 = 0x1CA;
        *(void *)0x4000 = 0;
        __glkon_datavn(temp_s0->unk6D4, 0x3D);
        if (temp_s0->unk704 & 0x40) {
            glEnable(0x817D);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x817D);
        }
        // Error: negative shift count
        // At instruction: bgez $v1, .L0d963768
        if (M2C_ERROR()) {
            glEnable(0xBA1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBA1);
        }
        if (temp_s0->unk70C & 1) {
            glEnable(0x3000);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3000);
        }
        temp_a1_6 = temp_s0->unk70C & 2;
        if (temp_a1_6 != 0) {
            glEnable(0x3001, temp_a1_6);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3001, temp_a1_6);
        }
        if (temp_s0->unk70C & 4) {
            glEnable(0x3002);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3002);
        }
        if (temp_s0->unk70C & 8) {
            glEnable(0x3003);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3003);
        }
        if (temp_s0->unk70C & 0x10) {
            glEnable(0x3004);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3004);
        }
        if (temp_s0->unk70C & 0x20) {
            glEnable(0x3005);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3005);
        }
        glSpriteParameteriSGIX(0x8149, temp_s0->unk6D8);
        glSpriteParameterfvSGIX(0x814A, temp_s0 + 0x6DC);
        glSpriteParameterfvSGIX(0x814B, temp_s0 + 0x6EC);
        if (temp_s0->unk704 & 8) {
            glEnable(0x8148);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8148);
        }
        glDeformSGIX(temp_s0->unk6FC);
        var_a7_2 = temp_s6 & 0x800;
    }
    var_t0 = (s64) temp_s6 << 0x22;
    if (var_a7_2 != 0) {
        glViewport(temp_s0->unk698, temp_s0->unk69C, temp_s0->unk6A0, temp_s0->unk6A4);
        glDepthRange(temp_s0->unk6A8, second half of f64);
        var_t0 = (s64) temp_s6 << 0x22;
    }
    if (var_t0 < 0) {
        glSamplePatternSGIS(temp_s0->unkC70);
        glSampleMaskSGIS(temp_s0->unkC74);
    }
    var_ra_3 = temp_s6 & 0x2000;
    if (temp_s6 & 0x20002000) {
        if (temp_s0->unkC79 != 0) {
            glEnable(0x80A0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x80A0);
        }
        if (temp_s0->unkC7A != 0) {
            glEnable(0x809F);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x809F);
        }
        if (temp_s0->unkC7B != 0) {
            glEnable(0x809E);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x809E);
        }
        temp_t9_2 = temp_s0->unkC6C;
        if (temp_t9_2 != 0) {
            glEnable(0x809D);
        } else {
            ((? (*)(?)) temp_t9_2)(0x809D);
        }
        var_ra_3 = temp_s6 & 0x2000;
    }
    if (var_ra_3 != 0) {
        if (temp_s0->unk700 & 1) {
            glEnable(0xBC0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBC0);
        }
        if (temp_s0->unk700 & 2) {
            glEnable(0xBE2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBE2);
        }
        if (temp_s0->unk700 & 4) {
            glEnable(0xBF1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBF1);
        }
        if (temp_s0->unk700 & 8) {
            glEnable(0xBD0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBD0);
        }
        temp_a1_7 = temp_s0->unk700 & 0x10;
        if (temp_a1_7 != 0) {
            glEnable(0xB71, temp_a1_7);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB71, temp_a1_7);
        }
        if (temp_s0->unk700 & 0x20) {
            glEnable(0xB60);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB60);
        }
        if (temp_s0->unk700 & 0x40) {
            glEnable(0xB50);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB50);
        }
        if (temp_s0->unk700 & 0x100) {
            glEnable(0xB24);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB24);
        }
        if (temp_s0->unk700 & 0x200) {
            glEnable(0xB20);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB20);
        }
        if (temp_s0->unk700 & 0x400) {
            glEnable(0xB10);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB10);
        }
        if (temp_s0->unk700 & 0x800) {
            glEnable(0xB41);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB41);
        }
        if (temp_s0->unk700 & 0x1000) {
            glEnable(0xB44);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB44);
        }
        if (temp_s0->unk700 & 0x2000) {
            glEnable(0xB42);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB42);
        }
        if (temp_s0->unk700 & 0x4000) {
            glEnable(0xC11);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC11);
        }
        if (temp_s0->unk700 & 0x8000) {
            glEnable(0xB90);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB90);
        }
        temp_t9_3 = temp_s0->unk700;
        if (0x10000 & temp_t9_3) {
            glEnable(0xDE0);
        } else {
            ((? (*)(?)) temp_t9_3)(0xDE0);
        }
        if (0x20000 & temp_s0->unk700) {
            glEnable(0xDE1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDE1);
        }
        if (0x40000 & temp_s0->unk700) {
            glEnable(0xC60);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC60);
        }
        temp_a1_8 = temp_s0->unk700;
        if (0x80000 & temp_a1_8) {
            glEnable(0xC61, temp_a1_8);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC61, temp_a1_8);
        }
        // Error: negative shift count
        // At instruction: bgez $a2, .L0d963084
        if (M2C_ERROR()) {
            glEnable(0xC62);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC62);
        }
        // Error: negative shift count
        // At instruction: bgez $a3, .L0d963094
        if (M2C_ERROR()) {
            glEnable(0xC63);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xC63);
        }
        // Error: negative shift count
        // At instruction: bgez $a4, .L0d9630a4
        if (M2C_ERROR()) {
            glEnable(0xBA1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xBA1);
        }
        // Error: negative shift count
        // At instruction: bgez $a5, .L0d9630b4
        if (M2C_ERROR()) {
            glEnable(0x8010);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8010);
        }
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9630c4
        if (M2C_ERROR()) {
            glEnable(0x8011);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8011);
        }
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9630d4
        if (M2C_ERROR()) {
            glEnable(0x8012);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8012);
        }
        // Error: negative shift count
        // At instruction: bgez $t0, .L0d9630e4
        if (M2C_ERROR()) {
            glEnable(0x8024);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8024);
        }
        if (0x20000000 & temp_s0->unk700) {
            glEnable(0x802E);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x802E);
        }
        if (temp_s0->unk700 & 0x80000000) {
            glEnable(0x80BC);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x80BC);
        }
        if (temp_s0->unk708 & 1) {
            glEnable(0x4000);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4000);
        }
        temp_t9_4 = temp_s0->unk708 & 2;
        if (temp_t9_4 != 0) {
            glEnable(0x4001);
        } else {
            ((? (*)(?)) temp_t9_4)(0x4001);
        }
        if (temp_s0->unk708 & 4) {
            glEnable(0x4002);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4002);
        }
        if (temp_s0->unk708 & 8) {
            glEnable(0x4003);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4003);
        }
        if (temp_s0->unk708 & 0x10) {
            glEnable(0x4004);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4004);
        }
        if (temp_s0->unk708 & 0x20) {
            glEnable(0x4005);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4005);
        }
        if (temp_s0->unk708 & 0x40) {
            glEnable(0x4006);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4006);
        }
        temp_a1_9 = temp_s0->unk708 & 0x80;
        if (temp_a1_9 != 0) {
            glEnable(0x4007, temp_a1_9);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x4007, temp_a1_9);
        }
        if (temp_s0->unk70C & 1) {
            glEnable(0x3000);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3000);
        }
        if (temp_s0->unk70C & 2) {
            glEnable(0x3001);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3001);
        }
        if (temp_s0->unk70C & 4) {
            glEnable(0x3002);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3002);
        }
        if (temp_s0->unk70C & 8) {
            glEnable(0x3003);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3003);
        }
        if (temp_s0->unk70C & 0x10) {
            glEnable(0x3004);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3004);
        }
        if (temp_s0->unk70C & 0x20) {
            glEnable(0x3005);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x3005);
        }
        if (temp_s0->unk704 & 1) {
            glEnable(0x80D0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x80D0);
        }
        if (temp_s0->unk704 & 2) {
            glEnable(0x80D1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x80D1);
        }
        if (temp_s0->unk704 & 4) {
            glEnable(0x80D2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x80D2);
        }
        if (temp_s0->unk704 & 8) {
            glEnable(0x8148);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8148);
        }
        if (temp_s0->unk704 & 0x10) {
            glEnable(0x8198);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8198);
        }
        temp_t9_5 = temp_s0->unk704 & 0x20;
        if (temp_t9_5 != 0) {
            glEnable(0x8094);
        } else {
            ((? (*)(?)) temp_t9_5)(0x8094);
        }
        if (temp_s0->unk704 & 0x40) {
            glEnable(0x817D);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x817D);
        }
        if (temp_s0->unk704 & 0x80) {
            glEnable(0x8183);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x8183);
        }
        if (temp_s0->unk704 & 0x100) {
            glEnable(0x81C7);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x81C7);
        }
        if (temp_s0->unk710 & 0x80) {
            glEnable(0xD97);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD97);
        }
        if (temp_s0->unk710 & 0x100) {
            glEnable(0xD98);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD98);
        }
        temp_a1_10 = temp_s0->unk710 & 1;
        if (temp_a1_10 != 0) {
            glEnable(0xD90, temp_a1_10);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD90, temp_a1_10);
        }
        if (temp_s0->unk710 & 2) {
            glEnable(0xD91);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD91);
        }
        if (temp_s0->unk710 & 4) {
            glEnable(0xD92);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD92);
        }
        if (temp_s0->unk710 & 8) {
            glEnable(0xD93);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD93);
        }
        if (temp_s0->unk710 & 0x10) {
            glEnable(0xD94);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD94);
        }
        if (temp_s0->unk710 & 0x20) {
            glEnable(0xD95);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD95);
        }
        if (temp_s0->unk710 & 0x40) {
            glEnable(0xD96);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xD96);
        }
        if (temp_s0->unk714 & 0x80) {
            glEnable(0xDB7);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB7);
        }
        if (temp_s0->unk714 & 0x100) {
            glEnable(0xDB8);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB8);
        }
        if (temp_s0->unk714 & 1) {
            glEnable(0xDB0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB0);
        }
        if (temp_s0->unk714 & 2) {
            glEnable(0xDB1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB1);
        }
        if (temp_s0->unk714 & 4) {
            glEnable(0xDB2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB2);
        }
        temp_t9_6 = temp_s0->unk714 & 8;
        if (temp_t9_6 != 0) {
            glEnable(0xDB3);
        } else {
            ((? (*)(?)) temp_t9_6)(0xDB3);
        }
        if (temp_s0->unk714 & 0x10) {
            glEnable(0xDB4);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB4);
        }
        if (temp_s0->unk714 & 0x20) {
            glEnable(0xDB5);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB5);
        }
        if (temp_s0->unk714 & 0x40) {
            glEnable(0xDB6);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xDB6);
        }
    }
    temp_s0->unk7B60 = 0;
}

void setCurrentRaster(void *arg0) {
    *(f32 *)0x4000 = 3.78e-43f;
    *(void *)0x4000 = (f32) arg0->unk90;
    *(void *)0x4000 = (f32) arg0->unk94;
    *(void *)0x4000 = (f32) arg0->unk98;
    *(void *)0x4000 = (f32) arg0->unk9C;
    *(void *)0x4000 = (f32) arg0->unkA0;
    *(void *)0x4000 = (f32) arg0->unk30;
    *(void *)0x4000 = (f32) arg0->unk34;
    *(void *)0x4000 = (f32) arg0->unk38;
    *(void *)0x4000 = (f32) arg0->unk3C;
    *(void *)0x4000 = (f32) arg0->unk80;
    *(void *)0x4000 = (f32) arg0->unk84;
    *(void *)0x4000 = (f32) arg0->unk88;
    *(void *)0x4000 = (f32) arg0->unk8C;
    *(void *)0x4000 = (f32) arg0->unk68;
    *(void *)0x4000 = (f32) ((u64) ((s64) arg0->unk4 << 0x20) >> 0x20);
}

void ResolvePixelContext(void *arg0) {
    s64 temp_a1;

    // Error: negative shift count
    // At instruction: bgez $a1, .L0d963c78
    if (M2C_ERROR()) {
        glEnable(0x8010, (s32) temp_a1);
    } else {
        glDisable(0x8010, (s32) temp_a1);
    }
    // Error: negative shift count
    // At instruction: bgez $a2, .L0d963c8c
    if (M2C_ERROR()) {
        glEnable(0x8011);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x8011);
    }
    // Error: negative shift count
    // At instruction: bgez $a3, .L0d963c9c
    if (M2C_ERROR()) {
        glEnable(0x8012);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x8012);
    }
    // Error: negative shift count
    // At instruction: bgez $a4, .L0d963cac
    if (M2C_ERROR()) {
        glEnable(0x8024);
    } else {
        glDisable(0x8024);
    }
    // Error: negative shift count
    // At instruction: bgez $a5, .L0d963cc0
    if (M2C_ERROR()) {
        glEnable(0x802E);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x802E);
    }
    if (arg0->unk654 & 1) {
        glEnable(0x80D0);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x80D0);
    }
    if (arg0->unk654 & 2) {
        glEnable(0x80D1);
    } else {
        glDisable(0x80D1);
    }
    if (arg0->unk654 & 4) {
        glEnable(0x80D2);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x80D2);
    }
    if (arg0->unk654 & 0x20) {
        glEnable(0x8094);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x8094);
    }
    if (arg0->unk654 & 0x100) {
        glEnable(0x81C7);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0x81C7);
    }
}
