# Matrix#rank

### def rank -> Integer

階数 (rank) を返します。

[Float](../../../class/Float.md) を使用すると、精度が不足するため、誤った結果が生じる可能性があることに注意してください。
代わりに、[Rational](../../../class/Rational.md) や [BigDecimal](../../../class/BigDecimal.md) などの正確なオブジェクトを使用することを検討してください。

```ruby
require 'matrix'
m = Matrix[[2, 6], [1, 3]]
p m.rank  # => 1
```
