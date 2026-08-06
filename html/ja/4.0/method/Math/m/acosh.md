# Math?.acosh

### module_function def acosh(x) -> Float

`x` の逆双曲線余弦関数（area hyperbolic cosine）の値を返します。

```text title="定義"
acosh(x) = log(x + sqrt(x * x - 1)) [x >= 1]
```

- **param** `x` -- `x >= 1` の範囲の実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `Math::DomainError` -- `x` に範囲外の実数を指定した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

- **SEE** [Math?.cosh](../../../method/Math/m/cosh.md)
