# RubyVM::InstructionSequence.load_from_binary_extra_data

### def RubyVM::InstructionSequence.load_from_binary_extra_data(binary) -> String

バイナリフォーマットの文字列から埋め込まれたextra_dataを取り出します。

```ruby title="例"
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
binary = iseq.to_binary("extra_data")
p RubyVM::InstructionSequence.load_from_binary_extra_data(binary) # => extra_data
```

- **SEE** [RubyVM::InstructionSequence#to_binary](../../../method/RubyVM=3a=3aInstructionSequence/i/to_binary.md)
