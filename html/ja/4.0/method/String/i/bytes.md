# String#bytes

### def bytes               -> [Integer]
### def bytes {|byte| ... } -> self

文字列の各バイトを数値の配列で返します。(self.each_byte.to_a と同じです)

```ruby title="例"
p "str".bytes # => [115, 116, 114]
```

ブロックが指定された場合は [String#each_byte](../../../method/String/i/each_byte.md) と同じように動作します。

Ruby 2.6 までは deprecated の警告が出ますが、Ruby 2.7 で警告は削除されました。

- **SEE** [String#each_byte](../../../method/String/i/each_byte.md)
