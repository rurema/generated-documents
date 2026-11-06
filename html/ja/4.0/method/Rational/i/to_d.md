# Rational#to_d

### def to_d(precision = 0) -> BigDecimal

自身を [BigDecimal](../../../class/BigDecimal.md) に変換します。

`precision` 桁まで計算を行います。
`precision` に 0 を指定した場合は桁数を自動的に決めます。
`precision` を省略した場合は 0 を指定したものとみなします。

- **param** `precision` -- 計算を行う桁数

- **return** -- [BigDecimal](../../../class/BigDecimal.md) に変換したオブジェクト

- **raise** `ArgumentError` -- `precision` に負の数を指定した場合に発生します。

```ruby
require "bigdecimal"
require "bigdecimal/util"
p (1/3r).to_d(3)  # => 0.333e0
p (1/3r).to_d(10) # => 0.3333333333e0
p (1/3r).to_d     # => 0.33333333333333333333333333333333e0
p (22/7r).to_d    # => 0.31428571428571428571428571428571e1
p (1/4r).to_d     # => 0.25e0
```
