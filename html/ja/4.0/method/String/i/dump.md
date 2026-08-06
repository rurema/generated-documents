# String#dump

### def dump -> String

文字列中の非表示文字をバックスラッシュ記法に置き換えた文字列を返します。
str == eval(str.dump) となることが保証されています。

```ruby title="例"
# p だとさらにバックスラッシュが増えて見にくいので puts している
puts "abc\r\n\f\x00\b10\\\"".dump   # => "abc\r\n\f\x00\b10\\\""
```

- **SEE** [String#undump](../../../method/String/i/undump.md)
