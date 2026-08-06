# Numeric#truncate

### def truncate   -> Integer

0 から 自身までの整数で、自身にもっとも近い整数を返します。

```ruby title="例"
p 1.truncate      #=> 1
p 1.2.truncate    #=> 1
p (-1.2).truncate #=> -1
p (-1.5).truncate #=> -1
```

- **SEE** [Numeric#ceil](../../../method/Numeric/i/ceil.md), [Numeric#floor](../../../method/Numeric/i/floor.md), [Numeric#round](../../../method/Numeric/i/round.md)
