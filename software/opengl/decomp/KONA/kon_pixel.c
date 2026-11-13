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
Error occurred while processing instruction: bgez $a7, .L0d94fe98

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
Error occurred while processing instruction: bgez $a2, .L0d94feec

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
Error occurred while processing instruction: bgez $a4, .L0d951524

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
Error occurred while processing instruction: bltz $t3, .L0d951d08

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
Error occurred while processing instruction: bgez $v0, .L0d951e80

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
Error occurred while processing instruction: bgez $v1, .L0d951e98

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
Error occurred while processing instruction: bgez $a0, .L0d951eac

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
Error occurred while processing instruction: bltz $a7, .L0d952d9c

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
Error occurred while processing instruction: bgez $t2, .L0d952da0

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
Error occurred while processing instruction: bgez $a3, .L0d9546ac

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
Error occurred while processing instruction: bgez $a4, .L0d9553c8

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
Error occurred while processing instruction: bgez $a7, .L0d94fe98

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
Error occurred while processing instruction: bgez $a2, .L0d94feec

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
Error occurred while processing instruction: bgez $a4, .L0d951524

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
Error occurred while processing instruction: bltz $t3, .L0d951d08

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
Error occurred while processing instruction: bgez $v0, .L0d951e80

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
Error occurred while processing instruction: bgez $v1, .L0d951e98

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
Error occurred while processing instruction: bgez $a0, .L0d951eac

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
Error occurred while processing instruction: bltz $a7, .L0d952d9c

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
Error occurred while processing instruction: bgez $t2, .L0d952da0

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
Error occurred while processing instruction: bgez $a3, .L0d9546ac

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
Error occurred while processing instruction: bgez $a4, .L0d9553c8

? __glFillImage(s32, s32, s32, ?, ?, s64, s64, ?);  /* extern */
? __glInitImagePack(void *, void *, ?, ?, ?, ?, s64, s32, s32, s32, s32, s32); /* extern */
? __glInitPacker(void *, void *);                   /* extern */
? __glInitUnpacker(void *, void *);                 /* extern */
? __glKonInitColortableState(void *, ?, void *, void *, void *, s32, s32); /* extern */
? __glKonInitConvolutionState(void *);              /* extern */
s32 __glKon_ioctl(s32, ?, void *);                  /* extern */
s32 __glSPDlistSpace(?, s64, s32, s64, s64);        /* extern */
f32 __glSetError(?, s32 *, s32, s32, u8, u8, u32, u32); /* extern */
? __glkon_ResumeSelectfeed();                       /* extern */
? __glkon_SuspendSelectfeed(s32, u32, s32, s32, s32, u8, u32, u32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glkon_datavn(s64, u32, s64, s32, s64, ?);       /* extern */
void *__glkon_get_special(?, ?);                    /* extern */
? __glkona_wait_rdata(s64, s32, s32, s32, s32, s32, s32, s32); /* extern */
? __glkonim_Enable(?, s32, ?, ?);                   /* extern */
? __glkonlc_PointSize(void *, void *);              /* extern */
? __glsplc_Bitmap(s32, s32, s32, s64, s64, s64, f64, f64, f64, f64); /* extern */
? __glsplc_InvalidValue(s32, s64);                  /* extern */
s32 atoi(s32);                                      /* extern */
? bcopy(u8 *, u8 *, s32, u8, s32, s32);             /* extern */
? bzero(s64, s32);                                  /* extern */
? exit(?);                                          /* extern */
? fprintf(void *, void *, s32, s32, s32, s32 *);    /* extern */
s32 getenv(? *);                                    /* extern */
? perror(void *);                                   /* extern */
s32 __glKonParseErrorDraw(s32 *, s32 *, s32 *);     /* static */
s64 __glkonim_CopyPixels(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ?); /* static */
void __glkonim_PixelStorei(s32 arg0, u8 arg1, s32 arg2, void *arg6, s64 arg7, u32, s32, ?); /* static */
void __glkonim_ReadPixels(s64 arg0, s32 *arg1, s64 arg2, s32 *arg3, s32 *arg4, s32 arg5, s32 arg6, s32); /* static */
void __glkonle_DrawPixels(s32 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, u32, u32, s32); /* static */
extern ? __iob;
extern ? __rodata0;
extern ? sub_0d950000;

void GetLineModeDist(s32 *arg0, s64 arg1) {
    s64 sp10;
    s32 *var_a4;
    s32 temp_a6;
    s64 var_a2;
    void *var_a3;

    sp10 = arg1;
    var_a3 = __glkon_get_special(0xEE, 0);
    var_a4 = arg0;
    var_a2 = sp10;
    do {
        var_a2->unk0 = (s32) var_a3->unk0;
        var_a2->unk4 = (s32) var_a3->unk4;
        var_a2 += 8;
        *var_a4 = var_a3->unk8;
        var_a4 += 8;
        temp_a6 = var_a3->unkC;
        var_a3 += 0x10;
        var_a4->unk-4 = temp_a6;
    } while (var_a2 != (sp10 + 0x40));
}

void __glKonInitPixelState(void *arg0) {
    s32 temp_a7;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1413E8;
    temp_a3 = &__rodata0 + 0x28B0;
    arg0->unk8C40 = (s32) temp_a3->unk1B8;
    arg0->unk8C44 = (s32) temp_a3->unk1BC;
    arg0->unk8C48 = (s32) temp_a3->unk1C0;
    arg0->unk8C4C = (s32) temp_a3->unk1C4;
    arg0->unk8C50 = (s32) temp_a3->unk1C8;
    arg0->unk8C54 = (s32) temp_a3->unk1CC;
    arg0->unk8C58 = (s32) temp_a3->unk1D0;
    arg0->unk8C5C = (s32) temp_a3->unk1D4;
    arg0->unk8C60 = (s32) temp_a3->unk1D8;
    arg0->unk8C64 = (s32) temp_a3->unk1DC;
    arg0->unk8C68 = (s32) temp_a3->unk1E0;
    arg0->unk8C14 = (s32) temp_a3->unk188;
    arg0->unk8C18 = (s32) temp_a3->unk18C;
    arg0->unk8C1C = (s32) temp_a3->unk190;
    arg0->unk8C20 = (s32) temp_a3->unk194;
    arg0->unk8C24 = (s32) temp_a3->unk198;
    arg0->unk8C28 = (s32) temp_a3->unk19C;
    arg0->unk8C2C = (s32) temp_a3->unk1A0;
    arg0->unk8C30 = (s32) temp_a3->unk1A4;
    temp_a7 = temp_a3->unk1A8;
    arg0->unk8C34 = temp_a7;
    arg0->unk8C38 = (s32) temp_a3->unk1AC;
    arg0->unk8C3C = (s32) temp_a3->unk1B0;
    temp_a3_2 = arg0 + 0x478;
    arg0->unk8C6C = temp_a3_2;
    temp_a2 = arg0 + 0x4A4;
    arg0->unk8C70 = temp_a2;
    arg0->unk8C50 = 1;
    arg0->unk8C24 = 1;
    __glKonInitColortableState(arg0, 1, temp_a2, temp_a3_2, temp_a3 + 0x188, arg0 + 0x8C40, temp_a7);
    __glKonInitConvolutionState(arg0);
    __glkonlc_PointSize(arg0 + 0x8B90, arg0 + 0x8BD0);
    temp_v0 = getenv(&__rodata0);
    if (temp_v0 != 0) {
        temp_gp->unk-4084 = atoi(temp_v0);
    }
    temp_v0_2 = getenv(&__rodata0 + 0x20);
    if (temp_v0_2 != 0) {
        temp_gp->unk-4080 = atoi(temp_v0_2);
    }
    if (getenv(&__rodata0 + 0x40) != 0) {
        *(s32 *)0x4000 = 0x1CE;
        *(void *)0x4000 = 0;
        arg0->unk564 = 0x81C5;
        arg0->unk704 = (s32) (arg0->unk704 | 0x100);
        return;
    }
    arg0->unk564 = 0x81C5;
    arg0->unk704 = (s32) (arg0->unk704 | 0x100);
}

void __glKonSetNoModeState(s32 arg0, s64 arg1, s64 arg7) {
    s32 temp_a6;
    s64 var_a7;
    void *temp_a4;
    void *temp_a5;
    void *temp_t1;
    void *temp_t3;
    void *temp_t8;

    var_a7 = arg7;
    temp_a5 = *(void **)0x1010;
    temp_a6 = temp_a5 + 0x280;
    temp_a4 = temp_a5 + 0x8AD0;
    if (arg1 != 0) {
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d94fe98
        if (M2C_ERROR()) {
            temp_a4->unk1A4 = (s32) temp_a5->unk700;
            temp_a4->unk1A8 = (s32) (*(void *)0x1010)->unk704;
            temp_t8 = *(void *)0x1010;
            temp_t8->unk700 = (s32) (temp_t8->unk700 & 0x01FC0000);
            temp_t1 = *(void *)0x1010;
            temp_t1->unk704 = (s32) (temp_t1->unk704 & ~0x107);
        } else {
            temp_a5->unk700 = (s32) temp_a4->unk1A4;
            (*(void *)0x1010)->unk704 = (s32) temp_a4->unk1A8;
        }
    } else {
        temp_a5->unk700 = (s32) temp_a4->unk1A4;
        (*(void *)0x1010)->unk704 = (s32) temp_a4->unk1A8;
    }
    // Error: negative shift count
    // At instruction: bgez $a2, .L0d94feec
    if (M2C_ERROR()) {
        if (arg0 != 2) {
            if (arg0 != 4) {
                if (arg0 != var_a7) {
                    /* Duplicate return node #7. Try simplifying control flow for better match */
                    *(void *)0x4000 = 0x111;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (s32) arg1;
                    return;
                }
                *(s32 *)0x4000 = 0x111;
                *(void *)0x4000 = arg0;
                *(void *)0x4000 = (s32) arg1;
                temp_a4->unk19C = (void *) (temp_a6 + 0x1F8);
                temp_a4->unk1A0 = (void *) (&__rodata0 + 0x2A98);
                return;
            }
            temp_t3 = &__rodata0 + 0x28B0;
            temp_a4->unk19C = (void *) (temp_t3 + 0x188);
            temp_a4->unk1A0 = (void *) (temp_t3 + 0x1B8);
            *(void *)0x4000 = 0x111;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (s32) arg1;
            return;
        }
        *(void *)0x4000 = 0x111;
        *(void *)0x4000 = arg0;
        *(void *)0x4000 = (s32) arg1;
        temp_a4->unk19C = (void *) (temp_a4 + 0x144);
        temp_a4->unk1A0 = (void *) (temp_a4 + 0x170);
        return;
    }
    *(void *)0x4000 = 0x111;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = (s32) arg1;
    temp_a4->unk19C = (void *) (temp_a6 + 0x1F8);
    temp_a4->unk1A0 = (void *) (temp_a6 + 0x224);
}

/*
Decompilation failure in function __glKonParseErrorDraw:

Unable to determine jump table for jr instruction at kon_pixel.s line 420.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 ParseErrorCopy(s32 arg0, s32 arg1, s32 arg2, s32 *arg3, u8 arg7) {
    s32 *var_a3;
    s32 var_v0;
    u8 temp_a6;
    u8 var_a7;
    void *temp_v0;

    var_a3 = arg3;
    var_a7 = arg7;
    temp_v0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 >= 0) && (var_a3 = (s32 *)0x1800, (arg1 >= 0))) {
            switch (arg2) {                         /* irregular */
            default:
                __glSetError(0x500, (s32 *)0x1800, 0x1801, 0x1802);
                return 1;
            case 0x1802:
                temp_a6 = temp_v0->unkC9A;
                if (temp_a6 != 0) {
                    var_a7 = temp_v0->unkD3A;
                    if (var_a7 != 0) {
                    case 0x1800:
block_9:
                        if ((arg0 != 0) && (arg1 != 0)) {
                            var_v0 = 0;
                            return var_v0;
                        }
                        return 1;
                    }
                }
                __glSetError(0x502, (s32 *)0x1800, 0x1801, 0x1802, temp_a6, var_a7);
                return 1;
            case 0x1801:
                if ((temp_v0->unkC99 == 0) || (temp_v0->unkD39 == 0)) {
                    __glSetError(0x502, (s32 *)0x1800, 0x1801, 0x1802);
                    var_v0 = 1;
                    /* Duplicate return node #12. Try simplifying control flow for better match */
                    return var_v0;
                }
                goto block_9;
            }
        } else {
            __glSetError(0x501, var_a3, 0x1801, 0x1802);
            return 1;
        }
    } else {
        __glSetError(0x502, (s32 *)0x1801, 0x1802);
        return 1;
    }
}

s32 __glKonParseErrorRead(s32 *arg0, s32 *arg1, s32 arg4, u32 arg6) {
    s32 *temp_a1;
    s32 *var_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a4;
    u32 temp_a7;
    u32 var_a6;
    void *temp_a5;

    var_a1 = arg1;
    var_a4 = arg4;
    var_a6 = arg6;
    temp_a3 = arg0->unk0;
    temp_a5 = *(void **)0x1010;
    if (temp_a3 >= 0) {
        var_a4 = arg0->unk4;
        var_a1 = &__rodata0 + 0x28B0;
        if (var_a4 >= 0) {
            if (!(arg0->unk9C & 0x1F00) || (temp_a2 = arg0->unk94 * 4, temp_a1 = (var_a1 + temp_a2)->unkC8, ((var_a1 + (arg0->unk90 * 4))->unk30 == temp_a1))) {
                temp_v0 = arg0->unk98;
                if (temp_v0 != 0x800) {
                    goto block_5;
                }
                if (temp_a5->unkC94 != 0) {
                    goto block_15;
                }
block_5:
                var_a6 = 0x1000;
                if (temp_v0 != 0x2000) {
                    goto block_6;
                }
                var_a6 = 0x1000;
                if (temp_a5->unkC99 == 0) {
                    goto block_15;
                }
block_6:
                if (temp_v0 != 0x1000) {
                    goto block_7;
                }
                if (temp_a5->unkC9A == 0) {
block_15:
                    __glSetError(0x502, (s32 *)0x800, 0x2000, temp_a3, (u8) var_a4, (u8) temp_a5, var_a6);
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    return 1;
                }
block_7:
                temp_a7 = *(u32 *)0x1018;
                if (temp_a7 != 1) {
                    if (temp_a3 != 0) {
                        if (var_a4 != 0) {
                            return 0;
                        }
                        /* Duplicate return node #13. Try simplifying control flow for better match */
                        return 1;
                    }
                    return 1;
                }
                __glSetError(0x502, (s32 *)0x800, 0x2000, temp_a3, (u8) var_a4, (u8) temp_a5, 0x1000U, temp_a7);
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return 1;
            }
            __glSetError(0x502, temp_a1, temp_a2, temp_a3, (u8) var_a4, (u8) temp_a5);
            return 1;
        }
    }
    __glSetError(0x501, var_a1, temp_a3, var_a4, (u8) temp_a5);
    return 1;
}

s32 __glKonGetFormatIndex(u32 arg0) {
    s32 var_a3;

    if (arg0 >= 0x1900U) {
        var_a3 = arg0 - 0x1900;
        if (arg0 < 0x190BU) {
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return *(&__rodata0 + 0x29F8 + (var_a3 * 4));
        }
        goto block_4;
    }
block_4:
    var_a3 = 0xC;
    if (arg0 != 0x8000) {
        if (arg0 != 0x800C) {
            var_a3 = 0xD;
            if (arg0 == 0x800D) {
                /* Duplicate return node #7. Try simplifying control flow for better match */
                return *(&__rodata0 + 0x29F8 + (var_a3 * 4));
            }
            __glSetError(0x500, (s32 *)0x800C, 0x800D, 0xD);
            return -1;
        }
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return *(&__rodata0 + 0x29F8 + (var_a3 * 4));
    }
    var_a3 = 0xB;
    return *(&__rodata0 + 0x29F8 + (var_a3 * 4));
}

s32 __glKonGetTypeIndex(u32 arg0, s32 arg2) {
    s32 temp_a1;
    s32 temp_a3;
    s32 var_a2;
    s32 var_v0;
    u8 var_a4;

    var_a2 = arg2;
    if ((arg0 < 0x1400U) || (arg0 >= 0x1407U)) {
        var_v0 = 7;
        if (arg0 != 0x1A00) {
            temp_a1 = arg0 < 0x8032U;
            if ((temp_a1 != 0) || (var_a2 = arg0 > 0x8036U, (var_a2 != 0))) {
                temp_a3 = arg0 < 0x81BDU;
                var_a4 = 0x81C3;
                if (temp_a3 == 0) {
                    var_a4 = arg0 > 0x81C3U;
                    if (var_a4 == 0) {
                        return arg0 + 0xFFFF7E51;
                    }
                }
                __glSetError(0x500, (s32 *) temp_a1, var_a2, temp_a3, var_a4);
                return -1;
            }
            var_v0 = arg0 + 0xFFFF7FD6;
            /* Duplicate return node #8. Try simplifying control flow for better match */
            return var_v0;
        }
        return var_v0;
    }
    return arg0 - 0x1400;
}

s32 __glKonParseInput(s32 *arg0, s32 *arg1) {
    s32 *var_a1;
    s32 temp_a5;
    s32 var_a3;
    s32 var_a3_2;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 var_a6;
    u8 temp_a5_2;

    var_a1 = arg1;
    temp_a2 = arg0->unkC;
    var_a3 = temp_a2 - 0x1900;
    if (temp_a2 >= 0x1900U) {
        if (temp_a2 < 0x190BU) {
            arg0->unk90 = var_a3;
            goto block_8;
        }
        goto block_4;
    }
block_4:
    if (temp_a2 != 0x8000) {
        var_a1 = (s32 *)0x800C;
        if (temp_a2 != 0x800C) {
            if (temp_a2 == 0x800D) {
                arg0->unk90 = 0xD;
                var_a3 = 0xD;
                goto block_8;
            }
            __glSetError(0x500, (s32 *)0x800C, (s32) temp_a2, 0x800D, 0xDU, 0xCU, 0x1A00U);
            return 1;
        }
        arg0->unk90 = 0xC;
        var_a3 = 0xC;
        goto block_8;
    }
    arg0->unk90 = 0xB;
    var_a3 = 0xB;
block_8:
    temp_a2_2 = arg0->unk10;
    temp_a5 = *(&__rodata0 + 0x29F8 + (var_a3 * 4));
    var_a6 = temp_a2_2 < 0x1400U;
    arg0->unk90 = temp_a5;
    arg0->unk98 = (s32) (1 << temp_a5);
    if (var_a6 == 0) {
        var_a6 = temp_a2_2 < 0x1407U;
        var_a3_2 = temp_a2_2 - 0x1400;
        if (var_a6 != 0) {
            goto block_18;
        }
    }
    if (temp_a2_2 != 0x1A00) {
        var_a3_2 = temp_a2_2 + 0xFFFF7FD6;
        if (temp_a2_2 >= 0x8032U) {
            if (temp_a2_2 <= 0x8036U) {
                goto block_18;
            }
            goto block_16;
        }
block_16:
        temp_a5_2 = temp_a2_2 < 0x81BDU;
        var_a3_2 = temp_a2_2 + 0xFFFF7E51;
        if (temp_a5_2 == 0) {
            var_a6 = temp_a2_2 > 0x81C3U;
            if (var_a6 == 0) {
block_18:
                arg0->unk94 = var_a3_2;
                /* Duplicate return node #19. Try simplifying control flow for better match */
                arg0->unk9C = (s32) (1 << var_a3_2);
                return 0;
            }
        }
        __glSetError(0x500, var_a1, (s32) temp_a2_2, var_a3_2, 1U, temp_a5_2, var_a6, 0x1A00U);
        return 1;
    }
    arg0->unk94 = 7;
    var_a3_2 = 7;
    arg0->unk9C = (s32) (1 << var_a3_2);
    return 0;
}

void __glKonParseHostImage(s32 *arg0) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_v0;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_t1_2;
    s32 var_t8;
    s32 var_t9;
    void *temp_a6;
    void *temp_at;
    void *var_a3;
    void *var_t1;

    temp_a3 = arg0->unk18;
    temp_a7 = temp_a3 & 1;
    temp_a6 = *(s32 *)0x1010 + 0x8AD0;
    var_a3 = sp0;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0x1408D8;
    if (temp_a7 != 0) {
        var_a3 = temp_a6->unk1A0;
    } else if (temp_a3 & 0x20) {
        var_a3 = temp_a6->unk19C;
    }
    temp_a4 = arg0->unk9C;
    if (temp_a4 & 0x80) {
        arg0->unkAC = 0;
        temp_a4_2 = var_a3->unk4;
        var_t9 = 0;
        var_a5 = temp_a4_2;
        if (temp_a4_2 == 0) {
            var_a5 = arg0->unk0;
        }
        temp_t3 = var_a5 + 7;
        var_t8 = var_a5;
        var_t1 = &__rodata0 + 0x28B0;
        var_a4 = (s32) ((temp_t3 >= 0) ? temp_t3 : (var_a5 + 0xE)) >> 3;
    } else {
        var_t1 = &__rodata0 + 0x28B0;
        temp_a5 = (var_t1 + (arg0->unk94 * 4))->unk70;
        if (temp_a4 & 0x1F00) {
            var_t9 = temp_a5;
            arg0->unkAC = temp_a5;
        } else {
            var_t9 = (var_t1 + (arg0->unk90 * 4))->unk30 * temp_a5;
            arg0->unkAC = var_t9;
        }
        temp_a4_3 = var_a3->unk4;
        var_a5_2 = temp_a4_3;
        if (temp_a4_3 == 0) {
            var_a5_2 = arg0->unk0;
        }
        var_t8 = var_a5_2;
        var_a4 = var_t9 * var_a5_2;
    }
    arg0->unkA4 = var_a4;
    temp_t2 = var_a3->unk10;
    temp_t0 = (var_t1 + (temp_t2 * 4))->unk120 & var_a4;
    temp_a5_2 = arg0->unk4;
    if (temp_t0 != 0) {
        temp_t3_2 = temp_t2 - temp_t0;
        temp_v0 = var_a4 + temp_t3_2;
        arg0->unkB0 = temp_t3_2;
        arg0->unkA8 = temp_v0;
        var_t1_2 = (temp_v0 * temp_a5_2) - temp_t3_2;
        arg0->unkA0 = var_t1_2;
        if (temp_a7 != 0) {
            if (temp_t3_2 < 4) {
                goto block_8;
            }
            goto block_10;
            goto block_11;
        }
        goto block_17;
    }
    arg0->unkA8 = var_a4;
    arg0->unkB0 = 0;
    var_t1_2 = temp_a5_2 * var_a4;
    arg0->unkA0 = var_t1_2;
    if (temp_a7 == 0) {
block_17:
        if (((u32) (temp_a5_2 * var_a4) < 0x3FF1U) || (temp_a6->unk140 != 0)) {
            arg0->unk60 = 1;
            return;
        }
        arg0->unk60 = 0;
        return;
    }
block_8:
    if ((arg0->unk0 != var_t8) || (var_a3_2 = 0, (var_a3->unkC != 0))) {
block_10:
        var_a3_2 = 1;
        arg0->unkB8 = 1;
    } else {
        arg0->unkB8 = 0;
    }
block_11:
    if ((temp_at->unk-4084 >= var_t1_2) || ((var_a3_2 == 1) && (temp_at->unk-4080 >= (arg0->unk0 * var_t9)))) {
        arg0->unkB4 = 0;
        return;
    }
    arg0->unkB4 = 1;
}

void *GetConvolutionFilter(s32 arg0) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if ((arg0 != 0) && (arg0 != 0xDE1)) {
        return ((arg0 ^ 0xDE0) == 0) ? (temp_a3 + 0x300) : (temp_a3 + 0x354);
    }
    return !(temp_a3->unk700 & 0x04000000) ? (temp_a3 + 0x3A8) : (temp_a3 + 0x354);
}

void __glKonSendData(s32 *arg0, s32 arg2, void *arg3) {
    s32 sp9C;
    u32 sp98;
    u32 sp94;
    s32 sp90;
    s32 sp88;
    s32 spC;
    s32 sp8;
    s32 *var_a2_2;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 temp_ra;
    s32 temp_t8;
    s32 var_a0;
    s32 var_s2;
    s64 temp_a2_3;
    s64 temp_a2_4;
    u32 temp_a0_2;
    u32 temp_a3_2;
    u32 temp_lo;
    u32 temp_t3;
    u32 var_a2;
    u32 var_a2_3;
    u32 var_s4;
    void *temp_a2_2;
    void *temp_a3_3;
    void *temp_t0;
    void *var_a1;
    void *var_s0;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    temp_t0 = *(s32 *)0x1010 + 0x8AD0;
    var_s0 = arg3;
    if (!(arg0->unk9C & 0x80)) {
        goto block_26;
    }
    var_a2 = (u32) temp_t0->unk1A0->unkC >> 3;
block_2:
    temp_a2 = M2C_ERROR(/* Read from unset register $a6 */) + var_a2;
    temp_a3 = arg0->unkB4;
    if (temp_a3 == 0) {
        goto block_21;
    }
    temp_a4 = arg0->unk9C & 0x80;
    temp_a0 = arg0->unkB8;
    if (temp_a4 == 0) {
        goto block_27;
    }
    if (temp_a0 == 0) {
        goto block_16;
    }
    if (temp_a0 != 1) {
        goto block_8;
    }
    temp_a0_2 = (u32) (M2C_ERROR(/* Read from unset register $a1 */) + (temp_t0->unk1A0->unkC & 7) + 7) >> 3;
    sp90 = temp_a2;
    sp98 = temp_a0_2;
    sp94 = arg2 * temp_a0_2;
    temp_a6 = arg0->unkA8;
    temp_a0_3 = temp_a6 - temp_a0_2;
    if ((temp_a6 + temp_a0_3) < 0) {
        goto block_41;
    }
    sp9C = temp_a0_3;
    goto block_9;
block_8:
    fprintf(&__iob + 0x20, &__rodata0 + 0x90, temp_a2, temp_a3, temp_a4, &sp90);
block_9:
    if (var_s0 == NULL) {
        goto block_17;
    }
block_10:
    sp8 = var_s0->unk0;
    spC = var_s0->unk4;
    var_a0 = 2;
    if (var_s0->unk4 < 1) {
        goto block_15;
    }
    var_a2_2 = &sp8;
    var_a1 = var_s0 + 8;
loop_12:
    var_a2_2->unk8 = (s32) var_a1->unk0;
    temp_a0_4 = var_a0 + 1;
    if (temp_a0_4 >= (var_s0->unk4 + 2)) {
        goto block_15;
    }
    var_a2_2->unkC = (s32) var_a1->unk4;
    temp_a0_5 = temp_a0_4 + 1;
    if (temp_a0_5 >= (var_s0->unk4 + 2)) {
        goto block_15;
    }
    var_a2_2->unk10 = (s32) var_a1->unk8;
    var_a0 = temp_a0_5 + 1;
    var_a1 += 0xC;
    var_a2_2 += 0xC;
    if (var_a0 < (var_s0->unk4 + 2)) {
        goto loop_12;
    }
block_15:
    sp88 = 1;
    goto block_18;
block_16:
    temp_ra = arg0->unkA0 + temp_a2;
    sp9C = 0;
    temp_t8 = -4 & temp_a2;
    sp90 = temp_t8;
    temp_t3 = (!(temp_ra & 3) ? temp_ra : ((-4 & temp_ra) + 4)) - temp_t8;
    sp98 = temp_t3;
    sp94 = temp_t3;
    if (var_s0 != NULL) {
        goto block_10;
    }
block_17:
    sp88 = 0;
block_18:
    if (__glKon_ioctl(*(void *)0x1010, 0x2711, sp) < 0) {
        goto block_32;
    }
block_19:
block_20:
    return;
block_21:
    var_a2_3 = (u32) M2C_ERROR(/* Read from unset register $a5 */) >> 3;
    if (M2C_ERROR(/* Read from unset register $a7 */) == 0) {
        goto block_33;
    }
block_22:
    temp_a2_2 = M2C_ERROR(/* Read from unset register $a6 */) + var_a2_3;
    temp_a0_6 = arg0->unkB8;
    if (temp_a0_6 == 0) {
        goto block_43;
    }
    var_s0 = temp_a2_2;
    if (temp_a0_6 == 1) {
        goto block_34;
    }
    if (temp_a0_6 != 2) {
        goto block_20;
    }
    fprintf(&__iob + 0x20, &__rodata0 + 0xC0, (s32) temp_a2_2, 1, 2);
    exit(1);
block_26:
    var_a2 = M2C_ERROR(/* Read from unset register $a0 */)->unkAC * M2C_ERROR(/* Read from unset register $a5 */);
    goto block_2;
block_27:
    if (temp_a0 == 0) {
        goto block_40;
    }
    if (temp_a0 != 1) {
        goto block_31;
    }
    sp90 = temp_a2;
    temp_lo = arg0->unkAC * M2C_ERROR(/* Read from unset register $a1 */);
    sp98 = temp_lo;
    sp94 = arg2 * temp_lo;
    temp_a4_2 = arg0->unkA8;
    temp_a0_7 = temp_a4_2 - temp_lo;
    if ((temp_a4_2 + temp_a0_7) < 0) {
        goto block_44;
    }
    sp9C = temp_a0_7;
    goto block_9;
block_31:
    fprintf(&__iob + 0x20, &__rodata0 + 0x90, temp_a2, temp_a3, temp_a4, &sp90);
    goto block_9;
block_32:
    perror(&__rodata0 + 0xB0);
    goto block_19;
block_33:
    var_a2_3 = arg0->unkAC * M2C_ERROR(/* Read from unset register $a5 */);
    goto block_22;
block_34:
    if (M2C_ERROR(/* Read from unset register $a7 */) == 0) {
        goto block_42;
    }
    var_s4 = (u32) (M2C_ERROR(/* Read from unset register $a1 */) + (M2C_ERROR(/* Read from unset register $a5 */) & 7) + 7) >> 3;
block_36:
    if (arg2 <= 0) {
        goto block_19;
    }
    var_s2 = 0;
loop_38:
    temp_a2_3 = -4 & (s32) var_s0;
    __glkon_datavn(temp_a2_3, (u32) ((-4 & (s32) (var_s4 + var_s0 + 3)) - temp_a2_3) >> 2, temp_a2_3);
    var_s2 += 1;
    var_s0 += arg0->unkA8;
    if (arg2 != var_s2) {
        goto loop_38;
    }
    goto block_19;
block_40:
    sp90 = temp_a2;
    temp_a3_2 = arg0->unkA0;
    sp9C = 0;
    sp98 = temp_a3_2;
    sp94 = temp_a3_2;
    goto block_9;
block_41:
    M2C_ERROR(/* Read from unset register $t9 */)(0x502);
    goto block_19;
block_42:
    var_s4 = arg0->unkAC * M2C_ERROR(/* Read from unset register $a1 */);
    goto block_36;
block_43:
    temp_a3_3 = arg0->unkA0 + temp_a2_2 + 3;
    temp_a2_4 = -4 & (s32) temp_a2_2;
    __glkon_datavn(temp_a2_4, (u32) ((-4 & (s32) temp_a3_3) - temp_a2_4) >> 2, temp_a2_4, (s32) temp_a3_3);
    goto block_19;
block_44:
    M2C_ERROR(/* Read from unset register $t9 */)(0x502);
    goto block_19;
}

void __glKonPushState(s32 arg0, ? *arg1) {
    void *temp_a3;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    temp_a3 = temp_a4 + 0x280;
    if (arg0 & 1) {
        arg1->unk0 = (u8) temp_a4->unk478;
        arg1->unk1 = (u8) temp_a4->unk479;
        arg1->unk10 = (s32) temp_a4->unk488;
    }
    if (arg0 & 4) {
        arg1->unk2C = (u8) temp_a3->unk224;
        arg1->unk2D = (u8) temp_a3->unk225;
        arg1->unk3C = (s32) temp_a3->unk234;
    }
    if (arg0 & 2) {
        arg1->unk4 = (s32) temp_a3->unk1FC;
        arg1->unk8 = (s32) temp_a3->unk200;
        arg1->unkC = (s32) temp_a3->unk204;
        arg1->unk14 = (s32) temp_a3->unk20C;
        arg1->unk18 = (s32) temp_a3->unk210;
        arg1->unk1C = (s32) temp_a3->unk214;
        arg1->unk20 = (s32) temp_a3->unk218;
    }
    if (arg0 & 8) {
        arg1->unk30 = (s32) temp_a3->unk228;
        arg1->unk34 = (s32) temp_a3->unk22C;
        arg1->unk38 = (s32) temp_a3->unk230;
        arg1->unk40 = (s32) temp_a3->unk238;
        arg1->unk44 = (s32) temp_a3->unk23C;
        arg1->unk48 = (s32) temp_a3->unk240;
        arg1->unk58 = arg0;
        arg1->unk4C = (s32) temp_a3->unk244;
        return;
    }
    arg1->unk58 = arg0;
}

void __glKonDefaultState(s32 arg0) {
    s32 var_a0;
    s32 var_a1;

    if (arg0 & 1) {
        __glkonim_PixelStorei(0xD00, 0U);
        __glkonim_PixelStorei(0xD01, 0U);
        __glkonim_PixelStorei(0xD05, 4U);
    }
    var_a0 = arg0 & 2;
    if (arg0 & 4) {
        __glkonim_PixelStorei(0xCF0, 0U);
        __glkonim_PixelStorei(0xCF1, 0U);
        __glkonim_PixelStorei(0xCF5, 4U);
        var_a0 = arg0 & 2;
    }
    var_a1 = arg0 & 8;
    if (var_a0 != 0) {
        __glkonim_PixelStorei(0xD02, 0U);
        __glkonim_PixelStorei(0xD04, 0U);
        __glkonim_PixelStorei(0xD03, 0U);
        __glkonim_PixelStorei(0x806B, 0U);
        __glkonim_PixelStorei(0x806C, 0U);
        __glkonim_PixelStorei(0x8130, 0U);
        __glkonim_PixelStorei(0x8131, 0U);
        var_a1 = arg0 & 8;
    }
    if (var_a1 != 0) {
        __glkonim_PixelStorei(0xCF2, 0U);
        __glkonim_PixelStorei(0xCF4, 0U);
        __glkonim_PixelStorei(0xCF3, 0U);
        __glkonim_PixelStorei(0x806D, 0U);
        __glkonim_PixelStorei(0x806E, 0U);
        __glkonim_PixelStorei(0x8132, 0U);
        __glkonim_PixelStorei(0x8133, 0U);
    }
}

void __glKonPopState(? *arg0) {
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;

    var_a2 = arg0->unk58;
    if (var_a2 & 1) {
        __glkonim_PixelStorei(0xD00, arg0->unk0, var_a2);
        __glkonim_PixelStorei(0xD01, arg0->unk1);
        __glkonim_PixelStorei(0xD05, (u8) arg0->unk10);
        var_a2 = arg0->unk58;
    }
    var_a0 = var_a2 & 2;
    if (var_a2 & 4) {
        __glkonim_PixelStorei(0xCF0, arg0->unk2C, var_a2);
        __glkonim_PixelStorei(0xCF1, arg0->unk2D);
        __glkonim_PixelStorei(0xCF5, (u8) arg0->unk3C);
        var_a2 = arg0->unk58;
        var_a0 = var_a2 & 2;
    }
    var_a1 = var_a2 & 8;
    if (var_a0 != 0) {
        __glkonim_PixelStorei(0xD02, (u8) arg0->unk4, var_a2);
        __glkonim_PixelStorei(0xD03, (u8) arg0->unk8);
        __glkonim_PixelStorei(0xD04, (u8) arg0->unkC);
        __glkonim_PixelStorei(0x806B, (u8) arg0->unk14);
        __glkonim_PixelStorei(0x806C, (u8) arg0->unk18);
        __glkonim_PixelStorei(0x8130, (u8) arg0->unk1C);
        __glkonim_PixelStorei(0x8131, (u8) arg0->unk20);
        var_a2 = arg0->unk58;
        var_a1 = var_a2 & 8;
    }
    if (var_a1 != 0) {
        __glkonim_PixelStorei(0xCF2, (u8) arg0->unk30, var_a2);
        __glkonim_PixelStorei(0xCF3, (u8) arg0->unk34);
        __glkonim_PixelStorei(0xCF4, (u8) arg0->unk38);
        __glkonim_PixelStorei(0x806D, (u8) arg0->unk40);
        __glkonim_PixelStorei(0x806E, (u8) arg0->unk44);
        __glkonim_PixelStorei(0x8132, (u8) arg0->unk48);
        __glkonim_PixelStorei(0x8133, (u8) arg0->unk4C);
    }
}

void __glKonSetPixelLEModes(? *arg0) {
    __glKonPushState(0xC, arg0);
    __glKonDefaultState(0xC);
    __glkonim_PixelStorei(0xCF5, 1U);
}

void __glKonUnsetLEModes(void) {
    __glKonPopState();
}

void SetSubrectState(s32 arg0, s32 arg1, s64 arg2, void *arg3, s32 arg4) {
    s64 sp0;
    s32 temp_a2;
    void *temp_s1;

    sp0 = arg2;
    temp_s1 = &__rodata0 + 0x2AC8 + (arg4 * 0xC);
    __glkonim_PixelStorei(temp_s1->unk4, arg0 + arg3->unkC);
    __glkonim_PixelStorei(temp_s1->unk8, arg1 + arg3->unk8);
    temp_a2 = arg3->unk4;
    if (temp_a2 == 0) {
        __glkonim_PixelStorei(temp_s1->unk0, (u8) sp0, temp_a2);
    }
}

void ResetSubrectState(void) {

}

s32 GetSingleCompFromPipe(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    void *temp_s8;

    *(u32 *)0x4000 = 0x116;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    *(void *)0x4000 = arg3;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64->unk8;
}

void __glkonim_DrawPixels(s64 arg0, s64 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s64 spC8;
    s64 spC0;

    spC0 = arg1;
    spC8 = arg0;
    if (*(s32 *)0x1018 != 1) {
        if (__glKonParseInput(sp, (s32 *) spC8, spC0, (s32 *)0x41, (s32) spC8, (s32) spC0, arg2, arg3, arg4, (s32 *)0x41, 0) != 0) {

        } else if (__glKonParseErrorDraw(sp) == 0) {
            if ((spC8 != 0) && (spC0 != 0)) {
                __glKonParseHostImage(sp);
                __glkonle_DrawPixels(sp);
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonle_DrawPixels(s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;

    sp78 = arg5;
    sp80 = arg4;
    sp88 = arg3;
    sp90 = arg2;
    __glKonSetPixelLEModes(sp);
    __glkonim_DrawPixels(arg1, sp90, (s32) sp88, (s32) sp80, (s32) sp78);
    __glKonUnsetLEModes(sp);
}

void DrawPixels(s32 *arg0, s32 arg2, u8 arg4, s32 arg7) {
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s32 sp68;
    ? sp8;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_f0;
    s32 temp_f2;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s4_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_v0;
    s64 temp_a4;
    s64 temp_lo;
    s64 temp_t0;
    s64 var_a1;
    s64 var_s3;
    s64 var_v0_2;
    u32 temp_a5;
    u32 temp_a6;
    u8 var_a4;
    void *temp_a3;
    void *temp_s4;
    void *temp_t3;
    void *temp_v1;

    var_a2 = arg2;
    var_a4 = arg4;
    temp_a5 = arg0->unk98;
    temp_a3 = *(void **)0x1010;
    temp_v0 = temp_a5 & 0x3000;
    temp_s4 = temp_a3 + 0x8AD0;
    if (temp_v0 != 0) {
        goto block_1;
    }
    temp_a6 = temp_a3->unk704;
    temp_a0 = temp_a6 & 0x100;
    if (temp_a0 != 0) {
        if (temp_a3->unk564 != 0x81C6) {
            goto block_8;
        }
        temp_a1 = arg0->unk0;
        var_s0 = temp_a1;
        if (temp_a1 >= 2) {
            var_v0 = 0;
loop_28:
            temp_s0 = var_s0 >> 1;
            var_v0 += 1;
            var_a0 = var_v0 < 9;
            if (temp_s0 >= 2) {
                var_s0 = temp_s0 >> 1;
                var_v0 += 1;
                if (var_s0 < 2) {
                    var_a0 = var_v0 < 9;
                } else {
                    goto loop_28;
                }
            }
            if (var_a0 != 0) {
                var_a4 = var_v0 * 4;
                var_a2 = *(&__rodata0 + 0x28B0 + var_a4);
                if (var_a2 == temp_a1) {
                    goto block_33;
                }
            }
            goto block_41;
        }
        if (__rodata0.unk28B0 != temp_a1) {
block_41:
            __glSetError(0x501, (s32 *) temp_a1, var_a2, (s32) temp_a3, var_a4, (u8) temp_a5, temp_a6);
        } else {
block_33:
            // Error: negative shift count
            // At instruction: bgez $a4, .L0d951524
            if (M2C_ERROR()) {
                if (arg7 != 0) {
                    if (!(temp_a3->unk700 & 0x30000000)) {
                        unkspE8 = (s64) temp_a3;
                        if (!(temp_a6 & 7)) {
                            arg0->unkB4 = (s32) ((unkspE8->unk7B5C & 4) != 0);
                            __glkonle_DrawPixels(arg0, (s64) temp_a1, (s64) arg0->unk4, 0, (s64) arg0->unk9C << 0x2B, temp_a5, temp_a6, arg7);
                        }
                    }
                }
            }
        }
    } else if (temp_v0 == 0) {
block_8:
        if (temp_a0 != 0) {
            if (!(temp_a3->unk700 & 0x0C000000) || (temp_a1_2 = temp_a3->unk564, var_a2 = 0x81C5, (temp_a1_2 != 0x81C5))) {
                if (temp_v0 == 0) {
                    goto block_12;
                }
                goto block_1;
            }
            unkspE8 = (s64) temp_a3;
            var_a0_2 = GetConvolutionFilter(0, temp_a1_2, 0x81C5, temp_a3, temp_a5, temp_a6)->unk40;
            temp_a6_2 = arg0->unk0;
            if (var_a0_2 != 0) {
                var_v0_2 = var_a0_2 - 1;
                if (var_v0_2 < temp_a6_2) {
                    goto block_44;
                }
            } else if (temp_a6_2 > 0) {
                var_a0_2 = 1;
                var_v0_2 = 0;
block_44:
                if (unkspE8->unk7B5C & 4) {
                    arg0->unkB4 = 1;
                } else {
                    arg0->unkB4 = 0;
                }
                temp_v1 = unkspE8 + (var_a0_2 * 8);
                sp80 = temp_v1 + 0x10000;
                temp_v1_2 = temp_v1->unk8BD4;
                sp88 = (s64) temp_v1_2;
                sp90 = var_v0_2;
                if (temp_v1_2 < temp_a6_2) {
                    temp_v0_2 = GetSingleCompFromPipe(arg0->unk18, arg0->unk90, arg0->unk94, arg0->unk64);
                    temp_a6_3 = arg0->unk0;
                    if (temp_v0_2 != 0) {
                        var_a3 = sp80->unk-7430;
                        if (var_a3 < temp_a6_3) {
                            goto block_49;
                        }
                        goto block_3;
                    }
                    var_a3 = sp0;
block_49:
                    temp_s4_2 = (temp_v0_2 != 0) ? var_a3 : (s32) sp88;
                    temp_t0 = temp_s4_2 - sp90;
                    temp_f2 = (s32) ((second half of f64) / (f64) (second half of f64));
                    arg0->unkB8 = 1;
                    spB0 = temp_t0;
                    M2C_TRAP_IF(temp_t0 == 0);
                    spD0 = (s64) temp_f2;
                    sp98 = (temp_a6_3 - sp90) - (temp_f2 * temp_t0);
                    __glKonPushState(8, &sp8);
                    sp68 = 1;
                    spA8 = (s64) temp_s4_2;
                    if (spD0 > 0) {
                        var_s0_2 = 0;
                        spC8 = 0;
                        spA0 = (s64) (&sp8 + 0x2C);
                        do {
                            __glKonUnsetLEModes((? *) spC8, NULL, arg0->unk0, spA0, 0, &sp68);
                            __glkonle_DrawPixels(arg0, spA8, (s64) arg0->unk4, spC8);
                            var_s0_2 += 1;
                            spC8 += spB0;
                        } while (spD0 != var_s0_2);
                    }
                    if (sp98 != 0) {
                        temp_lo = spB0 * spD0;
                        sp78 = temp_lo;
                        __glKonUnsetLEModes((? *) temp_lo, NULL, arg0->unk0, (s64) (&sp8 + 0x2C), 0, &sp68);
                        __glkonle_DrawPixels(arg0, sp98 + sp90, (s64) arg0->unk4, sp78);
                    }
                    __glKonUnsetLEModes(NULL, &sp68);
                    __glKonPopState(&sp8);
                } else {
                    goto block_3;
                }
            }
        } else {
            if (temp_v0 != 0) {
                goto block_2;
            }
block_12:
            temp_a4 = temp_a3->unk700 & 0x30000000;
            if (temp_a4 != 0) {
                if (temp_a3->unk7B5C & 4) {
                    arg0->unkB4 = 1;
                } else {
                    arg0->unkB4 = 0;
                }
                temp_s2 = temp_s4->unk104;
                temp_a6_4 = arg0->unk0;
                if (temp_s2 < temp_a6_4) {
                    temp_t3 = temp_s4->unk1A0;
                    arg0->unkB8 = 1;
                    spC0 = (s64) temp_t3->unkC;
                    spB8 = (s64) temp_t3->unk4;
                    if (temp_s4->unk1A0->unk4 == 0) {
                        __glkonim_PixelStorei(0xCF2, (u8) temp_a6_4, var_a2, temp_a3, temp_a4, 0x30000000U, temp_a6_4, 1);
                    }
                    temp_f0 = (s32) ((f64) (second half of f64) / (second half of f64));
                    M2C_TRAP_IF(temp_s2 == 0);
                    spD0 = (s64) temp_f0;
                    var_a1 = arg0->unk0 - (temp_f0 * temp_s2);
                    if (temp_f0 > 0) {
                        var_s3 = 0;
                        var_s0_3 = 0;
                        do {
                            __glkonle_DrawPixels(arg0, (s64) temp_s2, (s64) arg0->unk4, var_s3);
                            __glkonim_PixelStorei(0xCF4, temp_s2 + temp_s4->unk1A0->unkC);
                            var_s0_3 += 1;
                            var_s3 += temp_s2;
                        } while (spD0 != var_s0_3);
                        temp_a1_3 = arg0->unk0;
                        M2C_TRAP_IF(temp_s2 == 0);
                        var_a1 = temp_a1_3 - ((s32) ((f64) temp_a1_3 / (f64) temp_s2) * temp_s2);
                    } else {
                        var_s3 = 0;
                    }
                    if (var_a1 != 0) {
                        __glkonle_DrawPixels(arg0, var_a1, (s64) arg0->unk4, var_s3);
                    }
                    __glkonim_PixelStorei(0xCF2, (u8) spB8);
                    __glkonim_PixelStorei(0xCF4, (u8) spC0);
                } else {
                    goto block_3;
                }
            } else {
                goto block_2;
            }
        }
    } else {
block_1:
block_2:
block_3:
        __glkonle_DrawPixels(arg0, (s64) arg0->unk0, (s64) arg0->unk4, 0);
    }
}

void DoDrawPixelsOrTexels(void *arg0, s32 arg1, s32 arg2, void *arg3) {
    s32 *var_a3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a7;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    void *temp_a6;

    var_a7 = arg0->unkB4;
    temp_a6 = *(void **)0x1010;
    if (var_a7 != 0) {
        goto block_1;
    }
    if (arg0->unk98 & 0x3000) {
        goto block_9;
    }
    if (!(temp_a6->unk704 & 0x100) || (temp_a6->unk564 != 0x81C5)) {
        goto block_15;
    }
    temp_a3 = arg0->unk20;
    switch (temp_a3) {                              /* irregular */
    case 0xDE0:
block_22:
        // Error: negative shift count
        // At instruction: bltz $t3, .L0d951d08
        if (M2C_ERROR()) {
block_15:
            if (temp_a6->unk700 & 0x30000000) {
                goto block_16;
            }
            goto block_9;
        }
block_16:
        if (!(temp_a6->unk7B5C & 4)) {
block_9:
            if (arg0->unk18 & 0x80) {
                temp_a3_2 = arg0->unk84;
                var_t0 = temp_a3_2;
                if (temp_a6->unk704 & 0x20) {
                    var_t0 = temp_a3_2 | 0x8000;
                    arg0->unk84 = var_t0;
                }
                *(s32 *)0x4000 = 0x174;
                *(void *)0x4000 = (s32) arg0->unk20;
                var_a4 = arg0->unk6C;
                *(void *)0x4000 = arg1;
                *(void *)0x4000 = arg2;
                *(void *)0x4000 = (s32) arg0->unk90;
                *(void *)0x4000 = (s32) arg0->unk94;
                *(void *)0x4000 = (s32) (arg0->unk14 & 3);
                *(void *)0x4000 = var_a7;
                *(void *)0x4000 = (s32) arg0->unkB8;
                *(void *)0x4000 = (s32) arg3;
                *(void *)0x4000 = (s32) arg0->unk64;
                var_a6 = arg0->unk68;
                *(void *)0x4000 = var_a6;
                *(void *)0x4000 = var_a4;
                *(void *)0x4000 = (s32) arg0->unk70;
                *(void *)0x4000 = (s32) arg0->unk74;
                *(void *)0x4000 = (s32) arg0->unk78;
                *(void *)0x4000 = (s32) arg0->unk7C;
                *(void *)0x4000 = (s32) arg0->unk80;
                *(void *)0x4000 = var_t0;
                *(void *)0x4000 = (s32) arg0->unk88;
                var_a3 = NULL;
                *(void *)0x4000 = (s32) arg0->unk8C;
            } else {
                *(void *)0x4000 = 0x3A;
                *(void *)0x4000 = arg1;
                *(void *)0x4000 = arg2;
                var_a4 = arg0->unk94;
                var_a6 = arg0->unk90;
                *(void *)0x4000 = var_a6;
                *(void *)0x4000 = var_a4;
                *(void *)0x4000 = (s32) (arg0->unk14 & 3);
                *(void *)0x4000 = var_a7;
                *(void *)0x4000 = (s32) arg0->unkB8;
                var_a3 = NULL;
                *(void *)0x4000 = (s32) arg3;
            }
        } else {
block_1:
            temp_a3_3 = arg0->unk18 & 0x80;
            if ((temp_a3_3 != 0) && (temp_a7 = arg0->unk84 | 4, arg0->unk84 = temp_a7, (temp_a3_3 != 0))) {
                if (temp_a6->unk704 & 0x20) {
                    arg0->unk84 = (s32) (temp_a7 | 0x8000);
                }
                var_a7 = arg0->unk64;
                var_a6 = arg0->unk68;
                var_a4 = arg0->unk6C;
                var_a3 = sp;
            } else {
                var_a7 = 0x3A;
                var_a6 = arg0->unk90;
                var_a4 = arg0->unk94;
                var_a3 = sp;
            }
        }
        break;
    case 0x0:
    case 0xDE1:
        if (!(temp_a6->unk700 & 0x0C000000)) {
            if (temp_a3 == 0xDE0) {
                goto block_22;
            }
            goto block_15;
        }
        goto block_16;
    }
    __glKonSendData(var_a3, var_a4, arg3, var_a6, var_a7);
}

void __glkon_OverlappedCopy(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s32 temp_a1;
    s32 temp_s0;
    s64 temp_v0;
    void *temp_v1;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d951e80
    if (M2C_ERROR()) {
        __glkonim_Enable(0x8011, 4, 0x111, 0x20000000);
    }
    // Error: negative shift count
    // At instruction: bgez $v1, .L0d951e98
    if (M2C_ERROR()) {
        __glkonim_Enable(0x8012);
    }
    // Error: negative shift count
    // At instruction: bgez $a0, .L0d951eac
    if (M2C_ERROR()) {
        __glkonim_Enable(0x8024);
    }
    temp_a1 = 0x20000000 & temp_s0;
    if (temp_a1 != 0) {
        __glkonim_Enable(0x802E, temp_a1);
    }
    __glkonim_CopyPixels(unksp70);
    __glKonPopState(sp);
    *(void *)0x4000 = 0x111;
    *(void *)0x4000 = 4;
    *(void *)0x4000 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xc8, 0xcc, 0xd0, 0xd4, 0x140, 0x144, 0x148, 0x14c, 0x150, 0x154, 0x158, 0x15c, 0x160, 0x164, 0x170, 0x174, 0x178, 0x17c], gap at: 0xe0. */
s64 __glkonim_CopyPixels(s64 arg0, s32 *arg1, s32 *arg2, s32 *arg3, s32 *arg4) {
    s64 sp190;
    s64 sp180;
    s32 spBC;
    s32 spA4;
    s32 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 *spC;
    s32 sp8;
    void *sp0;
    f32 temp_f4;
    f32 var_f0;
    s32 *temp_a2;
    s32 *var_a1;
    s32 *var_a1_3;
    s32 *var_a2;
    s32 *var_a6;
    s32 *var_s4;
    s32 *var_s6;
    s32 temp_a1_2;
    s32 temp_f7;
    s32 temp_f8;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_ret;
    s32 temp_ret_4;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s4_3;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s7;
    s32 var_s8_2;
    s32 var_s8_3;
    s32 var_s8_4;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_ret_2;
    s64 temp_ret_5;
    s64 temp_s0;
    s64 temp_s2;
    s64 temp_s5;
    s64 temp_s5_2;
    s64 temp_s7;
    s64 temp_s7_2;
    s64 temp_t3;
    s64 temp_t8;
    s64 temp_v0_2;
    s64 var_a2_2;
    s64 var_s0;
    s64 var_s4_2;
    s64 var_s8;
    void *temp_a1;
    void *temp_ret_3;
    void *temp_v0_3;
    void *temp_v0_5;

    var_s8 = saved_reg_fp;
    unksp120 = arg0;
    temp_a2 = *(s32 **)0x1010;
    unksp130 = (s64) temp_a2;
    unksp128 = temp_a2 + 0x280;
    if (*(s32 *)0x1018 != 1) {
        temp_ret = __glKonParseErrorDraw(arg2, arg3, arg4);
        var_f0 = (bitwise f32) temp_ret;
        if (temp_ret == 0) {
            var_a1 = *(void *)0x1010;
            temp_v0 = var_a1->unk704 & 0x100;
            if (arg4 != (s32 *)0x1800) {
                if (temp_v0 != 0) {
                    goto block_5;
                }
                goto block_6;
            }
            if (temp_v0 != 0) {
                if (var_a1->unk564 == 0x81C6) {
                    var_s4 = arg2;
                    if ((s32) arg2 >= 2) {
                        var_v0 = 0;
loop_36:
                        temp_s4 = (s32) var_s4 >> 1;
                        var_v0 += 1;
                        var_s4 = (s32 *) (temp_s4 >> 1);
                        if (temp_s4 >= 2) {
                            var_v0 += 1;
                            if ((s32) var_s4 >= 2) {
                                goto loop_36;
                            }
                        }
                        var_a1 = (s32 *) (var_v0 < 9);
                        if ((var_a1 != NULL) && (*(&__rodata0 + 0x28B0 + (var_v0 * 4)) == arg2)) {
                            /* Duplicate return node #40. Try simplifying control flow for better match */
                            *(void *)0x4000 = (s32 *)0x38;
                            *(void *)0x4000 = (s32 *) unksp120;
                            *(void *)0x4000 = arg1;
                            *(void *)0x4000 = arg2;
                            *(void *)0x4000 = arg3;
                            *(void *)0x4000 = NULL;
                            *(void *)0x4000 = arg4;
                            *(void *)0x4000 = NULL;
                            return (bitwise s64) var_f0;
                        }
                        goto block_83;
                    }
                    if (__rodata0.unk28B0 != arg2) {
block_83:
                        var_f0 = __glSetError(0x501, var_a1);
                        goto block_18;
                    }
                    *(void *)0x4000 = (s32 *)0x38;
                    *(void *)0x4000 = (s32 *) unksp120;
                    *(void *)0x4000 = arg1;
                    *(void *)0x4000 = arg2;
                    *(void *)0x4000 = arg3;
                    *(void *)0x4000 = NULL;
                    *(void *)0x4000 = arg4;
                    *(void *)0x4000 = NULL;
                    return (bitwise s64) var_f0;
                }
block_5:
                if (var_a1->unk564 != 0x81C5) {
                    goto block_6;
                }
                if (var_a1->unk700 & 0x0C000000) {
                    var_s2 = 1;
                    if (unksp130->unkD84 == -3) {
                        goto block_42;
                    }
                    goto block_8;
                }
                goto block_7;
            }
block_6:
block_7:
            var_s2 = 0;
            if (((void *) unksp130)->unkD84 != -3) {
                goto block_8;
            }
            if (unksp130->unk700 & 0x30000000) {
block_42:
                var_f0 = (bitwise f32) __glkon_OverlappedCopy(unksp120, (s64) arg1, (s64) arg2, (s64) arg3, (s64) arg4);
                goto block_18;
            }
block_8:
            if ((f64) unksp128->unk68 == 1.0) {
                var_f0 = second half of f64;
                if ((f64) unksp128->unk6C == 1.0) {
                    var_s6 = (s32 *)0x80000000;
                    if (var_s2 != 0) {
                        goto block_11;
                    }
                    goto block_21;
                }
            }
            temp_ret_2 = __glkonim_CopyPixels(unksp120, (s64) arg1, (s64) arg2, (s64) arg3);
            temp_v0_2 = temp_ret_2;
            var_f0 = (bitwise f32) temp_ret_2;
            var_s6 = (s32 *) temp_v0_2;
            if (temp_v0_2 & 4) {
                var_f0 = (bitwise f32) __glkon_OverlappedCopy(unksp120, (s64) arg1, (s64) arg2, (s64) arg3, (s64) arg4);
                goto block_18;
            }
            if (var_s2 == 0) {
block_21:
                if (unksp130->unk700 & 0x30000000) {
                    var_s2_2 = unksp130->unk8BD4;
                    var_s7 = 0;
                    var_v0_2 = unksp130->unk8BD0;
                    goto block_23;
                }
                /* Duplicate return node #17. Try simplifying control flow for better match */
                *(s32 **)0x4000 = (s32 *)0x38;
                *(void *)0x4000 = (s32 *) unksp120;
                *(void *)0x4000 = arg1;
                *(void *)0x4000 = arg2;
                *(void *)0x4000 = arg3;
                *(void *)0x4000 = NULL;
                *(void *)0x4000 = arg4;
                *(void *)0x4000 = var_s6;
                return (bitwise s64) var_f0;
            }
block_11:
            temp_ret_3 = GetConvolutionFilter(0);
            temp_v0_3 = temp_ret_3;
            var_f0 = (bitwise f32) temp_ret_3;
            var_s2_3 = temp_v0_3->unk40;
            if (var_s2_3 != 0) {
                var_s7 = var_s2_3 - 1;
                if (var_s7 < (s32) arg2) {
                    sp0 = temp_v0_3;
                    goto block_14;
                }
                goto block_18;
            }
            var_s2_3 = 1;
            if ((s32) arg2 > 0) {
                sp0 = temp_v0_3;
                var_s7 = 0;
block_14:
                temp_a1 = unksp130 + (var_s2_3 * 8);
                if (unksp130->unkCB8 != unksp130->unkCBC) {
                    var_s2_2 = temp_a1->unk8B94;
                    var_v0_2 = temp_a1->unk8B90;
                } else {
                    var_s2_2 = temp_a1->unk8BD4;
                    var_v0_2 = temp_a1->unk8BD0;
                }
block_23:
                sp180 = (s64) var_v0_2;
                if ((var_s2_2 < (s32) arg2) && ((temp_ret_4 = GetSingleCompFromPipe(0x42U, 0U, 0U, 0U), temp_v0_4 = temp_ret_4, var_f0 = (bitwise f32) temp_ret_4, (temp_v0_4 == 0)) || (sp180 < (s32) arg2))) {
                    temp_s2 = (temp_v0_4 != 0) ? sp180 : (s64) var_s2_2;
                    temp_ret_5 = __glkonim_CopyPixels(unksp120, (s64) arg1, (s64) arg2, (s64) arg3, sp180);
                    temp_v0_5 = temp_ret_5;
                    var_f0 = (bitwise f32) temp_ret_5;
                    temp_s6 = temp_v0_5->unk0;
                    if (temp_s6 & 4) {
                        var_f0 = (bitwise f32) __glkon_OverlappedCopy(unksp120, (s64) arg1, (s64) arg2, (s64) arg3, (s64) arg4);
                        goto block_18;
                    }
                    temp_f4 = temp_v0_5->unk28 - (f32) unksp120;
                    if (temp_f4 > 0.0f) {
                        var_a4 = temp_s2 - var_s7;
                        if (temp_f4 < (f32) var_s7) {
                            temp_f7 = (s32) ((f64) arg2 / (f64) temp_s2);
                            temp_s7 = sp0->unk40 - 1;
                            unksp108 = temp_s7;
                            temp_s7_2 = temp_s7 * 2;
                            temp_t9 = temp_f7 - 1;
                            temp_t3 = arg2 - (temp_f7 * temp_s2);
                            unkspE0 = (s64) temp_f7;
                            temp_t2 = (temp_t3 == 0) ? temp_t9 : temp_f7;
                            temp_t8 = (s32) arg3 * (temp_s7_2 + 4) * 8;
                            unkspE8 = (s64) temp_t9;
                            unksp100 = temp_t3;
                            unkspF0 = (s64) temp_t2;
                            M2C_TRAP_IF(temp_s2 == 0);
                            unkspF8 = (s64) temp_t2;
                            unksp118 = temp_t8;
                            temp_s5 = __glkon_OverlappedCopy(unksp130, temp_t2 * temp_t8);
                            unksp110 = temp_s7_2;
                            __glKonSetNoModeState(4, 0x60000000);
                            unkspD8 = temp_s5;
                            if ((unksp100 == 0) || (unksp100 >= unksp108)) {
                                if (unkspF8 != 0) {
                                    var_s8_2 = unkspF8 - 1;
                                    unksp138 = ((unkspF8 * temp_s2) + unksp120) - unksp108;
                                    var_s5 = unkspD8 + (var_s8_2 * unksp118);
                                    do {
                                        __glkonim_ReadPixels(unksp138, arg1, unksp110, arg3, (s32 *)0x1908, 0x1403, var_s5);
                                        var_s8_2 -= 1;
                                        unksp138 -= temp_s2;
                                        var_s5 -= unksp118;
                                    } while (var_s8_2 != -1);
                                    goto block_53;
                                }
                            } else {
                                temp_s5_2 = unkspF8 - 1;
                                temp_lo = temp_s5_2 * unksp118;
                                __glkonim_ReadPixels((unksp120 + (unkspF8 * temp_s2)) - unksp108, arg1, unksp100 + unksp108, arg3, (s32 *)0x1908, 0x1403, unkspD8 + temp_lo, temp_lo);
                                unksp168 = temp_s5_2;
                                if (unkspF8 != 1) {
                                    var_s8_3 = unksp168 - 1;
                                    unksp138 = ((unksp168 * temp_s2) + unksp120) - unksp108;
                                    var_s5_2 = unkspD8 + (var_s8_3 * unksp118);
                                    do {
                                        __glkonim_ReadPixels(unksp138, arg1, unksp110, arg3, (s32 *)0x1908, 0x1403, var_s5_2);
                                        var_s8_3 -= 1;
                                        unksp138 -= temp_s2;
                                        var_s5_2 -= unksp118;
                                    } while (var_s8_3 != -1);
block_53:
                                    var_s8 = sp190;
                                }
                            }
                            __glKonSetNoModeState(4, 0x20000000);
                            if (unksp108 < unksp100) {
                                temp_lo_2 = unkspE0 * temp_s2;
                                *(void *)0x4000 = (s32 *)0x38;
                                *(void *)0x4000 = (s32 *) (temp_lo_2 + unksp120);
                                *(void *)0x4000 = arg1;
                                *(void *)0x4000 = (s32 *) unksp100;
                                *(void *)0x4000 = arg3;
                                *(void *)0x4000 = (s32 *) temp_lo_2;
                                *(void *)0x4000 = arg4;
                                *(void *)0x4000 = (s32 *) temp_s6;
                            }
                            var_s4_2 = unkspE8;
                            if (unkspE0 != 0) {
                                var_a4_2 = unkspE8 * temp_s2;
                                var_a6 = var_a4_2 + unksp120;
                                do {
                                    *(void *)0x4000 = (s32 *)0x38;
                                    *(void *)0x4000 = var_a6;
                                    *(void *)0x4000 = arg1;
                                    *(void *)0x4000 = (s32 *) temp_s2;
                                    *(void *)0x4000 = arg3;
                                    *(void *)0x4000 = (s32 *) var_a4_2;
                                    var_s4_2 -= 1;
                                    var_a6 -= temp_s2;
                                    *(void *)0x4000 = arg4;
                                    var_a4_2 -= temp_s2;
                                    *(void *)0x4000 = (s32 *) temp_s6;
                                } while (var_s4_2 != -1);
                            }
                            spA4 = 8;
                            sp9C = 3;
                            sp20 = 0x41;
                            sp18 = 0x1403;
                            sp98 = __rodata0.unk2A18;
                            sp14 = 0x1908;
                            spC = arg3;
                            spA0 = 1 << __rodata0.unk2A18;
                            if ((unksp100 != 0) && (unksp100 < unksp108)) {
                                temp_s0 = unkspF8 - 1;
                                temp_a1_2 = unksp100 + unksp108;
                                sp8 = temp_a1_2;
                                sp1C = unkspD8 + (temp_s0 * unksp118);
                                __glKonParseHostImage(&sp8, temp_a1_2, unksp108);
                                spBC = 1;
                                __glkonle_DrawPixels(&sp8, (s64) sp8, (s64) spC, (unkspF8 * temp_s2) - unksp108, unksp108);
                                unkspF0 = temp_s0;
                            }
                            temp_lo_3 = var_s4_2 * unksp118;
                            sp8 = (s32) unksp110;
                            sp1C = unkspD8 + temp_lo_3;
                            __glKonParseHostImage(&sp8, temp_lo_3);
                            spBC = 1;
                            if (unkspF0 != 0) {
                                sp190 = var_s8;
                                var_s8_4 = unkspF0 - 1;
                                var_s0 = (unkspF0 * temp_s2) - unksp108;
                                var_s5_3 = unkspD8 + (var_s8_4 * unksp118);
                                do {
                                    sp1C = var_s5_3;
                                    __glkonle_DrawPixels(&sp8, (s64) sp8, (s64) spC, var_s0);
                                    var_s8_4 -= 1;
                                    var_s0 -= temp_s2;
                                    var_s5_3 -= unksp118;
                                } while (var_s8_4 != -1);
                            }
                            __glKonSetNoModeState(4, 0);
                            var_f0 = (bitwise f32) __glKonSetNoModeState((s32) unksp130, unkspD8);
                            goto block_18;
                        }
                        goto block_69;
                    }
                    var_a4 = temp_s2 - var_s7;
block_69:
                    temp_f8 = (s32) ((f64) (second half of f64) / (second half of f64));
                    M2C_TRAP_IF(var_a4 == 0);
                    temp_v0_6 = (arg2 - var_s7) - (temp_f8 * var_a4);
                    if (temp_s6 & 1) {
                        if (temp_v0_6 != 0) {
                            temp_lo_4 = var_a4 * temp_f8;
                            *(void *)0x4000 = (s32 *)0x38;
                            *(void *)0x4000 = (s32 *) (temp_lo_4 + unksp120);
                            *(void *)0x4000 = arg1;
                            *(void *)0x4000 = (s32 *) (temp_v0_6 + var_s7);
                            *(void *)0x4000 = arg3;
                            *(void *)0x4000 = (s32 *) temp_lo_4;
                            *(void *)0x4000 = arg4;
                            *(void *)0x4000 = (s32 *) temp_s6;
                        }
                        var_v0_3 = temp_f8 - 1;
                        if (temp_f8 != 0) {
                            var_a1_2 = var_a4 * var_v0_3;
                            var_a2 = var_a1_2 + unksp120;
                            do {
                                *(void *)0x4000 = (s32 *)0x38;
                                *(void *)0x4000 = var_a2;
                                *(void *)0x4000 = arg1;
                                *(void *)0x4000 = (s32 *) temp_s2;
                                *(void *)0x4000 = arg3;
                                *(void *)0x4000 = (s32 *) var_a1_2;
                                var_v0_3 -= 1;
                                var_a2 -= var_a4;
                                *(void *)0x4000 = arg4;
                                var_a1_2 -= var_a4;
                                *(void *)0x4000 = (s32 *) temp_s6;
                            } while (var_v0_3 != -1);
                        }
                        goto block_18;
                    }
                    var_a1_3 = NULL;
                    if (temp_f8 > 0) {
                        var_a2_2 = unksp120;
                        var_s4_3 = 0;
                        do {
                            *(void *)0x4000 = (s32 *)0x38;
                            *(void *)0x4000 = (s32 *) var_a2_2;
                            *(void *)0x4000 = arg1;
                            *(void *)0x4000 = (s32 *) temp_s2;
                            *(void *)0x4000 = arg3;
                            *(void *)0x4000 = var_a1_3;
                            var_s4_3 += 1;
                            var_a2_2 += var_a4;
                            *(void *)0x4000 = arg4;
                            var_a1_3 += var_a4;
                            *(void *)0x4000 = (s32 *) temp_s6;
                        } while (temp_f8 != var_s4_3);
                    }
                    if (temp_v0_6 != 0) {
                        temp_lo_5 = var_a4 * temp_f8;
                        *(void *)0x4000 = (s32 *)0x38;
                        *(void *)0x4000 = (s32 *) (temp_lo_5 + unksp120);
                        *(void *)0x4000 = arg1;
                        *(void *)0x4000 = (s32 *) (temp_v0_6 + var_s7);
                        *(void *)0x4000 = arg3;
                        *(void *)0x4000 = (s32 *) temp_lo_5;
                        *(void *)0x4000 = arg4;
                        *(void *)0x4000 = (s32 *) temp_s6;
                        return (bitwise s64) var_f0;
                    }
                    goto block_18;
                }
                *(s32 **)0x4000 = (s32 *)0x38;
                *(void *)0x4000 = (s32 *) unksp120;
                *(void *)0x4000 = arg1;
                *(void *)0x4000 = arg2;
                *(void *)0x4000 = arg3;
                *(void *)0x4000 = NULL;
                *(void *)0x4000 = arg4;
                *(void *)0x4000 = var_s6;
                return (bitwise s64) var_f0;
            }
            goto block_18;
        }
        /* Duplicate return node #19. Try simplifying control flow for better match */
        return (bitwise s64) var_f0;
    }
    var_f0 = __glSetError(0x502, temp_a2);
block_18:
    return (bitwise s64) var_f0;
}

s32 CopyIsOverlapped(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_s8;

    *(s32 *)0x4000 = 0x110;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    *(void *)0x4000 = arg3;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64->unk8;
}

s32 CopyConvIsOverlapped(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_s8;

    *(s32 *)0x4000 = 0x115;
    *(void *)0x4000 = arg0;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = arg2;
    *(void *)0x4000 = arg3;
    temp_s8 = *(void **)0x1010;
    __glkona_wait_rdata();
    return temp_s8->unk7B64 + 8;
}

void *CopyReadRectangle(s64 arg0, s32 *arg1, s32 arg2, s32 arg3, s32 arg4, u8 arg6, s32 arg7) {
    s32 *var_s8;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_s3;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t3;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a7;
    s32 var_s0;
    s32 var_t0;
    s32 var_v0;
    u8 var_a6;
    void *temp_a5;
    void *temp_v0;

    var_a4 = arg4;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a5 = *(void **)0x1010;
    unksp28 = arg0;
    var_t0 = arg2;
    var_s0 = var_a4;
    if (var_a4 != 0x1800) {
        var_s8 = (s32 *)0x1901;
        if (var_a4 != 0x1801) {
            var_a1 = sp4;
            if (var_a4 != 0x1802) {
                var_s8 = sp0;
            } else {
                var_a1 = temp_a5->unkCB0;
            }
        } else {
            var_s8 = (s32 *)0x1902;
            var_a1 = temp_a5->unkCAC;
        }
        goto block_4;
    }
    var_a4 = -3;
    var_s8 = (s32 *)0x1900;
    if (temp_a5->unkD84 != -3) {
        var_a6 = temp_a5->unkC94;
        if (var_a6 != 0) {
            temp_a1 = temp_a5->unkCC0;
            temp_t1 = temp_a5->unkCB8;
            temp_a3 = temp_a5->unkCBC;
            temp_t3 = temp_a5->unkCC4;
            var_t0 = arg2 * 4;
            temp_t1_2 = (temp_a3 >= temp_t1) ? temp_a3 : temp_t1;
            var_s8 = (s32 *)0x1908;
            temp_a1_2 = (temp_t3 >= temp_a1) ? temp_t3 : temp_a1;
            var_a7 = temp_a1_2 < temp_t1_2;
            var_a1 = (var_a7 != 0) ? temp_t1_2 : temp_a1_2;
        } else {
            var_a1 = temp_a5->unkCB4;
        }
block_4:
        temp_v0_2 = (s32) (var_a1 + 7) >> 3;
        switch (temp_v0_2) {                        /* irregular */
        default:
            var_v0 = 0;
            if (temp_v0_2 == 4) {
            case 3:
                var_s0 = 0x1405;
                var_v0 = 4;
            }
            break;
        }
    } else {
        temp_s3 = temp_a5->unk8C7C;
        if (temp_s3 != 0) {
            var_s8 = (s32 *)0x1907;
            if (temp_s3 != 1) {
                var_t0 = arg2 * 4;
                if (temp_s3 != 2) {
                    var_s8 = (s32 *)0x1908;
                    if (temp_s3 != 3) {
                        goto block_17;
                    }
                    goto block_19;
                }
block_19:
                var_s8 = (s32 *)0x1908;
            case 2:
                var_s0 = 0x1403;
                var_v0 = 2;
            } else {
                var_t0 = arg2 * 3;
                goto block_17;
            }
        } else {
            var_t0 = arg2 * 4;
            var_s8 = (s32 *)0x1908;
        case 1:
block_17:
            var_s0 = 0x1401;
            var_v0 = 1;
        }
    }
    temp_a2 = ((var_t0 * var_v0) + 3) & ~3;
    temp_v0 = temp_a5->unk0(temp_a5, (arg3 * temp_a2) + 0x14, temp_a2, -4, var_a4, temp_a5, var_a6, var_a7);
    temp_a6 = temp_v0 + 0x14;
    temp_v0->unk10 = temp_a6;
    temp_v0->unkC = var_s8;
    temp_v0->unk8 = var_s0;
    temp_v0->unk4 = arg3;
    temp_v0->unk0 = arg2;
    __glkonim_ReadPixels(unksp28, arg1, (s64) arg2, (s32 *) arg3, var_s8, var_s0, temp_a6);
    return temp_v0;
}

/*
Decompilation failure in function CopyDrawFreeRectangle:

Unable to determine jump table for jr instruction at kon_pixel.s line 4656.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0xb8, 0xbc], gap at: 0x98. */
void __glkonReadPixelsOrTexels(s32 *arg0, s32 arg1, s64 arg2, s32 arg3, u32 arg4, s32 arg5, s32 arg6, s64 arg7) {
    s64 spD8;
    s64 sp70;
    s32 sp60;
    ? *var_s3_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_f0;
    s32 temp_s1_2;
    s32 temp_s5;
    s32 temp_s7;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s5_2;
    s64 temp_s2;
    s64 var_a2;
    s64 var_a7;
    s64 var_s3;
    u32 temp_a0_4;
    u32 var_a4;
    void *temp_a1_2;
    void *temp_s1;
    void *temp_v0;
    void *var_s8;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s1 = *(void **)0x1010;
    temp_s7 = var_a1;
    if (!(arg0->unk98 & 0x3000)) {
        var_a2 = temp_s1->unk704 & 0x100;
        if ((var_a2 == 0) || (var_a1 = temp_s1->unk564, var_a4 = 0x81C5, (var_a1 != 0x81C5))) {
            goto block_3;
        }
        temp_a0 = arg0->unk20;
        var_a6 = 0xDE0;
        switch (temp_a0) {                          /* irregular */
        case 0xDE0:
block_37:
            // Error: negative shift count
            // At instruction: bltz $a7, .L0d952d9c
            if (M2C_ERROR()) {
block_3:
                var_a5 = temp_s1->unk700;
                var_a3 = var_a5 & 0x30000000;
                if (var_a3 != 0) {
                    var_s4 = 0;
                    if (var_a2 != 0) {
                        goto block_6;
                    }
                    goto block_8;
                }
                goto block_16;
            }
block_6:
            if (temp_s1->unk564 != 0x81C5) {
                goto block_7;
            }
            temp_a0_2 = arg0->unk20;
            if (temp_a0_2 != 0) {
                if (temp_a0_2 != 0xDE1) {
                    goto block_41;
                }
                goto block_50;
            }
block_50:
            if (!((s64) temp_s1->unk700 & 0x0C000000)) {
block_41:
                var_s4 = 0;
                if (temp_a0_2 == 0xDE0) {
                    // Error: negative shift count
                    // At instruction: bgez $t2, .L0d952da0
                    if (M2C_ERROR()) {
                        goto block_43;
                    }
block_7:
                    var_s4 = 0;
                    goto block_8;
                }
block_8:
                var_s5 = 0;
                var_s3 = 0;
                var_s8 = NULL;
                goto block_9;
            }
block_43:
            temp_v0 = GetConvolutionFilter(temp_a0_2, temp_s1->unk564, var_a2, (void *) var_a3, 0x81C5U, (u32) (s64) temp_s1->unk700, var_a6, var_a7);
            temp_a1 = temp_v0->unk40;
            temp_a2 = arg0->unk0;
            var_s8 = temp_v0;
            temp_a0_3 = temp_v0->unk44;
            if (temp_a1 != 0) {
                var_s3 = temp_a1 - 1;
                var_s5 = temp_a1;
                var_s4 = (temp_a0_3 == 0) ? 0 : (temp_a0_3 - 1);
                if (var_s3 >= temp_a2) {

                } else {
                    goto block_9;
                }
            } else {
                var_s4 = (temp_a0_3 == 0) ? 0 : (temp_a0_3 - 1);
                if (temp_a2 > 0) {
                    var_s5 = 1;
                    var_s3 = 0;
block_9:
                    temp_a0_4 = arg0->unk18;
                    var_a4_2 = temp_a0_4 & 4;
                    temp_a1_2 = temp_s1 + (var_s5 * 8);
                    if (var_a4_2 != 0) {
                        var_s5_2 = temp_a1_2->unk8B94;
                        goto block_11;
                    }
                    var_a4_2 = temp_s1->unkCBC;
                    if (temp_s1->unkCB8 != var_a4_2) {
                        var_s5_2 = temp_a1_2->unk8B94;
block_11:
                        var_s1 = temp_a1_2->unk8B90;
                    } else {
                        var_s5_2 = temp_a1_2->unk8BD4;
                        var_s1 = temp_a1_2->unk8BD0;
                    }
                    if ((var_s5_2 < arg0->unk0) && (temp_a2_2 = arg0->unk0, temp_s5 = (GetSingleCompFromPipe(temp_a0_4, arg0->unk90, arg0->unk94, arg0->unk2C, var_a4_2) != 0) ? var_s1 : var_s5_2, ((temp_s5 < temp_a2_2) != 0))) {
                        temp_s2 = temp_a2_2 - var_s3;
                        __glKonPushState(2, sp, temp_a2_2);
                        temp_s1_2 = temp_s5 - var_s3;
                        temp_f0 = (s32) ((second half of f64) / (f64) (second half of f64));
                        unksp90 = temp_s2;
                        sp60 = 1;
                        M2C_TRAP_IF(temp_s1_2 == 0);
                        unksp98 = (s64) temp_f0;
                        sp70 = temp_s2 - (temp_f0 * temp_s1_2);
                        if (temp_f0 > 0) {
                            var_s2 = 0;
                            spD8 = var_s3;
                            var_s3_2 = NULL;
                            var_a0 = arg0->unk18 & 4;
loop_21:
                            if (var_a0 != 0) {
                                arg0->unk3C = (s32) ((temp_s5 + arg0->unk34) - 1);
                            }
                            __glKonUnsetLEModes(var_s3_2, NULL, (s32) unksp90, (s64) sp, 1, &sp60);
                            arg0->unk0 = temp_s1_2;
                            arg0->unk4 = (s32) (arg0->unk4 - var_s4);
                            __glKonParseHostImage(arg0);
                            arg0->unk0 = temp_s5;
                            arg0->unk4 = (s32) (arg0->unk4 + var_s4);
                            __glKonParseHostImage(arg0, (s32) var_s8);
                            var_a0 = arg0->unk18 & 4;
                            var_s3_2 += temp_s1_2;
                            var_s2 += 1;
                            if (var_a0 == 0) {
                                arg0->unk24 = (s32) (arg0->unk24 + temp_s1_2);
                            } else {
                                arg0->unk34 = (s32) (temp_s1_2 + arg0->unk34);
                            }
                            if (unksp98 != var_s2) {
                                goto loop_21;
                            }
                            var_s3 = spD8;
                        }
                        arg0->unk0 = (s32) sp70;
                        if (sp70 != 0) {
                            if (arg0->unk18 & 4) {
                                arg0->unk3C = (s32) ((var_s3 + (sp70 + arg0->unk34)) - 1);
                            }
                            __glKonUnsetLEModes((? *) (temp_s1_2 * unksp98), NULL, (s32) unksp90, (s64) sp, 1, &sp60);
                            arg0->unk4 = (s32) (arg0->unk4 - var_s4);
                            __glKonParseHostImage(arg0);
                            arg0->unk4 = (s32) (arg0->unk4 + var_s4);
                            arg0->unk0 += var_s3;
                            __glKonParseHostImage(arg0, (s32) var_s8);
                        }
                        __glKonUnsetLEModes((? *)1, &sp60);
                        __glKonPopState(sp);
                    } else {
                        arg0->unk0 -= var_s3;
                        arg0->unk4 = (s32) (arg0->unk4 - var_s4);
                        __glKonParseHostImage(arg0);
                        arg0->unk4 = (s32) (arg0->unk4 + var_s4);
                        arg0->unk0 += var_s3;
                        __glKonParseHostImage(arg0, (s32) var_s8);
                    }
                }
            }
            break;
        case 0x0:
        case 0xDE1:
            if (!(temp_s1->unk700 & 0x0C000000)) {
                if (temp_a0 == 0xDE0) {
                    goto block_37;
                }
                goto block_3;
            }
            goto block_6;
        }
    } else {
block_16:
        __glKonParseHostImage(arg0, var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
        __glKonParseHostImage(arg0, 0);
    }
}

void __glkonim_ReadPixels(s32 arg0, s32 *arg1, s32 *arg2, s32 *arg3, s32 *arg4, s32 arg5, s32 arg6) {
    if (*(s32 *)0x1018 != 1) {
        if (__glKonParseInput(sp, arg2, (s64) arg3, arg4, arg5, arg6, 0x22, 0, arg0, arg1) != 0) {

        } else if (__glKonParseErrorRead(sp) == 0) {
            __glkonim_CopyPixels((s64) sp, (s64) (&sub_0d950000 + 0x3620));
        }
    } else {
        __glSetError(0x502);
    }
}

void BitmapReadModifyWrite(void *arg0, u8 *arg1, s32 arg2) {
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_t8;
    s32 var_a4;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s5;
    u32 temp_a5_2;
    u8 *temp_a0_2;
    u8 *temp_s0_2;
    u8 *var_a5;
    u8 *var_s0;
    u8 *var_s1;
    u8 temp_a0;
    u8 temp_a3;
    u8 temp_a3_2;
    u8 temp_at;
    u8 temp_v1;
    void *temp_a1;
    void *temp_a5;
    void *temp_s0;

    temp_a5 = (*(s32 *)0x1010 + 0x8AD0)->unk19C;
    temp_a5_2 = temp_a5->unkC;
    temp_a7 = arg0->unk0;
    var_s0 = arg1;
    temp_t0 = temp_a5_2 & 7;
    temp_a6 = (temp_a7 + temp_a5_2) & 7;
    var_a5 = arg2 + ((temp_a5_2 >> 3) + (arg0->unkA8 * temp_a5->unk8));
    if (temp_t0 != 0) {
        temp_t8 = (temp_a7 + temp_t0) - 8;
        temp_s7 = (0xFF >> temp_t0) & 0xFF;
        var_s1 = var_a5;
        var_a4 = (temp_a6 == 0) ? temp_t8 : (temp_t8 - temp_a6);
        var_s5 = (temp_a6 == 0) ? 0 : ((0xFF << (8 - temp_a6)) & 0xFF);
        if (temp_s7 != 0) {
            if (var_s5 != 0) {
                if (arg0->unk4 > 0) {
                    temp_s3 = var_a4 >> 3;
                    var_s2 = 0;
                    do {
                        temp_at = ~temp_s7 & *var_s1;
                        *var_s1 = temp_at;
                        *var_s1 = temp_at | (*var_s0 & temp_s7);
                        bcopy(var_s0 + 1, var_s1 + 1, temp_s3);
                        temp_a1 = temp_s3 + var_s1;
                        temp_s0 = temp_s3 + var_s0;
                        temp_a0 = ~var_s5 & temp_a1->unk1;
                        temp_a1->unk1 = temp_a0;
                        temp_a1->unk1 = (u8) (temp_a0 | (temp_s0->unk1 & var_s5));
                        var_s2 += 1;
                        var_s0 = temp_s0 + 2;
                        var_s1 += arg0->unkA8;
                    } while (var_s2 < arg0->unk4);
                }
            } else if (temp_s7 != 0) {
                if (arg0->unk4 > 0) {
                    temp_s3_2 = var_a4 >> 3;
                    var_s2_2 = 0;
                    do {
                        temp_a3 = ~temp_s7 & *var_s1;
                        *var_s1 = temp_a3;
                        temp_a4 = *var_s0 & temp_s7;
                        temp_a3_2 = temp_a3 | temp_a4;
                        *var_s1 = temp_a3_2;
                        bcopy(var_s0 + 1, var_s1 + 1, temp_s3_2, temp_a3_2, temp_a4, (s32) var_a5);
                        var_s2_2 += 1;
                        var_a5 = (u8 *) (var_s2_2 < arg0->unk4);
                        var_s0 = temp_s3_2 + var_s0 + 1;
                        var_s1 += arg0->unkA8;
                    } while (var_a5 != NULL);
                }
            } else {
                goto block_11;
            }
        } else {
            goto block_11;
        }
    } else {
        var_a4 = (temp_a6 != 0) ? (temp_a7 - temp_a6) : temp_a7;
        var_s1 = var_a5;
        var_s5 = (temp_a6 == 0) ? 0 : (0xFF << (8 - temp_a6));
block_11:
        if (arg0->unk4 > 0) {
            temp_s3_3 = var_a4 >> 3;
            var_s2_3 = 0;
            do {
                bcopy(var_s0, var_s1, temp_s3_3);
                temp_a0_2 = &var_s1[temp_s3_3];
                temp_s0_2 = &var_s0[temp_s3_3];
                temp_v1 = ~var_s5 & *temp_a0_2;
                *temp_a0_2 = temp_v1;
                *temp_a0_2 = temp_v1 | (*temp_s0_2 & var_s5);
                var_s2_3 += 1;
                var_s0 = temp_s0_2 + 1;
                var_s1 = &var_s1[arg0->unkA8];
            } while (var_s2_3 < arg0->unk4);
        }
    }
}

void __glkonHostCopy(void *arg0, u8 *arg1, u8 *arg2, s32 arg3, s64 arg4, s64 arg5) {
    s32 var_s3;
    u8 *var_s0;
    u8 *var_s1;

    var_s1 = arg1;
    if (arg0->unkA8 != arg3) {
        var_s0 = arg4 + arg2;
        var_s3 = arg5 - 1;
        if (arg5 != 0) {
            do {
                bcopy(var_s1, var_s0, arg3);
                var_s3 -= 1;
                var_s1 = &var_s1[arg3];
                var_s0 = &var_s0[arg0->unkA8];
            } while (var_s3 != -1);
        }
    } else {
        bcopy(arg1, arg2, arg0->unkA0, (u8) arg1);
    }
}

void ReadPixels(void *arg0, u32 arg1, u32 arg6, ? arg_sp0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_s3;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a0;
    s32 var_a5;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s64 temp_a0;
    s64 temp_t1;
    u32 temp_t0;
    u32 var_a1;
    u32 var_a3;
    u32 var_a6;
    void *temp_a3;
    void *temp_s4;

    var_a1 = arg1;
    var_a6 = arg6;
    arg_sp0.unk-F8 = (s64) saved_reg_s3;
    temp_a4 = *(s32 *)0x1010;
    arg_sp0.unk-100 = (s64) saved_reg_s4;
    temp_s4 = temp_a4 + 0x8AD0;
    temp_a3 = temp_s4->unk19C;
    arg_sp0.unk-118 = (s64) saved_reg_fp;
    temp_a2 = arg0->unk28;
    arg_sp0.unk-120 = (s64) saved_reg_s1;
    arg_sp0.unk-128 = (s64) saved_reg_ra;
    arg_sp0.unk-108 = (s64) saved_reg_s0;
    var_a7 = arg0->unk0;
    arg_sp0.unk-F0 = (s64) saved_reg_s2;
    arg_sp0.unk-110 = (s64) saved_reg_gp;
    var_s2 = arg0->unk24;
    temp_s3 = arg0->unk4;
    temp_t1 = arg0->unk14 + (arg0->unkA8 * temp_a3->unk8);
    if (var_a7 != 1) {
        goto block_1;
    }
    var_s1 = 8;
    if (temp_s3 == 1) {

    } else {
block_1:
        var_s1 = var_a7;
    }
    var_a5 = temp_s3;
    temp_t0 = temp_a3->unkC;
    if (arg0->unk9C & 0x80) {
        var_a1 = temp_t0 & 7;
        if (var_a1 != 0) {
            goto block_4;
        }
        var_a6 = temp_t0 >> 3;
        if (!(var_a7 & 7)) {
            var_a1 = arg0->unk60;
            var_a3 = var_s1 < 0;
            arg_sp0.unk-C0 = (s64) var_a6;
            var_a0 = (s32) ((var_a3 == 0) ? var_s1 : (var_s1 + 7)) >> 3;
            if (var_a1 != 0) {
                arg_sp0.unk-E8 = 0;
                arg_sp0.unk-E0 = temp_t1;
                arg_sp0.unk-D8 = (s64) temp_s3;
                arg_sp0.unk-D0 = (s64) var_a0;
                arg_sp0.unk-B8 = (s64) temp_a4;
                goto block_6;
            }
            goto block_29;
        }
block_4:
        temp_t8 = (var_a7 + temp_t0) & 7;
        temp_t9 = var_s1 + var_a1;
        var_a3 = temp_t0 >> 3;
        var_a6 = arg0->unk60;
        var_s1 = (temp_t8 == 0) ? temp_t9 : ((temp_t9 - temp_t8) + 8);
        var_s2 -= var_a1;
        var_a0 = (s32) ((var_s1 >= 0) ? var_s1 : (var_s1 + 7)) >> 3;
        if (var_a6 != 0) {
            arg_sp0.unk-E8 = 1;
            arg_sp0.unk-C0 = (s64) var_a3;
            arg_sp0.unk-E0 = temp_t1;
            arg_sp0.unk-D8 = (s64) var_a5;
            arg_sp0.unk-D0 = (s64) var_a0;
            arg_sp0.unk-B8 = (s64) temp_a4;
            goto block_6;
        }
        var_a7 = (arg0->unkA0 + 0xF) & ~0xF;
        arg_sp0.unk-E8 = 1;
        var_s4 = sp - var_a7;
        goto block_21;
    }
    var_a3 = arg0->unkAC;
    if (var_a1 != 0) {
        var_a6 = (var_a7 - var_a1->unk40) + 1;
        var_a0 = var_a3 * var_a6;
        var_a5 = (temp_s3 - var_a1->unk44) + 1;
    } else {
        var_a0 = var_a7 * var_a3;
    }
    var_a7 = (s32) arg0->unk60;
    arg_sp0.unk-C0 = (s64) (var_a3 * temp_t0);
    if (var_a7 != 0) {
        arg_sp0.unk-E8 = 0;
        arg_sp0.unk-E0 = temp_t1;
        arg_sp0.unk-D8 = (s64) var_a5;
        arg_sp0.unk-D0 = (s64) var_a0;
        arg_sp0.unk-B8 = (s64) temp_a4;
block_6:
        arg_sp0.unk-C8 = (s64) temp_a2;
        __glkon_SuspendSelectfeed(var_a0, var_a1, temp_a2, (s32) var_a3, temp_a4, (u8) var_a5, var_a6, (u32) var_a7);
        *(s32 *)0x4000 = 0x39;
        *(void *)0x4000 = var_s2;
        temp_a0 = arg_sp0.unk-C8;
        *(void *)0x4000 = (s32) temp_a0;
        *(void *)0x4000 = var_s1;
        *(void *)0x4000 = temp_s3;
        *(void *)0x4000 = (s32) arg0->unk90;
        *(void *)0x4000 = (s32) arg0->unk94;
        *(void *)0x4000 = (s32) (arg0->unk14 & 3);
        __glkona_wait_rdata(temp_a0, 0x39);
        __glkon_ResumeSelectfeed();
        if (temp_s4->unk140 == 0) {
            temp_a7 = arg_sp0.unk-B8->unk7B64;
            if (arg_sp0.unk-E8 != 0) {
                __glkonim_ReadPixels((s64) arg0, temp_a7 + ((u32) temp_s4->unk19C->unkC >> 3) + 8, (s64) arg0->unk14);
            } else {
                __glkonHostCopy(arg0, temp_a7 + 8, (u8 *) arg_sp0.unk-E0, (s32) arg_sp0.unk-D0, arg_sp0.unk-C0, arg_sp0.unk-D8);
            }
        }
    } else {
block_29:
        arg_sp0.unk-E8 = 0;
        var_s4 = arg_sp0.unk-C0 + temp_t1;
block_21:
        arg_sp0.unk-B0 = var_s4;
        if (arg0->unkA8 != var_a0) {
            arg_sp0.unk-A8 = var_a0;
            arg_sp0.unk-AC = (s32) (var_a5 * var_a0);
            temp_a1 = arg0->unkA8;
            if (temp_a1 >= var_a0) {
                arg_sp0.unk-A4 = (s32) (temp_a1 - var_a0);
                arg_sp0.unk-B8 = (s64) temp_a4;
                goto block_25;
            }
            __glSetError(0x502, (s32 *) temp_a1, temp_a2, (s32) var_a3, (u8) temp_a4, (u8) var_a5, var_a6, (u32) var_a7);
        } else {
            temp_t9_2 = arg0->unkA0;
            arg_sp0.unk-A4 = 0;
            arg_sp0.unk-B8 = (s64) temp_a4;
            arg_sp0.unk-AC = temp_t9_2;
            arg_sp0.unk-A8 = temp_t9_2;
block_25:
            arg_sp0.unk-8C = temp_s3;
            arg_sp0.unk-90 = var_s1;
            arg_sp0.unk-94 = temp_a2;
            arg_sp0.unk-98 = var_s2;
            arg_sp0.unk-9C = 7;
            arg_sp0.unk-A0 = 0x39;
            arg_sp0.unk-88 = (s32) arg0->unk90;
            arg_sp0.unk-20 = 1;
            arg_sp0.unk-80 = (s32) (var_s4 & 3);
            arg_sp0.unk-84 = (s32) arg0->unk94;
            __glkon_SuspendSelectfeed(7, 0x39U, temp_a2, (s32) var_a3, temp_a4, (u8) var_a5, var_a6, (u32) var_a7);
            if (__glKon_ioctl((s32) arg_sp0.unk-B8, 0x2710, &arg_sp0 - 0xB0) < 0) {
                M2C_ERROR(/* Read from unset register $t9 */)(&__rodata0 + 0xF0);
            }
            __glkon_ResumeSelectfeed();
            if (arg_sp0.unk-E8 != 0) {
                __glkonim_ReadPixels((s64) arg0, (s32 *) var_s4, (s64) arg0->unk14);
            }
        }
    }
}

void __glkonReadTexels3D(s32 *arg0, u8 arg5) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a1;
    s32 temp_a0;
    s32 var_a1;
    s64 temp_a3;
    s64 temp_a3_3;
    s64 temp_lo;
    u8 var_a5;
    void *temp_a3_2;

    var_a5 = arg5;
    temp_a1 = arg0->unkC;
    arg0->unk18 = 0x24;
    temp_a3 = *(s32 *)0x1010 + 0x8AD0;
    if ((temp_a1 != (s32 *)0x1902) && (var_a5 = 0x1901, sp10 = temp_a3, (temp_a1 != (s32 *)0x1901))) {
        if (__glKonParseInput(temp_a1, (s32 *) temp_a3, 0x8AD0, (s32 *)0x1901) != 0) {

        } else if (__glKonParseErrorRead(arg0) == 0) {
            __glKonParseHostImage(arg0);
            temp_a0 = arg0->unk8;
            if (temp_a0 >= 2) {
                temp_a3_2 = sp10->unk19C;
                var_a1 = temp_a3_2->unk18;
                if (var_a1 == 0) {
                    var_a1 = arg0->unk4;
                }
                temp_lo = arg0->unkA8 * var_a1;
                sp0 = temp_lo;
                arg0->unk14 = (s32) (arg0->unk14 + (temp_lo * temp_a3_2->unk14));
                if (temp_a0 > 0) {
                    sp8 = 0;
                    do {
                        __glkonim_CopyPixels((s64) arg0, (s64) (&sub_0d950000 + 0x3B90));
                        temp_a3_3 = sp8 + 1;
                        sp8 = temp_a3_3;
                        arg0->unk44 = (s32) (arg0->unk44 + 1);
                        arg0->unk14 = (s32) (sp0 + arg0->unk14);
                    } while (temp_a3_3 < arg0->unk8);
                }
            } else {
                __glkonim_CopyPixels((s64) arg0, (s64) (&sub_0d950000 + 0x3B90));
            }
        }
    } else {
        __glSetError(0x500, temp_a1, (s32) temp_a3, 0x8AD0, var_a5);
    }
}

void ReadTexels(void *arg0, void *arg1) {
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t0;
    s32 var_a5;
    s64 temp_a3;
    s64 temp_lo;
    s64 var_a0;
    u32 temp_a6_2;
    u32 temp_a7;
    u32 var_a6;
    void *temp_a2_2;
    void *temp_t1;

    temp_a2 = *(s32 *)0x1010;
    spC0 = (s64) temp_a2;
    temp_a2_2 = temp_a2 + 0x8AD0;
    temp_t1 = temp_a2_2->unk19C;
    temp_a4 = arg0->unk4;
    var_a6 = 0x13D448;
    temp_a7 = arg0->unkAC;
    temp_t0 = arg0->unk0;
    temp_a3 = arg0->unk14 + (arg0->unkA8 * temp_t1->unk8);
    if (arg1 != NULL) {
        var_a6 = (temp_t0 - arg1->unk40) + 1;
        var_a0 = temp_a7 * var_a6;
        var_a5 = (temp_a4 - arg1->unk44) + 1;
    } else {
        var_a5 = temp_a4;
        var_a0 = temp_t0 * temp_a7;
    }
    temp_lo = temp_a7 * temp_t1->unkC;
    spA0 = (s64) temp_a2_2;
    if (arg0->unk60 != 0) {
        spB8 = (s64) var_a5;
        spB0 = temp_lo;
        spA8 = temp_a3;
        sp98 = var_a0;
        __glkon_SuspendSelectfeed((s32) var_a0, (u32) temp_lo, (s32) temp_a2_2, (s32) temp_a3, temp_a4, (u8) var_a5, var_a6, temp_a7);
        *(s32 *)0x4000 = 0x52;
        temp_a0 = arg0->unk4C;
        temp_a1 = arg0->unk48;
        temp_a2_3 = arg0->unk40;
        temp_a3_2 = arg0->unk3C;
        temp_a4_2 = arg0->unk44;
        temp_a5 = arg0->unk38;
        temp_a6 = arg0->unk34;
        temp_a7_2 = arg0->unk30;
        *(void *)0x4000 = (s32) arg0->unk20;
        *(void *)0x4000 = (s32) arg0->unk0;
        *(void *)0x4000 = (s32) arg0->unk4;
        *(void *)0x4000 = (s32) arg0->unk90;
        *(void *)0x4000 = (s32) arg0->unk94;
        *(void *)0x4000 = (s32) arg0->unk2C;
        *(void *)0x4000 = temp_a7_2;
        *(void *)0x4000 = temp_a6;
        *(void *)0x4000 = temp_a5;
        *(void *)0x4000 = temp_a4_2;
        *(void *)0x4000 = temp_a3_2;
        *(void *)0x4000 = temp_a2_3;
        *(void *)0x4000 = temp_a1;
        *(void *)0x4000 = temp_a0;
        *(void *)0x4000 = (s32) arg0->unk50;
        *(void *)0x4000 = (s32) arg0->unk54;
        *(void *)0x4000 = (s32) arg0->unk58;
        *(void *)0x4000 = (s32) arg0->unk5C;
        __glkona_wait_rdata((s64) temp_a0, temp_a1, temp_a2_3, temp_a3_2, temp_a4_2, temp_a5, temp_a6, temp_a7_2);
        __glkon_ResumeSelectfeed();
        if (spA0->unk140 == 0) {
            __glkonHostCopy(arg0, spC0->unk7B64 + 8, (u8 *) spA8, (s32) sp98, spB0, spB8);
        }
    } else {
        temp_a2_4 = arg0->unkA8;
        if (temp_a2_4 != var_a0) {
            temp_a1_2 = arg0->unkA8;
            temp_a6_2 = temp_a1_2 < var_a0;
            if (temp_a6_2 == 0) {
                goto block_10;
            }
            __glSetError(0x502, (s32 *) temp_a1_2, temp_a2_4, (s32) temp_a3, (u8) (temp_lo + temp_a3), (u8) var_a5, temp_a6_2, var_a0 * var_a5);
        } else {
block_10:
            temp_a7_3 = arg0->unk2C;
            temp_a6_3 = arg0->unk30;
            temp_a5_2 = arg0->unk34;
            temp_a4_3 = arg0->unk38;
            temp_a3_3 = arg0->unk44;
            temp_a2_5 = arg0->unk3C;
            temp_a1_3 = arg0->unk40;
            temp_a0_2 = arg0->unk48;
            __glkon_SuspendSelectfeed(temp_a0_2, (u32) temp_a1_3, temp_a2_5, temp_a3_3, temp_a4_3, (u8) temp_a5_2, (u32) temp_a6_3, (u32) temp_a7_3, 0x52, 0x12, arg0->unk20, arg0->unk0, arg0->unk4, arg0->unk90, arg0->unk94, temp_a7_3, temp_a6_3, temp_a5_2, temp_a4_3, temp_a3_3, temp_a2_5, temp_a1_3, temp_a0_2, arg0->unk4C, arg0->unk50, arg0->unk54, arg0->unk58, arg0->unk5C, 1);
            if (__glKon_ioctl((s32) spC0, 0x2710, sp) < 0) {
                perror(&__rodata0 + 0xF0);
            }
            __glkon_ResumeSelectfeed();
        }
    }
}

void __glkonim_Bitmap(s32 arg0, s32 arg1, s64 arg6, f64 fparg2, f64 fparg3, f64 fparg4, f64 fparg5, ? arg_sp0) {
    f64 temp_f1;
    s32 *temp_a0;
    s32 *temp_a4;
    s32 temp_a1;
    s32 temp_a3_2;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_a4_2;
    s64 temp_a7;
    s64 temp_at;
    s64 temp_lo;
    s64 temp_sp;
    s64 temp_t9;

    arg_sp0.unk-168 = (s64) saved_reg_fp;
    arg_sp0.unk-150 = (s64) saved_reg_s1;
    arg_sp0.unk-160 = (s64) saved_reg_s0;
    arg_sp0.unk-158 = (s64) saved_reg_gp;
    arg_sp0.unk-170 = (s64) saved_reg_ra;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 >= 0) && (arg1 >= 0)) {
            if ((arg0 != 0) && (arg1 != 0)) {
                arg_sp0.unk-128 = fparg2;
                arg_sp0.unk-120 = fparg3;
                temp_a3 = (arg0 * arg1) < 0xC41;
                arg_sp0.unk-118 = fparg4;
                arg_sp0.unk-110 = fparg5;
                if (temp_a3 == 0) {
                    arg_sp0.unk-108 = arg0;
                    temp_a4 = &arg_sp0 - 0x108;
                    temp_a4->unk18 = 0x41;
                    arg_sp0.unk-148 = arg6;
                    temp_a4->unk10 = 0x1A00;
                    temp_a4->unkC = 0x1900;
                    temp_a4->unk4 = arg1;
                    temp_a7 = arg_sp0.unk-148;
                    temp_a4->unk14 = (s32) temp_a7;
                    if (__glKonParseInput(temp_a4, (s32 *) saved_reg_fp, temp_a3, temp_a4, 0x1900, 0x1A00, (s32) temp_a7) == 0) {
                        __glKonParseHostImage(&arg_sp0 - 0x108);
                        *(s32 *)0x4000 = 6;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = arg1;
                        temp_a0 = &arg_sp0 - 0x108;
                        *(void *)0x4000 = (s32) (arg_sp0.unk-148 & 3);
                        *(void *)0x4000 = (s32) temp_a0->unkB4;
                        *(void *)0x4000 = (s32) temp_a0->unkB8;
                        *(void *)0x4000 = (bitwise s32) arg_sp0.unk-128;
                        *(void *)0x4000 = (bitwise s32) arg_sp0.unk-120;
                        *(void *)0x4000 = (s32) (second half of f64);
                        *(void *)0x4000 = (bitwise s32) arg_sp0.unk-110;
                        __glKonSendData(temp_a0, arg0, (void *) arg1, 0);
                    }
                } else {
                    temp_t9 = (arg0 + 7) & ~7;
                    temp_lo = arg1 * ((s64) ((temp_t9 >= 0) ? temp_t9 : (temp_t9 + 7)) >> 3);
                    arg_sp0.unk-130 = temp_t9;
                    arg_sp0.unk-138 = temp_lo;
                    temp_sp = sp - ((temp_lo + 0xF) & ~0xF);
                    arg_sp0.unk-140 = temp_sp;
                    __glFillImage(*(s32 *)0x1010, arg0, arg1, 0x1900, 0x1A00, arg6, temp_sp, 6);
                    *(void *)0x4000 = 5;
                    temp_a4_2 = arg_sp0.unk-130;
                    *(void *)0x4000 = (s32) temp_a4_2;
                    *(void *)0x4000 = arg1;
                    temp_f1 = arg_sp0.unk-128;
                    temp_at = arg_sp0.unk-138;
                    *(void *)0x4000 = (bitwise s32) temp_f1;
                    temp_a3_2 = temp_at + 3;
                    *(void *)0x4000 = (s32) (second half of f64);
                    temp_a2 = temp_a3_2 < 0;
                    *(void *)0x4000 = (bitwise s32) ((f32) temp_f1 + (f32) arg_sp0.unk-118);
                    temp_a1 = (s32) ((temp_a2 == 0) ? temp_a3_2 : (temp_at + 6)) >> 2;
                    *(void *)0x4000 = (bitwise s32) ((bitwise f32) (second half of f64) + (f32) arg_sp0.unk-110);
                    *(void *)0x4000 = (s32) (temp_a1 + 1);
                    *(void *)0x4000 = (s32) temp_at;
                    __glkon_datavn(arg_sp0.unk-140, (u32) temp_a1, temp_a2, temp_a3_2, temp_a4_2, 5);
                }
            } else {
                *(void *)0x4000 = 6;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = 0;
                *(void *)0x4000 = (bitwise s32) fparg2;
                *(void *)0x4000 = (bitwise s32) fparg3;
                *(void *)0x4000 = (bitwise s32) fparg4;
                *(void *)0x4000 = (bitwise s32) fparg5;
            }
        } else {
            __glSetError(0x501, (s32 *) saved_reg_fp, (s32) arg6);
        }
    } else {
        __glSetError(0x502, (s32 *) saved_reg_fp, (s32) arg6);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x70, 0x74], gap at: 0x50. */
void __glkonlc_Bitmap(s32 arg0, s32 arg1, s64 arg6, f64 fparg2, f64 fparg3, f64 fparg4, f64 fparg5) {
    s64 sp78;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    s32 temp_a2;
    s32 temp_s2;
    s32 temp_t2;
    s32 var_s2;
    s64 temp_a0;
    s64 temp_a7;
    s64 temp_lo;
    void *temp_ra;

    temp_a2 = *(s32 *)0x1010;
    var_f4 = fparg5;
    var_f5 = fparg4;
    var_f6 = fparg3;
    var_f7 = fparg2;
    if ((arg0 >= 0) && (arg1 >= 0)) {
        temp_a7 = (arg0 + 7) & ~7;
        temp_lo = arg1 * ((s64) ((temp_a7 >= 0) ? temp_a7 : (temp_a7 + 7)) >> 3);
        if (((M2C_ERROR(/* Read from unset register $t9 */) + 0x13CE68)->unk-4084 >= temp_lo) && (arg0 != 0) && (arg1 != 0) && ((arg0 * arg1) < 0xC41)) {
            temp_s2 = temp_lo + 3;
            var_s2 = *(s32 *)0x1028;
            temp_t2 = (s32) ((temp_s2 >= 0) ? temp_s2 : (temp_lo + 6)) >> 2;
            sp20 = (s64) temp_t2;
            sp10 = arg6;
            sp18 = (s64) temp_a2;
            if (var_s2 < (temp_t2 + 9)) {
                unksp48 = fparg2;
                unksp50 = fparg3;
                unksp58 = fparg4;
                unksp60 = fparg5;
                unksp68 = temp_a7;
                sp78 = temp_lo;
                var_f5 = unksp58;
                var_f4 = second half of f64;
                var_f7 = unksp48;
                var_f6 = second half of f64;
                var_s2 = __glSPDlistSpace(0, temp_lo, temp_a2, arg6, temp_a7);
            }
            temp_ra = *(void **)0x1030;
            sp8 = (s64) temp_ra;
            temp_a0 = temp_ra + 0x24;
            sp0 = temp_a0;
            temp_ra->unk20 = (s32) temp_lo;
            temp_ra->unk18 = (f32) ((f32) var_f6 + (f32) var_f4);
            temp_ra->unk14 = (f32) ((f32) var_f7 + (f32) var_f5);
            temp_ra->unk10 = (bitwise f32) var_f6;
            temp_ra->unkC = (bitwise f32) var_f7;
            temp_ra->unk1C = (s32) (sp20 + 1);
            temp_ra->unk8 = arg1;
            temp_ra->unk4 = (s32) temp_a7;
            temp_ra->unk0 = 5;
            bzero(temp_a0, (s32) temp_lo);
            __glFillImage((s32) sp18, arg0, arg1, 0x1900, 0x1A00, sp10, sp0);
            *(void *)0x1028 = (s32) ((var_s2 - sp20) - 9);
            *(void *)0x1034 = (s32) (*(s32 *)0x1034 + sp20 + 9);
            *(void *)0x1030 = (void *) (sp8 + (sp20 * 4) + 0x24);
            sp18->unk13D4 = (s32) (sp18->unk13D4 | 1);
            return;
        }
        __glsplc_Bitmap(arg0, arg1, temp_a2, arg6, arg6, temp_a7, var_f7, var_f6, var_f5, var_f4);
    } else {
        __glsplc_InvalidValue(temp_a2, arg6);
    }
}

void __glkonle_Bitmap(void *arg1, s64 arg2) {
    s64 sp78;

    sp78 = arg2;
    __glKonSetPixelLEModes(sp);
    __glkonim_Bitmap(arg1->unk0, arg1->unk4);
    __glKonUnsetLEModes(sp);
}

void __glkonim_PolygonStipple(s64 arg0) {
    s64 spC0;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    void *sp4;
    s32 sp0;
    s32 temp_a6;

    spC0 = arg0;
    if (*(s32 *)0x1018 != 1) {
        sp10 = 0x1A00;
        sp4 = (void *)0x20;
        sp0 = 0x20;
        spC = 0x1900;
        sp18 = 1;
        sp14 = (s32) spC0;
        if (__glKonParseInput(sp, (s32 *)0x1A00, spC0) != 0) {

        } else if (__glKonParseErrorDraw(sp) == 0) {
            __glKonParseHostImage(sp);
            *(s32 *)0x4000 = 0xB;
            temp_a6 = spC0 & 3;
            *(void *)0x4000 = temp_a6;
            *(void *)0x4000 = spB4;
            *(void *)0x4000 = spB8;
            __glKonSendData(sp, sp0, sp4, 0, spB8, spB4, temp_a6, 0xB);
        }
    } else {
        __glSetError(0x502, (s32 *)1);
    }
}

void __glkonConvertPolygonStipple(s32 arg0) {
    __glKonSetPixelLEModes(sp);
    __glkonim_PolygonStipple(arg0 + 0x200);
    __glKonUnsetLEModes(sp);
}

void __glkonim_GetPolygonStipple(s64 arg0) {
    s64 sp1F8;
    s32 temp_a7;
    void *temp_s0;

    sp1F8 = arg0;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glkon_get_special(0x4B, 0);
        temp_a7 = temp_s0->unk7B64 + 8;
        __glInitImagePack(temp_s0, sp, 0x20, 0x20, 0x1900, 0x1A00, sp1F8, temp_a7, 0x1900, 0x1A00, temp_a7, 0);
        __glInitPacker(temp_s0, sp);
        __glInitUnpacker(temp_s0, sp);
        temp_s0->unk3154(temp_s0, sp, 1);
    } else {
        __glSetError(0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x40, 0x44, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c], gap at: 0x50. */
void DrawSubTexels(s32 *arg0, s64 arg2, s64 arg3, s64 arg4, u32 arg5) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a4;
    s32 temp_a4_12;
    s32 temp_a4_13;
    s32 temp_a4_14;
    s32 temp_a4_15;
    s32 temp_a4_3;
    s32 temp_a4_5;
    s32 temp_a4_7;
    s32 temp_a4_9;
    s32 temp_a5_10;
    s32 temp_a5_12;
    s32 temp_a5_6;
    s32 temp_a5_8;
    s32 temp_a7;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_ra_4;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_4;
    s32 temp_s3_5;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s4_4;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_a0;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a0_3;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_a3_4;
    s64 temp_a3_5;
    s64 temp_a3_6;
    s64 temp_a3_7;
    s64 temp_a3_8;
    s64 temp_a3_9;
    s64 temp_a4_11;
    s64 temp_a6_6;
    s64 temp_a7_2;
    s64 temp_s5;
    s64 temp_s5_2;
    s64 temp_s5_3;
    s64 temp_s5_4;
    s64 temp_v0_10;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 var_a2;
    s64 var_a3;
    s64 var_a4;
    s64 var_a5_2;
    s64 var_s5;
    u32 temp_a4_10;
    u32 temp_a4_2;
    u32 temp_a4_4;
    u32 temp_a4_6;
    u32 temp_a4_8;
    u32 temp_a5;
    u32 temp_a5_11;
    u32 temp_a5_13;
    u32 temp_a5_2;
    u32 temp_a5_3;
    u32 temp_a5_4;
    u32 temp_a5_5;
    u32 temp_a5_7;
    u32 temp_a5_9;
    u32 temp_a6;
    u32 temp_a6_10;
    u32 temp_a6_2;
    u32 temp_a6_3;
    u32 temp_a6_4;
    u32 temp_a6_5;
    u32 temp_a6_7;
    u32 temp_a6_8;
    u32 temp_a6_9;
    u32 var_a5;
    void *temp_a0_2;
    void *temp_a0_4;
    void *temp_a0_9;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_s1_5;
    void *temp_s3_3;
    void *temp_v0;
    void *temp_v0_2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    temp_s1 = *(void **)0x1010;
    temp_v0 = temp_s1 + 0x8AD0;
    if (!(temp_s1->unk704 & 0x100) || (temp_s1->unk564 != 0x81C5)) {
        goto block_2;
    }
    temp_a0 = arg0->unk20;
    if (temp_a0 != 0) {
        var_a2 = 0xDE0;
        if (temp_a0 != 0xDE1) {
            goto block_38;
        }
    }
    if (!(temp_s1->unk700 & 0x0C000000)) {
        var_a2 = 0xDE0;
block_38:
        if (temp_a0 == 0xDE0) {
            // Error: negative shift count
            // At instruction: bgez $a3, .L0d9546ac
            if (M2C_ERROR()) {
                goto block_40;
            }
        }
block_2:
        if (temp_s1->unk700 & 0x30000000) {
            var_a3 = temp_s1->unk7B5C & 4;
            var_a4 = 1;
            if (var_a3 != 0) {
                arg0->unkB4 = 1;
            } else {
                arg0->unkB4 = 0;
            }
            temp_a1 = arg0->unk0;
            temp_s5 = temp_v0->unk104 & ~7;
            var_a5 = temp_s5 < temp_a1;
            if (var_a5 != 0) {
                temp_f0 = (s32) ((f64) (second half of f64) / (second half of f64));
                arg0->unkB8 = 1;
                temp_s4 = arg0->unk14;
                temp_t9 = temp_v0->unk1A0->unk4;
                temp_s3 = arg0->unk6C;
                M2C_TRAP_IF(temp_s5 == 0);
                sp30 = (s64) temp_t9;
                sp28 = temp_a1 - (temp_f0 * temp_s5);
                if (temp_t9 == 0) {
                    __glkonim_PixelStorei(0xCF2, (u8) temp_a1, 0x30000000, (void *) var_a3, 1, var_a5);
                }
                if (temp_f0 > 0) {
                    var_s1 = 0;
                    var_v0 = arg0->unk6C;
                    do {
                        arg0->unk74 = (u32) ((temp_s5 + var_v0) - 1);
                        arg0->unk14 = (s32) (temp_s4 + (arg0->unkAC * (var_v0 - temp_s3)));
                        __glkonle_DrawPixels(arg0, temp_s5, (s64) arg0->unk4, 0);
                        var_s1 += 1;
                        var_v0 = arg0->unk74 + 1;
                        arg0->unk6C = var_v0;
                    } while (temp_f0 != var_s1);
                }
                temp_v0_2 = &__rodata0 + 0x28B0;
                temp_s1_2 = temp_v0_2 + 0x230;
                temp_a1_2 = temp_v0_2->unk230 & sp28;
                if (temp_a1_2 != 0) {
                    temp_a4 = arg0->unk6C;
                    temp_a5 = arg0->unkAC;
                    temp_a6 = temp_a4 - temp_s3;
                    temp_a4_2 = (temp_a1_2 + temp_a4) - 1;
                    arg0->unk74 = temp_a4_2;
                    arg0->unk14 = (s32) (temp_s4 + (temp_a5 * temp_a6));
                    __glkonle_DrawPixels(arg0, temp_a1_2, (s64) arg0->unk4, 0, (s64) temp_a4_2, temp_a5, temp_a6);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_a1_3 = temp_s1_2->unk4 & sp28;
                if (temp_a1_3 != 0) {
                    temp_a4_3 = arg0->unk6C;
                    temp_a5_2 = arg0->unkAC;
                    temp_a6_2 = temp_a4_3 - temp_s3;
                    temp_a4_4 = (temp_a1_3 + temp_a4_3) - 1;
                    arg0->unk74 = temp_a4_4;
                    arg0->unk14 = (s32) (temp_s4 + (temp_a5_2 * temp_a6_2));
                    __glkonle_DrawPixels(arg0, temp_a1_3, (s64) arg0->unk4, 0, (s64) temp_a4_4, temp_a5_2, temp_a6_2);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_a1_4 = temp_s1_2->unk8 & sp28;
                if (temp_a1_4 != 0) {
                    temp_a4_5 = arg0->unk6C;
                    temp_a5_3 = arg0->unkAC;
                    temp_a6_3 = temp_a4_5 - temp_s3;
                    temp_a4_6 = (temp_a1_4 + temp_a4_5) - 1;
                    arg0->unk74 = temp_a4_6;
                    arg0->unk14 = (s32) (temp_s4 + (temp_a5_3 * temp_a6_3));
                    __glkonle_DrawPixels(arg0, temp_a1_4, (s64) arg0->unk4, 0, (s64) temp_a4_6, temp_a5_3, temp_a6_3);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_a1_5 = temp_s1_2->unkC & sp28;
                if (temp_a1_5 != 0) {
                    temp_a4_7 = arg0->unk6C;
                    temp_a5_4 = arg0->unkAC;
                    temp_a6_4 = temp_a4_7 - temp_s3;
                    temp_a4_8 = (temp_a1_5 + temp_a4_7) - 1;
                    arg0->unk74 = temp_a4_8;
                    arg0->unk14 = (s32) (temp_s4 + (temp_a5_4 * temp_a6_4));
                    __glkonle_DrawPixels(arg0, temp_a1_5, (s64) arg0->unk4, 0, (s64) temp_a4_8, temp_a5_4, temp_a6_4);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                if (sp30 == 0) {
                    __glkonim_PixelStorei(0xCF2, (u8) sp30);
                }
            } else {
                goto block_22;
            }
        } else {
block_22:
            if (((u8) arg0->unk0 & 7) && ((u8) arg0->unk0 & ((u8) arg0->unk0 - 1))) {
                arg0->unkB8 = 1;
                temp_t3 = temp_v0->unk1A0->unk4;
                temp_s4_2 = arg0->unk14;
                temp_s3_2 = arg0->unk6C;
                sp30 = (s64) temp_t3;
                if (temp_t3 == 0) {
                    __glkonim_PixelStorei(0xCF2, (u8) arg0->unk0, 0x30000000, (void *) var_a3, var_a4, var_a5);
                }
                temp_a0_2 = &__rodata0 + 0x28B0;
                temp_s1_3 = temp_a0_2 + 0x230;
                temp_v0_3 = temp_a0_2->unk230 & arg0->unk0;
                if (temp_v0_3 != 0) {
                    temp_a4_9 = arg0->unk6C;
                    temp_a5_5 = arg0->unkAC;
                    temp_a6_5 = temp_a4_9 - temp_s3_2;
                    temp_a4_10 = (temp_v0_3 + temp_a4_9) - 1;
                    arg0->unk74 = temp_a4_10;
                    arg0->unk14 = (s32) (temp_s4_2 + (temp_a5_5 * temp_a6_5));
                    __glkonle_DrawPixels(arg0, temp_v0_3, (s64) arg0->unk4, 0, (s64) temp_a4_10, temp_a5_5, temp_a6_5);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_s5_2 = temp_s1_3->unk4 & arg0->unk0;
                if (temp_s5_2 != 0) {
                    temp_ra = arg0->unk6C;
                    arg0->unk14 = (s32) (temp_s4_2 + (arg0->unkAC * (temp_ra - temp_s3_2)));
                    arg0->unk74 = (u32) ((temp_s5_2 + temp_ra) - 1);
                    __glkonle_DrawPixels(arg0, temp_s5_2, (s64) arg0->unk4, 0);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_s5_3 = temp_s1_3->unk8 & arg0->unk0;
                if (temp_s5_3 != 0) {
                    temp_ra_2 = arg0->unk6C;
                    arg0->unk14 = (s32) (temp_s4_2 + (arg0->unkAC * (temp_ra_2 - temp_s3_2)));
                    arg0->unk74 = (u32) ((temp_s5_3 + temp_ra_2) - 1);
                    __glkonle_DrawPixels(arg0, temp_s5_3, (s64) arg0->unk4, 0);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_s5_4 = temp_s1_3->unkC & arg0->unk0;
                if (temp_s5_4 != 0) {
                    temp_ra_3 = arg0->unk6C;
                    arg0->unk14 = (s32) (temp_s4_2 + (arg0->unkAC * (temp_ra_3 - temp_s3_2)));
                    arg0->unk74 = (u32) ((temp_s5_4 + temp_ra_3) - 1);
                    __glkonle_DrawPixels(arg0, temp_s5_4, (s64) arg0->unk4, 0);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                if (sp30 == 0) {
                    __glkonim_PixelStorei(0xCF2, (u8) sp30);
                }
            } else {
                __glkonle_DrawPixels(arg0, (s64) (u8) arg0->unk0, (s64) arg0->unk4, 0, var_a4, var_a5);
            }
        }
    } else {
block_40:
        var_a0 = GetConvolutionFilter(temp_a0, 0xDE1, var_a2, (void *) var_a3)->unk40;
        temp_a1_6 = arg0->unk0;
        if (var_a0 != 0) {
            var_s5 = var_a0 - 1;
            if (var_s5 < temp_a1_6) {
                goto block_42;
            }
        } else if (temp_a1_6 > 0) {
            var_a0 = 1;
            var_s5 = 0;
block_42:
            if (temp_s1->unk7B5C & 4) {
                arg0->unkB4 = 1;
            } else {
                arg0->unkB4 = 0;
            }
            temp_s3_3 = temp_s1 + (var_a0 * 8);
            temp_v0_4 = var_s5 + ((temp_s3_3->unk8BD4 - var_s5) & ~7);
            sp10 = var_s5;
            if (temp_v0_4 >= temp_a1_6) {
                goto block_45;
            }
            sp8 = temp_v0_4;
            sp10 = var_s5;
            temp_v0_5 = GetSingleCompFromPipe(arg0->unk18, arg0->unk90, arg0->unk94, arg0->unk64);
            temp_a1_7 = arg0->unk0;
            temp_a4_11 = sp10 + (-8 & (temp_s3_3->unk8BD0 - sp10));
            if ((temp_v0_5 == 0) || (temp_a4_11 < temp_a1_7)) {
                arg0->unkB8 = 1;
                temp_s4_3 = arg0->unk14;
                temp_a7 = temp_s1->unk8C70->unk4;
                temp_s3_4 = arg0->unk6C;
                temp_a6_6 = temp_a1_7 - sp10;
                sp30 = (s64) temp_a7;
                if (temp_a7 == 0) {
                    unksp48 = temp_a6_6;
                    unksp58 = temp_a4_11;
                    __glkonim_PixelStorei(0xCF2, (u8) temp_a1_7);
                }
                temp_a0_3 = (temp_v0_5 != 0) ? temp_a4_11 : sp8;
                temp_a7_2 = temp_a0_3 - sp10;
                temp_f1 = (s32) ((f64) temp_a6_6 / (f64) temp_a7_2);
                unksp60 = temp_a7_2;
                M2C_TRAP_IF(temp_a7_2 == 0);
                sp20 = (s64) temp_f1;
                var_a5_2 = temp_a6_6 - (temp_f1 * temp_a7_2);
                if (temp_f1 > 0) {
                    unksp50 = var_a5_2;
                    var_v0_2 = arg0->unk6C;
                    var_s1_2 = 0;
                    sp0 = temp_a0_3;
                    do {
                        temp_a3 = var_v0_2 - temp_s3_4;
                        arg0->unk74 = (u32) ((unksp60 + var_v0_2) - 1);
                        arg0->unk14 = (s32) (temp_s4_3 + (arg0->unkAC * temp_a3));
                        __glkonle_DrawPixels(arg0, sp0, (s64) arg0->unk4, temp_a3);
                        var_s1_2 += 1;
                        var_v0_2 = arg0->unk74 + 1;
                        arg0->unk6C = var_v0_2;
                    } while (sp20 != var_s1_2);
                    var_a5_2 = unksp50;
                }
                temp_a0_4 = &__rodata0 + 0x28B0;
                temp_s1_4 = temp_a0_4 + 0x230;
                temp_v0_6 = temp_a0_4->unk230 & var_a5_2;
                if (temp_v0_6 != 0) {
                    temp_a0_5 = arg0->unk6C;
                    temp_a3_2 = temp_a0_5 - temp_s3_4;
                    arg0->unk74 = (u32) ((temp_v0_6 + temp_a0_5) - 1);
                    arg0->unk14 = (s32) (temp_s4_3 + (arg0->unkAC * temp_a3_2));
                    __glkonle_DrawPixels(arg0, temp_v0_6 + sp10, (s64) arg0->unk4, temp_a3_2);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_v0_7 = temp_s1_4->unk4 & var_a5_2;
                if (temp_v0_7 != 0) {
                    temp_a0_6 = arg0->unk6C;
                    temp_a3_3 = temp_a0_6 - temp_s3_4;
                    arg0->unk74 = (u32) ((temp_v0_7 + temp_a0_6) - 1);
                    arg0->unk14 = (s32) (temp_s4_3 + (arg0->unkAC * temp_a3_3));
                    __glkonle_DrawPixels(arg0, temp_v0_7 + sp10, (s64) arg0->unk4, temp_a3_3);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_v0_8 = temp_s1_4->unk8 & var_a5_2;
                if (temp_v0_8 != 0) {
                    temp_a0_7 = arg0->unk6C;
                    temp_a3_4 = temp_a0_7 - temp_s3_4;
                    arg0->unk74 = (u32) ((temp_v0_8 + temp_a0_7) - 1);
                    arg0->unk14 = (s32) (temp_s4_3 + (arg0->unkAC * temp_a3_4));
                    __glkonle_DrawPixels(arg0, temp_v0_8 + sp10, (s64) arg0->unk4, temp_a3_4);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                temp_v0_9 = temp_s1_4->unkC & var_a5_2;
                if (temp_v0_9 != 0) {
                    temp_a0_8 = arg0->unk6C;
                    temp_a3_5 = temp_a0_8 - temp_s3_4;
                    arg0->unk74 = (u32) ((temp_v0_9 + temp_a0_8) - 1);
                    arg0->unk14 = (s32) (temp_s4_3 + (arg0->unkAC * temp_a3_5));
                    __glkonle_DrawPixels(arg0, temp_v0_9 + sp10, (s64) arg0->unk4, temp_a3_5, sp30);
                    arg0->unk6C = (s32) (arg0->unk74 + 1);
                }
                if (sp30 == 0) {
                    __glkonim_PixelStorei(0xCF2, (u8) sp30);
                }
            } else {
block_45:
                temp_v0_10 = (u8) arg0->unk0 - sp10;
                if ((temp_v0_10 & 7) && (temp_v0_10 & (temp_v0_10 - 1))) {
                    arg0->unkB8 = 1;
                    temp_s4_4 = arg0->unk14;
                    temp_ra_4 = temp_s1->unk8C70->unk4;
                    temp_s3_5 = arg0->unk6C;
                    sp18 = temp_v0_10;
                    sp30 = (s64) temp_ra_4;
                    if (temp_ra_4 == 0) {
                        __glkonim_PixelStorei(0xCF2, (u8) arg0->unk0);
                    }
                    temp_a0_9 = &__rodata0 + 0x28B0;
                    temp_s1_5 = temp_a0_9 + 0x230;
                    temp_v0_11 = temp_a0_9->unk230 & sp18;
                    if (temp_v0_11 != 0) {
                        temp_a5_6 = arg0->unk6C;
                        temp_a6_7 = arg0->unkAC;
                        temp_a3_6 = temp_a5_6 - temp_s3_5;
                        temp_a5_7 = (temp_v0_11 + temp_a5_6) - 1;
                        arg0->unk74 = temp_a5_7;
                        temp_a4_12 = temp_s4_4 + (temp_a6_7 * temp_a3_6);
                        arg0->unk14 = temp_a4_12;
                        __glkonle_DrawPixels(arg0, temp_v0_11 + sp10, (s64) arg0->unk4, temp_a3_6, (s64) temp_a4_12, temp_a5_7, temp_a6_7);
                        arg0->unk6C = (s32) (arg0->unk74 + 1);
                    }
                    temp_v0_12 = temp_s1_5->unk4 & sp18;
                    if (temp_v0_12 != 0) {
                        temp_a5_8 = arg0->unk6C;
                        temp_a6_8 = arg0->unkAC;
                        temp_a3_7 = temp_a5_8 - temp_s3_5;
                        temp_a5_9 = (temp_v0_12 + temp_a5_8) - 1;
                        arg0->unk74 = temp_a5_9;
                        temp_a4_13 = temp_s4_4 + (temp_a6_8 * temp_a3_7);
                        arg0->unk14 = temp_a4_13;
                        __glkonle_DrawPixels(arg0, temp_v0_12 + sp10, (s64) arg0->unk4, temp_a3_7, (s64) temp_a4_13, temp_a5_9, temp_a6_8);
                        arg0->unk6C = (s32) (arg0->unk74 + 1);
                    }
                    temp_v0_13 = temp_s1_5->unk8 & sp18;
                    if (temp_v0_13 != 0) {
                        temp_a5_10 = arg0->unk6C;
                        temp_a6_9 = arg0->unkAC;
                        temp_a3_8 = temp_a5_10 - temp_s3_5;
                        temp_a5_11 = (temp_v0_13 + temp_a5_10) - 1;
                        arg0->unk74 = temp_a5_11;
                        temp_a4_14 = temp_s4_4 + (temp_a6_9 * temp_a3_8);
                        arg0->unk14 = temp_a4_14;
                        __glkonle_DrawPixels(arg0, temp_v0_13 + sp10, (s64) arg0->unk4, temp_a3_8, (s64) temp_a4_14, temp_a5_11, temp_a6_9);
                        arg0->unk6C = (s32) (arg0->unk74 + 1);
                    }
                    temp_v0_14 = temp_s1_5->unkC & sp18;
                    if (temp_v0_14 != 0) {
                        temp_a5_12 = arg0->unk6C;
                        temp_a6_10 = arg0->unkAC;
                        temp_a3_9 = temp_a5_12 - temp_s3_5;
                        temp_a5_13 = (temp_v0_14 + temp_a5_12) - 1;
                        arg0->unk74 = temp_a5_13;
                        temp_a4_15 = temp_s4_4 + (temp_a6_10 * temp_a3_9);
                        arg0->unk14 = temp_a4_15;
                        __glkonle_DrawPixels(arg0, temp_v0_14 + sp10, (s64) arg0->unk4, temp_a3_9, (s64) temp_a4_15, temp_a5_13, temp_a6_10);
                        arg0->unk6C = (s32) (arg0->unk74 + 1);
                    }
                    if (sp30 == 0) {
                        __glkonim_PixelStorei(0xCF2, (u8) sp30);
                    }
                } else {
                    __glkonle_DrawPixels(arg0, (s64) (u8) arg0->unk0, (s64) arg0->unk4, 0);
                }
            }
        }
    }
}

void __glKonDrawTexels3D(void *arg0) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 var_a4;
    s64 temp_lo;
    s64 temp_v0;
    void *temp_a3;

    arg0->unk18 = 0x81;
    sp30 = (s64) arg0;
    sp28 = *(s32 *)0x1010 + 0x8AD0;
    if (__glKonParseInput((s32 *)0x81, (s32 *)0x13BE28) != 0) {

    } else if ((__glKonParseErrorDraw((s32 *) sp30) == 0) && (sp30->unk0 != 0) && (sp30->unk4 != 0)) {
        __glKonParseHostImage((s32 *) sp30);
        temp_a2 = sp30->unk8;
        if (temp_a2 >= 2) {
            temp_a3 = sp28->unk19C;
            var_a4 = temp_a3->unk18;
            sp0 = (s64) sp30->unk14;
            if (var_a4 == 0) {
                var_a4 = sp30->unk4;
            }
            temp_lo = sp30->unkA8 * var_a4;
            sp10 = (s64) sp30->unk74;
            sp8 = (s64) sp30->unk6C;
            sp18 = temp_lo;
            sp30->unk14 = (s32) (sp0 + (temp_lo * temp_a3->unk14));
            if (temp_a2 > 0) {
                sp20 = 0;
                do {
                    __glkonim_GetPolygonStipple(sp30);
                    sp30->unk74 = (s32) sp10;
                    sp30->unk6C = (s32) sp8;
                    temp_v0 = sp20 + 1;
                    sp20 = temp_v0;
                    sp30->unk7C = (s32) (sp30->unk7C + 1);
                    sp30->unk14 = (s32) (sp18 + sp30->unk14);
                } while (temp_v0 < sp30->unk8);
            }
            sp30->unk14 = (s32) sp0;
            return;
        }
        __glkonim_GetPolygonStipple(sp30);
    }
}

void __glKonCopyTexImage(void *arg0, s32 arg1) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *var_a4_2;
    s32 *var_v0_2;
    s32 *var_v0_3;
    s32 *var_v0_5;
    s32 *var_v0_6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a6;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_v0_4;
    s64 temp_a0_4;
    s64 temp_a1_2;
    s64 temp_t1_2;
    s64 temp_v0;
    s64 var_a4;
    s64 var_v0;
    void *temp_s1;
    void *temp_s4;
    void *temp_s4_2;
    void *temp_s4_3;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *var_a3;

    var_a1 = arg1;
    temp_s1 = *(void **)0x1010;
    if (temp_s1->unkC94 != 0) {
        if (temp_s1->unk704 & 0x20) {
            var_a1 = arg0->unk84 | 0x8000;
            arg0->unk84 = var_a1;
        }
        if (!((*(void *)0x1010)->unk704 & 0x100) || ((*(void *)0x1010)->unk564 != 0x81C5)) {
            goto block_5;
        }
        temp_a0 = arg0->unk20;
        if (temp_a0 != 0) {
            var_a3 = (void *)0xDE0;
            if (temp_a0 != 0xDE1) {
                goto block_35;
            }
        }
        var_a4 = 0x0C000000;
        var_a3 = (void *) ((*(void *)0x1010)->unk700 & 0x0C000000);
        if (var_a3 == NULL) {
            var_a3 = (void *)0xDE0;
block_35:
            if (temp_a0 == 0xDE0) {
                // Error: negative shift count
                // At instruction: bgez $a4, .L0d9553c8
                if (M2C_ERROR()) {
                    goto block_37;
                }
            }
block_5:
            temp_a3 = arg0->unk0;
            if (temp_s1->unk700 & 0x30000000) {
                temp_a0_2 = arg0->unk84 | 4;
                arg0->unk84 = temp_a0_2;
                if (temp_s1->unkD84 != -3) {
                    if ((arg0->unk18 & 2) && (temp_s1->unkCB8 != temp_s1->unkCBC)) {
                        var_a4_2 = temp_s1 + 0x8B94;
                    } else {
                        var_a4_2 = temp_s1 + 0x8BD4;
                    }
                } else {
                    var_a4_2 = temp_s1 + 0x8B94;
                }
                temp_a5 = *var_a4_2 & ~7;
                var_a6 = temp_a3 & 7;
                if (temp_a5 < temp_a3) {
                    temp_f0 = (s32) ((f64) (second half of f64) / (second half of f64));
                    M2C_TRAP_IF(temp_a5 == 0);
                    temp_v0 = temp_a3 - (temp_f0 * temp_a5);
                    if (temp_f0 > 0) {
                        temp_s3 = arg0->unk10;
                        temp_s2 = arg0->unk8C;
                        temp_t3 = arg0->unk88;
                        temp_t2 = arg0->unk80;
                        temp_t1 = arg0->unk7C;
                        temp_t0 = arg0->unk78;
                        temp_a7 = arg0->unk70;
                        temp_t9 = arg0->unk68;
                        temp_s1_2 = arg0->unk64;
                        temp_ra = arg0->unk4;
                        temp_t8 = arg0->unk28;
                        var_a3_2 = arg0->unk24;
                        temp_a1 = arg0->unk6C;
                        sp28 = (s64) temp_f0;
                        sp20 = (s64) temp_a1;
                        var_a4_3 = 0;
                        sp30 = (s64) temp_a1;
                        if (temp_f0 & 1) {
                            *(void *)0x4000 = 0xFD;
                            *(void *)0x4000 = var_a3_2;
                            var_a3_2 += temp_a5;
                            arg0->unk24 = var_a3_2;
                            *(void *)0x4000 = temp_t8;
                            *(void *)0x4000 = temp_a5;
                            *(void *)0x4000 = temp_ra;
                            *(void *)0x4000 = 0;
                            *(void *)0x4000 = temp_s1_2;
                            *(void *)0x4000 = temp_t9;
                            *(void *)0x4000 = (s32) sp20;
                            *(void *)0x4000 = temp_a7;
                            temp_a1_2 = temp_a5 + sp20;
                            sp30 = temp_a1_2;
                            arg0->unk6C = (s32) temp_a1_2;
                            temp_a1_3 = temp_a1_2 - 1;
                            *(void *)0x4000 = temp_a1_3;
                            *(void *)0x4000 = temp_t0;
                            *(void *)0x4000 = temp_t1;
                            *(void *)0x4000 = temp_t2;
                            *(void *)0x4000 = temp_a0_2;
                            *(void *)0x4000 = temp_t3;
                            *(void *)0x4000 = temp_s2;
                            *(void *)0x4000 = temp_s3;
                            var_a4_3 = 1;
                            arg0->unk74 = temp_a1_3;
                        }
                        sp10 = temp_v0;
                        sp18 = sp30;
                        if ((sp28 >> 1) != 0) {
                            var_v0 = sp30;
                            do {
                                *(void *)0x4000 = 0xFD;
                                temp_at = var_a3_2 + temp_a5;
                                *(void *)0x4000 = var_a3_2;
                                var_a3_2 = temp_at + temp_a5;
                                arg0->unk24 = var_a3_2;
                                *(void *)0x4000 = temp_t8;
                                *(void *)0x4000 = temp_a5;
                                *(void *)0x4000 = temp_ra;
                                *(void *)0x4000 = 0;
                                *(void *)0x4000 = temp_s1_2;
                                *(void *)0x4000 = temp_t9;
                                *(void *)0x4000 = (s32) var_v0;
                                temp_a2 = temp_a5 + var_v0;
                                var_v0 = temp_a5 + temp_a2;
                                arg0->unk6C = (s32) var_v0;
                                *(void *)0x4000 = temp_a7;
                                *(void *)0x4000 = (s32) (temp_a2 - 1);
                                *(void *)0x4000 = temp_t0;
                                *(void *)0x4000 = temp_t1;
                                *(void *)0x4000 = temp_t2;
                                *(void *)0x4000 = temp_a0_2;
                                *(void *)0x4000 = temp_t3;
                                *(void *)0x4000 = temp_s2;
                                *(void *)0x4000 = temp_s3;
                                *(void *)0x4000 = 0xFD;
                                *(void *)0x4000 = temp_at;
                                *(void *)0x4000 = temp_t8;
                                *(void *)0x4000 = temp_a5;
                                *(void *)0x4000 = temp_ra;
                                *(void *)0x4000 = 0;
                                *(void *)0x4000 = temp_s1_2;
                                *(void *)0x4000 = temp_t9;
                                *(void *)0x4000 = temp_a2;
                                *(void *)0x4000 = temp_a7;
                                temp_a1_4 = var_v0 - 1;
                                *(void *)0x4000 = temp_a1_4;
                                *(void *)0x4000 = temp_t0;
                                *(void *)0x4000 = temp_t1;
                                *(void *)0x4000 = temp_t2;
                                *(void *)0x4000 = temp_a0_2;
                                *(void *)0x4000 = temp_t3;
                                var_a4_3 += 2;
                                *(void *)0x4000 = temp_s2;
                                *(void *)0x4000 = temp_s3;
                                arg0->unk74 = temp_a1_4;
                            } while (temp_f0 != var_a4_3);
                        }
                    } else {
                        sp10 = temp_v0;
                    }
                    temp_v0_2 = &__rodata0 + 0x28B0;
                    var_v0_2 = temp_v0_2 + 0x230;
                    do {
                        temp_a3_2 = *var_v0_2 & sp10;
                        var_v0_2 += 4;
                        if (temp_a3_2 != 0) {
                            *(void *)0x4000 = 0xFD;
                            temp_a2_2 = arg0->unk24;
                            *(void *)0x4000 = temp_a2_2;
                            *(void *)0x4000 = (s32) arg0->unk28;
                            *(void *)0x4000 = temp_a3_2;
                            *(void *)0x4000 = (s32) arg0->unk4;
                            *(void *)0x4000 = 0;
                            *(void *)0x4000 = (s32) arg0->unk64;
                            *(void *)0x4000 = (s32) arg0->unk68;
                            temp_t9_2 = arg0->unk6C;
                            *(void *)0x4000 = temp_t9_2;
                            *(void *)0x4000 = (s32) arg0->unk70;
                            arg0->unk24 = (s32) (temp_a2_2 + temp_a3_2);
                            temp_a5_2 = temp_a3_2 + temp_t9_2;
                            arg0->unk6C = temp_a5_2;
                            temp_a5_3 = temp_a5_2 - 1;
                            *(void *)0x4000 = temp_a5_3;
                            *(void *)0x4000 = (s32) arg0->unk78;
                            *(void *)0x4000 = (s32) arg0->unk7C;
                            *(void *)0x4000 = (s32) arg0->unk80;
                            *(void *)0x4000 = temp_a0_2;
                            *(void *)0x4000 = (s32) arg0->unk88;
                            *(void *)0x4000 = (s32) arg0->unk8C;
                            *(void *)0x4000 = (s32) arg0->unk10;
                            arg0->unk74 = temp_a5_3;
                        }
                    } while (var_v0_2 != (temp_v0_2 + 0x240));
                } else {
                    goto block_26;
                }
            } else {
                var_a6 = temp_a3 & 7;
block_26:
                if (var_a6 != 0) {
                    if (temp_a3 & (temp_a3 - 1)) {
                        temp_v0_3 = &__rodata0 + 0x28B0;
                        var_v0_3 = temp_v0_3 + 0x230;
                        do {
                            temp_a0_3 = *var_v0_3 & temp_a3;
                            var_v0_3 += 4;
                            if (temp_a0_3 != 0) {
                                *(void *)0x4000 = 0xFD;
                                temp_v1 = arg0->unk24;
                                *(void *)0x4000 = temp_v1;
                                *(void *)0x4000 = (s32) arg0->unk28;
                                *(void *)0x4000 = temp_a0_3;
                                *(void *)0x4000 = (s32) arg0->unk4;
                                *(void *)0x4000 = 0;
                                *(void *)0x4000 = (s32) arg0->unk64;
                                *(void *)0x4000 = (s32) arg0->unk68;
                                temp_s1_3 = arg0->unk6C;
                                *(void *)0x4000 = temp_s1_3;
                                *(void *)0x4000 = (s32) arg0->unk70;
                                arg0->unk24 = (s32) (temp_v1 + temp_a0_3);
                                temp_a1_5 = temp_a0_3 + temp_s1_3;
                                arg0->unk6C = temp_a1_5;
                                temp_a1_6 = temp_a1_5 - 1;
                                *(void *)0x4000 = temp_a1_6;
                                *(void *)0x4000 = (s32) arg0->unk78;
                                *(void *)0x4000 = (s32) arg0->unk7C;
                                *(void *)0x4000 = (s32) arg0->unk80;
                                *(void *)0x4000 = (s32) arg0->unk84;
                                *(void *)0x4000 = (s32) arg0->unk88;
                                *(void *)0x4000 = (s32) arg0->unk8C;
                                *(void *)0x4000 = (s32) arg0->unk10;
                                arg0->unk74 = temp_a1_6;
                            }
                        } while (var_v0_3 != (temp_v0_3 + 0x240));
                    } else {
                        /* Duplicate return node #44. Try simplifying control flow for better match */
                        *(void *)0x4000 = 0xFD;
                        *(void *)0x4000 = (s32) arg0->unk24;
                        *(void *)0x4000 = (s32) arg0->unk28;
                        *(void *)0x4000 = temp_a3;
                        *(void *)0x4000 = (s32) arg0->unk4;
                        *(void *)0x4000 = 0;
                        *(void *)0x4000 = (s32) arg0->unk64;
                        *(void *)0x4000 = (s32) arg0->unk68;
                        *(void *)0x4000 = (s32) arg0->unk6C;
                        *(void *)0x4000 = (s32) arg0->unk70;
                        *(void *)0x4000 = (s32) arg0->unk74;
                        *(void *)0x4000 = (s32) arg0->unk78;
                        *(void *)0x4000 = (s32) arg0->unk7C;
                        *(void *)0x4000 = (s32) arg0->unk80;
                        *(void *)0x4000 = (s32) arg0->unk84;
                        *(void *)0x4000 = (s32) arg0->unk88;
                        *(void *)0x4000 = (s32) arg0->unk8C;
                        *(void *)0x4000 = (s32) arg0->unk10;
                    }
                } else {
                    *(void *)0x4000 = 0xFD;
                    *(void *)0x4000 = (s32) arg0->unk24;
                    *(void *)0x4000 = (s32) arg0->unk28;
                    *(void *)0x4000 = temp_a3;
                    *(void *)0x4000 = (s32) arg0->unk4;
                    *(void *)0x4000 = 0;
                    *(void *)0x4000 = (s32) arg0->unk64;
                    *(void *)0x4000 = (s32) arg0->unk68;
                    *(void *)0x4000 = (s32) arg0->unk6C;
                    *(void *)0x4000 = (s32) arg0->unk70;
                    *(void *)0x4000 = (s32) arg0->unk74;
                    *(void *)0x4000 = (s32) arg0->unk78;
                    *(void *)0x4000 = (s32) arg0->unk7C;
                    *(void *)0x4000 = (s32) arg0->unk80;
                    *(void *)0x4000 = (s32) arg0->unk84;
                    *(void *)0x4000 = (s32) arg0->unk88;
                    *(void *)0x4000 = (s32) arg0->unk8C;
                    *(void *)0x4000 = (s32) arg0->unk10;
                }
            }
        } else {
block_37:
            temp_a5_4 = arg0->unk84 | 4;
            arg0->unk84 = temp_a5_4;
            temp_a6 = GetConvolutionFilter(temp_a0, var_a1, 0xDE1, var_a3, (u32) var_a4, (u32) temp_a5_4)->unk40;
            temp_a3_3 = arg0->unk0;
            temp_a0_4 = temp_a6 - 1;
            temp_a4 = (temp_a6 == 0) ? 1 : temp_a6;
            if (temp_a0_4 < temp_a3_3) {
                if (temp_s1->unkD84 != -3) {
                    var_s4 = temp_a4 * 8;
                    if ((arg0->unk18 & 2) && (var_s4 = temp_a4 * 8, (temp_s1->unkCB8 != temp_s1->unkCBC))) {
                        temp_s4 = temp_s1 + (temp_a4 * 8);
                        var_a4_4 = temp_s4->unk8B94;
                        var_s4_2 = temp_s4->unk8B90;
                    } else {
                        temp_s4_2 = temp_s1 + var_s4;
                        var_a4_4 = temp_s4_2->unk8BD4;
                        var_s4_2 = temp_s4_2->unk8BD0;
                    }
                } else {
                    temp_s4_3 = temp_s1 + (temp_a4 * 8);
                    var_a4_4 = temp_s4_3->unk8B94;
                    var_s4_2 = temp_s4_3->unk8B90;
                }
                temp_s1_4 = temp_a0_4 + ((var_a4_4 - temp_a0_4) & ~7);
                if (temp_s1_4 >= temp_a3_3) {
                    goto block_51;
                }
                unksp50 = temp_a0_4;
                temp_v0_4 = GetSingleCompFromPipe(0x82U, 0U, 0U, (u32) arg0->unk64, var_a4_4);
                temp_a3_4 = arg0->unk0;
                temp_a4_2 = temp_a0_4 + (-8 & (var_s4_2 - temp_a0_4));
                if ((temp_v0_4 == 0) || (temp_a4_2 < temp_a3_4)) {
                    temp_a7_2 = temp_a3_4 - temp_a0_4;
                    temp_a5_5 = (temp_v0_4 != 0) ? temp_a4_2 : temp_s1_4;
                    temp_t1_2 = temp_a5_5 - temp_a0_4;
                    temp_f1 = (s32) ((f64) temp_a7_2 / (f64) temp_t1_2);
                    arg0->unk0 = temp_a5_5;
                    sp8 = temp_t1_2;
                    M2C_TRAP_IF(temp_t1_2 == 0);
                    sp10 = temp_a7_2 - (temp_f1 * temp_t1_2);
                    if (temp_f1 > 0) {
                        var_v0_4 = arg0->unk6C;
                        var_a3_3 = arg0->unk24;
                        sp0 = (s64) arg0->unk84;
                        var_a4_5 = 0;
                        do {
                            *(void *)0x4000 = 0xFD;
                            *(void *)0x4000 = var_a3_3;
                            *(void *)0x4000 = (s32) arg0->unk28;
                            *(void *)0x4000 = temp_a5_5;
                            *(void *)0x4000 = (s32) arg0->unk4;
                            *(void *)0x4000 = 0;
                            *(void *)0x4000 = (s32) arg0->unk64;
                            *(void *)0x4000 = (s32) arg0->unk68;
                            *(void *)0x4000 = var_v0_4;
                            *(void *)0x4000 = (s32) arg0->unk70;
                            var_a3_3 += sp8;
                            arg0->unk24 = var_a3_3;
                            var_v0_4 += sp8;
                            arg0->unk6C = var_v0_4;
                            temp_at_2 = var_v0_4 - 1;
                            *(void *)0x4000 = temp_at_2;
                            *(void *)0x4000 = (s32) arg0->unk78;
                            *(void *)0x4000 = (s32) arg0->unk7C;
                            *(void *)0x4000 = (s32) arg0->unk80;
                            *(void *)0x4000 = (s32) sp0;
                            var_a4_5 += 1;
                            *(void *)0x4000 = (s32) arg0->unk88;
                            *(void *)0x4000 = (s32) arg0->unk8C;
                            *(void *)0x4000 = (s32) arg0->unk10;
                            arg0->unk74 = temp_at_2;
                        } while (var_a4_5 < temp_f1);
                    }
                    temp_v0_5 = &__rodata0 + 0x28B0;
                    var_v0_5 = temp_v0_5 + 0x230;
                    do {
                        temp_a3_5 = *var_v0_5 & sp10;
                        if (temp_a3_5 != 0) {
                            temp_a2_3 = arg0->unk24;
                            temp_ra_2 = arg0->unk6C;
                            arg0->unk24 = (s32) (temp_a2_3 + temp_a3_5);
                            temp_a6_2 = temp_a3_5 + temp_ra_2;
                            arg0->unk6C = temp_a6_2;
                            *(void *)0x4000 = 0xFD;
                            *(void *)0x4000 = temp_a2_3;
                            *(void *)0x4000 = (s32) arg0->unk28;
                            *(void *)0x4000 = (s32) (temp_a3_5 + temp_a0_4);
                            *(void *)0x4000 = (s32) arg0->unk4;
                            *(void *)0x4000 = 0;
                            *(void *)0x4000 = (s32) arg0->unk64;
                            *(void *)0x4000 = (s32) arg0->unk68;
                            *(void *)0x4000 = temp_ra_2;
                            *(void *)0x4000 = (s32) arg0->unk70;
                            temp_a6_3 = temp_a6_2 - 1;
                            *(void *)0x4000 = temp_a6_3;
                            *(void *)0x4000 = (s32) arg0->unk78;
                            *(void *)0x4000 = (s32) arg0->unk7C;
                            *(void *)0x4000 = (s32) arg0->unk80;
                            *(void *)0x4000 = (s32) arg0->unk84;
                            *(void *)0x4000 = (s32) arg0->unk88;
                            *(void *)0x4000 = (s32) arg0->unk8C;
                            *(void *)0x4000 = (s32) arg0->unk10;
                            arg0->unk74 = temp_a6_3;
                        }
                        var_v0_5 += 4;
                    } while (var_v0_5 != (temp_v0_5 + 0x240));
                } else {
block_51:
                    temp_a5_6 = arg0->unk0 - temp_a0_4;
                    if (temp_a5_6 & 7) {
                        if (temp_a5_6 & (temp_a5_6 - 1)) {
                            temp_v0_6 = &__rodata0 + 0x28B0;
                            var_v0_6 = temp_v0_6 + 0x230;
                            do {
                                temp_a3_6 = *var_v0_6 & temp_a5_6;
                                var_v0_6 += 4;
                                if (temp_a3_6 != 0) {
                                    *(s32 *)0x4000 = 0xFD;
                                    temp_a1_7 = arg0->unk24;
                                    *(void *)0x4000 = temp_a1_7;
                                    *(void *)0x4000 = (s32) arg0->unk28;
                                    *(void *)0x4000 = (s32) (temp_a3_6 + temp_a0_4);
                                    temp_ra_3 = arg0->unk6C;
                                    temp_t8_2 = temp_a3_6 + temp_ra_3;
                                    arg0->unk6C = temp_t8_2;
                                    arg0->unk24 = (s32) (temp_a1_7 + temp_a3_6);
                                    temp_t8_3 = temp_t8_2 - 1;
                                    arg0->unk74 = temp_t8_3;
                                    *(void *)0x4000 = (s32) arg0->unk4;
                                    *(void *)0x4000 = 0;
                                    *(void *)0x4000 = (s32) arg0->unk64;
                                    *(void *)0x4000 = (s32) arg0->unk68;
                                    *(void *)0x4000 = temp_ra_3;
                                    *(void *)0x4000 = (s32) arg0->unk70;
                                    *(void *)0x4000 = temp_t8_3;
                                    *(void *)0x4000 = (s32) arg0->unk78;
                                    *(void *)0x4000 = (s32) arg0->unk7C;
                                    *(void *)0x4000 = (s32) arg0->unk80;
                                    *(void *)0x4000 = (s32) arg0->unk84;
                                    *(void *)0x4000 = (s32) arg0->unk88;
                                    *(void *)0x4000 = (s32) arg0->unk8C;
                                    *(void *)0x4000 = (s32) arg0->unk10;
                                }
                            } while (var_v0_6 != (temp_v0_6 + 0x240));
                        } else {
                            /* Duplicate return node #70. Try simplifying control flow for better match */
                            *(void *)0x4000 = 0xFD;
                            *(void *)0x4000 = (s32) arg0->unk24;
                            *(void *)0x4000 = (s32) arg0->unk28;
                            *(void *)0x4000 = arg0->unk0;
                            *(void *)0x4000 = (s32) arg0->unk4;
                            *(void *)0x4000 = 0;
                            *(void *)0x4000 = (s32) arg0->unk64;
                            *(void *)0x4000 = (s32) arg0->unk68;
                            *(void *)0x4000 = (s32) arg0->unk6C;
                            *(void *)0x4000 = (s32) arg0->unk70;
                            *(void *)0x4000 = (s32) arg0->unk74;
                            *(void *)0x4000 = (s32) arg0->unk78;
                            *(void *)0x4000 = (s32) arg0->unk7C;
                            *(void *)0x4000 = (s32) arg0->unk80;
                            *(void *)0x4000 = (s32) arg0->unk84;
                            *(void *)0x4000 = (s32) arg0->unk88;
                            *(void *)0x4000 = (s32) arg0->unk8C;
                            *(void *)0x4000 = (s32) arg0->unk10;
                        }
                    } else {
                        *(void *)0x4000 = 0xFD;
                        *(void *)0x4000 = (s32) arg0->unk24;
                        *(void *)0x4000 = (s32) arg0->unk28;
                        *(void *)0x4000 = arg0->unk0;
                        *(void *)0x4000 = (s32) arg0->unk4;
                        *(void *)0x4000 = 0;
                        *(void *)0x4000 = (s32) arg0->unk64;
                        *(void *)0x4000 = (s32) arg0->unk68;
                        *(void *)0x4000 = (s32) arg0->unk6C;
                        *(void *)0x4000 = (s32) arg0->unk70;
                        *(void *)0x4000 = (s32) arg0->unk74;
                        *(void *)0x4000 = (s32) arg0->unk78;
                        *(void *)0x4000 = (s32) arg0->unk7C;
                        *(void *)0x4000 = (s32) arg0->unk80;
                        *(void *)0x4000 = (s32) arg0->unk84;
                        *(void *)0x4000 = (s32) arg0->unk88;
                        *(void *)0x4000 = (s32) arg0->unk8C;
                        *(void *)0x4000 = (s32) arg0->unk10;
                    }
                }
            }
        }
    }
}

s32 __glkonInvalidBytes(void *arg0) {
    s32 temp_a3;
    s32 temp_a7;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a5;
    void *temp_a4;
    void *temp_a6;

    temp_a6 = &__rodata0 + 0x28B0;
    temp_a4 = (*(void **)0x1010)->unk8C6C;
    temp_a3 = (temp_a6 + (arg0->unk94 * 4))->unk70;
    if (arg0->unk9C & 0x1F00) {
        var_a5 = temp_a3;
    } else {
        var_a5 = (temp_a6 + (arg0->unk90 * 4))->unk30 * temp_a3;
    }
    temp_a7 = temp_a4->unk4;
    if (temp_a7 != 0) {
        temp_v0_2 = temp_a4->unk10;
        temp_t1 = (temp_a6 + (temp_v0_2 * 4))->unk120 & (var_a5 * temp_a7);
        return (temp_t1 == 0) ? 0 : (temp_v0_2 - temp_t1);
    }
    temp_v0 = temp_a4->unk10;
    temp_t3 = (temp_a6 + (temp_v0 * 4))->unk120 & (var_a5 * arg0->unk0);
    return (temp_t3 == 0) ? 0 : (temp_v0 - temp_t3);
}

s32 __glkonNumCompInPix(s32 arg0) {
    return *(&__rodata0 + 0x28E0 + (arg0 * 4));
}

s32 __glkonNumByteInType(s32 arg0) {
    return *(&__rodata0 + 0x2920 + (arg0 * 4));
}

void __glkonPixSize(void *arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_t0;
    s32 var_a1;
    s32 var_a5;
    void *temp_a3;
    void *temp_a6;
    void *temp_s8;

    sp20 = arg2;
    sp28 = arg1;
    temp_s8 = *(s32 *)0x1010 + 0x8AD0;
    __glKonParseInput();
    temp_a6 = &__rodata0 + 0x28B0;
    temp_a3 = temp_s8->unk1A0;
    temp_a4 = (temp_a6 + (arg0->unk94 * 4))->unk70;
    if (arg0->unk9C & 0x1F00) {
        var_a5 = temp_a4;
        *arg1 = temp_a4;
    } else {
        var_a5 = (temp_a6 + (arg0->unk90 * 4))->unk30 * temp_a4;
        *arg1 = var_a5;
    }
    var_a1 = temp_a3->unk4;
    temp_a7 = temp_a3->unk10;
    if (var_a1 == 0) {
        var_a1 = arg0->unk0;
    }
    temp_lo = var_a5 * var_a1;
    temp_t0 = (temp_a6 + (temp_a7 * 4))->unk120 & temp_lo;
    *arg2 = (s32) (temp_lo + ((temp_t0 == 0) ? 0 : (temp_a7 - temp_t0)));
}

f32 __glkonim_PixelZoom(f32 fparg0, f32 fparg1) {
    f32 sp28;
    f32 sp20;
    s64 sp0;
    f32 var_f0;
    f32 var_f4;
    f32 var_f5;
    s64 temp_a1;

    var_f4 = fparg1;
    temp_a1 = *(s32 *)0x1010 + 0x280;
    var_f5 = fparg0;
    if (*(s32 *)0x1018 != 1) {
        sp0 = temp_a1;
        if ((f64) fparg0 > 127.00000095367432) {
            sp28 = fparg1;
            __glSetError(0x501, (s32 *) temp_a1);
            var_f4 = sp28;
            var_f5 = 127.0f;
        }
        var_f0 = second half of f64;
        if ((f64) var_f4 > 127.00000095367432) {
            sp20 = var_f5;
            var_f0 = __glSetError(0x501);
            var_f4 = 127.0f;
        }
        *(f32 *)0x4000 = 6.6e-44f;
        *(void *)0x4000 = var_f5;
        *(void *)0x4000 = var_f4;
        sp0->unk6C = var_f4;
        sp0->unk68 = var_f5;
        return var_f0;
    }
    return __glSetError(0x502, (s32 *) temp_a1);
}

void __glkonim_PixelStoref(s32 arg0, u8 arg2, s32 arg3, void *arg4, f32 fparg1) {
    s32 var_a1;
    s32 var_a3;
    u8 var_a2;
    void *var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != 0xCF0) && (var_a2 = 0xCF1, var_a3 = 0xD00, (arg0 != 0xCF1)) && (var_a4 = (void *)0xD01, (arg0 != 0xD00)) && (arg0 != 0xD01)) {
            if (fparg1 < 0.0f) {
                var_a1 = (s32) (fparg1 + -0.5f);
            } else {
                var_a1 = (s32) (fparg1 + 0.5f);
            }
            __glkonim_PixelStorei(var_a1, 0xCF1U, 0xD00, (void *)0xD01);
        } else {
            __glkonim_PixelStorei(M2C_ERROR(/* unknown instruction: movt $a1, $zero, $fcc1 */), var_a2, var_a3, var_a4);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glkonim_TextureStorei(u32 arg0, s32 arg1, s32 arg2) {
    s32 *var_a3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s1;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a0_3;
    u32 temp_a1;
    u32 temp_a6;
    u32 temp_a7;
    u32 temp_t1;
    u32 var_a6;
    u8 var_a4;
    u8 var_a5;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a5 = 0x8AD0;
    temp_s1 = var_a1;
    var_a4 = 1;
    var_a3 = *(s32 *)0x1010 + 0x8AD0;
    if (*(s32 *)0x1018 != 1) {
        var_a6 = arg0 < 0xD04U;
        temp_a7 = arg0 < 0xD05U;
        if (var_a6 == 0) {
            if (temp_a7 != 0) {
                if (var_a1 >= 0) {
                    *(u32 *)0x4000 = 0x1BB;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (u32) var_a1;
                    var_a3->unk150 = var_a1;
                    return;
                }
                goto block_55;
            }
            if (arg0 >= 0x806EU) {
                if (arg0 <= 0x806EU) {
                    if (var_a1 >= 0) {
                        *(void *)0x4000 = 0x1BBU;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_a1;
                        var_a3->unk188 = var_a1;
                        return;
                    }
                    goto block_55;
                }
                if (arg0 >= 0x8132U) {
                    var_a6 = 0x8133;
                    if (arg0 <= 0x8132U) {
                        if (var_a1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) var_a1;
                            var_a3->unk18C = var_a1;
                        } else {
                            goto block_55;
                        }
                    } else if (arg0 == 0x8133) {
                        if (var_a1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) var_a1;
                            var_a3->unk190 = var_a1;
                        } else {
                            goto block_55;
                        }
                    } else {
                        goto block_52;
                    }
                } else if (arg0 >= 0x8131U) {
                    if (arg0 <= 0x8131U) {
                        if (var_a1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) var_a1;
                            var_a3->unk164 = var_a1;
                        } else {
                            goto block_55;
                        }
                    } else {
                        goto block_52;
                    }
                } else if (arg0 == 0x8130) {
                    if (var_a1 >= 0) {
                        *(void *)0x4000 = 0x1BBU;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_a1;
                        var_a3->unk160 = var_a1;
                    } else {
                        goto block_55;
                    }
                } else {
                    goto block_52;
                }
            } else {
                var_a1 = arg0 < 0x806CU;
                var_a2 = arg0 > 0x806CU;
                if (var_a1 == 0) {
                    if (var_a2 == 0) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            var_a3->unk15C = temp_s1;
                        } else {
                            goto block_55;
                        }
                    } else if (arg0 == 0x806D) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            var_a3->unk184 = temp_s1;
                        } else {
                            goto block_55;
                        }
                    } else {
                        goto block_52;
                    }
                } else if (arg0 >= 0x806BU) {
                    if (arg0 <= 0x806BU) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            var_a3->unk158 = temp_s1;
                        } else {
                            goto block_55;
                        }
                    } else {
                        goto block_52;
                    }
                } else if (arg0 == 0xD05) {
                    switch (temp_s1) {              /* switch 2; irregular */
                    default:                        /* switch 2 */
                        unksp18 = (s64) var_a3;
                        __glSetError(0x501, (s32 *) var_a1, var_a2, (s32) var_a3, 1U, 0x8AD0U, var_a6, temp_a7);
                        goto block_8;
                    case 4:                         /* switch 2 */
                        /* fallthrough */
                    case 1:                         /* switch 2 */
                    case 2:                         /* switch 2 */
                    case 8:                         /* switch 2 */
                        *(void *)0x4000 = 0x1BBU;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) temp_s1;
                        var_a3->unk154 = temp_s1;
                        break;
                    }
                } else {
                    goto block_52;
                }
            }
        } else {
            temp_a0 = arg0 < 0xCF5U;
            if (temp_a0 == 0) {
                temp_a0_2 = arg0 < 0xD02U;
                if (arg0 < 0xCF6U) {
block_8:
                    switch (temp_s1) {              /* switch 1; irregular */
                    default:                        /* switch 1 */
                        unksp18 = (s64) var_a3;
                        __glSetError(0x501);
                        goto block_13;
                    case 1:                         /* switch 1 */
                    case 2:                         /* switch 1 */
                    case 4:                         /* switch 1 */
                        /* fallthrough */
                    case 8:                         /* switch 1 */
                        *(void *)0x4000 = 0x1BBU;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) temp_s1;
                        var_a3->unk180 = temp_s1;
                        break;
                    }
                } else {
                    var_a5 = arg0 < 0xD03U;
                    if (temp_a0_2 == 0) {
                        var_a6 = 0xD03;
                        if (var_a5 == 0) {
                            if (arg0 == 0xD03) {
                                if (var_a1 >= 0) {
                                    *(void *)0x4000 = 0x1BBU;
                                    *(void *)0x4000 = arg0;
                                    *(void *)0x4000 = (u32) var_a1;
                                    var_a3->unk14C = var_a1;
                                } else {
                                    goto block_55;
                                }
                            } else {
                                goto block_52;
                            }
                        } else {
block_13:
                            if (temp_s1 >= 0) {
                                *(void *)0x4000 = 0x1BBU;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) temp_s1;
                                var_a3->unk148 = temp_s1;
                                return;
                            }
                            goto block_55;
                        }
                    } else if (arg0 >= 0xD01U) {
                        if (temp_a0_2 != 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            temp_a0_3 = temp_s1 != 0;
                            *(void *)0x4000 = temp_a0_3;
                            var_a3->unk145 = (s8) temp_a0_3;
                        } else {
                            goto block_52;
                        }
                    } else if (arg0 == 0xD00) {
                        *(void *)0x4000 = 0x1BBU;
                        *(void *)0x4000 = arg0;
                        temp_a1 = var_a1 != 0;
                        *(void *)0x4000 = temp_a1;
                        var_a3->unk144 = (s8) temp_a1;
                    } else {
                        goto block_52;
                    }
                }
            } else {
                var_a1 = arg0 < 0xCF2U;
                if (var_a1 == 0) {
                    var_a2 = arg0 < 0xCF4U;
                    if (arg0 < 0xCF3U) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            var_a3->unk174 = temp_s1;
                            return;
                        }
                        goto block_55;
                    }
                    var_a4 = 0xCF3;
                    if (var_a2 == 0) {
                        if (temp_a0 != 0) {
                            if (temp_s1 >= 0) {
                                *(void *)0x4000 = 0x1BBU;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) temp_s1;
                                var_a3->unk17C = temp_s1;
                            } else {
                                goto block_55;
                            }
                        } else {
                            goto block_52;
                        }
                    } else if (arg0 == 0xCF3) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            var_a3->unk178 = temp_s1;
                        } else {
block_55:
                            __glSetError(0x501);
                        }
                    } else {
                        goto block_52;
                    }
                } else {
                    var_a5 = 0xCF0;
                    if (arg0 >= 0xCF1U) {
                        if (var_a1 != 0) {
                            *(void *)0x4000 = 0x1BBU;
                            *(void *)0x4000 = arg0;
                            temp_t1 = temp_s1 != 0;
                            *(void *)0x4000 = temp_t1;
                            var_a3->unk171 = (s8) temp_t1;
                            return;
                        }
                        goto block_52;
                    }
                    if (arg0 == 0xCF0) {
                        *(void *)0x4000 = 0x1BBU;
                        *(void *)0x4000 = arg0;
                        temp_a6 = temp_s1 != 0;
                        *(void *)0x4000 = temp_a6;
                        var_a3->unk170 = (s8) temp_a6;
                    } else {
block_52:
                        __glSetError(0x500, (s32 *) var_a1, var_a2, (s32) var_a3, var_a4, var_a5, var_a6, temp_a7);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, var_a3, 1, 0x8AD0);
    }
}

void __glkonim_PixelStorei(u32 arg0, s32 arg1, s32 arg2, u32 arg6, u32 arg7) {
    s32 *temp_a3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s1;
    s32 var_a1;
    s32 var_a2;
    s64 var_a4;
    u32 temp_a0_3;
    u32 temp_a4;
    u32 temp_at;
    u32 temp_t9;
    u32 var_a6;
    u32 var_a7;
    u8 var_a5;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a3 = *(s32 **)0x1010;
    temp_s1 = var_a1;
    var_a5 = 1;
    var_a4 = temp_a3 + 0x280;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0xD04U) {
            if (arg0 < 0xD05U) {
                if (var_a1 >= 0) {
                    *(u32 *)0x4000 = 0x33;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (u32) temp_s1;
                    temp_a3->unk484 = temp_s1;
                    return;
                }
                goto block_54;
            }
            if (arg0 >= 0x806EU) {
                if (arg0 <= 0x806EU) {
                    if (var_a1 >= 0) {
                        *(void *)0x4000 = 0x33U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_a1;
                        temp_a3->unk4BC = var_a1;
                        return;
                    }
                    goto block_54;
                }
                var_a6 = arg0 < 0x8132U;
                var_a7 = arg0 > 0x8132U;
                if (var_a6 == 0) {
                    if (var_a7 == 0) {
                        if (var_a1 >= 0) {
                            *(void *)0x4000 = 0x33U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) var_a1;
                            temp_a3->unk4C0 = var_a1;
                        } else {
                            goto block_54;
                        }
                    } else {
                        var_a1 = 0x8133;
                        if (arg0 == 0x8133) {
                            if (temp_s1 >= 0) {
                                *(void *)0x4000 = 0x33U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) temp_s1;
                                temp_a3->unk4C4 = temp_s1;
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_52;
                        }
                    }
                } else {
                    var_a5 = arg0 < 0x8131U;
                    var_a6 = arg0 > 0x8131U;
                    if (var_a5 == 0) {
                        if (var_a6 == 0) {
                            if (var_a1 >= 0) {
                                *(void *)0x4000 = 0x33U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) var_a1;
                                temp_a3->unk498 = var_a1;
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_52;
                        }
                    } else {
                        var_a5 = 0x8130;
                        if (arg0 == 0x8130) {
                            if (var_a1 >= 0) {
                                *(void *)0x4000 = 0x33U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) var_a1;
                                temp_a3->unk494 = var_a1;
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_52;
                        }
                    }
                }
            } else if (arg0 >= 0x806CU) {
                if (arg0 <= 0x806CU) {
                    if (var_a1 >= 0) {
                        *(void *)0x4000 = 0x33U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_a1;
                        temp_a3->unk490 = var_a1;
                    } else {
                        goto block_54;
                    }
                } else if (arg0 == 0x806D) {
                    if (var_a1 >= 0) {
                        *(void *)0x4000 = 0x33U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_a1;
                        temp_a3->unk4B8 = var_a1;
                    } else {
                        goto block_54;
                    }
                } else {
                    goto block_52;
                }
            } else if (arg0 >= 0x806BU) {
                if (arg0 <= 0x806BU) {
                    if (var_a1 >= 0) {
                        *(void *)0x4000 = 0x33U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (u32) var_a1;
                        temp_a3->unk48C = var_a1;
                    } else {
                        goto block_54;
                    }
                } else {
                    goto block_52;
                }
            } else if (arg0 == 0xD05) {
                switch (var_a1) {                   /* irregular */
                default:
                    unksp18 = var_a4;
                    __glSetError(0x501, temp_a3, (s32) var_a4, 1, 0x33U);
                    goto block_8;
                case 1:
                case 2:
                    /* fallthrough */
                case 4:
                case 8:
                    *(void *)0x4000 = 0x33U;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (u32) temp_s1;
                    var_a4->unk208 = temp_s1;
                    break;
                }
            } else {
                goto block_52;
            }
        } else {
            temp_a0 = arg0 < 0xCF5U;
            var_a2 = arg0 < 0xCF6U;
            if (temp_a0 == 0) {
                temp_a0_2 = arg0 < 0xD02U;
                if (var_a2 != 0) {
block_8:
                    if ((temp_s1 != 1) && (temp_s1 != 2) && (temp_s1 != 4) && (temp_s1 != 8)) {
                        unksp18 = var_a4;
                        __glSetError(0x501);
                        goto block_13;
                    }
                    *(void *)0x4000 = 0x33U;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (u32) temp_s1;
                    var_a4->unk234 = temp_s1;
                } else if (temp_a0_2 == 0) {
                    if (arg0 >= 0xD03U) {
                        if (arg0 == 0xD03) {
                            if (var_a1 >= 0) {
                                *(void *)0x4000 = 0x33U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) var_a1;
                                temp_a3->unk480 = var_a1;
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_52;
                        }
                    } else {
block_13:
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x33U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            var_a4->unk1FC = temp_s1;
                            return;
                        }
                        goto block_54;
                    }
                } else if (arg0 >= 0xD01U) {
                    if (temp_a0_2 != 0) {
                        *(void *)0x4000 = 0x33U;
                        *(void *)0x4000 = arg0;
                        temp_t9 = var_a1 != 0;
                        *(void *)0x4000 = temp_t9;
                        temp_a3->unk479 = (s8) temp_t9;
                    } else {
                        goto block_52;
                    }
                } else if (arg0 == 0xD00) {
                    *(void *)0x4000 = 0x33U;
                    *(void *)0x4000 = arg0;
                    temp_at = var_a1 != 0;
                    *(void *)0x4000 = temp_at;
                    temp_a3->unk478 = (s8) temp_at;
                } else {
                    goto block_52;
                }
            } else {
                var_a1 = arg0 < 0xCF2U;
                if (var_a1 == 0) {
                    if (arg0 < 0xCF3U) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x33U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            temp_a3->unk4A8 = temp_s1;
                            return;
                        }
                        goto block_54;
                    }
                    if (arg0 >= 0xCF4U) {
                        if (temp_a0 != 0) {
                            if (temp_s1 >= 0) {
                                *(void *)0x4000 = 0x33U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (u32) temp_s1;
                                temp_a3->unk4B0 = temp_s1;
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_52;
                        }
                    } else if (arg0 == 0xCF3) {
                        if (temp_s1 >= 0) {
                            *(void *)0x4000 = 0x33U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_s1;
                            temp_a3->unk4AC = temp_s1;
                        } else {
block_54:
                            __glSetError(0x501);
                        }
                    } else {
                        goto block_52;
                    }
                } else {
                    var_a2 = arg0 < 0xCF1U;
                    if (var_a2 == 0) {
                        var_a5 = 0x33;
                        if (var_a1 != 0) {
                            *(void *)0x4000 = 0x33U;
                            *(void *)0x4000 = arg0;
                            temp_a4 = temp_s1 != 0;
                            *(void *)0x4000 = temp_a4;
                            temp_a3->unk4A5 = (s8) temp_a4;
                            return;
                        }
                        goto block_52;
                    }
                    var_a1 = 0x33;
                    if (arg0 == 0xCF0) {
                        *(void *)0x4000 = 0x33U;
                        *(void *)0x4000 = arg0;
                        temp_a0_3 = temp_s1 != 0;
                        *(void *)0x4000 = temp_a0_3;
                        temp_a3->unk4A4 = (s8) temp_a0_3;
                    } else {
block_52:
                        __glSetError(0x500, (s32 *) var_a1, var_a2, (s32) temp_a3, (u8) var_a4, var_a5, var_a6, var_a7);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a3, (s32) var_a4, 1);
    }
}

void __glkonim_PixelTransferf(u32 arg0, u32 arg6, u32 arg7, f32 fparg1) {
    f64 temp_f4;
    s32 *temp_a2;
    s32 temp_f10;
    s32 temp_f11;
    s32 temp_f6;
    s32 temp_f7;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    u32 var_a6;
    u32 var_a7;
    u8 var_a4;
    u8 var_a5;
    void *temp_a3;

    var_a6 = arg6;
    var_a7 = arg7;
    temp_a2 = *(s32 **)0x1010;
    temp_a3 = temp_a2 + 0x280;
    if (*(s32 *)0x1018 != 1) {
        var_a4 = 0x801D;
        var_a1 = arg0 < 0x801DU;
        var_a5 = arg0 > 0x801DU;
        if (var_a1 == 0) {
            if (var_a5 != 0) {
                var_a6 = arg0 < 0x80B5U;
                var_a7 = arg0 > 0x80B5U;
                if (var_a6 == 0) {
                    if (var_a7 != 0) {
                        if (arg0 >= 0x80B9U) {
                            if (arg0 > 0x80B9U) {
                                var_a4 = 0x80BB;
                                if (arg0 >= 0x80BBU) {
                                    if (arg0 <= 0x80BBU) {
                                        *(u32 *)0x4000 = 0x30;
                                        *(void *)0x4000 = arg0;
                                        *(void *)0x4000 = (bitwise u32) fparg1;
                                        temp_a2->unk2E4 = fparg1;
                                        return;
                                    }
                                    goto block_34;
                                }
                                if (arg0 == 0x80BA) {
                                    *(void *)0x4000 = 0x30U;
                                    *(void *)0x4000 = arg0;
                                    *(void *)0x4000 = (bitwise u32) fparg1;
                                    temp_a2->unk2E0 = fparg1;
                                } else {
                                    goto block_34;
                                }
                            } else {
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2DC = fparg1;
                            }
                        } else {
                            var_a4 = 0x80B7;
                            switch (arg0) {         /* switch 2; irregular */
                            case 0x80B8:            /* switch 2 */
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2D8 = fparg1;
                                break;
                            case 0x80B6:            /* switch 2 */
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2D0 = fparg1;
                                break;
                            default:                /* switch 2 */
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2D4 = fparg1;
                                break;
                            }
                        }
                    } else {
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk2CC = fparg1;
                    }
                } else if (arg0 >= 0x8021U) {
                    var_a4 = 0x8023;
                    if (arg0 > 0x8021U) {
                        if (arg0 >= 0x8023U) {
                            if (arg0 > 0x8023U) {
                                if (arg0 == 0x80B4) {
                                    *(void *)0x4000 = 0x30U;
                                    *(void *)0x4000 = arg0;
                                    *(void *)0x4000 = (bitwise u32) fparg1;
                                    temp_a2->unk2C8 = fparg1;
                                } else {
                                    goto block_34;
                                }
                            } else {
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2C4 = fparg1;
                            }
                        } else {
                            var_a4 = 0x8022;
                            if (arg0 == 0x8022) {
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2C0 = fparg1;
                            } else {
                                goto block_34;
                            }
                        }
                    } else {
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk2BC = fparg1;
                    }
                } else {
                    var_a4 = 0x801F;
                    var_a1 = arg0 < 0x801FU;
                    var_a5 = arg0 > 0x801FU;
                    if (var_a1 == 0) {
                        var_a6 = 0x8020;
                        if (var_a5 != 0) {
                            if (arg0 == 0x8020) {
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2B8 = fparg1;
                            } else {
                                goto block_34;
                            }
                        } else {
                            *(void *)0x4000 = 0x30U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (bitwise u32) fparg1;
                            temp_a2->unk2B4 = fparg1;
                        }
                    } else {
                        if (arg0 == 0x801E) {
                            *(void *)0x4000 = 0x30U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (bitwise u32) fparg1;
                            temp_a2->unk2B0 = fparg1;
                            return;
                        }
                        goto block_34;
                    }
                }
            } else {
                *(void *)0x4000 = 0x30U;
                *(void *)0x4000 = arg0;
                *(void *)0x4000 = (bitwise u32) fparg1;
                temp_a2->unk2AC = fparg1;
            }
        } else if (arg0 >= 0xD19U) {
            if (arg0 >= 0xD1AU) {
                if (arg0 >= 0xD1DU) {
                    if (arg0 >= 0xD1EU) {
                        var_a1 = arg0 < 0xD20U;
                        if (arg0 >= 0xD1FU) {
                            var_a4 = 0x801C;
                            if (var_a1 == 0) {
                                if (arg0 == 0x801C) {
                                    *(void *)0x4000 = 0x30U;
                                    *(void *)0x4000 = arg0;
                                    *(void *)0x4000 = (bitwise u32) fparg1;
                                    temp_a2->unk2A8 = fparg1;
                                } else {
                                    goto block_34;
                                }
                            } else {
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk2A4 = fparg1;
                            }
                        } else {
                            var_a6 = 0xD1E;
                            if (arg0 == 0xD1E) {
                                *(void *)0x4000 = 0x30U;
                                *(void *)0x4000 = arg0;
                                *(void *)0x4000 = (bitwise u32) fparg1;
                                temp_a2->unk290 = fparg1;
                            } else {
                                goto block_34;
                            }
                        }
                    } else {
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk2A0 = fparg1;
                    }
                } else {
                    switch (arg0) {                 /* switch 1; irregular */
                    case 0xD1C:                     /* switch 1 */
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk28C = fparg1;
                        break;
                    case 0xD1A:                     /* switch 1 */
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk288 = fparg1;
                        return;
                    default:                        /* switch 1 */
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk29C = fparg1;
                        break;
                    }
                }
            } else {
                *(void *)0x4000 = 0x30U;
                *(void *)0x4000 = arg0;
                *(void *)0x4000 = (bitwise u32) fparg1;
                temp_a2->unk298 = fparg1;
            }
        } else {
            var_a6 = arg0 < 0xD13U;
            var_a7 = arg0 < 0xD14U;
            if (var_a6 == 0) {
                if (var_a7 != 0) {
                    if (fparg1 > 0.0f) {
                        var_a2 = (s32) ((f64) fparg1 + 0.5);
                    } else {
                        var_a2 = (s32) ((second half of f64) + -0.5);
                    }
                    temp_f6 = (s32) (f32) var_a2;
                    temp_a3->unk74 = temp_f6;
                    *(void *)0x4000 = 0x30U;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (u32) temp_f6;
                    return;
                }
                if (arg0 >= 0xD15U) {
                    var_a1 = arg0 < 0xD16U;
                    var_a4 = 0xD18;
                    if (var_a1 == 0) {
                        if (arg0 == 0xD18) {
                            *(void *)0x4000 = 0x30U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (bitwise u32) fparg1;
                            temp_a2->unk284 = fparg1;
                        } else {
                            goto block_34;
                        }
                    } else {
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        *(void *)0x4000 = (bitwise u32) fparg1;
                        temp_a2->unk294 = fparg1;
                    }
                } else if (arg0 == 0xD14) {
                    *(void *)0x4000 = 0x30U;
                    *(void *)0x4000 = arg0;
                    *(void *)0x4000 = (bitwise u32) fparg1;
                    temp_a2->unk280 = fparg1;
                } else {
                    goto block_34;
                }
            } else {
                var_a6 = 0xD10;
                if (arg0 >= 0xD11U) {
                    if (arg0 >= 0xD12U) {
                        if (arg0 == 0xD12) {
                            temp_f4 = (f64) fparg1;
                            if (fparg1 > 0.0f) {
                                var_a2_2 = (s32) (temp_f4 + 0.5);
                            } else {
                                var_a2_2 = (s32) (temp_f4 + -0.5);
                            }
                            temp_f10 = (s32) (f32) var_a2_2;
                            temp_a3->unk70 = temp_f10;
                            *(void *)0x4000 = 0x30U;
                            *(void *)0x4000 = arg0;
                            *(void *)0x4000 = (u32) temp_f10;
                            return;
                        }
                        goto block_34;
                    }
                    temp_f11 = (s32) (f32) M2C_ERROR(/* unknown instruction: movt $a4, $zero, $fcc3 */);
                    *(void *)0x4000 = 0x30U;
                    *(void *)0x4000 = arg0;
                    temp_a2->unk2F9 = (s8) temp_f11;
                    *(void *)0x4000 = (u32) temp_f11;
                } else {
                    if (arg0 == 0xD10) {
                        *(void *)0x4000 = 0x30U;
                        *(void *)0x4000 = arg0;
                        temp_f7 = (s32) (f32) M2C_ERROR(/* unknown instruction: movt $t1, $zero, $fcc2 */);
                        temp_a2->unk2F8 = (s8) temp_f7;
                        *(void *)0x4000 = (u32) temp_f7;
                        return;
                    }
block_34:
                    __glSetError(0x500, (s32 *) var_a1, (s32) temp_a2, (s32) temp_a3, var_a4, var_a5, var_a6, var_a7);
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a2, (s32) temp_a3);
    }
}

void __glkonim_PixelTransferi(s32 arg1) {
    __glkonim_PixelTransferf((bitwise u32) (f32) arg1);
}
