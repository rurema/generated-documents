# BigDecimal#remainder

### def remainder(n) -> BigDecimal

self を n で割った余りを返します。

- **param** `n` -- self を割る数を指定します。

```ruby
require 'bigdecimal'
x = BigDecimal((2**100).to_s)
p x.remainder(3).to_i   # => 1
p (-x).remainder(3).to_i  # => -1
p x.remainder(-3).to_i  # => 1
p (-x).remainder(-3).to_i # => -1
```

戻り値は self と同じ符号になります。これは [BigDecimal#%](../../../method/BigDecimal/i/=25.md) とは異なる点に注意してください。詳細は [Numeric#%](../../../method/Numeric/i/=25.md)、
[Numeric#remainder](../../../method/Numeric/i/remainder.md) を参照して下さい。
