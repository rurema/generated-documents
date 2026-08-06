# Rational#ceil

### def ceil(precision = 0) -> Integer | Rational

`self` と等しいかより大きな整数のうち最小のものを返します。

- **param** `precision` -- 計算結果の精度

- **raise** `TypeError` -- `precision` に整数以外のものを指定すると発生します。

```ruby title="例"
p Rational(3).ceil    # => 3
p Rational(2, 3).ceil # => 1
p Rational(-3, 2).ceil  # => -1
```

`precision` を指定した場合は指定した桁数の数値と、上述の性質に最も近い整数か [Rational](../../../class/Rational.md) を返します。

```ruby title="例"
p Rational('-123.456').ceil(+1)     # => (-617/5)
p Rational('-123.456').ceil(+1).to_f  # => -123.4
p Rational('-123.456').ceil(0)      # => -123
p Rational('-123.456').ceil(-1)     # => -120
```

- **SEE** [Rational#floor](../../../method/Rational/i/floor.md), [Rational#round](../../../method/Rational/i/round.md), [Rational#truncate](../../../method/Rational/i/truncate.md)
