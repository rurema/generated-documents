# Rational#to_i

### def to_i -> Integer

小数点以下を切り捨てて値を整数に変換して返します。

```ruby title="例"
p Rational(2, 3).to_i # => 0
p Rational(3).to_i    # => 3
p Rational(300.6).to_i  # => 300
p Rational(98, 71).to_i # => 1
p Rational(-31, 2).to_i # => -15
```

- **SEE** [Rational#truncate](../../../method/Rational/i/truncate.md), [Rational#ceil](../../../method/Rational/i/ceil.md), [Rational#floor](../../../method/Rational/i/floor.md)
