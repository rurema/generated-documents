# Matrix#to_a

### def to_a -> Array

自分自身を[Array](../../../class/Array.md)に変換したものを返します。

行ベクトルを配列([Array](../../../class/Array.md))としたものの配列(つまり配列の配列)として返します。

```ruby title="例"
require 'matrix'
a1 = [ 1,  2,  3]
a2 = [10, 15, 20]
a3 = [-1, -2, 1.5]
m = Matrix[a1, a2, a3]

p m.to_a # => [[1, 2, 3], [10, 15, 20], [-1, -2, 1.5]]
```
