# RubyVM::InstructionSequence.compile_prism

### def RubyVM::InstructionSequence.compile_prism(source, file = nil, path = nil, line = 1, options = nil) -> RubyVM::InstructionSequence

引数 source で指定した Ruby のソースコードを構文解析器 Prism でパースしてコンパイルし、
[RubyVM::InstructionSequence](../../../class/RubyVM=3a=3aInstructionSequence.md) オブジェクトを作成して返します。

[RubyVM::InstructionSequence.compile](../../../method/RubyVM=3a=3aInstructionSequence/s/compile.md) とは異なり、常に Prism でパースします。

- **param** `source` -- Ruby のソースコードを表す文字列、または開いた File オブジェクトを指定します。
- **param** `file` -- ファイル名を文字列で指定します。
- **param** `path` -- 引数 file の絶対パスファイル名を文字列で指定します。
- **param** `line` -- 引数 source の 1 行目の行番号を指定します。
- **param** `options` -- コンパイル時のオプションを true、false、[Hash](../../../class/Hash.md) オブジェクトのいずれかで指定します。詳細は
               [RubyVM::InstructionSequence.compile_option=](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_option=3d.md) を参照してください。

```ruby title="例"
iseq = RubyVM::InstructionSequence.compile_prism("a = 1 + 2")
p iseq.eval # => 3
```

- **SEE** [RubyVM::InstructionSequence.compile](../../../method/RubyVM=3a=3aInstructionSequence/s/compile.md)
