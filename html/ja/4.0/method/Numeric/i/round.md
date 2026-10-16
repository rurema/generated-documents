# Numeric#round

### def round(ndigits = 0, half: :up) -> Integer | Float

`self` ともっとも近い整数を返します。

`self` を `to_f` で [Float](../../../class/Float.md) に変換してから [Float#round](../../../method/Float/i/round.md) を呼び出すのと同じです。

中央値 `0.5`, `-0.5` はそれぞれ `1`, `-1` に切り上げされます。いわゆる四捨五入ですが、偶数丸めではありません。

[Complex](../../../class/Complex.md) では未定義化されています。

- **param** `ndigits` -- 丸める位を指定します。
       `ndigits` が `0` ならば、小数点以下を四捨五入し、整数を返します。
       `ndigits` が `0` より大きいならば、小数点以下の指定された位で四捨五入されます。
       `ndigits` が `0` より小さいならば、小数点以上の指定された位で四捨五入されます。
- **param** `half` -- ちょうど半分の値の丸め方を指定します。
       サポートされている値は以下の通りです。

- `:up` or `nil`: 0から遠い方に丸められます。
- `:even`: もっとも近い偶数に丸められます。
- `:down`: 0に近い方に丸められます。

```ruby title="例"
p 1.round      # => 1
p 1.2.round    # => 1
p (-1.2).round # => -1
p (-1.5).round # => -2

p 1.234567.round(2)        # => 1.23
p 34567.89.round(-2)       # => 34600
p 2.5.round(half: :even)   # => 2
p 2.5.round(half: :down)   # => 2
```

- **SEE** [Numeric#ceil](../../../method/Numeric/i/ceil.md), [Numeric#floor](../../../method/Numeric/i/floor.md), [Numeric#truncate](../../../method/Numeric/i/truncate.md)
