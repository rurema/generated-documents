# Rational#denominator

### def denominator -> Integer

`self` の分母（denominator）を返します。分母は常に正の整数です。

```ruby title="例"
p Rational(7).denominator     # => 1
p Rational(7, 1).denominator  # => 1
p Rational(9, -4).denominator # => 4
p Rational(-2, -10).denominator # => 5
```

- **SEE** [Rational#numerator](../../../method/Rational/i/numerator.md)
