# Numeric#truncate

### def truncate   -> Integer

`0` から `self` までの整数で、`self` にもっとも近い整数を返します。

[Complex](../../../class/Complex.md) では未定義化されています。

```ruby title="例"
p 1.truncate      # => 1
p 1.2.truncate    # => 1
p (-1.2).truncate # => -1
p (-1.5).truncate # => -1
```

- **SEE** [Numeric#ceil](../../../method/Numeric/i/ceil.md), [Numeric#floor](../../../method/Numeric/i/floor.md), [Numeric#round](../../../method/Numeric/i/round.md)
