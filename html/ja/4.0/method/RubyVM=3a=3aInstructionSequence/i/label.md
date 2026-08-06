# RubyVM::InstructionSequence#label

### def label -> String

self が表す命令シーケンスのラベルを返します。通常、メソッド名、クラス名、モジュール名などで構成されます。

トップレベルでは "<main>" を返します。self を文字列から作成していた場合は "<compiled>" を返します。

例1:irb で実行した場合

```ruby
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
p iseq
# => <RubyVM::InstructionSequence:<compiled>@<compiled>>
p iseq.label
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
> iseq.label # => "<main>"
```

```ruby title="例3"
# /tmp/method2.rb
def hello
  puts "hello, world"
end

p RubyVM::InstructionSequence.of(method(:hello)).label
# => "hello"
```

- **SEE** [RubyVM::InstructionSequence#base_label](../../../method/RubyVM=3a=3aInstructionSequence/i/base_label.md)
