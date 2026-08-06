# Math?.log2

### module_function def log2(x) -> Float

2 を底とする `x` の対数（binary logarithm）を返します。

- **param** `x` -- 正の実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `Math::DomainError` -- `x` に範囲外の実数を指定した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

```ruby title="例"
p Math.log2(1)    # => 0.0
p Math.log2(2)    # => 1.0
p Math.log2(32768)  # => 15.0
p Math.log2(65536)  # => 16.0
```

- **SEE** [Math?.log](../../../method/Math/m/log.md), [Math?.log10](../../../method/Math/m/log10.md)
