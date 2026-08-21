# Numeric#rectangular

### def rect        -> [Numeric, Numeric]
### def rectangular -> [Numeric, Numeric]

`[self, 0]` を返します。

[Complex](../../../class/Complex.md) では `[self.real, self.imag]` を返すよう再定義されています。

つまり `self` の直交形式（rectangular form）を `[実部, 虚部]` の形で返すメソッドです。

```ruby title="例"
p 1.rect  # => [1, 0]
p -1.rect # => [-1, 0]
p 1.0.rect  # => [1.0, 0]
p -1.0.rect # => [-1.0, 0]
```

`Numeric` のサブクラスは必要に応じてこのメソッドを適切に再定義しなければなりません。

- **SEE** [Complex#rect](../../../method/Complex/i/rect.md)
