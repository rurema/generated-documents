# RubyVM::InstructionSequence.compile_file

### def RubyVM::InstructionSequence.compile_file(file, options = nil) -> RubyVM::InstructionSequence

引数 file で指定した Ruby のソースコードを元にコンパイル済みの
[RubyVM::InstructionSequence](../../../class/RubyVM=3a=3aInstructionSequence.md) オブジェクトを作成して返します。

[RubyVM::InstructionSequence.compile](../../../method/RubyVM=3a=3aInstructionSequence/s/compile.md) とは異なり、file、path などのメタデータは自動的に取得します。

- **param** `file` -- ファイル名を文字列で指定します。

- **param** `options` -- コンパイル時のオプションを true、false、[Hash](../../../class/Hash.md) オブジェクトのいずれかで指定します。詳細は
               [RubyVM::InstructionSequence.compile_option=](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_option=3d.md) を参照してください。

```ruby
# /tmp/hello.rb
puts "Hello, world!"

# irb
p RubyVM::InstructionSequence.compile_file("/tmp/hello.rb")
# => <RubyVM::InstructionSequence:<main>@/tmp/hello.rb>
```

- **SEE** [RubyVM::InstructionSequence.compile](../../../method/RubyVM=3a=3aInstructionSequence/s/compile.md)
