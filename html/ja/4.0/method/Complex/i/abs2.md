# Complex#abs2

### def abs2 -> Numeric

`self` の絶対値の 2 乗を返します。

以下の計算の結果を返します。

```text
self.real ** 2 + self.imag ** 2
```

```ruby title="例"
p Complex(1, 1).abs2       # => 2
p Complex(1.0, 1.0).abs2   # => 2.0
p Complex('1/2', '1/2').abs2 # => (1/2)
```

- **SEE** [Complex#abs](../../../method/Complex/i/abs.md)
