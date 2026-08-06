# Hash#to_s

### def to_s     -> String
### def inspect  -> String

ハッシュの内容を人間に読みやすい文字列にして返します。

```ruby title="例"
h = { "c" => 300, "a" => 100, "d" => 400  }
p h.inspect # => "{\"c\"=>300, \"a\"=>100, \"d\"=>400}"
```
