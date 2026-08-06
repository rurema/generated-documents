# Vector#dot

### def inner_product(v) -> Float
### def dot(v) -> Float

ベクトル `v` との内積を返します。

- **param** `v` -- 内積を求めるベクトル

- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- `self` と引数のベクト
       ルの要素の数(次元)が異なっていたときに発生します。
