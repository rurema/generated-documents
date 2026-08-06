# Float#to_d

### def to_d -> BigDecimal
### def to_d(prec) -> BigDecimal

自身を [BigDecimal](../../../class/BigDecimal.md) に変換します。

- **param** `prec` -- 計算結果の精度。省略した場合は [Float::DIG](../../../method/Float/c/DIG.md) + 1 です。

- **return** -- [BigDecimal](../../../class/BigDecimal.md) に変換したオブジェクト

```ruby
require 'bigdecimal'
require 'bigdecimal/util'

p 1.0.to_d       # => 0.1e1
p (1.0 / 0).to_d # => Infinity

p (1.0 / 3).to_d / (2.0 / 3).to_d  # => 0.5e0
p ((1.0 / 3) / (2.0 / 3)).to_d     # => 0.5e0
```

- **raise** `ArgumentError` -- prec に負の数を指定した場合に発生します。
