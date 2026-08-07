# Integer#fdiv

### def fdiv(other) -> Numeric

`self` を `other` で割った商を [Float](../../../class/Float.md) で返します。
ただし [Complex](../../../class/Complex.md) が関わる場合は例外です。
その場合も成分は `Float` になります。

- **param** `other` -- `self` に対する除数

```ruby title="例"
654321.fdiv(13731)      # => 47.652829364212366
654321.fdiv(13731.24)   # => 47.65199646936475

-1234567890987654321.fdiv(13731)      # => -89910996357705.52
-1234567890987654321.fdiv(13731.24)   # => -89909424858035.72
```

- **SEE** [Numeric#quo](../../../method/Numeric/i/quo.md), [Numeric#div](../../../method/Numeric/i/div.md), [Integer#div](../../../method/Integer/i/div.md)
