# String#ord

### def ord -> Integer

文字列の最初の文字の文字コードを整数で返します。

self が空文字列のときは例外を発生します。

- **return** --                 文字コードを表す整数
- **raise** `ArgumentError` --    self の長さが 0 のとき発生

```ruby title="例"
p "a".ord   # => 97
```

- **SEE** [Integer#chr](../../../method/Integer/i/chr.md), [String#chr](../../../method/String/i/chr.md)
