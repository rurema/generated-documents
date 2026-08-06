# Matrix#cofactor

### def cofactor(row, column) -> Integer | Rational | Float

(row, column)-余因子を返します。

各要素の型によって返り値が変わります。

- **param** `row` -- 行
- **param** `column` -- 列
- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- 行列が正方でない場合に発生します。
- **SEE** [Matrix#adjugate](../../../method/Matrix/i/adjugate.md)
