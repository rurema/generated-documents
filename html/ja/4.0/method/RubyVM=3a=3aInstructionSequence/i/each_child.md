# RubyVM::InstructionSequence#each_child

### def each_child {|child_iseq| ... } -> self
{: since="2.5.0"}

`self` が直接含む(ネストした)命令シーケンスを、それぞれ引数としてブロックに渡して繰り返します。

繰り返す順序は実装やバージョンによって異なるため、順序に依存すべきではありません。

```ruby title="例"
def foo
  bar = -> { 1 }
  bar.call
end

iseq = RubyVM::InstructionSequence.of(method(:foo))
children = []
iseq.each_child {|child| children << child.label }
p children # => ["block in foo"]
```
