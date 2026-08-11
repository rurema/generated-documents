# BigMath?.log

### module_function def log(x, prec) -> BigDecimal

x の自然対数を prec で指定した精度で計算します。

x に無限大を指定した場合は無限大を返します。NaN を指定した場合には NaN
を返します。

- **param** `x` -- 計算対象の数値を [Integer](../../../class/Integer.md)、[Float](../../../class/Float.md)、
         [Rational](../../../class/Rational.md)、[BigDecimal](../../../class/BigDecimal.md) オブジェクトのいずれかで指定します。

- **param** `prec` -- 計算結果の精度を指定します。

- **raise** `Math::DomainError` -- x に 0 以下の数値か [Complex](../../../class/Complex.md) オブジェクトが指定された場合に発生します。

- **raise** `ArgumentError` -- prec に 0 以下の数値が指定された場合に発生します。

```ruby
require "bigdecimal/math"

puts BigMath::log(BigDecimal('2'), 10) # => 0.693147180559945309417232112588603776354688e0
```
