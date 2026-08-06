# Matrix#vstack

### def vstack -> Matrix

行列 self と matrices を縦に並べた行列を生成します。

Matrix.vstack(self, *matrices) と同じです。

```ruby title="例"
require 'matrix'
x = Matrix[[1, 2], [3, 4]]
y = Matrix[[5, 6], [7, 8]]
p x.vstack(y) # => Matrix[[1, 2], [3, 4], [5, 6], [7, 8]]
```

- **SEE** [Matrix.vstack](../../../method/Matrix/s/vstack.md), [Matrix#hstack](../../../method/Matrix/i/hstack.md)
