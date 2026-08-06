# class RubyVM::InstructionSequence < Object

Ruby の Virtual Machine のコンパイル済みの命令シーケンスを表すクラスです。

[Method](../class/Method.md)、[Proc](../class/Proc.md) オブジェクトや Ruby のソースコードを表す文字列から VM の命令シーケンスを得る事ができます。また、
RubyVM::InstructionSequence オブジェクトを元に命令シーケンスを読みやすい文字列に変換する事もできます。Ruby の命令シーケンスコンパイラの設定を扱う必要がありますが、Ruby の VM がどのように働くかを知るのに有用です。

VM の命令シーケンスの一覧はRuby のソースコード中の insns.def から参照できます。

- <https://github.com/ruby/ruby/blob/master/insns.def>

## Class Methods

- [compile](../method/RubyVM=3a=3aInstructionSequence/s/compile.md)
- [new](../method/RubyVM=3a=3aInstructionSequence/s/new.md)
- [compile_file](../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md)
- [compile_option](../method/RubyVM=3a=3aInstructionSequence/s/compile_option.md)
- [compile_option=](../method/RubyVM=3a=3aInstructionSequence/s/compile_option=3d.md)
- [disasm](../method/RubyVM=3a=3aInstructionSequence/s/disasm.md)
- [disassemble](../method/RubyVM=3a=3aInstructionSequence/s/disassemble.md)
- [load_from_binary](../method/RubyVM=3a=3aInstructionSequence/s/load_from_binary.md)
- [load_from_binary_extra_data](../method/RubyVM=3a=3aInstructionSequence/s/load_from_binary_extra_data.md)
- [of](../method/RubyVM=3a=3aInstructionSequence/s/of.md)

## Instance Methods

- [absolute_path](../method/RubyVM=3a=3aInstructionSequence/i/absolute_path.md)
- [base_label](../method/RubyVM=3a=3aInstructionSequence/i/base_label.md)
- [disasm](../method/RubyVM=3a=3aInstructionSequence/i/disasm.md)
- [disassemble](../method/RubyVM=3a=3aInstructionSequence/i/disassemble.md)
- [eval](../method/RubyVM=3a=3aInstructionSequence/i/eval.md)
- [first_lineno](../method/RubyVM=3a=3aInstructionSequence/i/first_lineno.md)
- [inspect](../method/RubyVM=3a=3aInstructionSequence/i/inspect.md)
- [label](../method/RubyVM=3a=3aInstructionSequence/i/label.md)
- [path](../method/RubyVM=3a=3aInstructionSequence/i/path.md)
- [to_a](../method/RubyVM=3a=3aInstructionSequence/i/to_a.md)
- [to_binary](../method/RubyVM=3a=3aInstructionSequence/i/to_binary.md)
