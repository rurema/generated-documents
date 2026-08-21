# Numeric#conj

### def conj      -> Numeric
### def conjugate -> Numeric

`self` を返します。

[Complex](../../../class/Complex.md) では `self` の共役複素数を返すよう再定義されています。

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

```ruby title="例"
p 10.conj     # => 10
p 0.1.conj    # => 0.1
p (2/3r).conj # => (2/3)
```

- **SEE** [Complex#conj](../../../method/Complex/i/conj.md)
