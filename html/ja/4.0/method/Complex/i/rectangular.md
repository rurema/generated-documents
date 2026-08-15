# Complex#rectangular

### def rect        -> [Numeric, Numeric]
### def rectangular -> [Numeric, Numeric]

`self` の実部と虚部を配列にして返します。

メソッド名は、これが複素数の直交形式（rectangular form）の成分を得るものであることから。

```ruby title="例"
p Complex(3).rect  # => [3, 0]
p Complex(3.5).rect  # => [3.5, 0]
p Complex(3, 2).rect # => [3, 2]
```

- **SEE** [Numeric#rect](../../../method/Numeric/i/rect.md)
