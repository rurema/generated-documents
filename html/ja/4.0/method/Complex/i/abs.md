# Complex#abs

### def abs       -> Numeric
### def magnitude -> Numeric

自身の絶対値を返します。

以下の計算の結果を [Float](../../../class/Float.md) オブジェクトで返します。

```text
sqrt(self.real ** 2 + self.imag ** 2)
```

```ruby title="例"
p Complex(1, 2).abs       # => 2.23606797749979
p Complex(3, 4).abs       # => 5.0
p Complex('1/2', '1/2').abs # => 0.7071067811865476
```

- **SEE** [Complex#abs2](../../../method/Complex/i/abs2.md)
