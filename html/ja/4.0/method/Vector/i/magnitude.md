# Vector#magnitude

### def r -> Float
### def magnitude -> Float
### def norm -> Float

ベクトルの大きさ（ノルム）を返します。

```ruby title="例"
require 'matrix'

p Vector[3, 4].norm # => 5.0
p Vector[1i, 0].norm # => 1.0
```

- **SEE** [Vector#normalize](../../../method/Vector/i/normalize.md)
