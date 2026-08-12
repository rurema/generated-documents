# Rational#fdiv

### def fdiv(other) -> Float

`self` を `other` で割った商を [Float](../../../class/Float.md) で返します。
`other` に虚数を指定することはできません。

- **param** `other` -- `self` を割る数

```ruby title="例"
p Rational(2, 3).fdiv(1) # => 0.6666666666666666
p Rational(2, 3).fdiv(0.5) # => 1.3333333333333333
p Rational(2).fdiv(3)    # => 0.6666666666666666

p Rational(1).fdiv(Complex(1, 0))  # => 1.0
Rational(1).fdiv(Complex(0, 1))  # ~> RangeError
```
