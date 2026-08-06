# Rational#to_d

### def to_d(nFig)     -> BigDecimal

自身を [BigDecimal](../../../class/BigDecimal.md) に変換します。

nFig 桁まで計算を行います。

- **param** `nFig` -- 計算を行う桁数

- **return** -- [BigDecimal](../../../class/BigDecimal.md) に変換したオブジェクト

- **raise** `ArgumentError` -- nFig に 0 以下を指定した場合に発生します。

```ruby
require "bigdecimal"
require "bigdecimal/util"
p (1/3r).to_d(3)  # => 0.333e0
p (1/3r).to_d(10) # => 0.3333333333e0
```
