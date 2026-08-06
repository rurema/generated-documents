# Matrix#hstack

### def hstack(*matrices) -> Matrix

行列 self と matrices を横に並べた行列を生成します。

Matrix.hstack(self, *matrices) と同じです。

```ruby title="例"
require 'matrix'
x = Matrix[[1, 2], [3, 4]]
y = Matrix[[5, 6], [7, 8]]
p x.hstack(y) # => Matrix[[1, 2, 5, 6], [3, 4, 7, 8]]
```

- **param** `matrices` -- 並べる行列。すべての行列の行数がselfの行数と一致していなければならない
- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- 行数の異なる行列がある場合に発生します

- **SEE** [Matrix.hstack](../../../method/Matrix/s/hstack.md), [Matrix#vstack](../../../method/Matrix/i/vstack.md)
