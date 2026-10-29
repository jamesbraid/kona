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
Error occurred while processing instruction: bgez $at, .L0d964cf4

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
Error occurred while processing instruction: bgez $t2, .L0d966578

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
Error occurred while processing instruction: bgez $at, .L0d9668ac

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
Error occurred while processing instruction: bgez $a5, .L0d967154

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
Error occurred while processing instruction: bgez $v1, .L0d966b18

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
Error occurred while processing instruction: bgez $ra, .L0d966ba8

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
Error occurred while processing instruction: bgez $v1, .L0d966dec

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
Error occurred while processing instruction: bgez $ra, .L0d966c1c

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
Error occurred while processing instruction: bgez $v0, .L0d967354

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
Error occurred while processing instruction: bgez $a2, .L0d967c88

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
Error occurred while processing instruction: bgez $ra, .L0d967fa8

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
Error occurred while processing instruction: bgez $a2, .L0d968318

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
Error occurred while processing instruction: bgez $a1, .L0d968444

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
Error occurred while processing instruction: bltz $a0, .L0d9685ec

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $a3, .L0d9685e8

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
Error occurred while processing instruction: bgez $a5, .L0d96902c

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $a2, .L0d9685ec

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
Error occurred while processing instruction: bltz $at, .L0d9685ec

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
Error occurred while processing instruction: bgez $t9, .L0d9685e8

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
Error occurred while processing instruction: bgez $a1, .L0d9685ec

Error occurred while processing instruction: c.lt.d $f5, $f17

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
Error occurred while processing instruction: bgez $a3, .L0d9685ec

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
Error occurred while processing instruction: bltz $at, .L0d9685ec

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
Error occurred while processing instruction: bgez $v0, .L0d96a3b4

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
Error occurred while processing instruction: bgez $v0, .L0d96a61c

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
Error occurred while processing instruction: bgez $v0, .L0d96a750

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
Error occurred while processing instruction: bgez $v0, .L0d96a830

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
Error occurred while processing instruction: bgez $v0, .L0d96a8c8

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
Error occurred while processing instruction: bgez $a3, .L0d96a9ec

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
Error occurred while processing instruction: bgez $at, .L0d96d524

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
Error occurred while processing instruction: bgez $at, .L0d96e640

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
Error occurred while processing instruction: bltz $v1, .L0d96e6fc

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
Error occurred while processing instruction: bltz $a3, .L0d96e6fc

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
Error occurred while processing instruction: bltz $v0, .L0d96e6fc

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
Error occurred while processing instruction: bgez $at, .L0d96e8a0

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
Error occurred while processing instruction: bltz $ra, .L0d96e8a0

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
Error occurred while processing instruction: bgez $v0, .L0d96e998

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
Error occurred while processing instruction: bgez $at, .L0d96eb14

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
Error occurred while processing instruction: bgez $a6, .L0d96f970

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
Error occurred while processing instruction: bgez $at, .L0d9707c4

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
Error occurred while processing instruction: bgez $t0, .L0d970bc8

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
Error occurred while processing instruction: bgez $t8, .L0d97107c

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
Error occurred while processing instruction: bltz $ra, .L0d9710fc

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
Error occurred while processing instruction: bgez $ra, .L0d9712a0

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
Error occurred while processing instruction: bgez $ra, .L0d971328

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
Error occurred while processing instruction: bgez $ra, .L0d971a60

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
Error occurred while processing instruction: bgez $ra, .L0d971bc4

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
Error occurred while processing instruction: bgez $ra, .L0d972044

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
Error occurred while processing instruction: bgez $a7, .L0d973428

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
Error occurred while processing instruction: bgez $t0, .L0d973678

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
Error occurred while processing instruction: bgez $at, .L0d964cf4

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
Error occurred while processing instruction: bgez $t2, .L0d966578

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
Error occurred while processing instruction: bgez $at, .L0d9668ac

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
Error occurred while processing instruction: bgez $a5, .L0d967154

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
Error occurred while processing instruction: bgez $v1, .L0d966b18

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
Error occurred while processing instruction: bgez $ra, .L0d966ba8

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
Error occurred while processing instruction: bgez $v1, .L0d966dec

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
Error occurred while processing instruction: bgez $ra, .L0d966c1c

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
Error occurred while processing instruction: bgez $v0, .L0d967354

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
Error occurred while processing instruction: bgez $a2, .L0d967c88

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
Error occurred while processing instruction: bgez $ra, .L0d967fa8

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
Error occurred while processing instruction: bgez $a2, .L0d968318

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
Error occurred while processing instruction: bgez $a1, .L0d968444

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
Error occurred while processing instruction: bltz $a0, .L0d9685ec

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $a3, .L0d9685e8

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
Error occurred while processing instruction: bgez $a5, .L0d96902c

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
Error occurred while processing instruction: bgez $v1, .L0d9685e8

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
Error occurred while processing instruction: bgez $a2, .L0d9685ec

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
Error occurred while processing instruction: bltz $at, .L0d9685ec

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
Error occurred while processing instruction: bgez $t9, .L0d9685e8

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
Error occurred while processing instruction: bgez $a1, .L0d9685ec

Error occurred while processing instruction: c.lt.d $f5, $f17

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
Error occurred while processing instruction: bgez $a3, .L0d9685ec

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
Error occurred while processing instruction: bltz $at, .L0d9685ec

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
Error occurred while processing instruction: bgez $v0, .L0d96a3b4

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
Error occurred while processing instruction: bgez $v0, .L0d96a61c

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
Error occurred while processing instruction: bgez $v0, .L0d96a750

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
Error occurred while processing instruction: bgez $v0, .L0d96a830

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
Error occurred while processing instruction: bgez $v0, .L0d96a8c8

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
Error occurred while processing instruction: bgez $a3, .L0d96a9ec

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
Error occurred while processing instruction: bgez $at, .L0d96d524

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
Error occurred while processing instruction: bgez $at, .L0d96e640

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
Error occurred while processing instruction: bltz $v1, .L0d96e6fc

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
Error occurred while processing instruction: bltz $a3, .L0d96e6fc

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
Error occurred while processing instruction: bltz $v0, .L0d96e6fc

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
Error occurred while processing instruction: bgez $at, .L0d96e8a0

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
Error occurred while processing instruction: bltz $ra, .L0d96e8a0

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
Error occurred while processing instruction: bgez $v0, .L0d96e998

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
Error occurred while processing instruction: bgez $at, .L0d96eb14

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
Error occurred while processing instruction: bgez $a6, .L0d96f970

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
Error occurred while processing instruction: bgez $at, .L0d9707c4

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
Error occurred while processing instruction: bgez $t0, .L0d970bc8

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
Error occurred while processing instruction: bgez $t8, .L0d97107c

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
Error occurred while processing instruction: bltz $ra, .L0d9710fc

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
Error occurred while processing instruction: bgez $ra, .L0d9712a0

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
Error occurred while processing instruction: bgez $ra, .L0d971328

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
Error occurred while processing instruction: bgez $ra, .L0d971a60

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
Error occurred while processing instruction: bgez $ra, .L0d971bc4

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
Error occurred while processing instruction: bgez $ra, .L0d972044

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
Error occurred while processing instruction: bgez $a7, .L0d973428

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
Error occurred while processing instruction: bgez $t0, .L0d973678

Tried to use a double-precision instruction with odd-numbered float register $f17
Tried to use a double-precision instruction with odd-numbered float register $f17
void *GetConvolutionFilter(void *, ?, s32, ?, void *); /* extern */
? __glClampColorf(s32, s32 *, s32 *, ?, s64, s32);  /* extern */
? __glClampColori(s32, s32 *, s32 *, ?, s64, s32);  /* extern */
? __glFillImage3D(s64, s32, s32, s32, s32, s32, s32, void *); /* extern */
s32 __glImageSize3D(s32, s32, s32, s32, s32);       /* extern */
? __glKonCopyTexImage(void *, s32, s32, s32, s32, s64, s64, s32); /* extern */
? __glKonDefaultState(?);                           /* extern */
? __glKonDrawTexels3D(void *, s32, s32, s32, s32, s64, s64, s32); /* extern */
? __glKonFreeARMTexCache(s32 *, void *);            /* extern */
? __glKonFreeTextureHash(s32 *, void *);            /* extern */
? __glKonFreeTextureMemory(s32 *, void *);          /* extern */
? __glKonFreeTextures(void *, ?);                   /* extern */
? __glKonGetTexParams(void *, ?, void *);           /* extern */
? __glKonInitTextureHash(s32);                      /* extern */
? __glKonInitTextureMemory();                       /* extern */
? __glKonInvalidateARMTexCache(void *, void *, s32, s32, s32, s32, s32); /* extern */
s32 __glKonParseErrorDraw(void *);                  /* extern */
s32 __glKonParseInput(void *, s32, s32, s32, s32);  /* extern */
? __glKonPopState(? *, s32);                        /* extern */
? __glKonPushState(?, ? *);                         /* extern */
? __glKonSetNoModeState(?, ?, s32, s64, s32 *, ?, ? *, s32); /* extern */
? __glKonSetPixelLEModes(? *);                      /* extern */
? __glKonSetTexParams(s32 *, s32, ? *);             /* extern */
s32 __glKonTexAlloc(s32 *, s32 *, ?, s64, void *, void *); /* extern */
s32 __glKonTexChecksum(s32, s32 *);                 /* extern */
? __glKonTexEvaluateCubicSpline(? *, ? *, ?, s32, s32, s64, s32, s32); /* extern */
f32 __glKonTexExp2NegX64(s32 *, void *, ?);         /* extern */
? __glKonTexFree(s32);                              /* extern */
? __glKonTexGetCubicSpline(s32, s32, s64, s64, s32, s32); /* extern */
? __glKonTexQuickSortPairs(s32 *, ?, s32);          /* extern */
s32 *__glKonTexUpdatePriority(s32, s32 *, s32, s32, s64, f32); /* extern */
? __glKonUnsetLEModes(? *);                         /* extern */
void *__glSPDlalloc(s32, ?, ?);                     /* extern */
s32 __glSetError(s32 *, s32 *, s32, s32 *, s32);    /* extern */
? __glkonReadTexels3D(void *, s32, s32, s32, s32);  /* extern */
s32 *__glkon_datavn(s32 *, ?);                      /* extern */
? __glkonim_GetIntegerv(?, s32 **, s64, s64, s64, s32, s32, s32); /* extern */
? __glkonim_PixelStorei(?, s32 *, s64, s32 *, s32 *, s64); /* extern */
s32 __glkonlc_PointParameterfvSGIS(s32 *, void *, s64, s32, s32, s32, s64, s32, f32, s32, s32); /* extern */
? __glsplc_InvalidEnum(s64);                        /* extern */
f64 atof(s32);                                      /* extern */
s32 bcmp(s32 *, s32, s64, s32);                     /* extern */
? bcopy(s32, s32 *, s64, void *, s32, s32);         /* extern */
? bzero(s32 *, ?, s32 *, ?, s32 *);                 /* extern */
s32 *calloc(?, ?);                                  /* extern */
? fprintf(void *, void *, s64, s64);                /* extern */
? free(s32);                                        /* extern */
s32 getenv(void *, ?);                              /* extern */
s32 sub_0d960000(s32 *, s32 *, s64, s32, s32, s32, s32, s64, ? *, s32 *); /* extern */
s32 *sub_0d970000(s32 *, s32 *, s32 *, s64, s32, s32, s32); /* extern */
s64 __glKonGetTexParameter(s32 *arg0, s32 *arg1, s64 arg2, s32 arg3, s32 arg4, s32, s32, s32, s32, s32 *, s32 *, s32 *); /* static */
? __glkon_EnableTexture(s32 *, s32, s32);           /* static */
void __glkonim_BindTextureEXT(s32 *arg0, u32 arg1); /* static */
s32 __glkonim_DeleteTexturesEXT(s32 arg0, u32 *arg1); /* static */
void __glkonim_GenTexturesEXT(s32 arg0, u32 *arg1); /* static */
void __glkonim_GetTexFilterFuncSGIS(s32 *arg0, s32 *arg1, s64 arg2, s32 *, s32 *, s32 *, s32 *); /* static */
void __glkonim_TexImage(s32 *arg0, s32 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, ? *arg_sp4, s32 *arg_spC); /* static */
void __glkonim_TexParameteri(s32 *arg0, u32 arg1, s32 arg2); /* static */
void subtractTexTableUsage(s64 arg0, s64 arg1, s64 arg2, s32 arg3, s64 arg4, s32, s32, s32, s32, s64, ?, f32); /* static */
extern ? __glKonDefaultBicubicTexFunc;
extern ? __glKonDefaultDetailTexFunc;
extern ? __glKonDefaultSharpenTexFunc;
extern ? __glKonLogOver64;
extern ? __glKonTexParamDefault;
extern ? __glNop;
extern ? __iob;
extern ? __rodata0;
extern s32 *index_2_target_map;
extern ? int_clamp_to_ext_clamp;
extern s32 intern_format_arr3;
extern ? rdbk_format2;
extern ? st_bits_per_page;
extern s32 storage_format_arr7;

s32 __glkonim_ProcImage(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 sp10;
    s32 spC;
    s32 sp4;
    s32 *temp_a0;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s64 temp_v0_3;
    void *temp_a3;
    void *temp_v0_4;
    void *temp_v1;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d964cf4
    if (M2C_ERROR()) {
        return (temp_v0_2 + (arg1 * 4))->unk7C;
    }
    sp80->unk7B90 = (s32) (temp_v1->unk7B90 | 0x10000);
    subtractTexTableUsage(sp78, sp70);
    sp18 = (s64) sp78->unk17C;
    __glkonim_GenTexturesEXT(1, &sp10);
    temp_a0 = *(sp28 + &index_2_target_map);
    sp20 = (s64) temp_a0;
    __glkonim_BindTextureEXT(temp_a0, sp10);
    __glkonim_TexParameteri(temp_a0, 0x2801U, 0x2601);
    sp4 = arg_sp4;
    spC = arg_spC;
    __glkonim_TexImage(temp_a0, NULL, sp38, sp40, sp48, sp50, sp58, sp30);
    __glKonSetNoModeState(2, 0x60000000);
    temp_a7 = sp60->unk4 * 0x10;
    temp_a3 = &rdbk_format2 + ((&intern_format_arr3 + temp_a7)->unk8 * 0xC);
    __glKonGetTexParameter(sp80->unk8AAC, sp68->unk7BB0, 0, temp_a3->unk8, temp_a3->unk4, 0x1403, sp60->unk0, temp_a7);
    __glKonSetNoModeState(2, 0);
    temp_t0 = 1 << sp70;
    sp78->unk30 = (s32) (temp_t0 | (sp78->unk30 & ~temp_t0));
    __glkonim_BindTextureEXT(temp_a0, (u32) sp18);
    temp_v0 = __glkonim_DeleteTexturesEXT(1, &sp10);
    sp80->unk7B90 = (s32) (sp80->unk7B90 & 0xFFFEFFFF);
    return temp_v0;
}

void updateTexBindID(void *arg1) {
    *(s32 *)0x4000 = 0x178;
    *(void *)0x4000 = (s32) arg1->unk110->unk4;
}

void stealARMTableCacheCallback(void *arg0) {
    s32 temp_v1;
    s32 var_a4;
    void **var_a3;
    void *temp_a3;
    void *temp_t8;

    temp_a3 = arg0->unk10;
    if (temp_a3 != NULL) {
        temp_v1 = temp_a3->unk4;
        arg0->unk10 = NULL;
        *(s32 *)0x4000 = 0x1E0;
        *(void *)0x4000 = 0;
        *(void *)0x4000 = temp_v1;
        *(void *)0x4000 = 0x1E0;
        *(void *)0x4000 = 2;
        *(void *)0x4000 = temp_v1;
        *(void *)0x4000 = 0x1E0;
        *(void *)0x4000 = 1;
        *(void *)0x4000 = temp_v1;
    }
    var_a4 = 0;
    var_a3 = arg0->unk14;
    if (arg0->unk1C > 0) {
        do {
            temp_t8 = *var_a3;
            temp_t8->unk20 = (s32) (temp_t8->unk20 & 0xFEFFFFFF);
            (*var_a3)->unk100 = (void *) (sub_0d970000 - 0x17E0);
            (*var_a3)->unk104 = &__glNop;
            var_a4 += 1;
            var_a3 += 4;
        } while (var_a4 < arg0->unk1C);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void freeARMTexCache(void *arg0) {
    s32 *temp_at;

    temp_at = (*(void **)0x1010)->unk8AAC;
    unksp10 = (s64) arg0->unk110;
    unksp18 = (s64) temp_at;
    __glkonlc_PointParameterfvSGIS(temp_at, arg0);
    *(s32 *)0x4000 = 0x1C5;
    *(void *)0x4000 = (s32) arg0->unk110->unk4;
    unksp10->unk8->unkC = (void *) unksp10->unkC;
    unksp10->unkC->unk8 = (void *) unksp10->unk8;
    unksp10->unkC = (void *) unksp18->unkC040;
    unksp18->unkC040 = (void *) unksp10;
    arg0->unk104 = &__glNop;
    arg0->unk100 = (void *) (sub_0d970000 - 0x17E0);
    arg0->unk110 = NULL;
    arg0->unk20 = (s32) (arg0->unk20 & 0xFEFFFFFF);
}

void bindARMTexCache(void *arg0) {
    void *temp_a0;
    void *temp_v0;

    temp_a0 = (*(void **)0x1010)->unk8AAC + 0xC03C;
    temp_v0 = temp_a0->unk14(temp_a0, arg0);
    *(s32 *)0x4000 = 0x1C4;
    arg0->unk110 = temp_v0;
    *(void *)0x4000 = (s32) temp_v0->unk4;
}

s32 getS0p7(f32 fparg0) {
    s32 temp_f0;

    temp_f0 = (s32) (fparg0 * 128.0f);
    return ((temp_f0 >= 0x80) ? 0x7F : ((temp_f0 >= -0x80) ? temp_f0 : -0x80)) & 0xFF;
}

s32 getS2p7(f32 fparg0) {
    s32 temp_a1;
    s32 var_a2;
    s32 var_a3;

    temp_a1 = (s32) ((f64) (second half of f64) + (second half of f64)) >> 2;
    if (temp_a1 >= 0x400) {
        var_a2 = 0x3FF;
        goto block_2;
    }
    var_a2 = (temp_a1 >= -0x400) ? temp_a1 : -0x400;
    if ((var_a2 < 0x80) && (var_a2 >= -0x80)) {
        return (var_a2 & 0xFF) * 4;
    }
block_2:
    var_a3 = 0;
    do {
loop_3:
        var_a2 = var_a2 >> 1;
        var_a3 += 1;
        if (var_a2 >= 0x80) {
            goto loop_3;
        }
    } while (var_a2 < -0x80);
    return var_a3 | ((var_a2 & 0xFF) * 4);
}

void computeActiveTarget(void *arg0) {
    s32 var_v0;
    void *var_a3;

    var_v0 = 3;
    var_a3 = arg0 + 0xC;
loop_1:
    if (!(arg0->unk0 & (1 << var_v0)) || !(var_a3->unk20->unk20 & 0x01000000)) {
        var_v0 -= 1;
        var_a3 -= 4;
        if (var_v0 == 0) {

        } else {
            goto loop_1;
        }
    }
    *(s32 *)0x4000 = 0x177;
    *(void *)0x4000 = var_v0;
    arg0->unk4 = var_v0;
}

s32 *bindTexTable(s32 *arg0, s32 *arg1, s32 arg2) {
    s64 sp3C8;
    s64 sp3B0;
    s64 sp3A8;
    s64 sp3A0;
    u64 sp398;
    s64 sp390;
    ? sp290;
    s32 sp208;
    ? sp204;
    ? sp84;
    ? sp4;
    ? *var_a0_2;
    ? *var_a2;
    ? *var_s1_2;
    ? *var_v0;
    ? *var_v0_2;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s32 *var_a0;
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_s0;
    s64 *var_s3;
    s64 temp_s0;
    s64 temp_t9;
    s64 temp_v0_3;
    void *temp_a3;
    void *temp_s1;
    void *temp_s3;
    void *temp_v0;
    void *var_s1;

    temp_s3 = (arg1 + (arg2 * 4))->unk12C;
    temp_a3 = temp_s3->unk10;
    if (temp_a3 != NULL) {
        arg1->unk144 = (s32) temp_a3->unk4;
        arg1->unk74 = (s32) (temp_s3->unk10->unk4 | (arg1->unk74 & ~0xFFF));
        return arg1;
    }
    sp390 = (s64) arg1;
    temp_v0 = arg0->unk14(temp_s3, temp_a3, -0x1000);
    temp_s3->unk10 = temp_v0;
    sp390->unk144 = (s32) temp_v0->unk4;
    sp390->unk74 = (s32) (temp_s3->unk10->unk4 | (sp390->unk74 & ~0xFFF));
    var_s1 = sp;
    if (temp_s3->unk0 == 0) {
        var_s0 = 0;
        do {
            temp_v0_2 = __glkonlc_PointParameterfvSGIS(*(temp_s3->unk4 + var_s0));
            var_s1 += 4;
            var_s0 += 4;
            var_s1->unk-4 = temp_v0_2;
        } while (var_s1 != &sp204);
        var_v0 = &sp4;
        var_a2 = &unksp-4;
        var_a0 = &sp208 + 4;
        sp208 = sp100 | (sp0 << 8) | ((sp100 << 0x10) | (sp200 << 0x18));
        do {
            var_a2 -= 8;
            temp_a7 = var_v0->unk4 << 8;
            temp_a6 = var_v0->unk0 << 8;
            var_v0 += 8;
            var_a0 += 8;
            var_a0->unk-8 = (s32) (var_v0->unkF8 | temp_a6 | ((var_a2->unk108 << 0x10) | (var_a2->unk208 << 0x18)));
            var_a0->unk-4 = (s32) (var_v0->unkFC | temp_a7 | ((var_a2->unk104 << 0x10) | (var_a2->unk204 << 0x18)));
        } while (var_v0 != &sp84);
    } else {
        temp_s1 = *(void **)0x1010;
        temp_s0 = temp_s1->unk0(temp_s1, temp_s3->unk8 * 4);
        temp_v0_3 = temp_s1->unk0(temp_s1, temp_s3->unk8 * 4);
        temp_a1 = temp_s3->unk4;
        temp_a5 = temp_s3->unk8;
        temp_a5_2 = temp_a5 * 4;
        sp3B0 = temp_v0_3;
        __glKonTexGetCubicSpline(temp_a1, temp_a1 + temp_a5_2, temp_s0, temp_v0_3, temp_a5, temp_a5_2);
        temp_s1->unkC(temp_s1, sp3B0);
        temp_a4 = temp_s3->unk4;
        temp_a7_2 = temp_s3->unk8;
        temp_a7_3 = temp_a7_2 * 4;
        __glKonTexEvaluateCubicSpline(&__glKonLogOver64, &sp290, 0x40, temp_a4, temp_a4 + temp_a7_3, temp_s0, temp_a7_2, temp_a7_3);
        temp_s1->unkC(temp_s1, temp_s0);
        if (temp_s3->unk0 == 2) {
            var_a0_2 = &sp290;
            do {
                temp_f3 = var_a0_2->unk4;
                temp_f2 = var_a0_2->unk0;
                var_a0_2 += 8;
                var_a0_2->unk-4 = (f32) -temp_f3;
                var_a0_2->unk-8 = (f32) -temp_f2;
            } while (var_a0_2 != &sp390);
            sp3C8 = (s64) &sp390;
            var_s3 = (s64 *) sp3C8;
        } else {
            var_s3 = &sp390;
        }
        if (temp_s3->unk0 == 1) {
            var_v0_2 = &sp290;
            do {
                temp_f1 = var_v0_2->unk4;
                temp_f0 = var_v0_2->unk0;
                var_v0_2 += 8;
                var_v0_2->unk-4 = (f32) (temp_f1 * 2.0f);
                var_v0_2->unk-8 = (f32) (temp_f0 * 2.0f);
            } while (var_v0_2 != var_s3);
        }
        sp3A8 = (s64) &sp208;
        var_s1_2 = &sp290;
        do {
            sp398 = __glkonlc_PointParameterfvSGIS(var_s1_2->unkC);
            sp3B0 = __glkonlc_PointParameterfvSGIS(var_s1_2->unk8);
            sp3A0 = __glkonlc_PointParameterfvSGIS(var_s1_2->unk4);
            temp_v0_4 = __glkonlc_PointParameterfvSGIS(var_s1_2->unk0);
            var_s1_2 += 0x10;
            temp_t9 = sp3A8 + 8;
            sp3A8 = temp_t9;
            temp_t9->unk-4 = (u32) (sp398 >> 2);
            temp_t9->unk-8 = (s32) (temp_v0_4 | (sp3A0 << 0xA) | ((sp3B0 << 0x14) | (sp398 << 0x1E)));
        } while (var_s1_2 != var_s3);
    }
    *(s32 *)0x4000 = 0x17E;
    *(void *)0x4000 = (s32) sp390->unk144;
    return __glkon_datavn(&sp208, 0x21);
}

void getTexTableUsage(s32 arg1, s32 arg2, s32 *arg3) {
    f32 temp_f0;
    s32 *var_a3;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_a2;
    s32 var_a4;
    void *temp_a5;

    var_a3 = arg3;
    temp_a5 = (arg1 + (arg2 * 4))->unk12C;
    temp_a7 = temp_a5->unk8;
    temp_a6 = (temp_a5->unk0 == 0) ? temp_a7 : (temp_a7 * 2);
    if ((arg2 == 1) || (arg2 == 2)) {
        var_a2 = temp_a7 - 1;
        var_a4 = var_a2 * 4;
        if (var_a2 >= 0) {
            do {
                *var_a3 = *(temp_a5->unk4 + var_a4);
                var_a4 -= 4;
                temp_f0 = *(temp_a5->unk4 + ((temp_a5->unk8 + var_a2) * 4));
                var_a3 += 8;
                var_a2 -= 1;
                var_a3->unk-4 = temp_f0;
            } while (var_a4 != -4);
        }
    } else {
        bcopy(temp_a5->unk4, var_a3, temp_a6 * 4, temp_a5, temp_a6, temp_a7);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x80, 0x84], gap at: 0x50. */
void addTexTableUsage(s32 *arg0, s64 arg1, s32 arg2, s64 arg3, s32 arg4) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_t8;
    f32 *temp_v0_3;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f5;
    s32 *temp_a1;
    s32 *temp_v0;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *var_a7_2;
    s32 *var_s2;
    s32 *var_t0;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_cond;
    s32 temp_cond_2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_v0_4;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a7;
    s32 var_s1;
    s32 var_s7;
    s64 temp_at_2;
    s64 temp_s3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a7_2;
    void *temp_at_3;
    void *temp_ra;
    void *temp_s3_2;
    void *temp_s6;
    void *temp_t0;
    void *temp_t1;
    void *temp_t9;
    void *temp_v0_2;
    void *var_s0;

    unksp48 = arg3;
    temp_s3 = arg2 * 4;
    sp18 = temp_s3;
    var_s1 = arg4;
    temp_s6 = *(void **)0x1010;
    temp_at = (arg2 == 0) ? arg4 : (arg4 * 2);
    var_s7 = temp_at;
    temp_at_2 = temp_at * 4;
    unksp50 = temp_at_2;
    temp_s3_2 = temp_s3 + arg0;
    var_s0 = temp_s3_2->unk38;
    temp_v0 = temp_s6->unk0(temp_s6, temp_at_2);
    var_s2 = temp_v0;
    sp0 = arg1;
    bcopy((s32) unksp48, temp_v0, unksp50);
    if ((arg2 == 1) || (arg2 == 2)) {
        temp_s4 = var_s1 - 1;
        __glKonTexQuickSortPairs(var_s2, 0, temp_s4);
        var_a7 = 0;
        var_a4 = 1;
        if (var_s1 >= 2) {
            var_a3 = 1;
            var_a4 = 1;
            if (temp_s4 & 1) {
                temp_f4 = var_s2->unk8;
                var_a3 = 2;
                var_a7 = 1;
                if ((bitwise f32) var_s2->unk0 != temp_f4) {
                    var_s2->unk8 = temp_f4;
                    var_a4 = 2;
                    (var_s2 + 8)->unk4 = (f32) (var_s2 + 8)->unk4;
                }
            }
            var_a0 = var_a4 * 8;
            if ((temp_s4 >> 1) != 0) {
loop_29:
                temp_v0_2 = var_s2 + (var_a3 * 8);
                temp_f4_2 = temp_v0_2->unk0;
                temp_cond = *(var_s2 + (var_a7 * 8)) == temp_f4_2;
                temp_a3 = var_a3 + 1;
                temp_a7 = var_a7 + 1;
                temp_a0 = var_s2 + var_a0;
                temp_v1 = temp_a7 * 8;
                var_a7 = temp_a7 + 1;
                if (!temp_cond) {
                    temp_a0->unk0 = temp_f4_2;
                    var_a4 += 1;
                    temp_a0->unk4 = (f32) temp_v0_2->unk4;
                }
                temp_v0_3 = var_s2 + (temp_a3 * 8);
                temp_f4_3 = temp_v0_3->unk0;
                temp_cond_2 = *(var_s2 + temp_v1) == temp_f4_3;
                var_a3 = temp_a3 + 1;
                temp_a0_2 = var_s2 + (var_a4 * 8);
                if (!temp_cond_2) {
                    temp_a0_2->unk0 = temp_f4_3;
                    var_a4 += 1;
                    temp_a0_2->unk4 = (f32) temp_v0_3->unk4;
                }
                var_a0 = var_a4 * 8;
                if (var_s1 != var_a3) {
                    goto loop_29;
                }
            }
        }
        var_s1 = var_a4;
        var_s7 = var_a4 * 2;
        temp_a1 = temp_s6->unk0(temp_s6, var_a4 * 8);
        if (var_a4 > 0) {
            temp_v0_4 = (var_a4 >= 1) ? var_a4 : 1;
            var_a2 = temp_v0_4 & 3;
            var_a3_2 = 0;
            var_a7_2 = &temp_a1[var_a4];
            var_t0 = temp_a1;
            if (var_a2 != 0) {
                do {
                    temp_t1 = var_s2 + (var_a3_2 * 8);
                    *var_t0 = temp_t1->unk0;
                    var_a2 -= 1;
                    var_t0 += 4;
                    var_a7_2 += 4;
                    var_a3_2 += 1;
                    var_a7_2->unk-4 = (f32) temp_t1->unk4;
                } while (var_a2 != 0);
            }
            if ((temp_v0_4 >> 2) != 0) {
                do {
                    temp_at_3 = var_s2 + (var_a3_2 * 8);
                    var_t0->unk0 = temp_at_3->unk0;
                    temp_ra = var_s2 + ((var_a3_2 + 1) * 8);
                    var_a7_2->unk0 = temp_at_3->unk4;
                    var_t0->unk4 = (f32) temp_ra->unk0;
                    temp_t9 = var_s2 + ((var_a3_2 + 2) * 8);
                    var_a7_2->unk4 = (f32) temp_ra->unk4;
                    var_t0->unk8 = (f32) temp_t9->unk0;
                    temp_t8 = var_s2 + ((var_a3_2 + 3) * 8);
                    var_a7_2->unk8 = (f32) temp_t9->unk4;
                    temp_f5 = temp_t8->unk0;
                    var_a3_2 += 4;
                    var_t0->unkC = temp_f5;
                    var_a7_2 += 0x10;
                    var_t0 += 0x10;
                    var_a7_2->unk-4 = (f32) temp_t8->unk4;
                } while (var_a3_2 < var_a4);
            }
            unksp78 = (s64) temp_a1;
        }
        unksp78 = (s64) temp_a1;
        temp_s6->unkC(temp_s6, var_s2);
        var_s2 = (s32 *) unksp78;
    }
    temp_s4_2 = __glKonTexChecksum(var_s7, var_s2);
    sp8 = var_s7 * 4;
loop_7:
    var_a3_3 = 0;
    if ((var_s0->unk8 == var_s1) && (var_s0->unkC == temp_s4_2)) {

    } else {
        var_a3_3 = 1;
    }
    if (var_a3_3 != 0) {
        var_s0 = var_s0->unk24;
        if (temp_s3_2->unk38 != var_s0) {
            goto loop_7;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        temp_v0_5 = temp_s6->unk0(temp_s6, 0x28);
        temp_v0_5->unk18 = 4;
        temp_v0_5->unkC = temp_s4_2;
        temp_v0_5->unk8 = var_s1;
        temp_v0_5->unk4 = var_s2;
        temp_v0_5->unk0 = arg2;
        sp10 = (s64) temp_v0_5;
        temp_v0_6 = temp_s6->unk0(temp_s6, 0x10);
        temp_t0 = sp18 + sp0;
        sp10->unk10 = 0;
        sp10->unk1C = 1;
        sp10->unk14 = temp_v0_6;
        temp_t0->unk138 = 0;
        temp_t0->unk12C = (s32) sp10;
        *sp10->unk14 = (s32) sp0;
        temp_s3_2->unk38->unk24->unk20 = (s32) sp10;
        sp10->unk24 = (void *) temp_s3_2->unk38->unk24;
        sp10->unk20 = (void *) temp_s3_2->unk38;
        temp_s3_2->unk38->unk24 = (void *) sp10;
        return;
    }
    if (bcmp(var_s2, var_s0->unk4, sp8, var_a3_3) != 0) {
        var_s0 = var_s0->unk24;
        if (temp_s3_2->unk38 == var_s0) {
            temp_v0_5 = temp_s6->unk0(temp_s6, 0x28);
            temp_v0_5->unk18 = 4;
            temp_v0_5->unkC = temp_s4_2;
            temp_v0_5->unk8 = var_s1;
            temp_v0_5->unk4 = var_s2;
            temp_v0_5->unk0 = arg2;
            sp10 = (s64) temp_v0_5;
            temp_v0_6 = temp_s6->unk0(temp_s6, 0x10);
            temp_t0 = sp18 + sp0;
            sp10->unk10 = 0;
            sp10->unk1C = 1;
            sp10->unk14 = temp_v0_6;
            temp_t0->unk138 = 0;
            temp_t0->unk12C = (s32) sp10;
            *sp10->unk14 = (s32) sp0;
            temp_s3_2->unk38->unk24->unk20 = (s32) sp10;
            sp10->unk24 = (void *) temp_s3_2->unk38->unk24;
            sp10->unk20 = (void *) temp_s3_2->unk38;
            temp_s3_2->unk38->unk24 = (void *) sp10;
            return;
        }
        goto loop_7;
    }
    temp_v0_7 = var_s0->unk18;
    if (var_s0->unk1C == temp_v0_7) {
        var_s0->unk18 = (s32) (temp_v0_7 * 2);
        var_s0->unk14 = temp_s6->unk8(temp_s6, var_s0->unk14, temp_v0_7 * 8, sp0);
    }
    temp_a7_2 = sp18 + sp0;
    temp_a7_2->unk12C = var_s0;
    temp_a7_2->unk138 = (s32) var_s0->unk1C;
    temp_a5 = var_s0->unk1C + 1;
    var_s0->unk1C = temp_a5;
    (var_s0->unk14 + (temp_a5 * 4))->unk-4 = (s32) sp0;
    temp_s6->unkC(temp_s6, var_s2);
}

void subtractTexTableUsage(s64 arg0, s64 arg1, s64 arg2, s32 arg3, s64 arg4) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a5;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t3;
    void *temp_a1;
    void *temp_a2;
    void *temp_a3;
    void *temp_a4;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_a7;

    temp_t0 = arg4 * 4;
    temp_a6 = temp_t0 + arg3;
    temp_a7 = temp_a6->unk12C;
    if (temp_a7 != NULL) {
        sp10 = arg4;
        temp_a6->unk12C = NULL;
        sp8 = arg2;
        sp0 = arg1;
        temp_a5 = temp_a7->unk1C - 1;
        sp20 = arg0;
        temp_a7->unk1C = temp_a5;
        if (temp_a5 != 0) {
            temp_a0 = temp_a6->unk138;
            temp_t1 = temp_a0 * 4;
            if (temp_a5 != temp_a0) {
                temp_t3 = temp_a7->unk14;
                *(temp_t1 + temp_t3) = *(temp_t3 + (temp_a5 * 4));
                (*(temp_a7->unk14 + temp_t1) + temp_t0)->unk138 = temp_a0;
            }
        } else {
            sp18 = (s64) temp_a7;
            sp20->unkC(sp20, sp18->unk14, temp_a5, temp_a6, temp_a7);
            sp20->unkC(sp20, sp18->unk4);
            temp_a5_2 = sp18->unk20;
            temp_a4 = sp18->unk24;
            temp_a5_2->unk24 = temp_a4;
            temp_a3 = sp18->unk24;
            temp_a2 = sp18->unk20;
            temp_a3->unk20 = temp_a2;
            temp_a1 = sp18->unk10;
            if (temp_a1 != NULL) {
                if (sp0 != 0) {
                    *(s32 *)0x4000 = 0x1E0;
                    *(void *)0x4000 = (s32) sp10;
                    *(void *)0x4000 = (s32) temp_a1->unk4;
                }
                sp8->unk18(sp8, temp_a1, temp_a2, temp_a3, temp_a4, temp_a5_2, sp0);
            }
            sp20->unkC(sp20, (s32) sp18);
        }
    }
}

/*
Decompilation failure in function initTexTables:

Unable to determine jump table for jr instruction at kon_texture_api.s line 1571.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function freeTexTables:

Unable to determine jump table for jr instruction at kon_texture_api.s line 1646.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function initARMTexCache:

Unable to determine jump table for jr instruction at kon_texture_api.s line 1660.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function updateTexUsage:

Unable to determine jump table for jr instruction at kon_texture_api.s line 1688.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 targetIndex(s32 arg0) {
    switch (arg0) {                                 /* irregular */
    default:
        return ((arg0 ^ 0x8095) == 0) ? 0 : -1;
    case 0xDE0:
        return 1;
    case 0xDE1:
        return 2;
    case 0x806F:
        return 3;
    }
}

s32 isLodInvalid(s32 arg0, s32 arg1) {
    s32 var_a3;
    s32 var_a6;

    if (arg1 >= 0) {
        if (arg0 != 1) {
            var_a3 = arg1 < 0x11;
            if (arg0 != 2) {
                var_a3 = arg1 < 0x11;
                if (arg0 != 4) {
                    if (arg0 == 5) {
                        goto block_5;
                    }
                    goto block_7;
                }
            }
            goto block_6;
        }
block_5:
        var_a3 = arg1 < 0x11;
block_6:
        if (var_a3 != 0) {
block_7:
            if (arg0 != 3) {
                var_a6 = arg1 < 0xC;
                if (arg0 != 6) {
                    goto block_9;
                }
                goto block_13;
            }
            var_a6 = arg1 < 0xC;
block_13:
            if (var_a6 == 0) {
                /* Duplicate return node #14. Try simplifying control flow for better match */
                return 1;
            }
block_9:
            if ((arg1 == 0) || (arg0 != 0)) {
                return 0;
            }
            /* Duplicate return node #14. Try simplifying control flow for better match */
            return 1;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        return 1;
    }
    return 1;
}

s32 unmatchObjLevel(void *arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_t3;
    u8 temp_t1;
    void *temp_a6;

    temp_a6 = (arg0 + (arg1 * 4))->unk7C;
    temp_t1 = arg0->unk190;
    temp_t2 = arg0->unk154 - arg1;
    temp_t0 = arg0->unk150 - arg1;
    temp_a3 = temp_t1 * 2;
    temp_a5 = arg0->unk14C - arg1;
    temp_a7 = temp_a6->unkC - temp_a3;
    temp_a4 = temp_a6->unk8 - temp_a3;
    if (arg0->unk178 != 3) {
        var_t3 = 1;
    } else {
        var_t3 = temp_a6->unk10 - temp_a3;
    }
    temp_a3_2 = arg0->unk16C;
    if ((temp_a3_2 != 0x8170) && (temp_a3_2 != 0x844D) && (temp_a3_2 != 0x844E) && (temp_a3_2 != 0x844F)) {
        if (((temp_a5 >= 0) ? (temp_a4 != (1 << temp_a5)) : (temp_a4 != 1)) != 0) {
            goto block_7;
        }
        if ((((temp_t0 >= 0) ? (temp_a7 != (1 << temp_t0)) : (temp_a7 != 1)) == 0) && (((temp_t2 >= 0) ? (var_t3 != (1 << temp_t2)) : (var_t3 != 1)) == 0) && (temp_a6->unk14 == temp_t1)) {
            var_a0_2 = 1;
            if (temp_a6->unk4 == arg0->unk1C) {
                var_a0_2 = 0;
            }
        } else {
block_7:
            var_a0_2 = 1;
        }
        return var_a0_2;
    }
    if (arg1 >= arg0->unk194) {
        var_a1 = 1;
        if (((temp_a5 >= 0) ? (temp_a4 != (1 << temp_a5)) : (temp_a4 != 1)) != 0) {

        } else {
            var_a1 = 1;
            if (((temp_t0 >= 0) ? (temp_a7 != (1 << temp_t0)) : (temp_a7 != 1)) == 0) {
                var_a1 = 1;
                if (((temp_t2 >= 0) ? (var_t3 != (1 << temp_t2)) : (var_t3 != 1)) == 0) {
                    var_a1 = 0;
                }
            }
        }
    } else {
        temp_a1 = 1 << arg0->unk198;
        if ((temp_a1 != temp_a4) || (temp_a1 != temp_a7)) {
            var_a1 = 1;
        } else {
            var_a1 = 0;
        }
    }
    if (var_a1 != 0) {
        goto block_16;
    }
    if ((temp_a6->unk14 == temp_t1) && (var_a0 = 0, (temp_a6->unk4 == arg0->unk1C))) {

    } else {
block_16:
        var_a0 = 1;
    }
    return var_a0;
}

/*
Decompilation failure in function allocLevelImage:

Unable to determine jump table for jr instruction at kon_texture_api.s line 2019.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void setDetailFilter(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;

    if (arg0->unk18 != 0) {
        arg0->unk40 = (s32) ((arg0->unk40 & ~0xE0) | 0x20);
        return;
    }
    temp_a2 = arg0->unk174;
    if (temp_a2 != 0x2100) {
        if (temp_a2 == 0x104) {
            arg0->unk40 = (s32) ((arg0->unk40 & ~0xE0) | 0x60);
        }
    } else {
        arg0->unk40 = (s32) ((arg0->unk40 & ~0xE0) | 0x80);
    }
    temp_a2_2 = arg0->unk168;
    switch (temp_a2_2) {                            /* irregular */
    case 0x8098:
        arg0->unk40 = (s32) ((arg0->unk40 & 0xF3FFFFFF) | 0x08000000);
        return;
    case 0x8097:
        arg0->unk40 = (s32) (arg0->unk40 & 0xF3FFFFFF);
        return;
    case 0x8099:
        arg0->unk40 = (s32) ((arg0->unk40 & 0xF3FFFFFF) | 0x04000000);
        return;
    }
}

void setSharpenFilter(void *arg0) {
    s64 sp0;
    s32 temp_a1_2;
    s32 temp_a2;
    s64 temp_a1;

    temp_a2 = arg0->unk18;
    temp_a1 = temp_a2 + 1;
    if (~arg0->unk24 & ((1 << (temp_a1 + 1)) - (1 << temp_a2))) {
        /* Duplicate return node #1. Try simplifying control flow for better match */
        arg0->unk40 = (s32) ((arg0->unk40 & ~0xE0) | 0x20);
        return;
    }
    sp0 = (s64) arg0;
    if (subtractTexTableUsage((s64) arg0, temp_a1, (s64) temp_a2) == 0) {
        temp_a1_2 = arg0->unk168;
        switch (temp_a1_2) {                        /* irregular */
        case 0x80AE:
            arg0->unk40 = (s32) ((((arg0->unk40 & 0xF3FFFFFF) | 0x08000000) & ~0xE0) | 0xA0);
            return;
        case 0x80AD:
            arg0->unk40 = (s32) ((arg0->unk40 & 0xF3FFFFFF & ~0xE0) | 0xA0);
            return;
        case 0x80AF:
            arg0->unk40 = (s32) ((((arg0->unk40 & 0xF3FFFFFF) | 0x04000000) & ~0xE0) | 0xA0);
            return;
        }
    } else {
        arg0->unk40 = (s32) ((arg0->unk40 & ~0xE0) | 0x20);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
void changeMinMaxLod(s32 *arg0, void *arg1, s32 arg2, s32 arg4, s32 arg5, s32 arg7) {
    f64 sp0;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f13;
    f32 temp_f5;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_f8;
    s32 temp_f8_2;
    s32 temp_f8_3;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a7 = arg7;
    var_a3 = arg1->unkC;
    switch (var_a3) {                               /* irregular */
    default:
        var_a1 = arg1->unk16C;
        break;
    case 1:
    case 3:
        var_a1 = arg1->unk16C;
        arg1->unk18 = 0;
        arg1->unk14 = 0;
        break;
    case 0:
        var_a1 = arg1->unk16C;
        if ((var_a1 != 0x2600) && (var_a1 != 0x2601)) {
            temp_a2 = arg1->unk14C;
            temp_a3 = arg1->unk150;
            temp_v1 = arg1->unk15C;
            var_a2 = (temp_a3 >= temp_a2) ? temp_a3 : temp_a2;
            var_a3 = arg1->unk158;
            arg1->unk18 = var_a3;
            arg1->unk14 = (s32) ((temp_v1 >= var_a2) ? var_a2 : temp_v1);
        } else {
            temp_t0 = arg1->unk158;
            arg1->unk18 = temp_t0;
            arg1->unk14 = temp_t0;
        }
        break;
    case 2:
        temp_a7 = arg1->unk14C;
        temp_t1 = arg1->unk150;
        temp_a5 = arg1->unk154;
        temp_a7_2 = (temp_t1 >= temp_a7) ? temp_t1 : temp_a7;
        temp_a3_2 = arg1->unk15C;
        var_a1 = arg1->unk16C;
        var_a5 = (temp_a7_2 >= temp_a5) ? temp_a7_2 : temp_a5;
        var_a7 = arg1->unk158;
        var_a4 = temp_a3_2 < var_a5;
        arg1->unk18 = var_a7;
        var_a3 = (var_a4 == 0) ? var_a5 : temp_a3_2;
        arg1->unk14 = var_a3;
        break;
    }
    if (var_a1 != 0x8170) {
        var_a2 = 0x844E;
        if (var_a1 != 0x844D) {
            var_a3 = 0x844F;
            if ((var_a1 != 0x844E) && (var_a1 != 0x844F)) {
                goto block_9;
            }
        }
    }
    if (arg1->unk1B4 != 0) {
        temp_a5_2 = arg1->unk1B8;
        temp_a0 = arg1->unk15C - temp_a5_2;
        temp_a4 = arg1->unk158 - temp_a5_2;
        temp_f13 = (f32) temp_a5_2;
        var_a2_2 = temp_a4 < 0;
        temp_a5_3 = (var_a2_2 == 0) ? temp_a4 : 0;
        var_a1_2 = arg1->unk1B0 - 1;
        temp_f8 = temp_a5_3 + 1;
        temp_f5 = arg1->unk164 - temp_f13;
        var_a3_2 = var_a1_2;
        temp_f12 = arg1->unk160 - temp_f13;
        if (temp_a0 >= 0) {
            var_a2_2 = temp_a0 < var_a1_2;
            if (var_a2_2 != 0) {
                goto block_27;
            }
        } else if (var_a1_2 > 0) {
block_27:
            var_a3_2 = (temp_a0 >= 0) ? temp_a0 : 0;
        }
        temp_a7_3 = (temp_a4 >= 0) ? temp_a4 : 0;
        arg1->unk18 = temp_a7_3;
        if (temp_a0 >= 0) {
            if (temp_a0 < var_a1_2) {
                goto block_31;
            }
        } else if (var_a1_2 > 0) {
block_31:
            var_a1_2 = (temp_a0 >= 0) ? temp_a0 : 0;
        }
        arg1->unk14 = var_a1_2;
        if (temp_f12 < 0.0f) {
            if (temp_a5_3 > 0) {
                var_f7 = M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
            } else {
                sp0 = (bitwise f64) temp_f5;
                unksp18 = (s64) var_a3_2;
                temp_f0 = M2C_ERROR(/* Read from unset register $t9 */)(temp_a0, var_a1_2, var_a2_2, var_a3_2, temp_a4, temp_a5_3, 1, temp_a7_3, temp_f12, 1.0f, temp_a7_3);
                var_f7 = temp_f0;
            }
            var_a0 = (s32) var_f7;
        } else {
            var_a0 = (s32) ((M2C_ERROR(/* unknown instruction: movf.s $f10, $f14, $fcc5 */) + 1.0f) * 64.0f);
        }
        if (temp_f5 < 0.0f) {
            sp0 = (bitwise f64) temp_f5;
            if (var_a3_2 > 0) {
                var_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
            } else {
                unksp20 = (s64) var_a0;
                var_f5 = __glKonTexExp2NegX64((s32 *) var_a0, (void *) sp0, second half of f64);
            }
            var_a1_3 = (s32) var_f5;
        } else {
            temp_f8_2 = (s32) ((M2C_ERROR(/* unknown instruction: movf.s $f8, $f11, $fcc7 */) + 1.0f) * 64.0f);
            var_a1_3 = (temp_f8_2 >= 0x3FF) ? 0x3FF : temp_f8_2;
        }
    } else {
block_9:
        temp_f12_2 = arg1->unk160;
        temp_a1 = arg1->unk18;
        if (temp_f12_2 < 0.0f) {
            if (temp_a1 > 0) {
                var_f6 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
            } else {
                var_f6 = M2C_ERROR(/* Read from unset register $t9 */)(0x844D, temp_a1, var_a2, var_a3, var_a4, var_a5, 1, var_a7, temp_f12_2);
            }
            var_a0_2 = (s32) var_f6;
        } else {
            var_a0_2 = (s32) ((M2C_ERROR(/* unknown instruction: movf.s $f9, $f13, $fcc1 */) + 1.0f) * 64.0f);
        }
        temp_f12_3 = arg1->unk164;
        if (temp_f12_3 < 0.0f) {
            if (arg1->unk14 > 0) {
                var_f5_2 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
            } else {
                unksp20 = (s64) var_a0_2;
                var_f5_2 = M2C_ERROR(/* Read from unset register $t9 */)(var_a0_2, temp_f12_3);
            }
            var_a1_3 = (s32) var_f5_2;
        } else {
            temp_f8_3 = (s32) ((M2C_ERROR(/* unknown instruction: movf.s $f8, $f11, $fcc3 */) + 1.0f) * 64.0f);
            var_a1_3 = (temp_f8_3 >= 0x3FF) ? 0x3FF : temp_f8_3;
        }
    }
    // Error: negative shift count
    // At instruction: bgez $t2, .L0d966578
    if (M2C_ERROR()) {
        if (arg0->unk0 & (0x10 - (1 << (arg0->unk4 + 1)))) {
            __glkonlc_PointParameterfvSGIS(arg0, (void *) var_a1_3);
        }
        if (arg1->unk178 == arg0->unk4) {
            __glKonTexExp2NegX64(arg0, arg1);
        }
    }
}

s32 guessBaseLevel(void *arg0, s32 arg3) {
    s32 temp_a2;
    s32 var_a3;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d9668ac
    if (M2C_ERROR()) {
        temp_a2 = arg0->unk24;
        if (!(temp_a2 & (1 << var_a3))) {
            var_a3 = 0;
            if (!(temp_a2 & 1)) {
loop_3:
                var_a3 += 1;
                if (!(temp_a2 & (1 << var_a3))) {
                    var_a3 += 1;
                    if (temp_a2 & (1 << var_a3)) {

                    } else {
                        goto loop_3;
                    }
                }
            } else {
                var_a3 = 0;
            }
        }
        return var_a3;
    }
    return var_a3;
}

/*
Internal error in function changeFilter:

Traceback (most recent call last):
  File "/work/m2c/m2c/main.py", line 338, in run
    function_text = get_function_text(decomp.state.info, options)
  File "/work/m2c/m2c/if_statements.py", line 1475, in get_function_text
    formatted_body = body.format(fmt)
  File "/work/m2c/m2c/if_statements.py", line 345, in format
    return "\n".join(
           ~~~~~~~~~^
        statement.format(fmt)
        ^^^^^^^^^^^^^^^^^^^^^
        for statement in self.statements
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        if statement.should_write()
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "/work/m2c/m2c/if_statements.py", line 346, in <genexpr>
    statement.format(fmt)
    ~~~~~~~~~~~~~~~~^^^^^
  File "/work/m2c/m2c/if_statements.py", line 84, in format
    self.if_body.format(fmt),  # has its own indentation
    ~~~~~~~~~~~~~~~~~~~^^^^^
  File "/work/m2c/m2c/if_statements.py", line 345, in format
    return "\n".join(
           ~~~~~~~~~^
        statement.format(fmt)
        ^^^^^^^^^^^^^^^^^^^^^
        for statement in self.statements
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        if statement.should_write()
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "/work/m2c/m2c/if_statements.py", line 346, in <genexpr>
    statement.format(fmt)
    ~~~~~~~~~~~~~~~~^^^^^
  File "/work/m2c/m2c/if_statements.py", line 84, in format
    self.if_body.format(fmt),  # has its own indentation
    ~~~~~~~~~~~~~~~~~~~^^^^^
  File "/work/m2c/m2c/if_statements.py", line 345, in format
    return "\n".join(
           ~~~~~~~~~^
        statement.format(fmt)
        ^^^^^^^^^^^^^^^^^^^^^
        for statement in self.statements
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        if statement.should_write()
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "/work/m2c/m2c/if_statements.py", line 346, in <genexpr>
    statement.format(fmt)
    ~~~~~~~~~~~~~~~~^^^^^
  File "/work/m2c/m2c/if_statements.py", line 77, in format
    cond_str = format_expr(condition, fmt)
  File "/work/m2c/m2c/translate.py", line 2897, in format_expr
    ret = expr.format(fmt)
  File "/work/m2c/m2c/translate.py", line 1290, in format
    rhs = right_expr.format(fmt)
  File "/work/m2c/m2c/translate.py", line 1511, in format
    return self.var.format(fmt)
           ~~~~~~~~~~~~~~~^^^^^
  File "/work/m2c/m2c/translate.py", line 912, in format
    assert self.is_emitted
           ^^^^^^^^^^^^^^^
AssertionError
*/

void changeClamp(s32 *arg0, s32 *arg1, s32 arg2, s32 arg3, s32 arg7) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a3;
    s32 var_a7;
    s64 temp_a2;
    s64 temp_a6;
    s64 var_at;

    var_a3 = arg3;
    var_a7 = arg7;
    var_at = 0x2802;
    switch (arg2) {                                 /* irregular */
    case 0x2802:
        var_at = var_a3 | (arg1->unk191 & ~3);
        arg1->unk191 = (u8) var_at;
        if ((var_a3 == 2) || (var_a3 == 3)) {
            var_a3 = 1;
        }
        arg1->unk44 = (s32) ((arg1->unk44 & ~0x1000) | (var_a3 << 0xC));
        break;
    case 0x2803:
        var_a7 = 3;
        arg1->unk191 = (u8) ((arg1->unk191 & ~0xC) | (var_a3 * 4));
        if ((var_a3 == 2) || (var_a3 == 3)) {
            var_a3 = 1;
        }
        arg1->unk44 = (s32) ((arg1->unk44 & ~0x2000) | (var_a3 << 0xD));
        break;
    case 0x8072:
        arg1->unk191 = (u8) ((arg1->unk191 & ~0x30) | (var_a3 * 0x10));
        if ((var_a3 == 2) || (var_a3 == 3)) {
            var_a3 = 1;
        }
        var_at = var_a3 << 0xE;
        arg1->unk44 = (s32) ((arg1->unk44 & ~0x4000) | var_at);
        break;
    }
    // Error: negative shift count
    // At instruction: bgez $a2, .L0d967c88
    if (M2C_ERROR()) {
        temp_a6 = arg0->unk4 + 1;
        temp_a5 = 1 << temp_a6;
        temp_a4 = 0x10 - temp_a5;
        temp_a3 = arg0->unk0 & temp_a4;
        if (temp_a3 != 0) {
            __glkonlc_PointParameterfvSGIS(arg0, (void *)-0x1001, (s64) arg1->unk20 << 0x27, temp_a3, temp_a4, temp_a5, temp_a6, var_a7);
        }
        if (arg1->unk178 == arg0->unk4) {
            sub_0d960000(arg0, arg1);
        }
        var_at = (s64) arg1->unk20 << 0x29;
    }
    arg1->unk40 = (s32) (arg1->unk40 & ~0x1000);
    if (var_at < 0) {
        __glKonGetTexParameter(arg0, arg1, subtractTexTableUsage((s64) arg1, -0x1001), arg1->unkC, 0);
        if (arg1->unk20 & 0x01000000) {
            temp_a2 = arg0->unk4 + 1;
            temp_a1 = 1 << temp_a2;
            if (arg0->unk0 & (0x10 - temp_a1)) {
                __glkonlc_PointParameterfvSGIS(arg0, (void *) temp_a1, temp_a2);
            }
            if (arg1->unk178 == arg0->unk4) {
                arg1->unk100(arg0, arg1);
            }
        }
    }
}

void loadPostTextureScaleBias(void *arg0) {
    *(s32 *)0x4000 = 0xED;
    *(void *)0x4000 = 0;
    *(void *)0x4000 = (s32) arg0->unk1F0;
    *(void *)0x4000 = (s32) arg0->unk1F4;
    *(void *)0x4000 = (s32) arg0->unk1F8;
}

void setShadowRegs(void *arg0) {
    if ((arg0->unk1FC != 1) || ((&rdbk_format2 + ((&intern_format_arr3 + (arg0->unk1C * 0x10))->unk8 * 0xC))->unk8 != 0xD)) {
        arg0->unk210 = 1;
        arg0->unk44 = (s32) (arg0->unk44 & ~0xF00);
        arg0->unk40 = (s32) (arg0->unk40 & ~0xC00);
        return;
    }
    arg0->unk210 = 0;
    arg0->unk44 = (s32) (arg0->unk44 | 0xF00);
    arg0->unk40 = (s32) ((arg0->unk40 & ~0xC00) | (((arg0->unk200 != 0x819D) ? 2 : 1) << 0xA));
}

void changeShadow(s32 *arg0, s32 *arg1) {
    s32 temp_a1;
    u32 temp_v1;

    // Error: negative shift count
    // At instruction: bgez $ra, .L0d967fa8
    if (M2C_ERROR()) {
        temp_a1 = arg0->unk4 + 1;
        if (arg0->unk0 & (0x10 - (temp_v1 << temp_a1))) {
            __glkonlc_PointParameterfvSGIS(arg0, (void *) temp_a1);
        }
        if (arg1->unk178 == arg0->unk4) {
            sub_0d960000(arg0, arg1);
        }
    }
}

s32 lodBias2Scale(f32 fparg0) {
    f32 var_f4;
    s32 temp_f6;
    s32 temp_f7;
    s32 temp_f8;
    s32 var_a2;

    if (fparg0 >= 0.0f) {
        temp_f6 = (s32) fparg0;
        var_a2 = 0x10 << temp_f6;
        var_f4 = (f32) ((f64) (fparg0 - (f32) temp_f6) + (second half of f64));
    } else {
        temp_f7 = (s32) (1.0f - fparg0);
        var_a2 = 0x10 >> temp_f7;
        var_f4 = 1.0f + ((f32) temp_f7 - -fparg0);
    }
    temp_f8 = (s32) ((f32) var_a2 * var_f4);
    return (temp_f8 >= 0x100) ? 0xFF : ((temp_f8 != 0) ? temp_f8 : 1);
}

void changeClipmapParams(s32 *arg0, s32 *arg1) {
    f32 temp_f12;
    f32 var_f5;
    f32 var_f6;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s64 temp_a6;
    void *temp_a1_2;

    temp_v0 = arg1->unk1B8;
    temp_s2 = arg1->unk1B0 - 1;
    temp_s5 = (s32) arg1->unk1A8 >> temp_v0;
    temp_s7 = arg1->unk1B4 - 1;
    temp_s8 = (s32) arg1->unk1A4 >> temp_v0;
    if (saved_reg_gp->unk-3E24 == 0) {
        temp_v0_2 = getenv(&__rodata0 - 0x1300);
        if (temp_v0_2 != 0) {
            saved_reg_gp->unk-4078 = (f32) atof(temp_v0_2);
        }
        saved_reg_gp->unk-3E24 = 1;
    }
    temp_a4 = arg1->unk1B8;
    temp_a1 = temp_a4 + temp_s2;
    temp_f12 = saved_reg_gp->unk-4078;
    temp_at = (1 << (temp_a4 + (temp_s2 - __glKonGetTexParameter((s32 *) (s32) ((f32) (1 << arg1->unk198) * arg1->unk1AC))) + 5)) - 1;
    temp_a0 = (s32) ((f32) (1 << temp_a1) * temp_f12) - 1;
    temp_a5 = arg1->unk19C;
    temp_at_2 = (temp_at >= temp_a0) ? temp_a0 : temp_at;
    temp_v0_3 = 1 << (temp_a1 - 1);
    temp_v1 = (s32) (temp_at_2 + 1) >> 1;
    temp_a1_2 = arg1->unk1A0;
    temp_at_3 = ~temp_at_2;
    temp_t8 = temp_s2 * 0x10;
    var_f5 = 0.0f;
    var_f6 = 0.0f;
    if (!((f32) (temp_at_3 & (s32) (f32) ((temp_a5 - temp_v0_3) + temp_v1)) <= 0.0f)) {
        var_f6 = M2C_ERROR(/* unknown instruction: movf.s $f6, $f8, $fcc1 */);
    }
    if (!((f32) (temp_at_3 & (s32) (f32) ((temp_a1_2 - temp_v0_3) + temp_v1)) <= 0.0f)) {
        var_f5 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f4, $fcc3 */);
    }
    // Error: negative shift count
    // At instruction: bgez $a2, .L0d968318
    if (M2C_ERROR()) {
        if (arg0->unk0 & (0x10 - (1 << (arg0->unk4 + 1)))) {
            __glkonlc_PointParameterfvSGIS(arg0, temp_a1_2, (s64) arg1->unk20 << 0x27, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7, temp_f12);
        }
        if (arg1->unk178 == arg0->unk4) {
            sub_0d960000(arg0, arg1);
        }
    }
}

s64 __glKonTexParameter(s64 arg0, s64 arg1, s64 arg2, s32 *arg3, s64 arg4, s32 arg5, s32 arg6, f64 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f64 fparg5, f32 fparg6) {
    s64 sp20;
    s64 sp8;
    s64 sp0;
    f32 var_a0_5;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f12_3;
    f32 var_f14;
    f32 var_f16;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    f32 var_f5_2;
    f64 temp_f5;
    f64 var_f13;
    f64 var_f17;
    s32 *temp_a1_12;
    s32 *temp_s0;
    s32 *var_a3;
    s32 *var_v0_3;
    s32 *var_v0_7;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a1_10;
    s32 temp_a1_11;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2_8;
    s32 temp_a3;
    s32 temp_a3_11;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a4_8;
    s32 temp_a4_9;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a5_8;
    s32 temp_a5_9;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_f6;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2_2;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_f18;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_13;
    s32 var_v0_14;
    s32 var_v0_15;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a2;
    s64 temp_a2_10;
    s64 temp_a2_3;
    s64 temp_a2_4;
    s64 temp_a2_5;
    s64 temp_a2_7;
    s64 temp_a2_9;
    s64 temp_a3_10;
    s64 temp_a3_2;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a6_4;
    s64 temp_f15;
    s64 var_a1;
    s64 var_a2;
    s64 var_a2_3;
    s64 var_a3_2;
    s64 var_a4;
    s64 var_a4_3;
    s64 var_a6_2;
    s64 var_a7;
    s64 var_f19;
    s64 var_ra;
    s64 var_v0_10;
    void *temp_a1_6;
    void *temp_a2_2;
    void *temp_a2_6;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_a7 = arg0;
    temp_t0 = *(s32 *)0x1010;
    temp_s0 = (arg0 + (var_a1 * 4))->unk20;
    if (var_a4 != 0) {
        var_f12 = var_a3->unk0;
        var_v0 = (s32) var_f12;
    } else {
        var_v0 = var_a3->unk0;
        var_f12 = (f32) var_v0;
    }
    if (var_a2 >= 0x813C) {
        if (var_a2 <= 0x813C) {
            if (var_v0 >= 0) {
                sp8 = (s64) var_v0;
                if ((temp_s0->unk178 != 0) && (temp_s0->unk158 != var_v0)) {
                    // Error: negative shift count
                    // At instruction: bgez $a1, .L0d968444
                    if (M2C_ERROR() || (var_a3 = (s32 *) (var_v0 << var_v0), var_a2 = temp_s0->unk24 & (s32) var_a3, (var_a2 == 0)) || ((temp_a0 = temp_s0->unkC, (temp_a0 != 0)) && (var_a4 = 2, sp0 = var_a7, (temp_a0 != 2)))) {
                        sp0 = var_a7;
                        temp_s0->unk158 = (s32) sp8;
                        subtractTexTableUsage(sp0, (s64) temp_s0, var_a2, (s32) var_a3, var_a4, (s32) sp8, (s32) var_a7, (bitwise s32) var_f12);
                    } else {
                        sp0 = var_a7;
                        if (subtractTexTableUsage((s64) temp_s0, sp8, var_a2, (s32) var_a3, var_a4, (s32) var_a7, (bitwise s32) var_f12) != 0) {
                            temp_s0->unk158 = (s32) sp8;
                            __glKonGetTexParameter((s32 *) sp0, temp_s0, sp8, temp_s0->unkC, temp_s0->unk20 & 0x400000, 0x400000, (s32) sp8);
                        } else if (sp8 < temp_s0->unk158) {
                            temp_s0->unk158 = (s32) sp8;
                            subtractTexTableUsage(sp0, (s64) temp_s0, sp8);
                            __glKonGetTexParameter((s32 *) sp0, temp_s0);
                        } else {
                            temp_s0->unk158 = (s32) sp8;
                            subtractTexTableUsage(sp0, (s64) temp_s0);
                        }
                    }
                    var_v0_2 = temp_s0->unk10;
                    if (var_v0_2 != 1) {
                        if (var_v0_2 == 2) {
                            var_v0_2 = subtractTexTableUsage((s64) temp_s0);
                        }
                    } else {
                        var_v0_2 = subtractTexTableUsage((s64) temp_s0);
                    }
                    // Error: negative shift count
                    // At instruction: bltz $a0, .L0d9685ec
                    if (M2C_ERROR()) {
                        temp_a4 = temp_s0->unk18;
                        temp_a3 = 1 << temp_a4;
                        temp_a2 = (1 << (temp_s0->unk14 + 1)) - temp_a3;
                        temp_a1 = ~temp_s0->unk24 & temp_a2;
                        var_v0 = 0;
                        if (temp_a1 == 0) {
                            if (__glKonGetTexParameter(temp_s0, (s32 *) temp_a1, temp_a2, temp_a3, temp_a4) != 0) {
                                temp_s0->unk20 = (s32) (temp_s0->unk20 & 0xFFFEFFFF);
                                __glKonGetTexParameter((s32 *) sp0, temp_s0);
                            }
                            goto block_33;
                        }
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                temp_s0->unk158 = (s32) sp8;
                return 0;
            }
            return -2;
        }
        temp_a5 = var_a2 < 0x8179;
        temp_a6 = var_a2 > 0x8179;
        if (temp_a5 == 0) {
            if (temp_a6 == 0) {
                var_a1_2 = 0x18;
                var_v0_3 = temp_s0;
                temp_a2_2 = var_a3 + 0x10;
                var_a0 = 3;
                temp_s0->unk1F8 = 0;
loop_65:
                if (var_a4 != 0) {
                    var_f5 = *var_a3;
                } else {
                    var_f5 = (f32) *var_a3;
                }
                temp_t3 = 1 << var_a0;
                temp_at = 1 << var_a0;
                var_a0 -= 1;
                var_a3 += 4;
                if (var_f5 < 0.0f) {
                    var_f4 = 0.0f;
                } else {
                    var_f4 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f7, $fcc4 */);
                }
                var_v0_3->unk1E0 = var_f4;
                if (var_f4 != 0.0f) {
                    temp_s0->unk1F0 = (s32) (temp_s0->unk1F0 | temp_t3);
                } else if (var_v0_3->unk1D0 == 1.0f) {
                    temp_s0->unk1F0 = (s32) (temp_s0->unk1F0 & ~temp_at);
                }
                var_v0_3 += 4;
                temp_t1 = ((s64) ((f64) (var_f4 * 255.0f) + 0.5) << 0) << var_a1_2;
                var_a1_2 -= 8;
                temp_a7 = temp_s0->unk1F8 | temp_t1;
                temp_s0->unk1F8 = temp_a7;
                if (var_a3 != temp_a2_2) {
                    goto loop_65;
                }
                *(s32 *)0x4000 = 0x1D7;
                *(void *)0x4000 = (s32) temp_s0->unk178;
                *(void *)0x4000 = (s32) temp_s0->unk1F0;
                *(void *)0x4000 = (s32) temp_s0->unk1F4;
                *(void *)0x4000 = temp_a7;
                goto block_33;
            }
            temp_a1_2 = var_a2 < 0x8190;
            if (temp_a1_2 == 0) {
                temp_a3_2 = var_a2 > 0x8190;
                if (temp_a3_2 == 0) {
                    if (var_a4 != 0) {
                        temp_s0->unk21C = var_f12;
                        sp0 = var_a7;
                    } else {
                        var_f12 = (f32) var_v0;
                        sp0 = var_a7;
                        temp_s0->unk21C = var_f12;
                    }
                    // Error: negative shift count
                    // At instruction: bgez $v1, .L0d9685e8
                    if (M2C_ERROR()) {
                        var_v0_4 = sp0->unk4;
                        temp_a5_2 = var_v0_4 + 1;
                        temp_a4_2 = 1 << temp_a5_2;
                        temp_a3_3 = 0x10 - temp_a4_2;
                        temp_a2_3 = sp0->unk0 & temp_a3_3;
                        if (temp_a2_3 != 0) {
                            __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *)0xFF00FFFF, temp_a2_3, temp_a3_3, temp_a4_2, temp_a5_2);
                            var_v0_4 = sp0->unk4;
                        }
                        var_v0 = 0;
                        if (temp_s0->unk178 == var_v0_4) {
                            sub_0d960000((s32 *) sp0, temp_s0);
                            goto block_33;
                        }
                    } else {
                        goto block_33;
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                if (var_a2 >= 0x819B) {
                    var_a0_2 = 0x819D;
                    if (var_a2 <= 0x819B) {
                        sp8 = (s64) var_v0;
                        if (var_v0 != 0x819D) {
                            var_a0_2 = 0x819C;
                            if (var_v0 != 0x819C) {
                                var_v0 = -1;
                            } else {
                                goto block_324;
                            }
                        } else {
block_324:
                            temp_s0->unk200 = var_a0_2;
                            temp_a0_2 = temp_s0->unk178;
                            if ((temp_a0_2 == 1) || (var_v0 = 0, (temp_a0_2 == 2))) {
                                subtractTexTableUsage(var_a7, (s64) temp_s0, temp_a3_2, 1, 2, (s32) temp_a6, (s32) var_a7, (bitwise s32) var_f12);
                                goto block_33;
                            }
                        }
                        /* Duplicate return node #34. Try simplifying control flow for better match */
                        return (s64) var_v0;
                    }
                    goto block_95;
                }
                if (var_a2 == 0x819A) {
                    sp8 = (s64) var_v0;
                    if ((var_v0 != 0) && (var_v0 != 1)) {
                        var_v0 = -1;
                    } else {
                        temp_a0_3 = temp_s0->unk178;
                        temp_s0->unk1FC = (s32) sp8;
                        if ((temp_a0_3 == 1) || (var_v0 = 0, (temp_a0_3 == 2))) {
                            subtractTexTableUsage(var_a7, (s64) temp_s0, temp_a3_2, temp_a5, temp_a6, (s32) var_a7, (bitwise s32) var_f12);
                            goto block_33;
                        }
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                goto block_95;
            }
            temp_a1_3 = var_a2 > 0x818E;
            if (var_a2 >= 0x818E) {
                if (temp_a1_3 == 0) {
                    if (var_a4 != 0) {
                        temp_s0->unk214 = var_f12;
                        sp0 = var_a7;
                    } else {
                        var_f12 = (f32) var_v0;
                        sp0 = var_a7;
                        temp_s0->unk214 = var_f12;
                    }
                    // Error: negative shift count
                    // At instruction: bgez $v1, .L0d9685e8
                    if (M2C_ERROR()) {
                        var_v0_5 = sp0->unk4;
                        temp_a3_4 = var_v0_5 + 1;
                        temp_a2_4 = 1 << temp_a3_4;
                        temp_a1_4 = 0x10 - temp_a2_4;
                        if (sp0->unk0 & temp_a1_4) {
                            __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) temp_a1_4, temp_a2_4, temp_a3_4);
                            var_v0_5 = sp0->unk4;
                        }
                        var_v0 = 0;
                        if (temp_s0->unk178 == var_v0_5) {
                            sub_0d960000((s32 *) sp0, temp_s0);
                            goto block_33;
                        }
                    } else {
                        goto block_33;
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                if (var_a2 == 0x818F) {
                    if (var_a4 != 0) {
                        temp_s0->unk218 = var_f12;
                        sp0 = var_a7;
                    } else {
                        var_f12 = (f32) var_v0;
                        sp0 = var_a7;
                        temp_s0->unk218 = var_f12;
                    }
                    // Error: negative shift count
                    // At instruction: bgez $v1, .L0d9685e8
                    if (M2C_ERROR()) {
                        var_v0_6 = sp0->unk4;
                        temp_a4_3 = var_v0_6 + 1;
                        temp_a3_5 = 1 << temp_a4_3;
                        temp_a2_5 = 0x10 - temp_a3_5;
                        temp_a1_5 = sp0->unk0 & temp_a2_5;
                        if (temp_a1_5 != 0) {
                            __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) temp_a1_5, temp_a2_5, temp_a3_5, temp_a4_3);
                            var_v0_6 = sp0->unk4;
                        }
                        var_v0 = 0;
                        if (temp_s0->unk178 == var_v0_6) {
                            sub_0d960000((s32 *) sp0, temp_s0);
                            goto block_33;
                        }
                    } else {
                        goto block_33;
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                goto block_95;
            }
            if (var_a2 == 0x817A) {
                var_a1_3 = 0x18;
                var_v0_7 = temp_s0;
                temp_a2_6 = var_a3 + 0x10;
                var_a0_3 = 3;
                temp_s0->unk1F4 = 0;
loop_244:
                if (var_a4 != 0) {
                    var_f5_2 = *var_a3;
                } else {
                    var_f5_2 = (f32) *var_a3;
                }
                if (var_f5_2 < 0.0f) {
                    var_f4_2 = 0.0f;
                } else {
                    var_f4_2 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f7, $fcc6 */);
                }
                var_v0_7->unk1D0 = var_f4_2;
                if (var_f4_2 != 1.0f) {
                    temp_s0->unk1F0 = (s32) (temp_s0->unk1F0 | (1 << var_a0_3));
                } else if (var_v0_7->unk1E0 == 0.0f) {
                    temp_s0->unk1F0 = (s32) (temp_s0->unk1F0 & ~(1 << var_a0_3));
                }
                var_v0_7 += 4;
                var_a0_3 -= 1;
                var_a3 += 4;
                temp_t0_2 = ((s64) ((f64) (var_f4_2 * 255.0f) + 0.5) << 0) << var_a1_3;
                var_a1_3 -= 8;
                temp_a7_2 = temp_s0->unk1F4 | temp_t0_2;
                temp_s0->unk1F4 = temp_a7_2;
                if (var_a3 != temp_a2_6) {
                    goto loop_244;
                }
                *(void *)0x4000 = 0x1D7;
                *(void *)0x4000 = (s32) temp_s0->unk178;
                *(void *)0x4000 = (s32) temp_s0->unk1F0;
                *(void *)0x4000 = temp_a7_2;
                *(void *)0x4000 = (s32) temp_s0->unk1F8;
                goto block_33;
            }
            /* Duplicate return node #96. Try simplifying control flow for better match */
            return -1;
        }
        temp_a5_3 = var_a2 < 0x8173;
        var_a6_2 = var_a2 > 0x8173;
        if (temp_a5_3 == 0) {
            if (var_a6_2 == 0) {
                if (var_a4 != 0) {
                    sp8 = (s64) var_v0;
                    if ((var_v0 < 0) || (var_f14 = 0.0f, var_f13 = (f64) var_a3->unk4, var_f12 = second half of f64, (var_f13 < GLUE_F64(fparg3, 0.0f)))) {
                        return -2;
                    }
                    temp_s0->unk1A4 = var_v0;
                    temp_f6 = (s32) var_a3->unk4;
                    temp_s0->unk1A8 = temp_f6;
                    var_a0_4 = temp_f6;
                    goto block_158;
                }
                sp8 = (s64) var_v0;
                if ((var_v0 >= 0) && ((bitwise s32) var_a3->unk4 >= 0)) {
                    temp_s0->unk1A4 = var_v0;
                    var_a0_4 = (bitwise s32) var_a3->unk4;
                    temp_s0->unk1A8 = var_a0_4;
block_158:
                    temp_a1_6 = temp_s0->unk1B4;
                    if (temp_a1_6 == NULL) {
                        // Error: negative shift count
                        // At instruction: bgez $a3, .L0d9685e8
                        if (M2C_ERROR()) {
                            var_v0_8 = var_a7->unk4;
                            if (var_a7->unk0 & (0x10 - (1 << (var_v0_8 + 1)))) {
                                sp0 = var_a7;
                                __glkonlc_PointParameterfvSGIS((s32 *) sp0, temp_a1_6, (var_a0_4 << 0x10) | temp_a4_4, (s32) ((s64) temp_s0->unk20 << 0x27), temp_a4_4, temp_a5_4, 0xFFFF0000, (s32) var_a7, var_f12, (bitwise s32) var_f13, (bitwise s32) var_f14);
                                var_ra = sp20;
                                var_v0_8 = var_a7->unk4;
                            }
                            var_v0 = 0;
                            if (temp_s0->unk178 == var_v0_8) {
                                sp20 = var_ra;
                                sub_0d960000((s32 *) var_a7, temp_s0);
                                goto block_33;
                            }
                        } else {
                            goto block_33;
                        }
                    } else {
                        subtractTexTableUsage(var_a7, (s64) temp_s0, sp8, temp_a5_3, var_a6_2, (s32) var_a7, (bitwise s32) var_f12, (bitwise s32) var_f13, (bitwise s32) var_f14);
                        goto block_33;
                    }
                } else {
                    var_v0 = -2;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            }
            switch (var_a2) {                       /* switch 3; irregular */
            default:                                /* switch 3 */
                var_v0 = 0;
                if (var_v0 < 0) {
                    var_v0 = -2;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            case 0x8174:                            /* switch 3 */
                if (var_a4 != 0) {
                    var_a4_2 = (s32) var_a3->unk8;
                    var_t0 = (s32) var_a3->unk4;
                } else {
                    var_a4_2 = (bitwise s32) var_a3->unk8;
                    var_t0 = (bitwise s32) var_a3->unk4;
                }
                sp8 = (s64) var_v0;
                if (var_a4_2 >= (var_v0 + var_t0)) {
                    if ((var_v0 >= 0) && (var_t0 > 0)) {
                        temp_a2_7 = var_t0 < 0x11;
                        if (var_a4_2 > 0) {
                            if ((temp_a2_7 != 0) && (var_a4_2 < 0x21)) {
                                // Error: negative shift count
                                // At instruction: bgez $a5, .L0d96902c
                                if (M2C_ERROR() || (var_a6_2 = (s64) temp_s0->unk1B4, (var_a6_2 == var_a4_2))) {
                                    sp0 = var_a7;
                                    if (var_a1 != M2C_ERROR(/* Read from unset register $t1 */)) {
                                        temp_s0->unk1B0 = var_t0;
                                        temp_s0->unk1B4 = (void *) var_a4_2;
                                        temp_s0->unk1B8 = (s32) sp8;
                                    } else {
                                        temp_s0->unk1B0 = var_t0;
                                        temp_s0->unk1B4 = (void *) var_a4_2;
                                        temp_s0->unk1B8 = (s32) sp8;
                                        subtractTexTableUsage(sp0, (s64) temp_s0, temp_a2_7, (s32) sp8, (s64) var_a4_2, (s32) ((s64) temp_s0->unk20 << 0x2C), (s32) var_a6_2, (s32) var_a7, (bitwise s32) var_f12);
                                        subtractTexTableUsage(sp0, (s64) temp_s0);
                                    }
                                }
                                goto block_33;
                            }
                            /* Duplicate return node #279. Try simplifying control flow for better match */
                            return -2;
                        }
                        goto block_278;
                    }
                    /* Duplicate return node #279. Try simplifying control flow for better match */
                    return -2;
                }
block_278:
                return -2;
            case 0x8176:                            /* switch 3 */
                var_v0 = 0;
                if (var_v0 < 0) {
                    var_v0 = -2;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            }
        } else {
            switch (var_a2) {                       /* switch 2; irregular */
            default:                                /* switch 2 */
                if (var_a4 != 0) {
                    sp8 = (s64) var_v0;
                    if ((var_v0 < 0) || (var_f17 = second half of f64, ((f64) var_a3->unk4 < (second half of f64)))) {
                        return -2;
                    }
                    temp_s0->unk19C = var_v0;
                    var_f16 = (bitwise f32) (s32) var_a3->unk4;
                    temp_s0->unk1A0 = var_f16;
                    var_a0_5 = var_f16;
                    goto block_221;
                }
                sp8 = (s64) var_v0;
                if ((var_v0 >= 0) && (var_a6_2 = (bitwise s64) var_a3->unk4, (var_a6_2 >= 0))) {
                    temp_s0->unk19C = var_v0;
                    var_a0_5 = var_a3->unk4;
                    temp_s0->unk1A0 = var_a0_5;
block_221:
                    if (temp_s0->unk1B4 == NULL) {
                        // Error: negative shift count
                        // At instruction: bgez $v1, .L0d9685e8
                        if (M2C_ERROR()) {
                            var_v0_9 = var_a7->unk4;
                            temp_a6_2 = 1 << (var_v0_9 + 1);
                            temp_a5_5 = 0x10 - temp_a6_2;
                            temp_a4_5 = var_a7->unk0 & temp_a5_5;
                            if (temp_a4_5 != 0) {
                                sp0 = var_a7;
                                __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) (temp_s0->unk60 & ~0x7FFF), -0x8000, temp_a3_6, temp_a4_5, temp_a5_5, temp_a6_2, (s32) var_a7, var_f12, (bitwise s32) var_f16, (bitwise s32) var_f17);
                                var_ra = sp20;
                                var_v0_9 = var_a7->unk4;
                            }
                            var_v0 = 0;
                            if (temp_s0->unk178 == var_v0_9) {
                                sp20 = var_ra;
                                sub_0d960000((s32 *) var_a7, temp_s0);
                                goto block_33;
                            }
                        } else {
                            goto block_33;
                        }
                    } else {
                        subtractTexTableUsage(var_a7, (s64) temp_s0, (s64) temp_a5_3, (s32) var_a6_2, var_a7, (bitwise s32) var_f12, (bitwise s32) var_f16, (bitwise s32) var_f17);
                        goto block_33;
                    }
                } else {
                    var_v0 = -2;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            case 0x813D:                            /* switch 2 */
                sp8 = (s64) var_v0;
                if (var_v0 >= 0) {
                    temp_a2_8 = temp_s0->unk178;
                    if ((temp_a2_8 != 0) && (temp_a0_4 = temp_s0->unk15C, (temp_a0_4 != var_v0))) {
                        temp_a3_7 = temp_a0_4 < var_v0;
                        sp0 = var_a7;
                        if (temp_a3_7 != 0) {
                            temp_s0->unk15C = var_v0;
                            subtractTexTableUsage(sp0, (s64) temp_s0, (s64) temp_a2_8, temp_a3_7, sp8, temp_a5_3, (s32) var_a6_2, (s32) var_a7, (bitwise s32) var_f12);
                            var_v0_10 = __glKonGetTexParameter((s32 *) sp0, temp_s0);
                        } else {
                            temp_s0->unk15C = var_v0;
                            var_v0_10 = subtractTexTableUsage(sp0, (s64) temp_s0, (s64) temp_a2_8, temp_a3_7, sp8, temp_a5_3, (s32) var_a6_2, (s32) var_a7, (bitwise s32) var_f12);
                        }
                        // Error: negative shift count
                        // At instruction: bltz $at, .L0d9685ec
                        if (M2C_ERROR()) {
                            temp_a1_7 = temp_s0->unk18;
                            var_v0 = 0;
                            if (!(~temp_s0->unk24 & ((1 << (temp_s0->unk14 + 1)) - (1 << temp_a1_7)))) {
                                if (__glKonGetTexParameter(temp_s0, (s32 *) temp_a1_7) != 0) {
                                    temp_s0->unk20 = (s32) (temp_s0->unk20 & 0xFFFEFFFF);
                                    __glKonGetTexParameter((s32 *) sp0, temp_s0);
                                }
                                goto block_33;
                            }
                        }
                    } else {
                        var_v0 = 0;
                        temp_s0->unk15C = (s32) sp8;
                    }
                } else {
                    var_v0 = -2;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            case 0x8172:                            /* switch 2 */
                if (!(var_f12 < 0.0f)) {
                    temp_f5 = (f64) var_f12;
                    var_f19 = 0x4090000000000000;
                    var_f18 = second half of f64;
                    if (temp_f5 >= 1.0) {
                        var_v0_11 = 0x3FF;
                    } else {
                        var_f18 = second half of f64;
                        var_f19 = (s64) (s32) (temp_f5 * 1024.0);
                        var_v0_11 = var_f19 & 0x3FF;
                    }
                    temp_s0->unk1AC = (f32) (second half of f64);
                    temp_a1_8 = var_v0_11 << 0xC;
                    temp_s0->unk68 = (s32) ((temp_s0->unk68 & 0xFFC00FFF) | temp_a1_8);
                    if (temp_s0->unk1B4 == NULL) {
                        // Error: negative shift count
                        // At instruction: bgez $a2, .L0d9685ec
                        if (M2C_ERROR()) {
                            var_v0_12 = var_a7->unk4;
                            temp_a6_3 = var_v0_12 + 1;
                            temp_a5_6 = 1 << temp_a6_3;
                            temp_a4_6 = 0x10 - temp_a5_6;
                            temp_a3_8 = var_a7->unk0 & temp_a4_6;
                            if (temp_a3_8 != 0) {
                                sp0 = var_a7;
                                __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) temp_a1_8, (s64) temp_s0->unk20 << 0x27, temp_a3_8, temp_a4_6, temp_a5_6, temp_a6_3, (s32) var_a7, var_f12, var_f18, (s32) var_f19);
                                var_ra = sp20;
                                var_v0_12 = var_a7->unk4;
                            }
                            var_v0 = 0;
                            if (temp_s0->unk178 == var_v0_12) {
                                sp20 = var_ra;
                                sub_0d960000((s32 *) var_a7, temp_s0);
                                goto block_33;
                            }
                        }
                    } else {
                        subtractTexTableUsage(var_a7, (s64) temp_s0, (s64) temp_a5_3, (s32) var_a6_2, var_a7, (bitwise s32) var_f12, var_f18, (s32) var_f19);
                        goto block_33;
                    }
                } else {
                    var_v0 = -2;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            }
        }
    } else {
        if (var_a2 >= 0x809A) {
            temp_a0_5 = -var_v0;
            if (var_a2 <= 0x809A) {
                if ((temp_a0_5 < 0) || (temp_a0_5 >= 5)) {
                    return -2;
                }
                // Error: negative shift count
                // At instruction: bgez $t9, .L0d9685e8
                if (M2C_ERROR()) {
                    var_v0_13 = var_a7->unk4;
                    temp_a2_9 = var_v0_13 + 1;
                    temp_a1_9 = 1 << temp_a2_9;
                    if (var_a7->unk0 & (0x10 - temp_a1_9)) {
                        sp0 = var_a7;
                        __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) temp_a1_9, temp_a2_9, (s32) var_a7, (bitwise s32) var_f12);
                        var_ra = sp20;
                        var_v0_13 = var_a7->unk4;
                    }
                    var_v0 = 0;
                    if (temp_s0->unk178 == var_v0_13) {
                        sp20 = var_ra;
                        sub_0d960000((s32 *) var_a7, temp_s0);
                        goto block_33;
                    }
                } else {
                    goto block_33;
                }
                /* Duplicate return node #34. Try simplifying control flow for better match */
                return (s64) var_v0;
            }
            if (var_a2 >= 0x8125) {
                if (var_a2 <= 0x8125) {
                    sp8 = (s64) var_v0;
                    if ((var_v0 < 0) || (var_v0 >= 4)) {
                        return -2;
                    }
                    temp_s0->unk1CC = var_v0;
                    temp_s0->unk40 = (s32) ((temp_s0->unk40 & 0xFCFFFFFF) | ((3 - var_v0) << 0x18));
                    if ((&intern_format_arr3 + (temp_s0->unk1C * 0x10))->unkC == 4) {
                        // Error: negative shift count
                        // At instruction: bgez $a1, .L0d9685ec
                        if (M2C_ERROR()) {
                            var_v0_14 = var_a7->unk4;
                            temp_a5_7 = var_v0_14 + 1;
                            temp_a4_7 = 1 << temp_a5_7;
                            temp_a3_9 = 0x10 - temp_a4_7;
                            temp_a2_10 = var_a7->unk0 & temp_a3_9;
                            if (temp_a2_10 != 0) {
                                sp0 = var_a7;
                                __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) ((s64) temp_s0->unk20 << 0x27), temp_a2_10, temp_a3_9, temp_a4_7, temp_a5_7, var_a7, (bitwise s32) var_f12);
                                var_ra = sp20;
                                var_v0_14 = var_a7->unk4;
                            }
                            var_v0 = 0;
                            if (temp_s0->unk178 == var_v0_14) {
                                sp20 = var_ra;
                                sub_0d960000((s32 *) var_a7, temp_s0);
                                goto block_33;
                            }
                        }
                    } else {
                        goto block_33;
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                if (var_a2 >= 0x813B) {
                    if (var_a2 <= 0x813B) {
                        temp_s0->unk164 = var_f12;
                        if (temp_s0->unk178 != 0) {
                            subtractTexTableUsage(var_a7, (s64) temp_s0, var_a7, (bitwise s32) var_f12);
                        }
                        goto block_33;
                    }
                    /* Duplicate return node #96. Try simplifying control flow for better match */
                    return -1;
                }
                if (var_a2 != 0x813A) {
                    goto block_95;
                }
                temp_s0->unk160 = var_f12;
                if (temp_s0->unk178 != 0) {
                    subtractTexTableUsage(var_a7, (s64) temp_s0, var_a7, (bitwise s32) var_f12);
                }
                goto block_33;
            }
            temp_a3_10 = var_a2 < 0x80BF;
            if (temp_a3_10 == 0) {
                var_a4_3 = var_a2 > 0x80BF;
                if (var_a4_3 == 0) {
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f17
                    // At instruction: c.lt.d $f5, $f17
                    if (M2C_ERROR()) {
                        var_f12_2 = 0.0f;
                        temp_s0->unk208 = fparg6;
                    } else {
                        var_f13 = 1.0;
                        var_f12_2 = second half of f64;
                        if ((f64) var_f12 > 1.0) {
                            var_f12_2 = 1.0f;
                            temp_s0->unk208 = 1.0f;
                        } else {
                            temp_s0->unk208 = (f32) (second half of f64);
                        }
                    }
                    temp_a0_6 = temp_s0->unk178;
                    temp_f15 = (s64) (var_f12_2 * 63.0f);
                    temp_s0->unk20C = (s32) temp_f15;
                    if ((temp_a0_6 == 1) || (var_a4_3 = 2, var_v0 = 0, (temp_a0_6 == 2))) {
                        subtractTexTableUsage(var_a7, (s64) temp_s0, temp_f15, 1, var_a4_3, (s32) var_a7, (bitwise s32) var_f12_2, (bitwise s32) var_f13, second half of f64, temp_f15, 0, fparg6);
                        goto block_33;
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                if (var_a2 == 0x8124) {
                    sp8 = (s64) var_v0;
                    if ((var_v0 < 0) || (var_v0 >= 2)) {
                        var_v0 = -2;
                    } else {
                        temp_a1_10 = temp_s0->unk1C * 0x10;
                        temp_a0_7 = (&intern_format_arr3 + temp_a1_10)->unkC;
                        temp_s0->unk1C8 = var_v0;
                        var_a2_2 = (temp_s0->unk40 & 0xFCFFFFFF) | ((var_v0 != 0) ? 0 : 0x02000000);
                        temp_s0->unk40 = var_a2_2;
                        if ((temp_a0_7 == 2) || (var_a2_2 = 3, var_v0 = 0, (temp_a0_7 == 3))) {
                            // Error: negative shift count
                            // At instruction: bgez $a3, .L0d9685ec
                            if (M2C_ERROR()) {
                                var_v0_15 = var_a7->unk4;
                                temp_a6_4 = 1 << (var_v0_15 + 1);
                                temp_a5_8 = 0x10 - temp_a6_4;
                                temp_a4_8 = var_a7->unk0 & temp_a5_8;
                                if (temp_a4_8 != 0) {
                                    sp0 = var_a7;
                                    __glkonlc_PointParameterfvSGIS((s32 *) sp0, (void *) temp_a1_10, (s64) var_a2_2, (s32) ((s64) temp_s0->unk20 << 0x27), temp_a4_8, temp_a5_8, temp_a6_4, (s32) var_a7, var_f12);
                                    var_ra = sp20;
                                    var_v0_15 = var_a7->unk4;
                                }
                                var_v0 = 0;
                                if (temp_s0->unk178 == var_v0_15) {
                                    sp20 = var_ra;
                                    sub_0d960000((s32 *) var_a7, temp_s0);
                                    goto block_33;
                                }
                            }
                        }
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
                goto block_95;
            }
            if (var_a2 == 0x809B) {
                sp8 = (s64) var_v0;
                if (var_v0 != 0x104) {
                    var_a1 = 0x2100;
                    if (var_v0 != 0x2100) {
                        return -2;
                    }
                }
                temp_s0->unk174 = (s32) sp8;
                if (temp_s0->unk10 == 1) {
                    subtractTexTableUsage((s64) temp_s0, var_a1, temp_a3_10, (s32) var_a7, (bitwise s64) var_f12);
                }
                goto block_33;
            }
            goto block_95;
        }
        if (var_a2 >= 0x2802) {
            if (var_a2 >= 0x2803) {
                var_a6 = 0x2803;
                if (var_a2 >= 0x8066) {
                    if (var_a2 <= 0x8066) {
                        if (var_f12 > 1.0f) {
                            var_f12_3 = 1.0f;
                        } else {
                            var_f12_3 = M2C_ERROR(/* unknown instruction: movf.s $f12, $f4, $fcc2 */);
                        }
                        temp_s0->unk148 = var_f12_3;
                        __glKonTexUpdatePriority(var_a7->unkF1C, temp_s0, (s32) (var_f12_3 * 2.0f), 0x2803, var_a7, var_f12_3);
                        goto block_33;
                    }
                    if (var_a2 == 0x8072) {
                        goto block_57;
                    }
                    goto block_95;
                }
                if (var_a2 == 0x2803) {
                    goto block_57;
                }
                goto block_95;
            }
block_57:
            sp8 = (s64) var_v0;
            if (var_v0 != 0x2901) {
                var_a3_2 = 1;
                switch (var_v0) {                   /* switch 1; irregular */
                default:                            /* switch 1 */
                    return -1;
                case 0x812D:                        /* switch 1 */
                    var_a3_2 = 3;
                    goto block_193;
                case 0x812F:                        /* switch 1 */
                    goto block_193;
                case 0x2900:                        /* switch 1 */
                    var_a3_2 = 2;
                    goto block_193;
                }
            } else {
                var_a3_2 = 0;
block_193:
                subtractTexTableUsage(var_a7, (s64) temp_s0, var_a3_2, var_a6, var_a7, (bitwise s32) var_f12);
                goto block_33;
            }
        } else {
            if (var_a2 >= 0x2800) {
                if (var_a2 < 0x2801) {
                    sp8 = (s64) var_v0;
                    if (temp_s0->unk168 != var_v0) {
                        var_a2_3 = var_v0 > 0x8099;
                        if (var_v0 >= 0x8099) {
                            if (var_a2_3 != 0) {
                                if (var_v0 >= 0x80AF) {
                                    var_a5 = 0x8146;
                                    if (var_v0 > 0x80AF) {
                                        if (var_v0 == 0x8146) {
                                            goto block_201;
                                        }
                                        /* Duplicate return node #198. Try simplifying control flow for better match */
                                        return -1;
                                    }
                                    goto block_201;
                                }
                                var_a2_3 = var_v0 > 0x80AE;
                                if (var_v0 >= 0x80AE) {
                                    if (var_a2_3 != 0) {
                                        /* Duplicate return node #198. Try simplifying control flow for better match */
                                        return -1;
                                    }
                                    goto block_201;
                                }
                                if (var_v0 == 0x80AD) {
                                    goto block_201;
                                }
                                /* Duplicate return node #198. Try simplifying control flow for better match */
                                return -1;
                            }
                            goto block_201;
                        }
                        if (var_v0 >= 0x8097) {
                            if ((var_v0 > 0x8097) && (var_v0 != 0x8098)) {
                                /* Duplicate return node #198. Try simplifying control flow for better match */
                                return -1;
                            }
                            goto block_201;
                        }
                        if (var_v0 >= 0x2601) {
                            var_a2_3 = var_v0 < 0x2602;
                            if (var_a2_3 != 0) {
                                goto block_201;
                            }
                            /* Duplicate return node #198. Try simplifying control flow for better match */
                            return -1;
                        }
                        if (var_v0 == 0x2600) {
block_201:
                            temp_a4_9 = temp_s0->unk178;
                            temp_s0->unk168 = (s32) sp8;
                            if (temp_a4_9 != 0) {
                                subtractTexTableUsage(var_a7, (s64) temp_s0, var_a2_3, (s32) sp8, (s64) temp_a4_9, var_a5, (s32) var_a7, (bitwise s32) var_f12);
                            }
                            goto block_33;
                        }
                        return -1;
                    }
                    return 0;
                }
                if (var_a2 == 0x2801) {
                    temp_a0_8 = temp_s0->unk16C;
                    sp8 = (s64) var_v0;
                    if (temp_a0_8 != var_v0) {
                        temp_a3_11 = var_v0 < 0x2703;
                        temp_a5_9 = var_v0 < 0x2704;
                        if (temp_a3_11 == 0) {
                            if (temp_a5_9 != 0) {
                                goto block_131;
                            }
                            if (var_v0 >= 0x844D) {
                                if (var_v0 <= 0x844D) {
                                    goto block_131;
                                }
                                var_a2 = 0x844E;
                                if (var_v0 >= 0x844F) {
                                    if (var_v0 <= 0x844F) {
                                        goto block_131;
                                    }
                                    goto block_319;
                                }
                                if (var_v0 == (s32) 0x844E) {
                                    goto block_131;
                                }
                                goto block_319;
                            }
                            if (var_v0 >= 0x8170) {
                                if (var_v0 > 0x8170) {
                                    goto block_319;
                                }
                                goto block_131;
                            }
                            var_a2 = 0x8146;
                            if (var_v0 != (s32) 0x8146) {
                                goto block_319;
                            }
                            goto block_131;
                        }
                        if (var_v0 >= 0x2700) {
                            if (var_v0 < 0x2701) {
                                goto block_131;
                            }
                            if (var_v0 >= 0x2702) {
                                if (temp_a3_11 != 0) {
                                    goto block_131;
                                }
                                goto block_319;
                            }
                            if (var_v0 == 0x2701) {
                                goto block_131;
                            }
                            goto block_319;
                        }
                        var_a2 = var_v0 < 0x2602;
                        if (var_v0 >= 0x2601) {
                            if (var_a2 != 0) {
                                goto block_131;
                            }
                            goto block_319;
                        }
                        if (var_v0 == 0x2600) {
block_131:
                            if ((temp_a0_8 == 0x8170) || (temp_a0_8 == 0x844D) || (temp_a0_8 == 0x844E) || (temp_a0_8 == 0x844F)) {
                                sp0 = var_a7;
                                var_v0 = __glKonGetTexParameter(temp_s0, NULL, var_a2, 0x8170, temp_a5_9, 0x844D, (s32) var_a7, (bitwise s32) var_f12);
                                var_ra = sp20;
                            }
                            temp_s0->unk16C = (s32) sp8;
                            if (temp_s0->unk178 != 0) {
                                sp0 = var_a7;
                                sp20 = var_ra;
                                var_v0 = subtractTexTableUsage(sp0, (s64) temp_s0);
                            }
                            // Error: negative shift count
                            // At instruction: bltz $at, .L0d9685ec
                            if (M2C_ERROR()) {
                                temp_a1_11 = temp_s0->unk18;
                                sp0 = var_a7;
                                if (!(~temp_s0->unk24 & ((1 << (temp_s0->unk14 + 1)) - (1 << temp_a1_11)))) {
                                    sp20 = var_ra;
                                    if (__glKonGetTexParameter(temp_s0, (s32 *) temp_a1_11) != 0) {
                                        temp_s0->unk20 = (s32) (temp_s0->unk20 & 0xFFFEFFFF);
                                        __glKonGetTexParameter((s32 *) sp0, temp_s0);
                                    }
                                }
                                goto block_33;
                            }
                        } else {
block_319:
                            var_v0 = -1;
                        }
                    } else {
                        goto block_33;
                    }
                    /* Duplicate return node #34. Try simplifying control flow for better match */
                    return (s64) var_v0;
                }
block_95:
                /* Duplicate return node #96. Try simplifying control flow for better match */
                return -1;
            }
            if (var_a2 == 0x1004) {
                sp0 = var_a7;
                temp_a1_12 = temp_s0 + 0x180;
                if (var_a4 != 0) {
                    __glClampColorf(temp_t0, temp_a1_12, var_a3, 0x1004, var_a7, (bitwise s32) var_f12);
                } else {
                    __glClampColori(temp_t0, temp_a1_12, var_a3, 0x1004, var_a7, (bitwise s32) var_f12);
                }
                temp_s0->unk34 = 0;
                if (((temp_s0->unk20 & 0x01400000) == 0x01400000) && (temp_s0->unk190 == 0)) {
                    __glKonGetTexParameter(sp0->unkF1C, temp_s0);
                }
block_33:
                var_v0 = 0;
                return (s64) var_v0;
            }
            return -1;
        }
    }
}

s64 __glKonGetTexParameter(s32 *arg0, s32 arg1, s64 arg2, void *arg3, s64 arg4) {
    s64 sp18;
    s64 sp10;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 var_f4;
    s32 *temp_a6;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a7;

    temp_a6 = (arg0 + (arg1 * 4))->unk20;
    if (arg2 >= 0x813B) {
        if (arg2 <= 0x813B) {
            var_f4 = temp_a6->unk164;
            goto block_3;
        }
        if (arg2 >= 0x8176) {
            if (arg2 <= 0x8176) {
                var_f4 = sp0;
                goto block_3;
            }
            if (arg2 >= 0x818F) {
                if (arg2 <= 0x818F) {
                    var_f4 = temp_a6->unk218;
                    goto block_3;
                }
                if (arg2 >= 0x819A) {
                    if (arg2 <= 0x819A) {
                        var_f4 = (f32) ((u64) ((s64) temp_a6->unk1FC << 0x20) >> 0x20);
                        goto block_3;
                    }
                    if (arg2 == 0x819B) {
                        var_f4 = (f32) ((u64) ((s64) temp_a6->unk200 << 0x20) >> 0x20);
                        goto block_3;
                    }
                    /* Duplicate return node #67. Try simplifying control flow for better match */
                    return -1;
                }
                if (arg2 == 0x8190) {
                    var_f4 = temp_a6->unk21C;
                    goto block_3;
                }
                /* Duplicate return node #67. Try simplifying control flow for better match */
                return -1;
            }
            if (arg2 >= 0x817A) {
                if (arg2 <= 0x817A) {
                    temp_f4 = temp_a6->unk1D0;
                    if (arg4 != 0) {
                        arg3->unk0 = temp_f4;
                    } else {
                        arg3->unk0 = (bitwise f32) (s32) temp_f4;
                    }
                    temp_f4_2 = temp_a6->unk1D4;
                    if (arg4 != 0) {
                        arg3->unk4 = temp_f4_2;
                    } else {
                        arg3->unk4 = (bitwise f32) (s32) temp_f4_2;
                    }
                    temp_f4_3 = temp_a6->unk1D8;
                    if (arg4 != 0) {
                        arg3->unk8 = temp_f4_3;
                    } else {
                        arg3->unk8 = (bitwise f32) (s32) temp_f4_3;
                    }
                    temp_f4_4 = temp_a6->unk1DC;
                    if (arg4 != 0) {
                        arg3->unkC = temp_f4_4;
                    } else {
                        arg3->unkC = (bitwise f32) (s32) temp_f4_4;
                    }
                    goto block_5;
                }
                if (arg2 == 0x818E) {
                    var_f4 = temp_a6->unk214;
                    goto block_3;
                }
                /* Duplicate return node #67. Try simplifying control flow for better match */
                return -1;
            }
            if (arg2 == 0x8179) {
                temp_f4_5 = temp_a6->unk1E0;
                if (arg4 != 0) {
                    arg3->unk0 = temp_f4_5;
                } else {
                    arg3->unk0 = (bitwise f32) (s32) temp_f4_5;
                }
                temp_f4_6 = temp_a6->unk1E4;
                if (arg4 != 0) {
                    arg3->unk4 = temp_f4_6;
                } else {
                    arg3->unk4 = (bitwise f32) (s32) temp_f4_6;
                }
                temp_f4_7 = temp_a6->unk1E8;
                if (arg4 != 0) {
                    arg3->unk8 = temp_f4_7;
                } else {
                    arg3->unk8 = (bitwise f32) (s32) temp_f4_7;
                }
                temp_f4_8 = temp_a6->unk1EC;
                if (arg4 != 0) {
                    arg3->unkC = temp_f4_8;
                } else {
                    arg3->unkC = (bitwise f32) (s32) temp_f4_8;
                }
                goto block_5;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        temp_a7 = arg2 < 0x8172;
        if (temp_a7 == 0) {
            if (arg2 <= 0x8172) {
                var_f4 = temp_a6->unk1AC;
                goto block_3;
            }
            if (arg2 >= 0x8174) {
                if (arg2 <= 0x8174) {
                    temp_a1 = temp_a6->unk1B8;
                    if (arg4 != 0) {
                        arg3->unk0 = (f32) temp_a1;
                        arg3->unk4 = (f32) temp_a6->unk1B0;
                        arg3->unk8 = (f32) temp_a6->unk1B4;
                    } else {
                        arg3->unk0 = (bitwise f32) temp_a1;
                        arg3->unk4 = (bitwise f32) temp_a6->unk1B0;
                        arg3->unk8 = (bitwise f32) temp_a6->unk1B4;
                    }
                    goto block_5;
                }
                if (arg2 == 0x8175) {
                    var_f4 = sp0;
                    goto block_3;
                }
                /* Duplicate return node #67. Try simplifying control flow for better match */
                return -1;
            }
            if (arg2 == 0x8173) {
                temp_a1_2 = temp_a6->unk58 & 0xFFFF;
                if (arg4 != 0) {
                    arg3->unk0 = (f32) temp_a1_2;
                    arg3->unk4 = (f32) ((u32) temp_a6->unk58 >> 0x10);
                } else {
                    arg3->unk0 = (bitwise f32) temp_a1_2;
                    arg3->unk4 = (bitwise f32) ((u32) temp_a6->unk58 >> 0x10);
                }
                goto block_5;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        if (arg2 >= 0x8147) {
            if (arg2 <= 0x8147) {
                if ((arg1 != 1) && (arg1 != 2)) {
                    sp10 = (s64) arg3;
                    sp18 = arg4;
                    __glSetError((s32 *)0x500, (s32 *)2, 0x8171, temp_a6, temp_a7);
                    var_f4 = sp0;
                } else {
                    var_f4 = 129.0f;
                }
                goto block_3;
            }
            if (arg2 == 0x8171) {
                temp_a1_3 = temp_a6->unk60 & 0x7FFF;
                if (arg4 != 0) {
                    arg3->unk0 = (f32) temp_a1_3;
                    arg3->unk4 = (f32) (temp_a6->unk64 & 0x7FFF);
                } else {
                    arg3->unk0 = (bitwise f32) temp_a1_3;
                    arg3->unk4 = (bitwise f32) (temp_a6->unk64 & 0x7FFF);
                }
                goto block_5;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        if (arg2 >= 0x813D) {
            if (arg2 <= 0x813D) {
                var_f4 = (f32) temp_a6->unk15C;
                goto block_3;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        if (arg2 == 0x813C) {
            var_f4 = (f32) temp_a6->unk158;
            goto block_3;
        }
        /* Duplicate return node #67. Try simplifying control flow for better match */
        return -1;
    }
    if (arg2 >= 0x809A) {
        if (arg2 <= 0x809A) {
            var_f4 = -(f32) (((s32) temp_a6->unk40 >> 0x15) & 7);
            goto block_3;
        }
        if (arg2 >= 0x80BF) {
            if (arg2 <= 0x80BF) {
                var_f4 = temp_a6->unk208;
                goto block_3;
            }
            if (arg2 >= 0x8125) {
                if (arg2 <= 0x8125) {
                    var_f4 = (f32) temp_a6->unk1CC;
                    goto block_3;
                }
                if (arg2 == 0x813A) {
                    var_f4 = temp_a6->unk160;
                    goto block_3;
                }
                /* Duplicate return node #67. Try simplifying control flow for better match */
                return -1;
            }
            if (arg2 == 0x8124) {
                var_f4 = (f32) temp_a6->unk1C8;
                goto block_3;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        if (arg2 >= 0x809C) {
            if (arg2 <= 0x809C) {
                var_f4 = (f32) temp_a6->unk130->unk8;
                goto block_3;
            }
            if (arg2 == 0x80B0) {
                var_f4 = (f32) temp_a6->unk134->unk8;
                goto block_3;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        if (arg2 == 0x809B) {
            var_f4 = (f32) temp_a6->unk174;
            goto block_3;
        }
        /* Duplicate return node #67. Try simplifying control flow for better match */
        return -1;
    }
    temp_a1_4 = arg2 < 0x2801;
    if (arg2 >= 0x2803) {
        if (arg2 < 0x2804) {
            var_f4 = (f32) *(&int_clamp_to_ext_clamp + ((((s32) temp_a6->unk191 >> 2) & 3) * 4));
            goto block_3;
        }
        if (arg2 >= 0x8067) {
            if (arg2 <= 0x8067) {
                var_f4 = (f32) ((~temp_a6->unk28 & ((1 << (temp_a6->unk14 + 1)) - (1 << temp_a6->unk18))) == 0);
                goto block_3;
            }
            if (arg2 == 0x8072) {
                var_f4 = (f32) *(M2C_ERROR(/* Read from unset register $t9 */) + ((((s32) temp_a6->unk191 >> 4) & 3) * 4));
                goto block_3;
            }
            /* Duplicate return node #67. Try simplifying control flow for better match */
            return -1;
        }
        if (arg2 == 0x8066) {
            var_f4 = temp_a6->unk148;
            goto block_3;
        }
        /* Duplicate return node #67. Try simplifying control flow for better match */
        return -1;
    }
    if (temp_a1_4 == 0) {
        if (arg2 < 0x2802) {
            var_f4 = (f32) temp_a6->unk16C;
            goto block_3;
        }
        if (arg2 == 0x2802) {
            var_f4 = (f32) *(&int_clamp_to_ext_clamp + ((temp_a6->unk191 & 3) * 4));
            goto block_3;
        }
        /* Duplicate return node #67. Try simplifying control flow for better match */
        return -1;
    }
    if (arg2 >= 0x2800) {
        if (temp_a1_4 != 0) {
            var_f4 = (f32) temp_a6->unk168;
block_3:
            if (arg4 != 0) {
                arg3->unk0 = var_f4;
            } else {
                arg3->unk0 = (bitwise f32) (s32) var_f4;
            }
            goto block_5;
        }
        /* Duplicate return node #67. Try simplifying control flow for better match */
        return -1;
    }
    if (arg2 == 0x1004) {
        if (arg4 != 0) {
            arg3->unk0 = (f32) temp_a6->unk180;
            arg3->unk4 = (f32) temp_a6->unk184;
            arg3->unk8 = (f32) temp_a6->unk188;
            arg3->unkC = (f32) temp_a6->unk18C;
block_5:
        }
        return 0;
    }
    return -1;
}

void bind2DMipmapTexture(void *arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_a1;
    void *temp_t2;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d96a3b4
    if (M2C_ERROR()) {
        var_a1 = arg1->unk110->unk4;
    }
    temp_t2 = arg1->unkFC;
    *(s32 *)0x4000 = var_a1;
    *(void *)0x4000 = (s32) arg1->unk74;
    *(void *)0x4000 = (s32) arg1->unk40;
    *(void *)0x4000 = (s32) arg1->unk44;
    *(void *)0x4000 = (s32) arg1->unk210;
    *(void *)0x4000 = 0x179;
    *(void *)0x4000 = (s32) arg1->unk48;
    *(void *)0x4000 = (s32) arg1->unk4C;
    *(void *)0x4000 = (s32) arg1->unk50;
    *(void *)0x4000 = (s32) arg1->unk54;
    *(void *)0x4000 = (s32) arg1->unk204;
    *(void *)0x4000 = (s32) arg1->unk20C;
    temp_a1 = temp_t2->unk28;
    temp_a2 = temp_t2->unk24;
    temp_a3 = temp_t2->unk20;
    temp_a4 = temp_t2->unk1C;
    temp_a5 = temp_t2->unk18;
    temp_a6 = temp_t2->unk14;
    temp_a7 = temp_t2->unk10;
    *(void *)0x4000 = (s32) temp_t2->unk0;
    *(void *)0x4000 = (s32) temp_t2->unk4;
    *(void *)0x4000 = (s32) temp_t2->unk8;
    *(void *)0x4000 = (s32) temp_t2->unkC;
    *(void *)0x4000 = temp_a7;
    *(void *)0x4000 = temp_a6;
    *(void *)0x4000 = temp_a5;
    *(void *)0x4000 = temp_a4;
    *(void *)0x4000 = temp_a3;
    *(void *)0x4000 = temp_a2;
    *(void *)0x4000 = temp_a1;
    *(void *)0x4000 = (s32) temp_t2->unk2C;
    *(void *)0x4000 = (s32) temp_t2->unk30;
    *(void *)0x4000 = (s32) temp_t2->unk34;
    *(void *)0x4000 = (s32) temp_t2->unk38;
    *(void *)0x4000 = (s32) temp_t2->unk3C;
    subtractTexTableUsage((s64) arg1, (s64) temp_a1, (s64) temp_a2, temp_a3, (s64) temp_a4, temp_a5, temp_a6, temp_a7);
    temp_a3_2 = arg1->unk10;
    if (temp_a3_2 != 3) {
        sub_0d960000(arg0->unkF1C + 0xC074, (arg1 + (temp_a3_2 * 4))->unk12C->unk10, 0xC074, temp_a3_2);
    }
    subtractTexTableUsage((s64) arg0->unkF1C, (s64) arg1);
}

void setClipmapRegisters(void *arg0, s32 arg1) {
    *(s32 *)0x4000 = 0x1AA;
    *(void *)0x4000 = (s32) arg0->unk58;
    *(void *)0x4000 = (s32) arg0->unk5C;
    *(void *)0x4000 = (s32) arg0->unk60;
    *(void *)0x4000 = (s32) arg0->unk64;
    *(void *)0x4000 = arg1;
    *(void *)0x4000 = (s32) arg0->unk1BC;
    *(void *)0x4000 = (s32) arg0->unk1C0;
    *(void *)0x4000 = (s32) arg0->unk1C4;
}

void bind2DClipmapTexture(s64 arg0, s32 *arg1) {
    s64 sp18;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v1;

    sp18 = arg0;
    __glKonGetTexParameter(arg1, arg1->unk68);
    temp_v1 = arg1->unk1B8;
    arg1->unkFC = (s32) (arg1->unkFC + (temp_v1 * 4));
    if (temp_v1 & 1) {
        temp_a3 = arg1->unk11C << 0x1C;
        temp_a2 = (arg1->unk40 & 0xEFFFFFFF) | temp_a3;
        arg1->unk40 = temp_a2;
        __glKonGetTexParameter((s32 *) arg0, arg1, (s64) temp_a2, temp_a3, -0x10000001);
        arg1->unkFC = (s32) (arg1->unkFC - (arg1->unk1B8 * 4));
        arg1->unk40 = (s32) ((arg1->unk40 & 0xEFFFFFFF) | ((arg1->unk11C == 0) << 0x1C));
        return;
    }
    __glKonGetTexParameter((s32 *) arg0, arg1);
    arg1->unkFC = (s32) (arg1->unkFC - (arg1->unk1B8 * 4));
}

void bindBicubicTexture(void *arg0, void *arg1) {
    s64 sp18;
    s32 *temp_s8;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a1;
    void *temp_a3;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d96a61c
    if (M2C_ERROR()) {
        var_a1 = arg1->unk110->unk4;
    } else {
        var_a1 = -1;
    }
    *(void *)0x4000 = var_a1;
    temp_a4 = arg1->unk44;
    temp_a5 = arg1->unk40;
    temp_a6 = arg1->unk74;
    *(void *)0x4000 = temp_a6;
    *(void *)0x4000 = temp_a5;
    *(void *)0x4000 = temp_a4;
    *(void *)0x4000 = (s32) arg1->unk210;
    *(void *)0x4000 = 0x17A;
    *(void *)0x4000 = (s32) arg1->unk178;
    *(void *)0x4000 = (s32) arg1->unk48;
    *(void *)0x4000 = (s32) arg1->unk54;
    temp_a3 = arg1->unkFC;
    temp_a2 = temp_a3->unk4;
    temp_a3_2 = temp_a3->unk0;
    *(void *)0x4000 = temp_a3_2;
    *(void *)0x4000 = temp_a2;
    subtractTexTableUsage((s64) arg1, (s64) var_a1, (s64) temp_a2, temp_a3_2, (s64) temp_a4, temp_a5, temp_a6);
    sub_0d960000(temp_s8, arg1->unk12C->unk10);
    subtractTexTableUsage((s64) sp18->unkF1C, (s64) arg1);
}

void bind3DMipmapTexture(void *arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_a1;
    void *temp_a4;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d96a750
    if (M2C_ERROR()) {
        var_a1 = arg1->unk110->unk4;
    } else {
        var_a1 = -1;
    }
    *(void *)0x4000 = var_a1;
    *(void *)0x4000 = (s32) arg1->unk74;
    *(void *)0x4000 = (s32) arg1->unk40;
    *(void *)0x4000 = (s32) arg1->unk44;
    *(void *)0x4000 = (s32) arg1->unk210;
    *(void *)0x4000 = 0x17B;
    *(void *)0x4000 = (s32) arg1->unk48;
    temp_a5 = arg1->unk54;
    temp_a6 = arg1->unk50;
    temp_a7 = arg1->unk4C;
    *(void *)0x4000 = temp_a7;
    *(void *)0x4000 = temp_a6;
    temp_a4 = arg1->unkFC;
    *(void *)0x4000 = temp_a5;
    temp_a1 = temp_a4->unkC;
    temp_a2 = temp_a4->unk8;
    temp_a3 = temp_a4->unk4;
    temp_a4_2 = temp_a4->unk0;
    *(void *)0x4000 = temp_a4_2;
    *(void *)0x4000 = temp_a3;
    *(void *)0x4000 = temp_a2;
    *(void *)0x4000 = temp_a1;
    *(void *)0x4000 = (s32) temp_a4->unk10;
    *(void *)0x4000 = (s32) temp_a4->unk14;
    *(void *)0x4000 = (s32) temp_a4->unk18;
    *(void *)0x4000 = (s32) temp_a4->unk1C;
    *(void *)0x4000 = (s32) temp_a4->unk20;
    *(void *)0x4000 = (s32) temp_a4->unk24;
    subtractTexTableUsage((s64) arg1, (s64) temp_a1, (s64) temp_a2, temp_a3, (s64) temp_a4_2, temp_a5, temp_a6, temp_a7);
    subtractTexTableUsage((s64) arg0->unkF1C, (s64) arg1);
}

void bind3DTexture(void *arg0, void *arg1) {
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a1;
    void *temp_a3;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d96a830
    if (M2C_ERROR()) {
        var_a1 = arg1->unk110->unk4;
    } else {
        var_a1 = -1;
    }
    *(void *)0x4000 = var_a1;
    temp_a4 = arg1->unk40;
    temp_a5 = arg1->unk74;
    *(void *)0x4000 = temp_a5;
    *(void *)0x4000 = temp_a4;
    *(void *)0x4000 = (s32) arg1->unk44;
    *(void *)0x4000 = (s32) arg1->unk210;
    *(void *)0x4000 = 0x17C;
    *(void *)0x4000 = (s32) arg1->unk48;
    *(void *)0x4000 = (s32) arg1->unk54;
    temp_a3 = arg1->unkFC;
    temp_a2 = temp_a3->unk4;
    temp_a3_2 = temp_a3->unk0;
    *(void *)0x4000 = temp_a3_2;
    *(void *)0x4000 = temp_a2;
    subtractTexTableUsage((s64) arg1, (s64) var_a1, (s64) temp_a2, temp_a3_2, (s64) temp_a4, temp_a5);
    subtractTexTableUsage((s64) arg0->unkF1C, (s64) arg1);
}

void bindDetailTexture(void *arg0, void *arg1) {
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a3;

    // Error: negative shift count
    // At instruction: bgez $v0, .L0d96a8c8
    if (M2C_ERROR()) {
        var_a3 = arg1->unk110->unk4;
    }
    *(void *)0x4000 = var_a3;
    temp_a4 = arg1->unk118;
    temp_a5 = arg1->unk114;
    *(void *)0x4000 = (s32) arg1->unk14C;
    *(void *)0x4000 = (s32) arg1->unk150;
    *(void *)0x4000 = (s32) arg1->unk1C;
    *(void *)0x4000 = temp_a5;
    *(void *)0x4000 = temp_a4;
    subtractTexTableUsage((s64) arg0->unkF1C, (s64) var_a3, (s64) temp_a4, temp_a5);
}

void initTexture(s32 *arg0, s32 *arg1) {
    s64 sp10;
    s64 sp8;
    f32 sp0;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_s0;
    s64 temp_a6;

    sp8 = (s64) arg1->unk17C;
    temp_s0 = arg1->unk178;
    sp0 = arg1->unk148;
    sp10 = (s64) arg1->unk78;
    bzero(arg1, 0x220);
    arg1->unk74 = (s32) (temp_s0 << 0x1C);
    arg1->unk178 = temp_s0;
    arg1->unk17C = (s32) sp8;
    arg1->unk78 = (s32) sp10;
    arg1->unk148 = sp0;
    __glKonSetTexParams(arg0, temp_s0, &__glKonTexParamDefault);
    if ((f64) (second half of f64) != (second half of f64)) {
        __glKonTexParameter((s64) arg0, (s64) temp_s0, 0x8066, sp, 1);
    }
    // Error: negative shift count
    // At instruction: bgez $a3, .L0d96a9ec
    if (M2C_ERROR()) {
        temp_a6 = 1 << (arg0->unk4 + 1);
        temp_a5 = 0x10 - temp_a6;
        temp_a4 = arg0->unk0 & temp_a5;
        if (temp_a4 != 0) {
            __glkonlc_PointParameterfvSGIS(arg0, (void *)1, (((arg1->unk4C & ~0xFF) | 0x10) & 0xFFFF00FF) | 0x1000, (s32) ((s64) arg1->unk20 << 0x27), temp_a4, temp_a5, temp_a6);
        }
        if (arg1->unk178 == arg0->unk4) {
            addTexTableUsage(arg0, (s64) arg1);
        }
    }
    arg1->unk104 = &__glNop;
    arg1->unk100 = (void *) (sub_0d970000 - 0x17E0);
    switch (temp_s0) {                              /* irregular */
    case 0:
        arg1->unk18 = 0;
        arg1->unk14 = 0;
        arg1->unk10 = 3;
        arg1->unkC = 4;
        arg1->unk74 = (s32) ((arg1->unk74 & 0xF0FFFFFF) | 0x03000000);
        return;
    case 3:
        addTexTableUsage(arg0->unkF1C + 0xC074, (s64) arg1, 2, (s64) &__glKonDefaultSharpenTexFunc, 2);
        bindTexTable(arg0->unkF1C + 0xC074, arg1, 2);
        return;
    case 1:
        addTexTableUsage(arg0->unkF1C + 0xC074, (s64) arg1, 2, (s64) &__glKonDefaultSharpenTexFunc, 2);
        bindTexTable(arg0->unkF1C + 0xC074, arg1, 2);
        addTexTableUsage(arg0->unkF1C + 0xC074, (s64) arg1, 0, (s64) &__glKonDefaultBicubicTexFunc, 0x81);
        bindTexTable(arg0->unkF1C + 0xC074, arg1, 0);
        break;
    case 2:
        addTexTableUsage(arg0->unkF1C + 0xC074, (s64) arg1, 1, (s64) &__glKonDefaultDetailTexFunc, 2);
        bindTexTable(arg0->unkF1C + 0xC074, arg1, 1);
        addTexTableUsage(arg0->unkF1C + 0xC074, (s64) arg1, 2, (s64) &__glKonDefaultSharpenTexFunc, 2);
        bindTexTable(arg0->unkF1C + 0xC074, arg1, 2);
        addTexTableUsage(arg0->unkF1C + 0xC074, (s64) arg1, 0, (s64) &__glKonDefaultBicubicTexFunc, 0x81);
        bindTexTable(arg0->unkF1C + 0xC074, arg1, 0);
        break;
    }
}

void subloadSimple(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s32 arg7, s32 arg_sp4, void *arg_spC, s32 arg_sp14) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *var_t1;

    var_t1 = arg0->unk110;
    unksp8 = (s64) arg0;
    if (var_t1 == NULL) {
        sp18 = (s64) arg7;
        sp20 = (s64) arg2;
        sp28 = (s64) arg3;
        sp30 = arg5;
        sp38 = (s64) arg4;
        sp40 = arg6;
        __glkonlc_PointParameterfvSGIS((s32 *) unksp8);
        var_t1 = unksp8->unk110;
    }
    arg1->unk80 = arg7;
    arg1->unk7C = arg4;
    arg1->unk70 = arg3;
    arg1->unk6C = arg2;
    arg1->unk84 = arg_sp4;
    arg1->unk78 = (s32) ((arg3 + arg6) - 1);
    arg1->unk74 = (s32) ((arg2 + arg5) - 1);
    arg1->unk68 = (s32) var_t1->unk4;
    arg1->unk88 = (s32) arg_spC->unk0;
    arg1->unk8C = (s32) arg_spC->unk4;
    if (arg_sp14 != 0) {
        __glKonCopyTexImage(arg1, arg_sp4, arg2, arg3, arg4, arg5, arg6, arg7);
    } else {
        __glKonDrawTexels3D(arg1, arg_sp4, arg2, arg3, arg4, arg5, arg6, arg7);
    }
    unksp8->unk20 = (s32) (unksp8->unk20 | 0x20000);
}

void tileinfo(void *arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    s32 temp_a5;

    temp_a5 = arg0->unkC;
    switch (temp_a5) {                              /* irregular */
    case 4:
        *arg1 = 3;
        *arg2 = 2;
        *arg3 = 0;
        return;
    case 3:
        *arg1 = 5;
        *arg2 = 3;
        *arg3 = 0;
        return;
    case 0:
        *arg1 = 3;
        *arg2 = 2;
        *arg3 = 0;
        return;
    case 1:
        *arg1 = 3;
        *arg2 = 2;
        *arg3 = 1;
        return;
    case 2:
        *arg1 = 3;
        *arg2 = 1;
        *arg3 = 1;
        return;
    }
}

void subloadBorderedLevel(s32 *arg0, s32 *arg1, s64 arg2, s32 arg3, s32 arg4, s64 arg5, s32 arg6, s32 arg_sp4, s32 arg_spC, s32 arg_sp1C, s32 arg_sp24, s32 *arg_sp2C) {
    s64 sp88;
    ? sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_s5;
    s32 var_s6;
    s64 temp_a5;
    s64 temp_a5_2;
    s64 var_s7;
    s64 var_s8;

    var_s7 = arg2;
    if (arg2 >= 0) {
        var_s8 = arg5;
        if (arg3 >= 0) {
            goto block_2;
        }
        goto block_13;
    }
    var_s8 = arg2 + arg5;
    var_s7 = 0;
    sp20 = arg2 + (1 << arg_sp4);
    if (arg3 < 0) {
block_13:
        var_s5 = arg3 + arg6;
        var_s6 = 0;
        sp24 = arg3 + (1 << arg_spC);
    } else {
block_2:
        var_s6 = arg3;
        var_s5 = arg6;
    }
    if ((arg2 < 0) || (sp88 = arg5, (arg3 < 0))) {
        sp88 = arg5;
        __glKonPushState(8, &sp28);
        if (sp58 == 0) {
            __glkonim_PixelStorei(0xCF2, (s32 *) sp88);
        }
    }
    if (arg2 >= 0) {
        goto block_6;
    }
    temp_a6 = -arg3;
    if (arg3 >= 0) {
        goto block_15;
    }
    arg1->unk4 = temp_a6;
    temp_a5 = -arg2;
    arg1->unk0 = (s32) temp_a5;
    __glKonGetTexParameter(arg0, arg1, (s64) sp20, sp24, arg4, (s32) temp_a5, temp_a6, arg_sp1C, arg_sp24, arg_sp2C, NULL);
block_6:
    if (arg2 < 0) {
block_15:
        __glkonim_PixelStorei(0xCF3, sp5C - arg3);
        arg1->unk4 = var_s5;
        temp_a5_2 = -arg2;
        arg1->unk0 = (s32) temp_a5_2;
        __glKonGetTexParameter(arg0, arg1, (s64) sp20, var_s6, arg4, (s32) temp_a5_2, var_s5, arg_sp1C, arg_sp24, arg_sp2C, NULL);
    }
    if (arg3 < 0) {
        M2C_ERROR(/* Read from unset register $t9 */)(0xCF4, sp60 - arg2);
    }
    arg1->unk4 = var_s5;
    arg1->unk0 = (s32) var_s8;
    __glKonGetTexParameter(arg0, arg1, var_s7, var_s6, arg4, (s32) var_s8, var_s5, arg_sp1C, arg_sp24, arg_sp2C, NULL);
    if (arg3 < 0) {
        __glkonim_PixelStorei(0xCF3, sp5C);
        temp_a6_2 = -arg3;
        arg1->unk4 = temp_a6_2;
        arg1->unk0 = (s32) var_s8;
        __glKonGetTexParameter(arg0, arg1, var_s7, sp24, arg4, (s32) var_s8, temp_a6_2, arg_sp1C, arg_sp24, arg_sp2C, NULL);
    }
    if ((arg2 < 0) || (arg3 < 0)) {
        __glKonPopState(&sp28);
    }
}

void subcopyBorderedLevel(s32 *arg0, s32 *arg1, s64 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14, s32 *arg_sp1C, void *arg_sp24) {
    s64 sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s64 temp_a5;
    s64 var_s8;

    var_s8 = arg2;
    if (arg2 >= 0) {
        var_s7 = arg5;
        if (arg3 >= 0) {
            goto block_2;
        }
        goto block_8;
    }
    var_s7 = arg2 + arg5;
    var_s8 = 0;
    sp20 = arg2 + (1 << arg7);
    if (arg3 < 0) {
block_8:
        var_s6 = arg3 + arg6;
        var_s5 = 0;
        sp24 = arg3 + (1 << arg_sp4);
    } else {
block_2:
        var_s5 = arg3;
        var_s6 = arg6;
    }
    temp_a5 = -arg2;
    if (arg2 < 0) {
        if (arg3 < 0) {
            sp28 = temp_a5;
            temp_a6 = -arg3;
            arg1->unk4 = temp_a6;
            arg1->unk0 = (s32) temp_a5;
            __glKonGetTexParameter(arg0, arg1, (s64) sp20, sp24, arg4, (s32) temp_a5, temp_a6, arg_spC, arg_sp14, arg_sp1C, (s32 *)1);
        }
        arg1->unk28 = (s32) (arg_sp24->unk10 - arg3);
        arg1->unk4 = var_s6;
        arg1->unk0 = (s32) temp_a5;
        __glKonGetTexParameter(arg0, arg1, (s64) sp20, var_s5, arg4, (s32) temp_a5, var_s6, arg_spC, arg_sp14, arg_sp1C, (s32 *)1);
    }
    if (arg3 < 0) {
        arg1->unk24 = (s32) (arg_sp24->unkC - arg2);
    }
    arg1->unk4 = var_s6;
    arg1->unk0 = var_s7;
    __glKonGetTexParameter(arg0, arg1, var_s8, var_s5, arg4, var_s7, var_s6, arg_spC, arg_sp14, arg_sp1C, (s32 *)1);
    if (arg3 < 0) {
        temp_a6_2 = -arg3;
        arg1->unk4 = temp_a6_2;
        arg1->unk0 = var_s7;
        arg1->unk28 = (s32) arg_sp24->unk10;
        __glKonGetTexParameter(arg0, arg1, var_s8, sp24, arg4, var_s7, temp_a6_2, arg_spC, arg_sp14, arg_sp1C, (s32 *)1);
    }
}

void subloadPyramidLevel(s32 *arg0, s32 arg1, s32 *arg2, s64 arg3, s32 arg4, s32 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC, s32 *arg_sp14, void *arg_sp1C) {
    s64 spC8;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp40;
    s32 *sp38;
    s32 *sp34;
    s32 sp30;
    s32 sp2C;
    s32 *sp28;
    s32 *sp24;
    s32 *sp20;
    s32 *temp_a3;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_a3_4;
    s32 *temp_a4;
    s32 *temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a4_3;
    s64 temp_a5;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 var_a0;
    void *temp_s6;

    sp98 = arg6;
    sp90 = arg7;
    temp_s6 = (arg0 + (arg1 * 4))->unk7C;
    sp28 = NULL;
    sp24 = NULL;
    sp20 = NULL;
    __glkonim_GetIntegerv(0xCF4, &sp20);
    __glkonim_GetIntegerv(0xCF3, &sp24);
    __glkonim_GetIntegerv(0xCF2, &sp28);
    temp_t1 = arg_sp1C->unk4;
    if (sp28 != temp_t1) {
        __glkonim_PixelStorei(0xCF2, (s32 *) temp_t1);
    }
    arg2->unk0 = arg_sp1C->unk4;
    arg2->unk4 = (s32 *) arg_sp1C->unk8;
    __glKonGetTexParameter(arg0, arg2, arg3, arg4, arg5, (s32) sp98, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
    temp_a3 = temp_s6->unk8 + arg3;
    temp_a2 = 1 << arg0->unk198;
    temp_t1_2 = arg_sp1C->unk4;
    if ((temp_a3 + sp98) >= temp_a2) {
        temp_a5 = (temp_t1_2 + temp_a3) - temp_a2;
        spA0 = temp_a5;
        sp2C = (s32) temp_a5;
        temp_a5_2 = temp_t1_2 - temp_a5;
        spA8 = temp_a5_2;
        sp30 = (s32) temp_a5_2;
        arg2->unk0 = (s32) temp_a5_2;
        temp_a4 = arg_sp1C->unk8;
        arg2->unk4 = temp_a4;
        __glkonim_PixelStorei(0xCF4, sp20, temp_a2, temp_a3, temp_a4, temp_a5_2);
        __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, arg4, arg5, (s32) temp_a5_2, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        arg2->unk0 = (s32) spA0;
        temp_a3_2 = arg_sp1C->unk8;
        arg2->unk4 = temp_a3_2;
        __glkonim_PixelStorei(0xCF4, sp20 + spA8, spA8, temp_a3_2, (s32 *) spA0);
        __glKonGetTexParameter(arg0, arg2, 0, arg4, arg5, (s32) temp_a5, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        sp40 = 1;
        __glkonim_PixelStorei(0xCF4, sp20);
    } else {
        arg2->unk0 = temp_t1_2;
        arg2->unk4 = (s32 *) arg_sp1C->unk8;
        __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, arg4, arg5, (s32) sp98, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        sp40 = 0;
    }
    temp_a3_3 = temp_s6->unkC + arg4;
    temp_a2_2 = 1 << arg0->unk198;
    temp_t1_3 = arg_sp1C->unk4;
    if ((temp_a3_3 + sp90) >= temp_a2_2) {
        temp_a4_2 = arg_sp1C->unk8;
        arg2->unk0 = temp_t1_3;
        temp_a5_3 = (temp_a4_2 + temp_a3_3) - temp_a2_2;
        sp88 = temp_a5_3;
        sp34 = (s32 *) temp_a5_3;
        temp_a4_3 = temp_a4_2 - temp_a5_3;
        sp80 = temp_a4_3;
        arg2->unk4 = (s32 *) temp_a4_3;
        sp38 = (s32 *) temp_a4_3;
        __glkonim_PixelStorei(0xCF3, sp24, temp_a2_2, temp_a3_3, (s32 *) temp_a4_3, temp_a5_3);
        __glKonGetTexParameter(arg0, arg2, arg3, temp_s6->unkC + arg4, arg5, (s32) sp98, (s32) sp80, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        temp_a4_4 = arg_sp1C->unk4;
        arg2->unk4 = (s32 *) sp88;
        arg2->unk0 = temp_a4_4;
        __glkonim_PixelStorei(0xCF3, sp24 + sp80, sp80, (s32 *) sp88, (s32 *) temp_a4_4);
        __glKonGetTexParameter(arg0, arg2, arg3, 0, arg5, (s32) sp98, (s32) sp88, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        spC8 = 1;
        __glkonim_PixelStorei(0xCF3, sp24);
        var_a0 = spC8;
    } else {
        arg2->unk0 = temp_t1_3;
        arg2->unk4 = (s32 *) arg_sp1C->unk8;
        __glKonGetTexParameter(arg0, arg2, arg3, temp_s6->unkC + arg4, arg5, (s32) sp98, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        var_a0 = 0;
    }
    if (sp40 != 0) {
        spA8 = (s64) sp30;
        spA0 = (s64) sp2C;
        if (var_a0 != 0) {
            arg2->unk0 = (s32) spA8;
            sp80 = (s64) sp38;
            arg2->unk4 = sp38;
            __glkonim_PixelStorei(0xCF4, sp20);
            __glkonim_PixelStorei(0xCF3, sp24);
            __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, temp_s6->unkC + arg4, arg5, (s32) spA8, (s32) sp80, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
            arg2->unk4 = (s32 *) sp80;
            arg2->unk0 = (s32) spA0;
            __glkonim_PixelStorei(0xCF4, sp20 + spA8, spA8, (s32 *) sp80, (s32 *) spA0);
            __glkonim_PixelStorei(0xCF3, sp24);
            __glKonGetTexParameter(arg0, arg2, 0, temp_s6->unkC + arg4, arg5, (s32) spA0, (s32) sp80, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
            sp88 = (s64) sp34;
            arg2->unk4 = sp34;
            arg2->unk0 = (s32) spA8;
            __glkonim_PixelStorei(0xCF4, sp20);
            __glkonim_PixelStorei(0xCF3, sp24 + sp80);
            __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, 0, arg5, (s32) spA8, (s32) sp88, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
            arg2->unk4 = (s32 *) sp88;
            arg2->unk0 = (s32) spA0;
            __glkonim_PixelStorei(0xCF4, sp20 + spA8, spA8, (s32 *) sp88, (s32 *) spA0);
            __glkonim_PixelStorei(0xCF3, sp24 + sp80);
            __glKonGetTexParameter(arg0, arg2, 0, 0, arg5, (s32) spA0, (s32) sp88, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        } else {
            arg2->unk0 = (s32) spA8;
            arg2->unk4 = (s32 *) arg_sp1C->unk8;
            __glkonim_PixelStorei(0xCF4, sp20);
            __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, temp_s6->unkC + arg4, arg5, (s32) spA8, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
            arg2->unk0 = (s32) spA0;
            temp_a3_4 = arg_sp1C->unk8;
            arg2->unk4 = temp_a3_4;
            __glkonim_PixelStorei(0xCF4, sp20 + spA8, spA8, temp_a3_4, (s32 *) spA0);
            __glKonGetTexParameter(arg0, arg2, 0, temp_s6->unkC + arg4, arg5, (s32) spA0, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        }
    } else {
        temp_t1_4 = arg_sp1C->unk4;
        if (var_a0 != 0) {
            arg2->unk0 = temp_t1_4;
            sp80 = (s64) sp38;
            arg2->unk4 = sp38;
            __glkonim_PixelStorei(0xCF3, sp24);
            __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, temp_s6->unkC + arg4, arg5, (s32) sp98, (s32) sp80, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
            temp_a4_5 = arg_sp1C->unk4;
            arg2->unk4 = sp34;
            arg2->unk0 = temp_a4_5;
            sp88 = (s64) sp34;
            __glkonim_PixelStorei(0xCF3, sp24 + sp80, sp80, sp34, (s32 *) temp_a4_5);
            __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, 0, arg5, (s32) sp98, (s32) sp88, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        } else {
            arg2->unk0 = temp_t1_4;
            arg2->unk4 = (s32 *) arg_sp1C->unk8;
            __glKonGetTexParameter(arg0, arg2, temp_s6->unk8 + arg3, temp_s6->unkC + arg4, arg5, (s32) sp98, (s32) sp90, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
        }
    }
    __glkonim_PixelStorei(0xCF4, sp20);
    __glkonim_PixelStorei(0xCF3, sp24);
    __glkonim_PixelStorei(0xCF2, sp28);
}

void subloadClipLevel(void *arg0, s32 arg1, s64 arg2, s32 *arg3, s64 arg4, s64 arg5, s32 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14, s32 arg_sp1C) {
    s64 sp28;
    s64 sp20;

    sp20 = arg2;
    sp28 = arg5;
    if (arg0->unk1B4 != 0) {
        if (arg0->unk15C >= arg1) {
            if (arg0->unk194 >= arg1) {
                goto block_3;
            }
            __glKonGetTexParameter((s32 *) sp20, (s32 *) sp28, (s64) arg_sp4, arg_spC, arg_sp14, arg_sp1C);
        }
    } else {
block_3:
        sp20->unk0 = (s32) arg_sp1C->unk4;
        sp20->unk4 = (s32) arg_sp1C->unk8;
        __glKonGetTexParameter((s32 *) sp20, arg3, arg4, (s32) sp28, arg6, arg7, arg_sp4, arg_spC, arg_sp14, arg_sp1C->unk0);
    }
}

void subloadLevel(s32 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC, s32 *arg_sp14) {
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s32 spAC;
    s32 sp70;
    s32 sp6C;
    s32 *sp68;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 *sp2C;
    s32 *sp24;                                      /* compiler-managed */
    s32 *sp1C;                                      /* compiler-managed */
    s32 sp14;                                       /* compiler-managed */
    s32 spC;                                        /* compiler-managed */
    s32 sp4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s2;
    s32 var_s3;
    s32 var_s5;
    s32 var_s7_2;
    s32 var_s8;
    s64 temp_at_2;
    s64 temp_ra_2;
    s64 temp_s8_2;
    s64 temp_t0_2;
    s64 temp_t8;
    s64 temp_v0;
    s64 temp_v1;
    s64 var_s4;
    s64 var_s7;
    void *temp_at;
    void *temp_s2;
    void *temp_t2;

    sp190 = arg5;
    sp178 = arg6;
    var_s4 = arg4;
    temp_t8 = arg2 & 1;
    temp_a0 = arg1->unk16C;
    temp_t3 = (arg1->unk20 & 0x400000) != 0;
    temp_v0 = arg1->unk150 - arg2;
    temp_v1 = arg1->unk154 - arg2;
    var_s7 = arg1->unk11C == temp_t8;
    temp_a3 = temp_v1 < 0;
    sp180 = (temp_a3 != 0) ? 0 : temp_v1;
    temp_s0 = arg1->unk14C - arg2;
    sp198 = (temp_v0 < 0) ? 0 : temp_v0;
    var_s0 = (temp_s0 < 0) ? 0 : temp_s0;
    if ((temp_a0 != 0x8170) && (temp_a0 != 0x844D) && (temp_a0 != 0x844E) && (temp_a0 != 0x844F)) {
        var_s8 = temp_t3 + var_s0;
        sp118 = temp_t8;
        var_s5 = temp_t3 + sp198;
        sp110 = arg3;
        var_s2 = ((arg1->unk178 ^ 3) == 0) ? (sp180 + temp_t3) : 0;
    } else {
        sp118 = temp_t8;
        sp110 = arg3;
        temp_s2 = (arg1 + (arg2 * 4))->unk7C;
        if (arg1->unk1B4 != 0) {
            if (arg1->unk194 < arg2) {
                var_s8 = arg1->unk198;
                temp_t9 = 1 << var_s8;
                var_s5 = var_s8;
                sp198 = (s64) var_s8;
                var_s0 = var_s8;
                sp190 += (s32) (temp_t9 - temp_s2->unkC) >> 1;
                var_s4 += (s32) (temp_t9 - temp_s2->unk8) >> 1;
            } else {
                goto block_41;
            }
        } else {
block_41:
            temp_v0_2 = __glKonGetTexParameter(temp_s2->unk8, (s32 *) temp_a3);
            var_s0 = temp_v0_2;
            var_s8 = temp_v0_2;
            temp_v0_3 = __glKonGetTexParameter(temp_s2->unkC);
            var_s5 = temp_v0_3;
            sp198 = (s64) temp_v0_3;
        }
        var_s2 = 0;
    }
    __glKonGetTexParameter(arg1, &sp30, (s64) &sp34, (s32) &sp38);
    temp_a4 = sp198 < sp34;
    temp_s5 = (temp_a4 != 0) ? sp34 : var_s5;
    temp_a7 = sp180 < sp38;
    temp_s2_2 = (temp_a7 != 0) ? sp38 : var_s2;
    temp_a0_2 = arg1->unkC;
    temp_a2 = (temp_a7 == 0) ? 0 : (sp38 - sp180);
    temp_a5 = (temp_a4 == 0) ? 0 : (sp34 - sp198);
    temp_ra = var_s0 < sp30;
    temp_s8 = (temp_ra != 0) ? sp30 : var_s8;
    temp_a3_2 = (temp_ra == 0) ? 0 : (sp30 - var_s0);
    switch (temp_a0_2) {                            /* switch 1; irregular */
    default:                                        /* switch 1 */
        sp108 = arg2;
        if (temp_a0_2 == 4) {
            sp40 = arg1->unk114;
            sp44 = arg1->unk118;
            var_s7 = 0;
        }
        break;
    case 3:                                         /* switch 1 */
        sp40 = arg1->unkFC->unk0;
        sp108 = arg2;
        sp44 = arg1->unkFC->unk4;
        break;
    case 0:                                         /* switch 1 */
        (&sp40)[var_s7 == 0] = 0;
        sp108 = arg2;
        (&sp40)[var_s7] = *(arg1->unkFC + (arg2 * 4));
        break;
    case 1:                                         /* switch 1 */
        sp40 = arg1->unkFC->unk0;
        sp108 = arg2;
        sp44 = arg1->unkFC->unk4;
        break;
    case 2:                                         /* switch 1 */
        temp_t0 = (arg2 & ~1) * 4;
        sp40 = *(arg1->unkFC + temp_t0);
        sp108 = arg2;
        var_s7 = sp118;
        sp44 = (arg1->unkFC + temp_t0)->unk4;
        break;
    }
    temp_v0_4 = arg1->unkC & 3;
    temp_t2 = (sp110 * 0x10) + &intern_format_arr3;
    temp_s3 = temp_t2->unk8;
    sp50 = arg_spC;
    temp_at = &st_bits_per_page + (((temp_v0_4 * 6) + (temp_s3 * 2)) * 4);
    temp_t1 = temp_t2->unk0;
    sp68 = (&index_2_target_map)[arg1->unk178];
    var_s3 = temp_s3 | (var_s7 * 8) | (temp_v0_4 << 5) | ((temp_at->unk0 << 7) | (temp_at->unk4 << 0xB));
    switch (temp_t1) {                              /* switch 2; irregular */
    default:                                        /* switch 2 */
        sp58 = 0x1800;
        break;
    case 0x81A5:                                    /* switch 2 */
    case 0x81A7:                                    /* switch 2 */
        /* fallthrough */
    case 0x81A6:                                    /* switch 2 */
        sp58 = 0x1801;
        break;
    }
    temp_a0_3 = arg_sp14->unkC;
    if (arg_sp14->unk0 != 0) {
        sp6C = temp_a0_3;
        sp70 = arg_sp14->unk10;
    } else {
        sp54 = temp_a0_3;
        sp58 = arg_sp14->unk10;
        sp5C = arg_sp14->unk14;
    }
    temp_a0_4 = temp_t2->unkC;
    switch (temp_a0_4) {                            /* switch 3; irregular */
    case 3:                                         /* switch 3 */
    case 4:                                         /* switch 3 */
        spAC = 0x10;
        break;
    case 1:                                         /* switch 3 */
        spAC = temp_t2->unk4;
        break;
    case 2:                                         /* switch 3 */
        spAC = 8;
        break;
    }
    if (arg1->unk20 & 0x400000) {
        temp_s7 = (temp_s5 * 0x10) | temp_s8 | (temp_s2_2 << 8);
        if (arg_sp14->unk0 != 0) {
            sp24 = arg_sp14;
            sp14 = var_s3;
            spC = temp_s7;
            sp4 = temp_s5;
            sp1C = &sp40;
            __glKonGetTexParameter(arg1, &sp48, var_s4, (s32) sp190, (s32) sp178, arg7, arg_sp4, temp_s8);
        } else {
            sp24 = var_s3;
            sp1C = temp_s7;
            sp14 = temp_s2_2;
            spC = temp_s5;
            sp4 = temp_s8;
            sp2C = &sp40;
            __glKonGetTexParameter(arg1, &sp48, var_s4, (s32) sp190, (s32) sp178, arg7, arg_sp4, arg_spC);
        }
    } else {
        temp_t0_2 = 1 << temp_a2;
        if ((temp_a2 + (temp_a5 + temp_a3_2)) != 0) {
            sp170 = temp_t0_2;
            sp1C8 = (s64) temp_s2_2;
            sp48 = arg_sp14->unk4;
            sp4C = arg_sp14->unk8;
            if (temp_t0_2 > 0) {
                sp1A0 = 1 << temp_a5;
                sp1C0 = 1 << temp_a3_2;
                sp188 = 0;
                sp1B8 = var_s4;
                sp1B0 = (s64) var_s0;
                temp_s7_2 = (temp_s5 * 0x10) | temp_s8 | (sp1C8 << 8);
loop_44:
                if (sp1A0 > 0) {
                    sp1A8 = 0;
                    temp_s5_2 = sp178 + (sp188 << sp180);
                    var_s0_2 = 0;
loop_48:
                    if (sp1C0 > 0) {
                        temp_s4 = sp190 + (sp1A8 << sp198);
loop_53:
                        spC = &sp40;
                        sp4 = var_s3;
                        temp_s8_2 = sp1B8 + (var_s0_2 << sp1B0);
                        sp14 = arg_sp14->unk0;
                        __glKonGetTexParameter(arg1, &sp48, temp_s8_2, temp_s4, temp_s5_2, arg7, arg_sp4, temp_s7_2);
                        if (arg1->unkC == 4) {
                            spC = &sp40;
                            var_s3 = (-0x19 & var_s3) | 8;
                            sp4 = var_s3;
                            sp14 = arg_sp14->unk0;
                            __glKonGetTexParameter(arg1, &sp48, temp_s8_2, temp_s4, temp_s5_2, arg7, arg_sp4, temp_s7_2);
                        }
                        var_s0_2 += 1;
                        if (sp1C0 != var_s0_2) {
                            goto loop_53;
                        }
                    }
                    temp_at_2 = sp1A8 + 1;
                    var_s0_2 = 0;
                    sp1A8 = temp_at_2;
                    if (sp1A0 != temp_at_2) {
                        goto loop_48;
                    }
                }
                temp_ra_2 = sp188 + 1;
                sp188 = temp_ra_2;
                if (sp170 != temp_ra_2) {
                    goto loop_44;
                }
            }
        } else {
            temp_a0_5 = arg1->unk16C;
            if ((temp_a0_5 != 0x8170) && (temp_a0_5 != 0x844D) && (temp_a0_5 != 0x844E) && (temp_a0_5 != 0x844F)) {
                sp1C8 = (s64) temp_s2_2;
                sp48 = arg_sp14->unk4;
                sp4C = arg_sp14->unk8;
                spC = &sp40;
                sp4 = var_s3;
                var_s7_2 = (temp_s5 * 0x10) | temp_s8 | (sp1C8 << 8);
                sp14 = arg_sp14->unk0;
                __glKonGetTexParameter(arg1, &sp48, var_s4, (s32) sp190, (s32) sp178, arg7, arg_sp4, var_s7_2);
            } else {
                sp1C = arg_sp14;
                spC = var_s3;
                sp14 = &sp40;
                var_s7_2 = (temp_s5 * 0x10) | temp_s8 | (temp_s2_2 << 8);
                sp4 = var_s7_2;
                __glKonGetTexParameter(arg1, (s32 *) sp108, (s64) &sp48, (s32) var_s4, (s32) sp190, (s32) sp178, arg7, arg_sp4);
            }
            if (arg1->unkC == 4) {
                spC = &sp40;
                sp4 = (var_s3 & ~0x18) | 8;
                sp14 = arg_sp14->unk0;
                __glKonGetTexParameter(arg1, &sp48, var_s4, (s32) sp190, (s32) sp178, arg7, arg_sp4, var_s7_2);
            }
        }
    }
    *(s32 *)0x4000 = 0x176;
    *(void *)0x4000 = (s32) arg1->unk110->unk4;
}

void subgetSimple(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14, void *arg_sp1C) {
    s32 temp_a4;
    s32 temp_a5;

    arg1->unk30 = 0;
    arg1->unk34 = arg2;
    arg1->unk38 = arg3;
    arg1->unk44 = arg4;
    temp_a4 = (arg4 + arg7) - 1;
    arg1->unk48 = temp_a4;
    temp_a5 = (arg3 + arg6) - 1;
    arg1->unk40 = temp_a5;
    arg1->unk3C = (s32) ((arg2 + arg5) - 1);
    arg1->unk54 = arg_sp14;
    arg1->unk50 = arg_spC;
    arg1->unk4C = arg_sp4;
    arg1->unk58 = (s32) arg_sp1C->unk0;
    arg1->unk5C = (s32) arg_sp1C->unk4;
    __glkonReadTexels3D(arg1, arg_spC, arg_sp4, temp_a4, temp_a5);
    arg0->unk20 = (s32) (arg0->unk20 & 0xFFFDFFFF);
}

void getLevel(s32 *arg1, s64 arg2, s64 arg3, s64 arg4, s32 arg5, s64 arg6) {
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s32 *sp100;
    s32 *spFC;
    s32 *spF8;
    s32 sp64;
    s32 *sp58;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 *temp_s6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_s3_5;
    s32 var_s5;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_s1;
    s64 temp_s2;
    s64 temp_s3;
    s64 temp_s3_3;
    s64 temp_s3_4;
    s64 temp_s4;
    s64 temp_t2;
    s64 temp_t9;
    s64 temp_v0;
    void *temp_s3_2;

    sp130 = arg2;
    sp120 = arg3;
    sp110 = arg4;
    sp118 = arg6;
    temp_s6 = arg1->unk48;
    var_s5 = arg1->unk40;
    temp_s3 = arg2 * 4;
    sp128 = temp_s3;
    temp_s3_2 = (temp_s3 + arg1)->unk7C;
    sp140 = *(s32 *)0x1010 + 0x8AD0;
    temp_s2 = __glKonGetTexParameter(temp_s3_2->unk8);
    temp_s4 = __glKonGetTexParameter(temp_s3_2->unkC);
    temp_v0 = __glKonGetTexParameter(temp_s3_2->unk10);
    temp_a5 = arg1->unk68;
    temp_s1 = temp_v0;
    temp_t9 = (temp_a5 >> 0x16) & 1;
    temp_s3_3 = temp_v0;
    sp138 = temp_t9;
    temp_s3_4 = (arg1->unk178 != 3) ? 0 : temp_s3_3;
    if (temp_t9 != 0) {
        temp_a1 = temp_a5 & 0xFFBFFFFF;
        arg1->unk68 = temp_a1;
        __glKonGetTexParameter(arg1, (s32 *) temp_a1);
        arg1->unk68 = (s32) ((arg1->unk68 & 0xFFBFFFFF) | (sp138 << 0x16));
    }
    __glKonGetTexParameter(arg1, &sp20, (s64) &sp24, (s32) &sp28);
    temp_a0 = arg1->unkC;
    temp_a4 = (temp_s4 >= sp24) ? temp_s4 : (s64) sp24;
    temp_a3 = (temp_s2 >= sp20) ? temp_s2 : (s64) sp20;
    switch (temp_a0) {                              /* irregular */
    default:
        sp108 = temp_s3_4;
        if (temp_a0 == 4) {
            sp30 = arg1->unk114;
            sp34 = arg1->unk118;
        }
        break;
    case 0:
        if (sp130 & 1) {
            var_s5 = (arg1->unk11C << 0x1C) | (var_s5 & ~0x10000000);
        }
        sp108 = temp_s3_4;
        sp34 = 0;
        sp30 = *(arg1->unkFC + sp128);
        break;
    case 3:
        sp30 = arg1->unkFC->unk0;
        sp108 = temp_s3_4;
        sp34 = arg1->unkFC->unk4;
        break;
    case 2:
        temp_a6 = (sp130 & ~1) * 4;
        sp108 = temp_s3_4;
        temp_a0_2 = *(temp_a6 + arg1->unkFC);
        if (sp130 & 1) {
            sp34 = temp_a0_2;
            var_s5 |= 0x10000000;
            sp30 = (arg1->unkFC + temp_a6)->unk4;
        } else {
            sp30 = temp_a0_2;
            sp34 = (arg1->unkFC + temp_a6)->unk4;
        }
        break;
    case 1:
        sp30 = arg1->unkFC->unk0;
        sp108 = temp_s3_4;
        sp34 = arg1->unkFC->unk4;
        break;
    }
    sp64 = (s32) sp120;
    sp4C = (s32) sp118;
    sp48 = arg5;
    sp44 = (s32) sp110;
    temp_a7 = 1 << temp_s1;
    sp40 = temp_a7;
    temp_a6_2 = 1 << temp_s4;
    sp3C = temp_a6_2;
    temp_s3_5 = 1 << temp_s2;
    sp38 = temp_s3_5;
    sp58 = (&index_2_target_map)[arg1->unk178];
    temp_t2 = (temp_a4 * 0x10) | temp_a3 | (((temp_s1 >= sp28) ? sp108 : (s64) sp28) << 8);
    if (arg1->unk190 != 0) {
        if (sp140->unk19C != (sp140 + 0x144)) {
            sp100 = NULL;
            spFC = NULL;
            spF8 = NULL;
            sp190 = temp_t2;
            sp198 = (s64) temp_a6_2;
            sp1A0 = (s64) temp_a7;
            __glkonim_GetIntegerv(0xD04, &spF8, sp120, temp_a3, temp_a4, 1, temp_a6_2, temp_a7);
            __glkonim_GetIntegerv(0xD03, &spFC);
            __glkonim_GetIntegerv(0xD02, &sp100);
            __glkonim_PixelStorei(0xD04, spF8 + 1);
            __glkonim_PixelStorei(0xD03, spFC + 1);
            if (sp100 == NULL) {
                sub_0d970000((s32 *)0xD02, temp_s3_5 + 2, sp100);
            }
            __glKonGetTexParameter(arg1, &sp38, 0, 0, 0, temp_s3_5, (s32) sp198, (s32) sp1A0, var_s5, (s32 *) sp190, temp_s6, &sp30);
            sub_0d970000((s32 *)0xD04, spF8);
            __glkonim_PixelStorei(0xD03, spFC);
            __glkonim_PixelStorei(0xD02, sp100);
        } else {
            goto block_13;
        }
    } else {
block_13:
        __glKonGetTexParameter(arg1, &sp38, 0, 0, 0, temp_s3_5, temp_a6_2, temp_a7, var_s5, (s32 *) temp_t2, temp_s6, &sp30);
    }
}

s32 validDimension(s32 arg0, s64 arg1) {
    s64 sp8;
    s32 temp_a0;
    s32 temp_v0;

    if (saved_reg_gp->unk-3E20 != 0) {
        if (saved_reg_gp->unk-3E1C != 0) {
            goto block_2;
        }
        goto block_6;
    }
    sp8 = arg1;
    saved_reg_gp->unk-3E20 = 1;
    temp_a0 = (getenv(&__rodata0 - 0x12E0, 1) != 0) ? 1 : saved_reg_gp->unk-3E1C;
    saved_reg_gp->unk-3E1C = temp_a0;
    if (temp_a0 == 0) {
block_6:
        if (arg0 >= 0x801) {
            return 0;
        }
        /* Duplicate return node #4. Try simplifying control flow for better match */
        temp_v0 = arg0 - (arg1 * 2);
        return (temp_v0 & (temp_v0 - 1)) == 0;
    }
block_2:
    if (arg0 >= 0x1001) {
        return 0;
    }
    temp_v0 = arg0 - (arg1 * 2);
    return (temp_v0 & (temp_v0 - 1)) == 0;
}

s32 log2(s32 arg0) {
    s32 temp_a3;
    s32 var_a3;
    s32 var_v0;

    var_a3 = arg0 >> 1;
    if (var_a3 != 0) {
        var_v0 = 0;
loop_2:
        temp_a3 = var_a3 >> 1;
        var_v0 += 1;
        var_a3 = temp_a3 >> 1;
        if (temp_a3 != 0) {
            var_v0 += 1;
            if (var_a3 != 0) {
                goto loop_2;
            }
        }
        return var_v0;
    }
    return 0;
}

s32 areLodsConsistent(void *arg0) {
    s32 temp_a2;
    s32 var_a3;
    s32 var_s1;
    void *var_a1;
    void *var_s0;

    var_a3 = arg0->unk14;
    var_s1 = arg0->unk18;
    if (var_a3 >= var_s1) {
        var_s0 = arg0 + (var_s1 * 4);
        var_a1 = arg0 + (var_a3 * 4);
loop_2:
        temp_a2 = var_s0->unk7C;
        if (temp_a2 == 0) {
            var_s0 += 4;
            var_a3 = (u32) var_a1 < (u32) var_s0;
            var_s1 += 1;
            if (var_a3 != 0) {
                /* Duplicate return node #4. Try simplifying control flow for better match */
                return 1;
            }
            goto loop_2;
        }
        if (subtractTexTableUsage((s64) arg0, (s64) var_s1, (s64) temp_a2, var_a3) != 0) {
            return 0;
        }
        var_a3 = arg0->unk14;
        var_s1 += 1;
        var_s0 += 4;
        var_a1 = arg0 + (var_a3 * 4);
        if (var_a3 < var_s1) {
            /* Duplicate return node #4. Try simplifying control flow for better match */
            return 1;
        }
        goto loop_2;
    }
    return 1;
}

void copyBackLods(s64 arg0, s32 *arg1, s32 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *var_s4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s5;
    s32 temp_s8;
    s64 temp_s0;
    s64 var_s0;
    void *temp_at;

    sp0 = arg0;
    temp_at = &rdbk_format2 + ((&intern_format_arr3 + (arg1->unk1C * 0x10))->unk8 * 0xC);
    var_s0 = 0;
    var_s4 = arg1;
    temp_s5 = arg2 & 1;
    sp8 = (s64) temp_at->unk8;
    temp_s8 = arg2 & 2;
    sp10 = (s64) temp_at->unk4;
loop_4:
    temp_s2 = 1 << var_s0;
    temp_s3 = ~temp_s2;
    if (var_s0 & 1) {
        if (temp_s5 != 0) {
            goto block_6;
        }
    } else if (temp_s8 == 0) {

    } else {
block_6:
        temp_a2 = arg1->unk28;
        if ((arg1->unk24 & temp_s2) && (temp_s2 & temp_a2)) {
            if (!(temp_s2 & arg1->unk30)) {
                M2C_ERROR(/* Read from unset register $t9 */)(2, 0x60000000, temp_a2);
                subtractTexTableUsage((s64) arg1, var_s0);
                __glKonGetTexParameter((s32 *) sp0, arg1, var_s0, (s32) sp8, (s32) sp10, 0x1403, *var_s4->unk7C);
                __glKonSetNoModeState(2, 0);
                arg1->unk30 = (s32) (temp_s2 | (arg1->unk30 & temp_s3));
            }
            arg1->unk28 = (s32) (arg1->unk28 & temp_s3);
            arg1->unk2C = (s32) (arg1->unk2C & temp_s3);
        }
    }
    temp_s0 = var_s0 + 1;
    temp_s2_2 = 1 << temp_s0;
    temp_s3_2 = ~temp_s2_2;
    if (temp_s0 & 1) {
        if (temp_s5 != 0) {
            goto block_12;
        }
    } else if (temp_s8 == 0) {

    } else {
block_12:
        temp_a2_2 = arg1->unk28;
        if ((arg1->unk24 & temp_s2_2) && (temp_s2_2 & temp_a2_2)) {
            if (!(temp_s2_2 & arg1->unk30)) {
                __glKonSetNoModeState(2, 0x60000000, temp_a2_2);
                subtractTexTableUsage((s64) arg1, temp_s0);
                __glKonGetTexParameter((s32 *) sp0, arg1, temp_s0, (s32) sp8, (s32) sp10, 0x1403, *var_s4->unk80);
                __glKonSetNoModeState(2, 0);
                arg1->unk30 = (s32) (temp_s2_2 | (arg1->unk30 & temp_s3_2));
            }
            arg1->unk28 = (s32) (arg1->unk28 & temp_s3_2);
            arg1->unk2C = (s32) (arg1->unk2C & temp_s3_2);
        }
    }
    var_s0 = temp_s0 + 1;
    var_s4 += 8;
    if (var_s0 != 0x20) {
        goto loop_4;
    }
}

void repPixels(s64 arg0, s64 arg1, s32 arg2) {
    s64 sp18;
    s64 sp10;
    s32 (**temp_at)(?, s32);
    s32 temp_v0;
    void *var_a3;

    temp_at = *(s32 (***)(?, s32))0x1010;
    sp18 = arg1;
    sp10 = arg0;
    temp_v0 = *temp_at(temp_at, arg2 * 0x10);
    if (arg2 != 0) {
        var_a3 = temp_v0 + ((arg2 - 1) * 0x10);
        do {
            var_a3->unkC = unksp1C;
            var_a3->unk8 = (f32) sp18;
            var_a3 -= 0x10;
            var_a3->unk14 = unksp14;
            var_a3->unk10 = (f32) sp10;
        } while (var_a3 != (temp_v0 - 0x10));
    }
}

void fillBorderColorLevel(s32 *arg0, s64 arg1) {
    s64 sp190;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s32 sp9C;
    s32 *sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 *temp_s6;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s8;
    s32 temp_s8_2;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a2_3;
    s64 temp_a2_4;
    s64 temp_a3_2;
    s64 temp_ra;
    s64 temp_s8_3;
    void *temp_ra_2;

    sp100 = arg1;
    temp_v0 = 1 << arg1;
    temp_s1 = arg0->unk154 - arg1;
    temp_ra = arg0->unk14C - arg1;
    temp_s8 = arg0->unk150 - arg1;
    temp_s4 = arg0->unk11C == (arg1 & 1);
    temp_a5 = ~temp_v0;
    temp_s6 = *(s32 **)0x1010;
    temp_s1_2 = (temp_s1 < 0) ? 0 : temp_s1;
    temp_s2 = (&intern_format_arr3 + (arg0->unk1C * 0x10))->unk8;
    temp_s8_2 = (temp_s8 < 0) ? 0 : temp_s8;
    temp_a4 = arg0->unk34 & temp_a5;
    sp178 = (temp_ra < 0) ? 0 : temp_ra;
    arg0->unk34 = (s32) (temp_v0 | temp_a4);
    __glKonGetTexParameter(&sp20, &sp24, (s64) &sp28, temp_a4, temp_a5);
    temp_v0_2 = sp178 + 1;
    temp_a1 = temp_s8_2 + 1;
    temp_v0_3 = arg0->unkC;
    sp168 = (s64) ((temp_a1 >= sp24) ? temp_a1 : sp24);
    temp_a5_2 = ((arg0->unk178 ^ 3) == 0) ? (temp_s1_2 + 1) : 0;
    sp170 = (s64) ((temp_v0_2 >= sp20) ? temp_v0_2 : sp20);
    switch (temp_v0_3) {                            /* irregular */
    default:
        spF8 = (s64) temp_s2;
        if (temp_v0_3 == 2) {
            temp_t2 = (sp100 & ~1) * 4;
            sp30 = *(arg0->unkFC + temp_t2);
            sp34 = (arg0->unkFC + temp_t2)->unk4;
        }
        break;
    case 3:
        sp30 = arg0->unkFC->unk0;
        spF8 = (s64) temp_s2;
        sp34 = arg0->unkFC->unk4;
        break;
    case 0:
        (&sp30)[temp_s4 == 0] = 0;
        spF8 = (s64) temp_s2;
        (&sp30)[temp_s4] = *(arg0->unkFC + (sp100 * 4));
        break;
    case 1:
        sp30 = arg0->unkFC->unk0;
        spF8 = (s64) temp_s2;
        sp34 = arg0->unkFC->unk4;
        break;
    }
    sp48 = 0x1406;
    sp44 = 0x1908;
    sp40 = ((arg0->unk178 ^ 3) == 0) ? ((1 << temp_s1_2) + 1) : 1;
    temp_a3 = arg0->unkC & 3;
    sp9C = (&intern_format_arr3 + (arg0->unk1C * 0x10))->unk4;
    temp_ra_2 = &st_bits_per_page + (((spF8 * 2) + (temp_a3 * 6)) * 4);
    temp_s3 = sp170 | (sp168 * 0x10) | (((temp_a5_2 >= sp28) ? temp_a5_2 : sp28) << 8);
    M2C_ERROR(/* unknown instruction: ldl $a1, 0x188($s0) */);
    M2C_ERROR(/* unknown instruction: ldl $a0, 0x180($s0) */);
    temp_s2_2 = spF8 | (temp_s4 * 8) | (arg0->unkC << 5) | ((temp_ra_2->unk0 << 7) | (temp_ra_2->unk4 << 0xB));
    temp_v0_4 = __glKonGetTexParameter(M2C_ERROR(/* unknown instruction: ldr $a0, 0x187($s0) */), M2C_ERROR(/* unknown instruction: ldr $a1, 0x18f($s0) */), 1, temp_a3, 0x1406, temp_a5_2, 0x1908);
    sp4C = temp_v0_4;
    sp3C = 1;
    sp38 = 1;
    temp_a3_2 = (1 << sp168) - 1;
    unksp130 = temp_a3_2;
    temp_a2 = (1 << sp170) - 1;
    sp158 = temp_a2;
    __glKonGetTexParameter(arg0, &sp38, temp_a2, (s32) temp_a3_2, 0, 1, 1, temp_s3, temp_s2_2, &sp30, NULL);
    sub_0d970000(temp_s6, temp_v0_4);
    temp_a2_2 = 1 << temp_s8_2;
    sp108 = temp_a2_2;
    temp_a2_3 = temp_a2_2 + 1;
    sp190 = temp_a2_3;
    M2C_ERROR(/* unknown instruction: ldl $a1, 0x188($s0) */);
    M2C_ERROR(/* unknown instruction: ldl $a0, 0x180($s0) */);
    temp_v0_5 = __glKonGetTexParameter(M2C_ERROR(/* unknown instruction: ldr $a0, 0x187($s0) */), M2C_ERROR(/* unknown instruction: ldr $a1, 0x18f($s0) */), temp_a2_3);
    sp4C = temp_v0_5;
    sp38 = 1;
    sp3C = (s32) sp190;
    temp_a2_4 = 1 << sp178;
    sp160 = temp_a2_4;
    __glKonGetTexParameter(arg0, &sp38, temp_a2_4, 0, 0, 1, (s32) sp190, temp_s3, temp_s2_2, &sp30, NULL);
    __glKonGetTexParameter(arg0, &sp38, sp158, 0, 0, 1, (s32) sp190, temp_s3, temp_s2_2, &sp30, NULL);
    temp_s6->unkC(temp_s6, temp_v0_5);
    M2C_ERROR(/* unknown instruction: ldl $a1, 0x188($s0) */);
    M2C_ERROR(/* unknown instruction: ldl $a0, 0x180($s0) */);
    temp_s8_3 = sp160 + 1;
    temp_v0_6 = __glKonGetTexParameter(M2C_ERROR(/* unknown instruction: ldr $a0, 0x187($s0) */), M2C_ERROR(/* unknown instruction: ldr $a1, 0x18f($s0) */), temp_s8_3);
    sp4C = temp_v0_6;
    sp3C = 1;
    sp38 = (s32) temp_s8_3;
    __glKonGetTexParameter(arg0, &sp38, 0, (s32) sp108, 0, (s32) temp_s8_3, 1, temp_s3, temp_s2_2, &sp30, NULL);
    __glKonGetTexParameter(arg0, &sp38, 0, (s32) unksp130, 0, (s32) temp_s8_3, 1, temp_s3, temp_s2_2, &sp30, NULL);
    temp_s6->unkC(temp_s6, temp_v0_6);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xc8, 0xcc, 0xe8, 0xec, 0xf0, 0xf4, 0xf8, 0xfc], gap at: 0xd8. */
void downloadLods(s64 arg0, s32 *arg1) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s32 sp94;
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    ? sp20;
    s32 *var_s1;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 var_s0;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_t1;
    s32 var_t8;
    s64 temp_a3;
    u8 temp_a2;
    u8 var_s5;
    void *temp_a1;
    void *temp_ra;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d96d524
    if (M2C_ERROR()) {
        var_s5 = 0;
        if (temp_a2 != 0) {
            var_s5 = 0;
        } else {
            __glKonSetNoModeState(2, 0x40000000, (s32) temp_a2);
            __glKonPushState(0xC, &sp20);
            __glKonDefaultState(0xC);
            var_s2 = arg1->unk18;
            if (arg1->unk14 >= var_s2) {
loop_13:
                temp_a2_2 = arg1->unk34;
                var_t1 = temp_a2_2 & (1 << var_s2);
loop_14:
                if (var_t1 != 0) {
                    var_s2 += 1;
                    var_t1 = temp_a2_2 & (1 << var_s2);
                    if (arg1->unk14 >= var_s2) {
                        goto loop_14;
                    }
                } else {
                    __glKonGetTexParameter(arg1, (s32 *) var_s2, (s64) temp_a2_2);
                    var_s2 += 1;
                    if (arg1->unk14 < var_s2) {

                    } else {
                        goto loop_13;
                    }
                }
            }
            __glKonPopState(&sp20, 1);
            __glKonSetNoModeState(2, 0);
        }
    } else {
        var_s5 = temp_a2;
    }
    __glKonSetNoModeState(2, 0x60000000);
    sp90 = 0x1403;
    sp80 = 0;
    temp_a1 = &rdbk_format2 + (spC0 * 0xC);
    sp8C = temp_a1->unk4;
    var_s0 = arg1->unk18;
    if (arg1->unk14 >= var_s0) {
        spA0 = var_s5 * 2;
        spA8 = (s64) temp_a1;
        var_s1 = &arg1[var_s0];
loop_5:
        temp_a2_3 = arg1->unk2C;
        var_s2_2 = 1 << var_s0;
        var_t8 = temp_a2_3 & var_s2_2;
loop_6:
        if (var_t8 != 0) {
            var_s0 += 1;
            var_s1 += 4;
            var_s2_2 = 1 << var_s0;
            var_t8 = temp_a2_3 & var_s2_2;
            if (arg1->unk14 >= var_s0) {
                goto loop_6;
            }
        } else {
            temp_ra = var_s1->unk7C;
            sp98 = (s64) temp_ra;
            sp84 = temp_ra->unk8 - spA0;
            sp88 = temp_ra->unkC - spA0;
            sp94 = temp_ra->unk0;
            temp_a4 = var_s5 - temp_ra->unk14;
            __glKonGetTexParameter((s32 *) spB0, arg1, (s64) var_s0, *spA8, temp_a4, temp_a4, temp_a4, temp_ra->unk8 - spA0, temp_ra->unkC - spA0, temp_ra->unk10 - spA0, &sp80);
            temp_a3 = ~var_s2_2;
            temp_a2_4 = arg1->unk30 & temp_a3;
            arg1->unk30 = temp_a2_4;
            temp_a4_2 = var_s2_2 | (arg1->unk2C & temp_a3);
            arg1->unk2C = temp_a4_2;
            temp_a5 = var_s2_2 | (arg1->unk28 & temp_a3);
            arg1->unk28 = temp_a5;
            sub_0d970000((s32 *) spB8, *sp98, (s32 *) temp_a2_4, temp_a3, temp_a4_2, temp_a5);
            *sp98 = NULL;
            var_s0 += 1;
            var_s1 += 4;
            if (arg1->unk14 < var_s0) {

            } else {
                goto loop_5;
            }
        }
    }
    __glKonSetNoModeState(2, 0);
}

s32 whichComps(s32 arg0) {
    s32 *var_a2;
    s32 var_a3;

    var_a2 = &intern_format_arr3;
    var_a3 = 0;
loop_1:
    var_a2 += 0x10;
    if (*var_a2 != arg0) {
        var_a3 += 1;
        if (var_a2 == (&intern_format_arr3 + 0x430)) {
            return -1;
        }
        goto loop_1;
    }
    return var_a3;
}

s32 storage2Comp(s32 arg0, s32 arg1) {
    s32 *var_a4;

    var_a4 = &storage_format_arr7;
loop_1:
    if (*var_a4 != arg0) {
        var_a4 += 0x1C;
        if (var_a4 == (&storage_format_arr7 + 0x134)) {
            return -1;
        }
        goto loop_1;
    }
    return var_a4[arg1].unk4;
}

s32 calcObjSize(void *arg0, s32 *arg1, s32 arg2) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp8;
    s32 sp4;
    s32 *temp_a2_2;
    s32 *temp_a4;
    s32 *temp_a4_2;
    s32 *temp_t8;
    s32 *temp_t9_3;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *var_a5;
    s32 *var_a5_2;
    s32 *var_a5_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a2;
    s32 var_a4;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s6;
    s32 var_t0;
    u32 temp_a2_3;
    void *temp_a5;
    void *temp_s4;
    void *temp_t0_6;

    sp18 = (s64) *(s32 *)0x1010;
    temp_a4 = arg1->unkFC;
    temp_s4 = (arg1 + (arg2 * 4))->unk7C;
    temp_s8 = (arg1->unk20 & 0x400000) != 0;
    sp20 = (s64) temp_s4->unk4;
    if (temp_a4 != NULL) {
        sp18->unkC(sp18, temp_a4, temp_a4);
    }
    arg1->unk1C = (s32) sp20;
    arg1->unk74 = (s32) ((arg1->unk74 & 0xFF000FFF) | (sp20 << 0xC));
    arg1->unk14C = (s32) (__glKonGetTexParameter(temp_s4->unk8) + arg2);
    var_s2 = __glKonGetTexParameter(temp_s4->unkC) + arg2;
    arg1->unk150 = var_s2;
    if (arg1->unk178 != 3) {
        var_a1 = 0;
    } else {
        var_s2 = arg1->unk150;
        var_a1 = __glKonGetTexParameter(temp_s4->unk10) + arg2;
    }
    arg1->unk154 = var_a1;
    temp_s3 = arg1->unk14C;
    temp_s5 = ((arg1->unk178 ^ 3) == 0) ? var_a1 : 0;
    arg1->unk190 = (s8) temp_s4->unk14;
    temp_a2 = ((temp_s3 | (arg1->unk44 & ~0xF)) & ~0xF0) | (var_s2 * 0x10);
    arg1->unk44 = temp_a2;
    if (arg1->unk1FC != 0) {
        arg1->unk44 = (s32) (temp_a2 | 0xF00);
    } else {
        arg1->unk44 = (s32) ((temp_a2 & ~0xF00) | (temp_s5 << 8));
    }
    temp_s2 = temp_s8 + var_s2;
    temp_s3_2 = temp_s8 + temp_s3;
    temp_s5_2 = ((arg1->unk178 ^ 3) == 0) ? (temp_s5 + temp_s8) : temp_s5;
    __glKonGetTexParameter(arg1, sp, (s64) &sp4, (s32) &sp8);
    var_s3 = (temp_s3_2 < sp0) ? sp0 : temp_s3_2;
    var_s2_2 = (temp_s2 < sp4) ? sp4 : temp_s2;
    temp_a1 = arg1->unkC;
    var_s5 = (temp_s5_2 < sp8) ? sp8 : temp_s5_2;
    arg1->unk54 = (s32) (((((var_s3 | (arg1->unk54 & ~0xF)) & ~0xF0) | (var_s2_2 * 0x10)) & ~0xF00) | (var_s5 << 8));
    switch (temp_a1) {                              /* irregular */
    default:
block_11:
        var_a1_2 = arg1->unk0;
        break;
    case 0:
        temp_a0 = ((s32) arg1->unk40 >> 2) & 7;
        arg1->unk0 = 0;
        arg1->unk4 = 0;
        if ((temp_a0 != 0) && (temp_a0 != 1)) {
            temp_s5_3 = arg1->unk14C;
            temp_a3 = arg1->unk150;
            var_s5_2 = (temp_a3 >= temp_s5_3) ? temp_a3 : temp_s5_3;
        } else {
            var_s5_2 = 0;
        }
        temp_a0_2 = arg1->unk16C;
        if ((temp_a0_2 != 0x8170) && (temp_a0_2 != 0x844D) && (temp_a0_2 != 0x844E) && (temp_a0_2 != 0x844F)) {
            temp_v0 = calloc(4, 0x11);
            var_a5 = temp_v0;
            arg1->unkFC = temp_v0;
            if (var_s5_2 >= 0) {
                var_a1_3 = 0;
                temp_a0_3 = var_s5_2 + 1;
                temp_t0 = (&intern_format_arr3 + (sp20 * 0x10))->unk8;
                if (temp_a0_3 & 1) {
                    *temp_v0 = arg1->unk0;
                    var_s5_2 -= 1;
                    var_a1_3 = 1;
                    temp_t9 = 1 << ((temp_t0 + (((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4))) - 4);
                    var_a5 += 4;
                    temp_ra = temp_t9 < 4;
                    var_s2_2 -= 1;
                    var_s3 -= 1;
                    arg1->unk0 += (temp_ra != 0) ? 4 : temp_t9;
                }
                if ((temp_a0_3 >> 1) != 0) {
                    var_a2 = var_s5_2;
                    do {
                        temp_t8 = &arg1[var_a1_3];
                        var_a5->unk0 = *temp_t8;
                        temp_a1_2 = var_a1_3 == 0;
                        temp_t9_2 = 1 << (((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4) + (temp_t0 - 4));
                        temp_a4_2 = &arg1[temp_a1_2];
                        *temp_t8 += (temp_t9_2 < 4) ? 4 : temp_t9_2;
                        var_a5->unk4 = (s32) *temp_a4_2;
                        temp_t8_2 = var_s3 - 1;
                        temp_t3 = var_s2_2 - 1;
                        var_a5 += 8;
                        var_a1_3 = temp_a1_2 == 0;
                        var_a2 -= 2;
                        temp_t0_2 = 1 << (((temp_t8_2 >= sp0) ? temp_t8_2 : sp0) + ((temp_t3 >= sp4) ? temp_t3 : sp4) + (temp_t0 - 4));
                        var_s3 -= 2;
                        var_s2_2 -= 2;
                        *temp_a4_2 += (temp_t0_2 < 4) ? 4 : temp_t0_2;
                    } while (var_a2 != -1);
                }
            }
        } else {
            if (arg1->unk1B4 != 0) {
                sp10 = 0xF;
                var_s6 = var_s5_2;
            } else {
                temp_t8_3 = arg1->unk194;
                sp10 = (s64) temp_t8_3;
                var_s6 = temp_t8_3 - 1;
            }
            temp_v0_2 = calloc(4, 0x30);
            arg1->unkFC = temp_v0_2;
            var_a5_2 = temp_v0_2;
            arg1->unk5C = (s32) (sp10 | (arg1->unk5C & ~0xF));
            arg1->unk68 = (s32) (((arg1->unk68 | 0x400000) & ~0xF00) | (arg1->unk198 << 8));
            if (var_s6 >= 0) {
                var_s1 = 0;
                var_a1_4 = 0;
                temp_t1 = var_s6 + 1;
                var_t0 = (&intern_format_arr3 + (sp20 * 0x10))->unk8;
                do {
                    temp_a2_2 = &arg1[var_a1_4];
                    *var_a5_2 = *temp_a2_2;
                    temp_t8_4 = arg1->unk198;
                    var_a5_2 += 4;
                    temp_a4_3 = 1 << ((var_t0 + (((temp_t8_4 >= sp0) ? temp_t8_4 : sp0) + ((temp_t8_4 >= sp4) ? temp_t8_4 : sp4))) - 4);
                    var_a4 = (temp_a4_3 < 4) ? 4 : temp_a4_3;
                    if (arg1->unk1B4 != 0) {
                        var_a4 = (arg1->unk15C < var_s1) ? 0 : var_a4;
                    }
                    var_s3 -= 1;
                    var_s1 += 1;
                    var_s2_2 -= 1;
                    var_a1_4 = var_a1_4 == 0;
                    *temp_a2_2 += var_a4;
                } while (temp_t1 != var_s1);
                var_s1_2 = temp_t1;
                if (var_s5_2 >= temp_t1) {
                    goto block_38;
                }
            } else if (var_s5_2 >= 0) {
                var_s1_2 = 0;
                var_a1_4 = 0;
                var_t0 = (&intern_format_arr3 + (sp20 * 0x10))->unk8;
block_38:
                do {
                    temp_t9_3 = &arg1[var_a1_4];
                    *var_a5_2 = *temp_t9_3;
                    var_a1_4 = var_a1_4 == 0;
                    var_a5_2 += 4;
                    var_s1_2 += 1;
                    temp_ra_2 = 1 << ((var_t0 + (((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4))) - 4);
                    var_s2_2 -= 1;
                    var_s3 -= 1;
                    *temp_t9_3 += (temp_ra_2 < 4) ? 4 : temp_ra_2;
                } while ((var_s5_2 + 1) != var_s1_2);
            }
        }
        goto block_11;
    case 4:
        arg1->unkFC = NULL;
        var_a1_2 = 1 << ((((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4) + ((sp20 * 0x10) + &intern_format_arr3)->unk8) - 4);
        arg1->unk0 = var_a1_2;
        arg1->unk4 = var_a1_2;
        if (var_a1_2 < 4) {
            arg1->unk0 = 4;
            var_a1_2 = 4;
            arg1->unk4 = 4;
        }
        break;
    case 3:
        arg1->unkFC = sp18->unk0(sp18, 8);
        var_a1_2 = 1 << ((((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4) + ((sp20 * 0x10) + &intern_format_arr3)->unk8) - 5);
        arg1->unk0 = var_a1_2;
        arg1->unk4 = var_a1_2;
        break;
    case 1:
        arg1->unkFC = sp18->unk0(sp18, 8);
        var_a1_2 = 1 << ((((sp20 * 0x10) + &intern_format_arr3)->unk8 + (((var_s5 >= sp8) ? var_s5 : sp8) + (((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4)))) - 5);
        arg1->unk0 = var_a1_2;
        arg1->unk4 = var_a1_2;
        if (var_a1_2 < 4) {
            var_a1_2 = 4;
            arg1->unk0 = 4;
            arg1->unk4 = 4;
        }
        break;
    case 2:
        temp_v0_3 = calloc(4, 0xD);
        temp_a3_2 = arg1->unk14C;
        temp_a6 = arg1->unk150;
        temp_s1 = arg1->unk154;
        var_a5_3 = temp_v0_3;
        temp_a3_3 = (temp_a6 >= temp_a3_2) ? temp_a6 : temp_a3_2;
        var_a1_2 = 0;
        var_s1_3 = (temp_a3_3 >= temp_s1) ? temp_a3_3 : temp_s1;
        arg1->unk0 = 0;
        arg1->unkFC = temp_v0_3;
        temp_a2_3 = var_s1_3 + 2;
        if (var_s1_3 >= 0) {
            temp_a0_4 = (s32) ((temp_a2_3 >> 0x1F) + temp_a2_3) >> 1;
            temp_t0_3 = (&intern_format_arr3 + (sp20 * 0x10))->unk8;
            if (temp_a0_4 & 1) {
                temp_v0_3->unk0 = 0;
                temp_v0_3->unk4 = (s32) arg1->unk0;
                var_s1_3 -= 2;
                var_a5_3 = temp_v0_3 + 8;
                temp_a2_4 = 1 << ((temp_t0_3 + (((var_s5 >= sp8) ? var_s5 : sp8) + (((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4)))) - 4);
                var_s5 -= 2;
                var_s2_2 -= 2;
                var_s3 -= 2;
                var_a1_2 = arg1->unk0 + ((temp_a2_4 < 4) ? 4 : temp_a2_4);
                arg1->unk0 = var_a1_2;
            }
            if ((temp_a0_4 >> 1) != 0) {
                do {
                    var_a5_3->unk0 = var_a1_2;
                    var_a5_3->unk4 = (s32) arg1->unk0;
                    temp_t0_4 = 1 << (((var_s5 >= sp8) ? var_s5 : sp8) + (((var_s3 >= sp0) ? var_s3 : sp0) + ((var_s2_2 >= sp4) ? var_s2_2 : sp4)) + (temp_t0_3 - 4));
                    temp_a6_2 = arg1->unk0 + ((temp_t0_4 < 4) ? 4 : temp_t0_4);
                    arg1->unk0 = temp_a6_2;
                    var_a5_3->unk8 = temp_a6_2;
                    var_a5_3->unkC = (s32) arg1->unk0;
                    temp_t3_2 = var_s3 - 2;
                    temp_t3_3 = var_s2_2 - 2;
                    temp_t0_5 = var_s5 - 2;
                    var_a5_3 += 0x10;
                    var_s1_3 -= 4;
                    temp_a2_5 = ((temp_t0_5 >= sp8) ? temp_t0_5 : sp8) + (((temp_t3_2 >= sp0) ? temp_t3_2 : sp0) + ((temp_t3_3 >= sp4) ? temp_t3_3 : sp4)) + (temp_t0_3 - 4);
                    var_s3 -= 4;
                    temp_a2_6 = 1 << temp_a2_5;
                    var_s5 -= 4;
                    var_s2_2 -= 4;
                    var_a1_2 = arg1->unk0 + ((temp_a2_6 < 4) ? 4 : temp_a2_6);
                    arg1->unk0 = var_a1_2;
                } while (var_s1_3 >= 0);
            }
        }
        arg1->unk4 = var_a1_2;
        break;
    }
    temp_a3_4 = arg0->unkC < var_a1_2;
    if (temp_a3_4 != 0) {
        return 0;
    }
    temp_t0_6 = &intern_format_arr3 + (sp20 * 0x10);
    temp_a5 = &st_bits_per_page + ((((arg1->unkC & 3) * 6) + (temp_t0_6->unk8 * 2)) * 4);
    temp_a7 = arg1->unk48 & ~0xF;
    temp_a6_3 = (arg1->unk40 & 0xFFE03FFF) | (temp_t0_6->unk4 << 0xE);
    arg1->unk40 = temp_a6_3;
    temp_a5_2 = temp_a5->unk4 * 0x10;
    temp_a4_4 = ((temp_a5->unk0 | temp_a7) & ~0xF0) | temp_a5_2;
    arg1->unk48 = temp_a4_4;
    subtractTexTableUsage((s64) arg0, (s64) arg1, (s64) &intern_format_arr3, temp_a3_4, (s64) temp_a4_4, temp_a5_2, temp_a6_3, temp_a7);
    return 1;
}

void deallocTexture(s32 *arg1) {
    __glKonTexFree();
    if (arg1->unk110 != 0) {
        sub_0d960000(arg1);
    }
}

/*
Decompilation failure in function freeTexture:

Cannot find branch target __glKonGetTexParameter
*/

void translateLodAddr(void *arg0) {
    s32 sp4;
    s32 sp0;
    s32 *temp_a1_2;
    s32 *temp_a6;
    s32 *temp_t0_3;
    s32 *temp_t3_2;
    s32 *temp_t3_4;
    s32 *temp_t9;
    s32 *temp_t9_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t1;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_4;
    s32 temp_t2_5;
    s32 temp_t2_6;
    s32 temp_t3_3;
    s32 temp_v1;
    s32 temp_v1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    u32 temp_a7;
    void *temp_a3;
    void *temp_t1_2;
    void *temp_t1_3;
    void *temp_t2_3;
    void *temp_t3;
    void *temp_v0;
    void *temp_v1_2;

    temp_a2 = arg0->unkC;
    switch (temp_a2) {                              /* irregular */
    case 2:
        temp_a5 = arg0->unk14C;
        temp_t2 = arg0->unk150;
        temp_t0 = arg0->unk154;
        temp_a5_2 = (temp_t2 >= temp_a5) ? temp_t2 : temp_a5;
        temp_a3 = arg0->unkFC;
        arg0->unk40 = (s32) (arg0->unk40 & 0xEFFFFFFF);
        temp_t0_2 = (temp_a5_2 >= temp_t0) ? temp_a5_2 : temp_t0;
        var_a2 = 0;
        temp_a4 = temp_a3->unk4;
        temp_a3_2 = temp_a3->unk0;
        temp_a7 = temp_t0_2 + 2;
        if (temp_t0_2 >= 0) {
            temp_t1 = (s32) ((temp_a7 >> 0x1F) + temp_a7) >> 1;
            var_a6 = temp_t1 & 3;
            if (var_a6 != 0) {
                do {
                    temp_t9 = arg0->unkFC + var_a2;
                    *temp_t9 += arg0->unk114 - temp_a3_2;
                    temp_t3 = arg0->unkFC + var_a2;
                    var_a6 -= 1;
                    temp_t2_2 = temp_t3->unk4;
                    var_a2 += 8;
                    temp_t3->unk4 = (s32) (temp_t2_2 + (arg0->unk118 - temp_a4));
                } while (var_a6 != 0);
            }
            if ((temp_t1 >> 2) != 0) {
                do {
                    temp_t3_2 = arg0->unkFC + var_a2;
                    *temp_t3_2 += arg0->unk114 - temp_a3_2;
                    temp_t1_2 = arg0->unkFC + var_a2;
                    temp_t1_2->unk4 = (s32) (temp_t1_2->unk4 + (arg0->unk118 - temp_a4));
                    temp_v1 = var_a2 + 8;
                    temp_a6 = arg0->unkFC + temp_v1;
                    *temp_a6 += arg0->unk114 - temp_a3_2;
                    temp_v0 = arg0->unkFC + temp_v1;
                    temp_v0->unk4 = (s32) (temp_v0->unk4 + (arg0->unk118 - temp_a4));
                    temp_t3_3 = var_a2 + 0x10;
                    temp_t9_2 = arg0->unkFC + temp_t3_3;
                    *temp_t9_2 += arg0->unk114 - temp_a3_2;
                    temp_t2_3 = arg0->unkFC + temp_t3_3;
                    temp_t2_3->unk4 = (s32) (temp_t2_3->unk4 + (arg0->unk118 - temp_a4));
                    temp_a1 = var_a2 + 0x18;
                    temp_t0_3 = arg0->unkFC + temp_a1;
                    *temp_t0_3 += arg0->unk114 - temp_a3_2;
                    var_a2 += 0x20;
                    temp_v1_2 = arg0->unkFC + temp_a1;
                    temp_v1_2->unk4 = (s32) (temp_v1_2->unk4 + (arg0->unk118 - temp_a4));
                } while ((temp_t0_2 * 4) >= var_a2);
            }
        }
        temp_a2_2 = temp_a7 & ~1;
        if (temp_a2_2 < 0xB) {
            *(arg0->unkFC + (temp_a2_2 * 4)) = -1;
            return;
        }
        return;
    case 0:
        temp_t0_4 = arg0->unk14C;
        temp_t2_4 = arg0->unk150;
        temp_a5_3 = arg0->unk11C == 0;
        temp_t1_3 = arg0->unkFC;
        arg0->unk40 = (s32) ((arg0->unk40 & 0xEFFFFFFF) | (temp_a5_3 << 0x1C));
        var_a4 = 0;
        temp_t0_5 = (temp_t2_4 >= temp_t0_4) ? temp_t2_4 : temp_t0_4;
        temp_t2_5 = temp_t1_3->unk0;
        var_a2_2 = 0;
        var_a3 = temp_a5_3;
        sp4 = temp_t1_3->unk4;
        temp_a6_2 = temp_t0_5 + 1;
        sp0 = temp_t2_5;
        if (temp_t0_5 >= 0) {
            if (temp_a6_2 & 1) {
                var_a2_2 = 4;
                var_a4 = 1;
                var_a3 = temp_a5_3 == 0;
                temp_t1_3->unk0 = (s32) (temp_t2_5 + ((arg0 + (temp_a5_3 * 4))->unk114 - sp0));
            }
            if ((temp_a6_2 >> 1) != 0) {
                do {
                    temp_at = var_a4 >> 0x1F;
                    temp_t1_4 = var_a4 + 1;
                    temp_t2_6 = temp_t1_4 >> 0x1F;
                    temp_t3_4 = arg0->unkFC + var_a2_2;
                    temp_a3_3 = var_a3 == 0;
                    *temp_t3_4 += (arg0 + (var_a3 * 4))->unk114 - *(sp + ((((((var_a4 ^ temp_at) - temp_at) & 1) ^ temp_at) - temp_at) * 4));
                    temp_t1_5 = *(sp + ((((((temp_t1_4 ^ temp_t2_6) - temp_t2_6) & 1) ^ temp_t2_6) - temp_t2_6) * 4));
                    temp_a5_4 = (arg0 + (temp_a3_3 * 4))->unk114;
                    temp_a1_2 = arg0->unkFC + (var_a2_2 + 4);
                    var_a3 = temp_a3_3 == 0;
                    var_a4 += 2;
                    temp_v1_3 = *temp_a1_2;
                    var_a2_2 += 8;
                    *temp_a1_2 = temp_v1_3 + (temp_a5_4 - temp_t1_5);
                } while (temp_a6_2 != var_a4);
            }
        }
        temp_a2_3 = arg0->unk16C;
        if ((temp_a2_3 != 0x8170) && (temp_a2_3 != 0x844D) && (temp_a2_3 != 0x844E) && (temp_a2_3 != 0x844F)) {
            if (temp_t0_5 < 0xF) {
                (arg0->unkFC + (temp_t0_5 * 4))->unk4 = 0;
            }
            temp_a2_4 = (temp_t0_5 + 2) & ~1;
            if (temp_a2_4 < 0x10) {
                *(arg0->unkFC + (temp_a2_4 * 4)) = -1;
                return;
            }
        }
        break;
    case 1:
    case 3:
        arg0->unk40 = (s32) (arg0->unk40 & 0xEFFFFFFF);
        arg0->unkFC->unk0 = (s32) arg0->unk114;
        arg0->unkFC->unk4 = (s32) arg0->unk118;
        return;
    }
}

void configTexture(void *arg0, void *arg1, s32 arg2) {
    s64 sp0;
    s32 temp_a1;
    s32 temp_a4;
    s64 temp_a3;
    void *temp_a4_2;
    void *var_a5;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d96e640
    if (M2C_ERROR() || (arg2 != 0)) {
        // Error: negative shift count
        // At instruction: bltz $v0, .L0d96e6fc
        if (M2C_ERROR() && (M2C_ERROR(/* Read from unset register $v1 */) < 0)) {
            if ((saved_reg_s0->unk108 != NULL) || (saved_reg_s0->unk10C != NULL)) {
                sp0 = (s64) var_a5;
                if ((__glKonTexAlloc(sp0->unkF1C, saved_reg_s0, 3, (s64) temp_a4, var_a5) < 0) && (__glKonGetTexParameter(sp0->unkF1C, saved_reg_s0), (__glKonTexAlloc(sp0->unkF1C, saved_reg_s0, 1) < 0))) {

                } else {
                    goto block_10;
                }
            } else if (__glKonTexAlloc(var_a5->unkF1C, saved_reg_s0, 1, (s64) temp_a4, var_a5) >= 0) {
block_10:
                __glKonGetTexParameter(saved_reg_s0);
            }
        }
    } else if (arg0->unk0 & (1 << arg1->unk178)) {
        // Error: negative shift count
        // At instruction: bltz $v1, .L0d96e6fc
        if (M2C_ERROR()) {
            temp_a3 = (s64) temp_a4 << 0x2F;
            if (!(~saved_reg_s0->unk24 & ((1 << (arg1->unk14 + 1)) - (1 << saved_reg_s0->unk18)))) {
                // Error: negative shift count
                // At instruction: bltz $a3, .L0d96e6fc
                if (M2C_ERROR()) {
                    temp_a4_2 = saved_reg_s0->unk108;
                    sp0 = (s64) var_a5;
                    if ((temp_a4_2 != NULL) || (var_a5 = saved_reg_s0->unk10C, (var_a5 != NULL))) {
                        if ((__glKonTexAlloc(sp0->unkF1C, saved_reg_s0, 3, temp_a3, temp_a4_2, var_a5) >= 0) || (__glKonGetTexParameter(sp0->unkF1C, saved_reg_s0), (__glKonTexAlloc(sp0->unkF1C, saved_reg_s0, 1) >= 0))) {
                            goto block_21;
                        }
                    } else if (__glKonTexAlloc(sp0->unkF1C, saved_reg_s0, 1, temp_a3, temp_a4_2, var_a5) < 0) {

                    } else {
block_21:
                        temp_a1 = saved_reg_s0->unk20 & 0xFFDFFFFF;
                        saved_reg_s0->unk20 = temp_a1;
                        __glKonGetTexParameter(saved_reg_s0, (s32 *) temp_a1, 0xFFDFFFFF);
                    }
                }
            }
        }
    }
}

void slowBindTexture(s32 *arg0, s32 *arg1) {
    s32 *var_s0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a0;
    s64 temp_a2;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d96e8a0
    if (M2C_ERROR()) {
        temp_a3 = arg1->unk18;
        temp_a2 = 1 << temp_a3;
        temp_a1 = (1 << (arg1->unk14 + 1)) - temp_a2;
        if (temp_a1 & ~arg1->unk24) {
            goto block_3;
        }
        // Error: negative shift count
        // At instruction: bltz $ra, .L0d96e8a0
        if (M2C_ERROR()) {
            if ((temp_a1 & ~arg1->unk28) || ((// Error: negative shift count, // At instruction: bgez $v0, .L0d96e998, M2C_ERROR()) && (arg1->unk190 == 0) && (temp_a1 & ~arg1->unk34))) {
                __glKonGetTexParameter(arg0->unkF1C, arg1, temp_a2, temp_a3);
            }
            if (arg1->unk110 == 0) {
                sub_0d970000(arg1);
            }
            temp_a2_2 = arg1->unk10;
            if (temp_a2_2 != 3) {
                bindTexTable(arg0->unkF1C + 0xC074, arg1, temp_a2_2, 0xC074);
            }
            temp_a0 = arg1->unk16C;
            arg1->unk20 = (s32) (arg1->unk20 | 0x01000000);
            if ((temp_a0 != 0x8170) && (temp_a0 != 0x844D) && (temp_a0 != 0x844E) && (temp_a0 != 0x844F)) {
                goto block_25;
            }
            if (arg1->unk168 != 0x8146) {
                arg1->unk100 = (void *) (M2C_ERROR(/* Read from unset register $t9 */) - 0x5BF0);
            } else {
block_25:
                arg1->unk100 = (void *) *(&__rodata0 + 0x5830 + (arg1->unkC * 4));
            }
            arg1->unk104 = (void *) (sub_0d960000 + 0x4E90);
        } else {
            goto block_3;
        }
    } else {
block_3:
        arg1->unk104 = (void *) M2C_ERROR(/* Read from unset register $a4 */);
        arg1->unk100 = (void *) (sub_0d970000 - 0x17E0);
        arg1->unk20 = (s32) (arg1->unk20 & 0xFEFFFFFF);
    }
    if (arg1->unk178 != 0) {
        temp_v0 = sub_0d960000(arg0, (s32 *)0x01000000);
        var_a0 = temp_v0;
        var_s0 = arg0[temp_v0].unk20;
    } else {
        var_s0 = arg0->unk20;
        var_a0 = var_s0->unk20 & 0x01000000;
    }
    if (var_a0 != 0) {
        if (var_s0->unk1FC != 0) {
            subtractTexTableUsage((s64) var_s0);
        }
        sub_0d960000(arg0, var_s0);
    }
}

void validateTexture(s32 *arg0, s32 *arg1, s64 arg2, s32 arg3, s32 arg4) {
    s64 sp0;
    s32 temp_a0;
    s32 var_ra;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d96eb14
    if (M2C_ERROR()) {
        __glKonGetTexParameter(arg0, arg1, sp0);
        temp_a0 = arg1->unk20;
        if (__glKonGetTexParameter(arg1) != 0) {
            var_ra = temp_a0 & 0xFFFEFFFF;
        } else {
            var_ra = temp_a0 | 0x210000;
        }
        arg1->unk20 = var_ra;
        __glKonGetTexParameter(arg0, arg1);
    }
}

/*
Decompilation failure in function destroyTextureObj:

Unable to determine jump table for jr instruction at kon_texture_api.s line 14665.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glkonim_GenTexturesEXT_Slow(s32 arg0, u32 *arg1) {
    s64 sp60;
    s32 *temp_s4_2;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s6;
    u32 *var_s0;
    u32 temp_a2;
    u32 var_s6_2;
    void *temp_s4;
    void *temp_s8;

    var_s0 = arg1;
    var_s2 = arg0;
    temp_s8 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            temp_s4 = temp_s8->unk8AAC;
            var_s1 = temp_s4->unk14;
            sp60 = (s64) temp_s4;
            temp_s4_2 = temp_s4 + 0x28;
            var_s6 = var_s1 * 4;
loop_3:
            var_s6 -= 4;
            var_s1 -= 1;
            if ((var_s1 != -1) && (var_s2 -= 1, (var_s2 != -1))) {
                if (__glSetError(temp_s4_2, *(sp60->unk10 + var_s6)) == 0) {
                    temp_a2 = *(sp60->unk10 + var_s6);
                    *var_s0 = temp_a2;
                    temp_v0 = temp_s8->unk0(temp_s8, 0x220, temp_a2);
                    bzero(temp_v0, 0x220);
                    temp_v0->unk78 = 0;
                    temp_v0->unk148 = 1.0f;
                    temp_v0->unk178 = -1;
                    temp_s4->unkC038(temp_s4_2, *var_s0, temp_v0);
                    var_s0 += 4;
                    goto loop_3;
                }
            } else if (var_s2 != 0) {
                var_s1_2 = sp60->unk1C;
                var_s2_2 = var_s2 - 1;
                var_s6_2 = var_s1_2 - 1;
                sp60->unk1C = (s32) (var_s2 + var_s1_2);
                if (var_s2_2 != -1) {
loop_9:
                    var_s6_2 += 1;
                    if (temp_s4->unkC030(temp_s4_2, var_s1_2) == 0) {
                        *var_s0 = var_s6_2;
                        var_s1_2 += 1;
                        temp_v0_2 = temp_s8->unk0(temp_s8, 0x220);
                        bzero(temp_v0_2, 0x220);
                        temp_v0_2->unk78 = 0;
                        temp_v0_2->unk148 = 1.0f;
                        temp_v0_2->unk178 = -1;
                        temp_s4->unkC038(temp_s4_2, *var_s0, temp_v0_2);
                        var_s2_2 -= 1;
                        var_s0 += 4;
                        if (var_s2_2 != -1) {
                            goto loop_9;
                        }
                    }
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonim_GenTexturesEXT(s32 arg0, u32 *arg1) {
    s32 *temp_v0;
    s32 *temp_v0_3;
    s32 temp_a0;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s7;
    s32 var_s7_2;
    u32 *var_s0;
    u32 temp_a1;
    u32 temp_a2;
    u32 temp_v0_2;
    u32 var_s3_3;
    void *temp_s4;
    void *temp_s8;

    temp_s4 = *(void **)0x1010;
    var_s0 = arg1;
    var_s3 = arg0;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            temp_s8 = temp_s4->unk8AAC;
            temp_a0 = temp_s8->unk14;
            if (temp_a0 < arg0) {
                var_s3 = temp_a0;
                temp_s8->unk14 = 0;
                var_s7 = arg0 - temp_a0;
            } else {
                temp_s8->unk14 = (s32) (temp_a0 - arg0);
                var_s7 = 0;
            }
            var_s3_2 = var_s3 - 1;
            if (var_s3_2 != -1) {
                do {
                    temp_v0 = temp_s4->unk0(temp_s4, 0x220);
                    bzero(temp_v0, 0x220);
                    *var_s0 = *(temp_s8->unk10 + ((temp_s8->unk14 + var_s3_2) * 4));
                    temp_v0->unk78 = 0;
                    temp_v0->unk148 = 1.0f;
                    temp_v0->unk178 = -1;
                    temp_s8->unkC038(temp_s8 + 0x28, *var_s0, temp_v0);
                    var_s3_2 -= 1;
                    var_s0 += 4;
                } while (var_s3_2 != -1);
            }
            if (var_s7 != 0) {
                temp_a2 = temp_s8->unk20;
                temp_a1 = temp_s8->unk1C;
                var_s3_3 = temp_a1 - 1;
                temp_v0_2 = var_s7 + temp_a1;
                if ((temp_a2 < 0x40004000U) || (temp_a2 >= temp_v0_2)) {
                    var_s7_2 = var_s7 - 1;
                    temp_s8->unk1C = temp_v0_2;
                    if (var_s7_2 != -1) {
                        do {
                            temp_v0_3 = temp_s4->unk0(temp_s4, 0x220);
                            bzero(temp_v0_3, 0x220);
                            var_s3_3 += 1;
                            *var_s0 = var_s3_3;
                            temp_v0_3->unk78 = 0;
                            temp_v0_3->unk148 = 1.0f;
                            temp_v0_3->unk178 = -1;
                            temp_s8->unkC038(temp_s8 + 0x28, *var_s0, temp_v0_3);
                            var_s7_2 -= 1;
                            var_s0 += 4;
                        } while (var_s7_2 != -1);
                    }
                } else {
                    temp_s4->unk22A8 = __glkonim_GenTexturesEXT_Slow;
                    __glkonim_GenTexturesEXT_Slow(var_s7, var_s0, temp_a2);
                }
            }
        } else {
            __glSetError((s32 *)0x501);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glKonFreeTextureObj(s32 *arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    __glKonTexFree(arg0->unk8AAC);
    __glKonGetTexParameter(arg0, (s32 *) arg1);
}

void __glKonDeleteTextureObj(s32 *arg0, s32 *arg1) {
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s64 temp_a2;

    sp8 = (s64) arg0->unk8AAC;
    if (arg1->unk110 != 0) {
        sub_0d960000(arg1);
    }
    __glKonFreeTextureObj(arg0, (s64) arg1);
    temp_a0 = arg1->unk178;
    switch (temp_a0) {                              /* irregular */
    case 1:
        /* fallthrough */
    case 2:
        temp_a2 = sp8 + 0xC074;
        sp0 = temp_a2;
        subtractTexTableUsage((s64) arg0, 1, temp_a2, (s32) arg1, 1, 0xC074);
        subtractTexTableUsage((s64) arg0, 1, temp_a2, (s32) arg1, 2);
        subtractTexTableUsage((s64) arg0, 1, temp_a2, (s32) arg1, 0);
        break;
    case 3:
        subtractTexTableUsage((s64) arg0, 1, sp8 + 0xC074, (s32) arg1, 2, 0xC074);
        break;
    }
    __glKonFreeTextureObj(arg0, (s64) arg1);
}

void __glKonDeleteTexturesEXT(s32 *arg0, s32 arg1, u32 *arg2) {
    s64 sp30;
    s64 sp28;
    s32 *temp_a2_3;
    s32 *temp_v0;
    s32 *temp_v0_3;
    s32 *var_a1;
    s32 *var_a5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5;
    s32 temp_s7;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a2;
    s32 var_s2;
    u32 *var_s0;
    u32 temp_a1;
    u32 temp_a1_2;
    void *temp_a1_3;
    void *temp_s7_2;

    var_s2 = arg1 - 1;
    var_s0 = arg2;
    temp_s7 = arg0->unk8AAC;
    sp30 = temp_s7 + 0x10;
    temp_s7_2 = temp_s7 + 0x28;
    if (arg1 != 0) {
        sp28 = (s64) (arg0 + 0x7B90);
loop_10:
        temp_a1 = *var_s0;
        if (temp_a1 != 0) {
            temp_v0 = temp_s7_2->unkC00C(temp_s7_2, temp_a1);
            if (temp_v0 != NULL) {
                temp_a1_2 = *var_s0;
                if ((temp_a1_2 >= 0x40004000U) && (temp_a1_2 < (u32) sp30->unkC)) {
                    temp_v0_2 = sp30->unk8;
                    var_a2 = sp30->unk4;
                    var_a1 = sp30->unk0;
                    if (var_a2 == temp_v0_2) {
                        temp_a2 = temp_v0_2 + 0x100;
                        sp30->unk8 = temp_a2;
                        temp_v0_3 = sub_0d970000(arg0, var_a1, (s32 *) (temp_a2 * 4), sp30);
                        var_a2 = sp30->unk4;
                        var_a1 = temp_v0_3;
                        sp30->unk0 = temp_v0_3;
                    }
                    temp_a5 = var_a2 + 1;
                    sp30->unk4 = temp_a5;
                    (var_a1 + (temp_a5 * 4))->unk-4 = (u32) *var_s0;
                }
                temp_a2_2 = temp_v0->unk178;
                var_a5 = &arg0[temp_a2_2];
                temp_a1_3 = var_a5->unk7BB0;
                if (temp_a1_3 != temp_v0) {
                    if (temp_v0->unk78 == 0) {
                        goto block_18;
                    }
                    goto block_8;
                }
                temp_v0_4 = temp_a1_3->unk16C;
                if ((temp_v0_4 == 0x8170) || (temp_v0_4 == 0x844D) || (temp_v0_4 == 0x844E) || (temp_v0_4 == 0x844F)) {
                    __glKonGetTexParameter(temp_v0, NULL, (s64) temp_a2_2);
                    var_a5 = &arg0[temp_v0->unk178];
                }
                temp_a2_3 = arg0 + (temp_v0->unk178 * 0x220) + 0x7BCC;
                var_a5->unk7BB0 = temp_a2_3;
                sub_0d970000((s32 *) sp28, arg0[temp_v0->unk178].unk7BB0, temp_a2_3, temp_v0->unk178 * 0x10);
                temp_v0_5 = temp_v0->unk78 - 1;
                temp_v0->unk78 = temp_v0_5;
                if (temp_v0_5 != 0) {
block_8:
                    temp_v0->unk20 = (s32) (temp_v0->unk20 | 0x02000000);
                } else {
block_18:
                    __glKonDeleteTextureObj(arg0, temp_v0);
                }
            }
        }
        var_s2 -= 1;
        var_s0 += 4;
        if (var_s2 != -1) {
            goto loop_10;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x38, 0x3c, 0x40, 0x44], gap at: 0x28. */
void __glkonim_DeleteTexturesEXT(s32 arg0, u32 *arg1) {
    s32 *temp_a2_2;
    s32 *temp_s3;
    s32 *temp_v0_2;
    s32 *var_a3_2;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 var_a3;
    s32 var_s2;
    s32 var_v0;
    u32 *var_s1;
    u32 temp_a1;
    u32 temp_v0_4;
    u32 var_a1;
    u8 *temp_v0;
    u8 temp_a0;
    void *temp_a6;
    void *temp_gp;

    temp_s3 = *(s32 **)0x1010;
    var_s1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x121B58;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            var_v0 = temp_gp->unk-407C;
            if (var_v0 < 0) {
                temp_v0 = M2C_ERROR(/* Read from unset register $t9 */)(&__rodata0 - 0x12C8);
                if ((temp_v0 == NULL) || ((temp_a0 = *temp_v0, (temp_a0 != 0x6E)) && (temp_a0 != 0x4E))) {
                    var_v0 = 1;
                } else {
                    var_v0 = 0;
                }
                temp_gp->unk-407C = var_v0;
            }
            var_s2 = arg0 - 1;
            if (var_v0 != 0) {
                __glKonDeleteTexturesEXT(temp_s3, arg0, var_s1);
            } else {
                unksp30 = (s64) temp_s3->unk8AAC;
                if (arg0 != 0) {
                    unksp28 = (s64) (temp_s3 + 0x7B90);
                    unksp20 = unksp30 + 0xC074;
loop_11:
                    temp_a1 = *var_s1;
                    if (temp_a1 != 0) {
                        temp_v0_2 = __glKonDeleteTexturesEXT(unksp30 + 0x28, (s32) temp_a1);
                        if (temp_v0_2 != NULL) {
                            var_a1 = *var_s1;
                            if (var_a1 >= 0x40004000U) {
                                var_a1 = (u32) unksp30;
                                if (var_a1 < (u32) unksp30->unk1C) {
                                    temp_v0_3 = var_a1->unk18;
                                    var_a3 = var_a1->unk14;
                                    var_a1 = var_a1->unk10;
                                    if (var_a3 == temp_v0_3) {
                                        temp_a2 = temp_v0_3 + 0x100;
                                        unksp30->unk18 = temp_a2;
                                        temp_v0_4 = sub_0d970000(temp_s3, (s32 *) var_a1, (s32 *) (temp_a2 * 4), unksp30);
                                        var_a3 = unksp30->unk14;
                                        var_a1 = temp_v0_4;
                                        unksp30->unk10 = temp_v0_4;
                                    }
                                    temp_a5 = var_a3 + 1;
                                    unksp30->unk14 = temp_a5;
                                    (var_a1 + (temp_a5 * 4))->unk-4 = (u32) *var_s1;
                                }
                            }
                            if (temp_v0_2->unk110 != 0) {
                                sub_0d960000(temp_v0_2, (s32 *) var_a1);
                            }
                            __glKonFreeTextureObj(temp_s3, (s64) temp_v0_2);
                            temp_v0_5 = temp_v0_2->unk178;
                            switch (temp_v0_5) {    /* irregular */
                            case 1:
                            case 2:
                                subtractTexTableUsage((s64) temp_s3, 1, unksp20, (s32) temp_v0_2, 1);
                                subtractTexTableUsage((s64) temp_s3, 1, unksp20, (s32) temp_v0_2, 2);
                                subtractTexTableUsage((s64) temp_s3, 1, unksp20, (s32) temp_v0_2, 0);
                                break;
                            case 3:
                                subtractTexTableUsage((s64) temp_s3, 1, unksp20, (s32) temp_v0_2, 2);
                                break;
                            }
                            var_a3_2 = &temp_s3[temp_v0_2->unk178];
                            temp_a6 = var_a3_2->unk7BB0;
                            if (temp_a6 == temp_v0_2) {
                                temp_a1_2 = temp_a6->unk16C;
                                if ((temp_a1_2 == 0x8170) || (temp_a1_2 == 0x844D) || (temp_a1_2 == 0x844E) || (temp_a1_2 == 0x844F)) {
                                    __glKonGetTexParameter(temp_v0_2, NULL);
                                    var_a3_2 = &temp_s3[temp_v0_2->unk178];
                                }
                                temp_a2_2 = temp_s3 + (temp_v0_2->unk178 * 0x220) + 0x7BCC;
                                var_a3_2->unk7BB0 = temp_a2_2;
                                sub_0d970000((s32 *) unksp28, temp_s3[temp_v0_2->unk178].unk7BB0, temp_a2_2, (s64) var_a3_2);
                                temp_v0_6 = temp_v0_2->unk78 - 1;
                                temp_v0_2->unk78 = temp_v0_6;
                                if (temp_v0_6 == 0) {
                                    goto block_27;
                                }
                                goto block_9;
                            }
                            if (temp_v0_2->unk78 != 0) {
block_9:
                                temp_v0_2->unk20 = (s32) (temp_v0_2->unk20 | 0x02000000);
                            } else {
block_27:
                                temp_s3->unkC(temp_s3, temp_v0_2);
                            }
                        }
                    }
                    var_s2 -= 1;
                    var_s1 += 4;
                    if (var_s2 != -1) {
                        goto loop_11;
                    }
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonim_BindTextureEXT(s32 *arg0, u32 arg1) {
    s64 sp8;
    s64 sp0;
    s32 *temp_a5;
    s32 *temp_a5_2;
    s32 *temp_s1;
    s32 *temp_v0_3;
    s32 *temp_v0_6;
    s32 *var_s3;
    s32 *var_s4;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_a3;
    s32 var_s0;
    u32 var_a0;
    u32 var_a1;
    void *temp_a1;
    void *temp_s3;
    void *temp_v0_5;
    void *var_a5;

    temp_s1 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = temp_s1->unk7B98;
        sp8 = (s64) (temp_s1 + 0x10000);
        temp_s3 = temp_s1->unk8AAC + 0x28;
        if ((&index_2_target_map)[temp_v0] == arg0) {
            var_s0 = temp_v0;
            if (arg1 == 0) {
                goto block_3;
            }
            goto block_17;
        }
        temp_v0_2 = sub_0d960000();
        var_s0 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            temp_s1->unk7B98 = temp_v0_2;
            if (arg1 != 0) {
block_17:
                sp0 = temp_s3 + 0x10000;
                temp_v0_3 = temp_s3->unkC008(temp_s3, arg1);
                var_s4 = temp_v0_3;
                if (temp_v0_3 != NULL) {
                    temp_v0_4 = temp_v0_3->unk178;
                    if (temp_v0_4 != var_s0) {
                        if (temp_v0_4 < 0) {
                            var_s4->unk178 = var_s0;
                            var_s4->unk17C = arg1;
                            var_s4->unk104 = &__glNop;
                            var_s3 = &temp_s1[var_s0];
                            var_s4->unk100 = (void *) (sub_0d970000 - 0x5730);
                            var_a5 = var_s3->unk7BB0;
                            goto block_5;
                        }
                        sub_0d970000((s32 *)0x501);
                    } else {
                        var_s3 = &temp_s1[var_s0];
                        var_a5 = var_s3->unk7BB0;
                        if (var_a5->unk17C != arg1) {
                            goto block_5;
                        }
                        goto block_4;
                    }
                } else {
                    temp_a1 = sp8->unk-7554;
                    var_a0 = temp_a1->unk20;
                    temp_v0_5 = temp_a1 + 0x10;
                    if (arg1 < var_a0) {
                        var_a0 = arg1;
                        temp_a1->unk20 = arg1;
                    }
                    var_a1 = temp_v0_5->unk14;
                    if (var_a1 < arg1) {
                        var_a1 = arg1;
                        temp_v0_5->unk14 = arg1;
                    }
                    var_a3 = var_a0 < 0x40004000U;
                    temp_a4 = var_a1 < 0x40004000U;
                    if (((var_a3 == 0) && (var_a3 = var_a0 < (u32) temp_v0_5->unkC, (var_a3 != 0))) || ((temp_a4 == 0) && (var_a1 < (u32) temp_v0_5->unkC))) {
                        temp_s1->unk22A8 = __glkonim_GenTexturesEXT_Slow;
                    }
                    temp_v0_6 = ((s32 *(*)(s32 *, ?, ?, s32, s32)) temp_s1->unk0)(temp_s1, 0x220, 0x40004000, var_a3, temp_a4);
                    temp_v0_6->unk78 = 0;
                    temp_v0_6->unk17C = arg1;
                    temp_v0_6->unk178 = var_s0;
                    temp_v0_6->unk148 = 1.0f;
                    var_s4 = temp_v0_6;
                    sp0->unk-3FF0(temp_s3, arg1, temp_v0_6);
                    var_s4->unk104 = &__glNop;
                    var_s3 = &temp_s1[var_s0];
                    var_s4->unk100 = (void *) (sub_0d970000 - 0x5730);
                    var_a5 = var_s3->unk7BB0;
                    goto block_5;
                }
            } else {
block_3:
                var_s3 = temp_s1 + (var_s0 * 4);
                var_a5 = var_s3->unk7BB0;
                var_s4 = temp_s1 + (var_s0 * 0x220) + 0x7BCC;
                if (var_a5->unk17C == arg1) {
block_4:
                    if (var_a5 != var_s4) {
                        goto block_5;
                    }
                } else {
block_5:
                    var_a5->unk104(sp8->unk-7554, var_a5);
                    temp_a5 = var_s3->unk7BB0;
                    temp_a0 = temp_a5->unk16C;
                    if ((temp_a0 == 0x8170) || (temp_a0 == 0x844D) || (temp_a0 == 0x844E) || (temp_a0 == 0x844F)) {
                        __glKonGetTexParameter(temp_a5, NULL);
                    }
                    // Error: negative shift count
                    // At instruction: bgez $a6, .L0d96f970
                    if (M2C_ERROR() && (temp_a5_2->unk78 == 0)) {
                        if ((M2C_ERROR(/* Read from unset register $t9 */) + 0x121798)->unk-407C != 0) {
                            __glKonDeleteTextureObj(temp_s1, temp_a5_2);
                        } else {
                            temp_s1->unkC(temp_s1, temp_a5_2);
                        }
                    }
                    var_s3->unk7BB0 = var_s4;
                    var_s4->unk78 = (s32) (var_s4->unk78 + 1);
                    __glKonDeleteTextureObj(temp_s1 + 0x7B90, var_s4);
                }
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x40, 0x44, 0x48, 0x4c], gap at: 0x28. */
s32 __glkonim_AreTexturesResidentEXT(s32 arg0, s32 *arg1, s8 *arg2) {
    s32 *var_s0;
    s32 temp_s3;
    s32 var_s2;
    s32 var_s6;
    s32 var_v0;
    s8 *var_s1;
    void *temp_s4;
    void *temp_v0;

    var_s1 = arg2;
    var_s0 = arg1;
    if (*(s32 *)0x1018 != 1) {
        var_s2 = arg0 - 1;
        temp_s3 = (*(void **)0x1010)->unk8AAC + 0x28;
        if (arg0 >= 0) {
            if (arg0 != 0) {
                temp_s4 = temp_s3 + 0x10000;
                var_s6 = 1;
loop_7:
                temp_v0 = temp_s4->unk-3FF8(temp_s3, *var_s0);
                if (temp_v0 != NULL) {
                    var_s2 -= 1;
                    var_s0 += 4;
                    if (!(~temp_v0->unk28 & ((1 << (temp_v0->unk14 + 1)) - (1 << temp_v0->unk18)))) {
                        *var_s1 = 1;
                    } else {
                        *var_s1 = 0;
                        var_s6 = 0;
                    }
                    var_s1 += 1;
                    if (var_s2 != -1) {
                        goto loop_7;
                    }
                    goto block_11;
                }
                __glSetError((s32 *)0x501);
                return 0;
            }
            var_s6 = 1;
block_11:
            var_v0 = var_s6;
            goto block_12;
        }
        __glSetError((s32 *)0x501);
        var_v0 = 0;
block_12:
        /* Duplicate return node #13. Try simplifying control flow for better match */
        return var_v0;
    }
    __glSetError((s32 *)0x502);
    var_v0 = 0;
    return var_v0;
}

void __glkonim_PrioritizeTexturesEXT(s32 arg0, s32 **arg1, f32 *arg2) {
    f32 *var_s1;
    f32 var_f4;
    s32 **var_s0;
    s32 *temp_v0;
    s32 temp_s3;
    s32 temp_s5;
    s32 var_s4;
    void *temp_s2;

    var_s1 = arg2;
    var_s0 = arg1;
    if (*(s32 *)0x1018 != 1) {
        temp_s5 = (*(void **)0x1010)->unk8AAC;
        if (arg0 >= 0) {
            var_s4 = arg0 - 1;
            if (arg0 != 0) {
                temp_s3 = temp_s5 + 0x28;
                temp_s2 = temp_s5 + 0x10000;
loop_8:
                temp_v0 = __glKonTexUpdatePriority(temp_s3, *var_s0);
                if (temp_v0 != NULL) {
                    var_f4 = *var_s1;
                    if (!(var_f4 > 1.0f)) {
                        if (var_f4 < 0.0f) {
                            var_f4 = 0.0f;
                            temp_v0->unk148 = 0.0f;
                        } else {
                            temp_v0->unk148 = var_f4;
                        }
                    } else {
                        var_f4 = 1.0f;
                        temp_v0->unk148 = 1.0f;
                    }
                    if (temp_v0->unk178 >= 0) {
                        __glKonTexUpdatePriority(temp_s5, temp_v0, (s32) (var_f4 * 2.0f));
                    }
                    var_s4 -= 1;
                    var_s1 += 4;
                    var_s0 += 4;
                    if (var_s4 != -1) {
                        goto loop_8;
                    }
                } else {
                    __glSetError((s32 *)0x501);
                }
            }
        } else {
            __glSetError((s32 *)0x501);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

s32 __glkonim_IsTextureEXT(s32 *arg0) {
    s32 var_a0;
    void *temp_a0;

    if (*(s32 *)0x1018 != 1) {
        temp_a0 = (*(void **)0x1010)->unk8AAC + 0x28;
        if (arg0 != NULL) {
            var_a0 = 0;
            if (temp_a0->unkC008(temp_a0, arg0, 0x10000) != 0) {
                var_a0 = 1;
            }
        } else {
            var_a0 = 0;
        }
        return var_a0;
    }
    __glSetError((s32 *)0x502, arg0, 0x10000);
    return 0;
}

s32 guessClipmapBreakpoint(void *arg0, s32 arg7) {
    s32 *temp_a0;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a7;
    void *temp_a2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a5_2;
    void *var_a2;
    void *var_a2_2;
    void *var_a5;

    var_a7 = arg7;
    var_a3 = arg0->unk18;
    temp_a6 = arg0->unk14;
    if (temp_a6 >= var_a3) {
        var_a2 = (var_a3 * 4) + arg0;
        temp_a4 = (temp_a6 * 4) + arg0;
loop_2:
        temp_a2 = var_a2 + 4;
        var_a7 = (u32) temp_a4 < (u32) temp_a2;
        if (var_a2->unk7C == 0) {
            var_a3 += 1;
            if (var_a7 == 0) {
                var_a2 = temp_a2 + 4;
                if (temp_a2->unk7C == 0) {
                    var_a3 += 1;
                    if ((u32) temp_a4 >= (u32) var_a2) {
                        goto loop_2;
                    }
                }
            }
        }
    }
    temp_a5 = var_a3 * 4;
    temp_a4_2 = (temp_a6 * 4) + arg0;
    if (temp_a6 >= var_a3) {
        var_a3_2 = var_a3 + 1;
        temp_a1 = temp_a6 < var_a3_2;
        var_a5 = temp_a5 + 4;
        var_a2_2 = var_a5 + arg0;
        temp_a0 = (temp_a5 + arg0)->unk7C->unk8;
        if (temp_a1 == 0) {
loop_11:
            var_a5 = var_a2_2->unk7C;
            var_a2_2 += 4;
            if ((var_a5 == NULL) || (var_a7 = var_a5->unk8, (var_a7 == temp_a0))) {
                var_a3_2 += 1;
                if ((u32) temp_a4_2 >= (u32) var_a2_2) {
                    temp_a5_2 = var_a2_2->unk7C;
                    var_a2_2 += 4;
                    if (temp_a5_2 != NULL) {
                        var_a5 = (void *) ((u32) temp_a4_2 < (u32) var_a2_2);
                        if (temp_a5_2->unk8 == temp_a0) {
                            goto block_10;
                        }
                    } else {
                        var_a5 = (void *) ((u32) temp_a4_2 < (u32) var_a2_2);
block_10:
                        var_a3_2 += 1;
                        if (var_a5 == NULL) {
                            goto loop_11;
                        }
                    }
                }
            }
        }
        if ((temp_a6 < var_a3_2) || ((arg0 + (var_a3_2 * 4))->unk78 == 0)) {
            arg0->unk198 = 0;
            arg0->unk194 = 0;
            return 0;
        }
        arg0->unk194 = (s32) (var_a3_2 - 1);
        arg0->unk198 = __glKonGetTexParameter(temp_a0, (s32 *) temp_a1, (s64) var_a2_2, var_a3_2, (s32) temp_a4_2, (s32) var_a5, temp_a6, var_a7);
        return 1;
    }
    arg0->unk198 = 0;
    arg0->unk194 = 0;
    return 0;
}

void undefineTextureLevel(s32 *arg0, s32 arg1) {
    s64 sp8;
    s64 sp0;
    s32 *temp_a0;
    s32 temp_a5_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 var_t1;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a4;
    void *temp_a1;
    void *temp_a5;
    void *temp_s1;

    var_v0 = arg0->unk24;
    temp_a4 = 1 << arg1;
    temp_s1 = *(void **)0x1010;
    if (var_v0 & temp_a4) {
        temp_a5 = arg0 + (arg1 * 4);
        sp0 = (s64) temp_a5;
        temp_a5_2 = *temp_a5->unk7C;
        var_t1 = ~temp_a4;
        if (temp_a5_2 != 0) {
            unksp20 = temp_a4;
            temp_s1->unkC(temp_s1, temp_a5_2, temp_a4, temp_a5_2);
            *sp0->unk7C = 0;
            var_v0 = arg0->unk24;
            var_t1 = ~temp_a4;
        }
        temp_t0 = var_v0 & var_t1;
        arg0->unk24 = temp_t0;
        arg0->unk30 = (s32) (arg0->unk30 & var_t1);
        arg0->unk2C = (s32) (arg0->unk2C & var_t1);
        arg0->unk28 = (s32) (arg0->unk28 & var_t1);
        if (temp_t0 != 0) {
            var_v0_2 = arg0->unk20;
        } else {
            __glKonGetTexParameter(temp_s1->unk8AAC, arg0);
            var_v0_2 = 0;
            arg0->unk20 = 0;
        }
        temp_a0 = temp_s1 + 0x7B90;
        sp8 = (s64) temp_a0;
        arg0->unk104 = &__glNop;
        arg0->unk100 = (void *) (sub_0d970000 - 0x17E0);
        arg0->unk20 = (s32) (var_v0_2 & 0xFEFFFFFF);
        temp_v0 = sub_0d960000(temp_a0);
        if (temp_v0 != 0) {
            temp_a1 = (temp_s1 + (temp_v0 * 4))->unk7BB0;
            temp_a1->unk100(sp8, temp_a1);
        }
    }
}

s32 checkTexImage(s32 arg0, s32 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s32 arg6, s64 arg7, s32 **arg_sp4) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a6;
    s32 *temp_s1;
    s32 *temp_s3;
    s32 *temp_s3_2;
    s32 *temp_s3_3;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *var_a1;
    s32 *var_a1_2;
    s32 *var_s3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_a1_3;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_s0;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 var_a7;
    void *temp_v0;

    sp18 = arg2;
    sp38 = arg3;
    sp28 = arg4;
    sp20 = arg5;
    temp_v0 = *(void **)0x1010;
    sp40 = (s64) temp_v0;
    temp_v0_2 = temp_v0->unk7B98;
    sp30 = arg7;
    if ((&index_2_target_map)[temp_v0_2] == arg0) {
        var_s0 = temp_v0_2;
        goto block_2;
    }
    temp_v0_3 = sub_0d960000();
    var_s0 = temp_v0_3;
    if (temp_v0_3 >= 0) {
        sp40->unk7B98 = temp_v0_3;
block_2:
        temp_s1 = (sp40 + (var_s0 * 4))->unk7BB0;
        if (sub_0d960000((s32 *) var_s0, arg1) != 0) {
            temp_v0_4 = temp_s1->unk1B4;
            if (((s32) arg1 < temp_v0_4) && (temp_v0_4 != 0)) {
                goto block_6;
            }
            __glSetError((s32 *)0x501);
            return -1;
        }
block_6:
        if (arg6 & ~1) {
            __glSetError((s32 *)0x501);
            return -1;
        }
        if (var_s0 != 1) {
            if (var_s0 != 2) {
                if (var_s0 != 3) {
                    if ((var_s0 == 0) && ((arg1 != NULL) || (arg6 != 0) || (sp38 != sp28) || (__glKonGetTexParameter((s32 *) sp38, NULL, sp28) == 0) || (__glKonGetTexParameter((s32 *) sp28, NULL) == 0) || (sp38 == 0))) {
                        __glSetError((s32 *)0x501);
                        return -1;
                    }
                    goto block_25;
                }
                if ((arg6 >= 0) && (arg6 < 2) && (__glKonGetTexParameter((s32 *) sp38, (s32 *) arg6) != 0) && (__glKonGetTexParameter((s32 *) sp28, (s32 *) arg6) != 0) && (__glKonGetTexParameter((s32 *) sp20, (s32 *) arg6) != 0)) {
                    if ((sp38 == 0) || (sp28 == 0) || (sp20 == 0)) {
                        __glkonim_IsTextureEXT(temp_s1, arg1);
                        /* Duplicate return node #8. Try simplifying control flow for better match */
                        return -1;
                    }
                    goto block_24;
                }
                __glSetError((s32 *)0x501);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                return -1;
            }
            if ((arg6 >= 0) && (arg6 < 2) && (__glKonGetTexParameter((s32 *) sp38, (s32 *) arg6) != 0) && (__glKonGetTexParameter((s32 *) sp28, (s32 *) arg6) != 0)) {
                if ((sp38 == 0) || (sp28 == 0)) {
                    __glkonim_IsTextureEXT(temp_s1, arg1);
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    return -1;
                }
                goto block_25;
            }
            __glSetError((s32 *)0x501);
            /* Duplicate return node #8. Try simplifying control flow for better match */
            return -1;
        }
        if ((arg6 >= 0) && (arg6 < 2) && (__glKonGetTexParameter((s32 *) sp38, (s32 *) arg6) != 0)) {
            if (sp38 != 0) {
block_24:
block_25:
                temp_v0_5 = __glKonGetTexParameter((s32 *) sp18);
                *sp30 = temp_v0_5;
                if (temp_v0_5 >= 0) {
                    temp_a0 = 1 << (s32) arg1;
                    sp10 = temp_a0;
                    temp_v0_6 = &temp_s1[(s32) arg1];
                    if (temp_s1->unk24 & temp_a0) {
                        var_a1 = temp_v0_6->unk7C;
                        temp_a6 = *var_a1;
                        if (temp_a6 != NULL) {
                            unksp60 = (s64) var_a1;
                            sub_0d970000((s32 *) sp40, temp_a6, (s32 *)1);
                            *var_a1 = 0;
                        }
                    } else {
                        sp8 = (s64) temp_v0_6;
                        temp_v0_7 = sp40->unk0(sp40, 0x18, 1);
                        sp8->unk7C = temp_v0_7;
                        var_a1 = temp_v0_7;
                        *temp_v0_7 = 0;
                    }
                    // Error: negative shift count
                    // At instruction: bgez $at, .L0d9707c4
                    if (M2C_ERROR()) {
                        temp_a1 = ((s32) temp_s1->unk40 >> 2) & 7;
                        if (((arg1 != NULL) && ((temp_v0_8 = temp_s1->unkC, var_a3 = 3, (temp_v0_8 == 3)) || (var_a4 = 4, (temp_v0_8 == 1)) || (temp_v0_8 == 4) || (temp_a1 == 0) || (temp_a1 == 1))) || (sub_0d960000(temp_s1, arg1, 1, var_a3, var_a4, var_a5, var_a6, var_a7) != 0)) {
                            temp_v0_9 = temp_s1->unk16C;
                            var_a1_2 = (s32 *)1;
                            if ((temp_v0_9 != 0x8170) && (temp_v0_9 != 0x844D) && (temp_v0_9 != 0x844E) && (temp_v0_9 != 0x844F)) {
                                goto block_42;
                            }
                            __glKonGetTexParameter(sp40->unk8AAC, temp_s1);
                            if (__glkonim_IsTextureEXT(temp_s1) != 0) {
                                temp_s3 = sp40 + 0x7B90;
                                __glKonGetTexParameter(temp_s3, temp_s1, (s64) temp_s1->unk194);
                                temp_a1_2 = temp_s1->unk20;
                                if (__glKonGetTexParameter(temp_s1) != 0) {
                                    var_ra = temp_a1_2 & 0xFFFEFFFF;
                                } else {
                                    var_ra = temp_a1_2 | 0x210000;
                                }
                                temp_s1->unk20 = var_ra;
                                __glKonGetTexParameter(temp_s3, temp_s1, 1);
                                goto block_48;
                            }
                            var_s3 = (s32 *)1;
                            temp_s1->unk20 = (s32) (temp_s1->unk20 | 0x210000);
                            goto block_49;
                        }
                        temp_v0_10 = temp_s1->unk16C;
                        var_a1_2 = NULL;
                        if ((temp_v0_10 == 0x8170) || (temp_v0_10 == 0x844D) || (temp_v0_10 == 0x844E) || (temp_v0_10 == 0x844F)) {
                            goto block_48;
                        }
block_42:
                        temp_a2 = temp_s1->unk18;
                        var_s3 = var_a1_2;
                        if (temp_a2 == arg1) {
                            if (var_a1_2 != NULL) {
                                __glKonGetTexParameter(sp40->unk8AAC, temp_s1, (s64) temp_a2);
                                temp_s3_2 = sp40 + 0x7B90;
                                if (__glKonGetTexParameter(temp_s3_2, temp_s1, (s64) arg1) != 0) {
                                    temp_a1_3 = temp_s1->unk20;
                                    if (__glKonGetTexParameter(temp_s1) != 0) {
                                        var_ra_2 = temp_a1_3 & 0xFFFEFFFF;
                                    } else {
                                        var_ra_2 = temp_a1_3 | 0x210000;
                                    }
                                    temp_s1->unk20 = var_ra_2;
                                    __glKonGetTexParameter(temp_s3_2, temp_s1, 1);
                                    goto block_48;
                                }
                                temp_s1->unk24 = (s32) (temp_s1->unk24 & sp0);
                                __glSetError((s32 *)0x501);
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                return -1;
                            }
                            goto block_49;
                        }
                        temp_a1_4 = temp_s1->unk20;
                        if (__glKonGetTexParameter(temp_s1, var_a1_2, (s64) temp_a2) != 0) {
                            var_a1_3 = temp_a1_4 & 0xFFFEFFFF;
                        } else {
                            var_a1_3 = temp_a1_4 | 0x210000;
                        }
                        temp_s1->unk20 = var_a1_3;
                        if ((temp_s1->unk18 < (s32) arg1) && (temp_s1->unk14 >= (s32) arg1) && (var_s3 != NULL)) {
                            temp_s1->unk20 = (s32) (var_a1_3 | 0x210000);
                        }
                        goto block_49;
                    }
                    if ((arg1 != NULL) && ((sp38 == 1) || ((var_s0 != 1) && ((sp38 == 1) || (sp28 == 1) || ((var_a1 = (s32 *) sp38, (var_s0 != 2)) && ((var_a3 = (s32) sp28, (var_a1 == (s32 *)1)) || (var_a4 = (s32) sp20, (var_a3 == 1)) || (var_a5 = 3, (var_a4 == 1)) || (var_s0 != 3))))))) {
                        temp_v0_11 = temp_s1->unk16C;
                        var_a6 = 0x8170;
                        var_a7 = 0x844D;
                        if ((temp_v0_11 != 0x8170) && (temp_v0_11 != (s32) 0x844D) && (temp_v0_11 != 0x844E) && (temp_v0_11 != 0x844F)) {
                            var_s3 = (s32 *)1;
                            goto block_49;
                        }
                    }
                    temp_s1->unk194 = arg1;
                    temp_s3_3 = sp40 + 0x7B90;
                    temp_s1->unk198 = __glKonGetTexParameter((s32 *) sp38, var_a1, 1, var_a3, var_a4, var_a5, var_a6, (s32) var_a7);
                    if (__glKonGetTexParameter(temp_s3_3, temp_s1, (s64) arg1) != 0) {
                        temp_s1->unk20 = (s32) (temp_s1->unk20 | 0x80000);
                        temp_a1_5 = temp_s1->unk20;
                        if (__glKonGetTexParameter(temp_s1) != 0) {
                            temp_s1->unk20 = (s32) (temp_a1_5 & 0xFFFEFFFF);
                        } else {
                            temp_s1->unk20 = (s32) (temp_a1_5 | 0x210000);
                        }
                        __glKonGetTexParameter(temp_s3_3, temp_s1, temp_s1->unk18 == (s32) arg1);
block_48:
                        var_s3 = NULL;
block_49:
                        if (temp_s1->unk10 == 2) {
                            (M2C_ERROR(/* Read from unset register $t9 */) + 0x6290)(temp_s1);
                        }
                        *arg_sp4 = var_s3;
                        return var_s0;
                    }
                    temp_s1->unk24 = (s32) (temp_s1->unk24 & sp0);
                    __glSetError((s32 *)0x501);
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    return -1;
                }
                if (var_s0 == 3) {
                    __glSetError((s32 *)0x500);
                } else {
                    __glSetError((s32 *)0x501);
                }
                /* Duplicate return node #8. Try simplifying control flow for better match */
                return -1;
            }
            __glkonim_IsTextureEXT(temp_s1, arg1);
            /* Duplicate return node #8. Try simplifying control flow for better match */
            return -1;
        }
        __glSetError((s32 *)0x501);
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return -1;
    }
    __glSetError((s32 *)0x500);
    return -1;
}

void computeDestinationDims(s32 arg0, s32 arg1, s32 arg2, s32 *arg3, s32 *arg4) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *var_a4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a5;
    s32 var_v0;
    s32 var_v1;
    void *temp_a7;
    void *temp_v0;

    var_a4 = arg4;
    temp_a7 = *(void **)0x1010;
    *arg3 = arg1;
    *var_a4 = arg2;
    if (arg0 != 0xDE1) {
        if (arg0 != 0xDE0) {
            goto block_2;
        }
        // Error: negative shift count
        // At instruction: bgez $t0, .L0d970bc8
        if (M2C_ERROR()) {
            var_v1 = 0xDE0 & 0x20;
            if (0xDE0 & 0x100) {
                sp8 = (s64) temp_a7;
                sp0 = (s64) arg3;
                if (temp_a7->unk564 == 0x81C5) {
                    sp10 = (s64) var_a4;
                    temp_a0 = GetConvolutionFilter(temp_a7)->unk40;
                    if (temp_a0 != 0) {
                        *sp0 = (s32) ((*sp0 - temp_a0) + 1);
                    }
                    var_a4 = (s32 *) sp10;
                    var_v0 = sp8->unk704;
                }
                goto block_3;
            }
        } else {
            goto block_3;
        }
    } else {
        temp_a1 = temp_a7->unk700 & 0x0C000000;
        if (temp_a1 != 0) {
            temp_a5 = temp_a7->unk564;
            sp0 = (s64) arg3;
            if (temp_a5 == 0x81C5) {
                sp10 = (s64) var_a4;
                sp8 = (s64) temp_a7;
                temp_v0 = GetConvolutionFilter((void *) temp_a1, 0x0C000000, temp_a5, 0x81C5, temp_a7);
                temp_a0_2 = temp_v0->unk40;
                if (temp_a0_2 != 0) {
                    *sp0 = (s32) ((*sp0 - temp_a0_2) + 1);
                }
                temp_a0_3 = temp_v0->unk44;
                if (temp_a0_3 != 0) {
                    *var_a4 = (*var_a4 - temp_a0_3) + 1;
                }
            }
        }
block_2:
        var_v0 = temp_a7->unk704;
block_3:
        var_v1 = var_v0 & 0x20;
    }
    if (var_v1 != 0) {
        *var_a4 *= 2;
    }
}

s32 checkPixelError(s32 arg0, s32 arg1, s32 arg2, s64 arg3, s32 arg4, s64 arg5) {
    s64 spC8;
    s64 spC0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s64 var_a3;
    void *temp_v0;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    temp_v0 = *(void **)0x1010;
    spC8 = var_a3;
    spC0 = arg5;
    if ((var_a2 == 0) || (var_a2 = 0x0E000000, var_a1 = temp_v0->unk700, ((temp_v0->unk704 & 0x100) == 0)) || (var_a1 &= 0x0E000000, var_a4 = 0x81C5, (var_a1 == 0)) || (var_a3 = (s64) temp_v0->unk564, (var_a3 != 0x81C5))) {
        if (__glKonParseInput(sp, var_a1, var_a2, (s32) var_a3, var_a4) != 0) {
            return -1;
        }
        if (spC8 != 0x1901) {
            if ((spC0 != 0) && (__glKonParseErrorDraw(sp) != 0)) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return -1;
            }
            return 0;
        }
        __glSetError((s32 *)0x500);
        return -1;
    }
    return -1;
}

void __glkonim_TexImage(s32 *arg0, s32 *arg1, s64 arg2, s32 *arg3, s32 *arg4, s32 *arg5, s32 *arg6, ? *arg7, ? *arg_sp4, s32 *arg_spC) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    ? sp48;
    s32 *sp44;
    ? *sp40;
    ? *sp3C;
    s32 *sp38;
    s32 *sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    ? *sp24;
    ? *sp20;
    s32 *temp_s0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_ra;
    s32 temp_v0;
    s64 temp_a2;
    void *temp_s7;

    temp_s7 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != (s32 *)0x8063) && (arg0 != (s32 *)0x8064) && (arg0 != (s32 *)0x8070)) {
            spA8 = arg2;
            if (__glkonim_IsTextureEXT(arg3, arg4, arg6, arg7, arg_sp4, arg_spC) >= 0) {
                __glkonim_IsTextureEXT(arg0, arg3, arg4, &sp20, &sp24);
                temp_a2 = (spA8 != 0x1902) ? spA8 : 0x81A5;
                spB8 = temp_a2;
                temp_v0 = __glkonim_IsTextureEXT(arg0, arg1, (s32 *) temp_a2, sp20, sp24, arg5, arg6, &sp28, &sp2C);
                if (temp_v0 >= 0) {
                    temp_s0 = (temp_s7 + (temp_v0 * 4))->unk7BB0;
                    if (arg_spC != NULL) {
                        // Error: negative shift count
                        // At instruction: bgez $t8, .L0d97107c
                        if (M2C_ERROR()) {
                            if (sp2C == 0) {
                                if ((s32) &sp2C < 0) {
                                    spB0 = (s64) (temp_s7 + 0x10000);
                                    if (temp_s7->unk7B90 & (1 << temp_v0)) {
                                        sub_0d960000(spB0->unk-7554, temp_s0);
                                    }
                                } else {
                                    spB0 = temp_s7 + 0x10000;
                                }
                                // Error: negative shift count
                                // At instruction: bltz $ra, .L0d9710fc
                                if (M2C_ERROR()) {
                                    if (arg6 != NULL) {
                                        __glKonPushState(8, &sp48);
                                        __glkonim_PixelStorei(0xCF4, sp80 + 1);
                                        __glkonim_PixelStorei(0xCF3, sp7C + 1);
                                        if (sp78 == 0) {
                                            M2C_ERROR(/* Read from unset register $t9 */)(0xCF2, arg3, sp78);
                                        }
                                        sp38 = arg4 - 2;
                                        sp34 = arg3 - 2;
                                        __glKonGetTexParameter(spB0->unk-7554, temp_s0, (s64) arg1, sp28, 0, 0, 0, (s32) (sp20 - 2), (s32) (sp24 - 2), arg5, &sp30);
                                        __glKonPopState(&sp48);
                                    } else {
                                        goto block_22;
                                    }
                                } else {
block_22:
                                    sp38 = arg4;
                                    sp34 = arg3;
                                    temp_a4 = -(s32) arg6;
                                    __glKonGetTexParameter(spB0->unk-7554, temp_s0, (s64) arg1, sp28, temp_a4, temp_a4, temp_a4, (s32) sp24, (s32) arg5, &sp30);
                                }
                                temp_a3 = 1 << (s32) arg1;
                                temp_a5 = ~temp_a3;
                                temp_s0->unk2C = (s32) (temp_a3 | (temp_s0->unk2C & temp_a5));
                                temp_s0->unk28 = (s32) (temp_a3 | (temp_s0->unk28 & temp_a5));
                            } else {
                                goto block_18;
                            }
                        } else {
block_18:
                            sub_0d960000((s32 *) temp_v0, arg1, spB8, (s32) arg3, (s32) arg4, (s32) arg5, (s32) arg6, (s64) arg7, arg_sp4, arg_spC);
                        }
                    } else {
                        temp_ra = 1 << (s32) arg1;
                        temp_s0->unk2C = (s32) (temp_ra | (temp_s0->unk2C & ~temp_ra));
                    }
                    __glKonGetTexParameter(temp_s7 + 0x7B90, temp_s0);
                }
            }
        } else {
            __glkonim_GetTexFilterFuncSGIS(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonim_CopyTexImage(s32 *arg0, s32 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    ? *sp24;
    s32 sp20;
    s32 *temp_s1;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t9;
    s32 temp_v0;
    s64 var_ra;
    void *temp_s0;

    sp60 = arg7;
    sp70 = arg6;
    sp68 = arg5;
    sp50 = arg4;
    sp48 = arg3;
    sp58 = arg2;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glkonim_IsTextureEXT((s32 *) sp68, (s32 *) sp70, &sp20, (? *) &sp24);
        temp_v0 = __glkonim_IsTextureEXT(arg0, arg1, (s32 *) sp58, (? *) sp20, sp24, (s32 *)1, (s32 *) sp60, &sp28, &sp2C);
        if (temp_v0 >= 0) {
            // Error: negative shift count
            // At instruction: bgez $ra, .L0d9712a0
            if (M2C_ERROR() || (sp2C != 0)) {
                temp_t9 = M2C_ERROR(/* Read from unset register $t9 */) << (s32) arg1;
                temp_s1->unk30 = (s32) (temp_t9 | (temp_s1->unk30 & ~temp_t9));
            } else {
                // Error: negative shift count
                // At instruction: bgez $ra, .L0d971328
                if (M2C_ERROR()) {
                    var_ra = (s64) temp_s1->unk20 << 0x29;
                    if (temp_s0->unk7B90 & 1) {
                        sub_0d960000(temp_s0->unk8AAC, temp_s1);
                        goto block_10;
                    }
                } else {
block_10:
                    var_ra = (s64) temp_s1->unk20 << 0x29;
                }
                if ((var_ra < 0) || (sp60 == 0)) {
                    sp30 = 1;
                    sp34 = (s32) sp68;
                    sp38 = (s32) sp70;
                    sp3C = (s32) sp48;
                    sp40 = (s32) sp50;
                    __glKonGetTexParameter(temp_s0->unk8AAC, temp_s1, (s64) arg1, sp28, 0, 0, 0, sp20, (s32) sp24, (s32 *)1, &sp30);
                }
                temp_a5 = 1 << (s32) arg1;
                temp_a7 = ~temp_a5;
                temp_s1->unk2C = (s32) (temp_a5 | (temp_s1->unk2C & temp_a7));
                temp_s1->unk28 = (s32) (temp_a5 | (temp_s1->unk28 & temp_a7));
            }
            __glKonGetTexParameter(temp_s0 + 0x7B90, temp_s1);
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonim_TexImage3DEXT(s32 arg0, s32 *arg_sp4, s32 *arg_spC) {
    if (arg0 != 0x806F) {
        if (arg0 != 0x8070) {
            __glSetError((s32 *)0x500);
        } else {
            goto block_5;
        }
    } else {
block_5:
        __glkonim_TexImage(arg_sp4, arg_spC);
    }
}

void __glkonim_TexImage2D(s32 arg0, s32 *arg5, s64 arg6, s32 arg7, s32 arg_sp4) {
    if ((arg0 != 0xDE1) && (arg0 != 0x8095) && (arg0 != 0x8064)) {
        __glSetError((s32 *)0x500, (s32 *)0x8064);
    } else {
        __glkonim_TexImage((s32 *)1, arg5, arg6, (s64) arg7, (s64) arg_sp4);
    }
}

void __glkonim_TexImage1D(s32 arg0, s64 arg4, s64 arg5, s32 arg6, s32 arg7) {
    if ((arg0 != 0xDE0) && (arg0 != 0x8063)) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_TexImage((s32 *)1, (s32 *)1, arg4, arg5, (s64) arg6, (s64) arg7);
    }
}

void __glkonim_CopyTexImage1DEXT(s32 arg0, s32 *arg6) {
    if (arg0 != 0xDE0) {
        __glSetError((s32 *)0x500, arg6);
    } else {
        __glkonim_CopyTexImage((s32 *)1, arg6);
    }
}

void __glkonim_CopyTexImage2DEXT(s32 *arg0) {
    if ((arg0 != (s32 *)0xDE1) && (arg0 != (s32 *)0x8095)) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_CopyTexImage();
    }
}

s32 checkTexSubImage(s32 arg0, s32 *arg1, s32 arg2, s64 arg3, s64 arg4, s64 arg5, s32 arg6, s64 arg7) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a2;
    s32 var_s1;
    s64 var_a1;
    s64 var_a3;
    void *temp_s2;
    void *temp_s4;
    void *temp_v0_4;

    sp10 = arg3;
    sp18 = arg4;
    sp8 = arg5;
    temp_s4 = *(void **)0x1010;
    sp0 = arg7;
    temp_v0 = temp_s4->unk7B98;
    if ((&index_2_target_map)[temp_v0] == arg0) {
        var_s1 = temp_v0;
        goto block_2;
    }
    temp_v0_2 = sub_0d960000();
    var_s1 = temp_v0_2;
    if (temp_v0_2 >= 0) {
        temp_s4->unk7B98 = temp_v0_2;
block_2:
        temp_s2 = (temp_s4 + (var_s1 * 4))->unk7BB0;
        if ((sub_0d960000((s32 *) var_s1, arg1) == 0) || ((temp_v0_3 = temp_s2->unk1B4, (((s32) arg1 < temp_v0_3) != 0)) && (temp_v0_3 != 0))) {
            if (temp_s2->unk24 & (1 << (s32) arg1)) {
                temp_v0_4 = (temp_s2 + ((s32) arg1 * 4))->unk7C;
                temp_a0 = temp_v0_4->unk14;
                var_a2 = -temp_a0;
                var_a3 = arg2 < var_a2;
                temp_s3 = (temp_s4->unk704 & 0x20) ? (arg6 - 1) : arg6;
                if ((var_a3 != 0) || (var_a1 = 0, ((sp10 < var_a2) != 0))) {
                    var_a1 = 1;
                }
                if (var_a1 == 0) {
                    if (var_s1 != 3) {
                        var_a1 = sp18;
                        var_a3 = sp8;
                        if (var_a1 >= 0) {
                            goto block_12;
                        }
                        goto block_22;
                    }
                    var_a3 = sp8;
                    if (sp18 < var_a2) {
                        goto block_22;
                    }
block_12:
                    var_a2 = (temp_v0_4->unk8 - temp_a0) < (arg2 + var_a3);
                    var_a1 = sp18;
                    var_a3 = temp_v0_4->unkC - temp_a0;
                    if (var_a2 == 0) {
                        var_a3 = var_a3 < (sp10 + temp_s3);
                        var_a1 += sp0;
                        var_a2 = temp_v0_4->unk10;
                        if (var_a3 == 0) {
                            if (var_s1 != 3) {
                                var_a3 = var_a2 < var_a1;
                                if (var_a3 == 0) {
                                    goto block_17;
                                }
                                goto block_22;
                            }
                            if ((var_a2 - temp_a0) < var_a1) {
                                goto block_22;
                            }
block_17:
                            if ((sp8 > 0) && (temp_s3 > 0) && (sp0 > 0)) {
                                return var_s1;
                            }
                            goto block_23;
                        }
                    }
                    goto block_22;
                }
block_22:
                __glSetError((s32 *)0x501, (s32 *) var_a1, var_a2, (s32 *) var_a3);
                goto block_23;
            }
            __glSetError((s32 *)0x502);
            goto block_23;
        }
        __glSetError((s32 *)0x501);
block_23:
        /* Duplicate return node #24. Try simplifying control flow for better match */
        return -1;
    }
    __glSetError((s32 *)0x500);
    return -1;
}

void __glkonim_TexSubImage(s32 *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s32 *arg5, s32 *arg6, s64 arg7, ? *arg_sp4, ? *arg_spC, s32 *arg_sp14) {
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
    s64 sp40;
    s32 *sp3C;
    ? *sp38;
    ? *sp34;
    s32 *sp30;                                      /* compiler-managed */
    s32 *sp2C;                                      /* compiler-managed */
    s32 sp28;
    s32 sp24;
    s32 sp20;
    ? *temp_a6_2;
    s32 *temp_a4;
    s32 *temp_s3;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a4_2;
    s32 temp_a7;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 var_s1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_s0;
    void *temp_a6;
    void *temp_at;

    sp78 = arg7;
    sp80 = arg4;
    sp88 = arg3;
    sp90 = arg2;
    sp98 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (__glkonim_IsTextureEXT(arg5, arg6, NULL, arg_sp4, arg_spC, arg_sp14) >= 0) {
            __glkonim_IsTextureEXT(arg0, arg5, arg6, (? *) &sp20, (? *) &sp24);
            if (arg_sp14 != NULL) {
                temp_v0 = __glkonim_CopyTexImage2DEXT(arg0, arg1, sp90, sp88, sp80, sp20, sp24, sp78);
                sp70 = temp_v0;
                if (temp_v0 >= 0) {
                    sp58 = sp98 + 0x10000;
                    temp_s3 = (sp98 + (sp70 * 4))->unk7BB0;
                    sp60 = (s64) sp98->unk8AAC;
                    sp68 = (s64) (temp_s3 + (arg1 * 4))->unk7C;
                    if ((sub_0d960000(temp_s3, (s32 *) arg1) == 0) && (temp_s3[temp_s3->unk11C == (arg1 & 1)].unk108 != 0)) {
                        // Error: negative shift count
                        // At instruction: bgez $ra, .L0d971a60
                        if (M2C_ERROR() && (sp98->unk7B90 & (1 << sp70))) {
                            sub_0d960000(sp58->unk-7554, temp_s3);
                        }
                        // Error: negative shift count
                        // At instruction: bgez $ra, .L0d971bc4
                        if (M2C_ERROR()) {
                            goto block_10;
                        }
                        temp_a1 = M2C_ERROR(/* Read from unset register $a1 */)->unk14;
                        if (temp_a1 != 0) {
                            if ((sp90 >= 0) && (sp88 >= 0) && (sp80 >= 0) && (temp_t3 = sp68->unk8, temp_t2 = temp_a1 * 2, (((temp_t3 - temp_t2) < (sp90 + sp20)) == 0)) && ((sp68->unkC - temp_t2) >= (sp88 + sp24))) {
                                if ((sp68->unk10 - temp_t2) >= (sp80 + sp78)) {
                                    temp_v0_2 = 1 << arg1;
                                    sp50 = temp_v0_2;
                                    if (!(temp_s3->unk2C & temp_v0_2)) {
                                        sp2C = temp_t3;
                                        sp38 = (? *)0x1403;
                                        sp30 = sp68->unkC;
                                        temp_a7 = sp48 * 0xC;
                                        temp_a6 = &rdbk_format2 + temp_a7;
                                        sp40 = (s64) temp_a6;
                                        temp_a6_2 = temp_a6->unk4;
                                        sp34 = temp_a6_2;
                                        temp_a4 = sp68->unk0;
                                        sp3C = temp_a4;
                                        __glKonSetNoModeState(2, 0x60000000, (s32) sp90, sp88, temp_a4, 0x1403, temp_a6_2, temp_a7);
                                        temp_t2_2 = sp68->unk14 * 2;
                                        __glKonGetTexParameter((s32 *) sp60, temp_s3, arg1, *sp40, 0, 0, 0, sp68->unk8 - temp_t2_2, sp68->unkC - temp_t2_2, sp68->unk10 - temp_t2_2, &sp28);
                                        __glKonSetNoModeState(2, 0);
                                    }
                                    sp30 = arg6;
                                    sp2C = arg5;
                                    sp34 = arg_sp4;
                                    sp38 = arg_spC;
                                    sp3C = arg_sp14;
                                    __glKonGetTexParameter((s32 *) sp60, temp_s3, arg1, sp68->unk4, (s32) sp90, (s32) sp88, (s32) sp80, sp20, sp24, (s32 *) sp78, &sp28);
                                    var_s0 = sp50;
                                    temp_a2 = temp_s3->unk30;
                                    var_s1 = ~var_s0;
                                    if (temp_a2 & var_s0) {
                                        temp_a2_2 = temp_a2 & var_s1;
                                        temp_s3->unk30 = temp_a2_2;
                                        sub_0d970000((s32 *) sp98, sp68->unk0, (s32 *) temp_a2_2);
                                        goto block_13;
                                    }
                                } else {
                                    goto block_30;
                                }
                            } else {
block_30:
                                fprintf(&__iob + 0x20, &__rodata0 - 0x12A8, sp90, sp88);
                                var_s0 = 1 << arg1;
                                var_s1 = ~var_s0;
                            }
                        } else {
block_10:
                            temp_v0_3 = 1 << arg1;
                            sp50 = temp_v0_3;
                            if (!(temp_s3->unk2C & temp_v0_3)) {
                                sp2C = sp68->unk8;
                                sp38 = (? *)0x1403;
                                sp30 = sp68->unkC;
                                temp_at = &rdbk_format2 + (sp48 * 0xC);
                                sp40 = (s64) temp_at;
                                sp34 = temp_at->unk4;
                                sp3C = sp68->unk0;
                                __glKonSetNoModeState(2, 0x60000000);
                                temp_a4_2 = -sp68->unk14;
                                __glKonGetTexParameter((s32 *) sp60, temp_s3, arg1, *sp40, temp_a4_2, temp_a4_2, temp_a4_2, sp68->unk8, sp68->unkC, sp68->unk10, &sp28);
                                __glKonSetNoModeState(2, 0);
                            }
                            sp30 = arg6;
                            sp2C = arg5;
                            sp34 = arg_sp4;
                            sp38 = arg_spC;
                            sp3C = arg_sp14;
                            __glKonGetTexParameter((s32 *) sp60, temp_s3, arg1, sp68->unk4, (s32) sp90, (s32) sp88, (s32) sp80, sp20, sp24, (s32 *) sp78, &sp28);
                            var_s0 = sp50;
                            temp_a2_3 = temp_s3->unk30;
                            var_s1 = ~var_s0;
                            if (temp_a2_3 & var_s0) {
                                temp_a2_4 = temp_a2_3 & var_s1;
                                temp_s3->unk30 = temp_a2_4;
                                sub_0d970000((s32 *) sp98, sp68->unk0, (s32 *) temp_a2_4);
block_13:
                                *(s32 *) sp68 = 0;
                            }
                        }
                        temp_s3->unk2C = (s32) (var_s0 | (temp_s3->unk2C & var_s1));
                        temp_s3->unk28 = (s32) (var_s0 | (temp_s3->unk28 & var_s1));
                        if ((temp_s3->unk20 & 0x01000000) && (sp98->unk7B90 & (1 << sp70))) {
                            temp_s3->unk100(sp98 + 0x7B90, temp_s3);
                        }
                    }
                }
            }
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonim_CopyTexSubImage(s32 *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 *arg_sp4) {
    s64 spB8;
    s64 spB0;
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
    s64 sp40;
    s32 *sp3C;
    s32 sp38;
    s32 sp34;
    s32 *sp30;                                      /* compiler-managed */
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 *temp_s1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_a3;
    s64 temp_a1;
    s64 temp_at;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1;
    s64 var_a4;
    s64 var_ra;
    void *temp_a3;
    void *temp_a7;
    void *temp_t1;

    sp98 = arg7;
    sp80 = arg6;
    sp78 = arg5;
    spA0 = arg4;
    spA8 = arg3;
    spB0 = arg2;
    spB8 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glkonim_IsTextureEXT(arg0, (s32 *) sp98, arg_sp4, (? *) &sp20, (? *) &sp24);
        temp_v0 = __glkonim_CopyTexImage2DEXT(arg0, arg1, spB0, spA8, spA0, sp20, sp24, 1);
        sp90 = temp_v0;
        if (temp_v0 >= 0) {
            sp68 = spB8 + 0x10000;
            temp_s1 = (spB8 + (sp90 * 4))->unk7BB0;
            sp70 = (s64) spB8->unk8AAC;
            temp_at = temp_s1 + (arg1 * 4);
            sp60 = temp_at;
            sp88 = (s64) temp_at->unk7C;
            if ((sub_0d960000(temp_s1, (s32 *) arg1) == 0) && (temp_s1[temp_s1->unk11C == (arg1 & 1)].unk108 != 0)) {
                // Error: negative shift count
                // At instruction: bgez $ra, .L0d972044
                if (M2C_ERROR()) {
                    var_ra = (s64) temp_s1->unk20 << 0x29;
                    if (spB8->unk7B90 & (1 << sp90)) {
                        sub_0d960000(sp68->unk-7554, temp_s1);
                        goto block_7;
                    }
                } else {
block_7:
                    var_ra = (s64) temp_s1->unk20 << 0x29;
                }
                if (var_ra < 0) {
                    goto block_9;
                }
                temp_t3 = sp88->unk14;
                if (temp_t3 != 0) {
                    if ((spB0 >= 0) && (spA8 >= 0) && (spA0 >= 0) && (temp_t8 = temp_t3 * 2, (((sp88->unk8 - temp_t8) < (spB0 + sp20)) == 0)) && ((sp88->unkC - temp_t8) >= (spA8 + sp24))) {
                        var_a4 = 1 << arg1;
                        if ((sp88->unk10 - temp_t8) >= spA0) {
                            temp_a1 = 1 << arg1;
                            sp58 = temp_a1;
                            if (!(temp_s1->unk2C & temp_a1)) {
                                sp28 = 0;
                                sp2C = sp88->unk8;
                                sp38 = 0x1403;
                                sp30 = sp88->unkC;
                                temp_a7 = &rdbk_format2 + (sp48 * 0xC);
                                sp40 = (s64) temp_a7;
                                sp34 = temp_a7->unk4;
                                sp3C = sp88->unk0;
                                __glKonSetNoModeState(2, 0x60000000);
                                temp_t8_2 = sp88->unk14 * 2;
                                __glKonGetTexParameter((s32 *) sp70, temp_s1, arg1, *sp40, 0, 0, 0, sp88->unk8 - temp_t8_2, sp88->unkC - temp_t8_2, sp88->unk10 - temp_t8_2, &sp28);
                                __glKonSetNoModeState(2, 0);
                            }
                            sp28 = 1;
                            sp2C = (s32) sp98;
                            sp34 = (s32) sp78;
                            sp38 = (s32) sp80;
                            sp30 = arg_sp4;
                            __glKonGetTexParameter((s32 *) sp70, temp_s1, arg1, sp88->unk4, (s32) spB0, (s32) spA8, (s32) spA0, sp20, sp24, (s32 *)1, &sp28);
                            var_a3 = temp_s1->unk30;
                            var_a1 = ~sp58;
                            if (var_a3 & sp58) {
                                sp50 = var_a1;
                                temp_a2 = var_a3 & sp50;
                                temp_s1->unk30 = temp_a2;
                                sub_0d970000((s32 *) spB8, sp88->unk0, (s32 *) temp_a2, (s64) var_a3);
                                var_a3 = (s32) sp88;
                                *var_a3 = 0;
                            }
                        } else {
                            goto block_33;
                        }
                    } else {
                        var_a4 = 1 << arg1;
block_33:
                        temp_a2_2 = temp_s1->unk28;
                        sp58 = var_a4;
                        temp_a4 = temp_a2_2 & var_a4;
                        var_a3 = temp_s1->unk30;
                        if (temp_a4 != 0) {
                            temp_a5 = var_a3 & sp58;
                            if (temp_a5 == 0) {
                                (spA8 + 0x60D0)(temp_s1, arg1, temp_a2_2, var_a3, temp_a4, temp_a5);
                                temp_a3 = &intern_format_arr3 + (temp_s1->unk1C * 0x10);
                                temp_a7_2 = temp_a3->unk8 * 0xC;
                                __glKonGetTexParameter((s32 *) sp70, temp_s1, arg1, temp_a3->unk4, (&rdbk_format2 + temp_a7_2)->unk4, 0x1403, *sp60->unk7C, temp_a7_2);
                                var_a3 = temp_s1->unk30;
                            }
                        }
                        var_a1 = ~sp58;
                        temp_s1->unk30 = (s32) (sp58 | (var_a3 & var_a1));
                    }
                } else {
block_9:
                    temp_v0_2 = 1 << arg1;
                    sp58 = temp_v0_2;
                    if (!(temp_s1->unk2C & temp_v0_2)) {
                        sp28 = 0;
                        sp2C = sp88->unk8;
                        sp38 = 0x1403;
                        sp30 = sp88->unkC;
                        temp_t1 = &rdbk_format2 + (sp48 * 0xC);
                        sp40 = (s64) temp_t1;
                        sp34 = temp_t1->unk4;
                        sp3C = sp88->unk0;
                        __glKonSetNoModeState(2, 0x60000000);
                        temp_a4_2 = -sp88->unk14;
                        __glKonGetTexParameter((s32 *) sp70, temp_s1, arg1, *sp40, temp_a4_2, temp_a4_2, temp_a4_2, sp88->unk8, sp88->unkC, sp88->unk10, &sp28);
                        __glKonSetNoModeState(2, 0);
                    }
                    sp28 = 1;
                    sp2C = (s32) sp98;
                    sp34 = (s32) sp78;
                    sp38 = (s32) sp80;
                    sp30 = arg_sp4;
                    __glKonGetTexParameter((s32 *) sp70, temp_s1, arg1, sp88->unk4, (s32) spB0, (s32) spA8, (s32) spA0, sp20, sp24, (s32 *)1, &sp28);
                    var_a3 = temp_s1->unk30;
                    var_a1 = ~sp58;
                    if (var_a3 & sp58) {
                        sp50 = var_a1;
                        temp_a2_3 = var_a3 & sp50;
                        temp_s1->unk30 = temp_a2_3;
                        sub_0d970000((s32 *) spB8, sp88->unk0, (s32 *) temp_a2_3, (s64) var_a3);
                        var_a3 = (s32) sp88;
                        *var_a3 = 0;
                    }
                }
                temp_a5_2 = temp_s1->unk20 & 0x01000000;
                temp_s1->unk28 = (s32) (sp58 | (temp_s1->unk28 & var_a1));
                temp_a4_3 = sp58 | (temp_s1->unk2C & var_a1);
                temp_s1->unk2C = temp_a4_3;
                if (temp_a5_2 != 0) {
                    temp_a7_3 = 1 << sp90;
                    temp_a6 = spB8->unk7B90 & temp_a7_3;
                    if (temp_a6 != 0) {
                        temp_s1->unk100(spB8 + 0x7B90, temp_s1, temp_s1->unk28, var_a3, temp_a4_3, temp_a5_2, temp_a6, temp_a7_3);
                    }
                }
            } else {
                temp_a1_2 = 1 << arg1;
                temp_s1->unk30 = (s32) (temp_a1_2 | (temp_s1->unk30 & ~temp_a1_2));
            }
        }
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonim_TexSubImage3DEXT(s32 arg0, s32 *arg_sp4, s32 arg_spC, s32 arg_sp14) {
    if (arg0 != 0x806F) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_TexSubImage(arg_sp4, (s64) arg_spC, (s64) arg_sp14);
    }
}

void __glkonim_TexSubImage2DEXT(s32 arg0, s64 arg4, s64 arg5, s32 arg6, s32 *arg7, s32 *arg_sp4) {
    if ((arg0 != 0xDE1) && (arg0 != 0x8095)) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_TexSubImage(NULL, arg4, arg5, 1, (s64) arg6, arg7, arg_sp4);
    }
}

void __glkonim_TexSubImage1DEXT(s32 arg0, s64 arg3, s32 *arg4, s32 *arg5, s32 arg6) {
    if (arg0 != 0xDE0) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_TexSubImage(NULL, 0, arg3, 1, 1, arg4, arg5, (s64) arg6);
    }
}

void __glkonim_CopyTexSubImage1DEXT(s32 arg0, s64 arg3, s32 *arg4, s32 arg5) {
    if (arg0 != 0xDE0) {
        __glSetError((s32 *)0x500, arg4, arg5);
    } else {
        __glkonim_CopyTexSubImage(NULL, 0, arg3, (s64) arg4, (s64) arg5, 1);
    }
}

void __glkonim_CopyTexSubImage2DEXT(s32 arg0, s64 arg4, s64 arg5, s64 arg6, s32 arg7) {
    if ((arg0 != 0xDE1) && (arg0 != 0x8095)) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_CopyTexSubImage(NULL, arg4, arg5, arg6, (s64) arg7);
    }
}

void __glkonim_CopyTexSubImage3DEXT(s32 arg0, s32 *arg_sp4) {
    if (arg0 != 0x806F) {
        __glSetError((s32 *)0x500);
    } else {
        __glkonim_CopyTexSubImage(arg_sp4);
    }
}

void __glkonim_GetTexImage(s32 arg0, s32 *arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 *temp_s2;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a3;
    void *temp_s1;
    void *temp_v0_6;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = temp_s1->unk7B98;
        sp18 = arg2;
        sp10 = arg3;
        sp8 = arg4;
        if ((&index_2_target_map)[temp_v0] == arg0) {
            var_a0 = temp_v0;
            goto block_3;
        }
        temp_v0_2 = sub_0d960000((s32 *) (temp_v0 * 4), (s32 *)1);
        var_a0 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            temp_s1->unk7B98 = temp_v0_2;
block_3:
            temp_s2 = (temp_s1 + (var_a0 * 4))->unk7BB0;
            if ((sub_0d960000((s32 *) var_a0, arg1) == 0) || ((temp_v0_3 = temp_s2->unk1B4, (((s32) arg1 < temp_v0_3) != 0)) && (temp_v0_3 != 0))) {
                temp_v0_4 = 1 << (s32) arg1;
                temp_v0_5 = temp_v0_4 & temp_s2->unk30;
                if (temp_s2->unk28 & temp_v0_4) {
                    if (temp_v0_5 != 0) {
                        goto block_9;
                    }
                    temp_v0_6 = &intern_format_arr3 + (temp_s2->unk1C * 0x10);
                    temp_a0 = temp_v0_6->unkC;
                    var_a3 = 8;
                    switch (temp_a0) {              /* irregular */
                    default:
                        var_a3 = sp0;
                        if (temp_a0 == 4) {
                        case 3:
                            var_a3 = 0x10;
                        }
                        break;
                    case 1:
                        var_a3 = temp_v0_6->unk4;
                        break;
                    case 2:
                        break;
                    }
                    __glKonGetTexParameter(temp_s1->unk8AAC, temp_s2, (s64) arg1, var_a3, (s32) sp18, (s32) sp10, (s32) sp8);
                    sub_0d970000(temp_s1 + 0x7B90, temp_s2);
                } else if (temp_v0_5 == 0) {

                } else {
block_9:
                    fprintf(&__iob + 0x20, &__rodata0 - 0x1270, 3);
                }
            } else {
                __glSetError((s32 *)0x501, (s32 *)1);
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)1);
    }
}

/*
Decompilation failure in function __glkon_EnableTexture:

Cannot find branch target __glKonGetTexParameter
*/

void __glkonim_TexParameterfv(s32 arg0, s64 arg1, s32 *arg2) {
    s64 sp20;
    s64 sp18;
    s32 *temp_a2;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_v0;
    s32 var_a7;
    s64 temp_v0_2;
    void *temp_s0;

    var_v0 = arg2;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = temp_s0->unk7B98;
        temp_a2 = (&index_2_target_map)[temp_a0];
        if (temp_a2 == arg0) {
            var_a7 = temp_a0;
            goto block_3;
        }
        sp18 = arg1;
        sp20 = (s64) var_v0;
        temp_v0 = (M2C_ERROR(/* Read from unset register $t9 */) + 0x5E00)(arg0, 0x120000, temp_a2, temp_a0 * 4, arg0);
        var_a7 = temp_v0;
        if (temp_v0 >= 0) {
            var_v0 = (s32 *) sp20;
            temp_s0->unk7B98 = var_a7;
block_3:
            temp_v0_2 = __glKonTexParameter((s64) (temp_s0 + 0x7B90), (s64) var_a7, arg1, var_v0, 1);
            if (temp_v0_2 != -1) {
                if (temp_v0_2 == -2) {
                    __glSetError((s32 *)0x501);
                }
            } else {
                __glSetError((s32 *)0x500);
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)0x120000, arg0);
    }
}

void __glkonim_TexParameterf(s32 *arg0, u32 arg1, f32 fparg2) {
    f32 sp30;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a7;
    s64 temp_v0_4;
    void *temp_s1;

    sp30 = fparg2;
    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = temp_s1->unk7B98;
        if ((&index_2_target_map)[temp_v0] == arg0) {
            var_a7 = temp_v0;
            goto block_3;
        }
        temp_v0_2 = __glSetError(arg0, (s32 *) (temp_v0 * 4), (s32) arg0);
        var_a7 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            temp_s1->unk7B98 = temp_v0_2;
block_3:
            if (arg1 >= 0x8125U) {
                if (arg1 > 0x8125U) {
                    if (arg1 >= 0x818EU) {
                        if (arg1 > 0x818EU) {
                            if (arg1 >= 0x819AU) {
                                if ((arg1 > 0x819AU) && (arg1 != 0x819B)) {
                                    goto block_35;
                                }
                                goto block_19;
                            }
                            if (arg1 >= 0x8190U) {
                                if (arg1 > 0x8190U) {
                                    goto block_35;
                                }
                                goto block_19;
                            }
                            if (arg1 != 0x818F) {
                                goto block_35;
                            }
                            goto block_19;
                        }
                        goto block_19;
                    }
                    if (arg1 >= 0x813CU) {
                        if (arg1 > 0x813CU) {
                            if (arg1 >= 0x8172U) {
                                if (arg1 > 0x8172U) {
                                    goto block_35;
                                }
                                goto block_19;
                            }
                            if (arg1 != 0x813D) {
                                goto block_35;
                            }
                            goto block_19;
                        }
                        goto block_19;
                    }
                    if (arg1 >= 0x813BU) {
                        if (arg1 > 0x813BU) {
                            goto block_35;
                        }
                        goto block_19;
                    }
                    if (arg1 != 0x813A) {
                        goto block_35;
                    }
                    goto block_19;
                }
                goto block_19;
            }
            if (arg1 >= 0x8072U) {
                if (arg1 > 0x8072U) {
                    if (arg1 >= 0x80BFU) {
                        if ((arg1 > 0x80BFU) && (arg1 != 0x8124)) {
                            goto block_35;
                        }
                        goto block_19;
                    }
                    if (arg1 >= 0x809BU) {
                        if (arg1 > 0x809BU) {
                            goto block_35;
                        }
                        goto block_19;
                    }
                    if (arg1 != 0x809A) {
                        goto block_35;
                    }
                    goto block_19;
                }
                goto block_19;
            }
            temp_v0_3 = arg1 < 0x2802U;
            if (temp_v0_3 == 0) {
                if (arg1 >= 0x2803U) {
                    if (arg1 >= 0x8066U) {
                        if (arg1 > 0x8066U) {
                            goto block_35;
                        }
                        goto block_19;
                    }
                    if (arg1 != 0x2803) {
                        goto block_35;
                    }
                    goto block_19;
                }
                goto block_19;
            }
            if (arg1 >= 0x2801U) {
                if (temp_v0_3 != 0) {
                    goto block_19;
                }
                goto block_35;
            }
            if (arg1 != 0x2800) {
block_35:
                __glSetError((s32 *)0x500);
            } else {
block_19:
                temp_v0_4 = __glKonTexParameter((s64) (temp_s1 + 0x7B90), (s64) var_a7, (s64) arg1, (s32 *) &sp30, 1);
                if (temp_v0_4 != -1) {
                    if (temp_v0_4 == -2) {
                        __glSetError((s32 *)0x501);
                    }
                } else {
                    __glSetError((s32 *)0x500);
                }
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, arg0);
    }
}

void __glkonim_TexParameteriv(s32 *arg0, s64 arg1, s32 *arg2) {
    s64 sp20;
    s64 sp18;
    s32 *temp_a2;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_v0;
    s32 var_a7;
    s64 temp_v0_2;
    void *temp_s0;

    var_v0 = arg2;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = temp_s0->unk7B98;
        temp_a2 = (&index_2_target_map)[temp_a0];
        if (temp_a2 == arg0) {
            var_a7 = temp_a0;
            goto block_3;
        }
        sp18 = arg1;
        sp20 = (s64) var_v0;
        temp_v0 = __glSetError(arg0, (s32 *)0x120000, (s32) temp_a2, (s32 *) (temp_a0 * 4), (s32) arg0);
        var_a7 = temp_v0;
        if (temp_v0 >= 0) {
            var_v0 = (s32 *) sp20;
            temp_s0->unk7B98 = var_a7;
block_3:
            temp_v0_2 = __glKonTexParameter((s64) (temp_s0 + 0x7B90), (s64) var_a7, arg1, var_v0, 0);
            if (temp_v0_2 != -1) {
                if (temp_v0_2 == -2) {
                    M2C_ERROR(/* Read from unset register $t9 */)(0x501);
                }
            } else {
                __glSetError((s32 *)0x500);
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)0x120000, (s32) arg0);
    }
}

void __glkonim_TexParameteri(s32 *arg0, u32 arg1, s32 arg2) {
    s32 sp34;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a7;
    s64 temp_v0_4;
    void *temp_s1;

    sp34 = arg2;
    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = temp_s1->unk7B98;
        if ((&index_2_target_map)[temp_v0] == arg0) {
            var_a7 = temp_v0;
            goto block_3;
        }
        temp_v0_2 = __glSetError(arg0, (s32 *) (temp_v0 * 4), (s32) arg0);
        var_a7 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            temp_s1->unk7B98 = temp_v0_2;
block_3:
            if (arg1 >= 0x8125U) {
                if (arg1 > 0x8125U) {
                    if (arg1 >= 0x818EU) {
                        if (arg1 > 0x818EU) {
                            if (arg1 >= 0x819AU) {
                                if ((arg1 > 0x819AU) && (arg1 != 0x819B)) {
                                    goto block_36;
                                }
                                goto block_20;
                            }
                            if (arg1 >= 0x8190U) {
                                if (arg1 > 0x8190U) {
                                    goto block_36;
                                }
                                goto block_20;
                            }
                            if (arg1 != 0x818F) {
                                goto block_36;
                            }
                            goto block_20;
                        }
                        goto block_20;
                    }
                    if (arg1 >= 0x813CU) {
                        if (arg1 > 0x813CU) {
                            if (arg1 >= 0x8172U) {
                                if (arg1 > 0x8172U) {
                                    goto block_36;
                                }
                                goto block_20;
                            }
                            if (arg1 != 0x813D) {
                                goto block_36;
                            }
                            goto block_20;
                        }
                        goto block_19;
                    }
                    if (arg1 >= 0x813BU) {
                        if (arg1 > 0x813BU) {
                            goto block_36;
                        }
                        goto block_20;
                    }
                    if (arg1 != 0x813A) {
                        goto block_36;
                    }
                    goto block_20;
                }
                goto block_20;
            }
            if (arg1 >= 0x8072U) {
                if (arg1 > 0x8072U) {
                    if (arg1 >= 0x80BFU) {
                        if ((arg1 > 0x80BFU) && (arg1 != 0x8124)) {
                            goto block_36;
                        }
                        goto block_20;
                    }
                    if (arg1 >= 0x809BU) {
                        if (arg1 > 0x809BU) {
                            goto block_36;
                        }
                        goto block_20;
                    }
                    if (arg1 != 0x809A) {
                        goto block_36;
                    }
                    goto block_20;
                }
                goto block_19;
            }
            temp_v0_3 = arg1 < 0x2802U;
            if (temp_v0_3 == 0) {
                if (arg1 >= 0x2803U) {
                    if (arg1 >= 0x8066U) {
                        if (arg1 > 0x8066U) {
                            goto block_36;
                        }
                        goto block_20;
                    }
                    if (arg1 != 0x2803) {
                        goto block_36;
                    }
                    goto block_20;
                }
                goto block_20;
            }
            if (arg1 >= 0x2801U) {
                if (temp_v0_3 != 0) {
block_19:
                    goto block_20;
                }
                goto block_36;
            }
            if (arg1 != 0x2800) {
block_36:
                __glSetError((s32 *)0x500);
            } else {
block_20:
                temp_v0_4 = __glKonTexParameter((s64) (temp_s1 + 0x7B90), (s64) var_a7, (s64) arg1, &sp34, 0);
                if (temp_v0_4 != -1) {
                    if (temp_v0_4 == -2) {
                        __glSetError((s32 *)0x501);
                    }
                } else {
                    __glSetError((s32 *)0x500);
                }
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, arg0);
    }
}

void __glkonim_DetailTexFuncSGIS(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a2;

    temp_a3 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0xDE1) {
            __glSetError((s32 *)0x500, temp_a3, 1);
        } else {
            sp18 = arg2;
            sp10 = (s64) temp_a3;
            if (arg1 >= 2) {
                sp8 = sp10 + 0x10000;
                temp_a5 = sp10->unk8AAC;
                temp_a3_2 = sp10->unk7BB8;
                sp0 = (s64) temp_a3_2;
                subtractTexTableUsage(sp10, 1, temp_a5 + 0xC074, temp_a3_2, 1, temp_a5);
                temp_a5_2 = sp10->unk8AAC;
                addTexTableUsage(temp_a5_2 + 0xC074, sp0, 1, sp18, arg1, temp_a5_2);
                if (sp0->unk10 == 1) {
                    // Error: negative shift count
                    // At instruction: bgez $a7, .L0d973428
                    if (M2C_ERROR()) {
                        var_a2 = M2C_ERROR(/* Read from unset register $t0 */)->unk7B94;
                        if (M2C_ERROR(/* Read from unset register $t0 */)->unk7B90 & (0x10 - (1 << (var_a2 + 1)))) {
                            sub_0d960000(sp10 + 0x7B90, (s32 *)1, (s64) var_a2);
                            var_a2 = sp10->unk7B94;
                        }
                        if (var_a2 == 2) {
                            temp_a3_3 = sp8->unk-7554;
                            bindTexTable(temp_a3_3 + 0xC074, (s32 *) sp0, sp0->unk10, temp_a3_3);
                            sp0->unk100(sp10 + 0x7B90, sp0);
                        }
                    }
                }
            } else {
                __glSetError((s32 *)0x501, temp_a3, 1);
            }
        }
    } else {
        __glSetError((s32 *)0x502, temp_a3, 1);
    }
}

void __glkonim_GetDetailTexFuncSGIS(s32 arg0, s32 arg1) {
    s32 *temp_a5;

    temp_a5 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0xDE1) {
            __glSetError((s32 *)0x500, (s32 *)0xDE1, arg1, temp_a5);
        } else {
            getTexTableUsage(temp_a5->unk8AAC + 0xC074, temp_a5->unk7BB8, (s32 *)1, arg1, 0xC074, temp_a5);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)0xDE1, arg1, temp_a5);
    }
}

void __glkonim_SharpenTexFuncSGIS(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_v0;
    s32 var_a7;
    s32 var_ra;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a7 = temp_s0->unk7B98;
        sp8 = arg2;
        if ((&index_2_target_map)[var_a7] == arg0) {
            var_ra = arg1 < 2;
            if (var_a7 != 1) {
                goto block_3;
            }
            goto block_10;
        }
        temp_v0 = sub_0d960000((s32 *) (var_a7 * 4), (s32 *)1, (s64) var_a7);
        var_a7 = temp_v0;
        if (temp_v0 == 1) {
            goto block_9;
        }
block_3:
        if (var_a7 != 2) {
            var_ra = arg1 < 2;
            if (var_a7 != 3) {
                __glSetError((s32 *)0x500);
            } else {
                goto block_10;
            }
        } else {
block_9:
            var_ra = arg1 < 2;
block_10:
            if (var_ra == 0) {
                sp10 = (s64) (temp_s0 + 0x10000);
                temp_a5 = temp_s0->unk8AAC;
                temp_a3 = (temp_s0 + (var_a7 * 4))->unk7BB0;
                sp0 = (s64) temp_a3;
                subtractTexTableUsage((s64) temp_s0, 1, temp_a5 + 0xC074, temp_a3, 2, temp_a5);
                temp_a5_2 = temp_s0->unk8AAC;
                addTexTableUsage(temp_a5_2 + 0xC074, sp0, 2, sp8, arg1, temp_a5_2);
                if (sp0->unk10 == 2) {
                    // Error: negative shift count
                    // At instruction: bgez $t0, .L0d973678
                    if (M2C_ERROR()) {
                        if (temp_s0->unk7B90 & (0x10 - (M2C_ERROR(/* Read from unset register $t3 */) << (temp_s0->unk7B94 + M2C_ERROR(/* Read from unset register $t3 */))))) {
                            sub_0d960000(temp_s0 + 0x7B90);
                        }
                        if (sp0->unk178 == temp_s0->unk7B94) {
                            temp_a3_2 = sp10->unk-7554;
                            bindTexTable(temp_a3_2 + 0xC074, (s32 *) sp0, sp0->unk10, temp_a3_2);
                            sp0->unk100(temp_s0 + 0x7B90, sp0);
                        }
                    }
                }
            } else {
                __glSetError((s32 *)0x501);
            }
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)1);
    }
}

void __glkonim_GetSharpenTexFuncSGIS(void *arg0, s64 arg1) {
    s64 sp0;
    s32 temp_v0;
    s32 var_a5;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a5 = temp_s0->unk7B98;
        sp0 = arg1;
        if ((&index_2_target_map)[var_a5] == arg0) {
            if (var_a5 != 1) {
                goto block_3;
            }
            goto block_9;
        }
        temp_v0 = sub_0d960000((s32 *) (var_a5 * 4), (s32 *)1, (s64) var_a5);
        var_a5 = temp_v0;
        if (temp_v0 == 1) {
            goto block_8;
        }
block_3:
        if (var_a5 != 2) {
            if (var_a5 != 3) {
                __glSetError((s32 *)0x500);
            } else {
                goto block_9;
            }
        } else {
block_8:
block_9:
            getTexTableUsage(temp_s0->unk8AAC + 0xC074, (temp_s0 + (var_a5 * 4))->unk7BB0, (s32 *)2, (s32) sp0, 0xC074, (s32 *) var_a5);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)1);
    }
}

void __glkonim_TexFilterFuncSGIS(s32 arg0, s32 *arg1, s32 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a2;
    s32 *temp_a5;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 var_a2;
    s32 var_a6;

    temp_a5 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg2 != 0x81) {
            __glSetError((s32 *)0x501, temp_a5, 1);
        } else {
            var_a6 = temp_a5->unk7B98;
            temp_a2 = (&index_2_target_map)[var_a6];
            sp18 = (s64) temp_a5;
            sp10 = arg3;
            if (temp_a2 != arg0) {
                unksp28 = (s64) arg1;
                var_a6 = sub_0d960000(temp_a2, (s32 *) (var_a6 * 4), (s64) temp_a5, var_a6, 1);
            }
            if (((var_a6 != 1) && (var_a6 != 2)) || (arg1 != (s32 *)0x8146)) {
                __glSetError((s32 *)0x500, arg1);
            } else {
                sp0 = sp18 + 0x10000;
                temp_a5_2 = sp18->unk8AAC;
                temp_a3 = (sp18 + (var_a6 * 4))->unk7BB0;
                sp8 = (s64) temp_a3;
                subtractTexTableUsage(sp18, 1, temp_a5_2 + 0xC074, temp_a3, 0, temp_a5_2, var_a6, 1);
                temp_a5_3 = sp18->unk8AAC;
                addTexTableUsage(temp_a5_3 + 0xC074, sp8, 0, sp10, 0x81, temp_a5_3);
                if (sp8->unk10 == 0) {
                    var_a2 = sp18->unk7B94;
                    if (sp18->unk7B90 & (0x10 - (1 << (var_a2 + 1)))) {
                        sub_0d960000(sp18 + 0x7B90);
                        var_a2 = sp18->unk7B94;
                    }
                    if (sp8->unk178 == var_a2) {
                        temp_a3_2 = sp0->unk-7554;
                        bindTexTable(temp_a3_2 + 0xC074, (s32 *) sp8, sp8->unk10, temp_a3_2);
                        sp8->unk100(sp18 + 0x7B90, sp8);
                    }
                }
            }
        }
    } else {
        __glSetError((s32 *)0x502, temp_a5, 1);
    }
}

void __glkonim_GetTexFilterFuncSGIS(s32 *arg0, s32 *arg1, s64 arg2) {
    s64 sp0;
    s32 var_a6;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a6 = temp_s0->unk7B98;
        sp0 = arg2;
        if ((&index_2_target_map)[var_a6] != arg0) {
            unksp18 = (s64) arg1;
            var_a6 = sub_0d960000((s32 *) (var_a6 * 4), (s32 *) var_a6, 1);
        }
        if (((var_a6 != 1) && (var_a6 != 2)) || (arg1 != (s32 *)0x8146)) {
            __glSetError((s32 *)0x500, arg1);
        } else {
            getTexTableUsage(temp_s0->unk8AAC + 0xC074, (temp_s0 + (var_a6 * 4))->unk7BB0, NULL, (s32) sp0, 0xC074, (s32 *)0x8146, var_a6, 1);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *)1);
    }
}

s32 *checkProxyTexture(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s32 *sp84;
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
    s64 sp0;
    s32 *temp_v0_3;
    s32 *var_t1;
    s32 *var_v0;
    s32 temp_a4_2;
    s32 temp_t2_2;
    s64 temp_v0;
    s64 temp_v0_2;
    void *temp_a4;
    void *temp_t2;
    void *temp_v1;
    void *temp_v1_2;

    if (arg6 & ~1) {
        goto block_1;
    }
    sp60 = arg2;
    sp58 = arg5;
    sp50 = arg5;
    sp48 = arg4;
    sp40 = (s64) *(s32 *)0x1010;
    sp38 = arg4;
    sp30 = arg3;
    sp28 = arg6;
    sp20 = arg1;
    switch (arg0) {                                 /* irregular */
    default:
        return (s32 *)-1;
    case 0x8064:
        if (sp20 > 0) {
            if ((__glKonGetTexParameter((s32 *) (sp30 << sp20), (s32 *) sp28, sp20) != 0) && (__glKonGetTexParameter((s32 *) (sp38 << sp20), (s32 *) sp28) != 0)) {
                goto block_10;
            }
            goto block_1;
        }
        if ((__glKonGetTexParameter((s32 *) sp30, (s32 *) sp28, sp20) == 0) || (__glKonGetTexParameter((s32 *) sp38, (s32 *) sp28) == 0)) {
            goto block_1;
        }
block_10:
        temp_a4 = sp40->unk7BC4;
        sp18 = (s64) temp_a4;
        sp48 = sp38 - (sp28 * 2);
        temp_a4->unk178 = 2;
        temp_a4->unkC = 0;
        sp84 = (s32 *)5;
block_11:
        if (sub_0d960000(sp84, (s32 *) sp20) != 0) {
            __glSetError((s32 *)0x501);
            goto block_1;
        }
        temp_v0 = __glKonGetTexParameter((s32 *) sp60);
        if (temp_v0 >= 0) {
            temp_v0_2 = 1 << sp20;
            sp10 = temp_v0;
            sp8 = temp_v0_2;
            temp_t2 = sp18 + (sp20 * 4);
            if (sp18->unk24 & temp_v0_2) {
                var_t1 = temp_t2->unk7C;
            } else {
                sp0 = (s64) temp_t2;
                temp_v0_3 = sub_0d970000((s32 *) sp40, (s32 *)0x18);
                sp0->unk7C = temp_v0_3;
                *temp_v0_3 = 0;
                var_t1 = temp_v0_3;
                sp18->unk24 = (s32) (sp8 | (sp18->unk24 & ~sp8));
            }
            var_t1->unk14 = 0;
            var_t1->unk4 = (s32) sp10;
            var_t1->unkC = (s32) sp48;
            var_t1->unk10 = (s32) sp58;
            var_t1->unk8 = (s32) (sp30 - (sp28 * 2));
            temp_t2_2 = sp18->unk40 & ~0x1C;
            if (sp20 != 0) {
                sp68 = (s64) var_t1;
                sp18->unk40 = (s32) (temp_t2_2 | 0x10);
            } else {
                sp68 = (s64) var_t1;
                sp18->unk40 = (s32) (temp_t2_2 | 4);
            }
            if (__glKonGetTexParameter(sp40 + 0x7B90, (s32 *) sp18, sp20) != 0) {
                sp68->unk4 = (s32) sp10;
                sp68->unk14 = (s32) sp28;
                sp68->unk10 = (s32) sp50;
                sp68->unkC = (s32) sp38;
                sp68->unk8 = (s32) sp30;
            } else {
                sp68->unk4 = 0;
                sp68->unk14 = 0;
                sp68->unk10 = 0;
                sp68->unkC = 0;
                sp68->unk8 = 0;
            }
            var_v0 = sp84;
        } else {
block_1:
            var_v0 = (s32 *)-1;
        }
        return var_v0;
    case 0x8070:
        if ((__glKonGetTexParameter((s32 *) sp30, (s32 *) sp28, sp20) != 0) && (__glKonGetTexParameter((s32 *) sp38, (s32 *) sp28) != 0) && (__glKonGetTexParameter((s32 *) sp50, (s32 *) sp28) != 0)) {
            temp_v1 = sp40->unk7BC8;
            sp18 = (s64) temp_v1;
            temp_a4_2 = sp28 * 2;
            sp48 = sp38 - temp_a4_2;
            sp58 = sp50 - temp_a4_2;
            temp_v1->unk178 = 3;
            temp_v1->unkC = (s32) ((sp20 == 0) ? 1 : 2);
            sp84 = (s32 *)6;
            goto block_11;
        }
        goto block_1;
        /* Duplicate return node #2. Try simplifying control flow for better match */
        return var_v0;
    case 0x8063:
        if (__glKonGetTexParameter((s32 *) sp30, (s32 *) sp28) != 0) {
            temp_v1_2 = sp40->unk7BC0;
            sp18 = (s64) temp_v1_2;
            temp_v1_2->unk178 = 1;
            temp_v1_2->unkC = 0;
            sp84 = (s32 *)4;
            goto block_11;
        }
        goto block_1;
        /* Duplicate return node #2. Try simplifying control flow for better match */
        return var_v0;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44], gap at: 0x18. */
s32 __glkonim_GetTexLevelParameteriv(s32 arg0, s32 arg1, u32 arg2, s64 arg3) {
    s64 sp0;
    s32 *temp_a3;
    s32 *var_a0_2;
    s32 *var_a0_3;
    s32 *var_a0_4;
    s32 *var_a0_5;
    s32 *var_a0_6;
    s32 *var_a0_7;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_a1;
    s64 temp_a2_3;
    s64 var_v0_5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_s2;
    void *temp_t0;
    void *temp_t0_2;

    temp_s2 = *(void **)0x1010;
    var_v0_5 = arg3;
    if (*(s32 *)0x1018 != 1) {
        sp0 = arg3;
        if (arg0 != 0x8063) {
            var_v0_5 = 0x8064;
            if (arg0 != (s32) 0x8064) {
                if (arg0 != 0x8070) {
                    temp_v0 = temp_s2->unk7B98;
                    temp_a3 = (&index_2_target_map)[temp_v0];
                    if (temp_a3 == arg0) {
                        var_a0 = temp_v0;
                        goto block_6;
                    }
                    temp_v0_2 = sub_0d960000((s32 *)0x8063, (s32 *)0x8070, (s64) temp_a3, temp_v0 * 4, 1);
                    var_a0 = temp_v0_2;
                    if (temp_v0_2 >= 0) {
                        temp_s2->unk7B98 = temp_v0_2;
block_6:
                        temp_t0 = temp_s2 + (var_a0 * 4);
                        unksp18 = (s64) temp_t0;
                        temp_t0_2 = temp_t0->unk7BB0;
                        unksp20 = (s64) (temp_t0_2 + (arg1 * 4))->unk7C;
                        unksp10 = temp_t0_2->unk24 & (1 << arg1);
                        goto block_7;
                    }
                    var_v0 = __glSetError((s32 *)0x500);
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    return var_v0;
                }
                if (arg0 != (s32) 0x8064) {
                    var_a0 = ((arg0 ^ 0x8070) == 0) ? 6 : arg0;
                } else {
                    goto block_33;
                }
                goto block_34;
            }
block_33:
            var_a0 = 5;
            goto block_34;
        }
        var_a0 = 4;
block_34:
        temp_a2 = temp_s2 + (var_a0 * 4);
        unksp18 = (s64) temp_a2;
        temp_a2_2 = temp_a2->unk7BB0;
        temp_a1 = temp_a2_2->unk24 & (1 << arg1);
        unksp10 = temp_a1;
        unksp20 = (s64) (temp_a2_2 + (arg1 * 4))->unk7C;
        if ((temp_a1 != 0) && (unksp20->unk8 == 0)) {
            *sp0 = 0;
            return (s32) var_v0_5;
        }
block_7:
        if ((sub_0d960000((s32 *) var_a0, (s32 *) arg1) == 0) || ((temp_v0_3 = unksp18->unk7BB0->unk1B4, ((arg1 < temp_v0_3) != 0)) && (temp_v0_3 != 0))) {
            if (arg2 >= 0x805DU) {
                if (arg2 <= 0x805DU) {
                    if (unksp10 != 0) {
                        var_a0_2 = (&intern_format_arr3 + (unksp20->unk4 * 0x10))->unk4;
                    } else {
                        var_a0_2 = (s32 *)0xD;
                    }
                    var_v0 = __glKonGetTexParameter(var_a0_2, (s32 *)1);
                    goto block_15;
                }
                temp_a2_3 = arg2 > 0x8060U;
                if (arg2 >= 0x8060U) {
                    if (temp_a2_3 == 0) {
                        if (unksp10 != 0) {
                            var_a0_3 = (&intern_format_arr3 + (unksp20->unk4 * 0x10))->unk4;
                        } else {
                            var_a0_3 = (s32 *)0xD;
                        }
                        var_v0 = __glKonGetTexParameter(var_a0_3, (s32 *)4, temp_a2_3, (s32) unksp10);
                        goto block_15;
                    }
                    if (arg2 >= 0x8071U) {
                        if (arg2 <= 0x8071U) {
                            if (unksp10 != 0) {
                                var_v0 = unksp20->unk10;
                            } else {
                                var_v0 = 0;
                            }
                            *sp0 = var_v0;
                        } else {
                            goto block_56;
                        }
                    } else {
                        if (arg2 == 0x8061) {
                            if (unksp10 != 0) {
                                var_a0_4 = (&intern_format_arr3 + (unksp20->unk4 * 0x10))->unk4;
                            } else {
                                var_a0_4 = (s32 *)0xD;
                            }
                            var_v0 = __glKonGetTexParameter(var_a0_4, (s32 *)5, unksp10);
                            goto block_15;
                        }
                        goto block_56;
                    }
                } else {
                    if (arg2 >= 0x805FU) {
                        if (arg2 <= 0x805FU) {
                            if (unksp10 != 0) {
                                var_a0_5 = (&intern_format_arr3 + (unksp20->unk4 * 0x10))->unk4;
                            } else {
                                var_a0_5 = (s32 *)0xD;
                            }
                            var_v0 = __glKonGetTexParameter(var_a0_5, (s32 *)3, temp_a2_3);
                            goto block_15;
                        }
                        goto block_56;
                    }
                    if (arg2 == 0x805E) {
                        if (unksp10 != 0) {
                            var_a0_6 = (&intern_format_arr3 + (unksp20->unk4 * 0x10))->unk4;
                        } else {
                            var_a0_6 = (s32 *)0xD;
                        }
                        var_v0 = __glKonGetTexParameter(var_a0_6, (s32 *)2, temp_a2_3);
                        goto block_15;
                    }
                    goto block_56;
                }
                /* Duplicate return node #16. Try simplifying control flow for better match */
                return var_v0;
            }
            if (arg2 >= 0x1003U) {
                if (arg2 < 0x1004U) {
                    if (unksp10 != 0) {
                        var_v0_4 = *(&intern_format_arr3 + (unksp20->unk4 * 0x10));
                    } else {
                        var_v0_4 = 1;
                    }
                    *sp0 = var_v0_4;
                    return var_v0_4;
                }
                if (arg2 >= 0x805CU) {
                    if (arg2 <= 0x805CU) {
                        if (unksp10 != 0) {
                            var_a0_7 = (&intern_format_arr3 + (unksp20->unk4 * 0x10))->unk4;
                        } else {
                            var_a0_7 = (s32 *)0xD;
                        }
                        var_v0 = __glKonGetTexParameter(var_a0_7, NULL);
block_15:
                        *(s32 *) sp0 = var_v0;
                    } else {
                        goto block_56;
                    }
                } else if (arg2 == 0x1005) {
                    if (unksp10 != 0) {
                        var_v0 = unksp20->unk14;
                    } else {
                        var_v0 = 0;
                    }
                    *sp0 = var_v0;
                } else {
                    goto block_56;
                }
                /* Duplicate return node #16. Try simplifying control flow for better match */
                return var_v0;
            }
            if (arg2 >= 0x1001U) {
                if (arg2 < 0x1002U) {
                    if (unksp10 != 0) {
                        var_v0_3 = unksp20->unkC;
                    } else {
                        var_v0_3 = 0;
                    }
                    *sp0 = var_v0_3;
                    return var_v0_3;
                }
                goto block_56;
            }
            if (arg2 == 0x1000) {
                if (unksp10 != 0) {
                    var_v0_2 = unksp20->unk8;
                } else {
                    var_v0_2 = 0;
                }
                *sp0 = var_v0_2;
                return var_v0_2;
            }
block_56:
            var_v0 = __glSetError((s32 *)0x501);
            /* Duplicate return node #16. Try simplifying control flow for better match */
            return var_v0;
        }
        var_v0 = __glSetError((s32 *)0x501);
        /* Duplicate return node #16. Try simplifying control flow for better match */
        return var_v0;
    }
    var_v0 = __glSetError((s32 *)0x502, (s32 *)1);
    return var_v0;
}

void __glkonim_GetTexLevelParameterfv(s32 *arg3) {
    __glkonim_GetTexLevelParameteriv();
    *arg3 = (bitwise s32) (f32) *arg3;
}

void __glkonim_GetTexParameteriv(s32 *arg0, s64 arg1, s32 arg2) {
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_a7;
    s64 var_t0;
    void *temp_s0;

    var_a3 = arg2;
    var_t0 = arg1;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = temp_s0->unk7B98;
        if ((&index_2_target_map)[temp_v0] == arg0) {
            var_a7 = temp_v0;
            goto block_3;
        }
        sp18 = var_t0;
        sp20 = (s64) arg2;
        temp_v0_2 = __glSetError(arg0, (s32 *) (temp_v0 * 4), var_a3, arg0);
        var_a3 = (s32) sp20;
        var_a7 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            var_t0 = sp18;
            temp_s0->unk7B98 = temp_v0_2;
block_3:
            if (__glKonGetTexParameter(temp_s0 + 0x7B90, (s32 *) var_a7, var_t0, var_a3, 0) < 0) {
                M2C_ERROR(/* Read from unset register $t9 */)(0x500);
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *) var_a3, (s32) arg0);
    }
}

void __glkonim_GetTexParameterfv(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_a7;
    s64 var_t0;
    void *temp_s0;

    var_a3 = arg2;
    var_t0 = arg1;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = temp_s0->unk7B98;
        if ((&index_2_target_map)[temp_v0] == arg0) {
            var_a7 = temp_v0;
            goto block_3;
        }
        sp18 = var_t0;
        sp20 = (s64) arg2;
        temp_v0_2 = (M2C_ERROR(/* Read from unset register $t9 */) + 0x5E00)(arg0, temp_v0 * 4, var_a3, arg0);
        var_a3 = (s32) sp20;
        var_a7 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            var_t0 = sp18;
            temp_s0->unk7B98 = temp_v0_2;
block_3:
            if (__glKonGetTexParameter(temp_s0 + 0x7B90, (s32 *) var_a7, var_t0, var_a3, 1) < 0) {
                __glSetError((s32 *)0x500);
            }
        } else {
            __glSetError((s32 *)0x500);
        }
    } else {
        __glSetError((s32 *)0x502, (s32 *) var_a3, arg0);
    }
}

void __glkon_InitSharedTextureState(void *arg0) {
    __glKonInitTextureMemory();
    __glKonInitTextureHash(arg0 + 0x28);
    sub_0d960000(arg0 + 0xC074);
    sub_0d960000(arg0 + 0xC03C);
    arg0->unk1C = 0x40004000;
}

/*
Decompilation failure in function freeTextureAttrib:

Unable to determine jump table for jr instruction at kon_texture_api.s line 23255.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void initProxyTextures(void *arg0) {
    s32 *temp_a2;
    s32 *temp_a4;
    s32 *temp_at;
    s32 *temp_v0;

    temp_at = arg0 + 0x8BC;
    arg0->unk30 = temp_at;
    bzero(temp_at, 0x220);
    temp_v0 = arg0 + 0xADC;
    arg0->unk30->unk178 = 4;
    arg0->unk34 = temp_v0;
    bzero(temp_v0, 0x220);
    temp_a4 = arg0->unk34;
    temp_a2 = arg0 + 0xCFC;
    temp_a4->unk178 = 5;
    arg0->unk38 = temp_a2;
    bzero(temp_a2, 0x220, temp_a2, 5, temp_a4);
    arg0->unk38->unk178 = 6;
}

void __glkon_InitTextureState(void *arg0) {
    s32 *temp_a1_2;
    s32 *temp_a1_3;
    s32 *temp_a1_4;
    s32 *temp_a1_5;
    s32 *temp_s1;
    s32 *temp_s3;
    s32 temp_a1;
    s32 temp_s4;

    temp_s4 = arg0->unk7B9C;
    temp_s1 = arg0 + 0x7B90;
    temp_s3 = arg0->unk8AAC;
    bzero(temp_s1, 0xF20);
    if (temp_s4 == 0x01000000) {
        arg0->unkE90 = 0x40;
        arg0->unkE8C = 0x400;
    } else {
        arg0->unkE90 = 0x80;
        arg0->unkE8C = 0x800;
    }
    arg0->unk7BA4 = 0x20;
    arg0->unk7BA0 = 0x10;
    temp_a1 = temp_s4 >> 6;
    arg0->unk7B9C = temp_a1;
    if (!(*temp_s3 & 1)) {
        __glkonim_GetTexParameterfv((s32) temp_s3, (s64) temp_a1, 0x10);
        *temp_s3 |= 1;
    }
    arg0->unk8AAC = temp_s3;
    arg0->unk7F68 = 0;
    temp_a1_2 = arg0 + 0x7DEC;
    arg0->unk7BB4 = temp_a1_2;
    arg0->unk7B94 = 0;
    arg0->unk7B98 = 2;
    arg0->unk7F64 = 1;
    arg0->unk7F34 = 1.0f;
    sub_0d970000(temp_s1, temp_a1_2);
    temp_a1_3 = arg0 + 0x800C;
    arg0->unk7BB8 = temp_a1_3;
    arg0->unk8154 = 1.0f;
    arg0->unk8188 = 0;
    arg0->unk8184 = 2;
    sub_0d970000(temp_s1, temp_a1_3);
    temp_a1_4 = arg0 + 0x822C;
    arg0->unk7BBC = temp_a1_4;
    arg0->unk8374 = 1.0f;
    arg0->unk83A8 = 0;
    arg0->unk83A4 = 3;
    sub_0d970000(temp_s1, temp_a1_4, (s32 *)3);
    arg0->unk7D14 = 1.0f;
    arg0->unk7D48 = 0;
    arg0->unk7D44 = 0;
    temp_a1_5 = arg0 + 0x7BCC;
    arg0->unk7BB0 = temp_a1_5;
    sub_0d970000(temp_s1, temp_a1_5);
    __glkonim_GetTexParameterfv((s32) temp_s1);
}

void __glKonValidateTextureState(void *arg0, s32 arg3) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a3;
    void *temp_a1;
    void *temp_s1;

    var_a3 = arg3;
    temp_s1 = arg0->unk8AAC;
    if ((temp_s1->unk4 < 2) && (var_a3 = 1, ((temp_s1->unk0 & 4) == 0))) {

    } else {
        __glKonInvalidateARMTexCache(arg0, temp_s1 + 0xC074, var_a3);
        if (temp_s1->unk4 == 1) {
            temp_s1->unk0 = (s32) (temp_s1->unk0 & ~4);
        }
    }
    temp_a0 = arg0->unk7B98;
    temp_a1 = (arg0 + (temp_a0 * 4))->unk7BB0;
    temp_a6 = 1 << temp_a1->unk18;
    temp_a5 = (1 << (temp_a1->unk14 + 1)) - temp_a6;
    if (~temp_a1->unk28 & temp_a5) {
        temp_a4 = 1 << temp_a0;
        temp_a2 = arg0->unk7B90 & temp_a4;
        if (temp_a2 != 0) {
            __glKonInvalidateARMTexCache(arg0 + 0x7B90, temp_a1, temp_a2, 1, temp_a4, temp_a5, temp_a6);
        }
    }
}

void __glkon_FreeTextureState(s32 *arg0) {
    s64 sp8;
    s64 sp0;
    s32 *temp_s1;
    s32 var_a1;
    void *temp_a1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;

    sp8 = arg0 + 0x10000;
    temp_s2 = arg0->unk8AAC;
    var_a1 = temp_s2->unk4 - 1;
    temp_s2->unk4 = var_a1;
    if (temp_s2->unk0 & 1) {
        temp_s1 = temp_s2 + 0xC074;
        if (var_a1 > 0) {
            temp_s2_2 = arg0 + 0x7DEC;
            subtractTexTableUsage(0, (s64) temp_s1, (s64) temp_s2_2, 2);
            subtractTexTableUsage((s64) arg0, 0, (s64) temp_s1, (s32) temp_s2_2, 0);
            temp_s2_3 = arg0 + 0x800C;
            subtractTexTableUsage((s64) arg0, 0, (s64) temp_s1, (s32) temp_s2_3, 1);
            subtractTexTableUsage((s64) arg0, 0, (s64) temp_s1, (s32) temp_s2_3, 2);
            subtractTexTableUsage((s64) arg0, 0, (s64) temp_s1, (s32) temp_s2_3, 0);
            subtractTexTableUsage((s64) arg0, 0, (s64) temp_s1, (s32) (arg0 + 0x822C), 2);
            sp8->unk-7554 = 0;
            return;
        }
        temp_a1 = temp_s2 + 0x28;
        sp0 = (s64) temp_a1;
        __glKonFreeTextures(temp_a1, 0x11C438);
        __glkonim_GetTexParameterfv((s32) arg0, (s64) (arg0 + 0x7B90));
        sub_0d970000(arg0, temp_s2->unk10);
        __glKonFreeTextureHash(arg0, temp_a1);
        __glKonFreeARMTexCache(arg0, temp_s2 + 0xC03C);
        sub_0d960000(arg0, temp_s1);
        __glKonFreeTextureMemory(arg0, temp_s2);
        var_a1 = temp_s2->unk4;
        goto block_4;
    }
block_4:
    if (var_a1 == 0) {
        __glKonFreeTextureMemory(arg0, temp_s2);
    }
    sp8->unk-7554 = 0;
}

s32 __glKonFreeAllocedTexObjBank(s32 *arg1, s64 arg2, s32 arg7) {
    s32 *temp_a4;
    s32 temp_a3;
    s32 var_a7;

    var_a7 = arg7;
    temp_a3 = arg1->unk20 & 0xFEFFFFFF;
    arg1->unk20 = temp_a3;
    temp_a4 = arg1->unkC;
    arg1->unk104 = &__glNop;
    arg1->unk100 = (void *) (sub_0d970000 - 0x17E0);
    if (temp_a4 != (s32 *)1) {
        var_a7 = 2;
        if ((temp_a4 != (s32 *)2) && (temp_a4 != (s32 *)3) && (temp_a4 != (s32 *)4)) {
            sub_0d970000((arg2 != 0) ? (s32 *)2 : (s32 *)1, (s32 *) temp_a3, temp_a4, arg2, 1, 2);
            if (arg1->unk110 != 0) {
                sub_0d960000(arg1);
            }
            return 0;
        }
    }
    sub_0d970000(arg1, (s32 *)3, (s32 *) temp_a3, (s64) temp_a4, (s32) arg2, 1, var_a7);
    if (arg1->unk110 != 0) {
        sub_0d960000(arg1);
    }
    return 1;
}

void __glKonShareTexture(void *arg0, void *arg1) {
    s32 *temp_v0;
    s32 *var_s1;
    s32 temp_t8;

    if (arg1 != NULL) {
        var_s1 = arg1->unk8AAC;
    } else {
        temp_v0 = arg0->unk0(0xC2D8);
        var_s1 = temp_v0;
        bzero(temp_v0, 0xC2D8);
    }
    temp_t8 = var_s1->unk4;
    var_s1->unk4 = (s32) (temp_t8 + 1);
    if (temp_t8 >= 1) {
        var_s1->unk0 |= 4;
        arg0->unk8AAC = var_s1;
        return;
    }
    arg0->unk8AAC = var_s1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x38, 0x3c], gap at: 0x28. */
void __glKonPushTextureAttrib(void) {
    s64 sp8;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s64 temp_s1_3;
    s64 temp_s1_4;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s2;
    void *temp_s3;
    void *temp_s4;

    temp_s3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a0 = temp_s3->unk7BA8;
        sp8 = (s64) temp_s3->unk7BAC;
        if (var_a0 == 0) {
            temp_a2 = temp_s3->unkEC0;
            temp_v0 = __glkonim_GetSharpenTexFuncSGIS(temp_s3, temp_a2 * 0x494, temp_a2);
            var_a0 = temp_v0;
            temp_s3->unk7BA8 = temp_v0;
        }
        temp_s2 = var_a0 + (sp8 * 0x494);
        temp_s4 = temp_s3 + 0x7B90;
        __glKonGetTexParams(temp_s4, 0, temp_s2);
        temp_s1 = temp_s2 + 0xA0;
        temp_s2->unk460 = (s32) temp_s3->unk7BB0->unk17C;
        __glKonGetTexParams(temp_s4, 1, temp_s1);
        temp_s1_2 = temp_s1 + 0xA0;
        temp_s2->unk464 = (s32) temp_s3->unk7BB4->unk17C;
        __glKonGetTexParams(temp_s4, 2, temp_s1_2);
        temp_s2->unk468 = (s32) temp_s3->unk7BB8->unk17C;
        __glKonGetTexParams(temp_s4, 3, temp_s1_2 + 0xA0);
        temp_s2->unk46C = (s32) temp_s3->unk7BBC->unk17C;
        temp_s2->unk490 = (s32) temp_s3->unk7B90;
        temp_a1 = temp_s3->unk7BB8->unk130->unk8;
        temp_s2->unk47C = temp_a1;
        temp_a4 = temp_s3->unk7BB4->unk134->unk8;
        temp_s2->unk480 = temp_a4;
        temp_a2_2 = temp_s3->unk7BB8->unk134->unk8;
        temp_s2->unk484 = temp_a2_2;
        temp_a3 = temp_s3->unk7BBC->unk134->unk8;
        temp_s2->unk488 = temp_a3;
        temp_a2_3 = temp_a2_2 + temp_a3;
        temp_v0_2 = temp_s3->unk0(temp_s3, ((temp_a1 + temp_a4 + temp_a2_3) * 8) + 0x408, temp_a2_3, temp_a3, temp_a4);
        temp_s2->unk48C = temp_v0_2;
        __glkonim_GetTexFilterFuncSGIS((s32 *)0xDE0, (s32 *)0x8146, (s64) temp_v0_2);
        __glkonim_GetTexFilterFuncSGIS((s32 *)0xDE1, (s32 *)0x8146, temp_v0_2 + 0x204);
        __glkonim_GetDetailTexFuncSGIS(0xDE1, temp_v0_2 + 0x408);
        temp_s1_3 = temp_v0_2 + (temp_s2->unk47C * 8) + 0x408;
        __glkonim_GetSharpenTexFuncSGIS((void *)0xDE0, temp_s1_3);
        temp_s1_4 = temp_s1_3 + (temp_s2->unk480 * 8);
        __glkonim_GetSharpenTexFuncSGIS((void *)0xDE1, temp_s1_4);
        __glkonim_GetSharpenTexFuncSGIS((void *)0x806F, temp_s1_4 + (temp_s2->unk484 * 8));
        temp_s3->unk7BAC = (s32) (sp8 + 1);
        return;
    }
    __glSetError((s32 *)0x502);
}

void __glKonPopTextureAttrib(void) {
    ? *temp_s4;
    ? *var_s1;
    ? *var_s3;
    s32 **var_s2;
    s32 *temp_s5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_s0;
    s32 temp_v1;
    s32 var_s0;
    s64 temp_s0_2;
    s64 temp_s0_3;
    s64 temp_s0_4;
    s64 temp_s0_5;
    void *temp_a0;

    temp_a0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v1 = temp_a0->unk7BAC - 1;
        var_s0 = 0;
        var_s2 = &index_2_target_map;
        temp_s4 = temp_a0->unk7BA8 + (temp_v1 * 0x494);
        temp_a0->unk7BAC = temp_v1;
        var_s3 = temp_s4;
        var_s1 = temp_s4;
        do {
            temp_s5 = *var_s2;
            __glkonim_BindTextureEXT(temp_s5, var_s1->unk460);
            __glKonSetTexParams(temp_a0 + 0x7B90, var_s0, var_s3);
            temp_a2 = 1 << var_s0;
            __glkon_EnableTexture(temp_s5, temp_s4->unk490 & temp_a2, temp_a2);
            var_s0 += 1;
            var_s2 += 4;
            var_s1 += 4;
            var_s3 += 0xA0;
        } while (var_s0 != 4);
        temp_s0 = temp_s4->unk48C;
        __glkonim_TexFilterFuncSGIS(0xDE0, 0x8146, 0x81, (s64) temp_s0);
        temp_s0_2 = temp_s0 + 0x204;
        __glkonim_TexFilterFuncSGIS(0xDE1, 0x8146, 0x81, temp_s0_2);
        temp_s0_3 = temp_s0_2 + 0x204;
        __glkonim_DetailTexFuncSGIS(0xDE1, temp_s4->unk47C, temp_s0_3);
        temp_a3 = temp_s4->unk47C * 8;
        temp_s0_4 = temp_s0_3 + temp_a3;
        __glkonim_SharpenTexFuncSGIS(0xDE0, temp_s4->unk480, temp_s0_4, temp_a3);
        temp_s0_5 = temp_s0_4 + (temp_s4->unk480 * 8);
        __glkonim_SharpenTexFuncSGIS(0xDE1, temp_s4->unk484, temp_s0_5);
        temp_a2_2 = temp_s4->unk488;
        __glkonim_SharpenTexFuncSGIS(0x806F, temp_a2_2, temp_s0_5 + (temp_a2_2 * 8));
        free(temp_s4->unk48C);
    } else {
        __glSetError((s32 *)0x502);
    }
}

void __glkonlc_TexImage(s64 arg0, s32 arg1, s64 arg2, s64 arg3, s32 arg4, s32 arg5, s32 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_a4;
    s64 temp_a0;
    void *temp_v0;

    sp0 = arg0;
    sp20 = arg2;
    sp18 = arg3;
    sp8 = arg7;
    if ((arg1 == 0x8063) || (arg1 == 0x8064) || (arg1 == 0x8070)) {
        var_a4 = 0;
    } else {
        var_a4 = __glImageSize3D(arg4, arg5, arg6, arg_sp4, arg_spC);
    }
    temp_a0 = (var_a4 + 3) & ~3;
    sp10 = temp_a0;
    temp_v0 = __glSPDlalloc(temp_a0 + 0x28, 0xD0, -4);
    if (temp_v0 != NULL) {
        temp_v0->unk14 = arg6;
        temp_v0->unk10 = arg5;
        temp_v0->unkC = arg4;
        temp_v0->unk0 = arg1;
        temp_v0->unk24 = (s32) sp10;
        temp_v0->unk18 = (s32) sp8;
        temp_v0->unk8 = (s32) sp18;
        temp_v0->unk4 = (s32) sp20;
        temp_v0->unk1C = arg_sp4;
        temp_v0->unk20 = arg_spC;
        if ((sp10 > 0) && (arg_sp14 != 0)) {
            __glFillImage3D(sp0, arg4, arg5, arg6, arg_sp4, arg_spC, arg_sp14, temp_v0 + 0x28);
        }
    }
}

void __glkonlc_TexImage1D(s32 arg0, s64 arg1, s32 arg2, s32 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;

    sp30 = arg7;
    sp28 = arg6;
    sp20 = arg5;
    if (arg0 != 0xDE0) {
        if (arg0 != 0x8063) {
            __glsplc_InvalidEnum();
        } else {
            __glkonim_TexImage((s32 *)1, (s32 *)1, arg4, sp20, (s64) (s32) sp28, (s64) (s32) sp30);
        }
    } else {
        unksp40 = arg1;
        __glKonPopTextureAttrib(*(s32 *)0x1010, arg0, unksp40, arg2, arg3, 1, 1, arg4, (s32) sp20, (s32 *) sp28, (s32 *) sp30);
    }
}

void __glkonlc_TexImage2D(s32 arg0, s64 arg1, s32 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s64 arg7, s32 *arg_sp4) {
    s64 sp30;
    s64 sp28;
    s64 sp20;

    sp30 = arg7;
    sp28 = arg6;
    sp20 = arg5;
    if (arg0 != 0xDE1) {
        if (arg0 != 0x8064) {
            __glsplc_InvalidEnum(sp28);
        } else {
            __glkonim_TexImage((s32 *)1, (s32 *) sp20, sp28, (s64) (s32) sp30, (s64) arg_sp4);
        }
    } else {
        unksp40 = arg1;
        __glKonPopTextureAttrib(*(s32 *)0x1010, arg0, unksp40, arg2, arg3, arg4, 1, sp20, (s32) sp28, (s32 *) sp30, arg_sp4);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x48, 0x4c], gap at: 0x38. */
void __glkonlc_TexImage3DEXT(s32 arg0, s64 arg1, s32 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s64 arg7, s32 *arg_sp4, s32 *arg_spC) {
    s64 sp20;

    if (arg0 != 0x806F) {
        if (arg0 != 0x8070) {
            __glsplc_InvalidEnum();
        } else {
            __glkonim_TexImage(arg_sp4, arg_spC);
        }
    } else {
        unksp30 = arg1;
        unksp38 = arg5;
        unksp40 = arg6;
        sp20 = arg7;
        __glKonPopTextureAttrib(*(s32 *)0x1010, arg0, unksp30, arg2, arg3, arg4, unksp38, unksp40, (s32) sp20, arg_sp4, arg_spC);
    }
}

void *__glkonle_TexImage(void *arg0) {
    ? sp10;

    __glKonSetPixelLEModes(&sp10);
    __glkonim_TexImage(arg0->unk0, arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, (s64) arg0->unk14, (s64) arg0->unk18, (s64) arg0->unk1C, arg0->unk20, arg0 + 0x28);
    __glKonUnsetLEModes(&sp10);
    return arg0 + ((arg0->unk24 + 3) & ~3) + 0x28;
}

void *__glkonle_TexSubImage1DEXT(void *arg0) {
    ? sp20;

    __glKonSetPixelLEModes(&sp20);
    __glkonim_TexSubImage(arg0->unk0, (s64) arg0->unk4, (s64) arg0->unk8, 0, 0, arg0->unkC, (s32 *)1, 1, arg0->unk10, arg0->unk14, arg0 + 0x1C);
    __glKonUnsetLEModes(&sp20);
    return arg0 + ((arg0->unk18 + 3) & ~3) + 0x1C;
}

void *__glkonle_TexSubImage2DEXT(void *arg0) {
    ? sp20;

    __glKonSetPixelLEModes(&sp20);
    __glkonim_TexSubImage(arg0->unk0, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, 0, arg0->unk10, arg0->unk14, 1, arg0->unk18, arg0->unk1C, arg0 + 0x24);
    __glKonUnsetLEModes(&sp20);
    return arg0 + ((arg0->unk20 + 3) & ~3) + 0x24;
}

void *__glkonle_TexSubImage3DEXT(void *arg0) {
    ? sp20;

    __glKonSetPixelLEModes(&sp20);
    __glkonim_TexSubImage(arg0->unk0, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC, (s64) arg0->unk10, arg0->unk14, arg0->unk18, (s64) arg0->unk1C, arg0->unk20, arg0->unk24, arg0 + 0x2C);
    __glKonUnsetLEModes(&sp20);
    return arg0 + ((arg0->unk28 + 3) & ~3) + 0x2C;
}
