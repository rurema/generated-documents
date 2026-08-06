# String#chars

### def chars                 -> [String]
### def chars {|cstr| block } -> self

文字列の各文字を文字列の配列で返します。(self.each_char.to_a と同じです)

```ruby title="例"
p "hello世界".chars # => ["h", "e", "l", "l", "o", "世", "界"]
```

ブロックが指定された場合は [String#each_char](../../../method/String/i/each_char.md) と同じように動作します。

Ruby 2.6 までは deprecated の警告が出ますが、Ruby 2.7 で警告は削除されました。

- **SEE** [String#each_char](../../../method/String/i/each_char.md)
