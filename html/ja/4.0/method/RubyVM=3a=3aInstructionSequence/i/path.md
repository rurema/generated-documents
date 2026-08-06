# RubyVM::InstructionSequence#path

### def path -> String

self が表す命令シーケンスの相対パスを返します。

self の作成時に指定した文字列を返します。self を文字列から作成していた場合は "<compiled>" を返します。

例1:irb で実行した場合

```ruby
iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
p iseq
# => <RubyVM::InstructionSequence:<compiled>@<compiled>>
p iseq.path
# => "<compiled>"
```

例2: [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md) を使用した場合

```console
# /tmp/method.rb
def hello
  puts "hello, world"
end

# irb
> iseq = RubyVM::InstructionSequence.compile_file('method.rb')
> iseq.path # => "method.rb"
```

- **SEE** [RubyVM::InstructionSequence#absolute_path](../../../method/RubyVM=3a=3aInstructionSequence/i/absolute_path.md)
