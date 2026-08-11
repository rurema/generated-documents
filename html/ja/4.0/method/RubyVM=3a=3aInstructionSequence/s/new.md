# RubyVM::InstructionSequence.new

### def RubyVM::InstructionSequence.compile(source, file = nil, path = nil, line = 1, options = nil) -> RubyVM::InstructionSequence
### def RubyVM::InstructionSequence.new(source, file = nil, path = nil, line = 1, options = nil) -> RubyVM::InstructionSequence

引数 source で指定した Ruby のソースコードを元にコンパイル済みの
[RubyVM::InstructionSequence](../../../class/RubyVM=3a=3aInstructionSequence.md) オブジェクトを作成して返します。

- **param** `source` -- Ruby のソースコードを文字列で指定します。

- **param** `file` -- ファイル名を文字列で指定します。

- **param** `path` -- 引数 file の絶対パスファイル名を文字列で指定します。

- **param** `line` -- 引数 source の 1 行目の行番号を指定します。

- **param** `options` -- コンパイル時のオプションを true、false、[Hash](../../../class/Hash.md) オブジェクトのいずれかで指定します。詳細は
               [RubyVM::InstructionSequence.compile_option=](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_option=3d.md) を参照してください。

```ruby
p RubyVM::InstructionSequence.compile("a = 1 + 2")
# => <RubyVM::InstructionSequence:<compiled>@<compiled>>
```

- **SEE** [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md)
