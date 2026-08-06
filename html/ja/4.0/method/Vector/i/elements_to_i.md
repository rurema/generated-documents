# Vector#elements_to_i

### def elements_to_i -> Vector

ベクトルの各成分を[Integer](../../../class/Integer.md)に変換したベクトルを返します。

このメソッドは deprecated です。`map(&:to_i)` を使ってください。

```ruby title="例"
require 'matrix'

p Vector[2.5, 3.0, 5.01].elements_to_i
# => Vector[2, 3, 5]
```
