# StringIO#each_byte

### def each_byte{|ch| ... }    -> self
### def each_byte -> Enumerator

自身から 1 バイトずつ読み込み、整数 ch に変換し、それを引数として与えられたブロックを実行します。

- **raise** `IOError` -- 自身が読み取り不可なら発生します。

```ruby title="例"
require "stringio"
a = StringIO.new("hoge")
a.each_byte{|ch| p ch }
# => 104
#   111
#   103
#   101
```

- **SEE** [IO#each_byte](../../../method/IO/i/each_byte.md)
