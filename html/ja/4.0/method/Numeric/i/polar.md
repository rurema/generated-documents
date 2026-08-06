# Numeric#polar

### def polar -> [Numeric, Numeric]

自身の絶対値と偏角を配列にして返します。正の数なら [self, 0]、負の数なら [-self, [Math::PI](../../../method/Math/c/PI.md)] を返します。

```ruby title="例"
p 1.0.polar  # => [1.0, 0]
p 2.0.polar  # => [2.0, 0]
p -1.0.polar # => [1.0, 3.141592653589793]
p -2.0.polar # => [2.0, 3.141592653589793]
```

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

- **SEE** [Complex#polar](../../../method/Complex/i/polar.md)
