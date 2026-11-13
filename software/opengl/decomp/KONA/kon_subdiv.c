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
Error occurred while processing instruction: bgez $v1, .L0d98cc44

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
Error occurred while processing instruction: bgez $a0, .L0d98cc4c

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
Error occurred while processing instruction: bgez $a1, .L0d98cc54

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
Error occurred while processing instruction: bgez $a5, .L0d98cc5c

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
Error occurred while processing instruction: bgez $a4, .L0d98cc64

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
Error occurred while processing instruction: bgez $t0, .L0d98cc6c

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
Error occurred while processing instruction: bgez $at, .L0d98cc74

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
Error occurred while processing instruction: bgez $a7, .L0d98cd28

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
Error occurred while processing instruction: bgez $a7, .L0d98cd30

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
Error occurred while processing instruction: bgez $t0, .L0d98cd38

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
Error occurred while processing instruction: bgez $t1, .L0d98cd40

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
Error occurred while processing instruction: bgez $v1, .L0d98cc44

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
Error occurred while processing instruction: bgez $a0, .L0d98cc4c

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
Error occurred while processing instruction: bgez $a1, .L0d98cc54

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
Error occurred while processing instruction: bgez $a5, .L0d98cc5c

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
Error occurred while processing instruction: bgez $a4, .L0d98cc64

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
Error occurred while processing instruction: bgez $t0, .L0d98cc6c

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
Error occurred while processing instruction: bgez $at, .L0d98cc74

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
Error occurred while processing instruction: bgez $a7, .L0d98cd28

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
Error occurred while processing instruction: bgez $t0, .L0d98cd38

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
Error occurred while processing instruction: bgez $t1, .L0d98cd40

? __glSetError(?, s32, void *, s64, s32, s64, s64); /* extern */
? glEnd(s32 *, s32, s32, s32, s8, ?, s64, s64);     /* extern */

void __glkonim_SubdivPatchParameterfSGIX(s32 arg0, f32 fparg1) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (arg0 != 0x6010) {
        if (arg0 != 0x6011) {
            __glSetError(0x500, 0x1D3, temp_a2, 0x6011);
        } else {
            goto block_4;
        }
    } else if (arg0 != 0x6011) {
        if (!(fparg1 > 4.0f)) {
            *(void *)0x4000 = 0x1D3;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (bitwise s32) fparg1;
            temp_a2->unkA0F8 = fparg1;
            return;
        }
        __glSetError(0x501, 0x1D3, temp_a2 + 0xA0F8, 0xA0F8);
    } else {
block_4:
        if ((fparg1 == 10785.0f) || (fparg1 == 10787.0f) || (fparg1 == 10791.0f) || (fparg1 == 10793.0f)) {
            *(s32 *)0x4000 = 0x1D3;
            *(void *)0x4000 = arg0;
            *(void *)0x4000 = (s32) fparg1;
            temp_a2->unkA0FC = (s32) (s64) fparg1;
            return;
        }
        __glSetError(0x500, 0x1D3, temp_a2, 0x6011);
    }
}

void __glkonim_SubdivPatchParameteriSGIX(s32 arg1) {
    __glkonim_SubdivPatchParameterfSGIX((bitwise s32) (f32) arg1);
}

void CopyVertex(s32 arg0, f32 *arg1, f32 *arg2) {
    f32 *var_a0;
    f32 *var_a1;
    f32 temp_f2;

    if (arg0 > 0) {
        var_a1 = arg2;
        var_a0 = arg1;
        if (arg0 & 1) {
            var_a0 = arg1 + 4;
            var_a1 = arg2 + 4;
            *arg2 = *arg1;
        }
        if ((arg0 >> 1) != 0) {
            do {
                temp_f2 = *var_a0;
                var_a0 += 8;
                *var_a1 = temp_f2;
                var_a1 += 8;
                var_a1->unk-4 = (f32) var_a0->unk-4;
            } while (var_a0 != ((arg0 * 4) + arg1));
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x4c0, 0x4c4, 0x518, 0x51c, 0x520, 0x524], gap at: 0x4d0. */
void __glkonim_SubdivPatchSGIX(void *arg0, void *arg1, void *arg2) {
    s64 sp578;
    s64 sp570;
    s64 sp568;
    s64 sp560;
    s64 sp558;
    s64 sp550;
    s64 sp548;
    s64 sp540;
    s64 sp538;
    s64 sp530;
    s64 sp528;
    s64 sp4B8;
    s64 sp4B0;
    s64 sp4A8;
    s64 sp4A0;
    s64 sp498;
    s64 sp490;
    s64 sp488;
    s64 sp480;
    s64 sp478;
    s64 sp470;
    s64 sp468;
    s64 sp460;
    s64 sp458;
    s64 sp450;
    s64 sp448;
    s64 sp440;
    s64 sp438;
    s64 sp430;
    s64 sp428;
    s64 sp420;
    s64 sp418;
    s64 sp410;
    s64 sp408;
    s64 sp400;
    s64 sp3F8;
    s64 sp3F0;
    s64 sp3E8;
    s64 sp3E0;
    s64 sp3D8;
    s64 sp3D0;
    s64 sp3C8;
    s64 sp3C0;
    s64 sp3B8;
    s64 sp3B0;
    s64 sp3A8;
    s64 sp3A0;
    s64 sp398;
    s64 sp390;
    s64 sp388;
    s64 sp380;
    s64 sp378;
    s64 sp370;
    s64 sp368;
    s64 sp360;
    s64 sp358;
    s64 sp350;
    s64 sp348;
    s64 sp340;
    s64 sp338;
    s64 sp330;
    s64 sp328;
    s64 sp320;
    s64 sp318;
    s64 sp310;
    s64 sp308;
    s64 sp300;
    s64 sp2F8;
    s64 sp2F0;
    s64 sp2E8;
    s64 sp2E0;
    s64 sp2D8;
    s64 sp2D0;
    s64 sp2C8;
    s64 sp2C0;
    s64 sp2B8;
    s64 sp2B0;
    s64 sp2A8;
    s64 sp2A0;
    s64 sp298;
    s64 sp290;
    s64 sp288;
    s64 sp280;
    s64 sp278;
    s64 sp270;
    u8 sp26D;
    u8 sp26C;
    s32 sp268;
    s32 spCC;
    s32 spC8;
    f32 spC4;
    s32 spC0;
    s32 spBC;
    s32 spB8;
    f32 spB4;
    s32 spB0;
    f32 spAC;
    s32 spA8;
    s32 spA4;
    s32 spA0;
    s32 sp9C;
    f32 sp98;
    f32 sp94;                                       /* compiler-managed */
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    f32 sp84;
    s32 sp80;
    f32 sp7C;                                       /* compiler-managed */
    s32 sp78;
    f32 sp74;                                       /* compiler-managed */
    s32 sp70;                                       /* compiler-managed */
    f32 sp6C;                                       /* compiler-managed */
    s32 sp68;
    f32 sp64;                                       /* compiler-managed */
    f32 sp60;                                       /* compiler-managed */
    f32 sp5C;                                       /* compiler-managed */
    f32 sp58;
    f32 sp54;                                       /* compiler-managed */
    s32 sp50;                                       /* compiler-managed */
    f32 sp4C;                                       /* compiler-managed */
    s32 sp48;                                       /* compiler-managed */
    f32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;                                       /* compiler-managed */
    f32 sp34;                                       /* compiler-managed */
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    u8 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f21;
    f32 temp_f23;
    f32 temp_f25;
    f32 temp_f25_2;
    f32 temp_f27;
    f32 temp_f29;
    f32 temp_f29_2;
    f32 temp_f29_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;
    s32 *temp_a4_2;
    s32 *temp_s0;
    s32 *var_a0_10;
    s32 *var_a0_11;
    s32 *var_a0_12;
    s32 *var_a0_13;
    s32 *var_a0_14;
    s32 *var_a0_15;
    s32 *var_a0_16;
    s32 *var_a0_17;
    s32 *var_a0_18;
    s32 *var_a0_19;
    s32 *var_a0_20;
    s32 *var_a0_21;
    s32 *var_a0_22;
    s32 *var_a0_23;
    s32 *var_a0_24;
    s32 *var_a0_25;
    s32 *var_a0_26;
    s32 *var_a0_27;
    s32 *var_a0_28;
    s32 *var_a0_29;
    s32 *var_a0_30;
    s32 *var_a0_31;
    s32 *var_a0_32;
    s32 *var_a0_33;
    s32 *var_a0_34;
    s32 *var_a0_3;
    s32 *var_a0_45;
    s32 *var_a0_4;
    s32 *var_a0_5;
    s32 *var_a0_6;
    s32 *var_a0_7;
    s32 *var_a0_8;
    s32 *var_a0_9;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_12;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_at;
    s32 temp_at_11;
    s32 temp_at_12;
    s32 temp_at_15;
    s32 temp_at_16;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_at_6;
    s32 temp_at_8;
    s32 temp_f0_3;
    s32 temp_f12_4;
    s32 temp_f16_3;
    s32 temp_f21_2;
    s32 temp_f31;
    s32 temp_f3_3;
    s32 temp_f4_4;
    s32 temp_f9;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_v0_13;
    s32 temp_v0_25;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_11;
    s32 var_a1;
    s32 var_a1_10;
    s32 var_a1_11;
    s32 var_a1_12;
    s32 var_a1_13;
    s32 var_a1_16;
    s32 var_a1_17;
    s32 var_a1_18;
    s32 var_a1_19;
    s32 var_a1_20;
    s32 var_a1_21;
    s32 var_a1_22;
    s32 var_a1_25;
    s32 var_a1_26;
    s32 var_a1_27;
    s32 var_a1_28;
    s32 var_a1_29;
    s32 var_a1_2;
    s32 var_a1_30;
    s32 var_a1_31;
    s32 var_a1_33;
    s32 var_a1_34;
    s32 var_a1_35;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2;
    s32 var_a2_15;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a3;
    s32 var_a5_16;
    s32 var_a5_24;
    s32 var_a5_4;
    s32 var_ra_3;
    s32 var_ra_5;
    s32 var_ra_7;
    s32 var_ra_9;
    s32 var_s4;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s5_4;
    s32 var_s5_5;
    s32 var_s5_6;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s6_3;
    s32 var_s6_4;
    s32 var_s6_5;
    s32 var_s7_2;
    s32 var_s7_4;
    s32 var_s7_6;
    s32 var_v1;
    s64 temp_a0_14;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_a1_6;
    s64 temp_a1_7;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_a3_4;
    s64 temp_a3_5;
    s64 temp_a3_6;
    s64 temp_a3_7;
    s64 temp_a4_4;
    s64 temp_at_10;
    s64 temp_at_13;
    s64 temp_at_14;
    s64 temp_at_17;
    s64 temp_at_18;
    s64 temp_at_2;
    s64 temp_at_5;
    s64 temp_at_7;
    s64 temp_at_9;
    s64 temp_s1;
    s64 temp_v0;
    s64 temp_v0_10;
    s64 temp_v0_11;
    s64 temp_v0_12;
    s64 temp_v0_14;
    s64 temp_v0_15;
    s64 temp_v0_16;
    s64 temp_v0_17;
    s64 temp_v0_18;
    s64 temp_v0_19;
    s64 temp_v0_20;
    s64 temp_v0_21;
    s64 temp_v0_22;
    s64 temp_v0_23;
    s64 temp_v0_24;
    s64 temp_v0_26;
    s64 temp_v0_27;
    s64 temp_v0_28;
    s64 temp_v0_29;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 temp_v0_7;
    s64 temp_v0_8;
    s64 temp_v0_9;
    s64 temp_v1_10;
    s64 temp_v1_12;
    s64 temp_v1_13;
    s64 temp_v1_14;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 temp_v1_4;
    s64 temp_v1_5;
    s64 temp_v1_6;
    s64 temp_v1_7;
    s64 temp_v1_8;
    s64 temp_v1_9;
    s64 var_a1_14;
    s64 var_a1_15;
    s64 var_a1_23;
    s64 var_a1_24;
    s64 var_a1_32;
    s64 var_a1_5;
    s64 var_a1_6;
    s64 var_a4;
    s64 var_a4_2;
    s64 var_a4_3;
    s64 var_a5_13;
    s64 var_a5_15;
    s64 var_a5_18;
    s64 var_a5_21;
    s64 var_a5_23;
    s64 var_a5_27;
    s64 var_a5_2;
    s64 var_a5_3;
    s64 var_a5_7;
    s64 var_a5_9;
    s64 var_ra_2;
    s8 *var_a6_2;
    s8 *var_a7_2;
    s8 *var_t1_2;
    s8 *var_t2_2;
    s8 *var_t3_2;
    s8 *var_t8_2;
    s8 *var_t9_2;
    s8 var_a0_35;
    s8 var_a0_36;
    s8 var_a0_37;
    s8 var_a0_38;
    s8 var_a0_39;
    s8 var_a0_40;
    s8 var_a0_41;
    s8 var_a0_42;
    s8 var_a0_43;
    s8 var_a0_44;
    s8 var_a1_36;
    s8 var_a1_37;
    s8 var_a1_38;
    s8 var_a2_10;
    s8 var_a2_11;
    s8 var_a2_12;
    s8 var_a2_13;
    s8 var_a2_14;
    s8 var_a2_5;
    s8 var_a2_6;
    s8 var_a2_7;
    s8 var_a2_8;
    s8 var_a2_9;
    s8 var_a4_10;
    s8 var_a4_11;
    s8 var_a4_12;
    s8 var_a4_13;
    s8 var_a4_4;
    s8 var_a4_5;
    s8 var_a4_6;
    s8 var_a4_7;
    s8 var_a4_8;
    s8 var_a4_9;
    s8 var_a5_28;
    s8 var_a5_29;
    s8 var_a5_30;
    s8 var_a5_31;
    s8 var_a5_32;
    s8 var_a5_33;
    s8 var_a5_34;
    u8 var_a0_2;
    void *temp_a0_10;
    void *temp_a0_11;
    void *temp_a0_12;
    void *temp_a0_13;
    void *temp_a0_15;
    void *temp_a0_16;
    void *temp_a0_17;
    void *temp_a0_18;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    void *temp_a1_10;
    void *temp_a1_11;
    void *temp_s6;
    void *temp_s6_2;
    void *temp_s7;
    void *temp_s7_2;
    void *var_a0;
    void *var_a5;
    void *var_a5_10;
    void *var_a5_11;
    void *var_a5_12;
    void *var_a5_14;
    void *var_a5_17;
    void *var_a5_19;
    void *var_a5_20;
    void *var_a5_22;
    void *var_a5_25;
    void *var_a5_26;
    void *var_a5_5;
    void *var_a5_6;
    void *var_a5_8;
    void *var_a6;
    void *var_a7;
    void *var_ra;
    void *var_ra_4;
    void *var_ra_6;
    void *var_ra_8;
    void *var_s5;
    void *var_s7;
    void *var_s7_3;
    void *var_s7_5;
    void *var_t0;
    void *var_t1;
    void *var_t2;
    void *var_t3;
    void *var_t8;
    void *var_t9;

    temp_a4 = *(s32 *)0x1010;
    if (arg0 != NULL) {
        sp498 = (s64) temp_a4;
        if (arg1 == NULL) {
            var_t1 = NULL;
            var_t0 = NULL;
            var_a7 = NULL;
            var_a6 = NULL;
            if (arg2 == NULL) {
                goto block_3;
            }
            goto block_5;
        }
        var_t1 = arg1->unkC;
        var_t0 = arg1->unk8;
        var_a7 = arg1->unk4;
        var_a6 = arg1->unk0;
        if (arg2 != NULL) {
block_5:
            var_t8 = arg2->unkC;
            var_t2 = arg2->unk8;
            var_t9 = arg2->unk4;
            var_t3 = arg2->unk0;
        } else {
block_3:
            var_t8 = NULL;
            var_t2 = NULL;
            var_t9 = NULL;
            var_t3 = NULL;
        }
        temp_a4_2 = arg0->unkC;
        temp_s0 = arg0->unk4;
        temp_s7 = arg0->unk8;
        temp_a1 = *temp_s0;
        temp_s6 = arg0->unk0;
        temp_a2 = temp_s7->unk0;
        temp_s7_2 = temp_s7 + 4;
        temp_v1 = temp_s6->unk0;
        temp_s6_2 = temp_s6 + 4;
        var_s5 = temp_a4_2 + 4;
        temp_a4_3 = *temp_a4_2;
        temp_a3 = temp_a1 - 1;
        sp4B0 = temp_a3;
        sp4A8 = temp_v1 - 1;
        temp_s1 = temp_a4_3 - 1;
        sp4A0 = temp_s1;
        if ((temp_v1 >= 9) || (temp_a1 >= 0xA) || (temp_a2 >= 0xA) || (temp_a4_3 >= 9)) {
            sp530 = (s64) var_t8;
            sp538 = (s64) var_t3;
            sp540 = (s64) var_t2;
            sp548 = (s64) var_t1;
            sp528 = (s64) var_t9;
            sp550 = (s64) var_t0;
            sp558 = (s64) var_a7;
            sp570 = (s64) var_a6;
            __glSetError(0x501, temp_a1, (void *) temp_a2, temp_a3, temp_a4_3, (s64) var_a6, (s64) var_a7);
        }
        sp490 = temp_a2 - 1;
        sp460 = temp_s1;
        sp410 = (s64) (temp_s0 + 4);
        if (var_a6 != NULL) {
            sp480 = 0;
        } else if (var_a7 != NULL) {
            sp480 = 0;
        } else if (var_t0 != NULL) {
            sp480 = 0;
        } else if (var_t1 != NULL) {
            sp480 = 0;
        } else if (var_t3 != NULL) {
            sp480 = 0;
        } else if (var_t9 != NULL) {
            sp480 = 0;
        } else if (var_t2 != NULL) {
            sp480 = 0;
        } else {
            sp480 = (var_t8 == NULL) ? 0x80000000 : 0;
        }
        sp498->unkA120 = 0;
        if (sp4A0 < 0) {
            sp498->unkA120 = 1;
            var_s5 = temp_s7_2;
            var_t8 = var_t2;
            sp460 = sp490;
            var_t1 = var_t0;
        }
        if ((var_a6 == NULL) || (var_a7 == NULL) || (var_t0 == NULL) || (var_t1 == NULL) || (var_t3 == NULL) || (var_t9 == NULL) || (var_t2 == NULL) || (var_t8 == NULL)) {
            var_a0 = sp;
            do {
                var_a0->unk3 = 0;
                var_a0->unk2 = 0;
                var_a0 += 4;
                var_a0->unk-3 = 0;
                var_a0->unk-4 = 0;
            } while (var_a0 != &sp20);
            var_t8 = (var_t8 == NULL) ? sp : var_t8;
            var_t2 = (var_t2 == NULL) ? sp : var_t2;
            var_t9 = (var_t9 == NULL) ? sp : var_t9;
            var_t3 = (var_t3 == NULL) ? sp : var_t3;
            var_t1 = (var_t1 == NULL) ? sp : var_t1;
            var_t0 = (var_t0 == NULL) ? sp : var_t0;
            var_a7 = (var_a7 == NULL) ? sp : var_a7;
            var_a6 = (var_a6 == NULL) ? sp : var_a6;
        }
        temp_a0 = sp498->unkA0FC;
        *(s32 *)0x4000 = 0x1D1;
        *(void *)0x4000 = temp_a0;
        switch (temp_a0) {                          /* switch 1; irregular */
        default:                                    /* switch 1 */
            var_s4 = sp24;
            var_a0_2 = sp21;
            sp4B8 = (s64) sp20;
            var_s6 = 0xFFFFFF;
            var_s5_2 = 0x1FFFFFFF;
            break;
        case 0x2A21:                                /* switch 1 */
            sp498->unkA100 = 3;
            sp28 = temp_s6->unk4;
            sp2C = temp_s6_2->unk4;
            sp30 = temp_s6_2->unk8;
            sp34 = sp410->unk0;
            sp38 = sp410->unk4;
            sp3C = sp410->unk8;
            sp40 = temp_s7->unk4;
            sp44 = temp_s7_2->unk4;
            sp48 = temp_s7_2->unk8;
            sp4C = var_s5->unk0;
            sp50 = var_s5->unk4;
            sp268 = 3;
            var_s4 = 0x1AB;
            sp54 = var_s5->unk8;
            if ((sp4A8 >= 3) && (temp_a0_2 = sp410 + (sp4B0 * 0xC), (temp_a0_2->unkC == temp_s6_2->unk24)) && (temp_a0_2->unk10 == temp_s6_2->unk28) && (sp560 = (s64) temp_s6_2, sp568 = (s64) var_s5, (temp_a0_2->unk14 == temp_s6_2->unk2C))) {
                sp58 = sp560->unk24;
                sp5C = sp560->unk28;
                sp488 = 1;
                var_s6_2 = 0xFFFFFF;
                var_s5_3 = 0x1FFFFFFF;
                sp60 = sp560->unk2C;
            } else {
                sp488 = 0;
                sp568 = (s64) var_s5;
                sp560 = (s64) temp_s6_2;
                sp60 = 0.0f;
                sp5C = 0.0f;
                var_s6_2 = 0xFFFFEF;
                var_s5_3 = 0x1FFFFFCF;
                sp58 = 0.0f;
            }
            if ((sp490 >= 4) && (temp_a0_3 = sp560 + (sp4A8 * 0xC), (temp_a0_3->unkC == temp_s7_2->unk30)) && (temp_a0_3->unk10 == temp_s7_2->unk34) && (temp_a0_3->unk14 == temp_s7_2->unk38)) {
                sp64 = temp_s7_2->unk30;
                sp68 = temp_s7_2->unk34;
                var_a4 = 1;
                sp26C = 1;
                sp6C = temp_s7_2->unk38;
            } else {
                sp26C = 0;
                var_a4 = 0;
                sp6C = 0.0f;
                sp68 = 0;
                var_s5_3 &= ~0xC0;
                var_s6_2 &= ~0x20;
                sp64 = 0.0f;
            }
            if ((sp460 >= 3) && (temp_a0_4 = temp_s7_2 + (sp490 * 0xC), (temp_a0_4->unkC == ((void *) sp568)->unk24)) && (temp_a0_4->unk10 == ((void *) sp568)->unk28) && (temp_a0_4->unk14 == ((void *) sp568)->unk2C)) {
                sp70 = ((void *) sp568)->unk24;
                sp74 = ((void *) sp568)->unk28;
                sp4B8 = 1;
                sp78 = ((void *) sp568)->unk2C;
            } else {
                sp4B8 = 0;
                sp78 = 0;
                sp74 = 0.0f;
                var_s5_3 &= ~0x300;
                var_s6_2 &= ~0x40;
                sp70 = 0;
            }
            if ((sp4B0 >= 4) && (temp_a0_5 = (void *) sp568 + (sp460 * 0xC), (temp_a0_5->unkC == sp410->unk30)) && (temp_a0_5->unk10 == sp410->unk34) && (sp450 = (s64) temp_s7_2, (temp_a0_5->unk14 == sp410->unk38))) {
                sp418 = var_a4;
                sp28.unk54 = (s32) sp410->unk30;
                sp458 = 1;
                sp28.unk58 = (s32) sp410->unk34;
                sp26D = 1;
                var_a0_3 = &sp28 + 0x60;
                var_a2 = 0x18;
                sp28.unk5C = (s32) sp410->unk38;
            } else {
                sp458 = 0;
                sp26D = 0;
                sp418 = var_a4;
                sp450 = (s64) temp_s7_2;
                sp28.unk5C = 0;
                var_s5_3 &= ~0xC00;
                var_s6_2 &= ~0x80;
                sp28.unk58 = 0;
                var_a0_3 = &sp28 + 0x60;
                sp28.unk54 = 0;
                var_a2 = 0x18;
            }
            temp_v1_2 = sp488 != 0;
            sp468 = temp_v1_2;
            temp_a1_2 = sp418 != 0;
            sp478 = temp_a1_2;
            temp_v0 = temp_v1_2 * 0xC;
            temp_v1_3 = (sp4A8 - (temp_v1_2 + temp_a1_2)) - 1;
            var_a5 = temp_v0 + sp560 + 0x24;
            sp3E8 = temp_v0;
            temp_v1_4 = (temp_v1_3 > 4) ? 4 : temp_v1_3;
            sp408 = 4 - temp_v1_4;
            temp_v0_2 = 0x10 - (1 << temp_v1_4);
            var_a1 = temp_v1_4 - 1;
            sp3C0 = temp_v1_4;
            sp498->unkA104 = (s32) temp_v1_4;
            if (var_a1 != -1) {
                sp3A0 = sp3C0;
                temp_a3_2 = sp3C0 & 3;
                sp440 = temp_a3_2;
                if (temp_a3_2 != 0) {
                    do {
                        var_a0_3->unk0 = var_a5->unk0;
                        var_a0_3->unk4 = (f32) var_a5->unk4;
                        var_a1 -= 1;
                        temp_v0_3 = sp440 - 1;
                        temp_f12 = var_a5->unk8;
                        var_a5 += 0xC;
                        var_a0_3 += 0xC;
                        sp440 = temp_v0_3;
                        var_a2 += 3;
                        var_a0_3->unk-4 = temp_f12;
                    } while (temp_v0_3 != 0);
                }
                if ((sp3A0 >> 2) != 0) {
                    do {
                        var_a0_3->unk0 = var_a5->unk0;
                        var_a0_3->unk4 = (f32) var_a5->unk4;
                        var_a0_3->unk8 = (f32) var_a5->unk8;
                        var_a0_3->unkC = (f32) var_a5->unkC;
                        var_a0_3->unk10 = (f32) var_a5->unk10;
                        var_a0_3->unk14 = (f32) var_a5->unk14;
                        var_a0_3->unk18 = (f32) var_a5->unk18;
                        var_a0_3->unk1C = (f32) var_a5->unk1C;
                        var_a0_3->unk20 = (f32) var_a5->unk20;
                        var_a0_3->unk24 = (f32) var_a5->unk24;
                        var_a0_3->unk28 = (f32) var_a5->unk28;
                        var_a1 -= 4;
                        temp_f15 = var_a5->unk2C;
                        var_a5 += 0x30;
                        var_a0_3 += 0x30;
                        var_a2 += 0xC;
                        var_a0_3->unk-4 = temp_f15;
                    } while (var_a1 != -1);
                }
            }
            var_a1_2 = sp408 - 1;
            if (var_a1_2 != -1) {
                sp3B8 = sp408;
                var_a0_4 = &(&sp28)[var_a2];
                if (sp408 & 1) {
                    var_a0_4->unk0 = 0;
                    var_a0_4->unk4 = 0.0f;
                    var_a0_4 += 0xC;
                    var_a0_4->unk-4 = 0.0f;
                    var_a2 += 3;
                    var_a1_2 = sp408 - 2;
                }
                if ((sp3B8 >> 1) != 0) {
                    do {
                        var_a0_4->unk0 = 0;
                        var_a0_4->unk4 = 0.0f;
                        var_a0_4->unk8 = 0.0f;
                        var_a0_4->unkC = 0.0f;
                        var_a1_2 -= 2;
                        var_a0_4->unk10 = 0.0f;
                        var_a0_4 += 0x18;
                        var_a0_4->unk-4 = 0.0f;
                        var_a2 += 6;
                    } while (var_a1_2 != -1);
                }
            }
            var_a5_2 = sp4B8 != 0;
            temp_v0_4 = (sp490 - (sp478 + var_a5_2)) - 2;
            temp_v0_5 = (temp_v0_4 > 4) ? 4 : temp_v0_4;
            temp_at = 0x10 - (1 << temp_v0_5);
            sp450 = sp450 + (sp478 * 0xC) + 0x30;
            var_a1_3 = temp_v0_5 - 1;
            sp3C8 = temp_v0_5;
            sp498->unkA10C = (s32) temp_v0_5;
            sp430 = 4 - temp_v0_5;
            if (var_a1_3 != -1) {
                temp_at_2 = sp3C8 & 3;
                sp398 = sp3C8;
                var_a0_5 = &(&sp28)[var_a2];
                sp448 = temp_at_2;
                if (temp_at_2 != 0) {
                    do {
                        var_a0_5->unk0 = sp450->unk0;
                        temp_v1_5 = sp448 - 1;
                        sp448 = temp_v1_5;
                        var_a0_5->unk4 = (f32) sp450->unk4;
                        var_a1_3 -= 1;
                        temp_f1 = sp450->unk8;
                        var_a0_5 += 0xC;
                        sp450 += 0xC;
                        var_a2 += 3;
                        var_a0_5->unk-4 = temp_f1;
                    } while (temp_v1_5 != 0);
                }
                sp298 = sp450;
                if ((sp398 >> 2) != 0) {
                    sp400 = var_a5_2;
                    var_a5_3 = sp450;
                    do {
                        var_a0_5->unk0 = var_a5_3->unk0;
                        var_a0_5->unk4 = (f32) var_a5_3->unk4;
                        var_a0_5->unk8 = (f32) var_a5_3->unk8;
                        var_a0_5->unkC = (f32) var_a5_3->unkC;
                        var_a0_5->unk10 = (f32) var_a5_3->unk10;
                        var_a0_5->unk14 = (f32) var_a5_3->unk14;
                        var_a0_5->unk18 = (f32) var_a5_3->unk18;
                        var_a0_5->unk1C = (f32) var_a5_3->unk1C;
                        var_a0_5->unk20 = (f32) var_a5_3->unk20;
                        var_a0_5->unk24 = (f32) var_a5_3->unk24;
                        var_a0_5->unk28 = (f32) var_a5_3->unk28;
                        var_a1_3 -= 4;
                        temp_f4 = var_a5_3->unk2C;
                        var_a5_3 += 0x30;
                        var_a0_5 += 0x30;
                        var_a2 += 0xC;
                        var_a0_5->unk-4 = temp_f4;
                    } while (var_a1_3 != -1);
                    var_a5_2 = sp400;
                }
            }
            var_a1_4 = sp430 - 1;
            var_v1 = var_a5_2 * 4;
            if (var_a1_4 != -1) {
                sp390 = sp430;
                var_a0_6 = &(&sp28)[var_a2];
                if (sp430 & 1) {
                    var_a0_6->unk0 = 0;
                    var_a0_6->unk4 = 0.0f;
                    var_a0_6 += 0xC;
                    var_a0_6->unk-4 = 0.0f;
                    var_a2 += 3;
                    var_a1_4 = sp430 - 2;
                }
                if ((sp390 >> 1) != 0) {
                    do {
                        var_a0_6->unk0 = 0;
                        var_a0_6->unk4 = 0.0f;
                        var_a0_6->unk8 = 0.0f;
                        var_a0_6->unkC = 0.0f;
                        var_a1_4 -= 2;
                        var_a0_6->unk10 = 0.0f;
                        var_a0_6 += 0x18;
                        var_a0_6->unk-4 = 0.0f;
                        var_a2 += 6;
                    } while (var_a1_4 != -1);
                }
                var_v1 = var_a5_2 * 4;
            }
            temp_v0_6 = sp458 != 0;
            sp470 = temp_v0_6;
            var_ra = (void *) sp568 + ((var_v1 - var_a5_2) * 4) + 0x24;
            temp_v0_7 = (sp460 - (var_a5_2 + temp_v0_6)) - 1;
            temp_v0_8 = (temp_v0_7 > 4) ? 4 : temp_v0_7;
            temp_at_3 = 0x10 - (1 << temp_v0_8);
            var_a1_5 = temp_v0_8 - 1;
            sp3E0 = temp_v0_8;
            sp498->unkA110 = (s32) temp_v0_8;
            sp438 = 4 - temp_v0_8;
            if (var_a1_5 != -1) {
                var_a5_4 = sp3E0 & 3;
                sp3A8 = sp3E0;
                var_a0_7 = &(&sp28)[var_a2];
                if (var_a5_4 != 0) {
                    do {
                        var_a0_7->unk0 = var_ra->unk0;
                        var_a0_7->unk4 = (f32) var_ra->unk4;
                        var_a1_5 -= 1;
                        var_a5_4 -= 1;
                        temp_f16 = var_ra->unk8;
                        var_ra += 0xC;
                        var_a0_7 += 0xC;
                        var_a2 += 3;
                        var_a0_7->unk-4 = temp_f16;
                    } while (var_a5_4 != 0);
                }
                sp460 = var_a1_5;
                sp2A0 = var_a1_5;
                if ((sp3A8 >> 2) != 0) {
                    var_a1_6 = sp460;
                    var_a5_5 = var_ra;
                    do {
                        var_a0_7->unk0 = var_a5_5->unk0;
                        var_a0_7->unk4 = (f32) var_a5_5->unk4;
                        var_a0_7->unk8 = (f32) var_a5_5->unk8;
                        var_a0_7->unkC = (f32) var_a5_5->unkC;
                        var_a0_7->unk10 = (f32) var_a5_5->unk10;
                        var_a0_7->unk14 = (f32) var_a5_5->unk14;
                        var_a0_7->unk18 = (f32) var_a5_5->unk18;
                        var_a0_7->unk1C = (f32) var_a5_5->unk1C;
                        var_a0_7->unk20 = (f32) var_a5_5->unk20;
                        var_a0_7->unk24 = (f32) var_a5_5->unk24;
                        var_a0_7->unk28 = (f32) var_a5_5->unk28;
                        var_a1_6 -= 4;
                        temp_f19 = var_a5_5->unk2C;
                        var_a5_5 += 0x30;
                        var_a0_7 += 0x30;
                        var_a2 += 0xC;
                        var_a0_7->unk-4 = temp_f19;
                    } while (var_a1_6 != -1);
                }
            }
            var_a1_7 = sp438 - 1;
            if (var_a1_7 != -1) {
                var_a0_8 = &(&sp28)[var_a2];
                if (sp438 & 1) {
                    var_a0_8->unk0 = 0;
                    var_a0_8->unk4 = 0.0f;
                    var_a0_8 += 0xC;
                    var_a0_8->unk-4 = 0.0f;
                    var_a2 += 3;
                    var_a1_7 = sp438 - 2;
                }
                if ((sp438 >> 1) != 0) {
                    do {
                        var_a0_8->unk0 = 0;
                        var_a0_8->unk4 = 0.0f;
                        var_a0_8->unk8 = 0.0f;
                        var_a0_8->unkC = 0.0f;
                        var_a1_7 -= 2;
                        var_a0_8->unk10 = 0.0f;
                        var_a0_8 += 0x18;
                        var_a0_8->unk-4 = 0.0f;
                        var_a2 += 6;
                    } while (var_a1_7 != -1);
                }
            }
            temp_v0_9 = (sp4B0 - (sp468 + sp470)) - 2;
            temp_v0_10 = (temp_v0_9 > 4) ? 4 : temp_v0_9;
            var_a5_6 = sp3E8 + sp410 + 0x30;
            var_ra_2 = 4 - temp_v0_10;
            temp_at_4 = 0x10 - (1 << temp_v0_10);
            var_a1_8 = temp_v0_10 - 1;
            sp3D8 = temp_v0_10;
            var_s5_2 = var_s5_3 & ~(temp_v0_2 << 0xC) & ~(temp_at << 0x14) & ~(temp_at_3 << 0x18) & ~(temp_at_4 << 0x10);
            sp498->unkA108 = (s32) temp_v0_10;
            var_s6 = var_s6_2 & ~(temp_v0_2 << 8) & ~(temp_at << 0x10) & ~(temp_at_3 << 0x14) & ~(temp_at_4 << 0xC);
            if (var_a1_8 != -1) {
                sp3D0 = var_ra_2;
                var_ra_3 = sp3D8 & 3;
                sp3B0 = sp3D8;
                var_a0_9 = &(&sp28)[var_a2];
                if (var_ra_3 != 0) {
                    do {
                        var_a0_9->unk0 = var_a5_6->unk0;
                        var_a0_9->unk4 = (f32) var_a5_6->unk4;
                        var_a1_8 -= 1;
                        var_ra_3 -= 1;
                        temp_f5 = var_a5_6->unk8;
                        var_a5_6 += 0xC;
                        var_a0_9 += 0xC;
                        var_a2 += 3;
                        var_a0_9->unk-4 = temp_f5;
                    } while (var_ra_3 != 0);
                }
                sp410 = (s64) var_a5_6;
                if ((sp3B0 >> 2) != 0) {
                    var_a5_7 = sp410;
                    do {
                        var_a0_9->unk0 = var_a5_7->unk0;
                        var_a0_9->unk4 = (f32) var_a5_7->unk4;
                        var_a0_9->unk8 = (f32) var_a5_7->unk8;
                        var_a0_9->unkC = (f32) var_a5_7->unkC;
                        var_a0_9->unk10 = (f32) var_a5_7->unk10;
                        var_a0_9->unk14 = (f32) var_a5_7->unk14;
                        var_a0_9->unk18 = (f32) var_a5_7->unk18;
                        var_a0_9->unk1C = (f32) var_a5_7->unk1C;
                        var_a0_9->unk20 = (f32) var_a5_7->unk20;
                        var_a0_9->unk24 = (f32) var_a5_7->unk24;
                        var_a0_9->unk28 = (f32) var_a5_7->unk28;
                        var_a1_8 -= 4;
                        temp_f8 = var_a5_7->unk2C;
                        var_a5_7 += 0x30;
                        var_a0_9 += 0x30;
                        var_a2 += 0xC;
                        var_a0_9->unk-4 = temp_f8;
                    } while (var_a1_8 != -1);
                }
                var_ra_2 = sp3D0;
            }
            var_a1_9 = var_ra_2 - 1;
            if (var_a1_9 != -1) {
                sp3D0 = var_ra_2;
                var_a0_10 = &(&sp28)[var_a2];
                if (var_ra_2 & 1) {
                    var_a0_10->unk0 = 0;
                    var_a0_10->unk4 = 0.0f;
                    var_a0_10->unk8 = 0.0f;
                    var_a0_10 += 0xC;
                    var_a1_9 = sp3D0 - 2;
                }
                if ((var_ra_2 >> 1) != 0) {
                    do {
                        var_a0_10->unk0 = 0;
                        var_a0_10->unk4 = 0.0f;
                        var_a0_10->unk8 = 0.0f;
                        var_a0_10->unkC = 0.0f;
                        var_a1_9 -= 2;
                        var_a0_10->unk10 = 0.0f;
                        var_a0_10->unk14 = 0.0f;
                        var_a0_10 += 0x18;
                    } while (var_a1_9 != -1);
                }
            }
            var_a0_2 = (u8) sp488;
            break;
        case 0x2A23:                                /* switch 1 */
            sp498->unkA100 = 4;
            sp28 = temp_s6_2->unk4;
            sp2C = temp_s6_2->unk8;
            sp30 = temp_s6_2->unkC;
            sp34 = (f32) temp_s6->unk4;
            sp38 = sp410->unk4;
            sp3C = sp410->unk8;
            sp40 = sp410->unkC;
            sp44 = (f32) sp410->unk0;
            sp48 = temp_s7_2->unk4;
            sp4C = temp_s7_2->unk8;
            sp50 = temp_s7_2->unkC;
            sp54 = (f32) temp_s7->unk4;
            sp58 = var_s5->unk4;
            sp5C = var_s5->unk8;
            sp60 = var_s5->unkC;
            sp268 = 4;
            var_s4 = 0x1AC;
            sp64 = (f32) var_s5->unk0;
            if ((sp4A8 >= 3) && (temp_a0_6 = sp410 + (sp4B0 * 0x10), (temp_a0_6->unk14 == temp_s6_2->unk34)) && (temp_a0_6->unk18 == temp_s6_2->unk38) && (sp560 = (s64) temp_s6_2, sp568 = (s64) var_s5, (temp_a0_6->unk1C == temp_s6_2->unk3C))) {
                sp68 = sp560->unk34;
                sp6C = sp560->unk38;
                sp70 = sp560->unk3C;
                var_s6_3 = 0xFFFFFF;
                sp488 = 1;
                var_s5_4 = 0x1FFFFFFF;
                sp74 = (f32) sp560->unk30;
            } else {
                sp488 = 0;
                sp568 = (s64) var_s5;
                sp560 = (s64) temp_s6_2;
                sp74 = 0.0f;
                sp70 = 0;
                sp6C = 0.0f;
                var_s6_3 = 0xFFFFEF;
                var_s5_4 = 0x1FFFFFCF;
                sp68 = 0;
            }
            if ((sp490 >= 4) && (temp_a0_7 = sp560 + (sp4A8 * 0x10), (temp_a0_7->unk14 == temp_s7_2->unk44)) && (temp_a0_7->unk18 == temp_s7_2->unk48) && (temp_a0_7->unk1C == temp_s7_2->unk4C)) {
                sp78 = temp_s7_2->unk44;
                sp7C = temp_s7_2->unk48;
                sp80 = temp_s7_2->unk4C;
                var_a4_2 = 1;
                sp26C = 1;
                sp84 = (f32) temp_s7_2->unk40;
            } else {
                sp26C = 0;
                sp84 = 0.0f;
                var_a4_2 = 0;
                sp80 = 0;
                sp7C = 0.0f;
                var_s5_4 &= ~0xC0;
                var_s6_3 &= ~0x20;
                sp78 = 0;
            }
            if ((sp460 >= 3) && (temp_a0_8 = temp_s7_2 + (sp490 * 0x10), (temp_a0_8->unk14 == ((void *) sp568)->unk34)) && (temp_a0_8->unk18 == ((void *) sp568)->unk38) && (temp_a0_8->unk1C == ((void *) sp568)->unk3C)) {
                sp88 = ((void *) sp568)->unk34;
                sp8C = ((void *) sp568)->unk38;
                sp90 = ((void *) sp568)->unk3C;
                sp4B8 = 1;
                sp94 = (f32) ((void *) sp568)->unk30;
            } else {
                sp4B8 = 0;
                sp94 = 0.0f;
                sp90 = 0;
                sp8C = 0;
                var_s5_4 &= ~0x300;
                var_s6_3 &= ~0x40;
                sp88 = 0;
            }
            if ((sp4B0 >= 4) && (temp_a0_9 = (void *) sp568 + (sp460 * 0x10), (temp_a0_9->unk14 == sp410->unk44)) && (temp_a0_9->unk18 == sp410->unk48) && (temp_a0_9->unk1C == sp410->unk4C)) {
                sp28.unk70 = (s32) sp410->unk44;
                sp28.unk74 = (s32) sp410->unk48;
                sp28.unk78 = (s32) sp410->unk4C;
                sp458 = 1;
                sp26D = 1;
                var_a2_2 = 0x20;
                sp418 = var_a4_2;
                var_a0_11 = &sp28 + 0x80;
                sp28.unk7C = (f32) sp410->unk40;
            } else {
                sp26D = 0;
                sp458 = 0;
                sp418 = var_a4_2;
                sp28.unk7C = 0.0f;
                var_a2_2 = 0x20;
                sp28.unk78 = 0;
                var_s5_4 &= ~0xC00;
                sp28.unk74 = 0;
                var_a0_11 = &sp28 + 0x80;
                var_s6_3 &= ~0x80;
                sp28.unk70 = 0;
            }
            temp_v0_11 = sp488 != 0;
            sp468 = temp_v0_11;
            temp_a1_3 = sp418 != 0;
            sp478 = temp_a1_3;
            temp_v0_12 = temp_v0_11 * 0x10;
            var_a5_8 = temp_v0_12 + sp560 + 0x30;
            temp_v1_6 = (sp4A8 - (temp_v0_11 + temp_a1_3)) - 1;
            sp380 = temp_v0_12;
            temp_v1_7 = (temp_v1_6 > 4) ? 4 : temp_v1_6;
            sp370 = 4 - temp_v1_7;
            temp_v0_13 = 0x10 - (1 << temp_v1_7);
            var_a1_10 = temp_v1_7 - 1;
            sp350 = temp_v1_7;
            sp498->unkA104 = (s32) temp_v1_7;
            if (var_a1_10 != -1) {
                sp348 = sp350;
                temp_v1_8 = sp350 & 3;
                sp428 = temp_v1_8;
                if (temp_v1_8 != 0) {
                    do {
                        var_a0_11->unk0 = var_a5_8->unk4;
                        var_a0_11->unk4 = (f32) var_a5_8->unk8;
                        var_a0_11->unk8 = (f32) var_a5_8->unkC;
                        temp_f4_2 = (f32) var_a5_8->unk0;
                        var_a1_10 -= 1;
                        temp_at_5 = sp428 - 1;
                        var_a5_8 += 0x10;
                        var_a0_11 += 0x10;
                        sp428 = temp_at_5;
                        var_a2_2 += 4;
                        var_a0_11->unk-4 = temp_f4_2;
                    } while (temp_at_5 != 0);
                }
                if ((sp348 >> 2) != 0) {
                    do {
                        var_a0_11->unk0 = var_a5_8->unk4;
                        var_a0_11->unk4 = (f32) var_a5_8->unk8;
                        var_a0_11->unk8 = (f32) var_a5_8->unkC;
                        var_a0_11->unkC = (f32) var_a5_8->unk0;
                        var_a0_11->unk10 = (f32) var_a5_8->unk14;
                        var_a0_11->unk14 = (f32) var_a5_8->unk18;
                        var_a0_11->unk18 = (f32) var_a5_8->unk1C;
                        var_a0_11->unk1C = (f32) var_a5_8->unk10;
                        var_a0_11->unk20 = (f32) var_a5_8->unk24;
                        var_a0_11->unk24 = (f32) var_a5_8->unk28;
                        var_a0_11->unk28 = (f32) var_a5_8->unk2C;
                        var_a0_11->unk2C = (f32) var_a5_8->unk20;
                        var_a0_11->unk30 = (f32) var_a5_8->unk34;
                        var_a0_11->unk34 = (f32) var_a5_8->unk38;
                        var_a0_11->unk38 = (f32) var_a5_8->unk3C;
                        temp_f8_2 = (f32) var_a5_8->unk30;
                        var_a1_10 -= 4;
                        var_a5_8 += 0x40;
                        var_a0_11 += 0x40;
                        var_a2_2 += 0x10;
                        var_a0_11->unk-4 = temp_f8_2;
                    } while (var_a1_10 != -1);
                }
            }
            var_a1_11 = sp370 - 1;
            if (var_a1_11 != -1) {
                var_a0_12 = &(&sp28)[var_a2_2];
                do {
                    var_a0_12->unk0 = 0;
                    var_a0_12->unk4 = 0.0f;
                    var_a1_11 -= 1;
                    var_a0_12->unk8 = 0.0f;
                    var_a0_12 += 0x10;
                    var_a0_12->unk-4 = 0.0f;
                    var_a2_2 += 4;
                } while (var_a1_11 != -1);
            }
            var_a5_9 = sp4B8 != 0;
            var_s7 = temp_s7_2 + (sp478 * 0x10) + 0x40;
            temp_v0_14 = (sp490 - (sp478 + var_a5_9)) - 2;
            temp_v0_15 = (temp_v0_14 > 4) ? 4 : temp_v0_14;
            temp_at_6 = 0x10 - (1 << temp_v0_15);
            var_a1_12 = temp_v0_15 - 1;
            sp358 = temp_v0_15;
            sp498->unkA10C = (s32) temp_v0_15;
            sp378 = 4 - temp_v0_15;
            if (var_a1_12 != -1) {
                temp_at_7 = sp358 & 3;
                sp338 = sp358;
                var_a0_13 = &(&sp28)[var_a2_2];
                sp420 = temp_at_7;
                if (temp_at_7 != 0) {
                    do {
                        var_a0_13->unk0 = var_s7->unk4;
                        var_a0_13->unk4 = (f32) var_s7->unk8;
                        var_a0_13->unk8 = (f32) var_s7->unkC;
                        temp_f29 = (f32) var_s7->unk0;
                        var_a1_12 -= 1;
                        temp_v1_9 = sp420 - 1;
                        var_s7 += 0x10;
                        var_a0_13 += 0x10;
                        sp420 = temp_v1_9;
                        var_a2_2 += 4;
                        var_a0_13->unk-4 = temp_f29;
                    } while (temp_v1_9 != 0);
                }
                sp290 = (s64) var_s7;
                if ((sp338 >> 2) != 0) {
                    sp400 = var_a5_9;
                    var_a5_10 = var_s7;
                    do {
                        var_a0_13->unk0 = var_a5_10->unk4;
                        var_a0_13->unk4 = (f32) var_a5_10->unk8;
                        var_a0_13->unk8 = (f32) var_a5_10->unkC;
                        var_a0_13->unkC = (f32) var_a5_10->unk0;
                        var_a0_13->unk10 = (f32) var_a5_10->unk14;
                        var_a0_13->unk14 = (f32) var_a5_10->unk18;
                        var_a0_13->unk18 = (f32) var_a5_10->unk1C;
                        var_a0_13->unk1C = (f32) var_a5_10->unk10;
                        var_a0_13->unk20 = (f32) var_a5_10->unk24;
                        var_a0_13->unk24 = (f32) var_a5_10->unk28;
                        var_a0_13->unk28 = (f32) var_a5_10->unk2C;
                        var_a0_13->unk2C = (f32) var_a5_10->unk20;
                        var_a0_13->unk30 = (f32) var_a5_10->unk34;
                        var_a0_13->unk34 = (f32) var_a5_10->unk38;
                        var_a0_13->unk38 = (f32) var_a5_10->unk3C;
                        temp_f2 = (f32) var_a5_10->unk30;
                        var_a1_12 -= 4;
                        var_a5_10 += 0x40;
                        var_a0_13 += 0x40;
                        var_a2_2 += 0x10;
                        var_a0_13->unk-4 = temp_f2;
                    } while (var_a1_12 != -1);
                    var_a5_9 = sp400;
                }
            }
            var_a1_13 = sp378 - 1;
            if (var_a1_13 != -1) {
                var_a0_14 = &(&sp28)[var_a2_2];
                do {
                    var_a0_14->unk0 = 0;
                    var_a0_14->unk4 = 0.0f;
                    var_a1_13 -= 1;
                    var_a0_14->unk8 = 0.0f;
                    var_a0_14 += 0x10;
                    var_a0_14->unk-4 = 0.0f;
                    var_a2_2 += 4;
                } while (var_a1_13 != -1);
            }
            temp_v0_16 = sp458 != 0;
            sp470 = temp_v0_16;
            var_ra_4 = (void *) sp568 + (var_a5_9 * 0x10) + 0x30;
            temp_v0_17 = (sp460 - (var_a5_9 + temp_v0_16)) - 1;
            temp_v0_18 = (temp_v0_17 > 4) ? 4 : temp_v0_17;
            temp_at_8 = 0x10 - (1 << temp_v0_18);
            var_a1_14 = temp_v0_18 - 1;
            sp360 = temp_v0_18;
            sp498->unkA110 = (s32) temp_v0_18;
            sp388 = 4 - temp_v0_18;
            if (var_a1_14 != -1) {
                var_s7_2 = sp360 & 3;
                var_a0_15 = &(&sp28)[var_a2_2];
                if (var_s7_2 != 0) {
                    do {
                        var_a0_15->unk0 = var_ra_4->unk4;
                        var_a0_15->unk4 = (f32) var_ra_4->unk8;
                        var_a0_15->unk8 = (f32) var_ra_4->unkC;
                        temp_f18 = (f32) var_ra_4->unk0;
                        var_a1_14 -= 1;
                        var_s7_2 -= 1;
                        var_ra_4 += 0x10;
                        var_a0_15 += 0x10;
                        var_a2_2 += 4;
                        var_a0_15->unk-4 = temp_f18;
                    } while (var_s7_2 != 0);
                }
                sp460 = var_a1_14;
                if ((sp360 >> 2) != 0) {
                    var_a1_15 = sp460;
                    var_a5_11 = var_ra_4;
                    do {
                        var_a0_15->unk0 = var_a5_11->unk4;
                        var_a0_15->unk4 = (f32) var_a5_11->unk8;
                        var_a0_15->unk8 = (f32) var_a5_11->unkC;
                        var_a0_15->unkC = (f32) var_a5_11->unk0;
                        var_a0_15->unk10 = (f32) var_a5_11->unk14;
                        var_a0_15->unk14 = (f32) var_a5_11->unk18;
                        var_a0_15->unk18 = (f32) var_a5_11->unk1C;
                        var_a0_15->unk1C = (f32) var_a5_11->unk10;
                        var_a0_15->unk20 = (f32) var_a5_11->unk24;
                        var_a0_15->unk24 = (f32) var_a5_11->unk28;
                        var_a0_15->unk28 = (f32) var_a5_11->unk2C;
                        var_a0_15->unk2C = (f32) var_a5_11->unk20;
                        var_a0_15->unk30 = (f32) var_a5_11->unk34;
                        var_a0_15->unk34 = (f32) var_a5_11->unk38;
                        var_a0_15->unk38 = (f32) var_a5_11->unk3C;
                        temp_f25 = (f32) var_a5_11->unk30;
                        var_a1_15 -= 4;
                        var_a5_11 += 0x40;
                        var_a0_15 += 0x40;
                        var_a2_2 += 0x10;
                        var_a0_15->unk-4 = temp_f25;
                    } while (var_a1_15 != -1);
                }
            }
            var_a1_16 = sp388 - 1;
            if (var_a1_16 != -1) {
                var_a0_16 = &(&sp28)[var_a2_2];
                do {
                    var_a0_16->unk0 = 0;
                    var_a0_16->unk4 = 0.0f;
                    var_a1_16 -= 1;
                    var_a0_16->unk8 = 0.0f;
                    var_a0_16 += 0x10;
                    var_a0_16->unk-4 = 0.0f;
                    var_a2_2 += 4;
                } while (var_a1_16 != -1);
            }
            temp_at_9 = (sp4B0 - (sp468 + sp470)) - 2;
            temp_at_10 = (temp_at_9 > 4) ? 4 : temp_at_9;
            var_a5_12 = sp380 + sp410 + 0x40;
            temp_ra = 0x10 - (1 << temp_at_10);
            var_a1_17 = temp_at_10 - 1;
            sp368 = temp_at_10;
            var_s5_2 = var_s5_4 & ~(temp_v0_13 << 0xC) & ~(temp_at_6 << 0x14) & ~(temp_at_8 << 0x18) & ~(temp_ra << 0x10);
            sp498->unkA108 = (s32) temp_at_10;
            var_s6 = var_s6_3 & ~(temp_v0_13 << 8) & ~(temp_at_6 << 0x10) & ~(temp_at_8 << 0x14) & ~(temp_ra << 0xC);
            if (var_a1_17 != -1) {
                var_ra_5 = sp368 & 3;
                sp340 = sp368;
                var_a0_17 = &(&sp28)[var_a2_2];
                if (var_ra_5 != 0) {
                    do {
                        var_a0_17->unk0 = var_a5_12->unk4;
                        var_a0_17->unk4 = (f32) var_a5_12->unk8;
                        var_a0_17->unk8 = (f32) var_a5_12->unkC;
                        temp_f12_2 = (f32) var_a5_12->unk0;
                        var_a1_17 -= 1;
                        var_ra_5 -= 1;
                        var_a5_12 += 0x10;
                        var_a0_17 += 0x10;
                        var_a2_2 += 4;
                        var_a0_17->unk-4 = temp_f12_2;
                    } while (var_ra_5 != 0);
                }
                sp410 = (s64) var_a5_12;
                if ((sp340 >> 2) != 0) {
                    var_a5_13 = sp410;
                    do {
                        var_a0_17->unk0 = var_a5_13->unk4;
                        var_a0_17->unk4 = (f32) var_a5_13->unk8;
                        var_a0_17->unk8 = (f32) var_a5_13->unkC;
                        var_a0_17->unkC = (f32) var_a5_13->unk0;
                        var_a0_17->unk10 = (f32) var_a5_13->unk14;
                        var_a0_17->unk14 = (f32) var_a5_13->unk18;
                        var_a0_17->unk18 = (f32) var_a5_13->unk1C;
                        var_a0_17->unk1C = (f32) var_a5_13->unk10;
                        var_a0_17->unk20 = (f32) var_a5_13->unk24;
                        var_a0_17->unk24 = (f32) var_a5_13->unk28;
                        var_a0_17->unk28 = (f32) var_a5_13->unk2C;
                        var_a0_17->unk2C = (f32) var_a5_13->unk20;
                        var_a0_17->unk30 = (f32) var_a5_13->unk34;
                        var_a0_17->unk34 = (f32) var_a5_13->unk38;
                        var_a0_17->unk38 = (f32) var_a5_13->unk3C;
                        temp_f16_2 = (f32) var_a5_13->unk30;
                        var_a1_17 -= 4;
                        var_a5_13 += 0x40;
                        var_a0_17 += 0x40;
                        var_a2_2 += 0x10;
                        var_a0_17->unk-4 = temp_f16_2;
                    } while (var_a1_17 != -1);
                }
            }
            var_a1_18 = (4 - temp_at_10) - 1;
            if (var_a1_18 != -1) {
                var_a0_18 = &(&sp28)[var_a2_2];
                do {
                    var_a0_18->unk0 = 0;
                    var_a0_18->unk4 = 0.0f;
                    var_a1_18 -= 1;
                    var_a0_18->unk8 = 0.0f;
                    var_a0_18->unkC = 0.0f;
                    var_a0_18 += 0x10;
                } while (var_a1_18 != -1);
            }
            var_a0_2 = (u8) sp488;
            break;
        case 0x2A27:                                /* switch 1 */
            sp498->unkA100 = 5;
            sp28 = temp_s6_2->unk8;
            sp2C = temp_s6_2->unkC;
            sp30 = temp_s6_2->unk10;
            sp34 = temp_s6->unk4;
            sp38 = temp_s6_2->unk4;
            sp3C = sp410->unk8;
            sp40 = sp410->unkC;
            sp44 = sp410->unk10;
            sp48 = sp410->unk0;
            sp4C = sp410->unk4;
            sp50 = temp_s7_2->unk8;
            sp54 = temp_s7_2->unkC;
            sp58 = temp_s7_2->unk10;
            sp5C = temp_s7->unk4;
            sp60 = temp_s7_2->unk4;
            sp64 = var_s5->unk8;
            sp68 = var_s5->unkC;
            sp6C = var_s5->unk10;
            sp70 = var_s5->unk0;
            sp268 = 5;
            var_s4 = 0x1AF;
            sp74 = var_s5->unk4;
            if ((sp4A8 >= 3) && (temp_a0_10 = sp410 + (sp4B0 * 0x14), (temp_a0_10->unk1C == temp_s6_2->unk44)) && (temp_a0_10->unk20 == temp_s6_2->unk48) && (sp560 = (s64) temp_s6_2, sp568 = (s64) var_s5, (temp_a0_10->unk24 == temp_s6_2->unk4C))) {
                sp78 = sp560->unk44;
                sp7C = sp560->unk48;
                sp80 = sp560->unk4C;
                sp84 = sp560->unk3C;
                sp488 = 1;
                var_s6_4 = 0xFFFFFF;
                var_s5_5 = 0x1FFFFFFF;
                sp88 = sp560->unk40;
            } else {
                sp488 = 0;
                sp568 = (s64) var_s5;
                sp560 = (s64) temp_s6_2;
                sp88 = 0;
                sp84 = 0.0f;
                sp80 = 0;
                sp7C = 0.0f;
                var_s6_4 = 0xFFFFEF;
                var_s5_5 = 0x1FFFFFCF;
                sp78 = 0;
            }
            if ((sp490 >= 4) && (temp_a0_11 = sp560 + (sp4A8 * 0x14), (temp_a0_11->unk1C == temp_s7_2->unk58)) && (temp_a0_11->unk20 == temp_s7_2->unk5C) && (temp_a0_11->unk24 == temp_s7_2->unk60)) {
                sp8C = temp_s7_2->unk58;
                sp90 = temp_s7_2->unk5C;
                sp94 = temp_s7_2->unk60;
                sp98 = temp_s7_2->unk50;
                var_a4_3 = 1;
                sp26C = 1;
                sp9C = temp_s7_2->unk54;
            } else {
                sp26C = 0;
                sp9C = 0;
                sp98 = 0.0f;
                var_a4_3 = 0;
                sp94 = 0.0f;
                sp90 = 0;
                var_s5_5 &= ~0xC0;
                var_s6_4 &= ~0x20;
                sp8C = 0;
            }
            if ((sp460 >= 3) && (temp_a0_12 = temp_s7_2 + (sp490 * 0x14), (temp_a0_12->unk1C == ((void *) sp568)->unk44)) && (temp_a0_12->unk20 == ((void *) sp568)->unk48) && (temp_a0_12->unk24 == ((void *) sp568)->unk4C)) {
                spA0 = ((void *) sp568)->unk44;
                spA4 = ((void *) sp568)->unk48;
                spA8 = ((void *) sp568)->unk4C;
                spAC = ((void *) sp568)->unk3C;
                sp4B8 = 1;
                spB0 = ((void *) sp568)->unk40;
            } else {
                sp4B8 = 0;
                spB0 = 0;
                spAC = 0.0f;
                spA8 = 0;
                spA4 = 0;
                var_s5_5 &= ~0x300;
                var_s6_4 &= ~0x40;
                spA0 = 0;
            }
            if ((sp4B0 >= 4) && (temp_a0_13 = (void *) sp568 + (sp460 * 0x14), (temp_a0_13->unk1C == sp410->unk58)) && (temp_a0_13->unk20 == sp410->unk5C) && (temp_a0_13->unk24 == sp410->unk60)) {
                sp28.unk8C = (s32) sp410->unk58;
                sp28.unk90 = (s32) sp410->unk5C;
                sp418 = var_a4_3;
                sp28.unk94 = (s32) sp410->unk60;
                sp458 = 1;
                sp28.unk98 = (f32) sp410->unk50;
                var_a2_3 = 0x28;
                sp26D = 1;
                var_a0_19 = &sp28 + 0xA0;
                sp28.unk9C = (f32) sp410->unk54;
            } else {
                sp26D = 0;
                sp458 = 0;
                sp418 = var_a4_3;
                sp28.unk9C = 0.0f;
                sp28.unk98 = 0.0f;
                var_a2_3 = 0x28;
                sp28.unk94 = 0;
                var_s5_5 &= ~0xC00;
                sp28.unk90 = 0;
                var_a0_19 = &sp28 + 0xA0;
                var_s6_4 &= ~0x80;
                sp28.unk8C = 0;
            }
            temp_a1_4 = sp488 != 0;
            temp_a4_4 = sp418 != 0;
            temp_v1_10 = temp_a1_4 * 0x14;
            sp478 = temp_a4_4;
            var_a5_14 = temp_v1_10 + sp560 + 0x3C;
            temp_a3_3 = (sp4A8 - (temp_a1_4 + temp_a4_4)) - 1;
            sp330 = temp_v1_10;
            temp_a3_4 = (temp_a3_3 > 4) ? 4 : temp_a3_3;
            sp468 = temp_a1_4;
            var_a1_19 = temp_a3_4 - 1;
            temp_v1_11 = 0x10 - (1 << temp_a3_4);
            sp328 = 4 - temp_a3_4;
            sp308 = temp_a3_4;
            sp498->unkA104 = (s32) temp_a3_4;
            if (var_a1_19 != -1) {
                sp2E8 = sp308;
                temp_a3_5 = sp308 & 3;
                sp3F8 = temp_a3_5;
                if (temp_a3_5 != 0) {
                    do {
                        var_a0_19->unk0 = var_a5_14->unk8;
                        var_a0_19->unk4 = (f32) var_a5_14->unkC;
                        var_a0_19->unk8 = (f32) var_a5_14->unk10;
                        var_a0_19->unkC = (f32) var_a5_14->unk0;
                        var_a1_19 -= 1;
                        temp_v0_19 = sp3F8 - 1;
                        temp_f29_2 = var_a5_14->unk4;
                        var_a5_14 += 0x14;
                        var_a0_19 += 0x14;
                        sp3F8 = temp_v0_19;
                        var_a2_3 += 5;
                        var_a0_19->unk-4 = temp_f29_2;
                    } while (temp_v0_19 != 0);
                }
                if ((sp2E8 >> 2) != 0) {
                    do {
                        var_a0_19->unk0 = var_a5_14->unk8;
                        var_a0_19->unk4 = (f32) var_a5_14->unkC;
                        var_a0_19->unk8 = (f32) var_a5_14->unk10;
                        var_a0_19->unkC = (f32) var_a5_14->unk0;
                        var_a0_19->unk10 = (f32) var_a5_14->unk4;
                        var_a0_19->unk14 = (f32) var_a5_14->unk1C;
                        var_a0_19->unk18 = (f32) var_a5_14->unk20;
                        var_a0_19->unk1C = (f32) var_a5_14->unk24;
                        var_a0_19->unk20 = (f32) var_a5_14->unk14;
                        var_a0_19->unk24 = (f32) var_a5_14->unk18;
                        var_a0_19->unk28 = (f32) var_a5_14->unk30;
                        var_a0_19->unk2C = (f32) var_a5_14->unk34;
                        var_a0_19->unk30 = (f32) var_a5_14->unk38;
                        var_a0_19->unk34 = (f32) var_a5_14->unk28;
                        var_a0_19->unk38 = (f32) var_a5_14->unk2C;
                        var_a0_19->unk3C = (f32) var_a5_14->unk44;
                        var_a0_19->unk40 = (f32) var_a5_14->unk48;
                        var_a0_19->unk44 = (f32) var_a5_14->unk4C;
                        var_a0_19->unk48 = (f32) var_a5_14->unk3C;
                        var_a1_19 -= 4;
                        temp_f3 = var_a5_14->unk40;
                        var_a5_14 += 0x50;
                        var_a0_19 += 0x50;
                        var_a2_3 += 0x14;
                        var_a0_19->unk-4 = temp_f3;
                    } while (var_a1_19 != -1);
                }
            }
            var_a1_20 = sp328 - 1;
            if (var_a1_20 != -1) {
                var_a0_20 = &(&sp28)[var_a2_3];
                do {
                    var_a0_20->unk0 = 0;
                    var_a0_20->unk4 = 0.0f;
                    var_a0_20->unk8 = 0.0f;
                    var_a1_20 -= 1;
                    var_a0_20->unkC = 0.0f;
                    var_a0_20 += 0x14;
                    var_a0_20->unk-4 = 0.0f;
                    var_a2_3 += 5;
                } while (var_a1_20 != -1);
            }
            temp_a1_5 = sp4B8 != 0;
            temp_v0_20 = (sp490 - (sp478 + temp_a1_5)) - 2;
            var_s7_3 = temp_s7_2 + (sp478 * 0x14) + 0x50;
            temp_v0_21 = (temp_v0_20 > 4) ? 4 : temp_v0_20;
            var_a5_15 = 4 - temp_v0_21;
            temp_at_11 = 0x10 - (1 << temp_v0_21);
            sp400 = temp_a1_5;
            var_a1_21 = temp_v0_21 - 1;
            sp310 = temp_v0_21;
            sp498->unkA10C = (s32) temp_v0_21;
            if (var_a1_21 != -1) {
                unksp4D0 = var_a5_15;
                var_a5_16 = sp310 & 3;
                sp2F0 = sp310;
                var_a0_21 = &(&sp28)[var_a2_3];
                if (var_a5_16 != 0) {
                    do {
                        var_a0_21->unk0 = var_s7_3->unk8;
                        var_a0_21->unk4 = (f32) var_s7_3->unkC;
                        var_a0_21->unk8 = (f32) var_s7_3->unk10;
                        var_a0_21->unkC = (f32) var_s7_3->unk0;
                        var_a1_21 -= 1;
                        var_a5_16 -= 1;
                        temp_f27 = var_s7_3->unk4;
                        var_s7_3 += 0x14;
                        var_a0_21 += 0x14;
                        var_a2_3 += 5;
                        var_a0_21->unk-4 = temp_f27;
                    } while (var_a5_16 != 0);
                }
                sp288 = (s64) var_s7_3;
                if ((sp2F0 >> 2) != 0) {
                    var_a5_17 = var_s7_3;
                    do {
                        var_a0_21->unk0 = var_a5_17->unk8;
                        var_a0_21->unk4 = (f32) var_a5_17->unkC;
                        var_a0_21->unk8 = (f32) var_a5_17->unk10;
                        var_a0_21->unkC = (f32) var_a5_17->unk0;
                        var_a0_21->unk10 = (f32) var_a5_17->unk4;
                        var_a0_21->unk14 = (f32) var_a5_17->unk1C;
                        var_a0_21->unk18 = (f32) var_a5_17->unk20;
                        var_a0_21->unk1C = (f32) var_a5_17->unk24;
                        var_a0_21->unk20 = (f32) var_a5_17->unk14;
                        var_a0_21->unk24 = (f32) var_a5_17->unk18;
                        var_a0_21->unk28 = (f32) var_a5_17->unk30;
                        var_a0_21->unk2C = (f32) var_a5_17->unk34;
                        var_a0_21->unk30 = (f32) var_a5_17->unk38;
                        var_a0_21->unk34 = (f32) var_a5_17->unk28;
                        var_a0_21->unk38 = (f32) var_a5_17->unk2C;
                        var_a0_21->unk3C = (f32) var_a5_17->unk44;
                        var_a0_21->unk40 = (f32) var_a5_17->unk48;
                        var_a0_21->unk44 = (f32) var_a5_17->unk4C;
                        var_a0_21->unk48 = (f32) var_a5_17->unk3C;
                        var_a1_21 -= 4;
                        temp_f2_2 = var_a5_17->unk40;
                        var_a5_17 += 0x50;
                        var_a0_21 += 0x50;
                        var_a2_3 += 0x14;
                        var_a0_21->unk-4 = temp_f2_2;
                    } while (var_a1_21 != -1);
                }
                var_a5_15 = unksp4D0;
            }
            var_a1_22 = var_a5_15 - 1;
            if (var_a1_22 != -1) {
                var_a0_22 = &(&sp28)[var_a2_3];
                do {
                    var_a0_22->unk0 = 0;
                    var_a0_22->unk4 = 0.0f;
                    var_a0_22->unk8 = 0.0f;
                    var_a1_22 -= 1;
                    var_a0_22->unkC = 0.0f;
                    var_a0_22 += 0x14;
                    var_a0_22->unk-4 = 0.0f;
                    var_a2_3 += 5;
                } while (var_a1_22 != -1);
            }
            temp_a0_14 = sp458 != 0;
            temp_v0_22 = (sp460 - (sp400 + temp_a0_14)) - 1;
            var_ra_6 = (void *) sp568 + (sp400 * 0x14) + 0x3C;
            temp_v0_23 = (temp_v0_22 > 4) ? 4 : temp_v0_22;
            var_a5_18 = 4 - temp_v0_23;
            temp_at_12 = 0x10 - (1 << temp_v0_23);
            var_a1_23 = temp_v0_23 - 1;
            sp470 = temp_a0_14;
            sp318 = temp_v0_23;
            sp498->unkA110 = (s32) temp_v0_23;
            if (var_a1_23 != -1) {
                var_s7_4 = sp318 & 3;
                sp2F8 = sp318;
                var_a0_23 = &(&sp28)[var_a2_3];
                if (var_s7_4 != 0) {
                    do {
                        var_a0_23->unk0 = var_ra_6->unk8;
                        var_a0_23->unk4 = (f32) var_ra_6->unkC;
                        var_a0_23->unk8 = (f32) var_ra_6->unk10;
                        var_a0_23->unkC = (f32) var_ra_6->unk0;
                        var_a1_23 -= 1;
                        var_s7_4 -= 1;
                        temp_f25_2 = var_ra_6->unk4;
                        var_ra_6 += 0x14;
                        var_a0_23 += 0x14;
                        var_a2_3 += 5;
                        var_a0_23->unk-4 = temp_f25_2;
                    } while (var_s7_4 != 0);
                }
                sp460 = var_a1_23;
                if ((sp2F8 >> 2) != 0) {
                    var_a1_24 = sp460;
                    sp578 = var_a5_18;
                    var_a5_19 = var_ra_6;
                    do {
                        var_a0_23->unk0 = var_a5_19->unk8;
                        var_a0_23->unk4 = (f32) var_a5_19->unkC;
                        var_a0_23->unk8 = (f32) var_a5_19->unk10;
                        var_a0_23->unkC = (f32) var_a5_19->unk0;
                        var_a0_23->unk10 = (f32) var_a5_19->unk4;
                        var_a0_23->unk14 = (f32) var_a5_19->unk1C;
                        var_a0_23->unk18 = (f32) var_a5_19->unk20;
                        var_a0_23->unk1C = (f32) var_a5_19->unk24;
                        var_a0_23->unk20 = (f32) var_a5_19->unk14;
                        var_a0_23->unk24 = (f32) var_a5_19->unk18;
                        var_a0_23->unk28 = (f32) var_a5_19->unk30;
                        var_a0_23->unk2C = (f32) var_a5_19->unk34;
                        var_a0_23->unk30 = (f32) var_a5_19->unk38;
                        var_a0_23->unk34 = (f32) var_a5_19->unk28;
                        var_a0_23->unk38 = (f32) var_a5_19->unk2C;
                        var_a0_23->unk3C = (f32) var_a5_19->unk44;
                        var_a0_23->unk40 = (f32) var_a5_19->unk48;
                        var_a0_23->unk44 = (f32) var_a5_19->unk4C;
                        var_a0_23->unk48 = (f32) var_a5_19->unk3C;
                        var_a1_24 -= 4;
                        temp_f1_2 = var_a5_19->unk40;
                        var_a5_19 += 0x50;
                        var_a0_23 += 0x50;
                        var_a2_3 += 0x14;
                        var_a0_23->unk-4 = temp_f1_2;
                    } while (var_a1_24 != -1);
                    var_a5_18 = sp578;
                }
            }
            var_a1_25 = var_a5_18 - 1;
            if (var_a1_25 != -1) {
                var_a0_24 = &(&sp28)[var_a2_3];
                do {
                    var_a0_24->unk0 = 0;
                    var_a0_24->unk4 = 0.0f;
                    var_a0_24->unk8 = 0.0f;
                    var_a1_25 -= 1;
                    var_a0_24->unkC = 0.0f;
                    var_a0_24 += 0x14;
                    var_a0_24->unk-4 = 0.0f;
                    var_a2_3 += 5;
                } while (var_a1_25 != -1);
            }
            temp_at_13 = (sp4B0 - (sp468 + sp470)) - 2;
            temp_at_14 = (temp_at_13 > 4) ? 4 : temp_at_13;
            var_a5_20 = sp330 + sp410 + 0x50;
            temp_ra_2 = 0x10 - (1 << temp_at_14);
            var_a1_26 = temp_at_14 - 1;
            sp320 = temp_at_14;
            var_s5_2 = var_s5_5 & ~(temp_v1_11 << 0xC) & ~(temp_at_11 << 0x14) & ~(temp_at_12 << 0x18) & ~(temp_ra_2 << 0x10);
            sp498->unkA108 = (s32) temp_at_14;
            var_s6 = var_s6_4 & ~(temp_v1_11 << 8) & ~(temp_at_11 << 0x10) & ~(temp_at_12 << 0x14) & ~(temp_ra_2 << 0xC);
            if (var_a1_26 != -1) {
                var_ra_7 = sp320 & 3;
                sp300 = sp320;
                var_a0_25 = &(&sp28)[var_a2_3];
                if (var_ra_7 != 0) {
                    do {
                        var_a0_25->unk0 = var_a5_20->unk8;
                        var_a0_25->unk4 = (f32) var_a5_20->unkC;
                        var_a0_25->unk8 = (f32) var_a5_20->unk10;
                        var_a0_25->unkC = (f32) var_a5_20->unk0;
                        var_a1_26 -= 1;
                        var_ra_7 -= 1;
                        temp_f23 = var_a5_20->unk4;
                        var_a5_20 += 0x14;
                        var_a0_25 += 0x14;
                        var_a2_3 += 5;
                        var_a0_25->unk-4 = temp_f23;
                    } while (var_ra_7 != 0);
                }
                sp410 = (s64) var_a5_20;
                if ((sp300 >> 2) != 0) {
                    var_a5_21 = sp410;
                    do {
                        var_a0_25->unk0 = var_a5_21->unk8;
                        var_a0_25->unk4 = (f32) var_a5_21->unkC;
                        var_a0_25->unk8 = (f32) var_a5_21->unk10;
                        var_a0_25->unkC = (f32) var_a5_21->unk0;
                        var_a0_25->unk10 = (f32) var_a5_21->unk4;
                        var_a0_25->unk14 = (f32) var_a5_21->unk1C;
                        var_a0_25->unk18 = (f32) var_a5_21->unk20;
                        var_a0_25->unk1C = (f32) var_a5_21->unk24;
                        var_a0_25->unk20 = (f32) var_a5_21->unk14;
                        var_a0_25->unk24 = (f32) var_a5_21->unk18;
                        var_a0_25->unk28 = (f32) var_a5_21->unk30;
                        var_a0_25->unk2C = (f32) var_a5_21->unk34;
                        var_a0_25->unk30 = (f32) var_a5_21->unk38;
                        var_a0_25->unk34 = (f32) var_a5_21->unk28;
                        var_a0_25->unk38 = (f32) var_a5_21->unk2C;
                        var_a0_25->unk3C = (f32) var_a5_21->unk44;
                        var_a0_25->unk40 = (f32) var_a5_21->unk48;
                        var_a0_25->unk44 = (f32) var_a5_21->unk4C;
                        var_a0_25->unk48 = (f32) var_a5_21->unk3C;
                        var_a1_26 -= 4;
                        temp_f0 = var_a5_21->unk40;
                        var_a5_21 += 0x50;
                        var_a0_25 += 0x50;
                        var_a2_3 += 0x14;
                        var_a0_25->unk-4 = temp_f0;
                    } while (var_a1_26 != -1);
                }
            }
            var_a1_27 = (4 - temp_at_14) - 1;
            if (var_a1_27 != -1) {
                var_a0_26 = &(&sp28)[var_a2_3];
                do {
                    var_a0_26->unk0 = 0;
                    var_a0_26->unk4 = 0.0f;
                    var_a0_26->unk8 = 0.0f;
                    var_a1_27 -= 1;
                    var_a0_26->unkC = 0.0f;
                    var_a0_26->unk10 = 0.0f;
                    var_a0_26 += 0x14;
                } while (var_a1_27 != -1);
            }
            var_a0_2 = (u8) sp488;
            break;
        case 0x2A29:                                /* switch 1 */
            sp498->unkA100 = 6;
            sp28 = temp_s6_2->unkC;
            sp2C = temp_s6_2->unk10;
            sp30 = temp_s6_2->unk14;
            sp34 = (f32) temp_s6_2->unk8;
            sp38 = temp_s6->unk4;
            sp3C = temp_s6_2->unk4;
            sp40 = sp410->unkC;
            sp44 = sp410->unk10;
            sp48 = sp410->unk14;
            sp4C = (f32) sp410->unk8;
            sp50 = sp410->unk0;
            sp54 = sp410->unk4;
            sp58 = temp_s7_2->unkC;
            sp5C = temp_s7_2->unk10;
            sp60 = temp_s7_2->unk14;
            sp64 = (f32) temp_s7_2->unk8;
            sp68 = temp_s7->unk4;
            sp6C = temp_s7_2->unk4;
            sp70 = var_s5->unkC;
            sp74 = var_s5->unk10;
            sp78 = var_s5->unk14;
            sp7C = (f32) var_s5->unk8;
            sp80 = var_s5->unk0;
            sp268 = 6;
            var_s4 = 0x1B0;
            sp84 = var_s5->unk4;
            if ((sp4A8 >= 3) && (temp_a0_15 = sp410 + (sp4B0 * 0x18), (temp_a0_15->unk24 == temp_s6_2->unk54)) && (temp_a0_15->unk28 == temp_s6_2->unk58) && (sp560 = (s64) temp_s6_2, sp568 = (s64) var_s5, (temp_a0_15->unk2C == temp_s6_2->unk5C))) {
                sp88 = sp560->unk54;
                sp8C = sp560->unk58;
                sp90 = sp560->unk5C;
                sp94 = (f32) sp560->unk50;
                sp98 = sp560->unk48;
                var_s6_5 = 0xFFFFFF;
                sp488 = 1;
                var_s5_6 = 0x1FFFFFFF;
                sp9C = sp560->unk4C;
            } else {
                sp488 = 0;
                sp568 = (s64) var_s5;
                sp560 = (s64) temp_s6_2;
                sp9C = 0;
                sp98 = 0.0f;
                sp94 = 0.0f;
                sp90 = 0;
                sp8C = 0;
                var_s6_5 = 0xFFFFEF;
                var_s5_6 = 0x1FFFFFCF;
                sp88 = 0;
            }
            if ((sp490 >= 4) && (temp_a0_16 = sp560 + (sp4A8 * 0x18), (temp_a0_16->unk24 == temp_s7_2->unk6C)) && (temp_a0_16->unk28 == temp_s7_2->unk70) && (temp_a0_16->unk2C == temp_s7_2->unk74)) {
                spA0 = temp_s7_2->unk6C;
                spA4 = temp_s7_2->unk70;
                spA8 = temp_s7_2->unk74;
                spAC = (f32) temp_s7_2->unk68;
                sp418 = 1;
                spB0 = temp_s7_2->unk60;
                sp26C = 1;
                spB4 = temp_s7_2->unk64;
            } else {
                sp26C = 0;
                sp418 = 0;
                spB4 = 0.0f;
                spB0 = 0;
                spAC = 0.0f;
                spA8 = 0;
                spA4 = 0;
                var_s5_6 &= ~0xC0;
                var_s6_5 &= ~0x20;
                spA0 = 0;
            }
            if ((sp460 >= 3) && (temp_a0_17 = temp_s7_2 + (sp490 * 0x18), (temp_a0_17->unk24 == ((void *) sp568)->unk54)) && (temp_a0_17->unk28 == ((void *) sp568)->unk58) && (temp_a0_17->unk2C == ((void *) sp568)->unk5C)) {
                spB8 = ((void *) sp568)->unk54;
                spBC = ((void *) sp568)->unk58;
                spC0 = ((void *) sp568)->unk5C;
                spC4 = (f32) ((void *) sp568)->unk50;
                spC8 = ((void *) sp568)->unk48;
                sp4B8 = 1;
                spCC = ((void *) sp568)->unk4C;
            } else {
                sp4B8 = 0;
                spCC = 0;
                spC8 = 0;
                spC4 = 0.0f;
                spC0 = 0;
                spBC = 0;
                var_s5_6 &= ~0x300;
                var_s6_5 &= ~0x40;
                spB8 = 0;
            }
            if ((sp4B0 >= 4) && (temp_a0_18 = (void *) sp568 + (sp460 * 0x18), (temp_a0_18->unk24 == sp410->unk6C)) && (temp_a0_18->unk28 == sp410->unk70) && (temp_a0_18->unk2C == sp410->unk74)) {
                sp28.unkA8 = (s32) sp410->unk6C;
                sp28.unkAC = (s32) sp410->unk70;
                sp28.unkB0 = (s32) sp410->unk74;
                sp28.unkB4 = (f32) sp410->unk68;
                sp458 = 1;
                sp28.unkB8 = (s32) sp410->unk60;
                var_a2_4 = 0x30;
                sp26D = 1;
                var_a0_27 = &sp28 + 0xC0;
                sp28.unkBC = (f32) sp410->unk64;
            } else {
                sp26D = 0;
                sp458 = 0;
                sp28.unkBC = 0.0f;
                sp28.unkB8 = 0;
                sp28.unkB4 = 0.0f;
                var_a2_4 = 0x30;
                sp28.unkB0 = 0;
                var_s5_6 &= ~0xC00;
                sp28.unkAC = 0;
                var_a0_27 = &sp28 + 0xC0;
                var_s6_5 &= ~0x80;
                sp28.unkA8 = 0;
            }
            temp_v1_12 = sp488 != 0;
            sp468 = temp_v1_12;
            temp_a1_6 = sp418 != 0;
            sp478 = temp_a1_6;
            temp_v0_24 = temp_v1_12 * 0x18;
            temp_v1_13 = (sp4A8 - (temp_v1_12 + temp_a1_6)) - 1;
            var_a5_22 = temp_v0_24 + sp560 + 0x48;
            sp2D8 = temp_v0_24;
            temp_v1_14 = (temp_v1_13 > 4) ? 4 : temp_v1_13;
            sp2E0 = 4 - temp_v1_14;
            temp_v0_25 = 0x10 - (1 << temp_v1_14);
            var_a1_28 = temp_v1_14 - 1;
            sp2C0 = temp_v1_14;
            sp498->unkA104 = (s32) temp_v1_14;
            if (var_a1_28 != -1) {
                sp2B8 = sp2C0;
                temp_a3_6 = sp2C0 & 3;
                sp3F0 = temp_a3_6;
                if (temp_a3_6 != 0) {
                    do {
                        var_a0_27->unk0 = var_a5_22->unkC;
                        var_a0_27->unk4 = (f32) var_a5_22->unk10;
                        var_a0_27->unk8 = (f32) var_a5_22->unk14;
                        var_a0_27->unkC = (f32) var_a5_22->unk8;
                        var_a0_27->unk10 = (f32) var_a5_22->unk0;
                        var_a1_28 -= 1;
                        temp_v0_26 = sp3F0 - 1;
                        temp_f21 = var_a5_22->unk4;
                        var_a5_22 += 0x18;
                        var_a0_27 += 0x18;
                        sp3F0 = temp_v0_26;
                        var_a2_4 += 6;
                        var_a0_27->unk-4 = temp_f21;
                    } while (temp_v0_26 != 0);
                }
                if ((sp2B8 >> 2) != 0) {
                    do {
                        var_a0_27->unk0 = var_a5_22->unkC;
                        var_a0_27->unk4 = (f32) var_a5_22->unk10;
                        var_a0_27->unk8 = (f32) var_a5_22->unk14;
                        var_a0_27->unkC = (f32) var_a5_22->unk8;
                        var_a0_27->unk10 = (f32) var_a5_22->unk0;
                        var_a0_27->unk14 = (f32) var_a5_22->unk4;
                        var_a0_27->unk18 = (f32) var_a5_22->unk24;
                        var_a0_27->unk1C = (f32) var_a5_22->unk28;
                        var_a0_27->unk20 = (f32) var_a5_22->unk2C;
                        var_a0_27->unk24 = (f32) var_a5_22->unk20;
                        var_a0_27->unk28 = (f32) var_a5_22->unk18;
                        var_a0_27->unk2C = (f32) var_a5_22->unk1C;
                        var_a0_27->unk30 = (f32) var_a5_22->unk3C;
                        var_a0_27->unk34 = (f32) var_a5_22->unk40;
                        var_a0_27->unk38 = (f32) var_a5_22->unk44;
                        var_a0_27->unk3C = (f32) var_a5_22->unk38;
                        var_a0_27->unk40 = (f32) var_a5_22->unk30;
                        var_a0_27->unk44 = (f32) var_a5_22->unk34;
                        var_a0_27->unk48 = (f32) var_a5_22->unk54;
                        var_a0_27->unk4C = (f32) var_a5_22->unk58;
                        var_a0_27->unk50 = (f32) var_a5_22->unk5C;
                        var_a0_27->unk54 = (f32) var_a5_22->unk50;
                        var_a0_27->unk58 = (f32) var_a5_22->unk48;
                        var_a1_28 -= 4;
                        temp_f0_2 = var_a5_22->unk4C;
                        var_a5_22 += 0x60;
                        var_a0_27 += 0x60;
                        var_a2_4 += 0x18;
                        var_a0_27->unk-4 = temp_f0_2;
                    } while (var_a1_28 != -1);
                }
            }
            var_a1_29 = sp2E0 - 1;
            if (var_a1_29 != -1) {
                var_a0_28 = &(&sp28)[var_a2_4];
                do {
                    var_a0_28->unk0 = 0;
                    var_a0_28->unk4 = 0.0f;
                    var_a0_28->unk8 = 0.0f;
                    var_a0_28->unkC = 0.0f;
                    var_a1_29 -= 1;
                    var_a0_28->unk10 = 0.0f;
                    var_a0_28 += 0x18;
                    var_a0_28->unk-4 = 0.0f;
                    var_a2_4 += 6;
                } while (var_a1_29 != -1);
            }
            temp_a1_7 = sp4B8 != 0;
            temp_v0_27 = (sp490 - (sp478 + temp_a1_7)) - 2;
            var_s7_5 = temp_s7_2 + (sp478 * 0x18) + 0x60;
            temp_v0_28 = (temp_v0_27 > 4) ? 4 : temp_v0_27;
            var_a5_23 = 4 - temp_v0_28;
            temp_at_15 = 0x10 - (1 << temp_v0_28);
            sp400 = temp_a1_7;
            var_a1_30 = temp_v0_28 - 1;
            sp2D0 = temp_v0_28;
            sp498->unkA10C = (s32) temp_v0_28;
            if (var_a1_30 != -1) {
                unksp4C8 = var_a5_23;
                var_a5_24 = sp2D0 & 3;
                sp2A8 = sp2D0;
                var_a0_29 = &(&sp28)[var_a2_4];
                if (var_a5_24 != 0) {
                    do {
                        var_a0_29->unk0 = var_s7_5->unkC;
                        var_a0_29->unk4 = (f32) var_s7_5->unk10;
                        var_a0_29->unk8 = (f32) var_s7_5->unk14;
                        var_a0_29->unkC = (f32) var_s7_5->unk8;
                        var_a0_29->unk10 = (f32) var_s7_5->unk0;
                        var_a1_30 -= 1;
                        var_a5_24 -= 1;
                        temp_f29_3 = var_s7_5->unk4;
                        var_s7_5 += 0x18;
                        var_a0_29 += 0x18;
                        var_a2_4 += 6;
                        var_a0_29->unk-4 = temp_f29_3;
                    } while (var_a5_24 != 0);
                }
                sp280 = (s64) var_s7_5;
                if ((sp2A8 >> 2) != 0) {
                    var_a5_25 = var_s7_5;
                    do {
                        var_a0_29->unk0 = var_a5_25->unkC;
                        var_a0_29->unk4 = (f32) var_a5_25->unk10;
                        var_a0_29->unk8 = (f32) var_a5_25->unk14;
                        var_a0_29->unkC = (f32) var_a5_25->unk8;
                        var_a0_29->unk10 = (f32) var_a5_25->unk0;
                        var_a0_29->unk14 = (f32) var_a5_25->unk4;
                        var_a0_29->unk18 = (f32) var_a5_25->unk24;
                        var_a0_29->unk1C = (f32) var_a5_25->unk28;
                        var_a0_29->unk20 = (f32) var_a5_25->unk2C;
                        var_a0_29->unk24 = (f32) var_a5_25->unk20;
                        var_a0_29->unk28 = (f32) var_a5_25->unk18;
                        var_a0_29->unk2C = (f32) var_a5_25->unk1C;
                        var_a0_29->unk30 = (f32) var_a5_25->unk3C;
                        var_a0_29->unk34 = (f32) var_a5_25->unk40;
                        var_a0_29->unk38 = (f32) var_a5_25->unk44;
                        var_a0_29->unk3C = (f32) var_a5_25->unk38;
                        var_a0_29->unk40 = (f32) var_a5_25->unk30;
                        var_a0_29->unk44 = (f32) var_a5_25->unk34;
                        var_a0_29->unk48 = (f32) var_a5_25->unk54;
                        var_a0_29->unk4C = (f32) var_a5_25->unk58;
                        var_a0_29->unk50 = (f32) var_a5_25->unk5C;
                        var_a0_29->unk54 = (f32) var_a5_25->unk50;
                        var_a0_29->unk58 = (f32) var_a5_25->unk48;
                        var_a1_30 -= 4;
                        temp_f4_3 = var_a5_25->unk4C;
                        var_a5_25 += 0x60;
                        var_a0_29 += 0x60;
                        var_a2_4 += 0x18;
                        var_a0_29->unk-4 = temp_f4_3;
                    } while (var_a1_30 != -1);
                }
                var_a5_23 = unksp4C8;
            }
            var_a1_31 = var_a5_23 - 1;
            if (var_a1_31 != -1) {
                var_a0_30 = &(&sp28)[var_a2_4];
                do {
                    var_a0_30->unk0 = 0;
                    var_a0_30->unk4 = 0.0f;
                    var_a0_30->unk8 = 0.0f;
                    var_a0_30->unkC = 0.0f;
                    var_a1_31 -= 1;
                    var_a0_30->unk10 = 0.0f;
                    var_a0_30 += 0x18;
                    var_a0_30->unk-4 = 0.0f;
                    var_a2_4 += 6;
                } while (var_a1_31 != -1);
            }
            temp_a3_7 = sp458 != 0;
            temp_a1_8 = (sp460 - (sp400 + temp_a3_7)) - 1;
            var_ra_8 = (void *) sp568 + (sp400 * 0x18) + 0x48;
            temp_a1_9 = (temp_a1_8 > 4) ? 4 : temp_a1_8;
            temp_at_16 = 0x10 - (1 << temp_a1_9);
            temp_v0_29 = temp_a1_9 - 1;
            sp470 = temp_a3_7;
            sp498->unkA110 = temp_a1_9;
            sp460 = temp_v0_29;
            if (temp_v0_29 != -1) {
                var_s7_6 = temp_a1_9 & 3;
                var_a0_31 = &(&sp28)[var_a2_4];
                if (var_s7_6 != 0) {
                    do {
                        var_a0_31->unk0 = var_ra_8->unkC;
                        var_a0_31->unk4 = (f32) var_ra_8->unk10;
                        var_a0_31->unk8 = (f32) var_ra_8->unk14;
                        var_a0_31->unkC = (f32) var_ra_8->unk8;
                        temp_f3_2 = var_ra_8->unk0;
                        var_ra_8 += 0x18;
                        var_a0_31->unk10 = temp_f3_2;
                        var_s7_6 -= 1;
                        var_a0_31 += 0x18;
                        sp460 -= 1;
                        var_a2_4 += 6;
                        var_a0_31->unk-4 = (f32) var_ra_8->unk-14;
                    } while (var_s7_6 != 0);
                }
                var_a1_32 = sp460;
                if ((temp_a1_9 >> 2) != 0) {
                    do {
                        var_a0_31->unk0 = var_ra_8->unkC;
                        var_a0_31->unk4 = (f32) var_ra_8->unk10;
                        var_a0_31->unk8 = (f32) var_ra_8->unk14;
                        var_a0_31->unkC = (f32) var_ra_8->unk8;
                        var_a0_31->unk10 = (f32) var_ra_8->unk0;
                        var_a0_31->unk14 = (f32) var_ra_8->unk4;
                        var_a0_31->unk18 = (f32) var_ra_8->unk24;
                        var_a0_31->unk1C = (f32) var_ra_8->unk28;
                        var_a0_31->unk20 = (f32) var_ra_8->unk2C;
                        var_a0_31->unk24 = (f32) var_ra_8->unk20;
                        var_a0_31->unk28 = (f32) var_ra_8->unk18;
                        var_a0_31->unk2C = (f32) var_ra_8->unk1C;
                        var_a0_31->unk30 = (f32) var_ra_8->unk3C;
                        var_a0_31->unk34 = (f32) var_ra_8->unk40;
                        var_a0_31->unk38 = (f32) var_ra_8->unk44;
                        var_a0_31->unk3C = (f32) var_ra_8->unk38;
                        var_a0_31->unk40 = (f32) var_ra_8->unk30;
                        var_a0_31->unk44 = (f32) var_ra_8->unk34;
                        var_a0_31->unk48 = (f32) var_ra_8->unk54;
                        var_a0_31->unk4C = (f32) var_ra_8->unk58;
                        var_a0_31->unk50 = (f32) var_ra_8->unk5C;
                        var_a0_31->unk54 = (f32) var_ra_8->unk50;
                        var_a0_31->unk58 = (f32) var_ra_8->unk48;
                        var_a1_32 -= 4;
                        temp_f8_3 = var_ra_8->unk4C;
                        var_ra_8 += 0x60;
                        var_a0_31 += 0x60;
                        var_a2_4 += 0x18;
                        var_a0_31->unk-4 = temp_f8_3;
                    } while (var_a1_32 != -1);
                }
            }
            var_a1_33 = (4 - temp_a1_9) - 1;
            if (var_a1_33 != -1) {
                var_a0_32 = &(&sp28)[var_a2_4];
                do {
                    var_a0_32->unk0 = 0;
                    var_a0_32->unk4 = 0.0f;
                    var_a0_32->unk8 = 0.0f;
                    var_a0_32->unkC = 0.0f;
                    var_a1_33 -= 1;
                    var_a0_32->unk10 = 0.0f;
                    var_a0_32 += 0x18;
                    var_a0_32->unk-4 = 0.0f;
                    var_a2_4 += 6;
                } while (var_a1_33 != -1);
            }
            temp_at_17 = (sp4B0 - (sp468 + sp470)) - 2;
            temp_at_18 = (temp_at_17 > 4) ? 4 : temp_at_17;
            var_a5_26 = sp2D8 + sp410 + 0x60;
            temp_ra_3 = 0x10 - (1 << temp_at_18);
            var_a1_34 = temp_at_18 - 1;
            sp2C8 = temp_at_18;
            var_s5_2 = var_s5_6 & ~(temp_v0_25 << 0xC) & ~(temp_at_15 << 0x14) & ~(temp_at_16 << 0x18) & ~(temp_ra_3 << 0x10);
            sp498->unkA108 = (s32) temp_at_18;
            var_s6 = var_s6_5 & ~(temp_v0_25 << 8) & ~(temp_at_15 << 0x10) & ~(temp_at_16 << 0x14) & ~(temp_ra_3 << 0xC);
            if (var_a1_34 != -1) {
                var_ra_9 = sp2C8 & 3;
                sp2B0 = sp2C8;
                var_a0_33 = &(&sp28)[var_a2_4];
                if (var_ra_9 != 0) {
                    do {
                        var_a0_33->unk0 = var_a5_26->unkC;
                        var_a0_33->unk4 = (f32) var_a5_26->unk10;
                        var_a0_33->unk8 = (f32) var_a5_26->unk14;
                        var_a0_33->unkC = (f32) var_a5_26->unk8;
                        var_a0_33->unk10 = (f32) var_a5_26->unk0;
                        var_a1_34 -= 1;
                        var_ra_9 -= 1;
                        temp_f6 = var_a5_26->unk4;
                        var_a5_26 += 0x18;
                        var_a0_33 += 0x18;
                        var_a2_4 += 6;
                        var_a0_33->unk-4 = temp_f6;
                    } while (var_ra_9 != 0);
                }
                sp410 = (s64) var_a5_26;
                if ((sp2B0 >> 2) != 0) {
                    var_a5_27 = sp410;
                    do {
                        var_a0_33->unk0 = var_a5_27->unkC;
                        var_a0_33->unk4 = (f32) var_a5_27->unk10;
                        var_a0_33->unk8 = (f32) var_a5_27->unk14;
                        var_a0_33->unkC = (f32) var_a5_27->unk8;
                        var_a0_33->unk10 = (f32) var_a5_27->unk0;
                        var_a0_33->unk14 = (f32) var_a5_27->unk4;
                        var_a0_33->unk18 = (f32) var_a5_27->unk24;
                        var_a0_33->unk1C = (f32) var_a5_27->unk28;
                        var_a0_33->unk20 = (f32) var_a5_27->unk2C;
                        var_a0_33->unk24 = (f32) var_a5_27->unk20;
                        var_a0_33->unk28 = (f32) var_a5_27->unk18;
                        var_a0_33->unk2C = (f32) var_a5_27->unk1C;
                        var_a0_33->unk30 = (f32) var_a5_27->unk3C;
                        var_a0_33->unk34 = (f32) var_a5_27->unk40;
                        var_a0_33->unk38 = (f32) var_a5_27->unk44;
                        var_a0_33->unk3C = (f32) var_a5_27->unk38;
                        var_a0_33->unk40 = (f32) var_a5_27->unk30;
                        var_a0_33->unk44 = (f32) var_a5_27->unk34;
                        var_a0_33->unk48 = (f32) var_a5_27->unk54;
                        var_a0_33->unk4C = (f32) var_a5_27->unk58;
                        var_a0_33->unk50 = (f32) var_a5_27->unk5C;
                        var_a0_33->unk54 = (f32) var_a5_27->unk50;
                        var_a0_33->unk58 = (f32) var_a5_27->unk48;
                        var_a1_34 -= 4;
                        temp_f12_3 = var_a5_27->unk4C;
                        var_a5_27 += 0x60;
                        var_a0_33 += 0x60;
                        var_a2_4 += 0x18;
                        var_a0_33->unk-4 = temp_f12_3;
                    } while (var_a1_34 != -1);
                }
            }
            var_a1_35 = (4 - temp_at_18) - 1;
            if (var_a1_35 != -1) {
                var_a0_34 = &(&sp28)[var_a2_4];
                do {
                    var_a0_34->unk0 = 0;
                    var_a0_34->unk4 = 0.0f;
                    var_a0_34->unk8 = 0.0f;
                    var_a0_34->unkC = 0.0f;
                    var_a1_35 -= 1;
                    var_a0_34->unk10 = 0.0f;
                    var_a0_34->unk14 = 0.0f;
                    var_a0_34 += 0x18;
                } while (var_a1_35 != -1);
            }
            var_a0_2 = (u8) sp488;
            break;
        }
        if (var_a0_2 != 0) {

        } else if ((sp26C == 0) && (sp498->unkA104 == 1)) {
            sp530 = (s64) var_t8;
            sp538 = (s64) var_t3;
            sp540 = (s64) var_t2;
            sp548 = (s64) var_t1;
            sp528 = (s64) var_t9;
            sp550 = (s64) var_t0;
            sp558 = (s64) var_a7;
            sp570 = (s64) var_a6;
            temp_a3_8 = sp268 * 0x10;
            temp_a1_10 = &sp28 + (sp268 << 5);
            sp270 = (s64) temp_a1_10;
            __glkonim_SubdivPatchParameteriSGIX(sp268, temp_a1_10, &sp28 + temp_a3_8, temp_a3_8);
            temp_a3_9 = sp268 * 0x14;
            __glkonim_SubdivPatchParameteriSGIX(sp268, temp_a1_10, &sp28 + temp_a3_9, temp_a3_9, sp268);
        }
        if (sp4B8 == 0) {
            if ((sp26D == 0) && (sp498->unkA110 == 1)) {
                sp530 = (s64) var_t8;
                sp538 = (s64) var_t3;
                sp540 = (s64) var_t2;
                sp548 = (s64) var_t1;
                sp528 = (s64) var_t9;
                sp550 = (s64) var_t0;
                sp558 = (s64) var_a7;
                sp570 = (s64) var_a6;
                temp_a1_11 = &sp28 + (sp268 << 6);
                temp_a3_10 = sp268 * 0x18;
                sp278 = (s64) temp_a1_11;
                __glkonim_SubdivPatchParameteriSGIX(sp268, temp_a1_11, &sp28 + temp_a3_10, temp_a3_10, sp268, sp26D, (s64) var_a6, (s64) var_a7);
                temp_a3_11 = sp268 * 0x1C;
                __glkonim_SubdivPatchParameteriSGIX(sp268, temp_a1_11, &sp28 + temp_a3_11, temp_a3_11, sp268);
            }
        }
        sp498->unkA11C = var_s5_2;
        sp498->unkA118 = var_s6;
        var_a4_4 = 0x1D0;
        *(void *)0x4000 = 0x1D0;
        *(void *)0x4000 = (s32) sp480;
        *(void *)0x4000 = var_s6;
        var_a3 = sp480 & 0x80000000;
        *(void *)0x4000 = var_s5_2;
        sp498->unkA114 = (s32) sp480;
        if (var_a3 == 0) {
            *(void *)0x4000 = (s32) (var_t1->unk0 | (var_t0->unk0 << 8) | ((var_a7->unk0 << 0x10) | (var_a6->unk0 << 0x18)));
            if (var_s6 & 0x10) {
                var_a4_5 = var_a6->unk3;
            } else {
                var_a4_5 = 0;
            }
            if (var_s6 & 0x20) {
                var_a2_5 = var_t0->unk3;
            } else {
                var_a2_5 = 0;
            }
            if (var_s6 & 0x40) {
                var_a1_36 = var_t1->unk4;
            } else {
                var_a1_36 = 0;
            }
            if (var_s6 & 0x80) {
                var_a0_35 = var_a7->unk4;
            } else {
                var_a0_35 = 0;
            }
            var_t1_2 = var_t1 + 5;
            var_a7_2 = var_a7 + 5;
            var_a6_2 = var_a6 + 4;
            *(void *)0x4000 = (s32) (var_a0_35 | (var_a1_36 << 8) | ((var_a4_5 << 0x18) | (var_a2_5 << 0x10)));
            if (var_s6 & 0x100) {
                var_a4_6 = var_a6->unk4;
                var_a6_2 += 1;
            } else {
                var_a4_6 = 0;
            }
            if (var_s6 & 0x200) {
                var_a2_6 = *var_a6_2;
                var_a6_2 += 1;
            } else {
                var_a2_6 = 0;
            }
            if (var_s6 & 0x400) {
                var_a1_37 = *var_a6_2;
                var_a6_2 += 1;
            } else {
                var_a1_37 = 0;
            }
            if (var_s6 & 0x800) {
                var_a0_36 = *var_a6_2;
            } else {
                var_a0_36 = 0;
            }
            *(void *)0x4000 = (s32) (var_a0_36 | (var_a1_37 << 8) | ((var_a4_6 << 0x18) | (var_a2_6 << 0x10)));
            if (var_s6 & 0x1000) {
                var_a4_7 = var_a7->unk5;
                var_a7_2 += 1;
            } else {
                var_a4_7 = 0;
            }
            if (var_s6 & 0x2000) {
                var_a2_7 = *var_a7_2;
                var_a7_2 += 1;
            } else {
                var_a2_7 = 0;
            }
            if (var_s6 & 0x4000) {
                var_a1_38 = *var_a7_2;
                var_a7_2 += 1;
            } else {
                var_a1_38 = 0;
            }
            if (var_s6 & 0x8000) {
                var_a0_37 = *var_a7_2;
            } else {
                var_a0_37 = 0;
            }
            *(void *)0x4000 = (s32) (var_a0_37 | (var_a1_38 << 8) | ((var_a4_7 << 0x18) | (var_a2_7 << 0x10)));
            if (var_s6 & 0x10000) {

            }
            // Error: negative shift count
            // At instruction: bgez $v1, .L0d98cc44
            if (M2C_ERROR()) {

            }
            // Error: negative shift count
            // At instruction: bgez $a0, .L0d98cc4c
            if (M2C_ERROR()) {

            }
            // Error: negative shift count
            // At instruction: bgez $a1, .L0d98cc54
            if (M2C_ERROR()) {

            }
            // Error: negative shift count
            // At instruction: bgez $a5, .L0d98cc5c
            if (M2C_ERROR()) {
                var_a5_28 = var_t1->unk5;
                var_t1_2 += 1;
            } else {
                var_a5_28 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $a4, .L0d98cc64
            if (M2C_ERROR()) {
                var_a4_8 = *var_t1_2;
                var_t1_2 += 1;
            } else {
                var_a4_8 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $t0, .L0d98cc6c
            if (M2C_ERROR()) {
                var_a2_8 = *var_t1_2;
                var_t1_2 += 1;
            } else {
                var_a2_8 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $at, .L0d98cc74
            if (M2C_ERROR()) {
                var_s6 = 0x800000;
                var_a0_38 = *var_t1_2;
            } else {
                var_a0_38 = 0;
            }
            *(void *)0x4000 = (s32) (var_a0_38 | (var_a2_8 << 8) | ((var_a5_28 << 0x18) | (var_a4_8 << 0x10)));
            *(void *)0x4000 = (s32) (var_t2->unk0 | (var_t8->unk0 << 8) | ((var_t9->unk0 << 0x18) | (var_t3->unk0 << 0x10)));
            if (var_s5_2 & 0x10) {
                var_a5_29 = *(sp4B0 + var_t9);
            } else {
                var_a5_29 = 0;
            }
            if (var_s5_2 & 0x20) {
                var_a0_39 = var_t3->unk2;
            } else {
                var_a0_39 = 0;
            }
            if (var_s5_2 & 0x40) {
                var_a4_9 = *(sp4A8 + var_t3);
            } else {
                var_a4_9 = 0;
            }
            if (var_s5_2 & 0x80) {
                var_a2_9 = var_t2->unk3;
            } else {
                var_a2_9 = 0;
            }
            *(void *)0x4000 = (s32) (var_a2_9 | (var_a4_9 << 8) | ((var_a5_29 << 0x18) | (var_a0_39 << 0x10)));
            if (var_s5_2 & 0x100) {
                var_a4_10 = *(sp490 + var_t2);
            } else {
                var_a4_10 = 0;
            }
            if (var_s5_2 & 0x200) {
                var_a5_30 = var_t8->unk2;
            } else {
                var_a5_30 = 0;
            }
            if (var_s5_2 & 0x400) {
                var_a0_40 = *(sp4A0 + var_t8);
            } else {
                var_a0_40 = 0;
            }
            if (var_s5_2 & 0x800) {
                var_a2_10 = var_t9->unk3;
            } else {
                var_a2_10 = 0;
            }
            var_t8_2 = var_t8 + 3;
            var_t2_2 = var_t2 + 2;
            var_t9_2 = var_t9 + 3;
            var_t3_2 = var_t3 + 2;
            *(void *)0x4000 = (s32) (var_a2_10 | (var_a0_40 << 8) | ((var_a4_10 << 0x18) | (var_a5_30 << 0x10)));
            if (var_s5_2 & 0x1000) {
                var_a4_11 = var_t3->unk2;
                var_t3_2 += 1;
            } else {
                var_a4_11 = 0;
            }
            if (var_s5_2 & 0x2000) {
                var_a5_31 = *var_t3_2;
                var_t3_2 += 1;
            } else {
                var_a5_31 = 0;
            }
            if (var_s5_2 & 0x4000) {
                var_a0_41 = *var_t3_2;
                var_t3_2 += 1;
            } else {
                var_a0_41 = 0;
            }
            if (var_s5_2 & 0x8000) {
                var_a2_11 = *var_t3_2;
            } else {
                var_a2_11 = 0;
            }
            *(void *)0x4000 = (s32) (var_a2_11 | (var_a0_41 << 8) | ((var_a4_11 << 0x18) | (var_a5_31 << 0x10)));
            if (var_s5_2 & 0x10000) {
                var_a4_12 = var_t9->unk3;
                var_t9_2 += 1;
            } else {
                var_a4_12 = 0;
            }
            if (var_s5_2 & 0x20000) {
                var_a2_12 = *var_t9_2;
                var_t9_2 += 1;
            } else {
                var_a2_12 = 0;
            }
            if (var_s5_2 & 0x40000) {
                var_a0_42 = *var_t9_2;
                var_t9_2 += 1;
            } else {
                var_a0_42 = 0;
            }
            if (var_s5_2 & (s32) var_a7_2) {
                var_a5_32 = *var_t9_2;
            } else {
                var_a5_32 = 0;
            }
            *(void *)0x4000 = (s32) (var_a5_32 | (var_a0_42 << 8) | ((var_a4_12 << 0x18) | (var_a2_12 << 0x10)));
            if (var_s5_2 & 0x100000) {
                var_a2_13 = var_t2->unk2;
                var_t2_2 += 1;
            } else {
                var_a2_13 = 0;
            }
            if (var_s5_2 & 0x200000) {
                var_a0_43 = *var_t2_2;
                var_t2_2 += 1;
            } else {
                var_a0_43 = 0;
            }
            if (var_s5_2 & 0x400000) {
                var_a4_13 = *var_t2_2;
                var_t2_2 += 1;
            } else {
                var_a4_13 = 0;
            }
            var_a3 = var_s5_2 & var_s6;
            if (var_a3 != 0) {
                var_a5_33 = *var_t2_2;
            } else {
                var_a5_33 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $a7, .L0d98cd28
            if (M2C_ERROR()) {
                var_a4_4 = var_t8->unk3;
                var_t8_2 += 1;
            } else {
                var_a4_4 = 0;
            }
            var_a7 = (void *) ((s64) var_s5_2 << 0x26);
            if ((s32) var_a7 < 0) {
                var_a2_14 = *var_t8_2;
                var_t8_2 += 1;
            } else {
                var_a2_14 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $t0, .L0d98cd38
            if (M2C_ERROR()) {
                var_a0_44 = *var_t8_2;
                var_t8_2 += 1;
            } else {
                var_a0_44 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $t1, .L0d98cd40
            if (M2C_ERROR()) {
                var_a5_34 = *var_t8_2;
            } else {
                var_a5_34 = 0;
            }
            *(void *)0x4000 = (s32) (var_a5_34 | (var_a0_44 << 8) | ((var_a4_4 << 0x18) | (var_a2_14 << 0x10)));
            *(void *)0x4000 = (s32) (var_t2->unk1 << 0x18);
        }
        temp_a1_12 = sp498->unkA0FC;
        var_a0_45 = &sp28;
        *(void *)0x4000 = 0x1D4;
        *(void *)0x4000 = 0;
        var_a2_15 = 0;
loop_42:
        switch (temp_a1_12) {                       /* switch 3; irregular */
        case 0x2A21:                                /* switch 3 */
            *(void *)0x4000 = var_s4;
            temp_f0_3 = var_a0_45->unk8;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            var_a0_45 += 0xC;
            *(void *)0x4000 = temp_f0_3;
            break;
        case 0x2A29:                                /* switch 3 */
            *(void *)0x4000 = var_s4;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            *(void *)0x4000 = (s32) var_a0_45->unk8;
            *(void *)0x4000 = (s32) var_a0_45->unkC;
            temp_f3_3 = var_a0_45->unk14;
            *(void *)0x4000 = (s32) var_a0_45->unk10;
            var_a0_45 += 0x18;
            *(void *)0x4000 = temp_f3_3;
            break;
        case 0x2A23:                                /* switch 3 */
            *(void *)0x4000 = var_s4;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            *(void *)0x4000 = (s32) var_a0_45->unk8;
            temp_f12_4 = (s32) var_a0_45->unkC;
            var_a0_45 += 0x10;
            *(void *)0x4000 = temp_f12_4;
            break;
        case 0x2A27:                                /* switch 3 */
            *(void *)0x4000 = var_s4;
            temp_f21_2 = var_a0_45->unk10;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            *(void *)0x4000 = (s32) var_a0_45->unk8;
            *(void *)0x4000 = (bitwise s32) var_a0_45->unkC;
            var_a0_45 += 0x14;
            *(void *)0x4000 = temp_f21_2;
            break;
        }
        switch (temp_a1_12) {                       /* switch 2; irregular */
        case 0x2A21:                                /* switch 2 */
            *(void *)0x4000 = var_s4;
            temp_f9 = var_a0_45->unk8;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            var_a0_45 += 0xC;
            *(void *)0x4000 = temp_f9;
            break;
        case 0x2A23:                                /* switch 2 */
            *(void *)0x4000 = var_s4;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            *(void *)0x4000 = (s32) var_a0_45->unk8;
            temp_f16_3 = (s32) var_a0_45->unkC;
            var_a0_45 += 0x10;
            *(void *)0x4000 = temp_f16_3;
            break;
        case 0x2A27:                                /* switch 2 */
            *(void *)0x4000 = var_s4;
            temp_f31 = var_a0_45->unk10;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            *(void *)0x4000 = (s32) var_a0_45->unk8;
            *(void *)0x4000 = (bitwise s32) var_a0_45->unkC;
            var_a0_45 += 0x14;
            *(void *)0x4000 = temp_f31;
            break;
        case 0x2A29:                                /* switch 2 */
            *(void *)0x4000 = var_s4;
            *(void *)0x4000 = (s32) var_a0_45->unk0;
            *(void *)0x4000 = (s32) var_a0_45->unk4;
            *(void *)0x4000 = (s32) var_a0_45->unk8;
            *(void *)0x4000 = (s32) var_a0_45->unkC;
            temp_f4_4 = var_a0_45->unk14;
            *(void *)0x4000 = (s32) var_a0_45->unk10;
            var_a0_45 += 0x18;
            *(void *)0x4000 = temp_f4_4;
            break;
        }
        var_a2_15 += 2;
        if (var_a2_15 != 0x18) {
            goto loop_42;
        }
        glEnd(var_a0_45, temp_a1_12, var_a2_15, var_a3, var_a4_4, 0x1D4, (s64) var_a6, (s64) var_a7);
        *(void *)0x4000 = 0x1D2;
        *(void *)0x4000 = 0;
        return;
    }
    __glSetError(0x501, temp_a4);
}
