# BigDecimal#div

### def div(other) -> BigDecimal
### def quo(other) -> BigDecimal
### def /(other)   -> BigDecimal

商を計算します。

- **param** `other` -- self を割る数を指定します。

詳細は [Numeric#quo](../../../method/Numeric/i/quo.md) を参照して下さい。

計算結果の精度については[bigdecimal#precision](../../../library/bigdecimal.md#precision)を参照してください。

### def div(other, n) -> BigDecimal

商を計算します。

self / other を最大で n 桁まで計算します。計算結果の精度が n より大きいときは [BigDecimal.mode](../../../method/BigDecimal/s/mode.md) で指定された方法で丸められます。

- **param** `other` -- self を割る数を指定します。

- **param** `n` -- 有効桁数を整数で指定します。省略するか 0 を指定した場合は
         [BigDecimal#/](../../../method/BigDecimal/i/=2f.md) と同じ値を返します。

- **raise** `ArgumentError` -- n に負の数を指定した場合に発生します。

- **SEE** [BigDecimal#/](../../../method/BigDecimal/i/=2f.md)
