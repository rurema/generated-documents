# Rational#numerator

### def numerator -> Integer

`self` の分子（numerator）を返します。

```ruby title="例"
p Rational(7).numerator     # => 7
p Rational(7, 1).numerator  # => 7
p Rational(9, -4).numerator # => -9
p Rational(-2, -10).numerator # => 1
```

- **SEE** [Rational#denominator](../../../method/Rational/i/denominator.md)
