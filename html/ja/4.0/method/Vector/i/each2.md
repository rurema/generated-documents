# Vector#each2

### def each2(v) {|x, y| ... } -> self
### def each2(v) -> Enumerator

ベクトルの各要素と、それに対応するインデックスを持つ引数 `v` の要素との組に対して (2引数の) ブロックを繰返し評価します。

`v` は配列互換(`size` メソッドと `[]` メソッドを持つ)オブジェクトです。
[Vector](../../../class/Vector.md) も使えます。

ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **param** `v` -- 各要素と組を取るためのオブジェクト
- **raise** `ExceptionForMatrix::ErrDimensionMismatch` -- `self` と引数のベクトルの要素の数(次元)が異なっていたときに発生します。
- **SEE** [Array#zip](../../../method/Array/i/zip.md)
