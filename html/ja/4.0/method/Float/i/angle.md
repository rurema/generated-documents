# Float#angle

### def arg   -> 0 | Float
### def angle -> 0 | Float
### def phase -> 0 | Float

`self` の偏角(正の数なら `0`、負の数なら [Math::PI](../../../method/Math/c/PI.md))を返します。

```ruby title="例"
p 1.arg  # => 0
p -1.arg # => 3.141592653589793
```

ただし、`self` が NaN(Not a number) であった場合は、NaN を返します。
