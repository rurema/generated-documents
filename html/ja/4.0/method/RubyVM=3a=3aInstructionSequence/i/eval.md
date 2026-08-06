# RubyVM::InstructionSequence#eval

### def eval -> object

self の命令シーケンスを評価してその結果を返します。

```ruby
p RubyVM::InstructionSequence.compile("1 + 2").eval # => 3
```
