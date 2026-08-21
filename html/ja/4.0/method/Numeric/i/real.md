# Numeric#real

### def real     -> Numeric

`self` を返します。

[Complex](../../../class/Complex.md) では `self` の実部を返すよう再定義されています。

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

```ruby title="例"
p 10.real             # => 10
p -10.real            # => -10
p 0.1.real            # => 0.1
p (2/3r).real         # => (2/3)
```

- **SEE** [Numeric#imag](../../../method/Numeric/i/imag.md)、[Complex#real](../../../method/Complex/i/real.md)
