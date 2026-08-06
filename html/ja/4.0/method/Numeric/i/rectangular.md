# Numeric#rectangular

### def rect        -> [Numeric, Numeric]
### def rectangular -> [Numeric, Numeric]

[self, 0] を返します。

```ruby title="例"
p 1.rect  # => [1, 0]
p -1.rect # => [-1, 0]
p 1.0.rect  # => [1.0, 0]
p -1.0.rect # => [-1.0, 0]
```

Numeric のサブクラスは、このメソッドを適切に再定義しなければなりません。

- **SEE** [Complex#rect](../../../method/Complex/i/rect.md)
