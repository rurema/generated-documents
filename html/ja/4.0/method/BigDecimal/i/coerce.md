# BigDecimal#coerce

### def coerce(other) -> Array

self と other が同じクラスになるよう、self か other を変換し [other,
self] という配列にして返します。

- **param** `other` -- 比較または変換するオブジェクト

[BigDecimal#coerce](../../../method/BigDecimal/i/coerce.md) は Ruby における強制型変換のための機能です。
[BigDecimal](../../../class/BigDecimal.md) オブジェクトとその他のオブジェクト間の各種の計算は
[BigDecimal#coerce](../../../method/BigDecimal/i/coerce.md) の結果を元に行われます。

```ruby
require "bigdecimal"
a = BigDecimal("1.0")
b = a / 2.0 # => 0.5e0
```

other に [Rational](../../../class/Rational.md) オブジェクトを指定した場合は self の有効桁数を用いて変換を行います。

数値を表す文字列から [BigDecimal](../../../class/BigDecimal.md) オブジェクトに変換する機能はデフォルトでは無効になっています。必要な場合は ENABLE_NUMERIC_STRING を有効にして Ruby をコンパイルしてください。
