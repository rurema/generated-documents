# RubyVM::InstructionSequence#script_lines

### def script_lines -> [String] | nil

`self` が表す命令シーケンスに対応するソースコードの行を配列で返します。記録されていない場合は nil を返します。

配列に含まれる行は `self` の命令シーケンスの範囲に限られず、ソースファイル全体の行です。

記録するには、コンパイルする前に [RubyVM.keep_script_lines](../../../method/RubyVM/s/keep_script_lines.md) を true に設定しておく必要があります。

このメソッドは Ruby 内部での利用、デバッグ、研究のための API です。それ以外の目的で使うべきではありません。将来のバージョンとの互換性も保証されません。

```ruby title="例"
RubyVM.keep_script_lines = true
iseq = RubyVM::InstructionSequence.compile("num = 1 + 2\nputs num")
p iseq.script_lines # => ["num = 1 + 2\n", "puts num"]
RubyVM.keep_script_lines = false
```

- **SEE** [RubyVM.keep_script_lines](../../../method/RubyVM/s/keep_script_lines.md)
