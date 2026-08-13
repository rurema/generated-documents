# Rational#quo

### def /(other)   -> Rational | Float
### def quo(other) -> Rational | Float

`self` を `other` で割った値（＝商）を返します。

`Rational` オブジェクトを左項とする算術演算子 `/` はこのメソッドの呼び出しになります。

- **param** `other` -- `self` を割る数

`other` に [Float](../../../class/Float.md) を指定した場合は、計算結果を [Float](../../../class/Float.md) で返します。

```ruby title="例"
r = Rational(3, 4)
p r / 2              # => (3/8)
p r / 2.0            # => 0.375
p r / 0.5            # => 1.5
p r / Rational(1, 2) # => (3/2)
r / 0                # ~> ZeroDivisionError
```

- **raise** `ZeroDivisionError` -- `other` が `0` のときに発生します。

- **SEE** [Numeric#quo](../../../method/Numeric/i/quo.md)
