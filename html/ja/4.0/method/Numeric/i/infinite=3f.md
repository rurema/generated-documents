# Numeric#infinite?

### def infinite? -> nil

`nil` を返します。

[Float](../../../class/Float.md) と [Complex](../../../class/Complex.md) では、`self` の絶対値が負の無限大の場合に `-1` を、正の無限大の場合に `1` を、有限値の場合に `nil` を返すよう再定義されています。

```ruby title="例"
p 10.infinite?   # => nil
p (3r).infinite? # => nil
```

- **SEE** [Numeric#finite?](../../../method/Numeric/i/finite=3f.md)、[Float#infinite?](../../../method/Float/i/infinite=3f.md)、[Complex#infinite?](../../../method/Complex/i/infinite=3f.md)
