# Rational#to_i

### def to_i -> Integer
### def truncate(precision = 0) -> Rational | Integer

小数点以下を切り捨てて値を整数に変換します。

- **param** `precision` -- 計算結果の精度

- **raise** `TypeError` -- `precision` に整数以外のものを指定すると発生します。

```ruby title="例"
p Rational(2, 3).to_i # => 0
p Rational(3).to_i    # => 3
p Rational(300.6).to_i  # => 300
p Rational(98, 71).to_i # => 1
p Rational(-31, 2).to_i # => -15
```

`precision` を指定した場合は指定した桁数で切り捨てた整数か
[Rational](../../../class/Rational.md) を返します。

```ruby title="例"
p Rational('-123.456').truncate(+1)     # => (-617/5)
p Rational('-123.456').truncate(+1).to_f  # => -123.4
p Rational('-123.456').truncate(0)      # => -123
p Rational('-123.456').truncate(-1)     # => -120
```

- **SEE** [Rational#ceil](../../../method/Rational/i/ceil.md), [Rational#floor](../../../method/Rational/i/floor.md)
