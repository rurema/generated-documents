# Matrix#entrywise_product

### def hadamard_product(m) -> Matrix
### def entrywise_product(m) -> Matrix

アダマール積(要素ごとの積)を返します。

- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- 行や列の要素数が一致しない時に発生します。

```ruby title="例"
require 'matrix'

p Matrix[[1,2], [3,4]].hadamard_product(Matrix[[1,2], [3,2]]) # => Matrix[[1, 4], [9, 8]]
```
