# Vector#normalize

### def normalize -> Vector

`self` を [Vector#norm](../../../method/Vector/i/norm.md) で正規化したベクトルを返します。

- **raise** `Vector::ZeroVectorError` -- ベクトルが0である場合に発生します。

```ruby title="例"
require 'matrix'

v = Vector[2, 6, 9].normalize
# => Vector[0.18181818181818182, 0.5454545454545454, 0.8181818181818182]
p v.norm # => 1.0
```

- **SEE** [Vector#norm](../../../method/Vector/i/norm.md)
