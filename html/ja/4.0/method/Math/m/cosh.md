# Math?.cosh

### module_function def cosh(x) -> Float

`x` の双曲線余弦関数（hyperbolic cosine）の値を返します。

```text title="定義"
cosh(x) = (exp(x) + exp(-x)) / 2
```

- **param** `x` -- 実数

- **raise** `TypeError` -- `x` に数値以外を指定した場合に発生します。

- **raise** `RangeError` -- `x` に実数以外の数値を指定した場合に発生します。

- **SEE** [Math?.acosh](../../../method/Math/m/acosh.md)
