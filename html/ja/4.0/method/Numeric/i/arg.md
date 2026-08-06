# Numeric#arg

### def arg   -> 0 | Math::PI
### def angle -> 0 | Math::PI
### def phase -> 0 | Math::PI

自身の偏角(正の数なら 0、負の数なら [Math::PI](../../../method/Math/c/PI.md))を返します。

```ruby title="例"
p 1.arg  # => 0
p -1.arg # => 3.141592653589793
```

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

- **SEE** [Complex#arg](../../../method/Complex/i/arg.md)
