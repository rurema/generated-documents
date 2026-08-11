# StringIO#readbyte

### def readbyte    -> Integer

自身から 1 文字読み込んで、その文字に対応する整数を返します。

文字列の終端に到達した時には例外 [EOFError](../../../class/EOFError.md) を発生させます。

```ruby title="例"
require "stringio"
a = StringIO.new("hoge")
p a.readbyte             # => 104
```

- **raise** `EOFError` -- 文字列の終端に到達した時に発生します。
