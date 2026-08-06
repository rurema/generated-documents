# Vector#elements_to_f

### def elements_to_f -> Vector

ベクトルの各成分を[Float](../../../class/Float.md)に変換したベクトルを返します。

このメソッドは deprecated です。`map(&:to_f)` を使ってください。

```ruby title="例"
require 'matrix'

p Vector[2, 3, 5].elements_to_f
# => Vector[2.0, 3.0, 5.0]
```
