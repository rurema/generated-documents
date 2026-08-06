# RubyVM::InstructionSequence.compile_option=

### def RubyVM::InstructionSequence.compile_option=(options)

命令シーケンスのコンパイル時のデフォルトの最適化オプションを引数
options で指定します。

- **param** `options` -- コンパイル時の最適化オプションを true、false、nil、
               [Hash](../../../class/Hash.md) のいずれかで指定します。true を指定した場合は
               全てのオプションを有効にします。false を指定した場合は全
               てのオプションを無効にします。nil を指定した場合はいずれ
               のオプションも変更しません。また、[Hash](../../../class/Hash.md) を指定した
               場合は以下のキーに対して、true か false を指定する事で個
               別に有効、無効を指定します。
  ```
    * :inline_const_cache
    * :instructions_unification
    * :operands_unification
    * :peephole_optimization
    * :specialized_instruction
    * :tailcall_optimization
  ```
               :debug_level をキーに指定した場合は値を数値で指定します。

.new、.compile、.compile_file メソッドの実行の際に option 引数を指定した場合はその実行のみ最適化オプションを変更する事もできます。

- **SEE** [RubyVM::InstructionSequence.new](../../../method/RubyVM=3a=3aInstructionSequence/s/new.md),
     [RubyVM::InstructionSequence.compile](../../../method/RubyVM=3a=3aInstructionSequence/s/compile.md),
     [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md)
