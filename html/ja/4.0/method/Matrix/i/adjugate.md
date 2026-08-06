# Matrix#adjugate

### def adjugate -> Matrix

余因子行列を返します。

```ruby title="例"
require 'matrix'
p Matrix[[7,6],[3,9]].adjugate # => Matrix[[9, -6], [-3, 7]]
```

- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- 行列が正方でない場合に発生します。
- **SEE** [Matrix#cofactor](../../../method/Matrix/i/cofactor.md)
