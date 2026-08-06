# BigDecimal#divmod

### def divmod(n) -> [BigDecimal, BigDecimal]

self を other で割った商 q と余り r を、 [q, r] という 2 要素の配列にして返します。

商は負の無限大負方向に丸められます。

- **param** `n` -- self を割る数を指定します。

```ruby
require 'bigdecimal'

a = BigDecimal("42")
b = BigDecimal("9")

p a.divmod(b) # => [0.4e1, 0.6e1]
```
