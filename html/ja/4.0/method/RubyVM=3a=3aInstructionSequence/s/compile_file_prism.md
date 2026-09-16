# RubyVM::InstructionSequence.compile_file_prism

### def RubyVM::InstructionSequence.compile_file_prism(file, options = nil) -> RubyVM::InstructionSequence

引数 file で指定した Ruby のソースコードを構文解析器 Prism でパースしてコンパイルし、
[RubyVM::InstructionSequence](../../../class/RubyVM=3a=3aInstructionSequence.md) オブジェクトを作成して返します。

[RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md) とは異なり、常に Prism でパースします。

- **param** `file` -- ファイル名を文字列で指定します。
- **param** `options` -- コンパイル時のオプションを true、false、[Hash](../../../class/Hash.md) オブジェクトのいずれかで指定します。詳細は
               [RubyVM::InstructionSequence.compile_option=](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_option=3d.md) を参照してください。

```ruby title="例"
# /tmp/hello.rb
puts "Hello, world!"

iseq = RubyVM::InstructionSequence.compile_file_prism("/tmp/hello.rb")
iseq.eval
# => Hello, world!
```

- **SEE** [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md)
