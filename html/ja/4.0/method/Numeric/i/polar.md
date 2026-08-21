# Numeric#polar

### def polar -> [Numeric, Numeric]

`self` の複素数としての極形式（polar form）を `[self.abs, self.arg]` として返します。

```ruby title="例"
p 1.0.polar  # => [1.0, 0]
p 2.0.polar  # => [2.0, 0]
p -1.0.polar # => [1.0, 3.141592653589793]
p -2.0.polar # => [2.0, 3.141592653589793]
```

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

- **SEE** [Complex#polar](../../../method/Complex/i/polar.md)
