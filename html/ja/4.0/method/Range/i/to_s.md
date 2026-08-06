# Range#to_s

### def to_s -> String

self を文字列に変換します(始端と終端のオブジェクトは #to_s メソッドで文字列に変換されます)。

- **SEE** [Range#inspect](../../../method/Range/i/inspect.md)

```ruby title="例"
p (1..5).to_s    # => "1..5"
p ("1".."5").to_s  # => "1..5"
```
