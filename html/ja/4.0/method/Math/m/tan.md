# Math?.tan

### module_function def tan(x) -> Float

`x` の正接関数（tangent）の値を返します。

- **param** `x` -- 実数（ラジアンで与えます）

- **return** -- 実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

```ruby title="例"
p Math.tan(0) # => 0.0
```

- **SEE** [Math?.atan](../../../method/Math/m/atan.md), [Math?.atan2](../../../method/Math/m/atan2.md)
