# RubyVM::InstructionSequence.compile_option

### def RubyVM::InstructionSequence.compile_option -> Hash

命令シーケンスのコンパイル時のデフォルトの最適化オプションを Hash で返します。


```ruby title="例"
require "pp"
pp RubyVM::InstructionSequence.compile_option

# => {inline_const_cache: true,
# peephole_optimization: true,
# tailcall_optimization: false,
# specialized_instruction: true,
# operands_unification: true,
# instructions_unification: false,
# debug_frozen_string_literal: false,
# coverage_enabled: true,
# debug_level: 0,
# frozen_string_literal: nil}
```


- **SEE** [RubyVM::InstructionSequence.compile_option=](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_option=3d.md)
