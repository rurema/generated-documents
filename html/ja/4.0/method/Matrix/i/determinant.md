# Matrix#determinant

### def determinant -> Numeric
### def det -> Numeric

行列式 (determinant) の値を返します。

[Float](../../../class/Float.md) を使用すると、精度が不足するため、誤った結果が生じる可能性があることに注意してください。
代わりに、[Rational](../../../class/Rational.md) や [BigDecimal](../../../class/BigDecimal.md) などの正確なオブジェクトを使用することを検討してください。

- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- 正方行列でない場合に発生します

```ruby title="例"
require 'matrix'

p Matrix[[2, 1], [-1, 2]].det         #=> 5
p Matrix[[2.0, 1.0], [-1.0, 2.0]].det #=> 5.0
```
