# RubyVM::InstructionSequence#inspect

### def inspect -> String

self の情報をラベルとパスを含んだ人間に読みやすい文字列にして返します。

```ruby title="例"
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
p iseq.inspect # => "<RubyVM::InstructionSequence:<compiled>@<compiled>>"
```

- **SEE** [RubyVM::InstructionSequence#label](../../../method/RubyVM=3a=3aInstructionSequence/i/label.md),
     [RubyVM::InstructionSequence#path](../../../method/RubyVM=3a=3aInstructionSequence/i/path.md)
