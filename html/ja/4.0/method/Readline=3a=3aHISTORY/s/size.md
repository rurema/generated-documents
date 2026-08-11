# Readline::HISTORY.size

### def Readline::HISTORY.length -> Integer
### def Readline::HISTORY.size -> Integer

ヒストリに格納された内容の数を取得します。

```ruby title="例: ヒストリの内容を最初から順番に出力する"
require "readline"
  
Readline::HISTORY.push("foo", "bar", "baz")
p Readline::HISTORY.length # => 3
```

- **SEE** [Readline::HISTORY.empty?](../../../method/Readline=3a=3aHISTORY/s/empty=3f.md)
