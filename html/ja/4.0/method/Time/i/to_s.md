# Time#to_s

### def to_s     -> String

時刻を文字列に変換した結果を返します。
以下のようにフォーマット文字列を使って strftime を呼び出すのと同じです。

```ruby
t = Time.local(2000,1,2,3,4,5,6)
p t.to_s                               # => "2000-01-02 03:04:05 +0900"
p t.strftime("%Y-%m-%d %H:%M:%S %z")   # => "2000-01-02 03:04:05 +0900"

p t.utc.to_s                           # => "2000-01-01 18:04:05 UTC"
p t.strftime("%Y-%m-%d %H:%M:%S UTC")  # => "2000-01-01 18:04:05 UTC"
```

戻り値の文字エンコーディングは [Encoding::US_ASCII](../../../method/Encoding/c/US_ASCII.md) です。
