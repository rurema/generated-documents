# Math?.log

### module_function def log(x) -> Float
### module_function def log(x, b) -> Float

`x` の対数（logarithm）を返します。

引数 `x`, `b` の両方に `0` を指定した場合は [Float::NAN](../../../method/Float/c/NAN.md) を返します。

- **param** `x` -- 正の実数を指定します。

- **param** `b` -- 底を指定します。省略した場合は自然対数（natural logarithm）を計算します。

- **raise** `TypeError` -- 引数のどちらかに数値以外を指定した場合に発生します。

- **raise** `RangeError` -- 引数のどちらかに実数以外の数値を指定した場合に発生します。

- **raise** `DomainError` -- 引数のどちらかに負の数を指定した場合に発生します。

```ruby title="例"
p Math.log(0)        # => -Infinity
p Math.log(1)        # => 0.0
p Math.log(Math::E)  # => 1.0
p Math.log(Math::E**3) # => 3.0
p Math.log(12, 3)    # => 2.2618595071429146
```

- **SEE** [Math?.log2](../../../method/Math/m/log2.md), [Math?.log10](../../../method/Math/m/log10.md), [Math?.exp](../../../method/Math/m/exp.md)
