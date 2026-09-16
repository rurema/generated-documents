# RubyVM.keep_script_lines=

### def RubyVM.keep_script_lines -> bool
### def RubyVM.keep_script_lines=(bool)

読み込んだスクリプトのソースコードの行を記録するかどうかを取得、設定します。

有効にすると、以降にロードされたスクリプトのソースコードの行が記録され、
[RubyVM::InstructionSequence#script_lines](../../../method/RubyVM=3a=3aInstructionSequence/i/script_lines.md) などから参照できるようになります。

このメソッドは Ruby 内部での利用、デバッグ、研究のための API です。それ以外の目的で使うべきではありません。将来のバージョンとの互換性も保証されません。

- **param** `bool` -- 記録を有効にするかどうかを true か false で指定します。

```ruby title="例"
p RubyVM.keep_script_lines # => false
RubyVM.keep_script_lines = true
p RubyVM.keep_script_lines # => true
RubyVM.keep_script_lines = false
```
