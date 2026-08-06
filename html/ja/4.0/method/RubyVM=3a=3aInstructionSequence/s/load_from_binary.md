# RubyVM::InstructionSequence.load_from_binary

### def RubyVM::InstructionSequence.load_from_binary(binary) -> RubyVM::InstructionSequence

[RubyVM::InstructionSequence#to_binary](../../../method/RubyVM=3a=3aInstructionSequence/i/to_binary.md)により作られたバイナリフォーマットの文字列からiseqのオブジェクトをロードします。

このローダーは検証機構をもっておらず、壊れたり改変されたバイナリを読み込むと深刻な問題を引き起こします。

他者により提供されたバイナリデータはロードすべきではありません。自分が変換したバイナリデータを使うべきです。

```ruby title="例"
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
binary = iseq.to_binary
p RubyVM::InstructionSequence.load_from_binary(binary).eval # => 3
```

- **SEE** [RubyVM::InstructionSequence#to_binary](../../../method/RubyVM=3a=3aInstructionSequence/i/to_binary.md)
