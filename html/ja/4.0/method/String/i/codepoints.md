# String#codepoints

### def codepoints                      -> [Integer]
### def codepoints {|codepoint| block } -> self

文字列の各コードポイントの配列を返します。(self.each_codepoint.to_a と同じです)

```ruby title="例"
#coding:UTF-8
p "hello わーるど".codepoints
# => [104, 101, 108, 108, 111, 32, 12431, 12540, 12427, 12393]
```

ブロックが指定された場合は [String#each_codepoint](../../../method/String/i/each_codepoint.md) と同じように動作します。

Ruby 2.6 までは deprecated の警告が出ますが、Ruby 2.7 で警告は削除されました。

- **SEE** [String#each_codepoint](../../../method/String/i/each_codepoint.md)
