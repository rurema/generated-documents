# BigDecimal#power

### def power(n)       -> BigDecimal
### def power(n, prec) -> BigDecimal
### def **(n)          -> BigDecimal

self の n 乗を計算します。

戻り値の有効桁数は self の有効桁数の n 倍以上になります。

- **param** `n` -- selfを other 乗する数を指定します。

- **param** `prec` -- 有効桁数を整数で指定します。

- **SEE** [Integer#pow](../../../method/Integer/i/pow.md)
