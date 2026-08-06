# Range#inspect

### def inspect -> String

self を文字列に変換します(始端と終端のオブジェクトは #inspect メソッドで文字列に変換されます)。

- **SEE** [Range#to_s](../../../method/Range/i/to_s.md)

```ruby title="例"
p (1..5).inspect    # => "1..5"
p ("1".."5").inspect  # => "\"1\"..\"5\""
```
