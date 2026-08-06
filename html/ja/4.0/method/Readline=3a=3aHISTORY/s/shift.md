# Readline::HISTORY.shift

### def Readline::HISTORY.shift -> String

ヒストリの最初の内容を取り出します。
最初の内容は、ヒストリから取り除かれます。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

```ruby title="例"
require "readline"
  
Readline::HISTORY.push("foo", "bar", "baz")
p Readline::HISTORY.shift #=> "foo"
p Readline::HISTORY.shift #=> "bar"
p Readline::HISTORY.shift #=> "baz"
```

- **SEE** [Readline::HISTORY.push](../../../method/Readline=3a=3aHISTORY/s/push.md)、[Readline::HISTORY.pop](../../../method/Readline=3a=3aHISTORY/s/pop.md)、
     [Readline::HISTORY.delete_at](../../../method/Readline=3a=3aHISTORY/s/delete_at.md)
