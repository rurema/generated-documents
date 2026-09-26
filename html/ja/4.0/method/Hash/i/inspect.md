# Hash#inspect

### def to_s     -> String
### def inspect  -> String

ハッシュの内容を人間に読みやすい文字列にして返します。

キーが [Symbol](../../../class/Symbol.md) の要素は `key: value` の形式で、それ以外の要素は `=>` の前後に空白を入れた `key => value` の形式で表示します。Ruby 3.3 までは、どちらのキーも空白を入れない `key=>value` の形式で表示していました。

```ruby title="例"
h = { "c" => 300, "a" => 100, "d" => 400, :e => 500 }
p h.inspect # => "{\"c\" => 300, \"a\" => 100, \"d\" => 400, e: 500}"
```
