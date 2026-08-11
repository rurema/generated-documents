# Readline::HISTORY.pop

### def Readline::HISTORY.pop -> String

ヒストリの最後の内容を取り出します。
最後の内容は、ヒストリから取り除かれます。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

```ruby title="例"
require "readline"
  
Readline::HISTORY.push("foo", "bar", "baz")
p Readline::HISTORY.pop # => "baz"
p Readline::HISTORY.pop # => "bar"
p Readline::HISTORY.pop # => "foo"
```

- **SEE** [Readline::HISTORY.push](../../../method/Readline=3a=3aHISTORY/s/push.md)、[Readline::HISTORY.shift](../../../method/Readline=3a=3aHISTORY/s/shift.md)、
     [Readline::HISTORY.delete_at](../../../method/Readline=3a=3aHISTORY/s/delete_at.md)
