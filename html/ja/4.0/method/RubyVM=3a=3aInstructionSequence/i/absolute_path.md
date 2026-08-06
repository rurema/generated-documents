# RubyVM::InstructionSequence#absolute_path

### def absolute_path -> String | nil

self が表す命令シーケンスの絶対パスを返します。

self を文字列から作成していた場合は nil を返します。

例1:irb で実行した場合

```ruby
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
p iseq
# => <RubyVM::InstructionSequence:<compiled>@<compiled>>
p iseq.absolute_path
# => nil
```

例2: [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md) を使用した場合

```console
# /tmp/method.rb
def hello
  puts "hello, world"
end

# irb
> iseq = RubyVM::InstructionSequence.compile_file('/tmp/method.rb')
> iseq.absolute_path # => "/tmp/method.rb"
```

- **SEE** [RubyVM::InstructionSequence#path](../../../method/RubyVM=3a=3aInstructionSequence/i/path.md)
