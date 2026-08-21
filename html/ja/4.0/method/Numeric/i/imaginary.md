# Numeric#imaginary

### def imag      -> 0
### def imaginary -> 0

`0` を返します。

[Complex](../../../class/Complex.md) では `self` の虚部を返すよう再定義されています。

```ruby title="例"
p 12.imag   # => 0
p -12.imag  # => 0
p 1.2.imag  # => 0
p -1.2.imag # => 0
```

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

- **SEE** [Numeric#real](../../../method/Numeric/i/real.md)、[Complex#imag](../../../method/Complex/i/imag.md)
