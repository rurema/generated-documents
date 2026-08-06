# Vector#covector

### def covector -> Matrix

[Matrix](../../../class/Matrix.md) オブジェクトへ変換します。

行ベクトル (行列)、すなわち、(1, n) 型の行列に変換します。
実際には `Matrix.row_vector(self)` を適用します。

```ruby title="例"
require 'matrix'

v = Vector[2, 3, 5]

p v.covector
# => Matrix[[2, 3, 5]]
```

- **SEE** [Matrix.row_vector](../../../method/Matrix/s/row_vector.md)
