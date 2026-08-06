# Vector#elements_to_r

### def elements_to_r -> Vector

ベクトルの各成分を[Rational](../../../class/Rational.md)に変換したベクトルを返します。

このメソッドは deprecated です。`map(&:to_r)` を使ってください。

```ruby title="例"
require 'matrix'

p Vector[2.5, 3.0, 5.75].elements_to_r
# => Vector[(5/2), (3/1), (23/4)]
```
