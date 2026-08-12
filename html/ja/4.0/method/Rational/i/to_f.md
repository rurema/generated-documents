# Rational#to_f

### def to_f -> Float

`self` の値を最も良く表現する [Float](../../../class/Float.md) に変換します。

絶対値が極端に小さい、または大きい場合にはゼロや正負の無限大が返ることがあります。

- **return** -- [Float](../../../class/Float.md) を返します。

```ruby title="例"
p Rational(2).to_f           # => 2.0
p Rational(9, 4).to_f        # => 2.25
p Rational(-3, 4).to_f       # => -0.75
p Rational(20, 3).to_f       # => 6.666666666666667
p Rational(1, 10**1000).to_f # => 0.0
p Rational(-1, 10**1000).to_f  # => -0.0
p Rational(10**1000).to_f    # => Infinity
p Rational(-10**1000).to_f   # => -Infinity
```
