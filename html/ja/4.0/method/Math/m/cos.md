# Math?.cos

### module_function def cos(x) -> Float

`x` の余弦関数（cosine）の値を返します。

- **param** `x` -- 実数（ラジアンで与えます）

- **return** -- [-1, 1] の実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

```ruby title="例"
p Math.cos(Math::PI) # => -1.0
```

- **SEE** [Math?.acos](../../../method/Math/m/acos.md)
