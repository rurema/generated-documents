# RubyVM::InstructionSequence#base_label

### def base_label -> String

self が表す命令シーケンスの基本ラベルを返します。

例1:irb で実行した場合

```ruby
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
p iseq
# => <RubyVM::InstructionSequence:<compiled>@<compiled>>
p iseq.base_label
# => "<compiled>"
```

例2: [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md) を使用した場合

```console
# /tmp/method.rb
def hello
  puts "hello, world"
end

# irb
> iseq = RubyVM::InstructionSequence.compile_file('/tmp/method.rb')
> iseq.base_label # => "<main>"
```

```ruby title="例3"
# /tmp/method2.rb
def hello
  puts "hello, world"
end

p RubyVM::InstructionSequence.of(method(:hello)).base_label
# => "hello"
```

- **SEE** [RubyVM::InstructionSequence#label](../../../method/RubyVM=3a=3aInstructionSequence/i/label.md)
