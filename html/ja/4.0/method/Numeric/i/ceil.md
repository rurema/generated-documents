# Numeric#ceil

### def ceil   -> Integer

`self` と等しいかより大きな整数のうち最小のものを返します。

[Complex](../../../class/Complex.md) では未定義化されています。

```ruby title="例"
p 1.ceil      # => 1
p 1.2.ceil    # => 2
p (-1.2).ceil # => -1
p (-1.5).ceil # => -1
```

- **SEE** [Numeric#floor](../../../method/Numeric/i/floor.md), [Numeric#round](../../../method/Numeric/i/round.md), [Numeric#truncate](../../../method/Numeric/i/truncate.md)
