# Rational#denominator

### def denominator -> Integer

分母を返します。常に正の整数を返します。

- **return** -- 分母を返します。

```ruby title="例"
p Rational(7).denominator     # => 1
p Rational(7, 1).denominator  # => 1
p Rational(9, -4).denominator # => 4
p Rational(-2, -10).denominator # => 5
```

- **SEE** [Rational#numerator](../../../method/Rational/i/numerator.md)
